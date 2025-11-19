uint64_t HGFractured::GetDOD(HGFractured::Effect **this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  switch(a3)
  {
    case 2:
      if ((*(*this + 16))(this, 2))
      {
        return v5;
      }

      break;
    case 1:
      if (!(*(*a2 + 304))(a2) && (*(*this + 16))(this, 1))
      {
        return HGFractured::Effect::GetRect(this[53]);
      }

      break;
    case 0:
      if ((*(*a2 + 304))(a2))
      {
        v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        v8 = HGRectGrow(v5, v4, v7);
        v9 = HGRectFloat(v8);
        v13 = HGRectTranslate(v9, v10, v11, v12, -*(this[51] + 32));
        v17 = HGRectScale(v13, v14, v15, v16, 1.0 / *(this[51] + 28));
        return HGRectIntegral(v18, v17, v19, v20, v21);
      }

      return HGFractured::Effect::GetRect(this[53]);
  }

  return 0;
}

uint64_t HGFractured::GetROI(HGFractured *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  if (a3 == 2)
  {
    if ((*(*this + 128))(this, 2))
    {
      return v4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      if ((*(*a2 + 304))(a2))
      {
        v6 = HGRectFloat(v4);
        v10 = HGRectScale(v6, v7, v8, v9, *(*(this + 51) + 112));
        v14 = HGRectTranslate(v10, v11, v12, v13, *(*(this + 51) + 128));
        v19 = HGRectIntegral(v15, v14, v16, v17, v18);
        v21 = v20;
        v22 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        return HGRectGrow(v19, v21, v22);
      }

      v26 = *(this + 53);
      return HGFractured::Effect::GetImageRect(v26);
    }

    return 0;
  }

  if (!(*(*this + 128))(this, 1) || (*(*a2 + 304))(a2))
  {
    return 0;
  }

  v26 = *(this + 53);
  return HGFractured::Effect::GetImageRect(v26);
}

void HGFractured::HGFractured(HGFractured *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287226368;
  *(v1 + 416) = 8;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0;
  *(v1 + 436) = 1;
  operator new();
}

void HGFractured::~HGFractured(HGNode *this)
{
  *this = &unk_287226368;
  v2 = *(this + 53);
  if (v2)
  {
    HGFractured::Effect::SetState(v2, 0);
    (*(**(this + 53) + 24))(*(this + 53));
  }

  v3 = *(this + 51);
  if (v3)
  {
    MEMORY[0x2666E9F00](v3, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287226368;
  v2 = *(this + 53);
  if (v2)
  {
    HGFractured::Effect::SetState(v2, 0);
    (*(**(this + 53) + 24))(*(this + 53));
  }

  v3 = *(this + 51);
  if (v3)
  {
    MEMORY[0x2666E9F00](v3, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGFractured::SetEffect(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  result = *(a1 + 424);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 424) = a2;
  return result;
}

uint64_t HGFractured::SetParameter(HGFractured *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v15 = *(this + 51);
        v16 = *(v15 + 16);
        v9 = (v15 + 16);
        if (v16 != a3)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      if (a2 == 2)
      {
        v8 = *(this + 51);
        v10 = *(v8 + 32);
        v9 = (v8 + 32);
        if (v10 != a3)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      return 0xFFFFFFFFLL;
    }

    v9 = *(this + 51);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    if (*v9 != a3)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v7 = 96;
LABEL_13:
        v9 = (*(this + 51) + v7);
        v11 = sqrtf(((a3 * a3) + (a4 * a4)) + (a5 * a5));
        a3 = a3 / v11;
        a4 = a4 / v11;
        a5 = a5 / v11;
        if (*v9 != a3)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      return 0xFFFFFFFFLL;
    }

    v9 = (*(this + 51) + 80);
    goto LABEL_20;
  }

  if (a2 != 3)
  {
    v7 = 64;
    goto LABEL_13;
  }

  v13 = *(this + 51);
  v14 = *(v13 + 48);
  v9 = (v13 + 48);
  if (v14 != a3)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v9[1] == a4 && v9[2] == a5 && v9[3] == a6)
  {
    return 0;
  }

LABEL_26:
  *v9 = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  *(this + 109) = 1;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HGFractured::GetParameter(HGFractured *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

uint64_t soKMeansClassifier::DeleteStats(soKMeansClassifier *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C80451B5BE8);
    *(this + 21) = 0;
  }

  v3 = *(this + 22);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C80451B5BE8);
    *(this + 22) = 0;
  }

  v4 = *(this + 32);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C80E0EAB150);
    *(this + 32) = 0;
  }

  v5 = *(this + 33);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C80E0EAB150);
    *(this + 33) = 0;
  }

  v6 = *(this + 34);
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C80E0EAB150);
    *(this + 34) = 0;
  }

  v7 = *(this + 35);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C80E0EAB150);
    *(this + 35) = 0;
  }

  v8 = *(this + 36);
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8000313F17);
    *(this + 36) = 0;
  }

  v9 = *(this + 37);
  if (v9)
  {
    MEMORY[0x2666E9ED0](v9, 0x1000C8000313F17);
    *(this + 37) = 0;
  }

  v10 = *(this + 38);
  if (v10)
  {
    MEMORY[0x2666E9ED0](v10, 0x1000C80E0EAB150);
    *(this + 38) = 0;
  }

  v11 = *(this + 39);
  if (v11)
  {
    MEMORY[0x2666E9ED0](v11, 0x1000C80E0EAB150);
    *(this + 39) = 0;
  }

  v12 = *(this + 40);
  if (v12)
  {
    MEMORY[0x2666E9ED0](v12, 0x1000C80E0EAB150);
    *(this + 40) = 0;
  }

  v13 = *(this + 41);
  if (v13)
  {
    MEMORY[0x2666E9ED0](v13, 0x1000C80E0EAB150);
    *(this + 41) = 0;
  }

  v14 = *(this + 25);
  if (v14)
  {
    MEMORY[0x2666E9ED0](v14, 0x1000C8000313F17);
    *(this + 25) = 0;
  }

  v15 = *(this + 26);
  if (v15)
  {
    MEMORY[0x2666E9ED0](v15, 0x1000C8000313F17);
    *(this + 26) = 0;
  }

  v16 = *(this + 23);
  if (v16)
  {
    MEMORY[0x2666E9ED0](v16, 0x1000C80565EDBD2);
    *(this + 23) = 0;
  }

  v17 = *(this + 24);
  if (v17)
  {
    MEMORY[0x2666E9ED0](v17, 0x1000C80565EDBD2);
    *(this + 24) = 0;
  }

  v18 = *(this + 27);
  if (v18)
  {
    MEMORY[0x2666E9ED0](v18, 0x1000C8000313F17);
    *(this + 27) = 0;
  }

  v19 = *(this + 28);
  if (v19)
  {
    MEMORY[0x2666E9ED0](v19, 0x1000C8000313F17);
    *(this + 28) = 0;
  }

  v20 = *(this + 29);
  if (v20)
  {
    MEMORY[0x2666E9ED0](v20, 0x1000C8000313F17);
    *(this + 29) = 0;
  }

  v21 = *(this + 30);
  if (v21)
  {
    MEMORY[0x2666E9ED0](v21, 0x1000C8000313F17);
    *(this + 30) = 0;
  }

  v22 = *(this + 44);
  if (v22)
  {
    MEMORY[0x2666E9ED0](v22, 0x1000C8000313F17);
    *(this + 44) = 0;
  }

  v23 = *(this + 45);
  if (v23)
  {
    MEMORY[0x2666E9ED0](v23, 0x1000C8000313F17);
    *(this + 45) = 0;
  }

  v24 = *(this + 46);
  if (v24)
  {
    MEMORY[0x2666E9ED0](v24, 0x1000C8000313F17);
    *(this + 46) = 0;
  }

  v25 = *(this + 47);
  if (v25)
  {
    MEMORY[0x2666E9ED0](v25, 0x1000C8000313F17);
    *(this + 47) = 0;
  }

  v26 = *(this + 42);
  if (v26)
  {
    MEMORY[0x2666E9ED0](v26, 0x1000C8000313F17);
    *(this + 42) = 0;
  }

  v27 = *(this + 43);
  if (v27)
  {
    MEMORY[0x2666E9ED0](v27, 0x1000C8000313F17);
    *(this + 43) = 0;
  }

  v28 = *(this + 48);
  if (v28)
  {
    MEMORY[0x2666E9ED0](v28, 0x1000C8000313F17);
    *(this + 48) = 0;
  }

  result = *(this + 49);
  if (result)
  {
    result = MEMORY[0x2666E9ED0](result, 0x1000C8000313F17);
    *(this + 49) = 0;
  }

  return result;
}

soKMeansClassifier *soKMeansClassifier::Init(soKMeansClassifier *this, void *a2, unint64_t *a3, unint64_t a4, int a5)
{
  if (*(this + 13) * *(this + 12) < a3 * a2 || *(this + 16) != a5)
  {
    *(this + 24) = 1;
    *(this + 12) = (a2 + 31) & 0xFFFFFFFFFFFFFFE0;
    *(this + 13) = (a3 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (*(this + 20) < a4 || *(this + 16) != a5)
  {
    *(this + 25) = 1;
  }

  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 14) = a3 * a2;
  *(this + 20) = a4;
  *(this + 16) = a5;
  soKMeansClassifier::AllocateBuffers(this, a2, a3);

  return soKMeansClassifier::AllocateStats(this);
}

uint64_t soKMeansClassifier::AllocateBuffers(uint64_t this, void *a2, unint64_t *a3)
{
  if (*(this + 24) == 1)
  {
    v3 = this;
    v4 = *(this + 152);
    if (v4)
    {
      HGMemory::release(v4, a2);
      *(v3 + 152) = 0;
    }

    v5 = *(v3 + 48);
    if (v5)
    {
      HGMemory::release(v5, a2);
      *(v3 + 48) = 0;
    }

    v6 = *(v3 + 400);
    if (v6)
    {
      HGMemory::release(v6, a2);
      *(v3 + 400) = 0;
    }

    v7 = *(v3 + 56);
    if (v7)
    {
      HGMemory::release(v7, a2);
      *(v3 + 56) = 0;
    }

    v8 = *(v3 + 64);
    if (v8)
    {
      HGMemory::release(v8, a2);
      *(v3 + 64) = 0;
    }

    *(v3 + 152) = HGMemory::allocate((16 * *(v3 + 96) * *(v3 + 104)), 0, a3);
    *(v3 + 56) = HGMemory::allocate((*(v3 + 104) * *(v3 + 96)), 0, v9);
    this = HGMemory::allocate((12 * *(v3 + 96) * *(v3 + 104)), 0, v10);
    *(v3 + 400) = this;
    if (*(v3 + 16) == 1)
    {
      *(v3 + 48) = HGMemory::allocate((*(v3 + 104) * *(v3 + 96)), 0, v11);
      this = HGMemory::allocate((*(v3 + 104) * *(v3 + 96)), 0, v12);
      *(v3 + 64) = this;
    }

    *(v3 + 24) = 0;
  }

  return this;
}

soKMeansClassifier *soKMeansClassifier::AllocateStats(soKMeansClassifier *this)
{
  if (*(this + 25) == 1)
  {
    soKMeansClassifier::DeleteStats(this);
    operator new[]();
  }

  return this;
}

void *soKMeansClassifier::LoadBuffer(void *this, unsigned __int8 *a2, uint64_t a3, double a4, double a5, __n128 a6)
{
  this[5] = a2;
  this[15] = a3;
  v6 = this[10];
  if (v6 * this[11])
  {
    v7 = 0;
    v8 = vdupq_n_s32(0x4B400000u);
    v9 = vdupq_n_s32(0xCB400000);
    do
    {
      a6.n128_u32[0] = *(this[5] + this[15] * (v7 / v6) + 4 * (v7 % v6));
      a6 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a6.n128_u64[0])), v8), v9);
      *(this[19] + 16 * v7++) = a6;
      v6 = this[10];
    }

    while (v6 * this[11] > v7);
  }

  return this;
}

void *soKMeansClassifier::LoadMask(void *result, uint64_t a2, uint64_t a3, int *a4)
{
  *(result + 5) = 0;
  if (*(result + 16) == 1)
  {
    v5 = result;
    if (*(result + 11))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *(result + 10);
      v86 = vdupq_n_s64(1uLL);
      while (1)
      {
        result = memcpy((v5[6] + v8 * v11), (a2 + v8 * a3), v11);
        v13 = v5[10];
        if (v13)
        {
          v14 = v5[6];
          if (v13 < 4)
          {
            v15 = 0;
LABEL_17:
            v79 = (v14 + v15 + v13 * v8);
            v80 = v13 - v15;
            do
            {
              v82 = *v79++;
              v81 = v82;
              if (v82 == 255)
              {
                ++v9;
              }

              if (!v81)
              {
                ++v10;
              }

              --v80;
            }

            while (v80);
            goto LABEL_4;
          }

          v16.i64[0] = -1;
          v16.i64[1] = -1;
          if (v13 >= 0x10)
          {
            v15 = v13 & 0xFFFFFFFFFFFFFFF0;
            v17 = 0uLL;
            v18 = v9;
            v19 = v10;
            v20 = (v14 + v13 * v8);
            v21 = v13 & 0xFFFFFFFFFFFFFFF0;
            v22 = 0uLL;
            v23 = 0uLL;
            v24 = 0uLL;
            v25 = 0uLL;
            v26 = 0uLL;
            v27 = 0uLL;
            v28 = 0uLL;
            v29 = 0uLL;
            v12 = 0uLL;
            v30 = 0uLL;
            v31 = 0uLL;
            v32 = 0uLL;
            v33 = 0uLL;
            do
            {
              v34 = *v20++;
              v35 = vceqq_s8(v34, v16);
              v36 = vmovl_u8(*v35.i8);
              v37 = vmovl_u16(*v36.i8);
              v38 = vdupq_n_s64(1uLL);
              v39.i64[0] = v37.u32[0];
              v39.i64[1] = v37.u32[1];
              v40 = vandq_s8(v39, v38);
              v39.i64[0] = v37.u32[2];
              v39.i64[1] = v37.u32[3];
              v41 = vandq_s8(v39, v38);
              v42 = vmovl_high_u16(v36);
              v39.i64[0] = v42.u32[0];
              v39.i64[1] = v42.u32[1];
              v43 = vandq_s8(v39, v38);
              v44 = vmovl_high_u8(v35);
              v45 = vmovl_u16(*v44.i8);
              v39.i64[0] = v45.u32[0];
              v39.i64[1] = v45.u32[1];
              v46 = vandq_s8(v39, v38);
              v39.i64[0] = v42.u32[2];
              v39.i64[1] = v42.u32[3];
              v47 = vandq_s8(v39, v38);
              v39.i64[0] = v45.u32[2];
              v39.i64[1] = v45.u32[3];
              v48 = vandq_s8(v39, v38);
              v49 = vmovl_high_u16(v44);
              v39.i64[0] = v49.u32[0];
              v39.i64[1] = v49.u32[1];
              v50 = vandq_s8(v39, v38);
              v39.i64[0] = v49.u32[2];
              v39.i64[1] = v49.u32[3];
              v27 = vaddq_s64(v27, vandq_s8(v39, v38));
              v26 = vaddq_s64(v26, v50);
              v25 = vaddq_s64(v25, v48);
              v23 = vaddq_s64(v23, v47);
              v24 = vaddq_s64(v24, v46);
              v22 = vaddq_s64(v22, v43);
              v17 = vaddq_s64(v17, v41);
              v18 = vaddq_s64(v18, v40);
              v51 = vceqzq_s8(v34);
              v52 = vmovl_u8(*v51.i8);
              v53 = vmovl_u16(*v52.i8);
              v39.i64[0] = v53.u32[0];
              v39.i64[1] = v53.u32[1];
              v54 = vandq_s8(v39, v38);
              v39.i64[0] = v53.u32[2];
              v39.i64[1] = v53.u32[3];
              v55 = vandq_s8(v39, v38);
              v56 = vmovl_high_u16(v52);
              v39.i64[0] = v56.u32[0];
              v39.i64[1] = v56.u32[1];
              v57 = vandq_s8(v39, v38);
              v58 = vmovl_high_u8(v51);
              v59 = vmovl_u16(*v58.i8);
              v39.i64[0] = v59.u32[0];
              v39.i64[1] = v59.u32[1];
              v60 = vandq_s8(v39, v38);
              v39.i64[0] = v56.u32[2];
              v39.i64[1] = v56.u32[3];
              v61 = vandq_s8(v39, v38);
              v39.i64[0] = v59.u32[2];
              v39.i64[1] = v59.u32[3];
              v62 = vandq_s8(v39, v38);
              v63 = vmovl_high_u16(v58);
              v39.i64[0] = v63.u32[0];
              v39.i64[1] = v63.u32[1];
              v64 = vandq_s8(v39, v38);
              v39.i64[0] = v63.u32[2];
              v39.i64[1] = v63.u32[3];
              v33 = vaddq_s64(v33, vandq_s8(v39, v38));
              v32 = vaddq_s64(v32, v64);
              v31 = vaddq_s64(v31, v62);
              v12 = vaddq_s64(v12, v61);
              v30 = vaddq_s64(v30, v60);
              v29 = vaddq_s64(v29, v57);
              v28 = vaddq_s64(v28, v55);
              v19 = vaddq_s64(v19, v54);
              v21 -= 16;
            }

            while (v21);
            v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v18, v24), vaddq_s64(v22, v26)), vaddq_s64(vaddq_s64(v17, v25), vaddq_s64(v23, v27))));
            v10 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v19, v30), vaddq_s64(v29, v32)), vaddq_s64(vaddq_s64(v28, v31), vaddq_s64(v12, v33))));
            if (v13 == v15)
            {
              goto LABEL_4;
            }

            if ((v13 & 0xC) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v15 = 0;
          }

          v65 = v15;
          v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
          v66 = 0uLL;
          v67 = v9;
          v68 = v10;
          v69 = (v14 + v65 + v13 * v8);
          v70 = v65 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
          v71 = 0uLL;
          do
          {
            v72 = *v69++;
            v12.i32[0] = v72;
            v73 = vmovl_u8(*v12.i8).u64[0];
            v74 = vmovl_u16(vceq_s16(v73, 0xFF00FF00FF00FFLL));
            v75.i64[0] = v74.u32[0];
            v75.i64[1] = v74.u32[1];
            v76 = vandq_s8(v75, v86);
            v75.i64[0] = v74.u32[2];
            v75.i64[1] = v74.u32[3];
            v66 = vaddq_s64(v66, vandq_s8(v75, v86));
            v67 = vaddq_s64(v67, v76);
            v77 = vmovl_u16(vceqz_s16(v73));
            v75.i64[0] = v77.u32[0];
            v75.i64[1] = v77.u32[1];
            v78 = vandq_s8(v75, v86);
            v75.i64[0] = v77.u32[2];
            v75.i64[1] = v77.u32[3];
            v12 = vandq_s8(v75, v86);
            v71 = vaddq_s64(v71, v12);
            v68 = vaddq_s64(v68, v78);
            v70 += 4;
          }

          while (v70);
          v9 = vaddvq_s64(vaddq_s64(v67, v66));
          v10 = vaddvq_s64(vaddq_s64(v68, v71));
          if (v13 != v15)
          {
            goto LABEL_17;
          }
        }

LABEL_4:
        if (v5[11] <= ++v8)
        {
          goto LABEL_25;
        }
      }
    }

    v10 = 0;
    v9 = 0;
LABEL_25:
    v83 = 10 * v5[20];
    if (v9 < v83)
    {
      v84 = 1;
    }

    else
    {
      v84 = 3;
    }

    if (v10 >= v83)
    {
      v85 = v84;
    }

    else
    {
      v85 = 2;
    }

    *(v5 + 5) = v85;
    *a4 = v85;
  }

  return result;
}

uint64_t GenLLHMap(void *a1)
{
  v1 = a1[1];
  v85 = a1[2];
  v2 = v85 - v1;
  if (v85 > v1)
  {
    v3 = *a1;
    v4 = *(*a1 + 80);
    if (v4)
    {
      v84 = *(v3 + 72);
      v86 = *(v3 + 128);
      v93 = *(*a1 + 80);
      if (*(v3 + 26) == 1)
      {
        v83 = *(v3 + 48);
        __asm { FMOV            V9.2S, #-1.0 }

        while (1)
        {
          v10 = 0;
          v11 = v84 + v86 * v1;
          v87 = v1;
          v89 = v4 * v1;
          v12 = v83 + v4 * v1;
          v91 = v12;
          do
          {
            v14 = *(v12 + v10);
            *v11 = _D9;
            if (v14 == 255)
            {
              *v11 = *(v3 + 32);
              v13 = *(v3 + 28);
LABEL_8:
              *(v11 + 4) = v13;
              goto LABEL_9;
            }

            if (!v14)
            {
              *v11 = *(v3 + 28);
              v13 = *(v3 + 32);
              goto LABEL_8;
            }

            if (*(v3 + 16) == 1)
            {
              v15 = *(v3 + 160);
              if (v15)
              {
                v16 = 0;
                v17 = 0;
                v94 = *(*(v3 + 152) + 16 * v89 + 16 * v10);
                v19 = *(v3 + 352);
                v18 = *(v3 + 360);
                v20 = 0.0;
                v21 = 0.0;
                do
                {
                  v22 = *(v19 + 8 * v17);
                  v23 = 0.0;
                  if (v22 >= 0xA)
                  {
                    v24 = vsubq_f32(v94, *(*(v3 + 168) + 16 * v17));
                    v25 = vcvt_hight_f64_f32(v24);
                    v26 = vcvtq_f64_f32(*v24.f32);
                    v27 = (*(v3 + 184) + v16);
                    v23 = *(*(v3 + 216) + 8 * v17) * exp((vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v27[1], v26), v27[3], v26, 1), v25, v27[5]), v25).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v27, v26.f64[0]), v27[2], v26, 1), v27[4], v25.f64[0]), v26))) * -0.5);
                  }

                  v28 = *(v18 + 8 * v17);
                  v29 = 0.0;
                  if (v28 >= 0xA)
                  {
                    v30 = vsubq_f32(v94, *(*(v3 + 176) + 16 * v17));
                    v31 = vcvt_hight_f64_f32(v30);
                    v32 = vcvtq_f64_f32(*v30.f32);
                    v33 = (*(v3 + 192) + v16);
                    v29 = *(*(v3 + 224) + 8 * v17) * exp((vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v33[1], v32), v33[3], v32, 1), v31, v33[5]), v31).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v33, v32.f64[0]), v33[2], v32, 1), v33[4], v31.f64[0]), v32))) * -0.5);
                  }

                  v21 = v21 + v23 * v22;
                  v20 = v20 + v29 * v28;
                  ++v17;
                  v16 += 96;
                }

                while (v15 != v17);
              }

              else
              {
                v21 = 0.0;
                v20 = 0.0;
              }

              v34 = v20 / *(v3 + 144);
              v35 = log(v21 / *(v3 + 136));
              *v11 = -v35;
              v36 = log(v34);
              v13 = -v36;
              v12 = v91;
              v4 = v93;
              goto LABEL_8;
            }

LABEL_9:
            v11 += 8;
            ++v10;
          }

          while (v10 != v4);
          v1 = v87 + 1;
          if (v87 + 1 == v85)
          {
            goto LABEL_37;
          }
        }
      }

      if (*(v3 + 16))
      {
        v37 = *(v3 + 160);
        v90 = *(v3 + 152);
        v38 = *(v3 + 136);
        v39 = *(v3 + 144);
        v40 = log(0.0 / v38);
        v41 = log(0.0 / v39);
        if (v37)
        {
          v42 = *(v3 + 352);
          v43 = *(v3 + 360);
          __asm { FMOV            V9.2S, #-1.0 }

          do
          {
            v45 = 0;
            v46 = v84 + v86 * v1;
            v88 = v1;
            v92 = v90 + 16 * v4 * v1;
            do
            {
              v49 = 0;
              v50 = 0;
              *v46 = _D9;
              v95 = *(v92 + 16 * v45);
              v51 = 0.0;
              v52 = 0.0;
              do
              {
                v53 = *(v42 + 8 * v50);
                v54 = 0.0;
                if (v53 >= 0xA)
                {
                  v55 = vsubq_f32(v95, *(*(v3 + 168) + 16 * v50));
                  v56 = vcvt_hight_f64_f32(v55);
                  v57 = vcvtq_f64_f32(*v55.f32);
                  v58 = (*(v3 + 184) + v49);
                  v54 = *(*(v3 + 216) + 8 * v50) * exp((vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v58[1], v57), v58[3], v57, 1), v56, v58[5]), v56).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v58, v57.f64[0]), v58[2], v57, 1), v58[4], v56.f64[0]), v57))) * -0.5);
                }

                v59 = *(v43 + 8 * v50);
                v60 = 0.0;
                if (v59 >= 0xA)
                {
                  v61 = vsubq_f32(v95, *(*(v3 + 176) + 16 * v50));
                  v62 = vcvt_hight_f64_f32(v61);
                  v63 = vcvtq_f64_f32(*v61.f32);
                  v64 = (*(v3 + 192) + v49);
                  v60 = *(*(v3 + 224) + 8 * v50) * exp((vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v64[1], v63), v64[3], v63, 1), v62, v64[5]), v62).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v64, v63.f64[0]), v64[2], v63, 1), v64[4], v62.f64[0]), v63))) * -0.5);
                }

                v52 = v52 + v54 * v53;
                v51 = v51 + v60 * v59;
                ++v50;
                v49 += 96;
              }

              while (v37 != v50);
              v47 = log(v52 / v38);
              *v46 = -v47;
              v48 = log(v51 / v39);
              *(v46 + 4) = -v48;
              v46 += 8;
              ++v45;
              v4 = v93;
            }

            while (v45 != v93);
            v1 = v88 + 1;
          }

          while (v88 + 1 != v85);
        }

        else
        {
          v68 = v40;
          v69 = -v68;
          v70 = v41;
          v71 = -v70;
          if (v4 > 7)
          {
            *&v73 = __PAIR64__(LODWORD(v71), LODWORD(v69));
            *(&v73 + 1) = __PAIR64__(LODWORD(v71), LODWORD(v69));
            if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
            {
              v74 = v84 + v1 * v86 + 32;
              do
              {
                v75 = v74;
                v76 = v4 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  *(v75 - 2) = v73;
                  *(v75 - 1) = v73;
                  *v75 = v73;
                  v75[1] = v73;
                  v75 += 4;
                  v76 -= 8;
                }

                while (v76);
                ++v1;
                v74 += v86;
              }

              while (v1 != v85);
            }

            else
            {
              v77 = v84 + v1 * v86 + 32;
              do
              {
                v78 = (v84 + v86 * v1 + 8 * (v4 & 0xFFFFFFFFFFFFFFF8));
                v79 = v4 & 0xFFFFFFFFFFFFFFF8;
                v80 = v77;
                do
                {
                  *(v80 - 2) = v73;
                  *(v80 - 1) = v73;
                  *v80 = v73;
                  v80[1] = v73;
                  v80 += 4;
                  v79 -= 8;
                }

                while (v79);
                v81 = v4 - (v4 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  *v78 = LODWORD(v69);
                  v78[1] = LODWORD(v71);
                  v78 += 2;
                  --v81;
                }

                while (v81);
                ++v1;
                v77 += v86;
              }

              while (v1 != v85);
            }
          }

          else
          {
            v72 = (v84 + v1 * v86 + 28);
            do
            {
              *(v72 - 7) = LODWORD(v69);
              *(v72 - 6) = LODWORD(v71);
              if (v4 != 1)
              {
                *(v72 - 5) = LODWORD(v69);
                *(v72 - 4) = LODWORD(v71);
                if (v4 != 2)
                {
                  *(v72 - 3) = LODWORD(v69);
                  *(v72 - 2) = LODWORD(v71);
                  if (v4 != 3)
                  {
                    *(v72 - 1) = LODWORD(v69);
                    *v72 = LODWORD(v71);
                    if (v4 != 4)
                    {
                      v72[1] = LODWORD(v69);
                      v72[2] = LODWORD(v71);
                      if (v4 != 5)
                      {
                        v72[3] = LODWORD(v69);
                        v72[4] = LODWORD(v71);
                        if (v4 != 6)
                        {
                          v72[5] = LODWORD(v69);
                          v72[6] = LODWORD(v71);
                        }
                      }
                    }
                  }
                }
              }

              v72 = (v72 + v86);
              --v2;
            }

            while (v2);
          }
        }
      }

      else
      {
        v65 = 8 * v4;
        v66 = (v84 + v1 * v86);
        do
        {
          memset_pattern16(v66, &unk_260817950, v65);
          v66 += v86;
          --v2;
        }

        while (v2);
      }
    }
  }

LABEL_37:
  MEMORY[0x2666E9F00](a1, 0x1020C4024DAA5DELL);
  return 0;
}

uint64_t soKMeansClassifier::GenLikelihoodMap(soKMeansClassifier *this, float *a2, uint64_t a3, char a4, float a5, float a6)
{
  if (*(this + 16) == 1)
  {
    *(this + 26) = a4;
    *(this + 7) = a5;
    *(this + 8) = a6;
    *(this + 9) = a2;
    *(this + 16) = a3;
    if (*(this + 1) >= 2uLL)
    {
      operator new[]();
    }

    operator new();
  }

  return 0xFFFFFFFFLL;
}

double soKMeansClassifier::InitClusterMeans(soKMeansClassifier *this, float32x4_t inited)
{
  v2 = *(this + 10);
  if (v2)
  {
    v4 = *(this + 11);
    if (v4)
    {
      v5 = v4 * v2 - 1;
      if (*(this + 16) == 1)
      {
        do
        {
          v11 = 0;
          v12 = v5;
          v6 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v11, *this, &v11);
        }

        while (*(*(this + 6) + v6));
        **(this + 48) = v6;
        do
        {
          v11 = 0;
          v12 = v5;
          v7 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v11, *this, &v11);
        }

        while (*(*(this + 6) + v7) != 255);
        **(this + 49) = v7;
        **(this + 22) = *(*(this + 19) + 16 * v7);
        v8 = *(*(this + 19) + 16 * **(this + 48));
        **(this + 21) = v8;
        if (*(this + 9))
        {
LABEL_8:
          soKMeansClassifier::InitClusterMeans_PP(this);
        }
      }

      else
      {
        v11 = 0;
        v12 = v4 * v2 - 1;
        v9 = std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v11, *this, &v11);
        **(this + 48) = v9;
        v8 = *(*(this + 19) + 16 * v9);
        **(this + 21) = v8;
        if (*(this + 9))
        {
          goto LABEL_8;
        }
      }

      inited = soKMeansClassifier::InitClusterMeans_Random(this, 0, v8);
      if (*(this + 16) == 1)
      {
        inited.i64[0] = soKMeansClassifier::InitClusterMeans_Random(this, 1, inited).u64[0];
      }
    }
  }

  return *inited.i64;
}

float32x4_t soKMeansClassifier::InitClusterMeans_Random(soKMeansClassifier *this, int a2, float32x4_t result)
{
  v3 = *(this + 10);
  if (v3)
  {
    v4 = *(this + 11);
    if (v4)
    {
      if (a2)
      {
        v5 = 255;
      }

      else
      {
        v5 = 0;
      }

      v6 = 392;
      if (!a2)
      {
        v6 = 384;
      }

      if (*(this + 20) >= 2uLL)
      {
        v7 = *(this + v6);
        v8 = v4 * v3;
        v9 = __clz(v8);
        v10 = 31;
        if (((v8 << v9) & 0x7FFFFFFF) != 0)
        {
          v10 = 32;
        }

        v11 = v10 - v9;
        v12 = v11 >> 5;
        if ((v11 & 0x1F) != 0)
        {
          ++v12;
        }

        if (*(this + 16) == 1)
        {
          if (v8 == 1)
          {
            v13 = 1;
            do
            {
              v7[v13++] = 0;
              v14 = *(this + 20);
            }

            while (v14 > v13);
          }

          else
          {
            v42 = *this;
            v43 = *(this + 6);
            v44 = 1;
            v45 = *(this + 19);
            while (1)
            {
LABEL_45:
              if (v8)
              {
                if (v12 <= v11)
                {
                  v46 = 0xFFFFFFFF >> -(v11 / v12);
                }

                else
                {
                  v46 = 0;
                }

                v47 = *(v42 + 2496);
                while (1)
                {
                  v48 = v47;
                  v47 = (v47 + 1) % 0x270;
                  v49 = *(v42 + 4 * v47);
                  v50 = v49 & 0x7FFFFFFE | *(v42 + 4 * v48) & 0x80000000;
                  if (v49)
                  {
                    v51 = -1727483681;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  v52 = v51 ^ *(v42 + 4 * ((v48 + 397) % 0x270)) ^ (v50 >> 1);
                  *(v42 + 4 * v48) = v52;
                  v53 = ((v52 ^ (v52 >> 11)) << 7) & 0x9D2C5680 ^ v52 ^ (v52 >> 11);
                  LODWORD(v48) = ((v53 << 15) & 0xEFC60000 ^ v53 ^ (((v53 << 15) & 0xEFC60000 ^ v53) >> 18)) & v46;
                  if (v48 < v8)
                  {
                    *(v42 + 2496) = v47;
                    v48 = v48;
                    if (v5 == *(v43 + v48))
                    {
                      break;
                    }
                  }
                }
              }

              else
              {
                v54 = *(v42 + 2496);
                do
                {
                  v55 = (v54 + 1) % 0x270;
                  v56 = *(v42 + 4 * v55);
                  v57 = v56 & 0x7FFFFFFE | *(v42 + 4 * v54) & 0x80000000;
                  if (v56)
                  {
                    v58 = -1727483681;
                  }

                  else
                  {
                    v58 = 0;
                  }

                  v59 = v58 ^ *(v42 + 4 * ((v54 + 397) % 0x270)) ^ (v57 >> 1);
                  *(v42 + 4 * v54) = v59;
                  *(v42 + 2496) = v55;
                  v60 = ((v59 ^ (v59 >> 11)) << 7) & 0x9D2C5680 ^ v59 ^ (v59 >> 11);
                  v48 = ((v60 << 15) & 0xEFC60000 ^ v60 ^ (((v60 << 15) & 0xEFC60000 ^ v60) >> 18));
                  v54 = (v54 + 1) % 0x270;
                }

                while (v5 != *(v43 + v48));
              }

              result = *(v45 + 16 * v44);
              v61 = 1;
              v62 = v7;
              v63 = 1;
              do
              {
                v65 = *v62++;
                v64 = v65;
                if (v65 == v48)
                {
                  goto LABEL_45;
                }

                v66 = vmovn_s32(vmvnq_s8(vceqq_f32(result, *(v45 + 16 * v64))));
                v63 &= v66.i8[0] | v66.i8[2] | v66.i8[4];
                if (!(v66.i8[0] & 1 | v66.i8[2] & 1 | v66.i8[4] & 1))
                {
                  break;
                }

                v41 = v61++ >= v44;
              }

              while (!v41);
              if (v63)
              {
                v7[v44++] = v48;
                v14 = *(this + 20);
                if (v14 <= v44)
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          v15 = *this;
          v16 = *(this + 19);
          v17 = 1;
          while (1)
          {
LABEL_20:
            if (v8 == 1)
            {
              v18 = 0;
            }

            else if (v8)
            {
              v19 = 0xFFFFFFFF >> -(v11 / v12);
              if (v12 > v11)
              {
                v19 = 0;
              }

              v20 = *(v15 + 2496);
              do
              {
                v21 = v20;
                v20 = (v20 + 1) % 0x270;
                v22 = *(v15 + 4 * v20);
                v23 = v22 & 0x7FFFFFFE | *(v15 + 4 * v21) & 0x80000000;
                if (v22)
                {
                  v24 = -1727483681;
                }

                else
                {
                  v24 = 0;
                }

                v25 = v24 ^ *(v15 + 4 * ((v21 + 397) % 0x270)) ^ (v23 >> 1);
                *(v15 + 4 * v21) = v25;
                v26 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
                v18 = ((v26 << 15) & 0xEFC60000 ^ v26 ^ (((v26 << 15) & 0xEFC60000 ^ v26) >> 18)) & v19;
              }

              while (v18 >= v8);
              *(v15 + 2496) = v20;
            }

            else
            {
              v27 = *(v15 + 2496);
              v28 = (v27 + 1) % 0x270uLL;
              v29 = *(v15 + 4 * v28);
              v30 = v29 & 0x7FFFFFFE | *(v15 + 4 * v27) & 0x80000000;
              if (v29)
              {
                v31 = -1727483681;
              }

              else
              {
                v31 = 0;
              }

              v32 = v31 ^ *(v15 + 4 * ((v27 + 397) % 0x270uLL)) ^ (v30 >> 1);
              *(v15 + 4 * v27) = v32;
              *(v15 + 2496) = v28;
              v33 = ((v32 ^ (v32 >> 11)) << 7) & 0x9D2C5680 ^ v32 ^ (v32 >> 11);
              v18 = (v33 << 15) & 0xEFC60000 ^ v33 ^ (((v33 << 15) & 0xEFC60000 ^ v33) >> 18);
            }

            v34 = v18;
            result = *(v16 + 16 * v17);
            v35 = 1;
            v36 = v7;
            v37 = 1;
            do
            {
              v39 = *v36++;
              v38 = v39;
              if (v39 == v34)
              {
                goto LABEL_20;
              }

              v40 = vmovn_s32(vmvnq_s8(vceqq_f32(result, *(v16 + 16 * v38))));
              v37 &= v40.i8[0] | v40.i8[2] | v40.i8[4];
              if (!(v40.i8[0] & 1 | v40.i8[2] & 1 | v40.i8[4] & 1))
              {
                break;
              }

              v41 = v35++ >= v17;
            }

            while (!v41);
            if (v37)
            {
              v7[v17++] = v34;
              v14 = *(this + 20);
              if (v14 <= v17)
              {
                break;
              }
            }
          }
        }

        if (v14 >= 2)
        {
          v67 = 1;
          if (a2)
          {
            do
            {
              result = *(*(this + 19) + 16 * v7[v67]);
              *(*(this + 22) + 16 * v67++) = result;
            }

            while (*(this + 20) > v67);
          }

          else
          {
            do
            {
              result = *(*(this + 19) + 16 * v7[v67]);
              *(*(this + 21) + 16 * v67++) = result;
            }

            while (*(this + 20) > v67);
          }
        }
      }
    }
  }

  return result;
}

void soKMeansClassifier::InitClusterMeans_PP(soKMeansClassifier *this)
{
  if (*(this + 1) >= 2uLL)
  {
    operator new[]();
  }

  operator new();
}

uint64_t ComputeD2(void *a1, double a2, double a3, double a4, double a5, int32x4_t a6, int32x4_t a7, int32x4_t a8, int32x4_t a9)
{
  v9 = *a1;
  if (*(*a1 + 16) == 1)
  {
    v10 = v9[14];
    v11 = a1[7];
    v12 = v9[50];
    v13 = v12 + 4 * a1[4] * v10;
    v14 = v12 + 4 * a1[6] * v10;
    if (v11 == 1)
    {
      v15 = a1[1];
      v16 = a1[2];
      v17 = 0.0;
      v18 = 0.0;
      if (v15 < v16)
      {
        v19 = *v9[22];
        v20 = *v9[21];
        v21 = v9[6];
        a6.i32[0] = 255;
        do
        {
          v22 = *(v21 + v15);
          if (v22 == 255 || v22 == 0)
          {
            a8.i32[0] = 0;
            a9.i32[0] = *(v21 + v15);
            v24 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a8), 0), v20, vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a6), 0), v19, 0));
            a9 = *(v9[19] + 16 * v15);
            v25 = v22 == 0;
            if (*(v21 + v15))
            {
              v26 = v14;
            }

            else
            {
              v26 = v13;
            }

            v27 = vsubq_f32(a9, v24);
            a8 = vmulq_f32(v27, v27);
            v28 = vaddv_f32(*a8.i8);
            *(v26 + 4 * v15) = *&a8.i32[2] + v28;
            *a8.i64 = (*&a8.i32[2] + v28);
            *a9.i64 = v18 + *a8.i64;
            *a8.i64 = v17 + *a8.i64;
            if (v25)
            {
              v18 = *a9.i64;
            }

            else
            {
              v17 = *a8.i64;
            }
          }

          ++v15;
        }

        while (v16 != v15);
      }
    }

    else
    {
      v48 = a1[1];
      v49 = a1[2];
      v17 = 0.0;
      v18 = 0.0;
      if (v48 < v49)
      {
        v50 = a1[5] * v10;
        v51 = 16 * v11 - 16;
        v52 = *(v9[22] + v51);
        v53 = v12 + 4 * a1[3] * v10;
        v54 = v12 + 4 * v50;
        v55 = *(v9[21] + v51);
        v56 = v9[6];
        do
        {
          v57 = *(v56 + v48);
          if (v57 == 255 || v57 == 0)
          {
            a6.i32[0] = 0;
            a7.i32[0] = *(v56 + v48);
            v59 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a7, a6), 0), v55, v52);
            a7 = *(v9[19] + 16 * v48);
            if (v57 == 255)
            {
              v60 = v54;
            }

            else
            {
              v60 = 0;
            }

            if (v57 == 255)
            {
              v61 = v14;
            }

            else
            {
              v61 = 0;
            }

            if (!*(v56 + v48))
            {
              v60 = v53;
              v61 = v13;
            }

            v62 = vsubq_f32(a7, v59);
            a6 = vmulq_f32(v62, v62);
            *a6.i32 = *&a6.i32[2] + vaddv_f32(*a6.i8);
            if (*a6.i32 >= *(v60 + 4 * v48))
            {
              a6.i32[0] = *(v60 + 4 * v48);
            }

            *(v61 + 4 * v48) = a6.i32[0];
            *a6.i64 = *a6.i32;
            if (v57)
            {
              v17 = v17 + *a6.i64;
            }

            else
            {
              v18 = v18 + *a6.i64;
            }
          }

          ++v48;
        }

        while (v49 != v48);
      }
    }

    v63 = a1[8];
    v65 = v9[42];
    v64 = v9[43];
    *(v65 + 8 * v63) = v18;
    *(v64 + 8 * v63) = v17;
  }

  else
  {
    v29 = v9[14];
    v31 = a1[3];
    v30 = a1[4];
    v32 = v9[42];
    v34 = a1[7];
    v33 = a1[8];
    *(v32 + 8 * v33) = 0;
    v36 = a1[1];
    v35 = a1[2];
    if (v34 == 1)
    {
      v37 = v35 > v36;
      v38 = v35 - v36;
      if (v37)
      {
        v39 = v9[19];
        v40 = v9[21];
        v41 = (v9[50] + 4 * v30 * v29 + 4 * v36);
        v42 = (v39 + 16 * v36);
        v43 = 0.0;
        do
        {
          v44 = *v42++;
          v45 = vsubq_f32(v44, *v40);
          v46 = vmulq_f32(v45, v45);
          v47 = vaddv_f32(*v46.f32);
          *v41++ = v46.f32[2] + v47;
          v43 = v43 + (v46.f32[2] + v47);
          *(v32 + 8 * v33) = v43;
          --v38;
        }

        while (v38);
      }
    }

    else
    {
      v37 = v35 > v36;
      v67 = v35 - v36;
      if (v37)
      {
        v68 = v9[21] + 16 * v34;
        v69 = v9[50];
        v70 = (v9[19] + 16 * v36);
        v71 = 4 * v36;
        v72 = (v69 + v71 + 4 * v30 * v29);
        v73 = (v69 + v71 + 4 * v29 * v31);
        v74 = 0.0;
        do
        {
          v75 = *v70++;
          v76 = vsubq_f32(v75, *(v68 - 16));
          v77 = vmulq_f32(v76, v76);
          v78 = v77.f32[2] + vaddv_f32(*v77.f32);
          v75.i32[0] = *v73++;
          v79 = v75.f32[0];
          if (v78 >= v75.f32[0])
          {
            v78 = v79;
          }

          *v72++ = v78;
          v74 = v74 + v78;
          *(v32 + 8 * v33) = v74;
          --v67;
        }

        while (v67);
      }
    }
  }

  MEMORY[0x2666E9F00]();
  return 0;
}

uint64_t FitToClusters(void *a1)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = 4 * *(*a1 + 160);
  v2 = (MEMORY[0x28223BE20])();
  v3 = v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v64 - v5;
  if (v7)
  {
    v8 = v4;
    memset_pattern16(v3, &unk_260817950, v1);
    memset_pattern16(v6, &unk_260817950, v1);
    v4 = v8;
  }

  v9 = *(v4 + 8);
  if (v9 < *(v4 + 16))
  {
    while (1)
    {
      v10 = *v4;
      if ((*(*v4 + 16) & 1) == 0)
      {
        break;
      }

      v11 = *(v10[6] + v9);
      v12 = *(v10[19] + 16 * v9);
      if (!*(v10[6] + v9))
      {
        goto LABEL_12;
      }

      if (v11 != 255)
      {
        goto LABEL_6;
      }

      v13 = 0;
      v11 = 1;
      v14 = 22;
LABEL_13:
      v15 = vsubq_f32(v12, *v10[v14]);
      v16 = vmulq_f32(v15, v15);
      v17 = v16.f32[2] + vaddv_f32(*v16.f32);
      v18 = v10[20];
      if (v18 < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        if (v13)
        {
          for (i = 1; i != v18; ++i)
          {
            v21 = vsubq_f32(v12, *(v10[21] + 16 * i));
            v22 = vmulq_f32(v21, v21);
            v23 = vaddv_f32(*v22.f32);
            if ((v22.f32[2] + v23) < v17)
            {
              v19 = i;
              v17 = v22.f32[2] + v23;
            }
          }
        }

        else if (v11)
        {
          for (j = 1; j != v18; ++j)
          {
            v58 = vsubq_f32(v12, *(v10[22] + 16 * j));
            v59 = vmulq_f32(v58, v58);
            v60 = vaddv_f32(*v59.f32);
            if ((v59.f32[2] + v60) < v17)
            {
              v19 = j;
              v17 = v59.f32[2] + v60;
            }
          }
        }

        else
        {
          for (k = 1; k != v18; ++k)
          {
            v16 = vmulq_f32(v16, v16);
            v62 = v16.f32[2] + vaddv_f32(*v16.f32);
            if (v62 < v17)
            {
              v19 = k;
              v17 = v62;
            }
          }
        }
      }

      if (v13)
      {
        *(v10[7] + v9) = v19;
        v24 = v19;
        v25 = (*(*v4 + 256) + 32 * *(*v4 + 160) * *(v4 + 32) + 32 * v19);
        v26 = vaddq_f64(vcvt_hight_f64_f32(v12), v25[1]);
        *v25 = vaddq_f64(vcvtq_f64_f32(*v12.f32), *v25);
        v25[1] = v26;
        v27 = *v4;
        v28 = *(*v4 + 352) + 8 * *(*v4 + 160) * *(v4 + 32);
        ++*(v28 + 8 * v19);
        if (*(v4 + 25) == 1)
        {
          v29 = vmulq_n_f32(v12, v12.f32[0]);
          v30 = vcvtq_f64_f32(*v29.f32);
          v31 = (*(v27 + 304) + 96 * (v19 + *(v27 + 160) * *(v4 + 32)));
          v32 = vaddq_f64(vcvt_hight_f64_f32(v29), v31[1]);
          *v31 = vaddq_f64(v30, *v31);
          v31[1] = v32;
          v33 = vmulq_lane_f32(v12, *v12.f32, 1);
          v34 = (*(*v4 + 304) + 96 * (v19 + *(*v4 + 160) * *(v4 + 32)));
          v35 = v34[3];
          v34[2] = vaddq_f64(vcvtq_f64_f32(*v33.f32), v34[2]);
          v34[3] = vaddq_f64(vcvt_hight_f64_f32(v33), v35);
          v36 = vmulq_laneq_f32(v12, v12, 2);
          v37 = vcvtq_f64_f32(*v36.f32);
          v38 = (*(*v4 + 304) + 96 * (v19 + *(*v4 + 160) * *(v4 + 32)));
          v39 = vaddq_f64(vcvt_hight_f64_f32(v36), v38[5]);
          v38[4] = vaddq_f64(v37, v38[4]);
          v38[5] = v39;
        }

        v40 = &v3[4 * v19];
        if (v17 <= *v40)
        {
          goto LABEL_6;
        }

        v41 = 288;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_6;
        }

        *(v10[8] + v9) = v19;
        v24 = v19;
        v42 = (*(*v4 + 264) + 32 * *(*v4 + 160) * *(v4 + 32) + 32 * v19);
        v43 = vaddq_f64(vcvt_hight_f64_f32(v12), v42[1]);
        *v42 = vaddq_f64(vcvtq_f64_f32(*v12.f32), *v42);
        v42[1] = v43;
        v44 = *v4;
        v45 = *(*v4 + 360) + 8 * *(*v4 + 160) * *(v4 + 32);
        ++*(v45 + 8 * v19);
        if (*(v4 + 25) == 1)
        {
          v46 = vmulq_n_f32(v12, v12.f32[0]);
          v47 = vcvtq_f64_f32(*v46.f32);
          v48 = (*(v44 + 312) + 96 * (v19 + *(v44 + 160) * *(v4 + 32)));
          v49 = vaddq_f64(vcvt_hight_f64_f32(v46), v48[1]);
          *v48 = vaddq_f64(v47, *v48);
          v48[1] = v49;
          v50 = vmulq_lane_f32(v12, *v12.f32, 1);
          v51 = (*(*v4 + 312) + 96 * (v19 + *(*v4 + 160) * *(v4 + 32)));
          v52 = v51[3];
          v51[2] = vaddq_f64(vcvtq_f64_f32(*v50.f32), v51[2]);
          v51[3] = vaddq_f64(vcvt_hight_f64_f32(v50), v52);
          v53 = vmulq_laneq_f32(v12, v12, 2);
          v54 = vcvtq_f64_f32(*v53.f32);
          v55 = (*(*v4 + 312) + 96 * (v19 + *(*v4 + 160) * *(v4 + 32)));
          v56 = vaddq_f64(vcvt_hight_f64_f32(v53), v55[5]);
          v55[4] = vaddq_f64(v54, v55[4]);
          v55[5] = v56;
        }

        v40 = &v6[4 * v19];
        if (v17 <= *v40)
        {
          goto LABEL_6;
        }

        v41 = 296;
      }

      *v40 = v17;
      *(*(*v4 + v41) + 8 * *(*v4 + 160) * *(v4 + 32) + 8 * v24) = v17;
LABEL_6:
      if (++v9 >= *(v4 + 16))
      {
        goto LABEL_42;
      }
    }

    v11 = 0;
    v12 = *(v10[19] + 16 * v9);
LABEL_12:
    v13 = 1;
    v14 = 21;
    goto LABEL_13;
  }

LABEL_42:
  MEMORY[0x2666E9F00]();
  return 0;
}

uint64_t RefitToClusters(char *a1)
{
  v1 = *(a1 + 1);
  if (v1 < *(a1 + 2))
  {
    v2 = *a1;
    if (*(*a1 + 16) == 1)
    {
      do
      {
        if (*(v2 + 16) != 1)
        {
          goto LABEL_7;
        }

        v24 = *(*(v2 + 152) + 16 * v1);
        if (*(*(v2 + 48) + v1))
        {
          if (*(*(v2 + 48) + v1) < 0x81u)
          {
            goto LABEL_7;
          }

          v25 = *(v2 + 360);
          v26 = *(v2 + 160);
          if (*v25 < 0xAuLL)
          {
            if (v26 > 1)
            {
              v31 = INFINITY;
              goto LABEL_28;
            }
          }

          else if (v26 > 1)
          {
            v27 = *(v2 + 192);
            v28 = vsubq_f32(v24, **(v2 + 176));
            v29 = vcvt_hight_f64_f32(v28);
            v30 = vcvtq_f64_f32(*v28.f32);
            v31 = vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v27[1], v30), v27[3], v30, 1), v29, v27[5]), v29).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v27, v30.f64[0]), v27[2], v30, 1), v27[4], v29.f64[0]), v30)) - **(v2 + 240);
LABEL_28:
            v46 = 0;
            v3 = 0;
            for (i = 1; i != v26; ++i)
            {
              if (v25[i] >= 0xAuLL)
              {
                v48 = vsubq_f32(v24, *(*(v2 + 176) + 16 * i));
                v49 = vcvt_hight_f64_f32(v48);
                v50 = vcvtq_f64_f32(*v48.f32);
                v51 = (*(v2 + 192) + v46);
                v52 = vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v51[7], v50), v51[9], v50, 1), v49, v51[11]), v49).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v51[6], v50.f64[0]), v51[8], v50, 1), v51[10], v49.f64[0]), v50)) - *(*(v2 + 240) + 8 * i);
              }

              else
              {
                v52 = INFINITY;
              }

              if (v52 <= v31)
              {
                v31 = v52;
                v3 = i;
              }

              v46 += 96;
            }

LABEL_36:
            v4 = (v2 + 64);
            v5 = a1 + 56;
            v6 = a1 + 40;
            v7 = a1 + 72;
            goto LABEL_6;
          }

          v3 = 0;
          goto LABEL_36;
        }

        v32 = *(v2 + 352);
        v33 = *(v2 + 160);
        if (*v32 < 0xAuLL)
        {
          if (v33 > 1)
          {
            v38 = INFINITY;
LABEL_19:
            v39 = 0;
            v3 = 0;
            for (j = 1; j != v33; ++j)
            {
              if (v32[j] >= 0xAuLL)
              {
                v41 = vsubq_f32(v24, *(*(v2 + 168) + 16 * j));
                v42 = vcvt_hight_f64_f32(v41);
                v43 = vcvtq_f64_f32(*v41.f32);
                v44 = (*(v2 + 184) + v39);
                v45 = vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v44[7], v43), v44[9], v43, 1), v42, v44[11]), v42).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v44[6], v43.f64[0]), v44[8], v43, 1), v44[10], v42.f64[0]), v43)) - *(*(v2 + 232) + 8 * j);
              }

              else
              {
                v45 = INFINITY;
              }

              if (v45 <= v38)
              {
                v38 = v45;
                v3 = j;
              }

              v39 += 96;
            }

            goto LABEL_5;
          }
        }

        else if (v33 > 1)
        {
          v34 = *(v2 + 184);
          v35 = vsubq_f32(v24, **(v2 + 168));
          v36 = vcvt_hight_f64_f32(v35);
          v37 = vcvtq_f64_f32(*v35.f32);
          v38 = vmulq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v34[1], v37), v34[3], v37, 1), v36, v34[5]), v36).f64[0] + vaddvq_f64(vmulq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v34, v37.f64[0]), v34[2], v37, 1), v34[4], v36.f64[0]), v37)) - **(v2 + 232);
          goto LABEL_19;
        }

        v3 = 0;
LABEL_5:
        v4 = (v2 + 56);
        v5 = a1 + 48;
        v6 = a1 + 32;
        v7 = a1 + 64;
LABEL_6:
        *(*v4 + v1) = v3;
        v8 = v3;
        v9 = (*v5 + 32 * *(*a1 + 160) * *(a1 + 3) + 32 * v3);
        v10 = vaddq_f64(vcvt_hight_f64_f32(v24), v9[1]);
        *v9 = vaddq_f64(vcvtq_f64_f32(*v24.f32), *v9);
        v9[1] = v10;
        v11 = *a1;
        v12 = *v6 + 8 * *(*a1 + 160) * *(a1 + 3);
        ++*(v12 + 8 * v3);
        v13 = vmulq_n_f32(v24, v24.f32[0]);
        v14 = vcvtq_f64_f32(*v13.f32);
        v15 = (*v7 + 96 * (v3 + *(v11 + 160) * *(a1 + 3)));
        v16 = vaddq_f64(vcvt_hight_f64_f32(v13), v15[1]);
        *v15 = vaddq_f64(v14, *v15);
        v15[1] = v16;
        v17 = vmulq_lane_f32(v24, *v24.f32, 1);
        v18 = *v7 + 96 * (v8 + *(*a1 + 160) * *(a1 + 3));
        v19 = *(v18 + 48);
        *(v18 + 32) = vaddq_f64(vcvtq_f64_f32(*v17.f32), *(v18 + 32));
        *(v18 + 48) = vaddq_f64(vcvt_hight_f64_f32(v17), v19);
        v20 = vmulq_laneq_f32(v24, v24, 2);
        v21 = vcvtq_f64_f32(*v20.f32);
        v22 = (*v7 + 96 * (v8 + *(*a1 + 160) * *(a1 + 3)));
        v23 = vaddq_f64(vcvt_hight_f64_f32(v20), v22[5]);
        v22[4] = vaddq_f64(v21, v22[4]);
        v22[5] = v23;
LABEL_7:
        ++v1;
      }

      while (v1 < *(a1 + 2));
    }
  }

  MEMORY[0x2666E9F00]();
  return 0;
}

uint64_t soKMeansClassifier::Cluster(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7, char *a8, float32x4_t a9, float64x2_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32)
{
  if (!*(a1 + 80) || !*(a1 + 88))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = a3;
  soKMeansClassifier::InitClusterMeans(a1, a9);
  memset(*(a1 + 56), 255, *(a1 + 112));
  if (*(a1 + 16) == 1)
  {
    memset(*(a1 + 64), 255, *(a1 + 112));
  }

  v126 = a6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (a2)
  {
    bzero(*(a1 + 352), 8 * *(a1 + 160) * *(a1 + 8));
    bzero(*(a1 + 256), 32 * *(a1 + 160) * *(a1 + 8));
    bzero(*(a1 + 304), 96 * *(a1 + 160) * *(a1 + 8));
    if (*(a1 + 16) == 1)
    {
      bzero(*(a1 + 360), 8 * *(a1 + 160) * *(a1 + 8));
      bzero(*(a1 + 264), 32 * *(a1 + 160) * *(a1 + 8));
      bzero(*(a1 + 312), 96 * *(a1 + 160) * *(a1 + 8));
    }

    if (*(a1 + 8) >= 2uLL)
    {
      operator new[]();
    }

    operator new();
  }

  v40 = *(a1 + 160);
  if (v40)
  {
    v41 = 0;
    for (i = 0; i < v40; ++i)
    {
      v53 = *(*(a1 + 352) + 8 * i);
      if (v53)
      {
        v54 = (*(a1 + 304) + v41);
        v37.f64[0] = v53;
        v55 = vdupq_lane_s64(COERCE__INT64(v53), 0);
        v56 = *(a1 + 168);
        v57 = *(v56 + 16 * i);
        v58 = vcvt_hight_f64_f32(v57);
        v59 = vcvtq_f64_f32(*v57.f32);
        v38.f64[0] = v57.f32[0];
        v60 = vmulq_f64(v38, v58);
        v61 = vsubq_f64(vdivq_f64(v54[1], v37), v60);
        v62 = vsubq_f64(vdivq_f64(*v54, v55), vmulq_n_f64(v59, v57.f32[0]));
        v60.f64[0] = COERCE_FLOAT(HIDWORD(*(v56 + 16 * i)));
        v63 = vsubq_f64(vdivq_f64(v54[3], v37), vmulq_f64(v60, v58));
        v64 = vsubq_f64(vdivq_f64(v54[2], v55), vmulq_n_f64(v59, v60.f64[0]));
        v65 = vdivq_f64(v54[5], v37);
        v37.f64[0] = COERCE_FLOAT(*(v56 + 16 * i + 8));
        *&v66 = *&vsubq_f64(v65, vmulq_f64(v37, v58));
        v67 = vsubq_f64(vdivq_f64(v54[4], v55), vmulq_n_f64(v59, v37.f64[0]));
        v68 = vmulq_laneq_f64(vzip1q_s64(v63, v61), v67, 1);
        v69 = vmulq_f64(vzip1q_s64(v62, v64), vsubq_f64(vmulq_n_f64(vzip2q_s64(v64, v62), v66), v68));
        v70 = vsubq_f64(v69, vdupq_laneq_s64(v69, 1)).f64[0];
        v71 = vmuld_lane_f64(*v63.i64, v62, 1);
        v72 = (v71 - vmuld_lane_f64(*v61.i64, v64, 1)) * v67.f64[0] + v70;
        if (v72 <= 2.22044605e-16)
        {
          *&v73.f64[1] = vextq_s8(v62, v62, 8uLL).u64[0];
          v73.f64[0] = v64.f64[1] + 0.01;
          *&v74 = v61.i64[0];
          *(&v74 + 1) = vextq_s8(v61, v61, 8uLL).u64[0];
          v75 = *v61.i64 * (v64.f64[1] + 0.01);
          v76.f64[1] = v64.f64[0];
          v77.f64[0] = v67.f64[0];
          *&v77.f64[1] = vextq_s8(v67, v67, 8uLL).u64[0];
          v76.f64[0] = v62.f64[0] + 0.01;
          v78 = vmulq_f64(v76, vsubq_f64(vmulq_n_f64(v73, v66 + 0.01), v68));
          v72 = v67.f64[0] * (v71 - v75) + vsubq_f64(v78, vdupq_laneq_s64(v78, 1)).f64[0];
          vars0b = v74;
          a10 = v77;
        }

        else
        {
          vars0a = v61;
          a10 = v67;
        }

        *(*(a1 + 200) + 8 * i) = v72;
        v79 = 1.0 / sqrt(v72);
        *(*(a1 + 216) + 8 * i) = v79;
        v80 = log(v79);
        *(*(a1 + 232) + 8 * i) = v80 + v80;
        __invert_d3();
        v81 = (*(a1 + 184) + v41);
        *v81 = a27;
        v81[1] = a28;
        v37.f64[1] = *(&a31 + 1);
        v81[4] = a31;
        v81[5] = a32;
        v81[2] = a29;
        v81[3] = a30;
      }

      if (*(a1 + 16) == 1)
      {
        v82 = *(*(a1 + 360) + 8 * i);
        if (v82)
        {
          v83 = (*(a1 + 312) + v41);
          v37.f64[0] = v82;
          v84 = vdupq_lane_s64(COERCE__INT64(v82), 0);
          v85 = *(a1 + 176);
          v86 = *(v85 + 16 * i);
          v87 = vcvt_hight_f64_f32(v86);
          v88 = vcvtq_f64_f32(*v86.f32);
          v38.f64[0] = v86.f32[0];
          v89 = vmulq_f64(v38, v87);
          v90 = vsubq_f64(vdivq_f64(v83[1], v37), v89);
          v91 = vsubq_f64(vdivq_f64(*v83, v84), vmulq_n_f64(v88, v86.f32[0]));
          v89.f64[0] = COERCE_FLOAT(HIDWORD(*(v85 + 16 * i)));
          v92 = vsubq_f64(vdivq_f64(v83[3], v37), vmulq_f64(v89, v87));
          v93 = vsubq_f64(vdivq_f64(v83[2], v84), vmulq_n_f64(v88, v89.f64[0]));
          v94 = vdivq_f64(v83[5], v37);
          v37.f64[0] = COERCE_FLOAT(*(v85 + 16 * i + 8));
          *&v95 = *&vsubq_f64(v94, vmulq_f64(v37, v87));
          v96 = vsubq_f64(vdivq_f64(v83[4], v84), vmulq_n_f64(v88, v37.f64[0]));
          v97 = vmulq_laneq_f64(vzip1q_s64(v92, v90), v96, 1);
          v98 = vmulq_f64(vzip1q_s64(v91, v93), vsubq_f64(vmulq_n_f64(vzip2q_s64(v93, v91), v95), v97));
          v99 = vsubq_f64(v98, vdupq_laneq_s64(v98, 1)).f64[0];
          v100 = vmuld_lane_f64(*v92.i64, v91, 1);
          v49 = (v100 - vmuld_lane_f64(*v90.i64, v93, 1)) * v96.f64[0] + v99;
          if (v49 <= 2.22044605e-16)
          {
            *&v43.f64[1] = vextq_s8(v91, v91, 8uLL).u64[0];
            v43.f64[0] = v93.f64[1] + 0.01;
            *&v44 = v90.i64[0];
            *(&v44 + 1) = vextq_s8(v90, v90, 8uLL).u64[0];
            v45 = *v90.i64 * (v93.f64[1] + 0.01);
            v46.f64[1] = v93.f64[0];
            v47.f64[0] = v96.f64[0];
            *&v47.f64[1] = vextq_s8(v96, v96, 8uLL).u64[0];
            v46.f64[0] = v91.f64[0] + 0.01;
            v48 = vmulq_f64(v46, vsubq_f64(vmulq_n_f64(v43, v95 + 0.01), v97));
            v49 = v96.f64[0] * (v100 - v45) + vsubq_f64(v48, vdupq_laneq_s64(v48, 1)).f64[0];
            vars0 = v44;
            a10 = v47;
          }

          else
          {
            vars0c = v90;
            a10 = v96;
          }

          *(*(a1 + 208) + 8 * i) = v49;
          v50 = 1.0 / sqrt(v49);
          *(*(a1 + 224) + 8 * i) = v50;
          v51 = log(v50);
          *(*(a1 + 240) + 8 * i) = v51 + v51;
          __invert_d3();
          v52 = (*(a1 + 192) + v41);
          *v52 = a27;
          v52[1] = a28;
          v37.f64[1] = *(&a31 + 1);
          v52[4] = a31;
          v52[5] = a32;
          v52[2] = a29;
          v52[3] = a30;
        }
      }

      v40 = *(a1 + 160);
      v41 += 96;
    }

    v101 = v126;
    v102 = a8;
    v103 = a4;
    if (a4 && v40)
    {
      for (j = 0; j < v40; ++j)
      {
        v105 = *(*(a1 + 168) + 16 * j);
        v105.i32[3] = 0;
        v106 = vmaxnmq_f32(v105, 0);
        v106.i32[3] = 0;
        v107 = vcvtq_s32_f32(vminnmq_f32(v106, xmmword_260817940));
        v103[1] = v107.i8[4];
        v103[2] = v107.i8[8];
        *v103 = v107.i8[0];
        v40 = *(a1 + 160);
        v103 += 4;
      }
    }
  }

  else
  {
    v101 = a6;
    v102 = a8;
  }

  if (v101 && v40)
  {
    v108 = 0;
    v109 = *(a1 + 352);
    do
    {
      *(v101 + 8 * v108) = *(v109 + 8 * v108);
      ++v108;
    }

    while (*(a1 + 160) > v108);
  }

  if (v102 && *(a1 + 88))
  {
    v110 = 0;
    v111 = 0;
    v112 = *(a1 + 80);
    do
    {
      memcpy(v102, (*(a1 + 56) + v110), v112);
      ++v111;
      v110 += v112;
      v102 += *&a10.f64[1];
    }

    while (*(a1 + 88) > v111);
  }

  if (*(a1 + 16) == 1)
  {
    v113 = a5;
    if (a5 && *(a1 + 160))
    {
      v114 = 0;
      do
      {
        v115 = *(*(a1 + 176) + 16 * v114);
        v115.i32[3] = 0;
        v116 = vmaxnmq_f32(v115, 0);
        v116.i32[3] = 0;
        v117 = vcvtq_s32_f32(vminnmq_f32(v116, xmmword_260817940));
        v113[1] = v117.i8[4];
        v113[2] = v117.i8[8];
        *v113 = v117.i8[0];
        ++v114;
        v113 += 4;
      }

      while (*(a1 + 160) > v114);
    }

    v118 = a10.f64[0];
    if (a7 && *(a1 + 160))
    {
      v119 = 0;
      v120 = *(a1 + 360);
      do
      {
        *(a7 + 8 * v119) = *(v120 + 8 * v119);
        ++v119;
      }

      while (*(a1 + 160) > v119);
    }

    if (*&a10.f64[0] && *(a1 + 88))
    {
      v121 = 0;
      v122 = 0;
      v123 = *(a1 + 80);
      do
      {
        memcpy(*&v118, (*(a1 + 64) + v121), v123);
        ++v122;
        v121 += v123;
        *&v118 += *&a10.f64[1];
      }

      while (*(a1 + 88) > v122);
    }
  }

  return 0;
}

void soKMeansClassifier::UpdateClusters(soKMeansClassifier *this, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(this + 10);
  v4 = *(this + 11);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      memcpy((*(this + 6) + v8), a2, v5);
      ++v9;
      v4 = *(this + 11);
      a2 += a3;
      v8 += v5;
    }

    while (v4 > v9);
    v5 = *(this + 10);
  }

  v10 = v5 * v4;
  memset(*(this + 7), 255, v5 * v4);
  memset(*(this + 8), 255, v10);
  bzero(*(this + 46), 8 * *(this + 20) * *(this + 1));
  bzero(*(this + 34), 32 * *(this + 20) * *(this + 1));
  bzero(*(this + 40), 96 * *(this + 20) * *(this + 1));
  if (*(this + 16))
  {
    bzero(*(this + 47), 8 * *(this + 20) * *(this + 1));
    bzero(*(this + 35), 32 * *(this + 20) * *(this + 1));
    bzero(*(this + 41), 96 * *(this + 20) * *(this + 1));
  }

  if (*(this + 1) >= 2uLL)
  {
    operator new[]();
  }

  operator new();
}

uint64_t std::uniform_int_distribution<int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  if (result != *a3)
  {
    v4 = result - *a3 + 1;
    if (result - *a3 == -1)
    {
      v18 = *(a2 + 2496);
      v19 = (v18 + 1) % 0x270uLL;
      v20 = *(a2 + 4 * v19);
      if (v20)
      {
        v21 = -1727483681;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21 ^ *(a2 + 4 * ((v18 + 397) % 0x270uLL)) ^ ((v20 & 0x7FFFFFFE | *(a2 + 4 * v18) & 0x80000000) >> 1);
      *(a2 + 4 * v18) = v22;
      *(a2 + 2496) = v19;
      v23 = ((v22 ^ (v22 >> 11)) << 7) & 0x9D2C5680 ^ v22 ^ (v22 >> 11);
      return (v23 << 15) & 0xEFC60000 ^ v23 ^ (((v23 << 15) & 0xEFC60000 ^ v23) >> 18);
    }

    else
    {
      v5 = __clz(v4);
      v6 = 31;
      if (((v4 << v5) & 0x7FFFFFFF) != 0)
      {
        v6 = 32;
      }

      v7 = v6 - v5;
      v8 = v7 >> 5;
      if ((v7 & 0x1F) != 0)
      {
        ++v8;
      }

      if (v8 <= v7)
      {
        v9 = 0xFFFFFFFF >> -(v7 / v8);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(a2 + 2496);
      do
      {
        v11 = v10;
        v10 = (v10 + 1) % 0x270;
        v12 = *(a2 + 4 * v10);
        v13 = v12 & 0x7FFFFFFE | *(a2 + 4 * v11) & 0x80000000;
        if (v12)
        {
          v14 = -1727483681;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 ^ *(a2 + 4 * ((v11 + 397) % 0x270)) ^ (v13 >> 1);
        *(a2 + 4 * v11) = v15;
        v16 = ((v15 ^ (v15 >> 11)) << 7) & 0x9D2C5680 ^ v15 ^ (v15 >> 11);
        v17 = ((v16 << 15) & 0xEFC60000 ^ v16 ^ (((v16 << 15) & 0xEFC60000 ^ v16) >> 18)) & v9;
      }

      while (v17 >= v4);
      *(a2 + 2496) = v10;
      return *a3 + v17;
    }
  }

  return result;
}

void HGFractured::Effect::Effect(HGFractured::Effect *this)
{
  HGObject::HGObject(this);
  *v2 = &unk_2872265D8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  *(v2 + 32) = 0x100000001;
  *(v2 + 40) = _D8;
  *(v2 + 48) = 1065353216;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(this + 9) = HGRectMake4i(0, 0, 0, 0);
  *(this + 10) = v8;
  *(this + 11) = 0;
  *(this + 15) = 0x400000007;
  *(this + 128) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 132) = 1065353216;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 148) = 0x400000003F800000;
  *(this + 78) = 0;
  *(this + 20) = 0x400000000;
  *(this + 21) = _D8;
  *(this + 44) = 0;
  *(this + 25) = 0x3F80000000000000;
  *(this + 180) = HGRectMake4i(0, 0, 0, 0);
  *(this + 188) = v9;
  *(this + 49) = 1065353216;
  *(this + 60) = 0;
  operator new();
}

void sub_25FD34D48(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void HGFractured::Effect::~Effect(HGFractured::Effect *this)
{
  *this = &unk_2872265D8;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_2872265D8;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v6);
}

uint64_t HGFractured::Effect::SetLeftHand(uint64_t this, int a2)
{
  if (*(this + 145) != a2)
  {
    *(this + 145) = a2;
    *(this + 120) |= 6u;
  }

  return this;
}

uint64_t HGFractured::Effect::SetRect(uint64_t this, HGRect a2)
{
  v2 = (a2.var3 - a2.var1) / (a2.var2 - a2.var0);
  if (*(this + 196) != v2)
  {
    *(this + 196) = v2;
    *(this + 132) = v2;
    *(this + 120) |= 7u;
  }

  *(this + 72) = a2;
  *(this + 180) = a2;
  return this;
}

uint64_t HGFractured::Effect::SetImageRect(uint64_t this, HGRect a2)
{
  v2 = (a2.var3 - a2.var1) / (a2.var2 - a2.var0);
  if (*(this + 132) != v2)
  {
    *(this + 44) = v2 / *(this + 36);
    *(this + 132) = v2;
    *(this + 120) |= 7u;
  }

  *(this + 180) = a2;
  return this;
}

float HGFractured::Effect::SetSubdivide(HGFractured::Effect *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 8) != a2 || *(this + 9) != a3)
  {
    *(this + 8) = a2;
    *(this + 9) = a3;
    result = 1.0 / a2;
    v4 = *(this + 33) / a3;
    *(this + 10) = result;
    *(this + 11) = v4;
    *(this + 30) |= 7u;
  }

  return result;
}

uint64_t HGFractured::Effect::SetShape(uint64_t this, int a2, float a3)
{
  if (*(this + 164) != a2 || *(this + 48) != a3)
  {
    *(this + 164) = a2;
    *(this + 157) = a2 == 0;
    *(this + 48) = a3;
    *(this + 120) |= 7u;
  }

  return this;
}

uint64_t HGFractured::Effect::SetExtrude(uint64_t this, float a2)
{
  v2 = fmaxf(a2, 0.0);
  if (*(this + 136) != v2)
  {
    *(this + 120) |= 7u;
    *(this + 136) = v2;
  }

  return this;
}

uint64_t HGFractured::Effect::SetScale(uint64_t this, float a2, float a3)
{
  if (*(this + 168) != a2 || *(this + 172) != a3)
  {
    *(this + 168) = a2;
    *(this + 172) = a3;
    *(this + 120) |= 7u;
  }

  return this;
}

uint64_t HGFractured::Effect::SetDual(uint64_t this, int a2, int a3)
{
  if (*(this + 140) != a2 || *(this + 144) != a3)
  {
    *(this + 140) = a2;
    *(this + 144) = a3;
    *(this + 120) |= 6u;
  }

  return this;
}

uint64_t HGFractured::Effect::SetDelay(uint64_t this, float a2)
{
  v2 = fmaxf(a2, 0.0);
  if (*(this + 148) != v2)
  {
    *(this + 148) = v2;
    *(this + 120) |= 6u;
  }

  return this;
}

uint64_t HGFractured::Effect::SetOriginPoint(uint64_t this, float a2, float a3)
{
  *(this + 208) = a2;
  *(this + 212) = a3;
  *(this + 120) |= 7u;
  return this;
}

uint64_t HGFractured::Effect::SetImpulse(uint64_t this, float a2, float a3)
{
  *(this + 216) = a2;
  *(this + 220) = a3;
  *(this + 120) |= 7u;
  return this;
}

uint64_t HGFractured::Effect::SetMode(uint64_t this, int a2)
{
  switch(a2)
  {
    case 0:
      if (*(this + 224) != HGFractured::Effect::shatter)
      {
        v2 = HGFractured::Effect::shatter;
        goto LABEL_38;
      }

      break;
    case 1:
      if (*(this + 224) != HGFractured::Effect::blast)
      {
        v2 = HGFractured::Effect::blast;
        goto LABEL_38;
      }

      break;
    case 2:
      if (*(this + 224) != HGFractured::Effect::crumble)
      {
        v2 = HGFractured::Effect::crumble;
        goto LABEL_38;
      }

      break;
    case 3:
      if (*(this + 224) != HGFractured::Effect::swipe)
      {
        v2 = HGFractured::Effect::swipe;
        goto LABEL_38;
      }

      break;
    case 4:
      if (*(this + 224) != HGFractured::Effect::vortex)
      {
        v2 = HGFractured::Effect::vortex;
        goto LABEL_38;
      }

      break;
    case 5:
      if (*(this + 224) != HGFractured::Effect::flip)
      {
        v2 = HGFractured::Effect::flip;
        goto LABEL_38;
      }

      break;
    case 6:
      if (*(this + 224) != HGFractured::Effect::whirl)
      {
        v2 = HGFractured::Effect::whirl;
        goto LABEL_38;
      }

      break;
    case 7:
      if (*(this + 224) != HGFractured::Effect::shutter)
      {
        v2 = HGFractured::Effect::shutter;
        goto LABEL_38;
      }

      break;
    case 8:
      if (*(this + 224) != HGFractured::Effect::evaporate)
      {
        v2 = HGFractured::Effect::evaporate;
        goto LABEL_38;
      }

      break;
    case 9:
      if (*(this + 224) != HGFractured::Effect::explode)
      {
        v2 = HGFractured::Effect::explode;
        goto LABEL_38;
      }

      break;
    case 10:
      if (*(this + 224) != HGFractured::Effect::pulverize)
      {
        v2 = HGFractured::Effect::pulverize;
        goto LABEL_38;
      }

      break;
    case 11:
      if (*(this + 224) != HGFractured::Effect::twirl)
      {
        v2 = HGFractured::Effect::twirl;
        goto LABEL_38;
      }

      break;
    case 12:
      if (*(this + 224) != HGFractured::Effect::spread)
      {
        v2 = HGFractured::Effect::spread;
        goto LABEL_38;
      }

      break;
    case 13:
      if (*(this + 224) != HGFractured::Effect::rotate)
      {
        v2 = HGFractured::Effect::rotate;
        goto LABEL_38;
      }

      break;
    case 14:
      if (*(this + 224) != HGFractured::Effect::blocks)
      {
        v2 = HGFractured::Effect::blocks;
        goto LABEL_38;
      }

      break;
    case 15:
      if (*(this + 224) != HGFractured::Effect::bars)
      {
        v2 = HGFractured::Effect::bars;
        goto LABEL_38;
      }

      break;
    case 16:
      if (*(this + 224) != HGFractured::Effect::cube)
      {
        v2 = HGFractured::Effect::cube;
        goto LABEL_38;
      }

      break;
    case 17:
      if (*(this + 224) != HGFractured::Effect::test)
      {
        v2 = HGFractured::Effect::test;
LABEL_38:
        *(this + 224) = v2;
        *(this + 120) |= 7u;
      }

      break;
    default:
      return this;
  }

  return this;
}

uint64_t HGFractured::Effect::shatter(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  LODWORD(a3) = *(this + 37);
  if (*&a3 != 0.0)
  {
    *(this + 37) = 0;
    *(this + 30) |= 6u;
  }

  HGFractured::Effect::blast(this, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t HGFractured::Effect::blast(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = this[8];
  if (v9)
  {
    v10 = (this[7] + 36);
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = vdup_n_s32(0xFD43FDu);
    v13 = 0;
    v14 = vdup_n_s32(0x33800000u);
    __asm
    {
      FMOV            V7.2D, #0.125
      FMOV            V16.2D, #1.0
    }

    v21 = vdupq_n_s64(0x3FB999999999999AuLL);
    v22 = 0;
    do
    {
      v23 = v10[-5].f32[1] - *(this + 52);
      v24 = v10[-4].f32[0] - (*(this + 53) * *(this + 33));
      v13 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B084300C39EC3, vcvt_n_s32_f32(v13, 0x18uLL), v12) & 0xFFFFFF00FFFFFFLL)), v14);
      v10[4] = 0;
      v10[5] = 0;
      v22 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x269EC3009E3779, vcvt_n_s32_f32(v22, 0x18uLL), 0x343FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v14);
      v25 = vmulq_f64(vcvtq_f64_f32(vadd_f32(v22, 0xBF000000BF000000)), _Q7);
      v26 = v25.f64[0] + v23;
      v27.f64[1] = *(&_Q16 + 1);
      v27.f64[0] = v24;
      v28 = vcvt_f32_f64(vaddq_f64(v25, v27));
      v10[-3].f32[1] = v26;
      v10[-2] = v28;
      v29 = (v23 * v23) + (v24 * v24);
      v10[2].f32[0] = (vmuls_lane_f32(0.015625, v13, 1) + (sqrtf(v29) * 0.5)) * *(this + 37);
      v10[2].i32[1] = 1065353216;
      v30.i32[0] = *(this + 54);
      v30.f32[1] = -*(this + 55);
      v10[3] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v30), v21));
      v30.f32[0] = vmuls_lane_f32(0.0, v28, 1);
      *v25.f64 = v30.f32[0] - v28.f32[0];
      v30.f32[0] = v26 - v30.f32[0];
      *v27.f64 = (0.0 * v28.f32[0]) - (v26 * 0.0);
      v31 = sqrtf(((*v25.f64 * *v25.f64) + (v30.f32[0] * v30.f32[0])) + (*v27.f64 * *v27.f64));
      *v25.f64 = *v25.f64 / v31;
      v30.f32[0] = v30.f32[0] / v31;
      *v27.f64 = *v27.f64 / v31;
      v10[-1].i32[1] = LODWORD(v25.f64[0]);
      v10->i32[0] = v30.i32[0];
      v10->i32[1] = LODWORD(v27.f64[0]);
      v32 = (vadd_f32(v13, v22).f32[0] * 0.25 + (1.0 - (((*v25.f64 * v26) + (v30.f32[0] * v28.f32[0])) + vmuls_lane_f32(*v27.f64, v28, 1)))) * (((*(this + 10) * *(this + 11)) / (v10[-4].f32[1] * 3.0)) + 0.75);
      v10[1].f32[0] = v32;
      v10[-1].f32[0] = 0.15 / sqrtf(v29 + 0.01);
      v10 = (v10 + v11);
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::crumble(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = this[8];
  if (v9)
  {
    v10 = this[7];
    v11 = 8 * (*(this + 31) - 4);
    if (*(this + 145))
    {
      v12 = (v10 + 36);
      v13 = v11 + 116;
      v14 = 0;
      v15 = 0.0;
      v16 = vdup_n_s32(0x33800000u);
      v17 = vdup_n_s32(0x3E4CCCCDu);
      do
      {
        v18 = v12[-5].f32[1];
        v19 = v12[-4].f32[0];
        v15 = vcvts_n_f32_u32((214013 * vcvts_n_s32_f32(v15, 0x18uLL) + 2531011) & 0xFFFFFF, 0x18uLL);
        *(&v12[-3] + 4) = 0;
        v12[4] = 0;
        v12[5] = 0;
        v12[-2].i32[1] = 1065353216;
        v12[2].f32[0] = *(this + 37) * (((v15 * 0.4) + (fabsf(v18) + (*(this + 33) - ((*(this + 33) * 0.5) - v19)))) / (*(this + 33) + 1.1));
        v12[2].i32[1] = 1065353216;
        v14 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(v14, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v16);
        v20 = vmul_f32(vadd_f32(v14, 0xBF000000BF000000), v17);
        v21 = vmul_f32(v20, v20);
        *v21.i32 = sqrtf(*&v21.i32[1] + (*v21.i32 + 1.0));
        v12[-1].f32[1] = -1.0 / *v21.i32;
        *v12 = vdiv_f32(v20, vdup_lane_s32(v21, 0));
        v12[-1].f32[0] = (*(this + 10) + *(this + 11)) + (*(this + 10) + *(this + 11));
        v12[1].i32[0] = 1082130432;
        v12 = (v12 + v13);
        --v9;
      }

      while (v9);
    }

    else
    {
      v22 = (v10 + 52);
      v23 = v11 + 116;
      v24 = 0.0;
      do
      {
        v25 = *(v22 - 13);
        v26 = *(v22 - 12);
        v24 = vcvts_n_f32_u32((214013 * vcvts_n_s32_f32(v24, 0x18uLL) + 2531011) & 0xFFFFFF, 0x18uLL);
        *(v22 - 9) = 0;
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        *(v22 - 7) = 1.0;
        *v22 = *(this + 37) * (((v24 * 0.4) + (fabsf(v25) + ((*(this + 33) * 0.5) - v26))) / (*(this + 33) + 1.1));
        v22[1] = 1.0;
        *(v22 - 6) = (*(this + 10) + *(this + 11)) + (*(this + 10) + *(this + 11));
        *(v22 - 5) = xmmword_260817A30;
        v22 = (v22 + v23);
        --v9;
      }

      while (v9);
    }
  }

  return 0;
}

uint64_t HGFractured::Effect::swipe(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v10 = this[8];
  if (v10)
  {
    v11 = -0.5;
    if (!*(this + 145))
    {
      v11 = 0.5;
    }

    v12 = this[7] + 40;
    v13 = 8 * (*(this + 31) - 4) + 116;
    v14 = 0;
    v15 = vdup_n_s32(0x33800000u);
    do
    {
      v16 = *(v12 - 40);
      v9.i32[0] = *(v12 - 36);
      v14 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B084300269EC3, vcvt_n_s32_f32(v14, 0x18uLL), 0xFD43FD000343FDLL) & 0xFFFFFF00FFFFFFLL)), v15);
      *(v12 + 36) = 0;
      *(v12 + 28) = 0;
      *(v12 - 24) = 1065353216;
      *v9.i32 = *v9.i32 + v11;
      v17 = *(this + 10) + *(this + 11);
      v18 = sqrtf((v17 * v17) + ((*v9.i32 * *v9.i32) + 1.0));
      *(v12 - 24) = 1.0 / v18;
      *(v12 - 20) = v9.i32[0];
      *(v12 - 20) = *v9.i32 / v18;
      *(v12 - 16) = v17 / v18;
      *(v12 + 12) = (0.05 * v14.f32[0]) + ((v16 + 0.5) * 0.5);
      *(v12 + 16) = 1065353216;
      *(v12 + 24) = 0;
      *v9.i32 = sqrtf(vmuls_lane_f32(v14.f32[1], v14, 1) + 1.0);
      v19 = v14.f32[1] / *v9.i32;
      v9 = vdiv_f32(0x3F80000000000000, vdup_lane_s32(v9, 0));
      *(v12 - 8) = v9;
      *v12 = v19;
      v20 = (*(this + 10) * *(this + 11)) / (*(v12 - 32) * 4.0);
      *(v12 - 12) = v20 + 1.0;
      *(v12 + 4) = v20 + 4.0;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t (*HGFractured::Effect::vortex(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8))(uint64_t this, HGFractured::Effect *a2, float a3, int a4, double a5, __n128 a6, double a7, int32x4_t a8, __n128 a9, __n128 a10, float32x4_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1088421888;
  v10 = this[8];
  if (v10)
  {
    v11 = this[7] + 36;
    v12 = 8 * (*(this + 31) - 4) + 116;
    v13 = 0;
    v14 = vdup_n_s32(0x33800000u);
    v23 = v14;
    v14.i32[0] = 1036831949;
    v22 = vdup_lane_s32(v14, 0).i32[1];
    do
    {
      LODWORD(v9) = *(v11 - 36);
      v15 = *(v11 - 32);
      v24 = v9;
      v25 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B084300269EC3, vcvt_n_s32_f32(v13, 0x18uLL), 0xFD43FD000343FDLL) & 0xFFFFFF00FFFFFFLL)), v23);
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      v16 = (*&v9 * *&v9) + (v15 * v15);
      v17 = sqrtf(v16) * 10.0;
      v18 = atan2f(v15, *&v9);
      if (v18 < 0.0)
      {
        v18 = 6.2832 - v18;
      }

      v19 = fmodf(v25.f32[0] + v18, 6.2832);
      v9 = v24;
      v13 = v25;
      *(v11 + 16) = vmuls_lane_f32(0.05, v25, 1) + (((v17 * 6.2832) + v19) / 62.832);
      *(v11 - 20) = 0x41200000BE4CCCCDLL;
      *(v11 - 12) = -1071644672;
      *(v11 + 20) = 1065353216;
      *(v11 + 28) = 0;
      *v20.i32 = sqrtf(v16 + 0.01);
      *(v11 - 4) = v15 / *v20.i32;
      *v11 = vdiv_f32(__PAIR64__(v22, v24), vdup_lane_s32(v20, 0));
      *v20.i32 = ((*(this + 10) * *(this + 11)) / *(v11 - 28)) + 0.75;
      *(v11 - 8) = v20.i32[0];
      *(v11 + 8) = v20.i32[0];
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return HGFractured::Effect::apply_polar;
}

uint64_t HGFractured::Effect::flip(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  if (*(this + 41) != 4 || (LODWORD(a3) = *(this + 12), *&a3 != 0.0))
  {
    *(this + 41) = 4;
    *(this + 157) = 0;
    *(this + 12) = 0;
    *(this + 30) |= 7u;
  }

  HGFractured::Effect::build(this, -1, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = (*(this + 7) + 68);
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0.0;
    do
    {
      v13 = *(v10 - 17);
      v12 = vcvts_n_f32_u32((214013 * vcvts_n_s32_f32(v12, 0x18uLL) + 2531011) & 0xFFFFFF, 0x18uLL);
      *(v10 - 11) = 0;
      *(v10 - 13) = 0;
      *(v10 - 9) = 0.0;
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 - 4) = 1065353216;
      *(v10 - 6) = 1.0;
      *(v10 - 4) = (v12 * 0.25) + ((v13 + 0.5) * 0.25);
      *(v10 - 3) = 1056964608;
      *(v10 - 1) = 0.0;
      v10 = (v10 + v11);
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t (*HGFractured::Effect::whirl(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8))(uint64_t result, float a2, int a3)
{
  HGFractured::Effect::build(this, 1, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = this[8];
  if (v9)
  {
    v10 = 8 * (*(this + 31) - 4);
    v11 = this[7] + 44;
    v12 = v10 + 116;
    do
    {
      v13 = *(v11 - 40);
      if ((*(v11 - 32) & 4) != 0)
      {
        v14 = -1.0;
      }

      else
      {
        v14 = 1.0;
      }

      v15 = __sincos_stret(*(v11 - 44) * 3.14159265);
      v16 = v15.__sinval * 0.5;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 - 28) = v16;
      *(v11 - 24) = v13;
      v17 = v15.__cosval * (v14 * 0.5);
      *(v11 - 20) = v17;
      *(v11 - 16) = xmmword_260346BD0;
      *v11 = v14;
      *(v11 + 8) = xmmword_2603429C0;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return apply_whirl;
}

uint64_t HGFractured::Effect::shutter(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  *(this + 35) = -1;
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = (*(this + 7) + 80);
    v11 = 8 * (*(this + 31) - 4) + 116;
    if (*(this + 145))
    {
      do
      {
        v12 = *(this + 11) * -0.5;
        *(v10 - 3) = 0;
        *(v10 - 1) = v12;
        *v10 = 0.0;
        *(v10 - 7) = xmmword_2603429C0;
        *(v10 - 4) = xmmword_2603429D0;
        *(v10 - 3) = xmmword_260817A50;
        v10 = (v10 + v11);
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v13 = *(this + 11) * -0.5;
        *(v10 - 3) = 0;
        *(v10 - 1) = v13;
        *v10 = 0.0;
        *(v10 - 7) = xmmword_2603429C0;
        *(v10 - 4) = xmmword_2603429D0;
        *(v10 - 3) = xmmword_260817A40;
        v10 = (v10 + v11);
        --v9;
      }

      while (v9);
    }
  }

  return 0;
}

uint64_t HGFractured::Effect::evaporate(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = *(this + 145);
    v11 = *(this + 7) + 36;
    v12 = 8 * (*(this + 31) - 4) + 116;
    v13 = 0uLL;
    v14 = vdupq_n_s32(0x33800000u);
    do
    {
      v20 = *(v11 - 32);
      v13 = vmulq_f32(vcvtq_f32_u32((*&vmlaq_s32(xmmword_260817A70, vcvtq_n_s32_f32(v13, 0x18uLL), xmmword_260817A60) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), v14);
      v21 = ((v13.f32[0] + -0.5) * 0.5) - *(v11 - 36);
      v22 = (((v13.f32[2] + v13.f32[1]) + -1.0) * 0.25) + v20;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      if ((*(v11 - 24) & 8) != 0)
      {
        v23 = -0.25;
      }

      else
      {
        v23 = 0.25;
      }

      v24 = sqrtf(((v21 * v21) + (v22 * v22)) + 0.0625);
      *(v11 - 20) = v21 / v24;
      *(v11 - 16) = v22 / v24;
      *(v11 - 12) = v23 / v24;
      *(v11 - 8) = 1065353216;
      *(v11 + 20) = 1065353216;
      if (v10)
      {
        v15 = v20 + 0.5;
        v16 = -1.0 - v13.f32[0];
      }

      else
      {
        v15 = 0.5 - v20;
        v16 = v13.f32[0] + 1.0;
      }

      v17 = vmuls_lane_f32(0.5, *v13.f32, 1) + 0.0;
      v18 = vmuls_lane_f32(0.5, v13, 2);
      v19 = sqrtf((v18 * v18) + ((v16 * v16) + (v17 * v17)));
      *(v11 + 16) = ((v15 + vmuls_lane_f32(*(this + 37), v13, 3)) / (*(this + 37) + 1.0)) * 0.4;
      *(v11 - 4) = v16 / v19;
      *v11 = v17 / v19;
      *(v11 + 4) = v18 / v19;
      *(v11 + 8) = (v13.f32[3] + (*(v11 - 28) / (*(this + 10) * *(this + 11)))) * 4.0;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::explode(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1088421888;
  v9 = this[8];
  if (v9)
  {
    v10 = this[7] + 36;
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0uLL;
    v26 = vdupq_n_s32(0x33800000u);
    do
    {
      v21 = *(v10 - 36);
      v22 = *(v10 - 32);
      v23 = vmulq_f32(vcvtq_f32_u32((*&vmlaq_s32(xmmword_260817A70, vcvtq_n_s32_f32(v12, 0x18uLL), xmmword_260817A60) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), v26);
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v24 = ((v23.f32[0] + -0.5) * 0.25) + v21;
      v27 = v23;
      if ((*(v10 - 24) & 8) != 0)
      {
        v24 = v24 * 16.0;
        v13 = (((v23.f32[1] + -0.5) * 0.25) + v22) * 16.0;
        v14 = ((v23.f32[2] + -0.5) * 0.25) + cos(v21 * 3.14159265) * -4.0;
      }

      else
      {
        v13 = ((v23.f32[1] + -0.5) * 0.25) + v22;
        v14 = cos(v21 * 3.14159265) + ((v23.f32[2] + -0.5) * 0.25);
      }

      v15 = v14;
      *(v10 - 20) = v24;
      *(v10 - 16) = v13;
      *(v10 - 12) = v15;
      *(v10 - 8) = 1069547520;
      v12 = v27;
      *(v10 + 16) = vmuls_lane_f32(*(this + 37) * 0.5, v27, 3);
      *(v10 + 20) = 1065353216;
      *(v10 + 28) = 0;
      v16 = v15 * 0.0;
      v17 = v16 - v13;
      v18 = v24 - v16;
      v19 = (v13 * 0.0) - (v24 * 0.0);
      v20 = sqrtf(((v17 * v17) + (v18 * v18)) + (v19 * v19));
      *(v10 - 4) = v17 / v20;
      *v10 = v18 / v20;
      *(v10 + 4) = v19 / v20;
      *(v10 + 8) = ((*(this + 10) * *(this + 11)) * 4.0) / *(v10 - 28);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::pulverize(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1084227584;
  v9 = this[8];
  if (v9)
  {
    v10 = this[7] + 36;
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0;
    v13 = vdup_n_s32(0x33800000u);
    __asm { FMOV            V16.2S, #4.0 }

    v19 = 0;
    do
    {
      v19 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B084300269EC3, vcvt_n_s32_f32(v19, 0x18uLL), 0xFD43FD000343FDLL) & 0xFFFFFF00FFFFFFLL)), v13);
      v12 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(v12, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v13);
      v20 = vadd_f32(v12, 0xBF000000BF000000);
      v21 = vmul_f32(v20, v20);
      v21.f32[0] = sqrtf(((v19.f32[0] + -0.5) * (v19.f32[0] + -0.5)) + vaddv_f32(v21));
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v22 = vmul_f32(vdiv_f32(v20, vdup_lane_s32(v21, 0)), _D16);
      v23 = ((v19.f32[0] + -0.5) / v21.f32[0]) * 4.0;
      *(v10 - 20) = v22;
      *(v10 - 12) = v23;
      *(v10 - 8) = 1065353216;
      v24 = v23 * 0.0;
      v21.f32[0] = v24 - v22.f32[1];
      v25 = v22.f32[0] - v24;
      v22.f32[0] = vmuls_lane_f32(0.0, v22, 1) - (0.0 * v22.f32[0]);
      v26 = *(this + 37) * 0.5;
      *(v10 + 20) = 1065353216;
      *(v10 + 28) = 0;
      v27 = sqrtf(((v21.f32[0] * v21.f32[0]) + (v25 * v25)) + (v22.f32[0] * v22.f32[0]));
      *(v10 - 4) = v21.f32[0] / v27;
      *v10 = v25 / v27;
      *(v10 + 4) = v22.f32[0] / v27;
      v22.f32[0] = *(this + 10) * *(this + 11);
      *(v10 + 16) = vmuls_lane_f32(v26, v19, 1);
      *(v10 + 8) = (v22.f32[0] * 4.0) / *(v10 - 28);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t (*HGFractured::Effect::twirl(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8))(uint64_t result, float a2, int a3)
{
  HGFractured::Effect::build(this, 1, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = this[8];
  if (v9)
  {
    v10 = this[7] + 44;
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0.0;
    do
    {
      v12 = vcvts_n_f32_u32((12268885 * vcvts_n_s32_f32(v12, 0x18uLL) + 10368889) & 0xFFFFFF, 0x18uLL);
      if ((*(v10 - 32) & 8) != 0)
      {
        v13 = -1.0;
      }

      else
      {
        v13 = 1.0;
      }

      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 - 28) = *(v10 - 44);
      *(v10 - 20) = v12 * v13;
      *(v10 - 16) = xmmword_260346BD0;
      *v10 = v13;
      *(v10 + 8) = xmmword_2603429C0;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return apply_twirl;
}

uint64_t HGFractured::Effect::spread(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1088421888;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = *(this + 7) + 52;
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0;
    v13 = vdup_n_s32(0x33800000u);
    v14 = vdupq_n_s64(0x3FB999999999999AuLL);
    v15 = 0;
    do
    {
      while (1)
      {
        v12 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B084300269EC3, vcvt_n_s32_f32(v12, 0x18uLL), 0xFD43FD000343FDLL) & 0xFFFFFF00FFFFFFLL)), v13);
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        v15 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(v15, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v13);
        *(v10 - 36) = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(vadd_f32(v15, 0xBF000000BF000000)), v14), vcvtq_f64_f32(*(v10 - 52))));
        *(v10 - 28) = 0;
        if (vadd_f32(v12, vadd_f32(vdup_lane_s32(v15, 1), v15)).f32[0] <= 1.5)
        {
          break;
        }

        v16 = vmuls_lane_f32(*(this + 37), v12, 1);
        *(v10 - 28) = -v12.f32[0];
        *(v10 - 24) = (v16 + 1.0) * 4.0;
        *v10 = xmmword_260342760;
        *(v10 - 20) = xmmword_2603429B0;
        v10 += v11;
        if (!--v9)
        {
          return 0;
        }
      }

      v17 = vmuls_lane_f32(*(this + 37), v12, 1);
      *(v10 - 28) = v12.i32[0];
      *(v10 - 24) = v17 + 1.0;
      *v10 = xmmword_260342760;
      *(v10 - 20) = xmmword_2603429B0;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::rotate(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 1, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = this[8];
  if (v9)
  {
    v10 = -1.0;
    if (*(this + 145))
    {
      v10 = 1.0;
    }

    v11 = this[7] + 36;
    v12 = 8 * (*(this + 31) - 4) + 116;
    v13 = 0.0;
    do
    {
      v14 = *(v11 - 32);
      v13 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v13, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 - 20) = xmmword_2603429D0;
      *(v11 - 4) = 0;
      *v11 = v10;
      *(v11 + 4) = 0x3F80000000000000;
      v15 = ((v14 / *(this + 33)) + 0.5) * 0.5;
      *(v11 + 16) = v15 + (*(this + 37) * ((v13 * 0.5) - v15));
      *(v11 + 20) = 1056964608;
      *(v11 + 28) = 0;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::blocks(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1088421888;
  v9 = this[8];
  if (v9)
  {
    v10 = this[7] + 52;
    v11 = 8 * (*(this + 31) - 4) + 116;
    v12 = 0;
    v13 = vdup_n_s32(0x33800000u);
    do
    {
      v12 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v12, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v13);
      *(v10 - 36) = 0;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 - 28) = 1065353216;
      *(v10 - 24) = v12.f32[0] + 2.0;
      *(v10 - 20) = xmmword_2603429D0;
      *v10 = vmuls_lane_f32(*(this + 37) * 0.5, v12, 1);
      *(v10 + 4) = 1069547520;
      *(v10 + 12) = 0;
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::bars(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  *(this + 35) = -1;
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = 1.0;
    if (*(this + 145))
    {
      v10 = -1.0;
    }

    v11 = *(this + 7) + 44;
    v12 = 8 * (*(this + 31) - 4) + 116;
    v13 = 0.0;
    do
    {
      v13 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v13, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v14 = *(v11 - 44);
      v15 = (*(this + 33) - *(this + 34)) * -0.5;
      *(v11 + 24) = 0;
      *(v11 + 32) = v15;
      *(v11 + 36) = 0;
      *(v11 - 28) = xmmword_2603429D0;
      *(v11 + 8) = ((v14 + 0.5) * 0.5) + (((v13 * 0.5) - ((v14 + 0.5) * 0.5)) * *(this + 37));
      *(v11 + 12) = 1056964608;
      *(v11 + 20) = 0;
      *(v11 - 12) = v10;
      *(v11 - 8) = 0;
      *v11 = 1056964608;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t HGFractured::Effect::cube(HGFractured::Effect *this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8)
{
  *(this + 35) = -1;
  HGFractured::Effect::build(this, 0, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 0x40000000;
  v9 = *(this + 8);
  if (v9)
  {
    v10 = (*(this + 7) + 80);
    v11 = 8 * (*(this + 31) - 4) + 116;
    if (*(this + 145))
    {
      do
      {
        v12 = (1.0 - *(this + 34)) * -0.5;
        *(v10 - 3) = 0;
        *(v10 - 1) = v12;
        *v10 = 0.0;
        *(v10 - 7) = xmmword_2603429C0;
        *(v10 - 4) = xmmword_2603429D0;
        *(v10 - 3) = xmmword_260817A90;
        v10 = (v10 + v11);
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v13 = (1.0 - *(this + 34)) * -0.5;
        *(v10 - 3) = 0;
        *(v10 - 1) = v13;
        *v10 = 0.0;
        *(v10 - 7) = xmmword_2603429C0;
        *(v10 - 4) = xmmword_2603429D0;
        *(v10 - 3) = xmmword_260817A80;
        v10 = (v10 + v11);
        --v9;
      }

      while (v9);
    }
  }

  return 0;
}

uint64_t (*HGFractured::Effect::test(void **this, HGFractured::Effect *a2, double a3, double a4, double a5, double a6, double a7, int32x2_t a8))(uint64_t result, float a2, int a3)
{
  HGFractured::Effect::build(this, 1, 0, a3, a4, a5, a6, a7, a8);
  *(this + 38) = 1084227584;
  v9 = this[8];
  if (v9)
  {
    v10 = -1.0;
    if (*(this + 145))
    {
      v10 = 1.0;
    }

    v11 = this[7] + 36;
    v12 = 8 * (*(this + 31) - 4) + 116;
    v13 = 0.0;
    do
    {
      v14 = *(v11 - 32);
      v13 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v13, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 - 20) = xmmword_2603429D0;
      *(v11 - 4) = 0;
      *v11 = v10;
      *(v11 + 4) = 0x3F80000000000000;
      v15 = ((v14 / *(this + 33)) + 0.5) * 0.5;
      *(v11 + 16) = v15 + (*(this + 37) * ((v13 * 0.5) - v15));
      *(v11 + 20) = 1056964608;
      *(v11 + 28) = 0;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return apply_test;
}

HGSynchronizable *HGFractured::Effect::SetState(uint64_t a1, int a2)
{
  v4 = *(a1 + 248);
  HGSynchronizable::Lock(v4);
  *(a1 + 240) = a2;
  return HGSynchronizable::Unlock(v4);
}

uint64_t HGFractured::Effect::GetState(HGFractured::Effect *this)
{
  v2 = *(this + 31);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 60);
  HGSynchronizable::Unlock(v2);
  return v3;
}

uint64_t HGFractured::Effect::init(HGFractured::Effect *this, double a2, double a3, double a4, double a5, double a6, int32x2_t a7)
{
  v7 = *(this + 30);
  if (v7)
  {
    v9 = *(this + 41);
    if ((v9 & 0x80000000) != 0)
    {
      switch(v9)
      {
        case 0xFFFFFFFD:
          HGFractured::Effect::gen_brick(this, *(this + 8), *(this + 9), *(this + 33), *(this + 12));
LABEL_27:
          v22 = 4;
LABEL_28:
          *(this + 31) = v22;
          break;
        case 0xFFFFFFFE:
          v27 = *(this + 12);
          v28 = *(this + 8);
          v29 = *(this + 9);
          v30 = *(this + 33);
          if (v27 == 0.0)
          {
            HGFractured::Effect::gen_glass(this, v28, v29, v30);
          }

          else
          {
            HGFractured::Effect::gen_glass(this, v28, v29, v30, v27);
          }

          goto LABEL_27;
        case 0xFFFFFFFF:
          v14 = *(this + 12);
          v15 = *(this + 8);
          v16 = *(this + 9);
          v17 = *(this + 33);
          if (v14 == 0.0)
          {
            HGFractured::Effect::gen_glass_2(this, v15, v16, v17);
          }

          else
          {
            HGFractured::Effect::gen_glass_2(this, v15, v16, v17, v14, a4, a5, a6, a7);
          }

          goto LABEL_27;
      }
    }

    else
    {
      if (v9 < 2)
      {
        v18 = *(this + 12);
        v19 = *(this + 8);
        v20 = *(this + 9);
        v21 = *(this + 33);
        if (v18 == 0.0)
        {
          HGFractured::Effect::gen_point(this, v19, v20, v21);
        }

        else
        {
          HGFractured::Effect::gen_point(this, v19, v20, v21, v18);
        }

        v22 = 1;
        goto LABEL_28;
      }

      if (v9 == 3)
      {
        v23 = *(this + 12);
        v24 = *(this + 8);
        v25 = *(this + 9);
        v26 = *(this + 33);
        if (v23 == 0.0)
        {
          HGFractured::Effect::gen_tri(this, v24, v25, v26);
        }

        else
        {
          HGFractured::Effect::gen_tri(this, v24, v25, v26, v23);
        }

        v22 = 3;
        goto LABEL_28;
      }

      if (v9 == 4)
      {
        v10 = *(this + 12);
        v11 = *(this + 8);
        v12 = *(this + 9);
        v13 = *(this + 33);
        if (v10 == 0.0)
        {
          HGFractured::Effect::gen_quad(this, v11, v12, v13);
        }

        else
        {
          HGFractured::Effect::gen_quad(this, v11, v12, v13, v10);
        }

        goto LABEL_27;
      }
    }

    *(this + 30) &= ~1u;
  }

  return v7 & 1;
}

void *HGFractured::Effect::gen_point(void *this, int a2, int a3, float32_t a4, float a5)
{
  v7 = this;
  v8 = a3 * a2;
  v9 = 92 * v8;
  if (this[2] < (92 * v8))
  {
    v10 = this[7];
    v7[2] = v9;
    v27 = a5;
    v28 = a4;
    this = malloc_type_realloc(v10, v9, 0x1000040DB6AEB77uLL);
    a5 = v27;
    a4 = v28;
    v7[7] = this;
  }

  v7[8] = v8;
  if (a3 >= 1 && a2 >= 1)
  {
    v11 = 0;
    __asm { FMOV            V3.2S, #1.0 }

    _D3.f32[1] = a4;
    v17 = vdiv_f32(_D3, vcvt_f32_s32(__PAIR64__(a3, a2)));
    v18 = vmuls_lane_f32(v17.f32[0], v17, 1);
    v19 = vmul_n_f32(v17, a5);
    v20 = v7[7];
    v21 = 0;
    v22 = 0.0;
    v23 = vdup_n_s32(0x33800000u);
    do
    {
      v24 = 0;
      do
      {
        v22 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v22, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v25.f32[0] = (v17.f32[0] * (v24 + 0.5)) + -0.5;
        v21 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(v21, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v23);
        v25.f32[1] = (v17.f32[1] * (v11 + 0.5)) - (a4 * 0.5);
        v26 = vadd_f32(v25, vmul_f32(v19, vadd_f32(v21, 0xBF000000BF000000)));
        *v20 = v26;
        *(v20 + 84) = v26;
        *(v20 + 8) = v18;
        *(v20 + 12) = v24 & 1 | (2 * (v11 & 1)) & 0xFB | (4 * ((v24 ^ v11) & 1)) | (8 * (v22 < 0.5));
        v20 += 92;
        ++v24;
      }

      while (a2 != v24);
      ++v11;
    }

    while (v11 != a3);
  }

  return this;
}

void *HGFractured::Effect::gen_point(void *this, int a2, int a3, float a4)
{
  v7 = this;
  v8 = a3 * a2;
  v9 = 92 * v8;
  if (this[2] < (92 * v8))
  {
    v10 = this[7];
    v7[2] = v9;
    this = malloc_type_realloc(v10, v9, 0x1000040DB6AEB77uLL);
    v7[7] = this;
  }

  v7[8] = v8;
  if (a3 >= 1 && a2 >= 1)
  {
    v11 = 0;
    v12 = 1.0 / a2;
    v13 = a4 / a3;
    v14 = v7[7];
    v15 = 0.0;
    do
    {
      v16 = 0;
      do
      {
        v15 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v15, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        *v14 = (v12 * (v16 + 0.5)) + -0.5;
        *(v14 + 4) = (v13 * (v11 + 0.5)) - (a4 * 0.5);
        *(v14 + 84) = *v14;
        *(v14 + 8) = v12 * v13;
        *(v14 + 12) = v16 & 1 | (2 * (v11 & 1)) & 0xFB | (4 * ((v16 ^ v11) & 1)) | (8 * (v15 < 0.5));
        v14 += 92;
        ++v16;
      }

      while (a2 != v16);
      ++v11;
    }

    while (v11 != a3);
  }

  return this;
}

float32x2_t *HGFractured::Effect::gen_tri(HGFractured::Effect *this, int a2, int a3, float32_t a4, float a5)
{
  v8 = a2 * a3;
  v9 = 2 * v8;
  v10 = 216 * v8;
  v11 = *(this + 2);
  result = *(this + 7);
  if (v11 < v10)
  {
    *(this + 2) = v10;
    v133 = a4;
    v134 = a5;
    result = malloc_type_realloc(result, v10, 0x1000040DB6AEB77uLL);
    a4 = v133;
    a5 = v134;
    *(this + 7) = result;
  }

  *(this + 8) = v9;
  __asm { FMOV            V2.2S, #1.0 }

  _D2.f32[0] = a4;
  v18 = vdiv_f32(_D2, vcvt_f32_s32(__PAIR64__(a2, a3)));
  v19 = a4 * 0.5;
  v20 = vmul_n_f32(v18, a5);
  if (a3 >= 2)
  {
    v21 = -v19;
    v22 = -0.5;
    v23 = v18.f32[1] + -0.5;
    v24 = v18.f32[0] - v19;
    v25 = (v18.f32[0] - v19) + (0.26414 * v20.f32[0]);
    v26 = a2 - 1;
    v27 = v19 - v19;
    v28.i32[1] = -1090519040;
    if (a2 < 2)
    {
      v46 = 0;
      *v28.i32 = (v18.f32[0] - v19) + (0.26414 * v20.f32[0]);
      v47 = 0x3D95DBD03CB5F4C0;
      v45 = 0.35764;
      v37 = -0.5;
      v34 = result;
      v40 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0x3E2C210C3F1E3779;
      v31 = 0x3E1A7B0C3F439EC3;
      v32 = vdup_n_s32(0x33800000u);
      v33 = vdup_n_s32(0x3EAAAAABu);
      v34 = result;
      v35 = -0.5;
      v36 = v18.f32[1] + -0.5;
      v37 = -0.5;
      do
      {
        v38 = v37;
        v30 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v30, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v32);
        v34[10].f32[1] = v35;
        v34[11].f32[0] = v21;
        v34[12].f32[0] = v21;
        v39 = v36 + (v20.f32[1] * (v30.f32[0] + -0.5));
        v31 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x269EC300C39EC3, vcvt_n_s32_f32(v31, 0x18uLL), 0x343FD00FD43FDLL) & 0xFFFFFF00FFFFFFLL)), v32);
        v40 = vadd_f32(__PAIR64__(LODWORD(v36), LODWORD(v24)), vmul_f32(v20, vadd_f32(v31, 0xBF000000BF000000)));
        v34[11].i32[1] = v40.i32[1];
        v34[12].f32[1] = v39;
        v41.f32[0] = v35 + *&v40.i32[1];
        v41.f32[1] = -v19 - v19;
        v42 = vdup_lane_s32(v40, 0);
        v34[13].i32[0] = v40.i32[0];
        v42.f32[0] = v39;
        *v34 = vmul_f32(vadd_f32(v41, v42), v33);
        v34[1].f32[0] = vabds_f32((*&v40.i32[1] - v35) * (*v40.i32 + v19), v27 * (v39 - v35)) * 0.5;
        v34[1].i32[1] = v29 & 1 | (8 * (v30.f32[1] < 0.5));
        v43 = *(v34 + 100);
        v34[24] = v43;
        v37 = v43.f32[0];
        v34[25].f32[0] = v38;
        v34[25].f32[1] = v25;
        v34[26].f32[0] = v35;
        v34[26].f32[1] = v21;
        v44.f32[0] = (v25 + v43.f32[1]) - v19;
        v34[13].f32[1] = (v35 + (v38 + v43.f32[0])) * 0.33333;
        v44.i32[1] = vabds_f32((v38 - v43.f32[0]) * (v21 - v43.f32[1]), (v25 - v43.f32[1]) * (v35 - v43.f32[0]));
        v34[14] = vmul_f32(v44, 0x3F0000003EAAAAABLL);
        v34[15].i32[0] = v29 & 1 | (8 * (v30.f32[1] >= 0.5)) | 4;
        v36 = (v18.f32[1] * (v29 + 2)) + -0.5;
        v34 += 27;
        ++v29;
        v35 = *&v40.i32[1];
        v25 = *v40.i32;
      }

      while (v26 != v29);
      v45 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v31.f32[0], 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
      v46 = v26 & 1;
      v47 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v30, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), vdup_n_s32(0x33800000u));
      v22 = -0.5;
    }

    v68 = v20.f32[0] * (v45 + v22);
    v34[10].i32[1] = v40.i32[1];
    v34[11].f32[0] = v21;
    v34[11].i32[1] = 1056964608;
    v34[12].f32[0] = v21;
    v34[12].i32[1] = 1056964608;
    v34[13].f32[0] = v24 + v68;
    v69.f32[0] = (-v19 - v19) + (v24 + v68);
    v34->f32[0] = ((*&v40.i32[1] + 0.5) + 0.5) * 0.33333;
    v69.i32[1] = vabds_f32((0.5 - *&v40.i32[1]) * ((v24 + v68) + v19), v27 * (0.5 - *&v40.i32[1]));
    *(v34 + 4) = vmul_f32(v69, 0x3F0000003EAAAAABLL);
    v34[1].i32[1] = v46 | (8 * (v47.f32[1] < 0.5));
    v70 = *(v34 + 100);
    v34[24] = v70;
    v34[25].f32[0] = v37;
    *(v34 + 204) = v40;
    v34[26].f32[1] = v21;
    v71.f32[0] = (*v40.i32 + v70.f32[1]) - v19;
    v34[13].f32[1] = (*&v40.i32[1] + (v37 + v70.f32[0])) * 0.33333;
    v71.i32[1] = vabds_f32((v37 - v70.f32[0]) * (v21 - v70.f32[1]), (*v40.i32 - v70.f32[1]) * (*&v40.i32[1] - v70.f32[0]));
    v34[14] = vmul_f32(v71, 0x3F0000003EAAAAABLL);
    v34[15].i32[0] = v46 | (8 * (v47.f32[1] >= 0.5)) | 4;
    v72 = v34 + 27;
    if (a3 == 2)
    {
      v73 = 2;
      if (a2 < 2)
      {
LABEL_15:
        v74 = 0;
        v75 = v47.f32[1];
        v20.i32[0] = -0.5;
LABEL_38:
        v66 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v75, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v128 = result[25];
        *(v72 + 84) = v128;
        v129 = result[24];
        *(v72 + 92) = v129;
        v72[12].i32[1] = 1056964608;
        v72[13].f32[0] = v19;
        v72[26] = v128;
        v130 = v128;
        v131.f32[0] = (v128.f32[1] + v129.f32[1]) + v19;
        v72->f32[0] = ((v128.f32[0] + v129.f32[0]) + 0.5) * 0.33333;
        v131.i32[1] = vabds_f32((v129.f32[0] - v128.f32[0]) * (v19 - v128.f32[1]), (v129.f32[1] - v128.f32[1]) * (0.5 - v128.f32[0]));
        *(v72 + 4) = vmul_f32(v131, 0x3F0000003EAAAAABLL);
        v67 = v74 | v73;
        v72[1].i32[1] = v74 | v73 | (8 * (v66 < 0.5));
        v132 = *(v72 + 100);
        v72[24] = v132;
        v72[25].i32[0] = v20.i32[0];
        v72[25].f32[1] = v19;
        v72[13].f32[1] = ((v20.f32[0] + v132.f32[0]) + v130.f32[0]) * 0.33333;
        v72[14].f32[0] = ((v19 + v132.f32[1]) + v130.f32[1]) * 0.33333;
        v80 = ((v20.f32[0] - v132.f32[0]) * (v130.f32[1] - v132.f32[1])) - ((v19 - v132.f32[1]) * (v130.f32[0] - v132.f32[0]));
        goto LABEL_39;
      }
    }

    else
    {
      if (a3 <= 3)
      {
        v81 = 3;
      }

      else
      {
        v81 = a3;
      }

      v82 = v81 - 1;
      v83 = 1;
      do
      {
        v93 = (v18.f32[0] * (v83 + 1.0)) - v19;
        v94 = v68 + v93;
        v95 = 2 * (v83 & 1);
        v96 = vdup_n_s32(0x33800000u);
        if (a2 < 2)
        {
          v84 = 0;
          v85 = -0.5;
        }

        else
        {
          v97 = 0;
          v98 = 0;
          v85 = -0.5;
          v99 = v18.f32[1] + -0.5;
          do
          {
            v100 = v85;
            v45 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v45, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
            v47 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v47, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v96);
            v101 = v94;
            v102 = &v72[v97];
            v103 = result[v97 + 25];
            *(v102 + 84) = v103;
            v104 = result[v97 + 24];
            v105 = v99 + (v20.f32[1] * (v47.f32[0] + -0.5));
            v94 = v93 + (v20.f32[0] * (v45 + -0.5));
            *(v102 + 92) = v104;
            v102[26] = v103;
            v106 = v103.f32[1] - v94;
            if (((v101 - v94) * (v103.f32[0] - v105)) >= ((v100 - v105) * (v103.f32[1] - v94)))
            {
              v94 = v101;
            }

            v107 = v104.f32[0] - v105;
            if (((v103.f32[0] - v105) * (v104.f32[1] - v94)) <= (v106 * (v104.f32[0] - v105)))
            {
              v105 = v104.f32[0];
            }

            if (((v104.f32[1] - v94) * (v100 - v105)) <= (v107 * (v101 - v94)))
            {
              v105 = v104.f32[0];
            }

            v102[12].f32[1] = v105;
            v102[13].f32[0] = v94;
            v108 = ((v103.f32[0] + v104.f32[0]) + v105) * 0.33333;
            v109 = (v104.f32[0] - v103.f32[0]) * (v94 - v103.f32[1]);
            v104.i32[0] = v98 & 1 | v95;
            v102->f32[0] = v108;
            v102[1].i32[1] = v104.i32[0] | (8 * (v47.f32[1] < 0.5));
            v110 = *(v102 + 100);
            v102[24] = v110;
            v102[25].f32[0] = v100;
            v102[25].f32[1] = v101;
            v111 = vabds_f32(v109, (v104.f32[1] - v103.f32[1]) * (v105 - v103.f32[0]));
            v85 = v110.f32[0];
            v112.f32[1] = v111;
            v113.f32[0] = (v101 + v110.f32[1]) + v103.f32[1];
            v102[13].f32[1] = ((v100 + v110.f32[0]) + v103.f32[0]) * 0.33333;
            v112.f32[0] = (v103.f32[1] + v104.f32[1]) + v94;
            *(v102 + 4) = vmul_f32(v112, 0x3F0000003EAAAAABLL);
            v113.i32[1] = vabds_f32((v100 - v110.f32[0]) * (v103.f32[1] - v110.f32[1]), (v101 - v110.f32[1]) * (v103.f32[0] - v110.f32[0]));
            v102[14] = vmul_f32(v113, 0x3F0000003EAAAAABLL);
            v102[15].i32[0] = v104.i32[0] | (8 * (v47.f32[1] >= 0.5)) | 4;
            v99 = (v18.f32[1] * (v98 + 2)) + -0.5;
            ++v98;
            v97 += 27;
          }

          while (v26 != v98);
          result = (result + v97 * 8);
          v72 = (v72 + v97 * 8);
          v84 = v26 & 1;
        }

        v45 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v45, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
        v68 = v20.f32[0] * (v45 + -0.5);
        v86 = result[25];
        *(v72 + 84) = v86;
        v87 = result[24];
        *(v72 + 92) = v87;
        v88 = v93 + v68;
        v72[12].i32[1] = 1056964608;
        v72[13].f32[0] = v88;
        v72[26] = v86;
        v89.f32[0] = (v86.f32[1] + v87.f32[1]) + v88;
        v72->f32[0] = ((v86.f32[0] + v87.f32[0]) + 0.5) * 0.33333;
        v89.i32[1] = vabds_f32((v87.f32[0] - v86.f32[0]) * (v88 - v86.f32[1]), (v87.f32[1] - v86.f32[1]) * (0.5 - v86.f32[0]));
        *(v72 + 4) = vmul_f32(v89, 0x3F0000003EAAAAABLL);
        v90 = v84 | v95;
        v91 = *(v72 + 100);
        v72[24] = v91;
        v72[25].f32[0] = v85;
        v72[25].f32[1] = v94;
        v92.f32[0] = (v94 + v91.f32[1]) + v86.f32[1];
        v72[13].f32[1] = ((v85 + v91.f32[0]) + v86.f32[0]) * 0.33333;
        v92.i32[1] = vabds_f32((v85 - v91.f32[0]) * (v86.f32[1] - v91.f32[1]), (v94 - v91.f32[1]) * (v86.f32[0] - v91.f32[0]));
        v72[14] = vmul_f32(v92, 0x3F0000003EAAAAABLL);
        result += 27;
        ++v83;
        v47 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v47, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v96);
        v72[1].i32[1] = v90 | (8 * (v47.f32[1] < 0.5));
        v72[15].i32[0] = v90 | (8 * (v47.f32[1] >= 0.5)) | 4;
        v72 += 27;
      }

      while (v83 != v82);
      v73 = 2 * (v82 & 1);
      if (a2 < 2)
      {
        goto LABEL_15;
      }
    }

    v114 = 0;
    v115 = 0;
    v116 = vdup_n_s32(0x33800000u);
    v20.i32[0] = -0.5;
    do
    {
      v117 = v20.f32[0];
      v118 = &v72[v114];
      v47 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v47, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v116);
      v119 = result[v114 + 25];
      *(v118 + 84) = v119;
      v120 = result[v114 + 24];
      v121 = v23 + (v20.f32[1] * (v47.f32[0] + -0.5));
      v118[12].f32[1] = v121;
      v118[13].f32[0] = v19;
      *(v118 + 92) = v120;
      v118[26] = v119;
      v122 = (v120.f32[0] - v119.f32[0]) * (v19 - v119.f32[1]);
      v123 = (v121 + (v119.f32[0] + v120.f32[0])) * 0.33333;
      v75 = v47.f32[1];
      v120.i32[0] = v115 & 1 | v73;
      v118->f32[0] = v123;
      v118[1].i32[1] = v120.i32[0] | (8 * (v47.f32[1] < 0.5));
      v124 = *(&v72[v114 + 12] + 4);
      v118[24] = v124;
      v118[25].f32[0] = v117;
      v118[25].f32[1] = v19;
      v125 = vabds_f32(v122, (v120.f32[1] - v119.f32[1]) * (v121 - v119.f32[0]));
      v20.i32[0] = v124.i32[0];
      v126.f32[1] = v125;
      v118[13].f32[1] = ((v117 + v124.f32[0]) + v119.f32[0]) * 0.33333;
      v127.f32[0] = (v19 + v124.f32[1]) + v119.f32[1];
      v126.f32[0] = (v119.f32[1] + v120.f32[1]) + v19;
      *(v118 + 4) = vmul_f32(v126, 0x3F0000003EAAAAABLL);
      v127.i32[1] = vabds_f32((v117 - v124.f32[0]) * (v119.f32[1] - v124.f32[1]), (v19 - v124.f32[1]) * (v119.f32[0] - v124.f32[0]));
      v118[14] = vmul_f32(v127, 0x3F0000003EAAAAABLL);
      v118[15].i32[0] = v120.i32[0] | (8 * (v47.f32[1] >= 0.5)) | 4;
      v23 = (v18.f32[1] * (v115 + 2)) + -0.5;
      ++v115;
      v114 += 27;
    }

    while (v26 != v115);
    v74 = v26 & 1;
    result = (result + v114 * 8);
    v72 = (v72 + v114 * 8);
    goto LABEL_38;
  }

  v48 = -v19;
  v49 = ((-v19 - v19) + v19) * 0.33333;
  v50 = v19 - v19;
  v51 = v19 + v19;
  if (a2 < 2)
  {
    v67 = 0;
    v18.i32[0] = -0.5;
    v66 = 0.16809;
    v57 = -0.5;
  }

  else
  {
    v52 = 0;
    v53 = a2 - 1;
    v54 = vdup_n_s32(0x33800000u);
    v55 = 0;
    v56 = 0.0;
    v57 = -0.5;
    v58 = v18.f32[1];
    v18.i32[0] = -0.5;
    do
    {
      v59 = v18.f32[0];
      v18.f32[0] = v57;
      v60 = v58 + -0.5;
      v55 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x269EC3009E3779, vcvt_n_s32_f32(v55, 0x18uLL), 0x343FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v54);
      v56 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v56, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      result[10].f32[1] = v57;
      result[11].f32[0] = v48;
      v57 = v60 + (v20.f32[1] * (v55.f32[1] + -0.5));
      result[11].f32[1] = v57;
      result[12].f32[0] = v48;
      v61 = v60 + (v20.f32[1] * (v55.f32[0] + -0.5));
      result[12].f32[1] = v61;
      result[13].f32[0] = v19;
      result->f32[0] = ((v18.f32[0] + v57) + v61) * 0.33333;
      result->f32[1] = v49;
      result[1].f32[0] = vabds_f32((v57 - v18.f32[0]) * v51, v50 * (v61 - v18.f32[0])) * 0.5;
      result[1].i32[1] = v52 & 1 | (8 * (v56 < 0.5));
      v62 = *(result + 100);
      result[24] = v62;
      result[25].f32[0] = v59;
      result[25].f32[1] = v19;
      v63 = HIDWORD(*&v62);
      v18.i32[0] = v62.i32[0];
      v64 = *(result + 84);
      result[26] = v64;
      v65.f32[0] = (v19 + *&v63) + v64.f32[1];
      result[13].f32[1] = ((v59 + v18.f32[0]) + v64.f32[0]) * 0.33333;
      v65.i32[1] = vabds_f32((v59 - v18.f32[0]) * (v64.f32[1] - *&v63), (v19 - *&v63) * (v64.f32[0] - v18.f32[0]));
      result[14] = vmul_f32(v65, 0x3F0000003EAAAAABLL);
      result[15].i32[0] = v52 & 1 | (8 * (v56 >= 0.5)) | 4;
      v58 = v18.f32[1] * (v52 + 2);
      result += 27;
      ++v52;
    }

    while (v53 != v52);
    v66 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v56, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
    v67 = v53 & 1;
  }

  result[10].f32[1] = v57;
  result[11].f32[0] = v48;
  result[11].i32[1] = 1056964608;
  result[12].f32[0] = v48;
  result[12].i32[1] = 1056964608;
  result[13].f32[0] = v19;
  result->f32[0] = ((v57 + 0.5) + 0.5) * 0.33333;
  result->f32[1] = v49;
  result[1].f32[0] = vabds_f32((0.5 - v57) * v51, v50 * (0.5 - v57)) * 0.5;
  result[1].i32[1] = v67 | (8 * (v66 < 0.5));
  v76 = *(result + 100);
  result[24] = v76;
  result[25].i32[0] = v18.i32[0];
  result[25].f32[1] = v19;
  v77 = HIDWORD(*&v76);
  v78 = v76.f32[0];
  v79 = *(result + 84);
  result[26] = v79;
  result[13].f32[1] = ((v18.f32[0] + v78) + v79.f32[0]) * 0.33333;
  result[14].f32[0] = ((v19 + *&v77) + v79.f32[1]) * 0.33333;
  v80 = ((v18.f32[0] - v78) * (v79.f32[1] - *&v77)) - ((v19 - *&v77) * (v79.f32[0] - v78));
  v72 = result;
LABEL_39:
  v72[14].f32[1] = fabsf(v80) * 0.5;
  v72[15].i32[0] = v67 | (8 * (v66 >= 0.5)) | 4;
  return result;
}

float *HGFractured::Effect::gen_tri(HGFractured::Effect *this, int a2, int a3, float a4)
{
  v8 = a2 * a3;
  v9 = 2 * v8;
  v10 = 216 * v8;
  v11 = *(this + 2);
  result = *(this + 7);
  if (v11 < v10)
  {
    *(this + 2) = v10;
    result = malloc_type_realloc(result, v10, 0x1000040DB6AEB77uLL);
    *(this + 7) = result;
  }

  *(this + 8) = v9;
  v13 = 1.0 / a2;
  v14 = a4 / a3;
  v15 = a4 * 0.5;
  v16 = (v13 * 0.5) * v14;
  v17 = -(a4 * 0.5);
  if (a3 >= 2)
  {
    v18 = -0.5;
    v19 = v13 + -0.5;
    v20 = v14 - v15;
    v21 = a2 - 1;
    v22 = ((v17 - v15) + (v14 - v15)) * 0.33333;
    if (a2 < 2)
    {
      v32 = 0;
      v31 = 0.16809;
      v29 = -0.5;
      v25 = result;
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
      v25 = result;
      v26 = -0.5;
      v27 = v13 + -0.5;
      do
      {
        v28 = v18;
        v29 = v27;
        v24 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v24, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v25[25] = v27;
        v25[26] = v20;
        *(v25 + 3) = v23 & 1 | (8 * (v24 < 0.5));
        v30 = *(v25 + 25);
        *(v25 + 24) = v30;
        v18 = *&v30;
        v25[21] = v26;
        v25[22] = v17;
        v25[23] = v27;
        v25[24] = v17;
        *v25 = (v27 + (v27 + v26)) * 0.33333;
        v25[1] = v22;
        v25[2] = v16;
        v25[50] = v28;
        v25[51] = v20;
        v25[52] = v26;
        v25[53] = v17;
        v25[27] = (v26 + (v28 + *&v30)) * 0.33333;
        v25[28] = ((v20 + *(&v30 + 1)) - v15) * 0.33333;
        v25[29] = v16;
        *(v25 + 30) = v23 & 1 | (8 * (v24 >= 0.5)) | 4;
        v27 = (v13 * (v23 + 2)) + -0.5;
        v25 += 54;
        ++v23;
        v26 = v29;
      }

      while (v21 != v23);
      v31 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v24, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v32 = v21 & 1;
    }

    v25[21] = v29;
    v25[22] = v17;
    v25[23] = 0.5;
    v25[24] = v17;
    v25[25] = 0.5;
    v25[26] = v20;
    *v25 = ((v29 + 0.5) + 0.5) * 0.33333;
    v25[1] = v22;
    v25[2] = v16;
    *(v25 + 3) = v32 | (8 * (v31 < 0.5));
    v47 = *(v25 + 25);
    *(v25 + 24) = v47;
    v25[50] = v18;
    v25[51] = v20;
    v25[52] = v29;
    v25[53] = v17;
    v25[27] = (v29 + (v18 + *&v47)) * 0.33333;
    v25[28] = ((v20 + *(&v47 + 1)) - v15) * 0.33333;
    v25[29] = v16;
    *(v25 + 30) = v32 | (8 * (v31 >= 0.5)) | 4;
    v48 = v25 + 54;
    if (a3 == 2)
    {
      v49 = 2;
      if (a2 < 2)
      {
LABEL_15:
        v50 = 0;
        v51 = -0.5;
LABEL_32:
        v45 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v31, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v85 = *(result + 25);
        *(v48 + 21) = v85;
        v86 = *(result + 24);
        *(v48 + 23) = v86;
        v48[25] = 0.5;
        v48[26] = v15;
        *(v48 + 26) = v85;
        v87 = v85;
        *v48 = ((*&v85 + *&v86) + 0.5) * 0.33333;
        v48[1] = ((*(&v85 + 1) + *(&v86 + 1)) + v15) * 0.33333;
        v48[2] = v16;
        v46 = v50 | v49;
        *(v48 + 3) = v50 | v49 | (8 * (v45 < 0.5));
        v88 = *(v48 + 25);
        *(v48 + 24) = v88;
        v48[50] = v51;
        v48[51] = v15;
        v89 = v51 + *&v88;
        v90 = v15 + *(&v88 + 1);
        v57 = v89 + *&v87;
        v58 = v90 + *(&v87 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      if (a3 <= 3)
      {
        v59 = 3;
      }

      else
      {
        v59 = a3;
      }

      v60 = v59 - 1;
      v61 = 1;
      do
      {
        v68 = (v14 * (v61 + 1.0)) - v15;
        v69 = 2 * (v61 & 1);
        if (a2 < 2)
        {
          v62 = 0;
          v63 = -0.5;
        }

        else
        {
          v70 = 0;
          v71 = 0;
          v63 = -0.5;
          v72 = v13 + -0.5;
          do
          {
            v73 = v63;
            v74 = &v48[v70];
            v31 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v31, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
            v75 = *&result[v70 + 50];
            *(v74 + 21) = v75;
            v76 = *&result[v70 + 48];
            *(v74 + 23) = v76;
            v74[25] = v72;
            v74[26] = v68;
            *(v74 + 26) = v75;
            *v74 = (v72 + (*&v75 + *&v76)) * 0.33333;
            v74[1] = ((*(&v75 + 1) + *(&v76 + 1)) + v68) * 0.33333;
            v74[2] = v16;
            LODWORD(v76) = v71 & 1 | v69;
            *(v74 + 3) = v76 | (8 * (v31 < 0.5));
            v77 = *&v48[v70 + 25];
            *(v74 + 24) = v77;
            v74[50] = v63;
            v74[51] = v68;
            v63 = *&v77;
            v74[27] = ((v73 + *&v77) + *&v75) * 0.33333;
            v74[28] = ((v68 + *(&v77 + 1)) + *(&v75 + 1)) * 0.33333;
            v74[29] = v16;
            *(v74 + 30) = v76 | (8 * (v31 >= 0.5)) | 4;
            v72 = (v13 * (v71 + 2)) + -0.5;
            ++v71;
            v70 += 54;
          }

          while (v21 != v71);
          result = (result + v70 * 4);
          v48 = (v48 + v70 * 4);
          v62 = v21 & 1;
        }

        v31 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v31, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v64 = *(result + 25);
        *(v48 + 21) = v64;
        v65 = *(result + 24);
        *(v48 + 23) = v65;
        v48[25] = 0.5;
        v48[26] = v68;
        *(v48 + 26) = v64;
        *v48 = ((*&v64 + *&v65) + 0.5) * 0.33333;
        v48[1] = ((*(&v64 + 1) + *(&v65 + 1)) + v68) * 0.33333;
        v48[2] = v16;
        v66 = v62 | v69;
        *(v48 + 3) = v66 | (8 * (v31 < 0.5));
        v67 = *(v48 + 25);
        *(v48 + 24) = v67;
        v48[50] = v63;
        v48[51] = v68;
        v48[27] = ((v63 + *&v67) + *&v64) * 0.33333;
        v48[28] = ((v68 + *(&v67 + 1)) + *(&v64 + 1)) * 0.33333;
        v48[29] = v16;
        *(v48 + 30) = v66 | (8 * (v31 >= 0.5)) | 4;
        result += 54;
        ++v61;
        v48 += 54;
      }

      while (v61 != v60);
      v49 = 2 * (v60 & 1);
      if (a2 < 2)
      {
        goto LABEL_15;
      }
    }

    v78 = 0;
    v79 = 0;
    v51 = -0.5;
    do
    {
      v80 = v51;
      v81 = &v48[v78];
      v31 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v31, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v82 = *&result[v78 + 50];
      *(v81 + 21) = v82;
      v83 = *&result[v78 + 48];
      *(v81 + 23) = v83;
      v81[25] = v19;
      v81[26] = v15;
      *(v81 + 26) = v82;
      *v81 = (v19 + (*&v82 + *&v83)) * 0.33333;
      v81[1] = ((*(&v82 + 1) + *(&v83 + 1)) + v15) * 0.33333;
      v81[2] = v16;
      LODWORD(v83) = v79 & 1 | v49;
      *(v81 + 3) = v83 | (8 * (v31 < 0.5));
      v84 = *&v48[v78 + 25];
      *(v81 + 24) = v84;
      v81[50] = v51;
      v81[51] = v15;
      v51 = *&v84;
      v81[27] = ((v80 + *&v84) + *&v82) * 0.33333;
      v81[28] = ((v15 + *(&v84 + 1)) + *(&v82 + 1)) * 0.33333;
      v81[29] = v16;
      *(v81 + 30) = v83 | (8 * (v31 >= 0.5)) | 4;
      v19 = (v13 * (v79 + 2)) + -0.5;
      ++v79;
      v78 += 54;
    }

    while (v21 != v79);
    v50 = v21 & 1;
    result = (result + v78 * 4);
    v48 = (v48 + v78 * 4);
    goto LABEL_32;
  }

  v33 = ((v17 - v15) + v15) * 0.33333;
  if (a2 < 2)
  {
    v46 = 0;
    v39 = -0.5;
    v45 = 0.16809;
    v37 = -0.5;
  }

  else
  {
    v34 = 0;
    v35 = a2 - 1;
    v36 = 0.0;
    v37 = -0.5;
    v38 = 1.0 / a2;
    v39 = -0.5;
    do
    {
      v40 = v39;
      v41 = v37;
      v37 = v38 + -0.5;
      v36 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v36, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      result[21] = v41;
      result[22] = v17;
      result[23] = v38 + -0.5;
      result[24] = v17;
      result[25] = v38 + -0.5;
      result[26] = v15;
      *result = ((v38 + -0.5) + (v41 + (v38 + -0.5))) * 0.33333;
      result[1] = v33;
      result[2] = v16;
      *(result + 3) = v34 & 1 | (8 * (v36 < 0.5));
      v42 = *(result + 25);
      *(result + 24) = v42;
      result[50] = v40;
      result[51] = v15;
      v43 = HIDWORD(v42);
      v39 = *&v42;
      v44 = *(result + 21);
      *(result + 26) = v44;
      result[27] = ((v40 + v39) + *&v44) * 0.33333;
      result[28] = ((v15 + *&v43) + *(&v44 + 1)) * 0.33333;
      result[29] = v16;
      *(result + 30) = v34 & 1 | (8 * (v36 >= 0.5)) | 4;
      v38 = v13 * (v34 + 2);
      result += 54;
      ++v34;
    }

    while (v35 != v34);
    v45 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v36, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
    v46 = v35 & 1;
  }

  result[21] = v37;
  result[22] = v17;
  result[23] = 0.5;
  result[24] = v17;
  result[25] = 0.5;
  result[26] = v15;
  *result = ((v37 + 0.5) + 0.5) * 0.33333;
  result[1] = v33;
  result[2] = v16;
  *(result + 3) = v46 | (8 * (v45 < 0.5));
  v52 = *(result + 25);
  *(result + 24) = v52;
  result[50] = v39;
  result[51] = v15;
  v53 = HIDWORD(v52);
  v54 = *&v52;
  v55 = *(result + 21);
  *(result + 26) = v55;
  v56 = v15 + *&v53;
  v57 = (v39 + v54) + *&v55;
  v58 = v56 + *(&v55 + 1);
  v48 = result;
LABEL_33:
  v48[27] = v57 * 0.33333;
  v48[28] = v58 * 0.33333;
  v48[29] = v16;
  *(v48 + 30) = v46 | (8 * (v45 >= 0.5)) | 4;
  return result;
}

float *HGFractured::Effect::gen_quad(HGFractured::Effect *this, int a2, int a3, float a4, float a5)
{
  v11 = a3 * a2;
  v12 = 116 * v11;
  v13 = *(this + 2);
  result = *(this + 7);
  if (v13 < 116 * v11)
  {
    *(this + 2) = v12;
    result = malloc_type_realloc(result, v12, 0x1000040DB6AEB77uLL);
    *(this + 7) = result;
  }

  *(this + 8) = v11;
  v15 = 1.0 / a2;
  v16 = a4 * 0.5;
  v17 = v15 * a5;
  if (a3 < 2)
  {
    v42 = -v16;
    v43 = -v16 - v16;
    v44 = ((v43 + v16) + v16) * 0.25;
    v45 = v16 - v16;
    v46 = v16 + v16;
    if (a2 < 2)
    {
      v55 = 0;
      v5 = 0xBF000000BF000000;
      v56 = 8;
    }

    else
    {
      v47 = 0;
      v48 = a2 - 1;
      v49 = 0x3E1A7B0C3F1E3779;
      v50 = 0.16809;
      v51 = vdup_n_s32(0x33800000u);
      v52 = -0.5;
      v53 = 1.0 / a2;
      v54 = -0.5;
      do
      {
        *v5.i32 = v53 + -0.5;
        v50 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v50, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        result[21] = v52;
        result[22] = v42;
        result[24] = v42;
        v49 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x269EC3009E3779, vcvt_n_s32_f32(v49, 0x18uLL), 0x343FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v51);
        v5 = vadd_f32(vdup_lane_s32(v5, 0), vmul_n_f32(vadd_f32(v49, 0xBF000000BF000000), v17));
        result[23] = *&v5.i32[1];
        result[25] = *v5.i32;
        result[26] = v16;
        result[27] = v54;
        result[28] = v16;
        v53 = v15 * (v47 + 2);
        *result = (v54 + ((v52 + *&v5.i32[1]) + *v5.i32)) * 0.25;
        result[1] = v44;
        result[2] = (vabds_f32((*&v5.i32[1] - v52) * v46, v45 * (*v5.i32 - v52)) + vabds_f32(v43 * (v54 - *v5.i32), (v52 - *v5.i32) * v45)) * 0.5;
        *(result + 3) = (4 * (v47 & 1)) | (8 * (v50 < 0.5)) | v47 & 1;
        result += 29;
        ++v47;
        v52 = *&v5.i32[1];
        v54 = *v5.i32;
      }

      while (v48 != v47);
      v55 = v48 & 1;
      v56 = 8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v50, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5);
    }

    result[21] = *&v5.i32[1];
    result[22] = v42;
    result[23] = 0.5;
    result[24] = v42;
    result[25] = 0.5;
    result[26] = v16;
    result[27] = *v5.i32;
    result[28] = v16;
    *result = (*v5.i32 + ((*&v5.i32[1] + 0.5) + 0.5)) * 0.25;
    result[1] = v44;
    result[2] = (vabds_f32((0.5 - *&v5.i32[1]) * v46, v45 * (0.5 - *&v5.i32[1])) + vabds_f32(v43 * (*v5.i32 + -0.5), (*&v5.i32[1] + -0.5) * v45)) * 0.5;
    v70 = v56 | (4 * v55) | v55;
    v58 = result;
  }

  else
  {
    v18 = a4 / a3;
    v19 = v18 * a5;
    v20 = -v16;
    v21 = v15 + -0.5;
    v22 = v18 - v16;
    v23 = (v18 - v16) + ((v18 * a5) * 0.26414);
    v24 = a2 - 1;
    v25 = -v16 - v16;
    v26 = v16 - v16;
    if (a2 < 2)
    {
      v40 = 0;
      v41 = 0x3D95DBD03CB5F4C0;
      v39 = 0.35764;
      v35 = -0.5;
      v33 = -0.5;
      v32 = result;
    }

    else
    {
      v27 = 0;
      v28 = 0x3E2C210C3F1E3779;
      v29 = 0.15086;
      v30 = 0.76414;
      v31 = vdup_n_s32(0x33800000u);
      v32 = result;
      v33 = -0.5;
      v34 = v15 + -0.5;
      v35 = -0.5;
      do
      {
        v36 = v35;
        v37 = v23;
        v30 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v30, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
        v29 = vcvts_n_f32_u32((214013 * vcvts_n_s32_f32(v29, 0x18uLL) + 2531011) & 0xFFFFFF, 0x18uLL);
        v38 = v33;
        v28 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v28, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v31);
        v32[21] = v33;
        v32[22] = v20;
        v35 = v34 + (v17 * (v28.f32[0] + -0.5));
        v33 = v34 + (v17 * (v29 + -0.5));
        v23 = v22 + (v19 * (v30 + -0.5));
        v32[27] = v36;
        v32[28] = v37;
        v32[23] = v33;
        v32[24] = v20;
        v34 = (v15 * (v27 + 2)) + -0.5;
        v32[25] = v35;
        v32[26] = v23;
        *v32 = (v36 + ((v38 + v33) + v35)) * 0.25;
        v32[1] = ((v25 + v23) + v37) * 0.25;
        v32[2] = (vabds_f32((v33 - v38) * (v23 + v16), v26 * (v35 - v38)) + vabds_f32((v20 - v23) * (v36 - v35), (v38 - v35) * (v37 - v23))) * 0.5;
        *(v32 + 3) = (4 * (v27 & 1)) | (8 * (v28.f32[1] < 0.5)) | v27 & 1;
        v32 += 29;
        ++v27;
      }

      while (v24 != v27);
      v39 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v30, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
      v40 = v24 & 1;
      v41 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v28, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), vdup_n_s32(0x33800000u));
    }

    v32[21] = v33;
    v32[22] = v20;
    v32[23] = 0.5;
    v32[24] = v20;
    v57 = v22 + (v19 * (v39 + -0.5));
    v32[25] = 0.5;
    v32[26] = v57;
    v32[27] = v35;
    v32[28] = v23;
    *v32 = (v35 + ((v33 + 0.5) + 0.5)) * 0.25;
    v32[1] = ((v25 + v57) + v23) * 0.25;
    v32[2] = (vabds_f32((0.5 - v33) * (v57 + v16), v26 * (0.5 - v33)) + vabds_f32((v20 - v57) * (v35 + -0.5), (v33 + -0.5) * (v23 - v57))) * 0.5;
    *(v32 + 3) = (4 * v40) | (8 * (v41.f32[1] < 0.5)) | v40;
    v58 = v32 + 29;
    if (a3 == 2)
    {
      LOBYTE(v59) = 1;
    }

    else
    {
      if (a3 <= 3)
      {
        v71 = 3;
      }

      else
      {
        v71 = a3;
      }

      v59 = v71 - 1;
      v72 = 1;
      v73 = vdup_n_s32(0x33800000u);
      do
      {
        v81 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v39, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
        v82 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v41, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v73);
        v83 = (v18 * (v72 + 1.0)) - v16;
        v84 = v83 + (v19 * (v81 + -0.5));
        v85 = 2 * (v72 & 1);
        if (a2 < 2)
        {
          v74 = 0;
          v75 = -0.5;
        }

        else
        {
          v86 = 0;
          v87 = 0;
          v75 = -0.5;
          v88 = v15 + -0.5;
          do
          {
            v89 = v75;
            v90 = v84;
            v81 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v81, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
            v82 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v82, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v73);
            v91 = *&result[v86 + 27];
            v92 = &v58[v86];
            *(v92 + 21) = v91;
            v93 = *&result[v86 + 25];
            v94 = v88 + (v17 * (v82.f32[0] + -0.5));
            v84 = v83 + (v19 * (v81 + -0.5));
            *(v92 + 23) = v93;
            v95 = *(&v91 + 1) - v84;
            if (((v90 - v84) * (*&v91 - v94)) >= ((v75 - v94) * (*(&v91 + 1) - v84)))
            {
              v84 = v90;
            }

            if (((*&v91 - v94) * (*(&v93 + 1) - v84)) <= (v95 * (*&v93 - v94)))
            {
              v75 = *&v93;
            }

            else
            {
              v75 = v94;
            }

            if (((*(&v93 + 1) - v84) * (v89 - v75)) <= ((*&v93 - v94) * (v90 - v84)))
            {
              v75 = *&v93;
            }

            v92[27] = v89;
            v92[28] = v90;
            v88 = (v15 * (v87 + 2)) + -0.5;
            v92[25] = v75;
            v92[26] = v84;
            *v92 = (v89 + ((*&v91 + *&v93) + v75)) * 0.25;
            v92[1] = (((*(&v91 + 1) + *(&v93 + 1)) + v84) + v90) * 0.25;
            v92[2] = (vabds_f32((*&v93 - *&v91) * (v84 - *(&v91 + 1)), (*(&v93 + 1) - *(&v91 + 1)) * (v75 - *&v91)) + vabds_f32((*(&v91 + 1) - v84) * (v89 - v75), (*&v91 - v75) * (v90 - v84))) * 0.5;
            *(v92 + 3) = v87 & 1 | (4 * ((v87 ^ v72) & 1)) | (8 * (v82.f32[1] < 0.5)) | v85;
            ++v87;
            v86 += 29;
          }

          while (v24 != v87);
          result = (result + v86 * 4);
          v58 = (v58 + v86 * 4);
          v74 = a2 - 1;
        }

        v39 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v81, 0x18uLL) + 12820163) & 0xFFFFFF, 0x18uLL);
        v76 = *(result + 27);
        *(v58 + 21) = v76;
        v77 = HIDWORD(v76);
        v78 = *&v76;
        v79 = *(result + 25);
        *(v58 + 23) = v79;
        v80 = v83 + (v19 * (v39 + -0.5));
        v58[25] = 0.5;
        v58[26] = v80;
        v58[27] = v75;
        v58[28] = v84;
        *v58 = (v75 + ((v78 + *&v79) + 0.5)) * 0.25;
        v58[1] = (((*&v77 + *(&v79 + 1)) + v80) + v84) * 0.25;
        v58[2] = (vabds_f32((*&v79 - v78) * (v80 - *&v77), (*(&v79 + 1) - *&v77) * (0.5 - v78)) + vabds_f32((*&v77 - v80) * (v75 + -0.5), (v78 + -0.5) * (v84 - v80))) * 0.5;
        LODWORD(v79) = v74 & 1 | (4 * ((v74 ^ v72) & 1));
        result += 29;
        ++v72;
        v41 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v82, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v73);
        *(v58 + 3) = v79 | (8 * (v41.f32[1] < 0.5)) | v85;
        v58 += 29;
      }

      while (v72 != v59);
    }

    v60.f32[0] = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v41.f32[1], 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
    if (a2 <= 1)
    {
      LOBYTE(v24) = 0;
      v64 = 2 * (v59 & 1);
      v65 = -0.5;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = vdup_n_s32(0x33800000u);
      v64 = 2 * (v59 & 1);
      v60.i32[1] = vcvts_n_f32_u32((12268885 * vcvts_n_s32_f32(v41.f32[0], 0x18uLL) + 10368889) & 0xFFFFFF, 0x18uLL);
      v65 = -0.5;
      do
      {
        v66 = &v58[v61];
        v60 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x9E3779002B0843, vcvt_n_s32_f32(v60, 0x18uLL), 0xBB355500FD43FDLL) & 0xFFFFFF00FFFFFFLL)), v63);
        v67 = *&result[v61 + 27];
        *(v66 + 21) = v67;
        v68 = *&result[v61 + 25];
        v69 = v65;
        v65 = v21 + (v17 * (v60.f32[1] + -0.5));
        v66[27] = v69;
        v66[28] = v16;
        *(v66 + 23) = v68;
        v21 = (v15 * (v62 + 2)) + -0.5;
        v66[25] = v65;
        v66[26] = v16;
        *v66 = (v69 + (v65 + (*&v67 + *&v68))) * 0.25;
        v66[1] = (((*(&v67 + 1) + *(&v68 + 1)) + v16) + v16) * 0.25;
        v66[2] = (vabds_f32((*&v68 - *&v67) * (v16 - *(&v67 + 1)), (*(&v68 + 1) - *(&v67 + 1)) * (v65 - *&v67)) + vabds_f32((*(&v67 + 1) - v16) * (v69 - v65), (*&v67 - v65) * v26)) * 0.5;
        *(v66 + 3) = v62 & 1 | (4 * ((v62 ^ v59) & 1)) | (8 * (v60.f32[0] < 0.5)) | v64;
        ++v62;
        v61 += 29;
      }

      while (v24 != v62);
      result = (result + v61 * 4);
      v58 = (v58 + v61 * 4);
    }

    v96 = *(result + 27);
    *(v58 + 21) = v96;
    v97 = *(result + 25);
    *(v58 + 23) = v97;
    v58[25] = 0.5;
    v58[26] = v16;
    v58[27] = v65;
    v58[28] = v16;
    *v58 = (v65 + ((*&v96 + *&v97) + 0.5)) * 0.25;
    v58[1] = (((*(&v96 + 1) + *(&v97 + 1)) + v16) + v16) * 0.25;
    v58[2] = (vabds_f32((*&v97 - *&v96) * (v16 - *(&v96 + 1)), (*(&v97 + 1) - *(&v96 + 1)) * (0.5 - *&v96)) + vabds_f32((*(&v96 + 1) - v16) * (v65 + -0.5), (*&v96 + -0.5) * v26)) * 0.5;
    v70 = v24 & 1 | v64 & 0xFFFFFFFB | (4 * ((v24 ^ v59) & 1)) | (8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v60.f32[0], 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5));
  }

  *(v58 + 3) = v70;
  return result;
}

float *HGFractured::Effect::gen_quad(HGFractured::Effect *this, int a2, int a3, float a4)
{
  v8 = a3 * a2;
  v9 = 116 * v8;
  v10 = *(this + 2);
  result = *(this + 7);
  if (v10 < 116 * v8)
  {
    *(this + 2) = v9;
    result = malloc_type_realloc(result, v9, 0x1000040DB6AEB77uLL);
    *(this + 7) = result;
  }

  *(this + 8) = v8;
  v12 = 1.0 / a2;
  v13 = a4 / a3;
  v14 = a4 * 0.5;
  v15 = v12 * v13;
  v16 = -(a4 * 0.5);
  if (a3 < 2)
  {
    v29 = (((v16 - v14) + v14) + v14) * 0.25;
    if (a2 < 2)
    {
      v36 = 0;
      v34 = -0.5;
      v37 = 8;
    }

    else
    {
      v30 = 0;
      v31 = a2 - 1;
      v32 = 0.0;
      v33 = 1.0 / a2;
      v34 = -0.5;
      do
      {
        v35 = v34;
        v34 = v33 + -0.5;
        v32 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v32, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        result[21] = v35;
        *(result + 22) = vdupq_lane_s64(__SPAIR64__(v33 + -0.5, LODWORD(v16)), 0);
        result[26] = v14;
        result[27] = v35;
        result[28] = v14;
        v33 = v12 * (v30 + 2);
        *result = (v35 + (v34 + (v35 + v34))) * 0.25;
        result[1] = v29;
        result[2] = v15;
        *(result + 3) = (4 * (v30 & 1)) | (8 * (v32 < 0.5)) | v30 & 1;
        result += 29;
        ++v30;
      }

      while (v31 != v30);
      v36 = v31 & 1;
      v37 = 8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v32, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5);
    }

    result[21] = v34;
    result[22] = v16;
    result[23] = 0.5;
    result[24] = v16;
    result[25] = 0.5;
    result[26] = v14;
    result[27] = v34;
    result[28] = v14;
    *result = (v34 + ((v34 + 0.5) + 0.5)) * 0.25;
    result[1] = v29;
    result[2] = v15;
    *(result + 3) = v37 | (4 * v36) | v36;
  }

  else
  {
    v17 = -0.5;
    v18 = v12 + -0.5;
    v19 = v13 - v14;
    v20 = a2 - 1;
    v21 = (((v16 - v14) + (v13 - v14)) + (v13 - v14)) * 0.25;
    if (a2 < 2)
    {
      v28 = 0;
      v27 = 0.16809;
      v24 = result;
    }

    else
    {
      v22 = 0;
      v23 = 0.0;
      v24 = result;
      v25 = v12 + -0.5;
      do
      {
        v26 = v17;
        v17 = v25;
        v23 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v23, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v24[21] = v26;
        v24[22] = v16;
        v24[23] = v25;
        v24[24] = v16;
        v24[25] = v25;
        v24[26] = v19;
        v24[27] = v26;
        v24[28] = v19;
        v25 = (v12 * (v22 + 2)) + -0.5;
        *v24 = (v26 + (v17 + (v26 + v17))) * 0.25;
        v24[1] = v21;
        v24[2] = v15;
        *(v24 + 3) = (4 * (v22 & 1)) | (8 * (v23 < 0.5)) | v22 & 1;
        v24 += 29;
        ++v22;
      }

      while (v20 != v22);
      v27 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v23, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v28 = v20 & 1;
    }

    v24[21] = v17;
    v24[22] = v16;
    v24[23] = 0.5;
    v24[24] = v16;
    v24[25] = 0.5;
    v24[26] = v19;
    v24[27] = v17;
    v24[28] = v19;
    *v24 = (v17 + ((v17 + 0.5) + 0.5)) * 0.25;
    v24[1] = v21;
    v24[2] = v15;
    *(v24 + 3) = (4 * v28) | (8 * (v27 < 0.5)) | v28;
    v38 = v24 + 29;
    if (a3 == 2)
    {
      v39 = 1;
    }

    else
    {
      if (a3 <= 3)
      {
        v48 = 3;
      }

      else
      {
        v48 = a3;
      }

      v39 = v48 - 1;
      v49 = 1;
      do
      {
        v56 = (v13 * (v49 + 1.0)) - v14;
        v57 = 2 * (v49 & 1);
        if (a2 < 2)
        {
          v50 = 0;
          v51 = -0.5;
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v51 = -0.5;
          v60 = v12 + -0.5;
          do
          {
            v61 = v51;
            v51 = v60;
            v62 = &v38[v58];
            v27 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v27, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
            v63 = *&result[v58 + 27];
            *(v62 + 21) = v63;
            v64 = *&result[v58 + 25];
            *(v62 + 23) = v64;
            v62[25] = v60;
            v62[26] = v56;
            v62[27] = v61;
            v62[28] = v56;
            v60 = (v12 * (v59 + 2)) + -0.5;
            *v62 = (v61 + (v51 + (*&v63 + *&v64))) * 0.25;
            v62[1] = (((*(&v63 + 1) + *(&v64 + 1)) + v56) + v56) * 0.25;
            v62[2] = v15;
            *(v62 + 3) = v59 & 1 | (4 * ((v59 ^ v49) & 1)) | (8 * (v27 < 0.5)) | v57;
            ++v59;
            v58 += 29;
          }

          while (v20 != v59);
          result = (result + v58 * 4);
          v38 = (v38 + v58 * 4);
          v50 = a2 - 1;
        }

        v27 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v27, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v52 = *(result + 27);
        *(v38 + 21) = v52;
        v53 = HIDWORD(v52);
        v54 = *&v52;
        v55 = *(result + 25);
        *(v38 + 23) = v55;
        v38[25] = 0.5;
        v38[26] = v56;
        v38[27] = v51;
        v38[28] = v56;
        *v38 = (v51 + ((v54 + *&v55) + 0.5)) * 0.25;
        v38[1] = (((*&v53 + *(&v55 + 1)) + v56) + v56) * 0.25;
        v38[2] = v15;
        *(v38 + 3) = v50 & 1 | (4 * ((v50 ^ v49) & 1)) | (8 * (v27 < 0.5)) | v57;
        result += 29;
        ++v49;
        v38 += 29;
      }

      while (v49 != v39);
    }

    v40 = 2 * (v39 & 1);
    if (a2 < 2)
    {
      LOBYTE(v20) = 0;
      v43 = -0.5;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v43 = -0.5;
      do
      {
        v44 = v43;
        v43 = v18;
        v45 = &v38[v41];
        v27 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v27, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v46 = *&result[v41 + 27];
        *(v45 + 21) = v46;
        v47 = *&result[v41 + 25];
        *(v45 + 23) = v47;
        v45[25] = v18;
        v45[26] = v14;
        v45[27] = v44;
        v45[28] = v14;
        v18 = (v12 * (v42 + 2)) + -0.5;
        *v45 = (v44 + (v43 + (*&v46 + *&v47))) * 0.25;
        v45[1] = (((*(&v46 + 1) + *(&v47 + 1)) + v14) + v14) * 0.25;
        v45[2] = v15;
        *(v45 + 3) = v42 & 1 | (4 * ((v42 ^ v39) & 1)) | (8 * (v27 < 0.5)) | v40;
        ++v42;
        v41 += 29;
      }

      while (v20 != v42);
      result = (result + v41 * 4);
      v38 = (v38 + v41 * 4);
    }

    v65 = *(result + 27);
    *(v38 + 21) = v65;
    v66 = *(result + 25);
    *(v38 + 23) = v66;
    v38[25] = 0.5;
    v38[26] = v14;
    v38[27] = v43;
    v38[28] = v14;
    *v38 = (v43 + ((*&v65 + *&v66) + 0.5)) * 0.25;
    v38[1] = (((*(&v65 + 1) + *(&v66 + 1)) + v14) + v14) * 0.25;
    v38[2] = v15;
    *(v38 + 3) = v20 & 1 | (4 * ((v20 ^ v39) & 1)) | (8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v27, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5)) | v40;
  }

  return result;
}

void HGFractured::Effect::gen_glass(HGFractured::Effect *this, int a2, int a3, float a4, float32_t a5)
{
  v8 = fmaxf(a2, 4.0);
  v9 = 116 * a3 * v8 + 464;
  v10 = *(this + 7);
  if (*(this + 2) < v9)
  {
    *(this + 2) = v9;
    v10 = malloc_type_realloc(v10, v9, 0x1000040DB6AEB77uLL);
    *(this + 7) = v10;
  }

  v11 = v8 - 1;
  if (v8 < 1)
  {
    v84 = v10;
  }

  else
  {
    v12 = 6.28318531 / v8;
    v13 = 0.5;
    v92 = a4 * 0.5;
    v93 = v12;
    if ((a4 * 0.5) <= 0.5)
    {
      v13 = a4 * 0.5;
    }

    v14 = 0;
    v15 = v13 * 0.99 / pow(1.5, (a3 - 1));
    v16.f32[0] = a5;
    v17.f32[0] = v15 * a5;
    v97 = v15 * a5;
    v96 = v15;
    v17.f32[1] = v15;
    v16.f32[1] = a5 * 0.5;
    v90 = v16;
    v91 = v17;
    v18 = 0;
    v89 = vdup_n_s32(0x33800000u);
    v19 = -0.5;
    __asm { FMOV            V1.2S, #1.0 }

    v88 = _D1;
    v24 = 0.0;
    v87 = a4;
    v85 = v8 - 1;
    v86 = v8;
    do
    {
      v27 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x9E377900269EC3, vcvt_n_s32_f32(v18, 0x18uLL), 0xBB3555000343FDLL) & 0xFFFFFF00FFFFFFLL)), v89);
      if (v14 == v11)
      {
        v28 = 0.11803;
      }

      else
      {
        v28 = vcvts_n_f32_u32((12268885 * vcvts_n_s32_f32(v27.f32[1], 0x18uLL) + 10368889) & 0xFFFFFF, 0x18uLL) + v19;
      }

      v29 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v24, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v30 = vadd_f32(v27, 0x3F1E37793E1A7B0CLL);
      v98 = v27;
      v31 = v27.f32[1];
      v34 = __sincosf_stret((((v27.f32[1] + v19) * a5) + v14) * v93);
      cosval = v34.__cosval;
      sinval = v34.__sinval;
      v94 = v14 + 1;
      v37 = __sincosf_stret(((v28 * a5) + (v14 + 1)) * v93);
      v36 = v37.__cosval;
      v35 = v37.__sinval;
      v38 = vmul_f32(v90, vmul_f32(v30, 0x3F0000003F000000));
      v39.i32[0] = vadd_f32(v38, 0xBF000000BF000000).u32[0];
      v39.i32[1] = vsub_f32(v88, v38).i32[1];
      v40 = vmul_f32(v91, v39);
      v39.f32[0] = vaddv_f32(v40);
      v41 = vmuls_lane_f32(v34.__cosval, v40, 1);
      v42 = vmuls_lane_f32(v34.__sinval, v40, 1);
      v43 = v39.f32[0] * v37.__cosval;
      v44 = v39.f32[0] * v37.__sinval;
      v10[21] = v43;
      v10[22] = v44;
      v10[23] = 0.0;
      v10[24] = 0.0;
      v10[25] = v41;
      v10[26] = v42;
      v10[27] = v43;
      v10[28] = v44;
      *v10 = ((v41 + 0.0) + v43) / 3.0;
      v10[1] = ((v42 + 0.0) + v44) / 3.0;
      v45 = 0.5;
      v10[2] = vabds_f32((0.0 - v43) * (v42 - v44), (0.0 - v44) * (v41 - v43)) * 0.5;
      v46 = v14 & 1;
      v95 = v29;
      v47 = 8 * (v29 < 0.5);
      *(v10 + 3) = v46 | (4 * (v14 & 1)) & 0xF7 | v47;
      if (a3 < 3)
      {
        v72 = 1;
      }

      else
      {
        v48 = 2;
        v49 = 1033231312;
        v50 = 0.15452;
        v51 = 1052187892;
        v52 = 0.022211;
        v53 = 2;
        do
        {
          v54.i64[0] = __PAIR64__(v51, LODWORD(v52));
          v54.i64[1] = __PAIR64__(v49, LODWORD(v50));
          v99 = vmulq_f32(vcvtq_f32_u32((*&vmlaq_s32(xmmword_260817A70, vcvtq_n_s32_f32(v54, 0x18uLL), xmmword_260817A60) & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), vdupq_n_s32(0x33800000u));
          v55 = (v98.f32[0] + v50) * v45;
          v56 = (v48 + (((v31 + v52) * -0.5) * a5));
          v57 = v31;
          v58 = sinval;
          v59 = v35;
          v60 = cosval;
          v61 = v36;
          v62 = pow(1.5, v56);
          v36 = v61;
          cosval = v60;
          v35 = v59;
          sinval = v58;
          v31 = v57;
          v45 = 0.5;
          *&v62 = v62 * v96;
          v63 = (v97 * ((v55 * a5) + -0.5)) + *&v62;
          v64 = v10[27];
          v65 = v10[25];
          v66 = v60 * *&v62;
          v67 = v36 * v63;
          v10[29] = ((v36 * v63) + ((v60 * *&v62) + (v64 + v65))) * 0.25;
          v10 += 29;
          v68 = *(v10 - 1);
          v10[21] = v64;
          v10[22] = v68;
          v69 = *(v10 - 3);
          v10[23] = v65;
          v10[24] = v69;
          *&v62 = sinval * *&v62;
          v70 = v35 * v63;
          v10[25] = v66;
          v10[26] = *&v62;
          v10[27] = v67;
          v10[28] = v70;
          v71 = (v70 + (*&v62 + (v68 + v69))) * 0.25;
          *&v62 = vabds_f32((v10[23] - v10[21]) * (*&v62 - v10[22]), (v10[24] - v10[22]) * (v66 - v10[21])) + vabds_f32((v10[22] - *&v62) * (v67 - v66), (v10[21] - v66) * (v70 - *&v62));
          v51 = v99.i32[1];
          v49 = v99.i32[3];
          v10[1] = v71;
          v10[2] = *&v62 * 0.5;
          *(v10 + 3) = v53 & 2 | (4 * (((v48 - 1) ^ v14) & 1)) | v46 | v47;
          v53 += 2;
          ++v48;
          v52 = v99.f32[0];
          v50 = v99.f32[2];
        }

        while (a3 != v48);
        v43 = v10[27];
        v44 = v10[28];
        v72 = a3 - 1;
        v11 = v85;
        v41 = v10[25];
        v42 = v10[26];
        a4 = v87;
        v8 = v86;
      }

      v73 = -cosval;
      if (cosval >= 0.0)
      {
        v73 = cosval;
      }

      if (sinval >= 0.0)
      {
        v74 = sinval;
      }

      else
      {
        v74 = -sinval;
      }

      v75 = 0.5;
      v76 = v92;
      v77 = 0.5;
      if (v74 != (v73 * a4))
      {
        if (v74 < (v73 * a4))
        {
          v76 = (v74 * 0.5) / v73;
        }

        else
        {
          v76 = v92;
          v77 = (v92 * v73) / v74;
        }
      }

      v78 = -v77;
      if (cosval >= 0.0)
      {
        v78 = v77;
      }

      if (sinval < 0.0)
      {
        v76 = -v76;
      }

      if (v36 >= 0.0)
      {
        v79 = v36;
      }

      else
      {
        v79 = -v36;
      }

      if (v35 >= 0.0)
      {
        v80 = v35;
      }

      else
      {
        v80 = -v35;
      }

      v81 = v92;
      if (v80 != (v79 * a4))
      {
        if (v80 < (v79 * a4))
        {
          v81 = (v80 * 0.5) / v79;
        }

        else
        {
          v81 = v92;
          v75 = (v92 * v79) / v80;
        }
      }

      if (v36 < 0.0)
      {
        v75 = -v75;
      }

      if (v35 < 0.0)
      {
        v81 = -v81;
      }

      v10[50] = v43;
      v10[51] = v44;
      v10[52] = v41;
      v10[53] = v42;
      v10[54] = v78;
      v10[55] = v76;
      v10[56] = v75;
      v10[57] = v81;
      v10[29] = (((v43 + v41) + v78) + v75) * 0.25;
      v10[30] = (((v44 + v42) + v76) + v81) * 0.25;
      v10[31] = (vabds_f32((v41 - v43) * (v76 - v44), (v42 - v44) * (v78 - v43)) + vabds_f32((v44 - v76) * (v75 - v78), (v43 - v78) * (v81 - v76))) * v45;
      v82 = (4 * ((v72 ^ v14) & 1)) | (2 * (v72 & 1)) | v46 | v47;
      *(v10 + 32) = v82;
      if (v76 == v81 || v78 == v75)
      {
        v10 += 58;
      }

      else
      {
        if ((v81 * v75) >= 0.0)
        {
          v25 = v78;
        }

        else
        {
          v25 = v75;
        }

        if ((v81 * v75) >= 0.0)
        {
          v26 = v81;
        }

        else
        {
          v26 = v76;
        }

        v10[79] = v75;
        v10[80] = v81;
        v10[81] = v78;
        v10[82] = v76;
        v10[83] = v25;
        v10[84] = v26;
        v10[85] = v25;
        v10[86] = v26;
        v10[58] = (v25 + ((v78 + v75) + v25)) * 0.25;
        v10[59] = (v26 + ((v76 + v81) + v26)) * 0.25;
        v10[60] = (vabds_f32((v78 - v75) * (v26 - v81), (v76 - v81) * (v25 - v75)) + vabds_f32((v81 - v26) * (v25 - v25), (v75 - v25) * (v26 - v26))) * v45;
        *(v10 + 61) = v82;
        v10 += 87;
      }

      v18 = v98;
      v19 = -0.5;
      v24 = v95;
      ++v14;
    }

    while (v94 != v8);
    v84 = *(this + 7);
  }

  *(this + 8) = 0x34F72C234F72C235 * (v10 - v84);
}

void HGFractured::Effect::gen_glass(float **this, int a2, int a3, float a4)
{
  v5 = this;
  v6 = fmaxf(a2, 4.0);
  v7 = 116 * a3 * v6 + 464;
  v8 = this[7];
  v60 = a4;
  if (this[2] < v7)
  {
    this[2] = v7;
    v9 = malloc_type_realloc(v8, v7, 0x1000040DB6AEB77uLL);
    a4 = v60;
    v8 = v9;
    *(v5 + 7) = v9;
  }

  v10 = a4 * 0.5;
  v59 = v10;
  if (v10 <= 0.5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = pow(1.5, (a3 - 1));
  if (v6 < 1)
  {
    v54 = v8;
  }

  else
  {
    v55 = v5;
    v13 = 0;
    v14 = 6.28318531 / v6;
    v58 = v14;
    v15 = v11 * 0.99 / v12;
    v57 = v15;
    v16 = v15;
    v17 = 0.0;
    v56 = v6;
    do
    {
      v17 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v17, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v18 = __sincosf_stret(v58 * v13);
      v19 = v13 + 1;
      v20 = __sincosf_stret(v58 * (v13 + 1));
      v21 = v18.__cosval * v57;
      v22 = v18.__sinval * v57;
      v23 = v20.__cosval * v57;
      v24 = v20.__sinval * v57;
      v8[21] = v20.__cosval * v57;
      v8[22] = v20.__sinval * v57;
      v8[23] = 0.0;
      v8[24] = 0.0;
      v8[25] = v18.__cosval * v57;
      v8[26] = v18.__sinval * v57;
      v8[27] = v20.__cosval * v57;
      v8[28] = v20.__sinval * v57;
      *v8 = (((v18.__cosval * v57) + 0.0) + (v20.__cosval * v57)) / 3.0;
      v8[1] = (((v18.__sinval * v57) + 0.0) + (v20.__sinval * v57)) / 3.0;
      v8[2] = vabds_f32((0.0 - (v20.__cosval * v57)) * ((v18.__sinval * v57) - (v20.__sinval * v57)), (0.0 - (v20.__sinval * v57)) * ((v18.__cosval * v57) - (v20.__cosval * v57))) * 0.5;
      v25 = v13 & 1;
      *(v8 + 3) = (4 * v25) | (8 * (v17 < 0.5)) | v25;
      if (a3 < 3)
      {
        v40 = 1;
        v41 = v8;
      }

      else
      {
        v26 = 2;
        v27 = 2;
        do
        {
          v17 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v17, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
          v28 = pow(1.5, v26) * v16;
          v29 = v8[27];
          v30 = v8[25];
          v31 = v18.__cosval * v28;
          v32 = v20.__cosval * v28;
          v8[29] = ((v20.__cosval * v28) + ((v18.__cosval * v28) + (v29 + v30))) * 0.25;
          v8 += 29;
          v33 = *(v8 - 1);
          v8[21] = v29;
          v8[22] = v33;
          v34 = *(v8 - 3);
          v8[23] = v30;
          v8[24] = v34;
          v35 = v18.__sinval * v28;
          v36 = v20.__sinval * v28;
          v8[25] = v31;
          v8[26] = v35;
          v8[27] = v32;
          v8[28] = v36;
          v37 = v8[21];
          v38 = v8[22];
          v39 = vabds_f32((v8[23] - v37) * (v35 - v38), (v8[24] - v38) * (v31 - v37));
          v8[1] = (v36 + (v35 + (v33 + v34))) * 0.25;
          v8[2] = (v39 + vabds_f32((v38 - v35) * (v32 - v31), (v37 - v31) * (v36 - v35))) * 0.5;
          *(v8 + 3) = v27 & 2 | (4 * (((v26 - 1) ^ v13) & 1)) | (8 * (v17 < 0.5)) | v25;
          v27 += 2;
          ++v26;
        }

        while (a3 != v26);
        v23 = v8[27];
        v24 = v8[28];
        v6 = v56;
        v40 = a3 - 1;
        v41 = v8;
        v21 = v8[25];
        v22 = v8[26];
        v19 = v13 + 1;
      }

      cosval = -v18.__cosval;
      if (v18.__cosval >= 0.0)
      {
        cosval = v18.__cosval;
      }

      if (v18.__sinval >= 0.0)
      {
        sinval = v18.__sinval;
      }

      else
      {
        sinval = -v18.__sinval;
      }

      v44 = 0.5;
      v45 = v59;
      v46 = 0.5;
      if (sinval != (cosval * v60))
      {
        if (sinval < (cosval * v60))
        {
          v45 = (sinval * 0.5) / cosval;
        }

        else
        {
          v45 = v59;
          v46 = (v59 * cosval) / sinval;
        }
      }

      v47 = -v46;
      if (v18.__cosval >= 0.0)
      {
        v47 = v46;
      }

      if (v18.__sinval < 0.0)
      {
        v45 = -v45;
      }

      if (v20.__cosval >= 0.0)
      {
        v48 = v20.__cosval;
      }

      else
      {
        v48 = -v20.__cosval;
      }

      if (v20.__sinval >= 0.0)
      {
        v49 = v20.__sinval;
      }

      else
      {
        v49 = -v20.__sinval;
      }

      v50 = v59;
      if (v49 != (v48 * v60))
      {
        if (v49 < (v48 * v60))
        {
          v50 = (v49 * 0.5) / v48;
        }

        else
        {
          v50 = v59;
          v44 = (v59 * v48) / v49;
        }
      }

      if (v20.__cosval < 0.0)
      {
        v44 = -v44;
      }

      if (v20.__sinval < 0.0)
      {
        v50 = -v50;
      }

      v41[50] = v23;
      v41[51] = v24;
      v41[52] = v21;
      v41[53] = v22;
      v41[54] = v47;
      v41[55] = v45;
      v41[56] = v44;
      v41[57] = v50;
      v41[29] = (((v23 + v21) + v47) + v44) * 0.25;
      v41[30] = (((v24 + v22) + v45) + v50) * 0.25;
      v41[31] = (vabds_f32((v21 - v23) * (v45 - v24), (v22 - v24) * (v47 - v23)) + vabds_f32((v24 - v45) * (v44 - v47), (v23 - v47) * (v50 - v45))) * 0.5;
      v51 = (4 * ((v40 ^ v13) & 1)) | (2 * (v40 & 1)) | (8 * (v17 < 0.5)) | v25;
      *(v41 + 32) = v51;
      v8 = v41 + 58;
      if (v45 != v50 && v47 != v44)
      {
        if ((v50 * v44) >= 0.0)
        {
          v52 = v47;
        }

        else
        {
          v52 = v44;
        }

        if ((v50 * v44) >= 0.0)
        {
          v53 = v50;
        }

        else
        {
          v53 = v45;
        }

        v41[79] = v44;
        v41[80] = v50;
        v41[81] = v47;
        v41[82] = v45;
        v41[83] = v52;
        v41[84] = v53;
        v41[85] = v52;
        v41[86] = v53;
        v41[58] = (v52 + ((v47 + v44) + v52)) * 0.25;
        v41[59] = (v53 + ((v45 + v50) + v53)) * 0.25;
        v41[60] = (vabds_f32((v47 - v44) * (v53 - v50), (v45 - v50) * (v52 - v44)) + vabds_f32((v50 - v53) * (v52 - v52), (v44 - v52) * (v53 - v53))) * 0.5;
        *(v41 + 61) = v51;
        v8 = v41 + 87;
      }

      v13 = v19;
    }

    while (v19 != v6);
    v5 = v55;
    v54 = *(v55 + 7);
  }

  *(v5 + 8) = 0x34F72C234F72C235 * (v8 - v54);
}

uint64_t HGFractured::Effect::gen_glass_2(uint64_t this, int a2, int a3, float a4, float a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = this;
  v207 = *MEMORY[0x277D85DE8];
  v10 = fmaxf(a3, 2.0);
  v11 = fmaxf(a2, 4.0);
  v12 = v10 * v11 + 4;
  v13 = 116 * v12;
  if (*(this + 16) >= 116 * v12)
  {
    v12 = *(this + 16) / 0x74uLL;
    v15 = *(this + 56);
  }

  else
  {
    v14 = *(this + 56);
    *(v9 + 16) = v13;
    this = malloc_type_realloc(v14, v13, 0x1000040DB6AEB77uLL);
    v15 = this;
    *(v9 + 56) = this;
  }

  v16 = *(v9 + 208);
  *a9.i32 = *(v9 + 212) * a4;
  v17 = -0.5;
  v18 = -0.5 - v16;
  v202 = -0.5 - v16;
  v19.i32[1] = 1056964608;
  v19.f32[0] = -(a4 * 0.5);
  *&v20 = vsub_f32(v19, __PAIR64__(LODWORD(v16), a9.u32[0]));
  *(&v20 + 1) = v20;
  v203 = v20;
  v204 = (a4 * 0.5) - *a9.i32;
  v205 = v18;
  v206 = v204;
  if (v11 >= 1)
  {
    v21 = 6.28318531 / v11;
    v167 = v21;
    v178 = a9;
    v22 = 0;
    v23 = 0;
    v24 = log2((2 * v10));
    v25 = 0.25 / v10;
    v180 = v24;
    v181 = v25;
    v165 = fabsf(a5) * 0.5;
    v166 = v11 - 1;
    v179 = (v11 - 1);
    v169 = v11 + 4;
    v173 = v11 + 3;
    v174 = v11 + 1;
    v172 = v11 + 2;
    v26 = vdupq_lane_s32(v178, 0);
    v177 = v26;
    v26.i64[0] = 0x3E873D863DF1BBC8;
    v188 = v26;
    v27 = 0;
    v184 = vdup_n_s32(0x33800000u);
    v168 = v11;
    do
    {
      if (v22 + 1 > v12)
      {
        v28 = *(v9 + 56);
        v12 = v174 + v22;
        v29 = 116 * (v174 + v22);
        *(v9 + 16) = v29;
        v175 = v27;
        v30 = malloc_type_realloc(v28, v29, 0x1000040DB6AEB77uLL);
        v27 = v175;
        *(v9 + 56) = v30;
        v15 = v30 + 116 * v22;
      }

      v31 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v27, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v184);
      if (v23 == v166)
      {
        v32 = 0.11803;
      }

      else
      {
        v32 = vcvts_n_f32_u32((12268885 * vcvts_n_s32_f32(v31.f32[0], 0x18uLL) + 10368889) & 0xFFFFFF, 0x18uLL) + v17;
      }

      v176 = v31;
      v33 = __sincosf_stret((((v31.f32[0] + v17) * a5) + v23) * v167);
      v171 = v23 + 1;
      v34 = __sincosf_stret(((v32 * a5) + (v23 + 1)) * v167);
      v35 = exp2(((v165 * *v188.i32) + 0.0) / v179 * v180) * v181;
      v36 = exp2((vmuls_lane_f32(v165, *v188.i8, 1) + 0.0) / v179 * v180) * v181;
      v37 = v34.__cosval * v36;
      v38 = v34.__sinval * v36;
      *(v15 + 84) = v34.__cosval * v36;
      *(v15 + 88) = v34.__sinval * v36;
      *(v15 + 92) = 0;
      *(v15 + 100) = v33.__cosval * v35;
      *(v15 + 104) = v33.__sinval * v35;
      *(v15 + 108) = v34.__cosval * v36;
      *(v15 + 112) = v34.__sinval * v36;
      v39 = clip(&v202, (v15 + 84), v198, a4);
      if (!v39)
      {
        goto LABEL_20;
      }

      v40.i32[0] = *(v9 + 208);
      if (v39 > 7)
      {
        v41 = v39 & 0xFFFFFFF8;
        v42 = vdupq_lane_s32(v40, 0);
        v43 = v41;
        v44 = &v201;
        do
        {
          v45 = v44 - 8;
          v208 = vld2q_f32(v45);
          v210 = vld2q_f32(v44);
          v212.val[0] = vaddq_f32(v42, v208.val[0]);
          v212.val[1] = vaddq_f32(v177, v208.val[1]);
          v208.val[0] = vaddq_f32(v42, v210.val[0]);
          v208.val[1] = vaddq_f32(v177, v210.val[1]);
          vst2q_f32(v45, v212);
          vst2q_f32(v44, v208);
          v44 += 16;
          v43 -= 8;
        }

        while (v43);
        if (v41 == v39)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v41 = 0;
      }

      v40.i32[1] = v178.i32[0];
      v46 = &v198[v41];
      v47 = v39 - v41;
      do
      {
        *v46 = vadd_f32(v40, *v46);
        ++v46;
        --v47;
      }

      while (v47);
LABEL_20:
      v186 = v33.__sinval * v35;
      v187 = v33.__cosval * v35;
      v170 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(vadd_f32(*v188.i8, 0x3F0000003F000000), 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v184);
      v48 = v198[0];
      v49 = v198[1];
      *(v15 + 84) = v198[0];
      *(v15 + 92) = v49;
      v50 = HIDWORD(v48);
      v51 = *&v48;
      v52 = v199;
      v53 = v200;
      *(v15 + 100) = v199;
      *(v15 + 108) = v53;
      *v15 = (((v51 + *&v49) + *&v52) + *&v53) * 0.25;
      *(v15 + 4) = (((*&v50 + *(&v49 + 1)) + *(&v52 + 1)) + *(&v53 + 1)) * 0.25;
      *(v15 + 8) = (vabds_f32((*&v49 - v51) * (*(&v52 + 1) - *&v50), (*(&v49 + 1) - *&v50) * (*&v52 - v51)) + vabds_f32((*&v50 - *(&v52 + 1)) * (*&v53 - *&v52), (v51 - *&v52) * (*(&v53 + 1) - *(&v52 + 1)))) * 0.5;
      v54 = v23 & 1;
      v55 = 8 * (v176.f32[1] < 0.5);
      *(v15 + 12) = v54 | (4 * (v23 & 1)) & 0xF7 | v55;
      v15 += 116;
      v56 = 1;
      ++v22;
      while (1)
      {
        v185 = v38;
        v62 = v37;
        v63.i64[1] = v188.i64[1];
        *v63.i8 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0xC39EC3009E3779, vcvt_n_s32_f32(*v188.i8, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v184);
        v188 = v63;
        v64 = exp2((((*v63.i32 + -0.5) * a5) + v56) / v179 * v180) * v181;
        v65 = exp2((((*&v188.i32[1] + -0.5) * a5) + v56) / v179 * v180) * v181;
        v197[0] = v187;
        v197[1] = v186;
        v66 = v33.__cosval * v64;
        v67 = v33.__sinval * v64;
        v197[2] = v33.__cosval * v64;
        v197[3] = v33.__sinval * v64;
        v37 = v34.__cosval * v65;
        v38 = v34.__sinval * v65;
        v197[4] = v34.__cosval * v65;
        v197[5] = v34.__sinval * v65;
        v197[6] = v62;
        v197[7] = v185;
        this = clip(&v202, v197, &v189, a4);
        if (!this)
        {
          break;
        }

        v68.i32[0] = *(v9 + 208);
        if (this <= 7)
        {
          v69 = 0;
LABEL_31:
          v68.i32[1] = v178.i32[0];
          v74 = &v189 + v69;
          v75 = this - v69;
          do
          {
            *v74 = vadd_f32(*v68.i8, *v74);
            ++v74;
            --v75;
          }

          while (v75);
          goto LABEL_33;
        }

        v69 = this & 0xFFFFFFF8;
        v70 = vdupq_lane_s32(*v68.i8, 0);
        v71 = v69;
        v72 = &v192;
        do
        {
          v73 = v72 - 8;
          v209 = vld2q_f32(v73);
          v211 = vld2q_f32(v72);
          v213.val[0] = vaddq_f32(v70, v209.val[0]);
          v213.val[1] = vaddq_f32(v177, v209.val[1]);
          v209.val[0] = vaddq_f32(v70, v211.val[0]);
          v209.val[1] = vaddq_f32(v177, v211.val[1]);
          vst2q_f32(v73, v213);
          vst2q_f32(v72, v209);
          v72 += 16;
          v71 -= 8;
        }

        while (v71);
        if (v69 != this)
        {
          goto LABEL_31;
        }

LABEL_33:
        if (this <= 5)
        {
          if (this > 3)
          {
            if (this == 4)
            {
              v76 = v22 + 1;
              if (v22 + 1 > v12)
              {
                v156 = *(v9 + 56);
                v12 = v174 + v22;
                v157 = 116 * (v174 + v22);
                *(v9 + 16) = v157;
                v158 = malloc_type_realloc(v156, v157, 0x1000040DB6AEB77uLL);
                *(v9 + 56) = v158;
                v15 = v158 + 116 * v22;
              }

              v160 = *(&v189 + 1);
              v159 = v189;
              *(v15 + 84) = v189;
              *(v15 + 92) = v160;
              v161 = HIDWORD(v159);
              v162 = *&v159;
              v163 = v190;
              v164 = v191;
              *(v15 + 100) = v190;
              *(v15 + 108) = v164;
              *v15 = (((v162 + *&v160) + *&v163) + *&v164) * 0.25;
              *(v15 + 4) = (((*&v161 + *(&v160 + 1)) + *(&v163 + 1)) + *(&v164 + 1)) * 0.25;
              v61 = vabds_f32((*&v160 - v162) * (*(&v163 + 1) - *&v161), (*(&v160 + 1) - *&v161) * (*&v163 - v162)) + vabds_f32((*&v161 - *(&v163 + 1)) * (*&v164 - *&v163), (v162 - *&v163) * (*(&v164 + 1) - *(&v163 + 1)));
              goto LABEL_22;
            }

            v76 = v22 + 2;
            if (v22 + 2 > v12)
            {
              v95 = *(v9 + 56);
              v12 = v172 + v22;
              v96 = 116 * (v172 + v22);
              *(v9 + 16) = v96;
              v97 = malloc_type_realloc(v95, v96, 0x1000040DB6AEB77uLL);
              *(v9 + 56) = v97;
              v15 = v97 + 116 * v22;
            }

            v99 = *(&v189 + 1);
            v98 = v189;
            *(v15 + 84) = v189;
            *(v15 + 92) = v99;
            v100 = v190;
            v101 = v191;
            *(v15 + 100) = v190;
            *(v15 + 108) = v101;
            *v15 = (((*&v98 + *&v99) + *&v100) + *&v101) * 0.25;
            *(v15 + 4) = (((*(&v98 + 1) + *(&v99 + 1)) + *(&v100 + 1)) + *(&v101 + 1)) * 0.25;
            *(v15 + 8) = (vabds_f32((*&v99 - *&v98) * (*(&v100 + 1) - *(&v98 + 1)), (*(&v99 + 1) - *(&v98 + 1)) * (*&v100 - *&v98)) + vabds_f32((*(&v98 + 1) - *(&v100 + 1)) * (*&v101 - *&v100), (*&v98 - *&v100) * (*(&v101 + 1) - *(&v100 + 1)))) * 0.5;
            v102 = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
            *(v15 + 12) = v102;
            v103 = v189;
            *(v15 + 200) = v189;
            v104 = v191;
            *(v15 + 208) = v191;
            v105 = v192;
            *(v15 + 216) = v192;
            *(v15 + 224) = v189;
            *(v15 + 116) = ((*&v103 + *&v104) + *&v105) / 3.0;
            *(v15 + 120) = ((*(&v103 + 1) + *(&v104 + 1)) + *(&v105 + 1)) / 3.0;
            v106 = vabds_f32((*&v104 - *&v103) * (*(&v105 + 1) - *(&v103 + 1)), (*(&v104 + 1) - *(&v103 + 1)) * (*&v105 - *&v103)) * 0.5;
            goto LABEL_55;
          }

          if (this == 3)
          {
            v76 = v22 + 1;
            if (v22 + 1 > v12)
            {
              v127 = *(v9 + 56);
              v12 = v174 + v22;
              v128 = 116 * (v174 + v22);
              *(v9 + 16) = v128;
              v129 = malloc_type_realloc(v127, v128, 0x1000040DB6AEB77uLL);
              *(v9 + 56) = v129;
              v15 = v129 + 116 * v22;
            }

            v57 = v189;
            v58 = *&v190;
            v59 = HIDWORD(v190);
            *&v60 = v190;
            *(&v60 + 1) = v189;
            *(v15 + 84) = v189;
            *(v15 + 100) = v60;
            *v15 = ((*&v57 + *(&v57 + 2)) + v58) / 3.0;
            *(v15 + 4) = ((*(&v57 + 1) + *(&v57 + 3)) + *&v59) / 3.0;
            v61 = vabds_f32((*(&v57 + 2) - *&v57) * (*&v59 - *(&v57 + 1)), (*(&v57 + 3) - *(&v57 + 1)) * (v58 - *&v57));
LABEL_22:
            *(v15 + 8) = v61 * 0.5;
            *(v15 + 12) = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
            v15 += 116;
LABEL_23:
            v22 = v76;
            goto LABEL_24;
          }

          if (this < 3)
          {
            break;
          }
        }

        else
        {
          if (this <= 7)
          {
            if (this != 6)
            {
              v76 = v22 + 3;
              if (v22 + 3 > v12)
              {
                v77 = *(v9 + 56);
                v12 = v173 + v22;
                v78 = 116 * (v173 + v22);
                *(v9 + 16) = v78;
                v79 = malloc_type_realloc(v77, v78, 0x1000040DB6AEB77uLL);
                *(v9 + 56) = v79;
                v15 = v79 + 116 * v22;
              }

              v80 = v15 + 316;
              v82 = *(&v189 + 1);
              v81 = v189;
              *(v15 + 84) = v189;
              *(v15 + 92) = v82;
              v83 = v190;
              v84 = v191;
              *(v15 + 100) = v190;
              *(v15 + 108) = v84;
              v85 = 0.25;
              *v15 = (((*&v81 + *&v82) + *&v83) + *&v84) * 0.25;
              *(v15 + 4) = (((*(&v81 + 1) + *(&v82 + 1)) + *(&v83 + 1)) + *(&v84 + 1)) * 0.25;
              v86 = 0.5;
              *(v15 + 8) = (vabds_f32((*&v82 - *&v81) * (*(&v83 + 1) - *(&v81 + 1)), (*(&v82 + 1) - *(&v81 + 1)) * (*&v83 - *&v81)) + vabds_f32((*(&v81 + 1) - *(&v83 + 1)) * (*&v84 - *&v83), (*&v81 - *&v83) * (*(&v84 + 1) - *(&v83 + 1)))) * 0.5;
              v87 = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
              *(v15 + 12) = v87;
              v88 = v189;
              *(v15 + 200) = v189;
              v89 = v191;
              *(v15 + 208) = v191;
              v90 = v194;
              *(v15 + 216) = v194;
              *(v15 + 224) = v189;
              *(v15 + 116) = ((*&v88 + *&v89) + *&v90) / 3.0;
              *(v15 + 120) = ((*(&v88 + 1) + *(&v89 + 1)) + *(&v90 + 1)) / 3.0;
              *(v15 + 124) = vabds_f32((*&v89 - *&v88) * (*(&v90 + 1) - *(&v88 + 1)), (*(&v89 + 1) - *(&v88 + 1)) * (*&v90 - *&v88)) * 0.5;
              *(v15 + 128) = v87;
              v91 = v194;
              *(v15 + 316) = v194;
              v92 = v191;
              *(v15 + 324) = v191;
              v93 = v192;
              *(v15 + 332) = v192;
              v94 = v193;
LABEL_59:
              *(v80 + 24) = v94;
              *(v15 + 232) = (((*&v91 + *&v92) + *&v93) + *&v94) * v85;
              *(v15 + 236) = (((*(&v91 + 1) + *(&v92 + 1)) + *(&v93 + 1)) + *(&v94 + 1)) * v85;
              *(v15 + 240) = (vabds_f32((*&v92 - *&v91) * (*(&v93 + 1) - *(&v91 + 1)), (*(&v92 + 1) - *(&v91 + 1)) * (*&v93 - *&v91)) + vabds_f32((*(&v91 + 1) - *(&v93 + 1)) * (*&v94 - *&v93), (*&v91 - *&v93) * (*(&v94 + 1) - *(&v93 + 1)))) * v86;
              *(v15 + 244) = v87;
              v15 += 348;
              goto LABEL_23;
            }

            v76 = v22 + 2;
            if (v22 + 2 > v12)
            {
              v130 = *(v9 + 56);
              v12 = v172 + v22;
              v131 = 116 * (v172 + v22);
              *(v9 + 16) = v131;
              v132 = malloc_type_realloc(v130, v131, 0x1000040DB6AEB77uLL);
              *(v9 + 56) = v132;
              v15 = v132 + 116 * v22;
            }

            v134 = *(&v189 + 1);
            v133 = v189;
            *(v15 + 84) = v189;
            *(v15 + 92) = v134;
            v135 = v190;
            v136 = v191;
            *(v15 + 100) = v190;
            *(v15 + 108) = v136;
            *v15 = (((*&v133 + *&v134) + *&v135) + *&v136) * 0.25;
            *(v15 + 4) = (((*(&v133 + 1) + *(&v134 + 1)) + *(&v135 + 1)) + *(&v136 + 1)) * 0.25;
            *(v15 + 8) = (vabds_f32((*&v134 - *&v133) * (*(&v135 + 1) - *(&v133 + 1)), (*(&v134 + 1) - *(&v133 + 1)) * (*&v135 - *&v133)) + vabds_f32((*(&v133 + 1) - *(&v135 + 1)) * (*&v136 - *&v135), (*&v133 - *&v135) * (*(&v136 + 1) - *(&v135 + 1)))) * 0.5;
            v102 = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
            *(v15 + 12) = v102;
            v137 = v189;
            *(v15 + 200) = v189;
            v138 = v191;
            *(v15 + 208) = v191;
            v139 = v192;
            *(v15 + 216) = v192;
            v140 = HIDWORD(v137);
            v141 = *&v137;
            v142 = v193;
            *(v15 + 224) = v193;
            *(v15 + 116) = (((v141 + *&v138) + *&v139) + *&v142) * 0.25;
            *(v15 + 120) = (((*&v140 + *(&v138 + 1)) + *(&v139 + 1)) + *(&v142 + 1)) * 0.25;
            v106 = (vabds_f32((*&v138 - v141) * (*(&v139 + 1) - *&v140), (*(&v138 + 1) - *&v140) * (*&v139 - v141)) + vabds_f32((*&v140 - *(&v139 + 1)) * (*&v142 - *&v139), (v141 - *&v139) * (*(&v142 + 1) - *(&v139 + 1)))) * 0.5;
LABEL_55:
            *(v15 + 124) = v106;
            *(v15 + 128) = v102;
            v15 += 232;
            goto LABEL_23;
          }

          if (this == 8)
          {
            v76 = v22 + 3;
            if (v22 + 3 > v12)
            {
              v143 = *(v9 + 56);
              v12 = v173 + v22;
              v144 = 116 * (v173 + v22);
              *(v9 + 16) = v144;
              v145 = malloc_type_realloc(v143, v144, 0x1000040DB6AEB77uLL);
              *(v9 + 56) = v145;
              v15 = v145 + 116 * v22;
            }

            v80 = v15 + 316;
            v147 = *(&v189 + 1);
            v146 = v189;
            *(v15 + 84) = v189;
            *(v15 + 92) = v147;
            v148 = v190;
            v149 = v191;
            *(v15 + 100) = v190;
            *(v15 + 108) = v149;
            v85 = 0.25;
            *v15 = (((*&v146 + *&v147) + *&v148) + *&v149) * 0.25;
            *(v15 + 4) = (((*(&v146 + 1) + *(&v147 + 1)) + *(&v148 + 1)) + *(&v149 + 1)) * 0.25;
            v86 = 0.5;
            *(v15 + 8) = (vabds_f32((*&v147 - *&v146) * (*(&v148 + 1) - *(&v146 + 1)), (*(&v147 + 1) - *(&v146 + 1)) * (*&v148 - *&v146)) + vabds_f32((*(&v146 + 1) - *(&v148 + 1)) * (*&v149 - *&v148), (*&v146 - *&v148) * (*(&v149 + 1) - *(&v148 + 1)))) * 0.5;
            v87 = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
            *(v15 + 12) = v87;
            v150 = v189;
            *(v15 + 200) = v189;
            v151 = v191;
            *(v15 + 208) = v191;
            v152 = v192;
            *(v15 + 216) = v192;
            v153 = HIDWORD(v150);
            v154 = *&v150;
            v155 = v195;
            *(v15 + 224) = v195;
            *(v15 + 116) = (((v154 + *&v151) + *&v152) + *&v155) * 0.25;
            *(v15 + 120) = (((*&v153 + *(&v151 + 1)) + *(&v152 + 1)) + *(&v155 + 1)) * 0.25;
            *(v15 + 124) = (vabds_f32((*&v151 - v154) * (*(&v152 + 1) - *&v153), (*(&v151 + 1) - *&v153) * (*&v152 - v154)) + vabds_f32((*&v153 - *(&v152 + 1)) * (*&v155 - *&v152), (v154 - *&v152) * (*(&v155 + 1) - *(&v152 + 1)))) * 0.5;
            *(v15 + 128) = v87;
            v91 = v195;
            *(v15 + 316) = v195;
            v92 = v192;
            *(v15 + 324) = v192;
            v93 = v193;
            *(v15 + 332) = v193;
            v94 = v194;
            goto LABEL_59;
          }

          if (this == 9)
          {
            v76 = v22 + 4;
            if (v22 + 4 > v12)
            {
              v107 = *(v9 + 56);
              v12 = v169 + v22;
              v108 = 116 * (v169 + v22);
              *(v9 + 16) = v108;
              v109 = malloc_type_realloc(v107, v108, 0x1000040DB6AEB77uLL);
              *(v9 + 56) = v109;
              v15 = v109 + 116 * v22;
            }

            v110 = v189;
            *(v15 + 84) = v189;
            v111 = v190;
            v112 = v191;
            *(v15 + 100) = v190;
            *(v15 + 108) = v112;
            *v15 = (((*&v110 + *(&v110 + 2)) + *&v111) + *&v112) * 0.25;
            *(v15 + 4) = (((*(&v110 + 1) + *(&v110 + 3)) + *(&v111 + 1)) + *(&v112 + 1)) * 0.25;
            *(v15 + 8) = (vabds_f32((*(&v110 + 2) - *&v110) * (*(&v111 + 1) - *(&v110 + 1)), (*(&v110 + 3) - *(&v110 + 1)) * (*&v111 - *&v110)) + vabds_f32((*(&v110 + 1) - *(&v111 + 1)) * (*&v112 - *&v111), (*&v110 - *&v111) * (*(&v112 + 1) - *(&v111 + 1)))) * 0.5;
            v113 = (4 * ((v56 ^ v23) & 1)) | (2 * (v56 & 1)) | v54 | v55;
            *(v15 + 12) = v113;
            v114 = v189;
            *(v15 + 200) = v189;
            v115 = v191;
            *(v15 + 208) = v191;
            v116 = v193;
            *(v15 + 216) = v193;
            v117 = HIDWORD(v114);
            v118 = *&v114;
            v119 = v196;
            *(v15 + 224) = v196;
            *(v15 + 116) = (((v118 + *&v115) + *&v116) + *&v119) * 0.25;
            *(v15 + 120) = (((*&v117 + *(&v115 + 1)) + *(&v116 + 1)) + *(&v119 + 1)) * 0.25;
            *(v15 + 124) = (vabds_f32((*&v115 - v118) * (*(&v116 + 1) - *&v117), (*(&v115 + 1) - *&v117) * (*&v116 - v118)) + vabds_f32((*&v117 - *(&v116 + 1)) * (*&v119 - *&v116), (v118 - *&v116) * (*(&v119 + 1) - *(&v116 + 1)))) * 0.5;
            *(v15 + 128) = v113;
            v120 = v191;
            *(v15 + 316) = v191;
            v121 = v192;
            *(v15 + 324) = v192;
            v122 = v193;
            *(v15 + 332) = v193;
            *(v15 + 340) = v191;
            *(v15 + 232) = ((*&v120 + *&v121) + *&v122) / 3.0;
            *(v15 + 236) = ((*(&v120 + 1) + *(&v121 + 1)) + *(&v122 + 1)) / 3.0;
            *(v15 + 240) = vabds_f32((*&v121 - *&v120) * (*(&v122 + 1) - *(&v120 + 1)), (*(&v121 + 1) - *(&v120 + 1)) * (*&v122 - *&v120)) * 0.5;
            *(v15 + 244) = v113;
            v123 = v195;
            *(v15 + 432) = v195;
            v124 = v192;
            *(v15 + 440) = v192;
            v125 = v193;
            *(v15 + 448) = v193;
            v126 = v194;
            *(v15 + 456) = v194;
            *(v15 + 348) = (((*&v123 + *&v124) + *&v125) + *&v126) * 0.25;
            *(v15 + 352) = (((*(&v123 + 1) + *(&v124 + 1)) + *(&v125 + 1)) + *(&v126 + 1)) * 0.25;
            *(v15 + 356) = (vabds_f32((*&v124 - *&v123) * (*(&v125 + 1) - *(&v123 + 1)), (*(&v124 + 1) - *(&v123 + 1)) * (*&v125 - *&v123)) + vabds_f32((*(&v123 + 1) - *(&v125 + 1)) * (*&v126 - *&v125), (*&v123 - *&v125) * (*(&v126 + 1) - *(&v125 + 1)))) * 0.5;
            *(v15 + 360) = v113;
            v15 += 464;
            goto LABEL_23;
          }
        }

LABEL_24:
        v186 = v67;
        v187 = v66;
        ++v56;
      }

      ++v23;
      *v68.i8 = v170;
      v188 = v68;
      v17 = -0.5;
      v27 = v176;
    }

    while (v171 != v168);
  }

  *(v9 + 64) = 0x34F72C234F72C235 * ((v15 - *(v9 + 56)) >> 2);
  return this;
}

void HGFractured::Effect::gen_glass_2(HGFractured::Effect *this, int a2, int a3, float a4)
{
  v158 = *MEMORY[0x277D85DE8];
  v6 = fmaxf(a3, 2.0);
  v7 = fmaxf(a2, 4.0);
  v8 = v6 * v7 + 4;
  v9 = 116 * v8;
  if (*(this + 2) >= 116 * v8)
  {
    v8 = *(this + 2) / 0x74uLL;
    v11 = *(this + 7);
  }

  else
  {
    v10 = *(this + 7);
    *(this + 2) = v9;
    v11 = malloc_type_realloc(v10, v9, 0x1000040DB6AEB77uLL);
    *(this + 7) = v11;
  }

  v134 = this;
  v12 = log2((2 * v6));
  v150 = -1090519040;
  v151 = -(a4 * 0.5);
  v152 = 1056964608;
  v153 = v151;
  v154 = 1056964608;
  v155 = a4 * 0.5;
  v156 = -1090519040;
  v157 = a4 * 0.5;
  if (v7 >= 1)
  {
    v13 = 0;
    v135 = 0;
    v14 = 6.28318531 / v7;
    v15 = 0.25 / v6;
    v16 = v12;
    v126 = v15;
    v127 = v14;
    v17 = v15;
    v18 = (v7 - 1);
    v132 = v7 + 3;
    v133 = v7 + 1;
    v130 = v7 + 4;
    v131 = v7 + 2;
    v19 = 0.0;
    v128 = v7;
    do
    {
      if (v13 + 1 > v8)
      {
        v20 = *(v134 + 7);
        v8 = v133 + v13;
        v21 = 116 * (v133 + v13);
        *(v134 + 2) = v21;
        v22 = malloc_type_realloc(v20, v21, 0x1000040DB6AEB77uLL);
        *(v134 + 7) = v22;
        v11 = &v22[116 * v13];
      }

      v19 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v19, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
      v23 = __sincosf_stret(v127 * v135);
      v129 = v135 + 1;
      v24 = __sincosf_stret(v127 * (v135 + 1));
      v25 = v24.__cosval * v126;
      *(v11 + 21) = v24.__cosval * v126;
      *(v11 + 22) = v24.__sinval * v126;
      *(v11 + 27) = v24.__cosval * v126;
      *(v11 + 28) = v24.__sinval * v126;
      v26 = COERCE_UNSIGNED_INT(v24.__sinval * v126);
      *(v11 + 25) = v23.__cosval * v126;
      *(v11 + 26) = v23.__sinval * v126;
      v27 = COERCE_UNSIGNED_INT(v23.__sinval * v126);
      *(v11 + 23) = 0;
      *(v11 + 24) = 0;
      *v11 = (((v23.__cosval * v126) + 0.0) + (v24.__cosval * v126)) / 3.0;
      *(v11 + 1) = (((v23.__sinval * v126) + 0.0) + (v24.__sinval * v126)) / 3.0;
      *(v11 + 2) = vabds_f32((0.0 - (v24.__cosval * v126)) * ((v23.__sinval * v126) - (v24.__sinval * v126)), (0.0 - (v24.__sinval * v126)) * ((v23.__cosval * v126) - (v24.__cosval * v126))) * 0.5;
      v28 = v135 & 1;
      *(v11 + 3) = (4 * v28) | (8 * (v19 < 0.5)) | v28;
      v29.i64[0] = __PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval));
      v29.i64[1] = __PAIR64__(LODWORD(v24.__sinval), LODWORD(v24.__cosval));
      v11 += 116;
      v137 = v29;
      v30 = 1;
      v31 = 2;
      ++v13;
      v32 = v23.__cosval * v126;
      while (1)
      {
        v19 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v19, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v43 = exp2((v16 * v30) / v18) * v17;
        v147 = LODWORD(v32) | (v27 << 32);
        v148 = vmulq_n_f32(v137, v43);
        v149 = LODWORD(v25) | (v26 << 32);
        v25 = v148.f32[2];
        v26 = v148.u32[3];
        v32 = v148.f32[0];
        v27 = v148.u32[1];
        v44 = clip(&v150, &v147, &v139, a4);
        if (v44 <= 5)
        {
          break;
        }

        if (v44 <= 7)
        {
          if (v44 != 6)
          {
            v138 = v32;
            v136 = v27;
            v45 = v13 + 3;
            if (v13 + 3 > v8)
            {
              v46 = *(v134 + 7);
              v47 = 116 * (v132 + v13);
              *(v134 + 2) = v47;
              v48 = malloc_type_realloc(v46, v47, 0x1000040DB6AEB77uLL);
              *(v134 + 7) = v48;
              v11 = &v48[116 * v13];
              v8 = v132 + v13;
              v28 = v135 & 1;
            }

            v49 = v11 + 316;
            v51 = *(&v139 + 1);
            v50 = v139;
            *(v11 + 84) = v139;
            *(v11 + 92) = v51;
            v52 = v140;
            v53 = v141;
            *(v11 + 100) = v140;
            *(v11 + 108) = v53;
            *v11 = (((*&v50 + *&v51) + *&v52) + *&v53) * 0.25;
            *(v11 + 1) = (((*(&v50 + 1) + *(&v51 + 1)) + *(&v52 + 1)) + *(&v53 + 1)) * 0.25;
            *(v11 + 2) = (vabds_f32((*&v51 - *&v50) * (*(&v52 + 1) - *(&v50 + 1)), (*(&v51 + 1) - *(&v50 + 1)) * (*&v52 - *&v50)) + vabds_f32((*(&v50 + 1) - *(&v52 + 1)) * (*&v53 - *&v52), (*&v50 - *&v52) * (*(&v53 + 1) - *(&v52 + 1)))) * 0.5;
            v54 = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
            *(v11 + 3) = v54;
            v55 = v139;
            *(v11 + 25) = v139;
            v56 = v141;
            *(v11 + 26) = v141;
            v57 = v144;
            *(v11 + 27) = v144;
            *(v11 + 28) = v139;
            *(v11 + 29) = ((*&v55 + *&v56) + *&v57) / 3.0;
            *(v11 + 30) = ((*(&v55 + 1) + *(&v56 + 1)) + *(&v57 + 1)) / 3.0;
            *(v11 + 31) = vabds_f32((*&v56 - *&v55) * (*(&v57 + 1) - *(&v55 + 1)), (*(&v56 + 1) - *(&v55 + 1)) * (*&v57 - *&v55)) * 0.5;
            *(v11 + 32) = v54;
            v58 = v144;
            *(v11 + 316) = v144;
            v59 = v141;
            *(v11 + 324) = v141;
            v60 = v142;
            *(v11 + 332) = v142;
            v61 = v143;
            goto LABEL_38;
          }

          v138 = v32;
          v136 = v27;
          v45 = v13 + 2;
          if (v13 + 2 > v8)
          {
            v101 = *(v134 + 7);
            v102 = 116 * (v131 + v13);
            *(v134 + 2) = v102;
            v103 = malloc_type_realloc(v101, v102, 0x1000040DB6AEB77uLL);
            *(v134 + 7) = v103;
            v11 = &v103[116 * v13];
            v8 = v131 + v13;
            v28 = v135 & 1;
          }

          v33 = v139;
          *(v11 + 84) = v139;
          v34 = v140;
          v35 = v141;
          *(v11 + 100) = v140;
          *(v11 + 108) = v35;
          *v11 = (((*&v33 + *(&v33 + 2)) + *&v34) + *&v35) * 0.25;
          *(v11 + 1) = (((*(&v33 + 1) + *(&v33 + 3)) + *(&v34 + 1)) + *(&v35 + 1)) * 0.25;
          *(v11 + 2) = (vabds_f32((*(&v33 + 2) - *&v33) * (*(&v34 + 1) - *(&v33 + 1)), (*(&v33 + 3) - *(&v33 + 1)) * (*&v34 - *&v33)) + vabds_f32((*(&v33 + 1) - *(&v34 + 1)) * (*&v35 - *&v34), (*&v33 - *&v34) * (*(&v35 + 1) - *(&v34 + 1)))) * 0.5;
          v36 = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
          *(v11 + 3) = v36;
          v37 = v139;
          *(v11 + 25) = v139;
          v38 = v141;
          *(v11 + 26) = v141;
          v39 = v142;
          *(v11 + 27) = v142;
          v40 = HIDWORD(v37);
          v41 = *&v37;
          v42 = v143;
          *(v11 + 28) = v143;
          *(v11 + 29) = (((v41 + *&v38) + *&v39) + *&v42) * 0.25;
          *(v11 + 30) = (((*&v40 + *(&v38 + 1)) + *(&v39 + 1)) + *(&v42 + 1)) * 0.25;
          *(v11 + 31) = (vabds_f32((*&v38 - v41) * (*(&v39 + 1) - *&v40), (*(&v38 + 1) - *&v40) * (*&v39 - v41)) + vabds_f32((*&v40 - *(&v39 + 1)) * (*&v42 - *&v39), (v41 - *&v39) * (*(&v42 + 1) - *(&v39 + 1)))) * 0.5;
          *(v11 + 32) = v36;
          v11 += 232;
LABEL_10:
          v13 = v45;
          v27 = v136;
          goto LABEL_11;
        }

        if (v44 == 8)
        {
          v138 = v32;
          v136 = v27;
          v45 = v13 + 3;
          if (v13 + 3 > v8)
          {
            v104 = *(v134 + 7);
            v105 = 116 * (v132 + v13);
            *(v134 + 2) = v105;
            v106 = malloc_type_realloc(v104, v105, 0x1000040DB6AEB77uLL);
            *(v134 + 7) = v106;
            v11 = &v106[116 * v13];
            v8 = v132 + v13;
            v28 = v135 & 1;
          }

          v49 = v11 + 316;
          v108 = *(&v139 + 1);
          v107 = v139;
          *(v11 + 84) = v139;
          *(v11 + 92) = v108;
          v109 = v140;
          v110 = v141;
          *(v11 + 100) = v140;
          *(v11 + 108) = v110;
          *v11 = (((*&v107 + *&v108) + *&v109) + *&v110) * 0.25;
          *(v11 + 1) = (((*(&v107 + 1) + *(&v108 + 1)) + *(&v109 + 1)) + *(&v110 + 1)) * 0.25;
          *(v11 + 2) = (vabds_f32((*&v108 - *&v107) * (*(&v109 + 1) - *(&v107 + 1)), (*(&v108 + 1) - *(&v107 + 1)) * (*&v109 - *&v107)) + vabds_f32((*(&v107 + 1) - *(&v109 + 1)) * (*&v110 - *&v109), (*&v107 - *&v109) * (*(&v110 + 1) - *(&v109 + 1)))) * 0.5;
          v54 = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
          *(v11 + 3) = v54;
          v111 = v139;
          *(v11 + 25) = v139;
          v112 = v141;
          *(v11 + 26) = v141;
          v113 = v142;
          *(v11 + 27) = v142;
          v114 = HIDWORD(v111);
          v115 = *&v111;
          v116 = v145;
          *(v11 + 28) = v145;
          *(v11 + 29) = (((v115 + *&v112) + *&v113) + *&v116) * 0.25;
          *(v11 + 30) = (((*&v114 + *(&v112 + 1)) + *(&v113 + 1)) + *(&v116 + 1)) * 0.25;
          *(v11 + 31) = (vabds_f32((*&v112 - v115) * (*(&v113 + 1) - *&v114), (*(&v112 + 1) - *&v114) * (*&v113 - v115)) + vabds_f32((*&v114 - *(&v113 + 1)) * (*&v116 - *&v113), (v115 - *&v113) * (*(&v116 + 1) - *(&v113 + 1)))) * 0.5;
          *(v11 + 32) = v54;
          v58 = v145;
          *(v11 + 316) = v145;
          v59 = v142;
          *(v11 + 324) = v142;
          v60 = v143;
          *(v11 + 332) = v143;
          v61 = v144;
LABEL_38:
          *(v49 + 3) = v61;
          *(v11 + 58) = (((*&v58 + *&v59) + *&v60) + *&v61) * 0.25;
          *(v11 + 59) = (((*(&v58 + 1) + *(&v59 + 1)) + *(&v60 + 1)) + *(&v61 + 1)) * 0.25;
          *(v11 + 60) = (vabds_f32((*&v59 - *&v58) * (*(&v60 + 1) - *(&v58 + 1)), (*(&v59 + 1) - *(&v58 + 1)) * (*&v60 - *&v58)) + vabds_f32((*(&v58 + 1) - *(&v60 + 1)) * (*&v61 - *&v60), (*&v58 - *&v60) * (*(&v61 + 1) - *(&v60 + 1)))) * 0.5;
          *(v11 + 61) = v54;
          v11 += 348;
          goto LABEL_10;
        }

        if (v44 == 9)
        {
          v138 = v32;
          v136 = v27;
          v45 = v13 + 4;
          if (v13 + 4 > v8)
          {
            v72 = *(v134 + 7);
            v73 = 116 * (v130 + v13);
            *(v134 + 2) = v73;
            v74 = malloc_type_realloc(v72, v73, 0x1000040DB6AEB77uLL);
            *(v134 + 7) = v74;
            v11 = &v74[116 * v13];
            v8 = v130 + v13;
            v28 = v135 & 1;
          }

          v75 = v139;
          *(v11 + 84) = v139;
          v76 = v140;
          v77 = v141;
          *(v11 + 100) = v140;
          *(v11 + 108) = v77;
          *v11 = (((*&v75 + *(&v75 + 2)) + *&v76) + *&v77) * 0.25;
          *(v11 + 1) = (((*(&v75 + 1) + *(&v75 + 3)) + *(&v76 + 1)) + *(&v77 + 1)) * 0.25;
          *(v11 + 2) = (vabds_f32((*(&v75 + 2) - *&v75) * (*(&v76 + 1) - *(&v75 + 1)), (*(&v75 + 3) - *(&v75 + 1)) * (*&v76 - *&v75)) + vabds_f32((*(&v75 + 1) - *(&v76 + 1)) * (*&v77 - *&v76), (*&v75 - *&v76) * (*(&v77 + 1) - *(&v76 + 1)))) * 0.5;
          v78 = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
          *(v11 + 3) = v78;
          v79 = v139;
          *(v11 + 25) = v139;
          v80 = v141;
          *(v11 + 26) = v141;
          v81 = v143;
          *(v11 + 27) = v143;
          v82 = HIDWORD(v79);
          v83 = *&v79;
          v84 = v146;
          *(v11 + 28) = v146;
          *(v11 + 29) = (((v83 + *&v80) + *&v81) + *&v84) * 0.25;
          *(v11 + 30) = (((*&v82 + *(&v80 + 1)) + *(&v81 + 1)) + *(&v84 + 1)) * 0.25;
          *(v11 + 31) = (vabds_f32((*&v80 - v83) * (*(&v81 + 1) - *&v82), (*(&v80 + 1) - *&v82) * (*&v81 - v83)) + vabds_f32((*&v82 - *(&v81 + 1)) * (*&v84 - *&v81), (v83 - *&v81) * (*(&v84 + 1) - *(&v81 + 1)))) * 0.5;
          *(v11 + 32) = v78;
          v85 = v141;
          *(v11 + 316) = v141;
          v86 = v142;
          *(v11 + 324) = v142;
          v87 = v143;
          *(v11 + 332) = v143;
          *(v11 + 340) = v141;
          *(v11 + 58) = ((*&v85 + *&v86) + *&v87) / 3.0;
          *(v11 + 59) = ((*(&v85 + 1) + *(&v86 + 1)) + *(&v87 + 1)) / 3.0;
          *(v11 + 60) = vabds_f32((*&v86 - *&v85) * (*(&v87 + 1) - *(&v85 + 1)), (*(&v86 + 1) - *(&v85 + 1)) * (*&v87 - *&v85)) * 0.5;
          *(v11 + 61) = v78;
          v88 = v145;
          *(v11 + 54) = v145;
          v89 = v142;
          *(v11 + 55) = v142;
          v90 = v143;
          *(v11 + 56) = v143;
          v91 = v144;
          *(v11 + 57) = v144;
          *(v11 + 87) = (((*&v88 + *&v89) + *&v90) + *&v91) * 0.25;
          *(v11 + 88) = (((*(&v88 + 1) + *(&v89 + 1)) + *(&v90 + 1)) + *(&v91 + 1)) * 0.25;
          *(v11 + 89) = (vabds_f32((*&v89 - *&v88) * (*(&v90 + 1) - *(&v88 + 1)), (*(&v89 + 1) - *(&v88 + 1)) * (*&v90 - *&v88)) + vabds_f32((*(&v88 + 1) - *(&v90 + 1)) * (*&v91 - *&v90), (*&v88 - *&v90) * (*(&v91 + 1) - *(&v90 + 1)))) * 0.5;
          *(v11 + 90) = v78;
          v11 += 464;
          goto LABEL_10;
        }

LABEL_12:
        ++v30;
        v31 += 2;
      }

      if (v44 > 3)
      {
        if (v44 == 4)
        {
          v138 = v32;
          v92 = v13 + 1;
          if (v13 + 1 > v8)
          {
            v117 = *(v134 + 7);
            v118 = 116 * (v133 + v13);
            *(v134 + 2) = v118;
            v119 = malloc_type_realloc(v117, v118, 0x1000040DB6AEB77uLL);
            *(v134 + 7) = v119;
            v11 = &v119[116 * v13];
            v8 = v133 + v13;
            v28 = v135 & 1;
          }

          v121 = *(&v139 + 1);
          v120 = v139;
          *(v11 + 84) = v139;
          *(v11 + 92) = v121;
          v122 = HIDWORD(v120);
          v123 = *&v120;
          v124 = v140;
          v125 = v141;
          *(v11 + 100) = v140;
          *(v11 + 108) = v125;
          *v11 = (((v123 + *&v121) + *&v124) + *&v125) * 0.25;
          *(v11 + 1) = (((*&v122 + *(&v121 + 1)) + *(&v124 + 1)) + *(&v125 + 1)) * 0.25;
          v100 = vabds_f32((*&v121 - v123) * (*(&v124 + 1) - *&v122), (*(&v121 + 1) - *&v122) * (*&v124 - v123)) + vabds_f32((*&v122 - *(&v124 + 1)) * (*&v125 - *&v124), (v123 - *&v124) * (*(&v125 + 1) - *(&v124 + 1)));
          goto LABEL_42;
        }

        v138 = v32;
        if (v13 + 2 > v8)
        {
          v62 = *(v134 + 7);
          v63 = 116 * (v131 + v13);
          *(v134 + 2) = v63;
          v64 = malloc_type_realloc(v62, v63, 0x1000040DB6AEB77uLL);
          *(v134 + 7) = v64;
          v11 = &v64[116 * v13];
          v8 = v131 + v13;
          v28 = v135 & 1;
        }

        v65 = v139;
        *(v11 + 84) = v139;
        v66 = v140;
        v67 = v141;
        *(v11 + 100) = v140;
        *(v11 + 108) = v67;
        *v11 = (((*&v65 + *(&v65 + 2)) + *&v66) + *&v67) * 0.25;
        *(v11 + 1) = (((*(&v65 + 1) + *(&v65 + 3)) + *(&v66 + 1)) + *(&v67 + 1)) * 0.25;
        *(v11 + 2) = (vabds_f32((*(&v65 + 2) - *&v65) * (*(&v66 + 1) - *(&v65 + 1)), (*(&v65 + 3) - *(&v65 + 1)) * (*&v66 - *&v65)) + vabds_f32((*(&v65 + 1) - *(&v66 + 1)) * (*&v67 - *&v66), (*&v65 - *&v66) * (*(&v67 + 1) - *(&v66 + 1)))) * 0.5;
        v68 = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
        *(v11 + 3) = v68;
        v69 = v139;
        *(v11 + 25) = v139;
        v70 = v141;
        *(v11 + 26) = v141;
        v71 = v142;
        *(v11 + 27) = v142;
        *(v11 + 28) = v139;
        *(v11 + 29) = ((*&v69 + *&v70) + *&v71) / 3.0;
        *(v11 + 30) = ((*(&v69 + 1) + *(&v70 + 1)) + *(&v71 + 1)) / 3.0;
        *(v11 + 31) = vabds_f32((*&v70 - *&v69) * (*(&v71 + 1) - *(&v69 + 1)), (*(&v70 + 1) - *(&v69 + 1)) * (*&v71 - *&v69)) * 0.5;
        *(v11 + 32) = v68;
        v11 += 232;
        v13 += 2;
LABEL_11:
        v32 = v138;
        goto LABEL_12;
      }

      if (v44 == 3)
      {
        v138 = v32;
        v92 = v13 + 1;
        if (v13 + 1 > v8)
        {
          v93 = *(v134 + 7);
          v8 = v133 + v13;
          v94 = 116 * (v133 + v13);
          *(v134 + 2) = v94;
          v95 = malloc_type_realloc(v93, v94, 0x1000040DB6AEB77uLL);
          *(v134 + 7) = v95;
          v11 = &v95[116 * v13];
          v28 = v135 & 1;
        }

        v96 = v139;
        v97 = *&v140;
        v98 = HIDWORD(v140);
        *&v99 = v140;
        *(&v99 + 1) = v139;
        *(v11 + 84) = v139;
        *(v11 + 100) = v99;
        *v11 = ((*&v96 + *(&v96 + 2)) + v97) / 3.0;
        *(v11 + 1) = ((*(&v96 + 1) + *(&v96 + 3)) + *&v98) / 3.0;
        v100 = vabds_f32((*(&v96 + 2) - *&v96) * (*&v98 - *(&v96 + 1)), (*(&v96 + 3) - *(&v96 + 1)) * (v97 - *&v96));
LABEL_42:
        *(v11 + 2) = v100 * 0.5;
        *(v11 + 3) = v31 & 2 | (4 * ((v30 ^ v135) & 1)) | (8 * (v19 < 0.5)) | v28;
        v11 += 116;
        v13 = v92;
        goto LABEL_11;
      }

      if (v44 >= 3)
      {
        goto LABEL_12;
      }

      ++v135;
    }

    while (v129 != v128);
  }

  *(v134 + 8) = 0x34F72C234F72C235 * (&v11[-*(v134 + 7)] >> 2);
}

char *HGFractured::Effect::gen_brick(HGFractured::Effect *this, int a2, int a3, float a4, float a5)
{
  v10 = (a2 + 1) * a3;
  v11 = 116 * v10;
  v12 = *(this + 2);
  result = *(this + 7);
  if (v12 < 116 * v10)
  {
    *(this + 2) = v11;
    result = malloc_type_realloc(result, v11, 0x1000040DB6AEB77uLL);
    *(this + 7) = result;
  }

  *(this + 8) = v10;
  v14 = 1.0 / a2;
  v15 = a4 / a3;
  v16 = a4 * 0.5;
  v17 = v14 * v15;
  v18 = -(a4 * 0.5);
  v19 = a3 - 1;
  if (a3 <= 1)
  {
    v33 = -0.5;
    v34 = (((v18 - v16) + v16) + v16) * 0.25;
    if (a2 < 1)
    {
      v40 = 0;
      v41 = 8;
      v38 = result;
    }

    else
    {
      v35 = 0;
      v36 = 0.0;
      v37 = 1.0;
      v38 = result;
      v33 = -0.5;
      do
      {
        v39 = v33;
        v33 = (v14 * (((a5 * -0.5) + -0.5) + v37)) + -0.5;
        v36 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v36, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v38[21] = v39;
        *(v38 + 22) = vdupq_lane_s64(__SPAIR64__(LODWORD(v33), LODWORD(v18)), 0);
        v38[26] = v16;
        v38[27] = v39;
        v38[28] = v16;
        v37 = (v35 + 2);
        *v38 = (v39 + (v33 + (v39 + v33))) * 0.25;
        v38[1] = v34;
        v38[2] = v17;
        *(v38 + 3) = (4 * (v35 & 1)) | (8 * (v36 < 0.5)) | v35 & 1;
        v38 += 29;
        ++v35;
      }

      while (a2 != v35);
      v40 = a2 & 1;
      v41 = 8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v36, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5);
    }

    v38[21] = v33;
    v38[22] = v18;
    v38[23] = 0.5;
    v38[24] = v18;
    v38[25] = 0.5;
    v38[26] = v16;
    v38[27] = v33;
    v38[28] = v16;
    *v38 = (v33 + ((v33 + 0.5) + 0.5)) * 0.25;
    v38[1] = v34;
    v38[2] = v17;
    v74 = v41 | (4 * v40) | v40;
  }

  else
  {
    v20 = -0.5;
    v21 = (a5 * 0.11803) + -0.5;
    v22 = v15 - v16;
    v23 = a2 - (v21 == 0.0);
    v24 = (((v18 - v16) + v22) + v22) * 0.25;
    if (v23 < 1)
    {
      v31 = 0;
      v32 = 0x3D95DBD03CB5F4C0;
      v29 = result;
    }

    else
    {
      v25 = 0;
      v26 = 0x3E2C210C3F1E3779;
      v27 = 1.0;
      v28 = vdup_n_s32(0x33800000u);
      v29 = result;
      v20 = -0.5;
      do
      {
        v30 = v20;
        v20 = (v14 * (v21 + v27)) + -0.5;
        v26 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v26, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v28);
        *(v29 + 21) = v30;
        *(v29 + 88) = vdupq_lane_s64(__SPAIR64__(LODWORD(v20), LODWORD(v18)), 0);
        *(v29 + 26) = v22;
        *(v29 + 27) = v30;
        *(v29 + 28) = v22;
        v27 = (v25 + 2);
        *v29 = (v30 + (v20 + (v30 + v20))) * 0.25;
        *(v29 + 1) = v24;
        *(v29 + 2) = v17;
        *(v29 + 3) = (4 * (v25 & 1)) | (8 * (v26.f32[1] < 0.5)) | v25 & 1;
        v29 += 116;
        ++v25;
      }

      while (v23 != v25);
      v31 = v23 & 1;
      v32 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v26, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), vdup_n_s32(0x33800000u));
    }

    *(v29 + 21) = v20;
    *(v29 + 22) = v18;
    *(v29 + 23) = 1056964608;
    *(v29 + 24) = v18;
    *(v29 + 25) = 1056964608;
    *(v29 + 26) = v22;
    *(v29 + 27) = v20;
    *(v29 + 28) = v22;
    *v29 = (v20 + ((v20 + 0.5) + 0.5)) * 0.25;
    *(v29 + 1) = v24;
    *(v29 + 2) = v17;
    *(v29 + 3) = (4 * v31) | (8 * (v32.f32[1] < 0.5)) | v31;
    v42 = (v29 + 116);
    if (a3 == 2)
    {
      v38 = v42;
    }

    else
    {
      v58 = 1;
      v59 = vdup_n_s32(0x33800000u);
      do
      {
        if (v58)
        {
          v64 = 0.0;
        }

        else
        {
          v64 = -0.5;
        }

        v65 = v64 + ((v32.f32[0] + -0.5) * a5);
        v66 = (v15 * (v58 + 1.0)) - v16;
        v60 = a2 - (v65 == 0.0);
        v67 = (v14 * (v65 + 1.0)) + -0.5;
        v68 = v66 - v15;
        v69 = 2 * (v58 & 1);
        v70 = v68 + v68;
        if (v60 <= 0)
        {
          LOBYTE(v60) = 0;
          v61 = ((v70 + v66) + v66) * 0.25;
          v62 = -0.5;
        }

        else
        {
          v71 = 0;
          v61 = ((v70 + v66) + v66) * 0.25;
          v62 = -0.5;
          do
          {
            v72 = v62;
            v62 = v67;
            v32 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v32, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v59);
            v42[21] = v72;
            v42[22] = v68;
            v42[23] = v67;
            v42[24] = v68;
            v42[25] = v67;
            v42[26] = v66;
            v42[27] = v72;
            v42[28] = v66;
            v73 = v65 + (v71 + 2);
            *v42 = (v72 + (v62 + (v72 + v62))) * 0.25;
            v42[1] = v61;
            v42[2] = v17;
            *(v42 + 3) = v71 & 1 | (4 * ((v71 ^ v58) & 1)) | (8 * (v32.f32[1] < 0.5)) | v69;
            v42 += 29;
            ++v71;
            v67 = (v14 * v73) + -0.5;
          }

          while (v60 != v71);
        }

        v42[21] = v62;
        v42[22] = v68;
        v42[23] = v67;
        v42[24] = v68;
        v42[25] = 0.5;
        v42[26] = v66;
        v42[27] = v62;
        v42[28] = v66;
        *v42 = (v62 + ((v62 + v67) + 0.5)) * 0.25;
        v42[1] = v61;
        v42[2] = v17;
        v63 = (4 * ((v60 ^ v58++) & 1)) | v60 & 1 | v69;
        v38 = v42 + 29;
        v32 = vmul_f32(vcvt_f32_u32((*&vmla_s32(0x2B0843009E3779, vcvt_n_s32_f32(v32, 0x18uLL), 0xFD43FD00BB3555) & 0xFFFFFF00FFFFFFLL)), v59);
        *(v42 + 3) = v63 | (8 * (v32.f32[1] < 0.5));
        v42 += 29;
      }

      while (v58 != v19);
    }

    v43 = v19 & 1;
    v44 = 0.0;
    v45 = -0.5;
    if ((v19 & 1) == 0)
    {
      v44 = -0.5;
    }

    v46 = v44 + ((v32.f32[0] + -0.5) * a5);
    v47 = (v14 * (v46 + 1.0)) + -0.5;
    v48 = v16 - v15;
    v49 = v32.f32[1];
    v50 = a2 - v43;
    if (a2 <= v43)
    {
      v57 = 0;
      v52 = (((v48 + v48) + v16) + v16) * 0.25;
      v51 = 2 * v43;
    }

    else
    {
      v51 = 2 * v43;
      v52 = (((v48 + v48) + v16) + v16) * 0.25;
      v53 = 2;
      do
      {
        v54 = v45;
        v45 = v47;
        v49 = vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v49, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL);
        v38[21] = v54;
        v38[22] = v48;
        v38[23] = v47;
        v38[24] = v48;
        v38[25] = v47;
        v38[26] = v16;
        v38[27] = v54;
        v38[28] = v16;
        *v38 = (v54 + (v47 + (v54 + v47))) * 0.25;
        v38[1] = v52;
        v38[2] = v17;
        *(v38 + 3) = (v53 - 2) & 1 | (4 * (((v53 - 2) ^ v19) & 1)) | (8 * (v49 < 0.5)) | v51;
        v38 += 29;
        v47 = (v14 * (v46 + v53)) + -0.5;
        v55 = v53 + 1;
        v56 = v53++ - 1;
      }

      while (v56 < v50);
      v57 = v55 - 2;
    }

    v38[21] = v45;
    v38[22] = v48;
    v38[23] = v47;
    v38[24] = v48;
    v38[25] = 0.5;
    v38[26] = v16;
    v38[27] = v45;
    v38[28] = v16;
    *v38 = (v45 + ((v45 + v47) + 0.5)) * 0.25;
    v38[1] = v52;
    v38[2] = v17;
    v74 = (4 * ((v57 ^ v19) & 1)) | v57 & 1 | v51 | (8 * (vcvts_n_f32_u32((16598013 * vcvts_n_s32_f32(v49, 0x18uLL) + 2820163) & 0xFFFFFF, 0x18uLL) < 0.5));
  }

  *(v38 + 3) = v74;
  *(this + 8) = 0x34F72C234F72C235 * ((v38 - result) >> 2);
  return result;
}

uint64_t HGFractured::Effect::build(HGFractured::Effect *this)
{
  if ((*(this + 120) & 2) == 0)
  {
    return 1;
  }

  v2 = *(this + 28);
  if (!v2)
  {
    return 0;
  }

  *(this + 29) = v2();
  *(this + 30) &= ~2u;
  return 1;
}

uint64_t HGFractured::Effect::apply(HGFractured::Effect *this, float a2, double a3, __n128 a4, double a5, int32x4_t a6, __n128 a7, __n128 a8, float32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(this + 30);
  if ((v17 & 4) != 0 || *(this + 22) != a2 || *(this + 23) != *&a3)
  {
    v18 = fabsf(a2);
    if (a2 >= 0.0)
    {
      v18 = a2;
    }

    v19 = fabsf(*&a3);
    if (*&a3 >= 0.0)
    {
      v19 = *&a3;
    }

    v20 = *(this + 50);
    if (v18 >= v20)
    {
      v22 = *(this + 51);
      if (v18 > v22)
      {
        a9.f32[0] = 1.0 - v22;
        v23 = fminf(fmaxf((v18 - v22) / (1.0 - v22), 0.0), 1.0);
        a8.n128_f32[0] = v23 * v23;
        v18 = v22 + ((1.0 - v22) * ((v23 * v23) * (3.0 - (v23 + v23))));
      }
    }

    else
    {
      a7.n128_u32[1] = 0;
      v21 = fminf(fmaxf(v18 / v20, 0.0), 1.0);
      a8.n128_u32[0] = 3.0;
      v18 = v20 * ((v21 * v21) * (3.0 - (v21 + v21)));
    }

    if (v19 >= v20)
    {
      v25 = *(this + 51);
      if (v19 > v25)
      {
        a8.n128_f32[0] = 1.0 - v25;
        v26 = fminf(fmaxf((v19 - v25) / (1.0 - v25), 0.0), 1.0);
        a9.i64[0] = COERCE_UNSIGNED_INT(3.0);
        v19 = v25 + ((1.0 - v25) * ((v26 * v26) * (3.0 - (v26 + v26))));
      }
    }

    else
    {
      a7.n128_u32[1] = 0;
      v24 = fminf(fmaxf(v19 / v20, 0.0), 1.0);
      a8.n128_u32[0] = 3.0;
      v19 = v20 * ((v24 * v24) * (3.0 - (v24 + v24)));
    }

    if (a2 >= 0.0)
    {
      v27 = v18;
    }

    else
    {
      v27 = -v18;
    }

    if (*&a3 >= 0.0)
    {
      v28 = v19;
    }

    else
    {
      v28 = -v19;
    }

    v29 = *(this + 29);
    if (v29)
    {
      if ((v17 & 4) == 0)
      {
        if (*(this + 22) != v27)
        {
          v29(this, 0, v27);
        }

        if (!*(this + 35) || *(this + 23) == v28)
        {
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      v29(this, 0, v27);
      if (*(this + 35))
      {
LABEL_35:
        (*(this + 29))(this, v28);
      }

LABEL_39:
      *(this + 22) = v27;
      *(this + 23) = v28;
      *(this + 30) &= ~4u;
      return 1;
    }

    if ((v17 & 4) == 0 && *(this + 22) == v27)
    {
      v30 = *(this + 35);
      if (!v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      a4.n128_u64[0] = 0;
      a6.i64[0] = 0;
      a7.n128_u32[0] = 1.0;
      *&a3 = v27;
      emit(this, *(this + 12), *(this + 7), *(this + 8), *(this + 31), 0, *(this + 34), *&a3, a4, 0.0, a6, a7, a8, a9, a15, a16, 0, 0, 0, 1065353216);
      v30 = *(this + 35);
      if (!v30)
      {
        goto LABEL_39;
      }

      if ((v17 & 4) != 0)
      {
LABEL_38:
        a4.n128_u64[0] = 0;
        a6.i64[0] = 0;
        a7.n128_u32[0] = 1.0;
        *&a3 = v28;
        emit(this, *(this + 13), *(this + 7), *(this + 8), *(this + 31), v30, *(this + 34), *&a3, a4, 0.0, a6, a7, a8, a9, a15, a16, 0, 0, 0, 1065353216);
        goto LABEL_39;
      }
    }

    if (*(this + 23) == v28)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  return 1;
}

uint64_t HGFractured::Effect::GetProjectionMatrix(uint64_t this, double *a2, HGRect a3)
{
  v3 = *(this + 80) - *(this + 72);
  v4 = *(this + 84) - *(this + 76);
  v5 = vcvtd_n_f64_s32(v3, 1uLL) / (*(this + 188) - *(this + 180));
  v6 = vcvtd_n_f64_s32(v4, 1uLL) / (*(this + 192) - *(this + 184));
  v7 = (v5 + v5) * a3.var0 / v3 - v5;
  v8 = (v5 + v5) * a3.var2 / v3 - v5;
  v9 = *(this + 196);
  v10 = ((v6 + v6) * a3.var1 / v4 - v6) * v9;
  v11 = ((v6 + v6) * a3.var3 / v4 - v6) * v9;
  v12 = *(this + 152) + 0.0000305175781;
  LOBYTE(v3) = *(this + 128);
  *&v5 = v8 - v7;
  *&v6 = v11 - v10;
  v13 = v12 + -0.0000305175781;
  v14 = *&v5;
  *a2 = 2.0 / *&v5;
  v15 = *&v6;
  _Q1 = 0uLL;
  *(a2 + 1) = 0u;
  *(a2 + 3) = 0u;
  a2[5] = 2.0 / v15;
  if (v3)
  {
    v17 = v13;
    *(a2 + 3) = 0uLL;
    *(a2 + 4) = 0uLL;
    a2[10] = -2.0 / v17;
    a2[11] = 0.0;
    __asm { FMOV            V1.2D, #1.0 }

    *&_Q1 = -(v12 + 0.0000305175781) / v17;
    a2[12] = -(v8 + v7) / v14;
    a2[13] = -(v11 + v10) / v15;
  }

  else
  {
    a2[6] = 0.0;
    a2[7] = 0.0;
    a2[8] = (v8 + v7) / v14;
    a2[9] = (v11 + v10) / v15;
    a2[10] = -(v12 + 0.0000305175781) / v13;
    a2[11] = -1.0;
    *&_Q1 = v12 * -2.0 * 0.0000305175781 / v13;
    a2[12] = 0.0;
    a2[13] = 0.0;
  }

  *(a2 + 7) = _Q1;
  return this;
}

double HGFractured::Effect::GetModelviewMatrix(HGFractured::Effect *this, double *a2)
{
  *a2 = 1.0;
  *(a2 + 1) = 0u;
  *(a2 + 3) = 0u;
  a2[5] = 1.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a2[10] = 1.0;
  a2[11] = 0.0;
  a2[12] = 0.0;
  a2[13] = 0.0;
  result = *(this + 44) + -1.0 + (*(this + 34) * -0.5);
  a2[14] = result;
  a2[15] = 1.0;
  return result;
}

double HGFractured::Effect::GetTextureMatrix(HGFractured::Effect *this, double *a2)
{
  v2 = *(this + 45);
  v3 = *(this + 47) - v2;
  v4 = v3;
  *a2 = v4;
  *(a2 + 1) = 0u;
  *(a2 + 3) = 0u;
  a2[5] = v4;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = xmmword_2603426F0;
  v5 = vcvts_n_f32_s32(v3, 1uLL);
  a2[12] = (v5 + v2);
  a2[13] = ((v5 * *(this + 33)) + *(this + 46));
  result = 0.0;
  *(a2 + 7) = xmmword_260342700;
  return result;
}

void HGFractured::Effect::Render(HGFractured::Effect *this, HGGPURenderer *a2, HGRect a3, float a4, float a5, char a6)
{
  v7 = a5;
  v8 = a4;
  if (*(this + 35))
  {
    v10 = fabsf(*(this + 23)) < fabsf(*(this + 22));
    if (*(this + 156))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    if (*(this + 156))
    {
      goto LABEL_20;
    }
  }

  if (v10)
  {
    a4 = a5;
  }

  if (a4 < 1.0)
  {
LABEL_20:
    glBlendFunc(0x302u, 0x303u);
    glEnable(0xBE2u);
    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if (v11 > 0.0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (*(this + 34) == 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v10)
  {
    v11 = a5;
  }

  else
  {
    v11 = v8;
  }

  if (v11 <= 0.0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v12 = this + 96;
  glVertexAttribPointer(0, 3, 0x1406u, 0, 48, *(this + v10 + 12));
  glEnableVertexAttribArray(0);
  if (a6)
  {
    glVertexAttribPointer(8u, 2, 0x1406u, 0, 48, (*v12 + 32));
    glEnableVertexAttribArray(8u);
  }

  if ((a6 & 2) != 0)
  {
    glVertexAttribPointer(9u, 2, 0x1406u, 0, 48, (*v12 + 40));
    glEnableVertexAttribArray(9u);
  }

  glVertexAttribPointer(0xAu, 4, 0x1406u, 0, 48, (*&v12[8 * v10] + 16));
  glEnableVertexAttribArray(0xAu);
  if (*(this + 34) != 0.0)
  {
LABEL_13:
    glCullFace(0x405u);
    glEnable(0xB44u);
  }

LABEL_14:
  glDrawArrays(4 * (*(this + 31) != 1), 0, *(this + 28));
  if (*(this + 35))
  {
    if (v10)
    {
      v7 = v8;
    }

    if (v7 < 1.0 || *(this + 156))
    {
      glBlendFunc(0x302u, 0x303u);
      glEnable(0xBE2u);
    }

    else
    {
      glDisable(0xBE2u);
    }

    v13 = *(this + 31) != 1;
    v14 = (this + 8 * !v10);
    glVertexAttribPointer(0, 3, 0x1406u, 0, 48, v14[12]);
    glVertexAttribPointer(0xAu, 4, 0x1406u, 0, 48, v14[12] + 16);
    glDrawArrays(4 * v13, 0, *(this + 28));
    if (v7 < 1.0 || (*(this + 156) & 1) != 0)
    {
      goto LABEL_36;
    }
  }

  else if (v11 < 1.0 || *(this + 156))
  {
LABEL_36:
    glDisable(0xBE2u);
  }

  if (*(this + 34) != 0.0)
  {
    glDisable(0xB44u);
  }

  glDisableVertexAttribArray(0xAu);
  if ((a6 & 2) != 0)
  {
    glDisableVertexAttribArray(9u);
  }

  if (a6)
  {
    glDisableVertexAttribArray(8u);
  }

  glDisableVertexAttribArray(0);
}

uint64_t clip(uint64_t a1, float *a2, uint64_t a3, float a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a4 * 0.5;
  v6 = *a2;
  v5 = a2[1];
  v7 = fabsf(*a2) <= 0.5;
  v8 = fabsf(v5) <= (a4 * 0.5) && v7;
  v9 = a2[2];
  v10 = a2[3];
  v11 = fabsf(v9);
  if (fabsf(v10) > v4 || v11 > 0.5)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  v14 = a2[4];
  v15 = a2[5];
  v16 = fabsf(v14);
  if (fabsf(v15) > v4 || v16 > 0.5)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = fabsf(a2[6]);
  if (fabsf(a2[7]) > v4 || v19 > 0.5)
  {
    v21 = 0;
  }

  else
  {
    v21 = 8;
  }

  v22 = v13 | v8;
  v23 = v18 | v21;
  v24 = -(v9 * a4);
  v25 = 2 * (v10 > (v9 * a4));
  v26 = v10 >= v24;
  if (v10 > 0.0)
  {
    v26 = v10 > v24;
    v25 = 2 * (v10 >= (v9 * a4));
  }

  v27 = (v25 | v26) ^ (v25 >> 1);
  v28 = v14 * a4;
  v29 = -(v14 * a4);
  v30 = 2 * (v15 >= v28);
  v31 = v15 > v29;
  if (v15 > 0.0)
  {
    v31 = v15 >= v29;
    v30 = 2 * (v15 > v28);
  }

  v32 = (v30 | v31) ^ (v30 >> 1);
  v95[1] = v27;
  v96 = v32;
  if (v27 == v32)
  {
    v32 = v27;
    if (((v6 - v14) * (v10 - v15)) >= ((v9 - v14) * (v5 - v15)))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v32 < v27)
  {
LABEL_30:
    v32 |= 4u;
    v96 = v32;
  }

LABEL_31:
  v33 = 0;
  v34 = 0;
  v35 = v22 | v23;
  v97 = v32;
  v95[0] = v27;
  do
  {
    v36 = v33 + 1;
    v37 = v95[v33];
    v38 = (v33 + 1) & 3;
    v39 = (v33 + 1) & 3;
    v40 = v95[v39];
    v41 = (1 << v33) & v35;
    if (v41)
    {
      v42 = &a2[2 * v33];
      v43 = (v34 + 1);
      *(a3 + 8 * v34) = *v42;
      if ((v35 >> v38))
      {
        goto LABEL_32;
      }

      if (v37 == v40)
      {
        if (v37)
        {
          v44 = v37;
          v34 = (v34 + 1);
          if (*v42 == *(a1 + 8 * (v37 & 3)))
          {
            goto LABEL_33;
          }
        }

        else
        {
          v44 = v37;
          v34 = (v34 + 1);
          if (v42[1] == *(a1 + 8 * (v37 & 2) + 4))
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v44 = v37 + 1;
      }
    }

    else if (v37 == v40)
    {
      v44 = v95[v33];
      v43 = v34;
      if (((v35 >> v38) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v44 = v95[v33];
      v43 = v34;
    }

    if (v38)
    {
      v45 = (1 << v38) & v35;
      v46 = &a2[2 * ((v33 - 1) & 3)];
      v34 = v43;
      do
      {
        if (v40 == v44 && v37 != v40 && v45)
        {
          break;
        }

        v47 = v44 + 1;
        v48 = *(a1 + 8 * ((v44 + 1) & 3));
        v49 = *(a1 + 8 * (v44 & 3));
        v50 = *&a2[2 * v33];
        v51 = *&a2[2 * v39];
        v52 = vsub_f32(v50, v51);
        v53 = vsub_f32(v49, v48);
        v54 = vmul_f32(vrev64_s32(v53), v52);
        v55 = vmul_f32(v50, vrev64_s32(v51));
        v56 = v49.f32[1];
        v57 = vdiv_f32(vsub_f32(vmul_n_f32(v53, vsub_f32(v55, vdup_lane_s32(v55, 1)).f32[0]), vmul_n_f32(v52, vmuls_lane_f32(v49.f32[0], v48, 1) - vmuls_lane_f32(v48.f32[0], v49, 1))), vdup_lane_s32(vsub_f32(v54, vdup_lane_s32(v54, 1)), 0));
        *(a3 + 8 * v34) = v57;
        v58 = vsub_f32(v48, v49);
        v59 = vsub_f32(v57, v49);
        v59.i32[0] = vdiv_f32(v59, v58).u32[0];
        if (fabsf(v58.f32[0]) <= vabds_f32(v48.f32[1], v56))
        {
          v59.f32[0] = v59.f32[1] / (v48.f32[1] - v56);
        }

        if (v59.f32[0] < 0.0 || v59.f32[0] > 1.0)
        {
          if (v44 < v40)
          {
            v61.i32[1] = v48.i32[1];
            v61.f32[0] = *v46;
            v62 = *&a2[2 * (v33 ^ 2)];
            v63 = vsub_f32(v61, v62);
            if (vmul_lane_f32(v63, v63, 1).f32[0] > ((v46[1] - v62.f32[1]) * vsub_f32(v48, v62).f32[0]))
            {
              *(a3 + 8 * v34) = v48;
              v34 = (v34 + 1);
            }
          }
        }

        else
        {
          v34 = (v34 + 1);
        }

        ++v44;
      }

      while (v40 + 1 != v47);
    }

    else
    {
      if (v41)
      {
        if (v8)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v64 = *(a1 + 8 * (v44 & 3));
        v65 = *(a1 + 8 * ((v44 + 1) & 3));
        v66 = *&a2[2 * v33];
        v67 = *&a2[2 * v39];
        v68 = vsub_f32(v66, v67);
        v69 = vsub_f32(v64, v65);
        v70 = vmul_f32(vrev64_s32(v69), v68);
        v71 = vmul_f32(v66, vrev64_s32(v67));
        v72 = v65.f32[1];
        v73 = v64.f32[1];
        v74 = vdiv_f32(vsub_f32(vmul_n_f32(v69, vsub_f32(v71, vdup_lane_s32(v71, 1)).f32[0]), vmul_n_f32(v68, vmuls_lane_f32(v64.f32[0], v65, 1) - vmuls_lane_f32(v65.f32[0], v64, 1))), vdup_lane_s32(vsub_f32(v70, vdup_lane_s32(v70, 1)), 0));
        *(a3 + 8 * v43) = v74;
        v75 = vsub_f32(v65, v64);
        v76 = vsub_f32(v74, v64);
        v76.i32[0] = vdiv_f32(v76, v75).u32[0];
        if (fabsf(v75.f32[0]) <= vabds_f32(v72, v73))
        {
          v76.f32[0] = v76.f32[1] / (v72 - v73);
        }

        v78 = v76.f32[0] <= 1.0 && v76.f32[0] >= 0.0;
        v43 = (v43 + v78);
        if (v8)
        {
LABEL_32:
          v34 = v43;
          goto LABEL_33;
        }
      }

      v79 = *(a1 + 8 * (v40 & 3));
      v80 = *(a1 + 8 * ((v40 + 1) & 3));
      v81 = *&a2[2 * v33];
      v82 = *&a2[2 * v39];
      v83 = vsub_f32(v81, v82);
      v84 = vsub_f32(v79, v80);
      v85 = vmul_f32(vrev64_s32(v84), v83);
      v86 = vmul_f32(v81, vrev64_s32(v82));
      v87 = v80.f32[1];
      v88 = v79.f32[1];
      v89 = vdiv_f32(vsub_f32(vmul_n_f32(v84, vsub_f32(v86, vdup_lane_s32(v86, 1)).f32[0]), vmul_n_f32(v83, vmuls_lane_f32(v79.f32[0], v80, 1) - vmuls_lane_f32(v80.f32[0], v79, 1))), vdup_lane_s32(vsub_f32(v85, vdup_lane_s32(v85, 1)), 0));
      *(a3 + 8 * v43) = v89;
      v90 = vsub_f32(v80, v79);
      v91 = vsub_f32(v89, v79);
      v91.i32[0] = vdiv_f32(v91, v90).u32[0];
      if (fabsf(v90.f32[0]) <= vabds_f32(v87, v88))
      {
        v91.f32[0] = v91.f32[1] / (v87 - v88);
      }

      v93 = v91.f32[0] <= 1.0 && v91.f32[0] >= 0.0;
      v34 = (v43 + v93);
    }

LABEL_33:
    ++v33;
  }

  while (v36 != 4);
  return v34;
}

void HGFractured::Effect::build(void **this, int a2, int a3, double a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  HGFractured::Effect::init(this, a4, a5, a6, a7, a8, a9);
  v13 = this[7];
  v12 = this[8];
  v14 = *(this + 31);
  if (v14 != 4)
  {
    if (v14 != 3)
    {
      if (v14 == 1)
      {
        v15 = this[3];
        if (v15 >= 48 * v12)
        {
          if (!*(this + 35) || this[13])
          {
            goto LABEL_753;
          }

          v17 = 0;
        }

        else
        {
          v16 = this[12];
          this[3] = (48 * v12);
          this[12] = malloc_type_realloc(v16, 48 * v12, 0x1000040EED21634uLL);
          v17 = this[13];
          if (!*(this + 35))
          {
            if (v17)
            {
              free(v17);
              this[13] = 0;
            }

            goto LABEL_753;
          }

          v15 = this[3];
        }

        this[13] = malloc_type_realloc(v17, v15, 0x1000040EED21634uLL);
LABEL_753:
        bzero(this[12], 48 * v12);
        if (*(this + 35))
        {
          bzero(this[13], 48 * v12);
        }

        this[14] = v12;
        v49 = (this[12] + 44);
        for (i = (v13 + 84); ; i += 23)
        {
          *(v49 - 3) = *i;
          if (a2 < 1)
          {
            if (a2 < 0)
            {
              *(v49 - 1) = (*(i - 21) + *(i - 21)) - *i;
              if (a3 < 1)
              {
LABEL_765:
                if (a3 < 0)
                {
                  v51 = (*(i - 20) + *(i - 20)) - i[1];
                }

                else
                {
                  v51 = i[1];
                }

                goto LABEL_757;
              }
            }

            else
            {
              *(v49 - 1) = *i;
              if (a3 < 1)
              {
                goto LABEL_765;
              }
            }
          }

          else
          {
            *(v49 - 1) = -*i;
            if (a3 < 1)
            {
              goto LABEL_765;
            }
          }

          v51 = -i[1];
LABEL_757:
          *v49 = v51;
          v49 += 12;
          v12 = v12 - 1;
          if (!v12)
          {
            return;
          }
        }
      }

      if (*(this + 34) == 0.0)
      {
        v32 = 3;
      }

      else
      {
        v32 = 12;
      }

      v33 = (v12 * (v32 * v14));
      v34 = this[3];
      if (v34 >= 48 * v33)
      {
        if (!*(this + 35) || this[13])
        {
          goto LABEL_770;
        }

        v36 = 0;
      }

      else
      {
        v35 = this[12];
        this[3] = (48 * v33);
        this[12] = malloc_type_realloc(v35, 48 * v33, 0x1000040EED21634uLL);
        v36 = this[13];
        if (!*(this + 35))
        {
          if (v36)
          {
            free(v36);
            this[13] = 0;
          }

          goto LABEL_770;
        }

        v34 = this[3];
      }

      this[13] = malloc_type_realloc(v36, v34, 0x1000040EED21634uLL);
LABEL_770:
      bzero(this[12], 48 * v33);
      if (*(this + 35))
      {
        bzero(this[13], 48 * v33);
      }

      this[14] = v33;
      v52 = this[12];
      while (1)
      {
        *(v52 + 4) = *v13;
        v53 = *v13;
        if (a2 < 1)
        {
          if (a2 < 0)
          {
            *(v52 + 10) = (v53 + v53) - v53;
            v54 = *(v13 + 1);
            if (a3 >= 1)
            {
LABEL_779:
              *(v52 + 11) = -v54;
              v55 = (v13 + 84);
              *(v52 + 10) = *(v13 + 84);
              if (a2 >= 1)
              {
                goto LABEL_784;
              }

              goto LABEL_787;
            }
          }

          else
          {
            *(v52 + 10) = v53;
            v54 = *(v13 + 1);
            if (a3 >= 1)
            {
              goto LABEL_779;
            }
          }
        }

        else
        {
          *(v52 + 10) = -v53;
          v54 = *(v13 + 1);
          if (a3 >= 1)
          {
            goto LABEL_779;
          }
        }

        if (a3 < 0)
        {
          *(v52 + 11) = (v54 + v54) - v54;
          v55 = (v13 + 84);
          *(v52 + 10) = *(v13 + 84);
          if (a2 >= 1)
          {
LABEL_784:
            *(v52 + 22) = -*v55;
            if (a3 >= 1)
            {
              goto LABEL_789;
            }

            goto LABEL_792;
          }
        }

        else
        {
          *(v52 + 11) = v54;
          v55 = (v13 + 84);
          *(v52 + 10) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_784;
          }
        }

LABEL_787:
        if (a2 < 0)
        {
          *(v52 + 22) = (*v13 + *v13) - *(v13 + 21);
          if (a3 >= 1)
          {
LABEL_789:
            *(v52 + 23) = -*(v13 + 22);
            *(v52 + 16) = *(v13 + 92);
            if (a2 >= 1)
            {
              goto LABEL_794;
            }

            goto LABEL_797;
          }
        }

        else
        {
          *(v52 + 22) = *v55;
          if (a3 >= 1)
          {
            goto LABEL_789;
          }
        }

LABEL_792:
        if (a3 < 0)
        {
          *(v52 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
          *(v52 + 16) = *(v13 + 92);
          if (a2 >= 1)
          {
LABEL_794:
            *(v52 + 34) = -*(v13 + 23);
            if (a3 >= 1)
            {
              goto LABEL_799;
            }

            goto LABEL_802;
          }
        }

        else
        {
          *(v52 + 23) = *(v13 + 22);
          *(v52 + 16) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_794;
          }
        }

LABEL_797:
        if (a2 < 0)
        {
          *(v52 + 34) = (*v13 + *v13) - *(v13 + 23);
          if (a3 >= 1)
          {
LABEL_799:
            *(v52 + 35) = -*(v13 + 24);
            if ((*(this + 31) - 3) <= 0xFFFFFFFD)
            {
              goto LABEL_804;
            }

            goto LABEL_836;
          }
        }

        else
        {
          *(v52 + 34) = *(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_799;
          }
        }

LABEL_802:
        if (a3 < 0)
        {
          *(v52 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
          if ((*(this + 31) - 3) > 0xFFFFFFFD)
          {
            goto LABEL_836;
          }

LABEL_804:
          v56 = (v13 + 104);
          v57 = 5;
          v58 = 1;
          while (2)
          {
            v60 = &v52[48 * v57 - 96];
            *(v60 + 4) = *v13;
            v61 = *v13;
            if (a2 < 1)
            {
              if (a2 < 0)
              {
                v61 = (v61 + v61) - v61;
              }

              *(v60 + 10) = v61;
              v62 = *(v13 + 1);
              if (a3 < 1)
              {
                goto LABEL_813;
              }

LABEL_809:
              v62 = -v62;
            }

            else
            {
              *(v60 + 10) = -v61;
              v62 = *(v13 + 1);
              if (a3 >= 1)
              {
                goto LABEL_809;
              }

LABEL_813:
              if (a3 < 0)
              {
                v62 = (v62 + v62) - v62;
              }
            }

            *(v60 + 11) = v62;
            v63 = &v52[48 * v57 - 48];
            *(v63 + 4) = *(v56 - 3);
            if (a2 < 1)
            {
              if (a2 < 0)
              {
                *(v63 + 10) = (*v13 + *v13) - *(v56 - 3);
                if (a3 < 1)
                {
                  goto LABEL_823;
                }
              }

              else
              {
                *(v63 + 10) = *(v56 - 3);
                if (a3 < 1)
                {
                  goto LABEL_823;
                }
              }
            }

            else
            {
              *(v63 + 10) = -*(v56 - 3);
              if (a3 < 1)
              {
LABEL_823:
                if (a3 < 0)
                {
                  *(v63 + 11) = (*(v13 + 1) + *(v13 + 1)) - *(v56 - 2);
                  v64 = &v52[48 * v57];
                  *(v64 + 4) = *(v56 - 1);
                  if (a2 < 1)
                  {
                    goto LABEL_828;
                  }

LABEL_825:
                  *(v64 + 10) = -*(v56 - 1);
                  if (a3 >= 1)
                  {
                    goto LABEL_805;
                  }
                }

                else
                {
                  *(v63 + 11) = *(v56 - 2);
                  v64 = &v52[48 * v57];
                  *(v64 + 4) = *(v56 - 1);
                  if (a2 >= 1)
                  {
                    goto LABEL_825;
                  }

LABEL_828:
                  if ((a2 & 0x80000000) == 0)
                  {
                    *(v64 + 10) = *(v56 - 1);
                    if (a3 < 1)
                    {
                      goto LABEL_832;
                    }

LABEL_805:
                    v59 = -*v56;
LABEL_806:
                    ++v58;
                    *(v64 + 11) = v59;
                    v56 += 2;
                    v57 += 3;
                    if (v58 >= (*(this + 31) - 1))
                    {
                      goto LABEL_837;
                    }

                    continue;
                  }

                  *(v64 + 10) = (*v13 + *v13) - *(v56 - 1);
                  if (a3 >= 1)
                  {
                    goto LABEL_805;
                  }
                }

LABEL_832:
                if (a3 < 0)
                {
                  v59 = (*(v13 + 1) + *(v13 + 1)) - *v56;
                }

                else
                {
                  v59 = *v56;
                }

                goto LABEL_806;
              }
            }

            break;
          }

          *(v63 + 11) = -*(v56 - 2);
          v64 = &v52[48 * v57];
          *(v64 + 4) = *(v56 - 1);
          if (a2 >= 1)
          {
            goto LABEL_825;
          }

          goto LABEL_828;
        }

        *(v52 + 35) = *(v13 + 24);
        if ((*(this + 31) - 3) <= 0xFFFFFFFD)
        {
          goto LABEL_804;
        }

LABEL_836:
        LODWORD(v58) = 1;
LABEL_837:
        v65 = 3 * v58;
        v66 = &v52[48 * (3 * v58)];
        *(v66 + 4) = *v13;
        v67 = *v13;
        if (a2 < 1)
        {
          if (a2 < 0)
          {
            *(v66 + 10) = (v67 + v67) - v67;
            v68 = *(v13 + 1);
            if (a3 >= 1)
            {
LABEL_842:
              v68 = -v68;
              goto LABEL_846;
            }
          }

          else
          {
            *(v66 + 10) = v67;
            v68 = *(v13 + 1);
            if (a3 >= 1)
            {
              goto LABEL_842;
            }
          }
        }

        else
        {
          *(v66 + 10) = -v67;
          v68 = *(v13 + 1);
          if (a3 >= 1)
          {
            goto LABEL_842;
          }
        }

        if (a3 < 0)
        {
          v68 = (v68 + v68) - v68;
        }

LABEL_846:
        *(v66 + 11) = v68;
        v69 = &v52[48 * (v65 + 1)];
        v70 = &v55[2 * v58];
        *(v69 + 4) = *v70;
        if (a2 < 1)
        {
          if (a2 < 0)
          {
            *(v69 + 10) = (*v13 + *v13) - *v70;
            if (a3 >= 1)
            {
LABEL_851:
              v71 = -v70[1];
              goto LABEL_856;
            }
          }

          else
          {
            *(v69 + 10) = *v70;
            if (a3 >= 1)
            {
              goto LABEL_851;
            }
          }
        }

        else
        {
          *(v69 + 10) = -*v70;
          if (a3 >= 1)
          {
            goto LABEL_851;
          }
        }

        if (a3 < 0)
        {
          v71 = (*(v13 + 1) + *(v13 + 1)) - v70[1];
        }

        else
        {
          v71 = v70[1];
        }

LABEL_856:
        *(v69 + 11) = v71;
        v72 = &v52[48 * (v65 + 2)];
        *(v72 + 4) = *v55;
        if (a2 < 1)
        {
          if (a2 < 0)
          {
            *(v72 + 10) = (*v13 + *v13) - *(v13 + 21);
            if (a3 < 1)
            {
LABEL_863:
              if (a3 < 0)
              {
                v73 = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
              }

              else
              {
                v73 = *(v13 + 22);
              }

              goto LABEL_866;
            }
          }

          else
          {
            *(v72 + 10) = *v55;
            if (a3 < 1)
            {
              goto LABEL_863;
            }
          }
        }

        else
        {
          *(v72 + 10) = -*v55;
          if (a3 < 1)
          {
            goto LABEL_863;
          }
        }

        v73 = -*(v13 + 22);
LABEL_866:
        *(v72 + 11) = v73;
        v74 = *(this + 31);
        v75 = &v52[144 * v74];
        if (*(this + 34) == 0.0)
        {
          v52 += 48 * (3 * v74);
          v13 += 8 * v74 + 84;
          v12 = v12 - 1;
          if (!v12)
          {
            return;
          }
        }

        else
        {
          v76 = &v52[48 * (v65 + 3)];
          *(v76 + 4) = *v13;
          v77 = *v13;
          if (a2 < 1)
          {
            if (a2 < 0)
            {
              *(v76 + 10) = (v77 + v77) - v77;
              v78 = *(v13 + 1);
              if (a3 >= 1)
              {
LABEL_872:
                *(v76 + 11) = -v78;
                *(v76 + 10) = *(v13 + 92);
                if (a2 >= 1)
                {
                  goto LABEL_877;
                }

                goto LABEL_880;
              }
            }

            else
            {
              *(v76 + 10) = v77;
              v78 = *(v13 + 1);
              if (a3 >= 1)
              {
                goto LABEL_872;
              }
            }
          }

          else
          {
            *(v76 + 10) = -v77;
            v78 = *(v13 + 1);
            if (a3 >= 1)
            {
              goto LABEL_872;
            }
          }

          if (a3 < 0)
          {
            *(v76 + 11) = (v78 + v78) - v78;
            *(v76 + 10) = *(v13 + 92);
            if (a2 >= 1)
            {
LABEL_877:
              *(v76 + 22) = -*(v13 + 23);
              if (a3 >= 1)
              {
                goto LABEL_882;
              }

              goto LABEL_885;
            }
          }

          else
          {
            *(v76 + 11) = v78;
            *(v76 + 10) = *(v13 + 92);
            if (a2 >= 1)
            {
              goto LABEL_877;
            }
          }

LABEL_880:
          if (a2 < 0)
          {
            *(v76 + 22) = (*v13 + *v13) - *(v13 + 23);
            if (a3 >= 1)
            {
LABEL_882:
              *(v76 + 23) = -*(v13 + 24);
              *(v76 + 16) = *v55;
              if (a2 >= 1)
              {
                goto LABEL_887;
              }

              goto LABEL_890;
            }
          }

          else
          {
            *(v76 + 22) = *(v13 + 23);
            if (a3 >= 1)
            {
              goto LABEL_882;
            }
          }

LABEL_885:
          if (a3 < 0)
          {
            *(v76 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
            *(v76 + 16) = *v55;
            if (a2 >= 1)
            {
LABEL_887:
              *(v76 + 34) = -*v55;
              if (a3 >= 1)
              {
                goto LABEL_892;
              }

              goto LABEL_895;
            }
          }

          else
          {
            *(v76 + 23) = *(v13 + 24);
            *(v76 + 16) = *v55;
            if (a2 >= 1)
            {
              goto LABEL_887;
            }
          }

LABEL_890:
          if (a2 < 0)
          {
            *(v76 + 34) = (*v13 + *v13) - *(v13 + 21);
            if (a3 >= 1)
            {
LABEL_892:
              *(v76 + 35) = -*(v13 + 22);
              if ((*(this + 31) - 3) <= 0xFFFFFFFD)
              {
                goto LABEL_897;
              }

              goto LABEL_929;
            }
          }

          else
          {
            *(v76 + 34) = *v55;
            if (a3 >= 1)
            {
              goto LABEL_892;
            }
          }

LABEL_895:
          if (a3 < 0)
          {
            *(v76 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
            if ((*(this + 31) - 3) > 0xFFFFFFFD)
            {
              goto LABEL_929;
            }

LABEL_897:
            v79 = (v13 + 104);
            v80 = 5;
            v81 = 1;
            while (2)
            {
              v83 = &v76[48 * v80 - 96];
              *(v83 + 4) = *v13;
              v84 = *v13;
              if (a2 < 1)
              {
                if (a2 < 0)
                {
                  v84 = (v84 + v84) - v84;
                }

                *(v83 + 10) = v84;
                v85 = *(v13 + 1);
                if (a3 < 1)
                {
                  goto LABEL_906;
                }

LABEL_902:
                v85 = -v85;
              }

              else
              {
                *(v83 + 10) = -v84;
                v85 = *(v13 + 1);
                if (a3 >= 1)
                {
                  goto LABEL_902;
                }

LABEL_906:
                if (a3 < 0)
                {
                  v85 = (v85 + v85) - v85;
                }
              }

              *(v83 + 11) = v85;
              v86 = &v76[48 * v80 - 48];
              *(v86 + 4) = *(v79 - 1);
              if (a2 < 1)
              {
                if (a2 < 0)
                {
                  *(v86 + 10) = (*v13 + *v13) - *(v79 - 1);
                  if (a3 < 1)
                  {
                    goto LABEL_916;
                  }
                }

                else
                {
                  *(v86 + 10) = *(v79 - 1);
                  if (a3 < 1)
                  {
                    goto LABEL_916;
                  }
                }
              }

              else
              {
                *(v86 + 10) = -*(v79 - 1);
                if (a3 < 1)
                {
LABEL_916:
                  if (a3 < 0)
                  {
                    *(v86 + 11) = (*(v13 + 1) + *(v13 + 1)) - *v79;
                    v87 = &v76[48 * v80];
                    *(v87 + 4) = *(v79 - 3);
                    if (a2 < 1)
                    {
                      goto LABEL_921;
                    }

LABEL_918:
                    *(v87 + 10) = -*(v79 - 3);
                    if (a3 >= 1)
                    {
                      goto LABEL_898;
                    }
                  }

                  else
                  {
                    *(v86 + 11) = *v79;
                    v87 = &v76[48 * v80];
                    *(v87 + 4) = *(v79 - 3);
                    if (a2 >= 1)
                    {
                      goto LABEL_918;
                    }

LABEL_921:
                    if ((a2 & 0x80000000) == 0)
                    {
                      *(v87 + 10) = *(v79 - 3);
                      if (a3 < 1)
                      {
                        goto LABEL_925;
                      }

LABEL_898:
                      v82 = -*(v79 - 2);
LABEL_899:
                      ++v81;
                      *(v87 + 11) = v82;
                      v79 += 2;
                      v80 += 3;
                      if (v81 >= (*(this + 31) - 1))
                      {
                        goto LABEL_930;
                      }

                      continue;
                    }

                    *(v87 + 10) = (*v13 + *v13) - *(v79 - 3);
                    if (a3 >= 1)
                    {
                      goto LABEL_898;
                    }
                  }

LABEL_925:
                  if (a3 < 0)
                  {
                    v82 = (*(v13 + 1) + *(v13 + 1)) - *(v79 - 2);
                  }

                  else
                  {
                    v82 = *(v79 - 2);
                  }

                  goto LABEL_899;
                }
              }

              break;
            }

            *(v86 + 11) = -*v79;
            v87 = &v76[48 * v80];
            *(v87 + 4) = *(v79 - 3);
            if (a2 >= 1)
            {
              goto LABEL_918;
            }

            goto LABEL_921;
          }

          *(v76 + 35) = *(v13 + 22);
          if ((*(this + 31) - 3) <= 0xFFFFFFFD)
          {
            goto LABEL_897;
          }

LABEL_929:
          LODWORD(v81) = 1;
LABEL_930:
          v88 = 3 * v81;
          v89 = &v76[48 * (3 * v81)];
          *(v89 + 4) = *v13;
          v90 = *v13;
          if (a2 < 1)
          {
            if (a2 < 0)
            {
              *(v89 + 10) = (v90 + v90) - v90;
              v91 = *(v13 + 1);
              if (a3 >= 1)
              {
LABEL_935:
                v91 = -v91;
                goto LABEL_939;
              }
            }

            else
            {
              *(v89 + 10) = v90;
              v91 = *(v13 + 1);
              if (a3 >= 1)
              {
                goto LABEL_935;
              }
            }
          }

          else
          {
            *(v89 + 10) = -v90;
            v91 = *(v13 + 1);
            if (a3 >= 1)
            {
              goto LABEL_935;
            }
          }

          if (a3 < 0)
          {
            v91 = (v91 + v91) - v91;
          }

LABEL_939:
          *(v89 + 11) = v91;
          v92 = &v76[48 * (v88 + 1)];
          *(v92 + 4) = *v55;
          if (a2 < 1)
          {
            if (a2 < 0)
            {
              *(v92 + 10) = (*v13 + *v13) - *(v13 + 21);
              if (a3 >= 1)
              {
LABEL_944:
                v93 = -*(v13 + 22);
                goto LABEL_949;
              }
            }

            else
            {
              *(v92 + 10) = *v55;
              if (a3 >= 1)
              {
                goto LABEL_944;
              }
            }
          }

          else
          {
            *(v92 + 10) = -*v55;
            if (a3 >= 1)
            {
              goto LABEL_944;
            }
          }

          if (a3 < 0)
          {
            v93 = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
          }

          else
          {
            v93 = *(v13 + 22);
          }

LABEL_949:
          *(v92 + 11) = v93;
          v94 = &v76[48 * (v88 + 2)];
          v95 = &v55[2 * v81];
          *(v94 + 4) = *v95;
          if (a2 < 1)
          {
            if (a2 < 0)
            {
              *(v94 + 10) = (*v13 + *v13) - *v95;
              if (a3 < 1)
              {
LABEL_956:
                if (a3 < 0)
                {
                  v96 = (*(v13 + 1) + *(v13 + 1)) - v95[1];
                }

                else
                {
                  v96 = v95[1];
                }

                goto LABEL_959;
              }
            }

            else
            {
              *(v94 + 10) = *v95;
              if (a3 < 1)
              {
                goto LABEL_956;
              }
            }
          }

          else
          {
            *(v94 + 10) = -*v95;
            if (a3 < 1)
            {
              goto LABEL_956;
            }
          }

          v96 = -v95[1];
LABEL_959:
          *(v94 + 11) = v96;
          v97 = *(this + 31);
          v52 = &v75[144 * v97];
          v13 += 8 * v97 + 84;
          v12 = v12 - 1;
          if (!v12)
          {
            return;
          }
        }
      }
    }

    v18 = 24;
    if (*(this + 34) == 0.0)
    {
      v18 = 3;
    }

    v19 = v18 * v12;
    v20 = 3 * v18 * v12;
    v21 = 16 * v20;
    v22 = this[3];
    if (v22 >= 16 * v20)
    {
      if (!*(this + 35) || this[13])
      {
        goto LABEL_41;
      }

      v24 = 0;
    }

    else
    {
      v23 = this[12];
      this[3] = v21;
      this[12] = malloc_type_realloc(v23, 16 * v20, 0x1000040EED21634uLL);
      v24 = this[13];
      if (!*(this + 35))
      {
        if (v24)
        {
          free(v24);
          this[13] = 0;
        }

        goto LABEL_41;
      }

      v22 = this[3];
    }

    this[13] = malloc_type_realloc(v24, v22, 0x1000040EED21634uLL);
LABEL_41:
    bzero(this[12], v21);
    if (*(this + 35))
    {
      bzero(this[13], v21);
    }

    this[14] = v19;
    v37 = this[12];
    if (*(this + 34) == 0.0)
    {
      v38 = (v37 + 10);
      for (j = (v13 + 104); ; j += 27)
      {
        *(v38 - 6) = *(j - 5);
        if (a2 < 1)
        {
          if (a2 < 0)
          {
            *(v38 - 10) = (*(j - 26) + *(j - 26)) - *(j - 5);
            if (a3 >= 1)
            {
LABEL_52:
              *(v38 - 9) = -*(j - 4);
              *v38 = *(j - 3);
              if (a2 >= 1)
              {
                goto LABEL_57;
              }

              goto LABEL_60;
            }
          }

          else
          {
            *(v38 - 10) = *(j - 5);
            if (a3 >= 1)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          *(v38 - 10) = -*(j - 5);
          if (a3 >= 1)
          {
            goto LABEL_52;
          }
        }

        if (a3 < 0)
        {
          *(v38 - 9) = (*(j - 25) + *(j - 25)) - *(j - 4);
          *v38 = *(j - 3);
          if (a2 >= 1)
          {
LABEL_57:
            *(v38 + 2) = -*(j - 3);
            if (a3 >= 1)
            {
              goto LABEL_62;
            }

            goto LABEL_65;
          }
        }

        else
        {
          *(v38 - 9) = *(j - 4);
          *v38 = *(j - 3);
          if (a2 >= 1)
          {
            goto LABEL_57;
          }
        }

LABEL_60:
        if (a2 < 0)
        {
          *(v38 + 2) = (*(j - 26) + *(j - 26)) - *(j - 3);
          if (a3 >= 1)
          {
LABEL_62:
            *(v38 + 3) = -*(j - 2);
            *(v38 + 6) = *(j - 1);
            if (a2 >= 1)
            {
              goto LABEL_67;
            }

            goto LABEL_70;
          }
        }

        else
        {
          *(v38 + 2) = *(j - 3);
          if (a3 >= 1)
          {
            goto LABEL_62;
          }
        }

LABEL_65:
        if (a3 < 0)
        {
          *(v38 + 3) = (*(j - 25) + *(j - 25)) - *(j - 2);
          *(v38 + 6) = *(j - 1);
          if (a2 >= 1)
          {
LABEL_67:
            *(v38 + 14) = -*(j - 1);
            if (a3 < 1)
            {
              goto LABEL_74;
            }

            goto LABEL_45;
          }
        }

        else
        {
          *(v38 + 3) = *(j - 2);
          *(v38 + 6) = *(j - 1);
          if (a2 >= 1)
          {
            goto LABEL_67;
          }
        }

LABEL_70:
        if (a2 < 0)
        {
          *(v38 + 14) = (*(j - 26) + *(j - 26)) - *(j - 1);
          if (a3 < 1)
          {
LABEL_74:
            if (a3 < 0)
            {
              v40 = (*(j - 25) + *(j - 25)) - *j;
            }

            else
            {
              v40 = *j;
            }

            goto LABEL_46;
          }
        }

        else
        {
          *(v38 + 14) = *(j - 1);
          if (a3 < 1)
          {
            goto LABEL_74;
          }
        }

LABEL_45:
        v40 = -*j;
LABEL_46:
        *(v38 + 15) = v40;
        v38 += 144;
        v12 = v12 - 1;
        if (!v12)
        {
          return;
        }
      }
    }

    v41 = &v37[36 * v12];
    while (1)
    {
      v37[4] = *(v13 + 84);
      if (a2 < 1)
      {
        if (a2 < 0)
        {
          *(v37 + 10) = (*v13 + *v13) - *(v13 + 21);
          if (a3 >= 1)
          {
LABEL_85:
            *(v37 + 11) = -*(v13 + 22);
            v37[10] = *(v13 + 92);
            if (a2 >= 1)
            {
              goto LABEL_90;
            }

            goto LABEL_93;
          }
        }

        else
        {
          *(v37 + 10) = *(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_85;
          }
        }
      }

      else
      {
        *(v37 + 10) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_85;
        }
      }

      if (a3 < 0)
      {
        *(v37 + 11) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        v37[10] = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_90:
          *(v37 + 22) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_95;
          }

          goto LABEL_98;
        }
      }

      else
      {
        *(v37 + 11) = *(v13 + 22);
        v37[10] = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_90;
        }
      }

LABEL_93:
      if (a2 < 0)
      {
        *(v37 + 22) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_95:
          *(v37 + 23) = -*(v13 + 24);
          v37[16] = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_100;
          }

          goto LABEL_103;
        }
      }

      else
      {
        *(v37 + 22) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_95;
        }
      }

LABEL_98:
      if (a3 < 0)
      {
        *(v37 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        v37[16] = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_100:
          *(v37 + 34) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_105;
          }

          goto LABEL_108;
        }
      }

      else
      {
        *(v37 + 23) = *(v13 + 24);
        v37[16] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_100;
        }
      }

LABEL_103:
      if (a2 < 0)
      {
        *(v37 + 34) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_105:
          *(v37 + 35) = -*(v13 + 26);
          v37[22] = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_110;
          }

          goto LABEL_113;
        }
      }

      else
      {
        *(v37 + 34) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_105;
        }
      }

LABEL_108:
      if (a3 < 0)
      {
        *(v37 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        v37[22] = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_110:
          *(v37 + 46) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_115;
          }

          goto LABEL_118;
        }
      }

      else
      {
        *(v37 + 35) = *(v13 + 26);
        v37[22] = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_110;
        }
      }

LABEL_113:
      if (a2 < 0)
      {
        *(v37 + 46) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_115:
          *(v37 + 47) = -*(v13 + 22);
          v37[28] = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_120;
          }

          goto LABEL_123;
        }
      }

      else
      {
        *(v37 + 46) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_115;
        }
      }

LABEL_118:
      if (a3 < 0)
      {
        *(v37 + 47) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        v37[28] = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_120:
          *(v37 + 58) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_125;
          }

          goto LABEL_128;
        }
      }

      else
      {
        *(v37 + 47) = *(v13 + 22);
        v37[28] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_120;
        }
      }

LABEL_123:
      if (a2 < 0)
      {
        *(v37 + 58) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_125:
          *(v37 + 59) = -*(v13 + 26);
          v37[34] = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_130;
          }

          goto LABEL_133;
        }
      }

      else
      {
        *(v37 + 58) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_125;
        }
      }

LABEL_128:
      if (a3 < 0)
      {
        *(v37 + 59) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        v37[34] = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_130:
          *(v37 + 70) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_135;
          }

          goto LABEL_138;
        }
      }

      else
      {
        *(v37 + 59) = *(v13 + 26);
        v37[34] = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_130;
        }
      }

LABEL_133:
      if (a2 < 0)
      {
        *(v37 + 70) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_135:
          *(v37 + 71) = -*(v13 + 24);
          *(v41 + 4) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_140;
          }

          goto LABEL_143;
        }
      }

      else
      {
        *(v37 + 70) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_135;
        }
      }

LABEL_138:
      if (a3 < 0)
      {
        *(v37 + 71) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 4) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_140:
          *(v41 + 10) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_145;
          }

          goto LABEL_148;
        }
      }

      else
      {
        *(v37 + 71) = *(v13 + 24);
        *(v41 + 4) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_140;
        }
      }

LABEL_143:
      if (a2 < 0)
      {
        *(v41 + 10) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_145:
          *(v41 + 11) = -*(v13 + 24);
          *(v41 + 10) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_150;
          }

          goto LABEL_153;
        }
      }

      else
      {
        *(v41 + 10) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_145;
        }
      }

LABEL_148:
      if (a3 < 0)
      {
        *(v41 + 11) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 10) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_150:
          *(v41 + 22) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_155;
          }

          goto LABEL_158;
        }
      }

      else
      {
        *(v41 + 11) = *(v13 + 24);
        *(v41 + 10) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_150;
        }
      }

LABEL_153:
      if (a2 < 0)
      {
        *(v41 + 22) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_155:
          *(v41 + 23) = -*(v13 + 22);
          *(v41 + 16) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_160;
          }

          goto LABEL_163;
        }
      }

      else
      {
        *(v41 + 22) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_155;
        }
      }

LABEL_158:
      if (a3 < 0)
      {
        *(v41 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        *(v41 + 16) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_160:
          *(v41 + 34) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_165;
          }

          goto LABEL_168;
        }
      }

      else
      {
        *(v41 + 23) = *(v13 + 22);
        *(v41 + 16) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_160;
        }
      }

LABEL_163:
      if (a2 < 0)
      {
        *(v41 + 34) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_165:
          *(v41 + 35) = -*(v13 + 22);
          *(v41 + 22) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_170;
          }

          goto LABEL_173;
        }
      }

      else
      {
        *(v41 + 34) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_165;
        }
      }

LABEL_168:
      if (a3 < 0)
      {
        *(v41 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        *(v41 + 22) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_170:
          *(v41 + 46) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_175;
          }

          goto LABEL_178;
        }
      }

      else
      {
        *(v41 + 35) = *(v13 + 22);
        *(v41 + 22) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_170;
        }
      }

LABEL_173:
      if (a2 < 0)
      {
        *(v41 + 46) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_175:
          *(v41 + 47) = -*(v13 + 22);
          *(v41 + 28) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_180;
          }

          goto LABEL_183;
        }
      }

      else
      {
        *(v41 + 46) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_175;
        }
      }

LABEL_178:
      if (a3 < 0)
      {
        *(v41 + 47) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        *(v41 + 28) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_180:
          *(v41 + 58) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_185;
          }

          goto LABEL_188;
        }
      }

      else
      {
        *(v41 + 47) = *(v13 + 22);
        *(v41 + 28) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_180;
        }
      }

LABEL_183:
      if (a2 < 0)
      {
        *(v41 + 58) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_185:
          *(v41 + 59) = -*(v13 + 24);
          *(v41 + 34) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_190;
          }

          goto LABEL_193;
        }
      }

      else
      {
        *(v41 + 58) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_185;
        }
      }

LABEL_188:
      if (a3 < 0)
      {
        *(v41 + 59) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 34) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_190:
          *(v41 + 70) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_195;
          }

          goto LABEL_198;
        }
      }

      else
      {
        *(v41 + 59) = *(v13 + 24);
        *(v41 + 34) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_190;
        }
      }

LABEL_193:
      if (a2 < 0)
      {
        *(v41 + 70) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_195:
          *(v41 + 71) = -*(v13 + 24);
          *(v41 + 40) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_200;
          }

          goto LABEL_203;
        }
      }

      else
      {
        *(v41 + 70) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_195;
        }
      }

LABEL_198:
      if (a3 < 0)
      {
        *(v41 + 71) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 40) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_200:
          *(v41 + 82) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_205;
          }

          goto LABEL_208;
        }
      }

      else
      {
        *(v41 + 71) = *(v13 + 24);
        *(v41 + 40) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_200;
        }
      }

LABEL_203:
      if (a2 < 0)
      {
        *(v41 + 82) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_205:
          *(v41 + 83) = -*(v13 + 26);
          *(v41 + 46) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_210;
          }

          goto LABEL_213;
        }
      }

      else
      {
        *(v41 + 82) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_205;
        }
      }

LABEL_208:
      if (a3 < 0)
      {
        *(v41 + 83) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 46) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_210:
          *(v41 + 94) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_215;
          }

          goto LABEL_218;
        }
      }

      else
      {
        *(v41 + 83) = *(v13 + 26);
        *(v41 + 46) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_210;
        }
      }

LABEL_213:
      if (a2 < 0)
      {
        *(v41 + 94) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_215:
          *(v41 + 95) = -*(v13 + 24);
          *(v41 + 52) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_220;
          }

          goto LABEL_223;
        }
      }

      else
      {
        *(v41 + 94) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_215;
        }
      }

LABEL_218:
      if (a3 < 0)
      {
        *(v41 + 95) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 52) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_220:
          *(v41 + 106) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_225;
          }

          goto LABEL_228;
        }
      }

      else
      {
        *(v41 + 95) = *(v13 + 24);
        *(v41 + 52) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_220;
        }
      }

LABEL_223:
      if (a2 < 0)
      {
        *(v41 + 106) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_225:
          *(v41 + 107) = -*(v13 + 24);
          *(v41 + 58) = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_230;
          }

          goto LABEL_233;
        }
      }

      else
      {
        *(v41 + 106) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_225;
        }
      }

LABEL_228:
      if (a3 < 0)
      {
        *(v41 + 107) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 58) = *(v13 + 92);
        if (a2 >= 1)
        {
LABEL_230:
          *(v41 + 118) = -*(v13 + 23);
          if (a3 >= 1)
          {
            goto LABEL_235;
          }

          goto LABEL_238;
        }
      }

      else
      {
        *(v41 + 107) = *(v13 + 24);
        *(v41 + 58) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_230;
        }
      }

LABEL_233:
      if (a2 < 0)
      {
        *(v41 + 118) = (*v13 + *v13) - *(v13 + 23);
        if (a3 >= 1)
        {
LABEL_235:
          *(v41 + 119) = -*(v13 + 24);
          *(v41 + 64) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_240;
          }

          goto LABEL_243;
        }
      }

      else
      {
        *(v41 + 118) = *(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_235;
        }
      }

LABEL_238:
      if (a3 < 0)
      {
        *(v41 + 119) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
        *(v41 + 64) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_240:
          *(v41 + 130) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_245;
          }

          goto LABEL_248;
        }
      }

      else
      {
        *(v41 + 119) = *(v13 + 24);
        *(v41 + 64) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_240;
        }
      }

LABEL_243:
      if (a2 < 0)
      {
        *(v41 + 130) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_245:
          *(v41 + 131) = -*(v13 + 26);
          *(v41 + 70) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_250;
          }

          goto LABEL_253;
        }
      }

      else
      {
        *(v41 + 130) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_245;
        }
      }

LABEL_248:
      if (a3 < 0)
      {
        *(v41 + 131) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 70) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_250:
          *(v41 + 142) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_255;
          }

          goto LABEL_258;
        }
      }

      else
      {
        *(v41 + 131) = *(v13 + 26);
        *(v41 + 70) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_250;
        }
      }

LABEL_253:
      if (a2 < 0)
      {
        *(v41 + 142) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_255:
          *(v41 + 143) = -*(v13 + 26);
          *(v41 + 76) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_260;
          }

          goto LABEL_263;
        }
      }

      else
      {
        *(v41 + 142) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_255;
        }
      }

LABEL_258:
      if (a3 < 0)
      {
        *(v41 + 143) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 76) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_260:
          *(v41 + 154) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_265;
          }

          goto LABEL_268;
        }
      }

      else
      {
        *(v41 + 143) = *(v13 + 26);
        *(v41 + 76) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_260;
        }
      }

LABEL_263:
      if (a2 < 0)
      {
        *(v41 + 154) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_265:
          *(v41 + 155) = -*(v13 + 22);
          *(v41 + 82) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_270;
          }

          goto LABEL_273;
        }
      }

      else
      {
        *(v41 + 154) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_265;
        }
      }

LABEL_268:
      if (a3 < 0)
      {
        *(v41 + 155) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        *(v41 + 82) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_270:
          *(v41 + 166) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_275;
          }

          goto LABEL_278;
        }
      }

      else
      {
        *(v41 + 155) = *(v13 + 22);
        *(v41 + 82) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_270;
        }
      }

LABEL_273:
      if (a2 < 0)
      {
        *(v41 + 166) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_275:
          *(v41 + 167) = -*(v13 + 26);
          *(v41 + 88) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_280;
          }

          goto LABEL_283;
        }
      }

      else
      {
        *(v41 + 166) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_275;
        }
      }

LABEL_278:
      if (a3 < 0)
      {
        *(v41 + 167) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 88) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_280:
          *(v41 + 178) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_285;
          }

          goto LABEL_288;
        }
      }

      else
      {
        *(v41 + 167) = *(v13 + 26);
        *(v41 + 88) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_280;
        }
      }

LABEL_283:
      if (a2 < 0)
      {
        *(v41 + 178) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_285:
          *(v41 + 179) = -*(v13 + 26);
          *(v41 + 94) = *(v13 + 100);
          if (a2 >= 1)
          {
            goto LABEL_290;
          }

          goto LABEL_293;
        }
      }

      else
      {
        *(v41 + 178) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_285;
        }
      }

LABEL_288:
      if (a3 < 0)
      {
        *(v41 + 179) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 94) = *(v13 + 100);
        if (a2 >= 1)
        {
LABEL_290:
          *(v41 + 190) = -*(v13 + 25);
          if (a3 >= 1)
          {
            goto LABEL_295;
          }

          goto LABEL_298;
        }
      }

      else
      {
        *(v41 + 179) = *(v13 + 26);
        *(v41 + 94) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_290;
        }
      }

LABEL_293:
      if (a2 < 0)
      {
        *(v41 + 190) = (*v13 + *v13) - *(v13 + 25);
        if (a3 >= 1)
        {
LABEL_295:
          *(v41 + 191) = -*(v13 + 26);
          *(v41 + 100) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_300;
          }

          goto LABEL_303;
        }
      }

      else
      {
        *(v41 + 190) = *(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_295;
        }
      }

LABEL_298:
      if (a3 < 0)
      {
        *(v41 + 191) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
        *(v41 + 100) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_300:
          *(v41 + 202) = -*(v13 + 21);
          if (a3 >= 1)
          {
            goto LABEL_305;
          }

          goto LABEL_308;
        }
      }

      else
      {
        *(v41 + 191) = *(v13 + 26);
        *(v41 + 100) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_300;
        }
      }

LABEL_303:
      if (a2 < 0)
      {
        *(v41 + 202) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_305:
          *(v41 + 203) = -*(v13 + 22);
          *(v41 + 106) = *(v13 + 84);
          if (a2 >= 1)
          {
            goto LABEL_310;
          }

          goto LABEL_313;
        }
      }

      else
      {
        *(v41 + 202) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_305;
        }
      }

LABEL_308:
      if (a3 < 0)
      {
        *(v41 + 203) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
        *(v41 + 106) = *(v13 + 84);
        if (a2 >= 1)
        {
LABEL_310:
          *(v41 + 214) = -*(v13 + 21);
          if (a3 < 1)
          {
            goto LABEL_317;
          }

          goto LABEL_78;
        }
      }

      else
      {
        *(v41 + 203) = *(v13 + 22);
        *(v41 + 106) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_310;
        }
      }

LABEL_313:
      if (a2 < 0)
      {
        *(v41 + 214) = (*v13 + *v13) - *(v13 + 21);
        if (a3 < 1)
        {
LABEL_317:
          if (a3 < 0)
          {
            v42 = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
          }

          else
          {
            v42 = *(v13 + 22);
          }

          goto LABEL_79;
        }
      }

      else
      {
        *(v41 + 214) = *(v13 + 21);
        if (a3 < 1)
        {
          goto LABEL_317;
        }
      }

LABEL_78:
      v42 = -*(v13 + 22);
LABEL_79:
      *(v41 + 215) = v42;
      v37 += 36;
      v41 += 864;
      v13 += 108;
      v12 = v12 - 1;
      if (!v12)
      {
        return;
      }
    }
  }

  v25 = 36;
  if (*(this + 34) == 0.0)
  {
    v25 = 6;
  }

  v26 = v25 * v12;
  v27 = 3 * v25 * v12;
  v28 = 16 * v27;
  v29 = this[3];
  if (v29 >= 16 * v27)
  {
    if (!*(this + 35) || this[13])
    {
      goto LABEL_322;
    }

    v31 = 0;
  }

  else
  {
    v30 = this[12];
    this[3] = v28;
    this[12] = malloc_type_realloc(v30, 16 * v27, 0x1000040EED21634uLL);
    v31 = this[13];
    if (!*(this + 35))
    {
      if (v31)
      {
        free(v31);
        this[13] = 0;
      }

      goto LABEL_322;
    }

    v29 = this[3];
  }

  this[13] = malloc_type_realloc(v31, v29, 0x1000040EED21634uLL);
LABEL_322:
  bzero(this[12], v28);
  if (*(this + 35))
  {
    bzero(this[13], v28);
  }

  this[14] = v26;
  v43 = this[12];
  if (*(this + 34) == 0.0)
  {
    v44 = (v43 + 22);
    for (k = (v13 + 84); ; k += 29)
    {
      *(v44 - 18) = *k;
      if (a2 < 1)
      {
        if (a2 < 0)
        {
          *(v44 - 34) = (*(k - 21) + *(k - 21)) - *k;
          if (a3 >= 1)
          {
LABEL_333:
            *(v44 - 33) = -k[1];
            *(v44 - 12) = *(k + 1);
            if (a2 >= 1)
            {
              goto LABEL_338;
            }

            goto LABEL_341;
          }
        }

        else
        {
          *(v44 - 34) = *k;
          if (a3 >= 1)
          {
            goto LABEL_333;
          }
        }
      }

      else
      {
        *(v44 - 34) = -*k;
        if (a3 >= 1)
        {
          goto LABEL_333;
        }
      }

      if (a3 < 0)
      {
        *(v44 - 33) = (*(k - 20) + *(k - 20)) - k[1];
        *(v44 - 12) = *(k + 1);
        if (a2 >= 1)
        {
LABEL_338:
          *(v44 - 22) = -k[2];
          if (a3 >= 1)
          {
            goto LABEL_343;
          }

          goto LABEL_346;
        }
      }

      else
      {
        *(v44 - 33) = k[1];
        *(v44 - 12) = *(k + 1);
        if (a2 >= 1)
        {
          goto LABEL_338;
        }
      }

LABEL_341:
      if (a2 < 0)
      {
        *(v44 - 22) = (*(k - 21) + *(k - 21)) - k[2];
        if (a3 >= 1)
        {
LABEL_343:
          *(v44 - 21) = -k[3];
          *(v44 - 6) = *(k + 2);
          if (a2 >= 1)
          {
            goto LABEL_348;
          }

          goto LABEL_351;
        }
      }

      else
      {
        *(v44 - 22) = k[2];
        if (a3 >= 1)
        {
          goto LABEL_343;
        }
      }

LABEL_346:
      if (a3 < 0)
      {
        *(v44 - 21) = (*(k - 20) + *(k - 20)) - k[3];
        *(v44 - 6) = *(k + 2);
        if (a2 >= 1)
        {
LABEL_348:
          *(v44 - 10) = -k[4];
          if (a3 >= 1)
          {
            goto LABEL_353;
          }

          goto LABEL_356;
        }
      }

      else
      {
        *(v44 - 21) = k[3];
        *(v44 - 6) = *(k + 2);
        if (a2 >= 1)
        {
          goto LABEL_348;
        }
      }

LABEL_351:
      if (a2 < 0)
      {
        *(v44 - 10) = (*(k - 21) + *(k - 21)) - k[4];
        if (a3 >= 1)
        {
LABEL_353:
          *(v44 - 9) = -k[5];
          *v44 = *(k + 2);
          if (a2 >= 1)
          {
            goto LABEL_358;
          }

          goto LABEL_361;
        }
      }

      else
      {
        *(v44 - 10) = k[4];
        if (a3 >= 1)
        {
          goto LABEL_353;
        }
      }

LABEL_356:
      if (a3 < 0)
      {
        *(v44 - 9) = (*(k - 20) + *(k - 20)) - k[5];
        *v44 = *(k + 2);
        if (a2 >= 1)
        {
LABEL_358:
          *(v44 + 2) = -k[4];
          if (a3 >= 1)
          {
            goto LABEL_363;
          }

          goto LABEL_366;
        }
      }

      else
      {
        *(v44 - 9) = k[5];
        *v44 = *(k + 2);
        if (a2 >= 1)
        {
          goto LABEL_358;
        }
      }

LABEL_361:
      if (a2 < 0)
      {
        *(v44 + 2) = (*(k - 21) + *(k - 21)) - k[4];
        if (a3 >= 1)
        {
LABEL_363:
          *(v44 + 3) = -k[5];
          *(v44 + 6) = *(k + 3);
          if (a2 >= 1)
          {
            goto LABEL_368;
          }

          goto LABEL_371;
        }
      }

      else
      {
        *(v44 + 2) = k[4];
        if (a3 >= 1)
        {
          goto LABEL_363;
        }
      }

LABEL_366:
      if (a3 < 0)
      {
        *(v44 + 3) = (*(k - 20) + *(k - 20)) - k[5];
        *(v44 + 6) = *(k + 3);
        if (a2 >= 1)
        {
LABEL_368:
          *(v44 + 14) = -k[6];
          if (a3 >= 1)
          {
            goto LABEL_373;
          }

          goto LABEL_376;
        }
      }

      else
      {
        *(v44 + 3) = k[5];
        *(v44 + 6) = *(k + 3);
        if (a2 >= 1)
        {
          goto LABEL_368;
        }
      }

LABEL_371:
      if (a2 < 0)
      {
        *(v44 + 14) = (*(k - 21) + *(k - 21)) - k[6];
        if (a3 >= 1)
        {
LABEL_373:
          *(v44 + 15) = -k[7];
          *(v44 + 12) = *k;
          if (a2 >= 1)
          {
            goto LABEL_378;
          }

          goto LABEL_381;
        }
      }

      else
      {
        *(v44 + 14) = k[6];
        if (a3 >= 1)
        {
          goto LABEL_373;
        }
      }

LABEL_376:
      if (a3 < 0)
      {
        *(v44 + 15) = (*(k - 20) + *(k - 20)) - k[7];
        *(v44 + 12) = *k;
        if (a2 >= 1)
        {
LABEL_378:
          *(v44 + 26) = -*k;
          if (a3 < 1)
          {
            goto LABEL_385;
          }

          goto LABEL_326;
        }
      }

      else
      {
        *(v44 + 15) = k[7];
        *(v44 + 12) = *k;
        if (a2 >= 1)
        {
          goto LABEL_378;
        }
      }

LABEL_381:
      if (a2 < 0)
      {
        *(v44 + 26) = (*(k - 21) + *(k - 21)) - *k;
        if (a3 < 1)
        {
LABEL_385:
          if (a3 < 0)
          {
            v46 = (*(k - 20) + *(k - 20)) - k[1];
          }

          else
          {
            v46 = k[1];
          }

          goto LABEL_327;
        }
      }

      else
      {
        *(v44 + 26) = *k;
        if (a3 < 1)
        {
          goto LABEL_385;
        }
      }

LABEL_326:
      v46 = -k[1];
LABEL_327:
      *(v44 + 27) = v46;
      v44 += 288;
      v12 = v12 - 1;
      if (!v12)
      {
        return;
      }
    }
  }

  v47 = &v43[72 * v12];
  do
  {
    v43[4] = *(v13 + 84);
    if (a2 < 1)
    {
      if (a2 < 0)
      {
        *(v43 + 10) = (*v13 + *v13) - *(v13 + 21);
        if (a3 >= 1)
        {
LABEL_396:
          *(v43 + 11) = -*(v13 + 22);
          v43[10] = *(v13 + 92);
          if (a2 >= 1)
          {
            goto LABEL_401;
          }

          goto LABEL_404;
        }
      }

      else
      {
        *(v43 + 10) = *(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_396;
        }
      }
    }

    else
    {
      *(v43 + 10) = -*(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_396;
      }
    }

    if (a3 < 0)
    {
      *(v43 + 11) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      v43[10] = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_401:
        *(v43 + 22) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_406;
        }

        goto LABEL_409;
      }
    }

    else
    {
      *(v43 + 11) = *(v13 + 22);
      v43[10] = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_401;
      }
    }

LABEL_404:
    if (a2 < 0)
    {
      *(v43 + 22) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_406:
        *(v43 + 23) = -*(v13 + 24);
        v43[16] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_411;
        }

        goto LABEL_414;
      }
    }

    else
    {
      *(v43 + 22) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_406;
      }
    }

LABEL_409:
    if (a3 < 0)
    {
      *(v43 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      v43[16] = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_411:
        *(v43 + 34) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_416;
        }

        goto LABEL_419;
      }
    }

    else
    {
      *(v43 + 23) = *(v13 + 24);
      v43[16] = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_411;
      }
    }

LABEL_414:
    if (a2 < 0)
    {
      *(v43 + 34) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_416:
        *(v43 + 35) = -*(v13 + 26);
        v43[22] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_421;
        }

        goto LABEL_424;
      }
    }

    else
    {
      *(v43 + 34) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_416;
      }
    }

LABEL_419:
    if (a3 < 0)
    {
      *(v43 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      v43[22] = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_421:
        *(v43 + 46) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_426;
        }

        goto LABEL_429;
      }
    }

    else
    {
      *(v43 + 35) = *(v13 + 26);
      v43[22] = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_421;
      }
    }

LABEL_424:
    if (a2 < 0)
    {
      *(v43 + 46) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_426:
        *(v43 + 47) = -*(v13 + 26);
        v43[28] = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_431;
        }

        goto LABEL_434;
      }
    }

    else
    {
      *(v43 + 46) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_426;
      }
    }

LABEL_429:
    if (a3 < 0)
    {
      *(v43 + 47) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      v43[28] = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_431:
        *(v43 + 58) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_436;
        }

        goto LABEL_439;
      }
    }

    else
    {
      *(v43 + 47) = *(v13 + 26);
      v43[28] = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_431;
      }
    }

LABEL_434:
    if (a2 < 0)
    {
      *(v43 + 58) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_436:
        *(v43 + 59) = -*(v13 + 28);
        v43[34] = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_441;
        }

        goto LABEL_444;
      }
    }

    else
    {
      *(v43 + 58) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_436;
      }
    }

LABEL_439:
    if (a3 < 0)
    {
      *(v43 + 59) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      v43[34] = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_441:
        *(v43 + 70) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_446;
        }

        goto LABEL_449;
      }
    }

    else
    {
      *(v43 + 59) = *(v13 + 28);
      v43[34] = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_441;
      }
    }

LABEL_444:
    if (a2 < 0)
    {
      *(v43 + 70) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_446:
        *(v43 + 71) = -*(v13 + 22);
        v43[40] = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_451;
        }

        goto LABEL_454;
      }
    }

    else
    {
      *(v43 + 70) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_446;
      }
    }

LABEL_449:
    if (a3 < 0)
    {
      *(v43 + 71) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      v43[40] = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_451:
        *(v43 + 82) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_456;
        }

        goto LABEL_459;
      }
    }

    else
    {
      *(v43 + 71) = *(v13 + 22);
      v43[40] = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_451;
      }
    }

LABEL_454:
    if (a2 < 0)
    {
      *(v43 + 82) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_456:
        *(v43 + 83) = -*(v13 + 22);
        v43[46] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_461;
        }

        goto LABEL_464;
      }
    }

    else
    {
      *(v43 + 82) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_456;
      }
    }

LABEL_459:
    if (a3 < 0)
    {
      *(v43 + 83) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      v43[46] = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_461:
        *(v43 + 94) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_466;
        }

        goto LABEL_469;
      }
    }

    else
    {
      *(v43 + 83) = *(v13 + 22);
      v43[46] = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_461;
      }
    }

LABEL_464:
    if (a2 < 0)
    {
      *(v43 + 94) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_466:
        *(v43 + 95) = -*(v13 + 26);
        v43[52] = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_471;
        }

        goto LABEL_474;
      }
    }

    else
    {
      *(v43 + 94) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_466;
      }
    }

LABEL_469:
    if (a3 < 0)
    {
      *(v43 + 95) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      v43[52] = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_471:
        *(v43 + 106) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_476;
        }

        goto LABEL_479;
      }
    }

    else
    {
      *(v43 + 95) = *(v13 + 26);
      v43[52] = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_471;
      }
    }

LABEL_474:
    if (a2 < 0)
    {
      *(v43 + 106) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_476:
        *(v43 + 107) = -*(v13 + 24);
        v43[58] = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_481;
        }

        goto LABEL_484;
      }
    }

    else
    {
      *(v43 + 106) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_476;
      }
    }

LABEL_479:
    if (a3 < 0)
    {
      *(v43 + 107) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      v43[58] = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_481:
        *(v43 + 118) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_486;
        }

        goto LABEL_489;
      }
    }

    else
    {
      *(v43 + 107) = *(v13 + 24);
      v43[58] = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_481;
      }
    }

LABEL_484:
    if (a2 < 0)
    {
      *(v43 + 118) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_486:
        *(v43 + 119) = -*(v13 + 26);
        v43[64] = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_491;
        }

        goto LABEL_494;
      }
    }

    else
    {
      *(v43 + 118) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_486;
      }
    }

LABEL_489:
    if (a3 < 0)
    {
      *(v43 + 119) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      v43[64] = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_491:
        *(v43 + 130) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_496;
        }

        goto LABEL_499;
      }
    }

    else
    {
      *(v43 + 119) = *(v13 + 26);
      v43[64] = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_491;
      }
    }

LABEL_494:
    if (a2 < 0)
    {
      *(v43 + 130) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_496:
        *(v43 + 131) = -*(v13 + 22);
        v43[70] = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_501;
        }

        goto LABEL_504;
      }
    }

    else
    {
      *(v43 + 130) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_496;
      }
    }

LABEL_499:
    if (a3 < 0)
    {
      *(v43 + 131) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      v43[70] = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_501:
        *(v43 + 142) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_506;
        }

        goto LABEL_509;
      }
    }

    else
    {
      *(v43 + 131) = *(v13 + 22);
      v43[70] = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_501;
      }
    }

LABEL_504:
    if (a2 < 0)
    {
      *(v43 + 142) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_506:
        *(v43 + 143) = -*(v13 + 28);
        *(v47 + 4) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_511;
        }

        goto LABEL_514;
      }
    }

    else
    {
      *(v43 + 142) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_506;
      }
    }

LABEL_509:
    if (a3 < 0)
    {
      *(v43 + 143) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 4) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_511:
        *(v47 + 10) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_516;
        }

        goto LABEL_519;
      }
    }

    else
    {
      *(v43 + 143) = *(v13 + 28);
      *(v47 + 4) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_511;
      }
    }

LABEL_514:
    if (a2 < 0)
    {
      *(v47 + 10) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_516:
        *(v47 + 11) = -*(v13 + 24);
        *(v47 + 10) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_521;
        }

        goto LABEL_524;
      }
    }

    else
    {
      *(v47 + 10) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_516;
      }
    }

LABEL_519:
    if (a3 < 0)
    {
      *(v47 + 11) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 10) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_521:
        *(v47 + 22) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_526;
        }

        goto LABEL_529;
      }
    }

    else
    {
      *(v47 + 11) = *(v13 + 24);
      *(v47 + 10) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_521;
      }
    }

LABEL_524:
    if (a2 < 0)
    {
      *(v47 + 22) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_526:
        *(v47 + 23) = -*(v13 + 22);
        *(v47 + 16) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_531;
        }

        goto LABEL_534;
      }
    }

    else
    {
      *(v47 + 22) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_526;
      }
    }

LABEL_529:
    if (a3 < 0)
    {
      *(v47 + 23) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      *(v47 + 16) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_531:
        *(v47 + 34) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_536;
        }

        goto LABEL_539;
      }
    }

    else
    {
      *(v47 + 23) = *(v13 + 22);
      *(v47 + 16) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_531;
      }
    }

LABEL_534:
    if (a2 < 0)
    {
      *(v47 + 34) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_536:
        *(v47 + 35) = -*(v13 + 22);
        *(v47 + 22) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_541;
        }

        goto LABEL_544;
      }
    }

    else
    {
      *(v47 + 34) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_536;
      }
    }

LABEL_539:
    if (a3 < 0)
    {
      *(v47 + 35) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      *(v47 + 22) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_541:
        *(v47 + 46) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_546;
        }

        goto LABEL_549;
      }
    }

    else
    {
      *(v47 + 35) = *(v13 + 22);
      *(v47 + 22) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_541;
      }
    }

LABEL_544:
    if (a2 < 0)
    {
      *(v47 + 46) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_546:
        *(v47 + 47) = -*(v13 + 22);
        *(v47 + 28) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_551;
        }

        goto LABEL_554;
      }
    }

    else
    {
      *(v47 + 46) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_546;
      }
    }

LABEL_549:
    if (a3 < 0)
    {
      *(v47 + 47) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      *(v47 + 28) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_551:
        *(v47 + 58) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_556;
        }

        goto LABEL_559;
      }
    }

    else
    {
      *(v47 + 47) = *(v13 + 22);
      *(v47 + 28) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_551;
      }
    }

LABEL_554:
    if (a2 < 0)
    {
      *(v47 + 58) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_556:
        *(v47 + 59) = -*(v13 + 24);
        *(v47 + 34) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_561;
        }

        goto LABEL_564;
      }
    }

    else
    {
      *(v47 + 58) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_556;
      }
    }

LABEL_559:
    if (a3 < 0)
    {
      *(v47 + 59) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 34) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_561:
        *(v47 + 70) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_566;
        }

        goto LABEL_569;
      }
    }

    else
    {
      *(v47 + 59) = *(v13 + 24);
      *(v47 + 34) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_561;
      }
    }

LABEL_564:
    if (a2 < 0)
    {
      *(v47 + 70) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_566:
        *(v47 + 71) = -*(v13 + 24);
        *(v47 + 40) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_571;
        }

        goto LABEL_574;
      }
    }

    else
    {
      *(v47 + 70) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_566;
      }
    }

LABEL_569:
    if (a3 < 0)
    {
      *(v47 + 71) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 40) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_571:
        *(v47 + 82) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_576;
        }

        goto LABEL_579;
      }
    }

    else
    {
      *(v47 + 71) = *(v13 + 24);
      *(v47 + 40) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_571;
      }
    }

LABEL_574:
    if (a2 < 0)
    {
      *(v47 + 82) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_576:
        *(v47 + 83) = -*(v13 + 26);
        *(v47 + 46) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_581;
        }

        goto LABEL_584;
      }
    }

    else
    {
      *(v47 + 82) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_576;
      }
    }

LABEL_579:
    if (a3 < 0)
    {
      *(v47 + 83) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 46) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_581:
        *(v47 + 94) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_586;
        }

        goto LABEL_589;
      }
    }

    else
    {
      *(v47 + 83) = *(v13 + 26);
      *(v47 + 46) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_581;
      }
    }

LABEL_584:
    if (a2 < 0)
    {
      *(v47 + 94) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_586:
        *(v47 + 95) = -*(v13 + 24);
        *(v47 + 52) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_591;
        }

        goto LABEL_594;
      }
    }

    else
    {
      *(v47 + 94) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_586;
      }
    }

LABEL_589:
    if (a3 < 0)
    {
      *(v47 + 95) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 52) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_591:
        *(v47 + 106) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_596;
        }

        goto LABEL_599;
      }
    }

    else
    {
      *(v47 + 95) = *(v13 + 24);
      *(v47 + 52) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_591;
      }
    }

LABEL_594:
    if (a2 < 0)
    {
      *(v47 + 106) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_596:
        *(v47 + 107) = -*(v13 + 24);
        *(v47 + 58) = *(v13 + 92);
        if (a2 >= 1)
        {
          goto LABEL_601;
        }

        goto LABEL_604;
      }
    }

    else
    {
      *(v47 + 106) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_596;
      }
    }

LABEL_599:
    if (a3 < 0)
    {
      *(v47 + 107) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 58) = *(v13 + 92);
      if (a2 >= 1)
      {
LABEL_601:
        *(v47 + 118) = -*(v13 + 23);
        if (a3 >= 1)
        {
          goto LABEL_606;
        }

        goto LABEL_609;
      }
    }

    else
    {
      *(v47 + 107) = *(v13 + 24);
      *(v47 + 58) = *(v13 + 92);
      if (a2 >= 1)
      {
        goto LABEL_601;
      }
    }

LABEL_604:
    if (a2 < 0)
    {
      *(v47 + 118) = (*v13 + *v13) - *(v13 + 23);
      if (a3 >= 1)
      {
LABEL_606:
        *(v47 + 119) = -*(v13 + 24);
        *(v47 + 64) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_611;
        }

        goto LABEL_614;
      }
    }

    else
    {
      *(v47 + 118) = *(v13 + 23);
      if (a3 >= 1)
      {
        goto LABEL_606;
      }
    }

LABEL_609:
    if (a3 < 0)
    {
      *(v47 + 119) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 24);
      *(v47 + 64) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_611:
        *(v47 + 130) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_616;
        }

        goto LABEL_619;
      }
    }

    else
    {
      *(v47 + 119) = *(v13 + 24);
      *(v47 + 64) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_611;
      }
    }

LABEL_614:
    if (a2 < 0)
    {
      *(v47 + 130) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_616:
        *(v47 + 131) = -*(v13 + 26);
        *(v47 + 70) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_621;
        }

        goto LABEL_624;
      }
    }

    else
    {
      *(v47 + 130) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_616;
      }
    }

LABEL_619:
    if (a3 < 0)
    {
      *(v47 + 131) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 70) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_621:
        *(v47 + 142) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_626;
        }

        goto LABEL_629;
      }
    }

    else
    {
      *(v47 + 131) = *(v13 + 26);
      *(v47 + 70) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_621;
      }
    }

LABEL_624:
    if (a2 < 0)
    {
      *(v47 + 142) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_626:
        *(v47 + 143) = -*(v13 + 26);
        *(v47 + 76) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_631;
        }

        goto LABEL_634;
      }
    }

    else
    {
      *(v47 + 142) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_626;
      }
    }

LABEL_629:
    if (a3 < 0)
    {
      *(v47 + 143) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 76) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_631:
        *(v47 + 154) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_636;
        }

        goto LABEL_639;
      }
    }

    else
    {
      *(v47 + 143) = *(v13 + 26);
      *(v47 + 76) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_631;
      }
    }

LABEL_634:
    if (a2 < 0)
    {
      *(v47 + 154) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_636:
        *(v47 + 155) = -*(v13 + 28);
        *(v47 + 82) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_641;
        }

        goto LABEL_644;
      }
    }

    else
    {
      *(v47 + 154) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_636;
      }
    }

LABEL_639:
    if (a3 < 0)
    {
      *(v47 + 155) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 82) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_641:
        *(v47 + 166) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_646;
        }

        goto LABEL_649;
      }
    }

    else
    {
      *(v47 + 155) = *(v13 + 28);
      *(v47 + 82) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_641;
      }
    }

LABEL_644:
    if (a2 < 0)
    {
      *(v47 + 166) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_646:
        *(v47 + 167) = -*(v13 + 26);
        *(v47 + 88) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_651;
        }

        goto LABEL_654;
      }
    }

    else
    {
      *(v47 + 166) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_646;
      }
    }

LABEL_649:
    if (a3 < 0)
    {
      *(v47 + 167) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 88) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_651:
        *(v47 + 178) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_656;
        }

        goto LABEL_659;
      }
    }

    else
    {
      *(v47 + 167) = *(v13 + 26);
      *(v47 + 88) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_651;
      }
    }

LABEL_654:
    if (a2 < 0)
    {
      *(v47 + 178) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_656:
        *(v47 + 179) = -*(v13 + 26);
        *(v47 + 94) = *(v13 + 100);
        if (a2 >= 1)
        {
          goto LABEL_661;
        }

        goto LABEL_664;
      }
    }

    else
    {
      *(v47 + 178) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_656;
      }
    }

LABEL_659:
    if (a3 < 0)
    {
      *(v47 + 179) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 94) = *(v13 + 100);
      if (a2 >= 1)
      {
LABEL_661:
        *(v47 + 190) = -*(v13 + 25);
        if (a3 >= 1)
        {
          goto LABEL_666;
        }

        goto LABEL_669;
      }
    }

    else
    {
      *(v47 + 179) = *(v13 + 26);
      *(v47 + 94) = *(v13 + 100);
      if (a2 >= 1)
      {
        goto LABEL_661;
      }
    }

LABEL_664:
    if (a2 < 0)
    {
      *(v47 + 190) = (*v13 + *v13) - *(v13 + 25);
      if (a3 >= 1)
      {
LABEL_666:
        *(v47 + 191) = -*(v13 + 26);
        *(v47 + 100) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_671;
        }

        goto LABEL_674;
      }
    }

    else
    {
      *(v47 + 190) = *(v13 + 25);
      if (a3 >= 1)
      {
        goto LABEL_666;
      }
    }

LABEL_669:
    if (a3 < 0)
    {
      *(v47 + 191) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 26);
      *(v47 + 100) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_671:
        *(v47 + 202) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_676;
        }

        goto LABEL_679;
      }
    }

    else
    {
      *(v47 + 191) = *(v13 + 26);
      *(v47 + 100) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_671;
      }
    }

LABEL_674:
    if (a2 < 0)
    {
      *(v47 + 202) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_676:
        *(v47 + 203) = -*(v13 + 28);
        *(v47 + 106) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_681;
        }

        goto LABEL_684;
      }
    }

    else
    {
      *(v47 + 202) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_676;
      }
    }

LABEL_679:
    if (a3 < 0)
    {
      *(v47 + 203) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 106) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_681:
        *(v47 + 214) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_686;
        }

        goto LABEL_689;
      }
    }

    else
    {
      *(v47 + 203) = *(v13 + 28);
      *(v47 + 106) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_681;
      }
    }

LABEL_684:
    if (a2 < 0)
    {
      *(v47 + 214) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_686:
        *(v47 + 215) = -*(v13 + 28);
        *(v47 + 112) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_691;
        }

        goto LABEL_694;
      }
    }

    else
    {
      *(v47 + 214) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_686;
      }
    }

LABEL_689:
    if (a3 < 0)
    {
      *(v47 + 215) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 112) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_691:
        *(v47 + 226) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_696;
        }

        goto LABEL_699;
      }
    }

    else
    {
      *(v47 + 215) = *(v13 + 28);
      *(v47 + 112) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_691;
      }
    }

LABEL_694:
    if (a2 < 0)
    {
      *(v47 + 226) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_696:
        *(v47 + 227) = -*(v13 + 22);
        *(v47 + 118) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_701;
        }

        goto LABEL_704;
      }
    }

    else
    {
      *(v47 + 226) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_696;
      }
    }

LABEL_699:
    if (a3 < 0)
    {
      *(v47 + 227) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      *(v47 + 118) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_701:
        *(v47 + 238) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_706;
        }

        goto LABEL_709;
      }
    }

    else
    {
      *(v47 + 227) = *(v13 + 22);
      *(v47 + 118) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_701;
      }
    }

LABEL_704:
    if (a2 < 0)
    {
      *(v47 + 238) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_706:
        *(v47 + 239) = -*(v13 + 28);
        *(v47 + 124) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_711;
        }

        goto LABEL_714;
      }
    }

    else
    {
      *(v47 + 238) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_706;
      }
    }

LABEL_709:
    if (a3 < 0)
    {
      *(v47 + 239) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 124) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_711:
        *(v47 + 250) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_716;
        }

        goto LABEL_719;
      }
    }

    else
    {
      *(v47 + 239) = *(v13 + 28);
      *(v47 + 124) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_711;
      }
    }

LABEL_714:
    if (a2 < 0)
    {
      *(v47 + 250) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_716:
        *(v47 + 251) = -*(v13 + 28);
        *(v47 + 130) = *(v13 + 108);
        if (a2 >= 1)
        {
          goto LABEL_721;
        }

        goto LABEL_724;
      }
    }

    else
    {
      *(v47 + 250) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_716;
      }
    }

LABEL_719:
    if (a3 < 0)
    {
      *(v47 + 251) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 130) = *(v13 + 108);
      if (a2 >= 1)
      {
LABEL_721:
        *(v47 + 262) = -*(v13 + 27);
        if (a3 >= 1)
        {
          goto LABEL_726;
        }

        goto LABEL_729;
      }
    }

    else
    {
      *(v47 + 251) = *(v13 + 28);
      *(v47 + 130) = *(v13 + 108);
      if (a2 >= 1)
      {
        goto LABEL_721;
      }
    }

LABEL_724:
    if (a2 < 0)
    {
      *(v47 + 262) = (*v13 + *v13) - *(v13 + 27);
      if (a3 >= 1)
      {
LABEL_726:
        *(v47 + 263) = -*(v13 + 28);
        *(v47 + 136) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_731;
        }

        goto LABEL_734;
      }
    }

    else
    {
      *(v47 + 262) = *(v13 + 27);
      if (a3 >= 1)
      {
        goto LABEL_726;
      }
    }

LABEL_729:
    if (a3 < 0)
    {
      *(v47 + 263) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 28);
      *(v47 + 136) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_731:
        *(v47 + 274) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_736;
        }

        goto LABEL_739;
      }
    }

    else
    {
      *(v47 + 263) = *(v13 + 28);
      *(v47 + 136) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_731;
      }
    }

LABEL_734:
    if (a2 < 0)
    {
      *(v47 + 274) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_736:
        *(v47 + 275) = -*(v13 + 22);
        *(v47 + 142) = *(v13 + 84);
        if (a2 >= 1)
        {
          goto LABEL_741;
        }

        goto LABEL_744;
      }
    }

    else
    {
      *(v47 + 274) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_736;
      }
    }

LABEL_739:
    if (a3 < 0)
    {
      *(v47 + 275) = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
      *(v47 + 142) = *(v13 + 84);
      if (a2 >= 1)
      {
LABEL_741:
        *(v47 + 286) = -*(v13 + 21);
        if (a3 >= 1)
        {
          goto LABEL_389;
        }

        goto LABEL_748;
      }
    }

    else
    {
      *(v47 + 275) = *(v13 + 22);
      *(v47 + 142) = *(v13 + 84);
      if (a2 >= 1)
      {
        goto LABEL_741;
      }
    }

LABEL_744:
    if (a2 < 0)
    {
      *(v47 + 286) = (*v13 + *v13) - *(v13 + 21);
      if (a3 >= 1)
      {
LABEL_389:
        v48 = -*(v13 + 22);
        goto LABEL_390;
      }
    }

    else
    {
      *(v47 + 286) = *(v13 + 21);
      if (a3 >= 1)
      {
        goto LABEL_389;
      }
    }

LABEL_748:
    if (a3 < 0)
    {
      v48 = (*(v13 + 1) + *(v13 + 1)) - *(v13 + 22);
    }

    else
    {
      v48 = *(v13 + 22);
    }

LABEL_390:
    *(v47 + 287) = v48;
    v43 += 72;
    v47 += 1152;
    v13 += 116;
    v12 = v12 - 1;
  }

  while (v12);
}