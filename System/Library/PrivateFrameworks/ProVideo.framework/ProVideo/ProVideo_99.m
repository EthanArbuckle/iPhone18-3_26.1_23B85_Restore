void OZVortexBehavior::OZVortexBehavior(OZVortexBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C98F8;
  v5[2] = &unk_2872C9BE8;
  v5[6] = &unk_2872C9E40;
  v5[42] = &unk_2872C9E98;
  PCURL::PCURL(&v8, @"Vortex Behavior Pole Axis Enum");
  PCURL::PCURL(&v7, @"Vortex Behavior Pole Axis");
  OZChannelEnum::OZChannelEnum((this + 2248), 1u, &v8, &v7, (this + 56), 0x1F7u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  v6 = *(this + 20);
  PCURL::PCURL(&v8, @"Vortex Behavior Seed");
  OZChannelSeed::OZChannelSeed((this + 2504), v6, &v8, (this + 56), 0x1F8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Vortex Behavior Direction Enum");
  PCURL::PCURL(&v7, @"Vortex Behavior Direction");
  OZChannelEnum::OZChannelEnum((this + 2656), &v8, &v7, (this + 56), 0x1F4u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  OZChannel::setDefaultValue((this + 344), 1.0);
  OZChannelBase::reset((this + 344), 0);
  OZChannelBase::resetFlag((this + 2504), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2504));
}

void sub_260277F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 2504));
  OZChannelEnum::~OZChannelEnum((v12 + 2248));
  OZAttractorBehavior::~OZAttractorBehavior(v12);
  _Unwind_Resume(a1);
}

void OZVortexBehavior::OZVortexBehavior(OZVortexBehavior *this, OZVortexBehavior *a2, char a3)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3);
  *v5 = &unk_2872C98F8;
  v5[2] = &unk_2872C9BE8;
  v5[6] = &unk_2872C9E40;
  v5[42] = &unk_2872C9E98;
  OZChannelEnum::OZChannelEnum((v5 + 281), (a2 + 2248), (this + 56));
  OZChannel::OZChannel((this + 2504), (a2 + 2504), (this + 56));
  *(this + 313) = &unk_287247AE0;
  *(this + 315) = &unk_287247E40;
  OZChannelEnum::OZChannelEnum((this + 2656), (a2 + 2656), (this + 56));
}

void sub_2602780D8(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 2248));
  OZAttractorBehavior::~OZAttractorBehavior(v1);
  _Unwind_Resume(a1);
}

void OZVortexBehavior::~OZVortexBehavior(OZVortexBehavior *this)
{
  *this = &unk_2872C98F8;
  *(this + 2) = &unk_2872C9BE8;
  *(this + 6) = &unk_2872C9E40;
  *(this + 42) = &unk_2872C9E98;
  OZChannelEnum::~OZChannelEnum((this + 2656));
  OZChannel::~OZChannel((this + 2504));
  OZChannelEnum::~OZChannelEnum((this + 2248));

  OZAttractorBehavior::~OZAttractorBehavior(this);
}

{
  OZVortexBehavior::~OZVortexBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZVortexBehavior::~OZVortexBehavior(OZVortexBehavior *this)
{
  OZVortexBehavior::~OZVortexBehavior((this - 16));
}

{
  OZVortexBehavior::~OZVortexBehavior((this - 48));
}

{
  OZVortexBehavior::~OZVortexBehavior((this - 336));
}

{
  OZVortexBehavior::~OZVortexBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZVortexBehavior::~OZVortexBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZVortexBehavior::~OZVortexBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZVortexBehavior::operator=(uint64_t a1, const void *a2)
{
  OZAttractorBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return OZChannelBase::operator=(a1 + 2656, v4 + 2656);
}

void OZVortexBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  OZTransitiveBehavior::updateHiddenFlags(a1, a2);
  v3 = *(a2 + 8);
  v4 = 1;
  if (v3 == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      v7 = *(v3 + 16);
      if (v7)
      {
      }

      else
      {
        v8 = 0;
      }

      v9 = OZChannelBool3D::getX((v8 + 1656), v6, 0.0);
      v10 = OZChannelBool3D::getY((v8 + 1656), v6, 0.0);
      if (v9)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v10)
      {
        v9 = v11;
      }

      v12 = OZChannelBool3D::getZ((v8 + 1656), v6, 0.0);
      v5 |= v9 + v12 == 3;
      if (v9 + v12 == 3 && OZChannel::getValueAsInt((v8 + 2248), v6, 0.0) == 3)
      {
        break;
      }

      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        v4 = 1;
        goto LABEL_17;
      }
    }

    v4 = 0;
LABEL_17:
    v3 = *(a2 + 8);
  }

  for (; v3 != a2; v3 = *(v3 + 8))
  {
    v13 = *(v3 + 16);
    if (v13)
    {
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 2248);
    if (v5)
    {
      OZChannelBase::resetFlag(v15, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v15, 0x400000, 1);
    }

    OZChannelBase::enable((v14 + 2248), v5 & 1, 1);
    v16 = (v14 + 2504);
    if (v4)
    {
      OZChannelBase::setFlag(v16, 0x400000, 1);
    }

    else
    {
      OZChannelBase::resetFlag(v16, 0x400000, 1);
    }
  }
}

uint64_t OZVortexBehavior::accumInitialValues(OZVortexBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v32 = 0uLL;
  v33 = 0.0;
  TransformNode = OZSimulationBehavior::getTransformNode(this);
  OZSimulationState::getNodePosition(a2, (a2 + 176), TransformNode, a3, &v32);
  v21 = *a2;
  v23 = v32;
  v7 = v33;
  v8 = *(a2 + 2);
  v28 = 0uLL;
  v29 = 0.0;
  v27 = 0;
  result = OZAttractorBehavior::getMaskVector(this, v28.f64, &v27);
  if (v27 >= 2)
  {
    v30 = vmulq_f64(vsubq_f64(v23, v21), v28);
    v31 = (v7 - v8) * v29;
    v10 = sqrt(vaddvq_f64(vmulq_f64(v30, v30)) + v31 * v31);
    if (fabs(v10) >= 0.0000001)
    {
      v11 = MEMORY[0x277CC08F0];
      ValueAsInt = OZChannel::getValueAsInt((this + 2248), MEMORY[0x277CC08F0], 0.0);
      v13 = v27;
      v14 = OZChannel::getValueAsInt((this + 2504), v11, 0.0);
      OZVortexBehavior::CalcThrowDirection(v30.f64, v28.f64, v13, ValueAsInt, v14, 0, v26);
      v15 = *&v26[16];
      v24 = *v26;
      memset(v26, 0, sizeof(v26));
      OZAttractorBehavior::calcAttraction(this, a2, a3, v26);
      v16 = vmulq_f64(*&v26[8], *&v26[8]);
      v22 = sqrt(v10 * sqrt(*v26 * *v26 + v16.f64[0] + v16.f64[1]));
      v25 = vmulq_n_f64(v24, v22);
      result = OZChannel::getValueAsInt((this + 2656), v11, 0.0);
      v17 = -(v15 * v22);
      v18 = vdup_n_s32(result == 0);
      v19.i64[0] = v18.u32[0];
      v19.i64[1] = v18.u32[1];
      v20 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)), vnegq_f64(v25), v25);
      if (result)
      {
        v17 = v15 * v22;
      }

      *(a2 + 56) = vaddq_f64(*(a2 + 56), v20);
      *(a2 + 9) = *(a2 + 9) + v17;
    }
  }

  return result;
}

void OZVortexBehavior::CalcThrowDirection(double *a1@<X0>, double *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, double *a7@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    if (fabs(*a2) >= 0.0000001)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (fabs(a2[1]) >= 0.0000001)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    if (fabs(a2[2]) >= 0.0000001)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    v11 = a1[1];
    v12 = a1[2];
    v13 = v11 * v10 - v12 * v9;
    v14 = v8 * v12 - v10 * *a1;
    v15 = v9 * *a1 - v11 * v8;
    goto LABEL_34;
  }

  if (a4 != 3)
  {
    v48 = 0.0;
    v49 = 0.0;
    v46 = 1.0;
    v47 = 0.0;
    v50 = 1.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 1.0;
    v22 = &v46 + 3 * a4;
    v24 = v22[1];
    v23 = v22[2];
    v26 = *a1;
    v25 = a1[1];
    v27 = a1[2];
    v28 = v25 * v23 - v27 * v24;
    v29 = v27 * *v22 - v23 * *a1;
    v30 = v24 * *a1 - v25 * *v22;
    if (v30 * v30 + v28 * v28 + v29 * v29 <= 0.0001)
    {
      v33 = &v46 + 3 * ((a4 + 2) % 3);
      v13 = -*v33;
      v14 = -v33[1];
      v15 = -v33[2];
    }

    else
    {
      v31 = &v46 + 3 * ((a4 + 1) % 3);
      if (v28 * *v31 + v29 * v31[1] + v30 * v31[2] >= 0.0)
      {
        v32 = v28;
      }

      else
      {
        v30 = -v30;
        v29 = -v29;
        v32 = -v28;
      }

      v13 = v25 * v30 - v27 * v29;
      v14 = v27 * v32 - v26 * v30;
      v15 = v26 * v29 - v25 * v32;
    }

    goto LABEL_34;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  if (*a1 >= v17)
  {
    if (v17 < v18)
    {
      v21 = 1.0;
      v20 = 0.0;
LABEL_25:
      v19 = 0.0;
      goto LABEL_26;
    }

LABEL_24:
    v21 = 0.0;
    v20 = 1.0;
    goto LABEL_25;
  }

  if (v16 >= v18)
  {
    goto LABEL_24;
  }

  v19 = 1.0;
  v20 = 0.0;
  v21 = 0.0;
LABEL_26:
  v34 = v21 * v18 - v17 * v20;
  v35 = v16 * v20 - v19 * v18;
  v36 = v17 * v19 - v16 * v21;
  v37 = sqrt(v36 * v36 + v34 * v34 + v35 * v35);
  if (fabs(v37) >= 0.000000100000001)
  {
    v34 = v34 / v37;
    v35 = v35 / v37;
    v36 = v36 / v37;
  }

  v38 = -32;
  v39 = -1640531527;
  v40 = a6;
  do
  {
    a6 += (a5 + 16 * v40) ^ (v39 + v40) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v40 >> 5));
    v40 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * a6) ^ (v39 + a6) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (a6 >> 5));
    v39 -= 1640531527;
  }

  while (!__CFADD__(v38++, 1));
  v42 = __sincos_stret((v40 ^ a6) / 4294967300.0 * 6.28318531 * 0.5);
  v43 = sqrt(v16 * v16 + v17 * v17 + v18 * v18);
  if (fabs(v43) < 0.000000100000001)
  {
    v43 = 1.0;
  }

  v45[0] = v42.__cosval;
  v45[1] = v16 / v43 * v42.__sinval;
  v45[2] = v17 / v43 * v42.__sinval;
  v45[3] = v18 / v43 * v42.__sinval;
  v46 = 1.0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 1.0;
  v51 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  v54 = 1.0;
  PCMatrix33Tmpl<double>::setRotationFromQuaternion(&v46, v45);
  v13 = v34 * v46 + v35 * v47 + v36 * v48;
  v14 = v34 * v49 + v35 * v50 + v36 * v51;
  v15 = v34 * v52 + v35 * v53 + v36 * v54;
LABEL_34:
  v44 = sqrt(v15 * v15 + v14 * v14 + v13 * v13);
  if (fabs(v44) < 0.000000100000001)
  {
    v44 = 1.0;
  }

  *a7 = v13 / v44;
  a7[1] = v14 / v44;
  a7[2] = v15 / v44;
}

uint64_t OZVortexBehavior::accumInitialValues(OZVortexBehavior *this, OZSimStateArray *a2, int a3, OZTransformNode *a4)
{
  v40 = *(a2 + 1);
  v38 = 0uLL;
  v39 = 0.0;
  TransformNode = OZSimulationBehavior::getTransformNode(this);
  OZSimulationState::GetNodePosition(&v40, TransformNode, a4, &v38);
  v36 = 0uLL;
  v37 = 0.0;
  v35 = 0;
  result = OZAttractorBehavior::getMaskVector(this, v36.f64, &v35);
  if (v35 >= 2)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 2248), MEMORY[0x277CC08F0], 0.0);
    result = OZChannel::getValueAsInt((this + 2504), &v40, 0.0);
    v11 = *(a2 + 1);
    if (v11 != *a2 && a3 >= 1)
    {
      v12 = result;
      v13 = v11 - 248;
      v14 = 1;
      v15 = MEMORY[0x277CC08F0];
      do
      {
        v16 = v39 - *(v13 + 16);
        v33 = vmulq_f64(vsubq_f64(v38, *v13), v36);
        v34 = v16 * v37;
        v17 = sqrt(vaddvq_f64(vmulq_f64(v33, v33)) + v34 * v34);
        if (fabs(v17) < 0.0000001)
        {
          break;
        }

        v18 = v35;
        v19 = (*(**(v13 + 232) + 32))(*(v13 + 232));
        OZVortexBehavior::CalcThrowDirection(v33.f64, v36.f64, v18, ValueAsInt, v12, v19, v32);
        v20 = *&v32[1];
        v21 = v32[0];
        memset(v32, 0, 24);
        v29 = v21;
        v31 = v40;
        OZAttractorBehavior::calcAttraction(this, &v31, &v38, v13, v32);
        v22 = vmulq_f64(*(v32 + 8), *(v32 + 8));
        v28 = sqrt(v17 * sqrt(*v32 * *v32 + v22.f64[0] + v22.f64[1]));
        v30 = vmulq_n_f64(v29, v28);
        result = OZChannel::getValueAsInt((this + 2656), v15, 0.0);
        v23 = -(v20 * v28);
        v24 = vdup_n_s32(result == 0);
        v25.i64[0] = v24.u32[0];
        v25.i64[1] = v24.u32[1];
        v26 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), vnegq_f64(v30), v30);
        if (result)
        {
          v23 = v20 * v28;
        }

        *(v13 + 56) = vaddq_f64(*(v13 + 56), v26);
        *(v13 + 72) = *(v13 + 72) + v23;
        if (v13 == *a2)
        {
          break;
        }

        v13 -= 248;
      }

      while (v14++ < a3);
    }
  }

  return result;
}

double PCMatrix33Tmpl<double>::setRotationFromQuaternion(double *a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = v2 * v2 + v3 * v3 + v4 * v4 + v5 * v5;
  v7 = 2.0 / v6;
  v8 = v6 <= 0.0;
  v9 = 0.0;
  if (!v8)
  {
    v9 = v7;
  }

  v10 = v3 * v9;
  v11 = v4 * v9;
  v12 = v5 * v9;
  v13 = v2 * v10;
  v14 = v2 * v11;
  v15 = v2 * v12;
  v16 = v3 * v10;
  v17 = v3 * v11;
  v18 = v3 * v12;
  v19 = v4 * v11;
  v20 = v4 * v12;
  v21 = v5 * v12;
  *a1 = 1.0 - (v19 + v21);
  a1[1] = v17 - v15;
  a1[2] = v18 + v14;
  a1[3] = v17 + v15;
  a1[4] = 1.0 - (v16 + v21);
  a1[5] = v20 - v13;
  a1[6] = v18 - v14;
  a1[7] = v20 + v13;
  result = 1.0 - (v16 + v19);
  a1[8] = result;
  return result;
}

void OZWindBehavior::OZWindBehavior(OZWindBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C9ED8;
  v5[2] = &unk_2872CA1C0;
  v5[6] = &unk_2872CA418;
  v5[42] = &unk_2872CA470;
  PCURL::PCURL(&v7, @"Wind Behavior Coefficient");
  OZChannel3D::OZChannel3D((this + 504), 1.0, 1.0, 1.0, &v7, (this + 56), 0x190u, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Wind Behavior Wind Velocity");
  OZChannel3D::OZChannel3D((this + 1096), &v7, (this + 56), 0x191u, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "HUD Scale (Hidden)");
  OZChannelDouble::OZChannelDouble((this + 1688), &v7, (this + 56), 0x192u, 2, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Wind Dimension Type Enum (Hidden)");
  PCString::PCString(&v6, "Wind Dimension Type Enum (Hidden)");
  OZChannelEnum::OZChannelEnum((this + 1840), &v7, &v6, (this + 56), 0x193u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  OZChannel::setSliderMax((this + 640), 5.0);
  OZChannel::setSliderMax((this + 792), 5.0);
  OZChannel::setKeyframable((this + 1688), 0);
  OZChannel::setKeyframable((this + 1840), 0);
}

void sub_260279168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1688));
  OZChannel3D::~OZChannel3D((v10 + 1096));
  OZChannel3D::~OZChannel3D((v10 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZWindBehavior::OZWindBehavior(OZWindBehavior *this, OZWindBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C9ED8;
  v5[2] = &unk_2872CA1C0;
  v5[6] = &unk_2872CA418;
  v5[42] = &unk_2872CA470;
  OZChannel3D::OZChannel3D((v5 + 63), (a2 + 504), (this + 56));
  OZChannel3D::OZChannel3D((this + 1096), (a2 + 1096), (this + 56));
  OZChannel::OZChannel((this + 1688), (a2 + 1688), (this + 56));
  *(this + 211) = &unk_287245C60;
  *(this + 213) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1840), (a2 + 1840), (this + 56));
}

void sub_260279340(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannel3D::~OZChannel3D((v1 + 1096));
  OZChannel3D::~OZChannel3D((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZWindBehavior::~OZWindBehavior(OZWindBehavior *this)
{
  *this = &unk_2872C9ED8;
  *(this + 2) = &unk_2872CA1C0;
  *(this + 6) = &unk_2872CA418;
  *(this + 42) = &unk_2872CA470;
  OZChannelEnum::~OZChannelEnum((this + 1840));
  OZChannel::~OZChannel((this + 1688));
  *(this + 137) = &unk_28724B1C8;
  *(this + 139) = &unk_28724B528;
  OZChannel::~OZChannel((this + 1536));
  OZChannel2D::~OZChannel2D((this + 1096));
  *(this + 63) = &unk_28724B1C8;
  *(this + 65) = &unk_28724B528;
  OZChannel::~OZChannel((this + 944));
  OZChannel2D::~OZChannel2D((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZWindBehavior::~OZWindBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZWindBehavior::~OZWindBehavior(OZWindBehavior *this)
{
  OZWindBehavior::~OZWindBehavior((this - 16));
}

{
  OZWindBehavior::~OZWindBehavior((this - 48));
}

{
  OZWindBehavior::~OZWindBehavior((this - 336));
}

{
  OZWindBehavior::~OZWindBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZWindBehavior::~OZWindBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZWindBehavior::~OZWindBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZWindBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 504);
  OZChannelBase::operator=(a1 + 640, v5 + 640);
  OZChannelBase::operator=(a1 + 792, v5 + 792);
  OZChannelBase::operator=(a1 + 944, v5 + 944);
  OZChannelFolder::operator=(a1 + 1096);
  OZChannelBase::operator=(a1 + 1232, v5 + 1232);
  OZChannelBase::operator=(a1 + 1384, v5 + 1384);
  OZChannelBase::operator=(a1 + 1536, v5 + 1536);
  OZChannelBase::operator=(a1 + 1688, v5 + 1688);

  return OZChannelBase::operator=(a1 + 1840, v5 + 1840);
}

uint64_t OZWindBehavior::parseBegin(OZWindBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin(this, a2);
  if (*(a2 + 26) <= 2u)
  {
    OZChannel::setDefaultValue((this + 944), 0.0);
    (*(*(this + 118) + 288))(this + 944, 0);
  }

  return 1;
}

double OZWindBehavior::accumForces(OZWindBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v11 = *(a2 + 176);
  v9 = 0uLL;
  v10 = 0.0;
  v7 = 0uLL;
  v8 = 0.0;
  OZChannel3D::getValue(this + 504, &v11, &v9, 0.0);
  OZChannel3D::getValue(this + 1096, &v11, &v7, 0.0);
  v5 = (*(a2 + 9) - v8) * v10;
  *(a2 + 8) = vsubq_f64(*(a2 + 8), vmulq_f64(vsubq_f64(*(a2 + 56), v7), v9));
  result = *(a2 + 18) - v5;
  *(a2 + 18) = result;
  return result;
}

void OZWriggleBehavior::OZWriggleBehavior(OZWriggleBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872CA4B0;
  *(v5 + 16) = &unk_2872CA7F0;
  *(v5 + 48) = &unk_2872CAA48;
  *(v5 + 336) = &unk_2872CAAA0;
  *(v5 + 536) = &unk_2872CAAC8;
  *(v5 + 872) = 0u;
  *(v5 + 864) = v5 + 872;
  PCSharedMutex::PCSharedMutex((v5 + 888));
  PCURL::PCURL(&v8, @"Wriggle Behavior Offset");
  OZChannelDouble::OZChannelDouble((this + 992), 100.0, &v8, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Multiplier");
  OZChannelPercent::OZChannelPercent((this + 1144), 1.0, &v8, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Apply Mode Enum");
  PCURL::PCURL(&v7, @"Wriggle Behavior Apply Mode");
  OZChannelEnum::OZChannelEnum((this + 1296), 0, &v8, &v7, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Frequency");
  OZChannelDouble::OZChannelDouble((this + 1552), 1.0, &v8, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Phase");
  OZChannelDouble::OZChannelDouble((this + 1704), &v8, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Num Octaves");
  OZChannelDouble::OZChannelDouble((this + 1856), 10.0, &v8, (this + 56), 0xCDu, 2, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Frequency Step");
  OZChannelDouble::OZChannelDouble((this + 2008), 2.0, &v8, (this + 56), 0xCEu, 2, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Noisiness");
  OZChannelDouble::OZChannelDouble((this + 2160), 0.5, &v8, (this + 56), 0xCFu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Link");
  OZChannelBool::OZChannelBool((this + 2312), 0, &v8, (this + 56), 0xD0u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Affect Objects");
  OZChannelBool::OZChannelBool((this + 2464), &v8, (this + 56), 0xD5u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Seed");
  OZChannelSeed::OZChannelSeed((this + 2616), &v8, (this + 56), 0xD1u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior Start Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 2768), &v8, (this + 56), 0xD3u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wriggle Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 2920), &v8, (this + 56), 0xD4u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 3072), 0, &v8, (this + 56), 0xD6u, 2u, 0, 0);
  PCString::~PCString(&v8);
  *(this + 1612) = 0;
  OZChannel::setMin((this + 1552), 0.0);
  OZChannel::setSliderMax((this + 1552), 2.0);
  OZChannel::setSliderMax((this + 1704), 100.0);
  OZChannel::setMin((this + 1856), 1.0);
  OZChannel::setMax((this + 1856), 20.0);
  OZChannel::setMin((this + 2008), 1.0);
  OZChannel::setSliderMax((this + 2008), 10.0);
  OZChannel::setMin((this + 2160), 0.0);
  OZChannel::setMax((this + 2160), 1.0);
  OZChannel::setSliderMin((this + 2160), 0.0);
  OZChannel::setSliderMax((this + 2160), 1.0);
  LODWORD(v6) = *((*(*this + 312))(this) + 24);
  OZChannel::setDefaultValue((this + 2616), v6);
  OZChannelBase::reset((this + 2616), 0);
  OZChannel::setKeyframable((this + 2768), 0);
  OZChannel::setKeyframable((this + 2920), 0);
  OZChannelBase::resetFlag((this + 1296), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1296));
  OZChannelBase::resetFlag(this + 22, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 22);
  OZChannelBase::resetFlag((this + 2616), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2616));
  *(this + 79) = 0x4059000000000000;
}

void sub_260279E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 2920));
  OZChannel::~OZChannel((v12 + 2768));
  OZChannel::~OZChannel((v12 + 2616));
  OZChannelBool::~OZChannelBool((v12 + 2464));
  OZChannelBool::~OZChannelBool((v12 + 2312));
  OZChannel::~OZChannel((v12 + 2160));
  OZChannel::~OZChannel((v12 + 2008));
  OZChannel::~OZChannel((v12 + 1856));
  OZChannel::~OZChannel((v12 + 1704));
  OZChannel::~OZChannel((v12 + 1552));
  OZChannelEnum::~OZChannelEnum((v12 + 1296));
  OZChannelPercent::~OZChannelPercent((v12 + 1144));
  OZChannel::~OZChannel((v12 + 992));
  PCSharedMutex::~PCSharedMutex((v12 + 888));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v12 + 864, *(v12 + 872));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v12);
  _Unwind_Resume(a1);
}

void OZWriggleBehavior::OZWriggleBehavior(OZWriggleBehavior *this, const OZWriggleBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872CA4B0;
  *(v5 + 16) = &unk_2872CA7F0;
  *(v5 + 48) = &unk_2872CAA48;
  *(v5 + 336) = &unk_2872CAAA0;
  *(v5 + 536) = &unk_2872CAAC8;
  *(v5 + 872) = 0u;
  *(v5 + 864) = v5 + 872;
  PCSharedMutex::PCSharedMutex((v5 + 888));
  OZChannel::OZChannel((this + 992), (a2 + 992), (this + 56));
  *(this + 124) = &unk_287245C60;
  *(this + 126) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 1144), (a2 + 1144), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1296), (a2 + 1296), (this + 56));
  OZChannel::OZChannel((this + 1552), (a2 + 1552), (this + 56));
  *(this + 194) = &unk_287245C60;
  *(this + 196) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1704), (a2 + 1704), (this + 56));
  *(this + 213) = &unk_287245C60;
  *(this + 215) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1856), (a2 + 1856), (this + 56));
  *(this + 232) = &unk_287245C60;
  *(this + 234) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2008), (a2 + 2008), (this + 56));
  *(this + 251) = &unk_287245C60;
  *(this + 253) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2160), (a2 + 2160), (this + 56));
  *(this + 270) = &unk_287245C60;
  *(this + 272) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 2312), (a2 + 2312), (this + 56));
  OZChannelBool::OZChannelBool((this + 2464), a2 + 22, (this + 56));
  OZChannel::OZChannel((this + 2616), (a2 + 2616), (this + 56));
  *(this + 327) = &unk_287247AE0;
  *(this + 329) = &unk_287247E40;
  OZChannel::OZChannel((this + 2768), (a2 + 2768), (this + 56));
  *(this + 346) = &unk_287245C60;
  *(this + 348) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2920), (a2 + 2920), (this + 56));
  *(this + 365) = &unk_287245C60;
  *(this + 367) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 3072), (a2 + 3072), (this + 56));
  *(this + 1612) = *(a2 + 1612);
}

void sub_26027A4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10)
{
  OZChannel::~OZChannel(v11);
  OZChannel::~OZChannel(v18);
  OZChannel::~OZChannel(v17);
  OZChannelBool::~OZChannelBool((v10 + 2464));
  OZChannelBool::~OZChannelBool((v10 + 2312));
  OZChannel::~OZChannel(v16);
  OZChannel::~OZChannel(v15);
  OZChannel::~OZChannel(v14);
  OZChannel::~OZChannel(v13);
  OZChannel::~OZChannel(v12);
  OZChannelEnum::~OZChannelEnum((v10 + 1296));
  OZChannelPercent::~OZChannelPercent((v10 + 1144));
  OZChannel::~OZChannel(a10);
  PCSharedMutex::~PCSharedMutex((v10 + 888));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 864, *(v10 + 872));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZWriggleBehavior::~OZWriggleBehavior(OZWriggleBehavior *this)
{
  *this = &unk_2872CA4B0;
  *(this + 2) = &unk_2872CA7F0;
  *(this + 6) = &unk_2872CAA48;
  *(this + 42) = &unk_2872CAAA0;
  *(this + 67) = &unk_2872CAAC8;
  OZChannelBool::~OZChannelBool((this + 3072));
  OZChannel::~OZChannel((this + 2920));
  OZChannel::~OZChannel((this + 2768));
  OZChannel::~OZChannel((this + 2616));
  OZChannelBool::~OZChannelBool((this + 2464));
  OZChannelBool::~OZChannelBool((this + 2312));
  OZChannel::~OZChannel((this + 2160));
  OZChannel::~OZChannel((this + 2008));
  OZChannel::~OZChannel((this + 1856));
  OZChannel::~OZChannel((this + 1704));
  OZChannel::~OZChannel((this + 1552));
  OZChannelEnum::~OZChannelEnum((this + 1296));
  OZChannelPercent::~OZChannelPercent((this + 1144));
  OZChannel::~OZChannel((this + 992));
  PCSharedMutex::~PCSharedMutex((this + 888));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 864, *(this + 109));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZWriggleBehavior::~OZWriggleBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZWriggleBehavior::~OZWriggleBehavior(OZWriggleBehavior *this)
{
  OZWriggleBehavior::~OZWriggleBehavior((this - 16));
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 48));
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 336));
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 536));
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZWriggleBehavior::~OZWriggleBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZWriggleBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 992, (v4 + 496));
  OZChannelBase::operator=(a1 + 1144, (v5 + 572));
  OZChannelBase::operator=(a1 + 1296, (v5 + 648));
  OZChannelBase::operator=(a1 + 1552, (v5 + 776));
  OZChannelBase::operator=(a1 + 1704, (v5 + 852));
  OZChannelBase::operator=(a1 + 1856, (v5 + 928));
  OZChannelBase::operator=(a1 + 2008, (v5 + 1004));
  OZChannelBase::operator=(a1 + 2160, (v5 + 1080));
  OZChannelBase::operator=(a1 + 2312, (v5 + 1156));
  OZChannelBase::operator=(a1 + 2464, (v5 + 1232));
  OZChannelBase::operator=(a1 + 2616, (v5 + 1308));
  OZChannelBase::operator=(a1 + 2768, (v5 + 1384));
  OZChannelBase::operator=(a1 + 2920, (v5 + 1460));
  result = OZChannelBase::operator=(a1 + 3072, (v5 + 1536));
  *(a1 + 3224) = v5[1612];
  return result;
}

uint64_t OZWriggleBehavior::sceneNodeDidLoad(OZWriggleBehavior *this)
{
  result = OZSingleChannelBehavior::sceneNodeDidLoad(this);
  *(this + 1612) = 0;
  return result;
}

int8x8_t *OZWriggleBehavior::dirty(OZWriggleBehavior *this)
{
  PCSharedMutex::lock((this + 888));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 864, *(this + 109));
  *(this + 108) = this + 872;
  *(this + 872) = 0u;
  PCSharedMutex::unlock((this + 888));

  return OZBehavior::dirty(this);
}

OZChannelBase *OZWriggleBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 1296), MEMORY[0x277CC08F0], 0.0);
  v5 = *(a2 + 8);
  if (v5 == a2)
  {
LABEL_6:
    while (v5 != a2)
    {
      v8 = *(v5 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      v10 = (v9 + 992);
      if (ValueAsInt == 2)
      {
        OZChannelBase::setFlag(v10, 0x400000, 1);
        OZChannelBase::resetFlag((v9 + 1144), 0x400000, 1);
      }

      else
      {
        OZChannelBase::resetFlag(v10, 0x400000, 1);
        OZChannelBase::setFlag((v9 + 1144), 0x400000, 1);
      }

      v5 = *(v5 + 8);
    }
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      if (ValueAsInt != OZChannel::getValueAsInt((v7 + 1296), v6, 0.0))
      {
        break;
      }

      v5 = *(v5 + 8);
      if (v5 == a2)
      {
        v5 = *(a2 + 8);
        goto LABEL_6;
      }
    }

    for (i = *(a2 + 8); i != a2; i = *(i + 8))
    {
      v12 = *(i + 16);
      if (v12)
      {
      }

      else
      {
        v13 = 0;
      }

      OZChannelBase::resetFlag((v13 + 992), 0x400000, 1);
      OZChannelBase::resetFlag((v13 + 1144), 0x400000, 1);
    }
  }

  if (OZWriggleBehavior::canAffectObjects(a1))
  {

    return OZChannelBase::resetFlag((a1 + 2464), 0x400000, 1);
  }

  else
  {

    return OZChannelBase::setFlag((a1 + 2464), 0x400000, 1);
  }
}

uint64_t OZWriggleBehavior::canAffectObjects(OZWriggleBehavior *this)
{
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  if (ChanBase && (ObjectManipulator = OZChannelBase::getObjectManipulator(ChanBase)) != 0)
  {
    v3 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*((*(*ObjectManipulator + 256))(ObjectManipulator) + 8) + 8), xmmword_2608556D0)))) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void OZWriggleBehavior::createCurveNode(OZWriggleBehavior *this, OZChannel *a2, __n128 a3)
{
  OZSingleChannelBehavior::conformToChannel(this, a2, 1, a3);
  ChanBase = OZSingleChannelBehavior::getChanBase(this);
  var3 = a2->var3;
  if (ChanBase != a2 && a2)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v8 = v8->var6;
      if (v8 == ChanBase)
      {
        v9 = 1;
      }

      else
      {
        v7 *= 100;
        var3 += v8->var3 * v7;
        v9 = v8 == 0;
      }
    }

    while (!v9);
  }

  operator new();
}

void OZWriggleBehavior::didSkipApplyingToNonkeyframableChannel(OZWriggleBehavior *this, OZChannel *a2, __n128 a3)
{
  if (*(this + 3225) == 1)
  {
    OZSingleChannelBehavior::conformToChannel(this, a2, 0, a3);
  }
}

BOOL OZWriggleBehavior::CompareKeys::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return *a2 < *a3;
  }

  v10 = v3;
  v11 = v4;
  time1 = *(a2 + 4);
  v8 = *(a3 + 4);
  if (!CMTimeCompare(&time1, &v8))
  {
    return *(a2 + 32) < *(a3 + 32);
  }

  time1 = *(a2 + 4);
  v8 = *(a3 + 4);
  return CMTimeCompare(&time1, &v8) >> 31;
}

double OZWriggleBehavior::solveNode(OZWriggleBehavior *this, int a2, const CMTime *a3, double a4, double a5)
{
  memset(&v131, 0, sizeof(v131));
  (*(**(*(this + 47) + 32) + 336))(&v131);
  v127[0] = v131;
  if ((*(*this + 296))(this, v127, 0, 1, 1) && (*(*this + 336))(this))
  {
    v130 = v131;
    if (OZChannel::getValueAsInt((this + 3072), MEMORY[0x277CC08F0], 0.0))
    {
      OZChannelObjectRootBase::getTimeOffset((this + 56), &time2);
      *v128 = v130;
      time1 = time2;
      PC_CMTimeSaferAdd(v128, &time1, v127);
      v130 = v127[0];
    }

    *&v128[24] = 0;
    *v128 = a2;
    *&v128[4] = *&a3->value;
    *&v128[20] = a3->epoch;
    v129 = a4;
    PCSharedMutex::lock_shared((this + 888));
    v11 = std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::find<OZWriggleBehavior::ValueCacheKey>(this + 864, v128);
    if ((this + 872) != v11 && *(v11 + 88) == 1 && *(v11 + 72) == a5)
    {
      v12 = 0;
      v5 = *(v11 + 80);
    }

    else
    {
      v12 = 1;
    }

    PCSharedMutex::unlock_shared((this + 888));
    if (!v12)
    {
      return v5;
    }

    (*(*this + 608))(v127, this);
    memset(&v126, 0, sizeof(v126));
    v132 = *&v127[0].value;
    epoch = v127[0].epoch;
    v13 = (*(*this + 336))(this);
    OZChannel::getValueAsDouble((this + 2768), &v130, 0.0);
    OZScene::getTimeForFrame(v13, v14, &v124);
    *&time1.value = v132;
    time1.epoch = epoch;
    *&time2.value = v124;
    time2.epoch = v125;
    v15 = &v126;
    PC_CMTimeSaferAdd(&time1, &time2, &v126);
    v124 = 0uLL;
    v125 = 0;
    OZBehavior::getFrameDuration(this, &v121);
    time1 = v127[0];
    time2 = v127[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v132);
    *&time1.value = v132;
    time1.epoch = epoch;
    *&time2.value = v121;
    time2.epoch = v122;
    v16.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v123);
    v17 = (*(*this + 336))(this, v16);
    OZChannel::getValueAsDouble((this + 2920), &v130, 0.0);
    OZScene::getTimeForFrame(v17, v18, &v132);
    time1 = v123;
    *&time2.value = v132;
    time2.epoch = epoch;
    PC_CMTimeSaferSubtract(&time1, &time2, &v124);
    v132 = 0uLL;
    epoch = 0;
    time1 = v131;
    time2 = v126;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v131;
      *&time2.value = v124;
      time2.epoch = v125;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v15 = &v131;
      }

      else
      {
        v15 = &v124;
      }
    }

    v132 = *&v15->value;
    epoch = v15->epoch;
    time1 = *v15;
    time2 = v126;
    PC_CMTimeSaferSubtract(&time1, &time2, &v132);
    ValueAsInt = OZChannel::getValueAsInt((this + 2616), &v130, 0.0);
    if (!OZChannel::getValueAsInt((this + 2312), &v130, 0.0) && OZSingleChannelBehavior::getChanBase(this))
    {
      ValueAsInt ^= a2 & (*(OZSingleChannelBehavior::getChanBase(this) + 57) << 27 >> 31);
    }

    if (OZChannel::getValueAsInt((this + 2464), &v130, 0.0) && OZWriggleBehavior::canAffectObjects(this))
    {
      ValueAsInt ^= a4;
    }

    OZChannel::getValueAsDouble((this + 1704), &v130, 0.0);
    *&time1.value = v132;
    time1.epoch = epoch;
    v21 = v20 + CMTimeGetSeconds(&time1);
    v22 = OZChannel::getValueAsInt((this + 1856), &v130, 0.0);
    OZChannel::getValueAsDouble((this + 1552), &v130, 0.0);
    v24 = v23;
    OZChannel::getValueAsDouble((this + 2008), &v130, 0.0);
    v120 = v25;
    OZChannel::getValueAsDouble((this + 2160), &v130, 0.0);
    v119 = v26;
    v27 = OZChannel::getValueAsInt((this + 1296), &v130, 0.0);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        if (v22 < 1)
        {
          v103 = 0.5;
        }

        else
        {
          v85 = 0;
          v114 = a5;
          v118 = v21 + v21;
          v86 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
          v87 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
          v88 = 0.0;
          v89 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
          v90 = 1.0;
          v91 = 1.0;
          do
          {
            v92 = (v118 * v24);
            if (v92)
            {
              v93 = -32;
              v94 = -1640531527;
              v95 = v85;
              v96 = ValueAsInt;
              do
              {
                v95 += (v92 + 16 * v96) ^ (v96 + v94) ^ (v86 + (v96 >> 5));
                v96 += (v87 + 16 * v95) ^ (v94 + v95) ^ (v89 + (v95 >> 5));
                v94 -= 1640531527;
                v40 = __CFADD__(v93++, 1);
              }

              while (!v40);
              v91 = (v96 ^ v95) / 2147483650.0;
            }

            v97 = -32;
            v98 = -1640531527;
            v99 = v85;
            v100 = ValueAsInt;
            do
            {
              v99 += (v92 + 1 + 16 * v100) ^ (v100 + v98) ^ (v86 + (v100 >> 5));
              v100 += (v87 + 16 * v99) ^ (v98 + v99) ^ (v89 + (v99 >> 5));
              v98 -= 1640531527;
              v40 = __CFADD__(v97++, 1);
            }

            while (!v40);
            v101 = (v100 ^ v99) / 2147483650.0;
            v102 = cos((v118 * v24 - v92) * 3.14159265);
            v88 = v88 + v90 * ((1.0 - (1.0 - v102) * 0.5) * v91 + (1.0 - v102) * 0.5 * v101);
            v24 = v120 * v24;
            v90 = v119 * v90;
            ++v85;
            v91 = 0.0;
          }

          while (v85 != v22);
          v103 = (v88 + 1.0) * 0.5;
          a5 = v114;
        }

        OZChannel::getValueAsDouble((this + 1144), &v130, 0.0);
        v5 = v108 * v103 * a5;
        goto LABEL_83;
      }

      v5 = a5;
      if (v27 != 3)
      {
LABEL_83:
        PCSharedMutex::lock((this + 888));
        time1.value = v128;
        v109 = std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::__emplace_unique_key_args<OZWriggleBehavior::ValueCacheKey,std::piecewise_construct_t const&,std::tuple<OZWriggleBehavior::ValueCacheKey const&>,std::tuple<>>(this + 864, v128);
        *(v109 + 72) = a5;
        *(v109 + 80) = v5;
        *(v109 + 88) = 1;
        PCSharedMutex::unlock((this + 888));
        return v5;
      }

      v112 = a5;
      if (v22 < 1)
      {
        v51 = 0.0;
      }

      else
      {
        v48 = 0;
        v116 = v21 + v21;
        v49 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
        v50 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
        v51 = 0.0;
        v52 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
        v53 = 1.0;
        do
        {
          v54 = (v116 * v24);
          v55 = 0.0;
          if (v54)
          {
            v56 = -32;
            v57 = -1640531527;
            v58 = v48;
            v59 = ValueAsInt;
            do
            {
              v58 += (v54 + 16 * v59) ^ (v59 + v57) ^ (v49 + (v59 >> 5));
              v59 += (v50 + 16 * v58) ^ (v57 + v58) ^ (v52 + (v58 >> 5));
              v57 -= 1640531527;
              v40 = __CFADD__(v56++, 1);
            }

            while (!v40);
            v55 = (v59 ^ v58) / 2147483650.0;
          }

          v60 = -32;
          v61 = -1640531527;
          v62 = v48;
          v63 = ValueAsInt;
          do
          {
            v62 += (v54 + 1 + 16 * v63) ^ (v63 + v61) ^ (v49 + (v63 >> 5));
            v63 += (v50 + 16 * v62) ^ (v61 + v62) ^ (v52 + (v62 >> 5));
            v61 -= 1640531527;
            v40 = __CFADD__(v60++, 1);
          }

          while (!v40);
          v64 = (v63 ^ v62) / 2147483650.0;
          v65 = cos((v116 * v24 - v54) * 3.14159265);
          v51 = v51 + v53 * ((1.0 - (1.0 - v65) * 0.5) * v55 + (1.0 - v65) * 0.5 * v64);
          v24 = v120 * v24;
          v53 = v119 * v53;
          ++v48;
        }

        while (v48 != v22);
      }

      OZChannel::getValueAsDouble((this + 992), &v130, 0.0);
      v106 = v51 * v105;
      a5 = v112;
    }

    else
    {
      if (v27)
      {
        v5 = a5;
        if (v27 == 1)
        {
          if (v22 < 1)
          {
            v47 = 0.5;
          }

          else
          {
            v28 = 0;
            v111 = a5;
            v115 = v21 + v21;
            v29 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
            v30 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
            v31 = -1.0;
            v32 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
            v33 = 0.0;
            v34 = 1.0;
            do
            {
              v35 = (v115 * v24);
              if (v35)
              {
                v36 = -32;
                v37 = -1640531527;
                v38 = v28;
                v39 = ValueAsInt;
                do
                {
                  v38 += (v35 + 16 * v39) ^ (v39 + v37) ^ (v29 + (v39 >> 5));
                  v39 += (v30 + 16 * v38) ^ (v37 + v38) ^ (v32 + (v38 >> 5));
                  v37 -= 1640531527;
                  v40 = __CFADD__(v36++, 1);
                }

                while (!v40);
                v31 = (v39 ^ v38) / 2147483650.0;
              }

              v41 = -32;
              v42 = -1640531527;
              v43 = v28;
              v44 = ValueAsInt;
              do
              {
                v43 += (v35 + 1 + 16 * v44) ^ (v44 + v42) ^ (v29 + (v44 >> 5));
                v44 += (v30 + 16 * v43) ^ (v42 + v43) ^ (v32 + (v43 >> 5));
                v42 -= 1640531527;
                v40 = __CFADD__(v41++, 1);
              }

              while (!v40);
              v45 = (v44 ^ v43) / 2147483650.0;
              v46 = cos((v115 * v24 - v35) * 3.14159265);
              v33 = v33 + v34 * ((1.0 - (1.0 - v46) * 0.5) * v31 + (1.0 - v46) * 0.5 * v45);
              v24 = v120 * v24;
              v34 = v119 * v34;
              ++v28;
              v31 = 0.0;
            }

            while (v28 != v22);
            v47 = (v33 + 1.0) * 0.5;
            a5 = v111;
          }

          OZChannel::getValueAsDouble((this + 992), &v130, 0.0);
          v5 = a5 - v104 * v47;
        }

        goto LABEL_83;
      }

      if (v22 < 1)
      {
        v84 = 0.5;
      }

      else
      {
        v66 = 0;
        v113 = a5;
        v117 = v21 + v21;
        v67 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
        v68 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
        v69 = -1.0;
        v70 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
        v71 = 0.0;
        v72 = 1.0;
        do
        {
          v73 = (v117 * v24);
          if (v73)
          {
            v74 = -32;
            v75 = -1640531527;
            v76 = v66;
            v77 = ValueAsInt;
            do
            {
              v76 += (v73 + 16 * v77) ^ (v77 + v75) ^ (v67 + (v77 >> 5));
              v77 += (v68 + 16 * v76) ^ (v75 + v76) ^ (v70 + (v76 >> 5));
              v75 -= 1640531527;
              v40 = __CFADD__(v74++, 1);
            }

            while (!v40);
            v69 = (v77 ^ v76) / 2147483650.0;
          }

          v78 = -32;
          v79 = -1640531527;
          v80 = v66;
          v81 = ValueAsInt;
          do
          {
            v80 += (v73 + 1 + 16 * v81) ^ (v81 + v79) ^ (v67 + (v81 >> 5));
            v81 += (v68 + 16 * v80) ^ (v79 + v80) ^ (v70 + (v80 >> 5));
            v79 -= 1640531527;
            v40 = __CFADD__(v78++, 1);
          }

          while (!v40);
          v82 = (v81 ^ v80) / 2147483650.0;
          v83 = cos((v117 * v24 - v73) * 3.14159265);
          v71 = v71 + v72 * ((1.0 - (1.0 - v83) * 0.5) * v69 + (1.0 - v83) * 0.5 * v82);
          v24 = v120 * v24;
          v72 = v119 * v72;
          ++v66;
          v69 = 0.0;
        }

        while (v66 != v22);
        v84 = (v71 + 1.0) * 0.5;
        a5 = v113;
      }

      OZChannel::getValueAsDouble((this + 992), &v130, 0.0);
      v106 = v107 * v84;
    }

    v5 = v106 + a5;
    goto LABEL_83;
  }

  return a5;
}

void OZWriggleBehavior::didSetChannelInfo(OZWriggleBehavior *this, const OZChannelInfo *a2, OZChannel *a3)
{
  v5 = *(*(this + 140) + 40);
  OZChannel::setInfo((this + 992), a2);
  v6 = 1.0;
  if ((*(this + 3224) & 1) == 0)
  {
    v6 = v5 / *(a2 + 5);
  }

  v7 = *(a2 + 2);
  if (v7 == -3.40282347e38 || (v8 = *(a2 + 1), v8 == 3.40282347e38))
  {
    if (fabs(*(*(this + 140) + 40) + -57.2957795) >= 0.0000001)
    {
      v9 = 100.0;
    }

    else
    {
      v9 = 6.28318531;
    }
  }

  else
  {
    v9 = v8 - v7;
    v10 = *(this + 79);
    if (v10 < 3.40282347e38 && (*(this + 3224) & 1) == 0)
    {
      v6 = v6 * (v9 / v10);
    }
  }

  if (vabdd_f64(1.0, v6) >= 0.0000001)
  {
    OZChannel::scaleChannel((this + 992), v6);
  }

  OZChannel::setSliderMin((this + 992), 0.0);
  OZChannel::setSliderMax((this + 992), v9);
  (*(**(*(this + 138) + 8) + 256))();
  if (v9 > 0.0)
  {
    OZChannel::setMax((this + 992), v9);
  }
}

uint64_t OZWriggleBehavior::parseBegin(OZWriggleBehavior *this, PCSerializerReadStream *a2)
{
  *(this + 3224) = 0;
  v4 = *(a2 + 26);
  if (v4 < 5 || (v4 == 5 ? (v5 = *(a2 + 27) > 6u) : (v5 = 1), !v5))
  {
    *(this + 3225) = 1;
    OZChannel::setValue((this + 3072), MEMORY[0x277CC08F0], 1.0, 0);
  }

  return OZSingleChannelBehavior::parseBegin(this, a2);
}

uint64_t OZWriggleBehavior::parseElement(OZWriggleBehavior *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 110)
  {
    v7 = 0;
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v7);
    if (v7 == *(this + 254))
    {
      *(this + 3224) = 1;
    }
  }

  return OZSingleChannelBehavior::parseElement(this, a2, a3);
}

uint64_t OZWriggleBehavior::parseEnd(OZWriggleBehavior *this, PCSerializerReadStream *a2)
{
  if ((*(this + 3224) & 1) == 0)
  {
    *(this + 79) = 0x4059000000000000;
  }

  return OZSingleChannelBehavior::parseEnd(this, a2);
}

uint64_t non-virtual thunk toOZWriggleBehavior::parseEnd(OZWriggleBehavior *this, PCSerializerReadStream *a2)
{
  if ((*(this + 3176) & 1) == 0)
  {
    *(this + 73) = 0x4059000000000000;
  }

  return OZSingleChannelBehavior::parseEnd((this - 48), a2);
}

uint64_t std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::find<OZWriggleBehavior::ValueCacheKey>(uint64_t a1, uint64_t a2)
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
    a1 = OZWriggleBehavior::CompareKeys::operator()(a1, v3 + 32, a2);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || OZWriggleBehavior::CompareKeys::operator()(a1, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::__emplace_unique_key_args<OZWriggleBehavior::ValueCacheKey,std::piecewise_construct_t const&,std::tuple<OZWriggleBehavior::ValueCacheKey const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::__find_equal<OZWriggleBehavior::ValueCacheKey>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,std::__map_value_compare<OZWriggleBehavior::ValueCacheKey,std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>,OZWriggleBehavior::CompareKeys,true>,std::allocator<std::__value_type<OZWriggleBehavior::ValueCacheKey,OZWriggleBehavior::ValueCacheEntry>>>::__find_equal<OZWriggleBehavior::ValueCacheKey>(uint64_t a1, void *a2, uint64_t a3)
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
        a1 = OZWriggleBehavior::CompareKeys::operator()(a1, a3, (v4 + 4));
        if (!a1)
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

      a1 = OZWriggleBehavior::CompareKeys::operator()(a1, (v7 + 4), a3);
      if (!a1)
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

void OZZoomInOutBehavior::OZZoomInOutBehavior(OZZoomInOutBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872CAB40;
  v5[2] = &unk_2872CAE60;
  v5[6] = &unk_2872CB0B8;
  v5[42] = &unk_2872CB110;
  v5[67] = &unk_2872CB138;
  PCURL::PCURL(v7, @"Zoom In/Out Behavior Zoom");
  OZChannelDouble::OZChannelDouble((this + 864), 0, v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 1016), 0, v7, &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  *(this + 159) = 0;
  OZChannel::setMin((this + 864), -1.0);
  OZChannel::setMax((this + 864), 1.0);
  OZChannel::setSliderMin((this + 864), -1.0);
  OZChannel::setSliderMax((this + 864), 1.0);
  v8 = 0x500000004;
  *&v7[0].var0 = xmmword_260855700;
  OZChannelEnum::setTags((this + 1016), v7, 6);
}

void sub_26027C23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelEnum::~OZChannelEnum((v11 + 1016));
  OZChannel::~OZChannel((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZZoomInOutBehavior::OZZoomInOutBehavior(OZZoomInOutBehavior *this, const OZZoomInOutBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872CAB40;
  *(v5 + 16) = &unk_2872CAE60;
  *(v5 + 48) = &unk_2872CB0B8;
  *(v5 + 336) = &unk_2872CB110;
  *(v5 + 536) = &unk_2872CB138;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1016), (a2 + 1016), (this + 56));
  *(this + 159) = 0;
}

void sub_26027C3DC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZZoomInOutBehavior::~OZZoomInOutBehavior(OZZoomInOutBehavior *this)
{
  *this = &unk_2872CAB40;
  *(this + 2) = &unk_2872CAE60;
  *(this + 6) = &unk_2872CB0B8;
  *(this + 42) = &unk_2872CB110;
  *(this + 67) = &unk_2872CB138;
  OZChannelEnum::~OZChannelEnum((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZZoomInOutBehavior::~OZZoomInOutBehavior(OZZoomInOutBehavior *this)
{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 16));
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 48));
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 336));
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 536));
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomInOutBehavior::~OZZoomInOutBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZZoomInOutBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);

  return OZChannelBase::operator=(a1 + 1016, v5 + 1016);
}

unint64_t OZZoomInOutBehavior::addCurveNodesToChannels(OZZoomInOutBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 1, 0);
  if (a2)
  {
    *(this + 159) = v5;
    if (v5)
    {
      operator new();
    }
  }

  else
  {
    *(this + 159) = 0;
  }

  return v4;
}

double OZZoomInOutBehavior::solveNode(OZZoomInOutBehavior *this, unsigned int a2, const CMTime *a3, double a4, double a5)
{
  if ((*(*this + 768))(this, a4))
  {
    memset(&v27, 0, sizeof(v27));
    (*(**(*(this + 47) + 32) + 336))(&v27);
    v25 = 0uLL;
    v26 = 0;
    v8 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v8 + 336), &v25);
    (*(*this + 608))(&v22, this, FrameDuration);
    v21 = v22;
    memset(&v20, 0, sizeof(v20));
    *&time1.var0.var0 = v23;
    time1.var0.var3 = v24;
    *&v17.value = v25;
    v17.epoch = v26;
    PC_CMTimeSaferSubtract(&time1, &v17, &v20);
    time1.var0 = v27;
    v17 = v21;
    PC_CMTimeSaferSubtract(&time1, &v17, __p);
    *&time1.var0.var0 = v25;
    time1.var0.var3 = v26;
    v17 = v20;
    v10 = CMTimeCompare(&time1, &v17) >= 0 ? &v25 : &v20;
    v17 = *v10;
    operator/(__p, &v17, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    if (Seconds >= 0.0000001)
    {
      if (Seconds <= 0.9999999)
      {
        v12 = Seconds;
      }

      else
      {
        v12 = 1.0;
      }

      OZChannel::getValueAsDouble((this + 864), &v27, 0.0);
      if (fabs(v13) >= 0.0000001)
      {
        std::vector<double>::vector[abi:ne200100](__p, 4uLL);
        (*(*this + 744))(this, a3, __p);
        ValueAsInt = OZChannel::getValueAsInt((this + 1016), MEMORY[0x277CC08F0], 0.0);
        OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v12);
        OZRenderState::OZRenderState(&time1);
        time1.var0 = v27;
        v16 = *(this + 159);
        v17 = v27;
        OZCamera::cameraAtTime(v16, &v17);
      }
    }
  }

  return a5;
}

void sub_26027CED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56)
{
  PCSharedCount::~PCSharedCount(&a20);
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZZoomObjectBehavior::OZZoomObjectBehavior(OZZoomObjectBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872CB1B0;
  v5[2] = &unk_2872CB4D0;
  v5[6] = &unk_2872CB728;
  v5[42] = &unk_2872CB780;
  v5[67] = &unk_2872CB7A8;
  PCURL::PCURL(v7, @"Zoom Object Behavior Object");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 864), v7, (this + 56), 0xC8u, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Zoom Object Behavior Transition");
  OZChannelPercent::OZChannelPercent((this + 1024), 0.5, v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 1176), 0, v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Zoom Object Behavior Zoom");
  OZChannelDouble::OZChannelDouble((this + 1432), 0, v7, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(v7);
  *(this + 198) = 0;
  OZValueCache<OZZoomObjectCacheItem>::OZValueCache(this + 1592);
  OZChannel::setMin((this + 1432), -1.0);
  OZChannel::setMax((this + 1432), 1.0);
  OZChannel::setSliderMin((this + 1432), -1.0);
  OZChannel::setSliderMax((this + 1432), 1.0);
  v8 = 0x500000004;
  *&v7[0].var0 = xmmword_260855730;
  OZChannelEnum::setTags((this + 1176), v7, 6);
}

void sub_26027D1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZValueCache<OZZoomObjectCacheItem>::~OZValueCache(v11 + 1592);
  OZChannel::~OZChannel((v11 + 1432));
  OZChannelEnum::~OZChannelEnum((v11 + 1176));
  OZChannelPercent::~OZChannelPercent((v11 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZZoomObjectBehavior::OZZoomObjectBehavior(OZZoomObjectBehavior *this, const OZZoomObjectBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872CB1B0;
  v5[2] = &unk_2872CB4D0;
  v5[6] = &unk_2872CB728;
  v5[42] = &unk_2872CB780;
  v5[67] = &unk_2872CB7A8;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 108), (a2 + 864), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 1024), (a2 + 1024), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1176), (a2 + 1176), (this + 56));
  OZChannel::OZChannel((this + 1432), (a2 + 1432), (this + 56));
  *(this + 179) = &unk_287245C60;
  *(this + 181) = &unk_287245FC0;
  *(this + 198) = 0;
  OZValueCache<OZZoomObjectCacheItem>::OZValueCache(this + 1592);
}

void sub_26027D400(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 1176));
  OZChannelPercent::~OZChannelPercent((v1 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 864));
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZZoomObjectBehavior::~OZZoomObjectBehavior(OZZoomObjectBehavior *this)
{
  *this = &unk_2872CB1B0;
  *(this + 2) = &unk_2872CB4D0;
  *(this + 6) = &unk_2872CB728;
  *(this + 42) = &unk_2872CB780;
  *(this + 67) = &unk_2872CB7A8;
  OZValueCache<OZZoomObjectCacheItem>::~OZValueCache(this + 1592);
  OZChannel::~OZChannel((this + 1432));
  OZChannelEnum::~OZChannelEnum((this + 1176));
  OZChannelPercent::~OZChannelPercent((this + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZZoomObjectBehavior::~OZZoomObjectBehavior(OZZoomObjectBehavior *this)
{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 16));
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 48));
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 336));
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 536));
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZZoomObjectBehavior::~OZZoomObjectBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZZoomObjectBehavior::flushCache(OZZoomObjectBehavior *this)
{
  OZValueCache<OZBoundsCacheItem>::flush(this + 1592);

  OZCameraBehavior::flushCache(this);
}

uint64_t OZZoomObjectBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1024, v5 + 1024);
  OZChannelBase::operator=(a1 + 1432, v5 + 1432);

  return OZChannelBase::operator=(a1 + 1176, v5 + 1176);
}

unint64_t OZZoomObjectBehavior::addCurveNodesToChannels(OZZoomObjectBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 1, 0);
  if (a2)
  {
    *(this + 198) = v5;
    if (v5)
    {
      operator new();
    }
  }

  else
  {
    *(this + 198) = 0;
  }

  return v4;
}

double OZZoomObjectBehavior::solveNode(OZZoomObjectBehavior *this, int a2, const CMTime *a3, double a4, double a5)
{
  if ((*(*this + 768))(this, a4))
  {
    TransformNode = OZChanTransformNodeRef::getTransformNode((this + 864));
    if (TransformNode)
    {
      v10 = TransformNode;
      if (a2 < 3 || a2 == 100)
      {
        memset(&v62, 0, sizeof(v62));
        (*(**(*(this + 47) + 32) + 336))(&v62);
        v60 = 0uLL;
        v61 = 0;
        v11 = (*(*this + 336))(this);
        FrameDuration = OZSceneSettings::getFrameDuration((v11 + 336), &v60);
        (*(*this + 608))(&v57, this, FrameDuration);
        v56 = v57;
        memset(&v55, 0, sizeof(v55));
        *&time1.var0.var0 = v58;
        time1.var0.var3 = v59;
        *&time2.value = v60;
        time2.epoch = v61;
        PC_CMTimeSaferSubtract(&time1, &time2, &v55);
        time1.var0 = v62;
        time2 = v56;
        PC_CMTimeSaferSubtract(&time1, &time2, v30);
        *&time1.var0.var0 = v60;
        time1.var0.var3 = v61;
        time2 = v55;
        v13 = CMTimeCompare(&time1, &time2) >= 0 ? &v60 : &v55;
        time2 = *v13;
        operator/(v30, &time2, &time1);
        Seconds = CMTimeGetSeconds(&time1);
        if (Seconds >= 0.0)
        {
          if (Seconds <= 1.0)
          {
            v15 = Seconds;
          }

          else
          {
            v15 = 1.0;
          }

          v16 = 0.0;
          if (Seconds > 1.0)
          {
            if (a2 == 100)
            {
              v17 = 3;
            }

            else
            {
              v17 = a2;
            }

            time1.var0 = v56;
            time2 = v55;
            PC_CMTimeSaferAdd(&time1, &time2, v30);
            v16 = (*(*this + 776))(this, v17, v30, a5);
          }

          v54[1] = 0xBFF0000000000000;
          v54[0] = &unk_2872CB820;
          if (!OZValueCache<OZBoundsCacheItem>::find(this + 1592, v54, v15))
          {
            OZChannel::getValueAsDouble((this + 1432), &v62, 0.0);
            OZChannel::getValueAsDouble((this + 1024), &v62, 0.0);
            v20 = v19;
            v21 = 1.0;
            if (fabs(v19) >= 0.0000001)
            {
              v22 = v15 / v19;
              v23 = 1.0;
              if (v15 / v20 <= 1.0)
              {
                v23 = v15 / v20;
              }

              if (v22 >= 0.0)
              {
                v21 = v23;
              }

              else
              {
                v21 = 0.0;
              }
            }

            ValueAsInt = OZChannel::getValueAsInt((this + 1176), MEMORY[0x277CC08F0], 0.0);
            OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v21);
            memset(&v53, 0, sizeof(v53));
            if (v15 == 1.0)
            {
              time1.var0 = v56;
              time2 = v55;
              PC_CMTimeSaferAdd(&time1, &time2, &v53);
            }

            else
            {
              v53 = v62;
            }

            OZRenderState::OZRenderState(&time1);
            time1.var0 = v53;
            time1.var9 = 1;
            std::vector<double>::vector[abi:ne200100](&__p, 4uLL);
            (*(*this + 744))(this, a3, &__p);
            v49 = *__p;
            v50 = *(__p + 2);
            v47 = 0uLL;
            v48 = 0;
            v46 = 0x3FF0000000000000;
            v43 = 0x3FF0000000000000;
            v40 = 0x3FF0000000000000;
            time2.value = 0x3FF0000000000000;
            *&time2.timescale = 0u;
            v39 = 0u;
            v41 = 0u;
            v42 = 0u;
            v44 = 0u;
            v45 = 0u;
            OZTransformNode::getPivot(v10, &v47, &time1);
            (*(*v10 + 1256))(v10, &time2, &time1);
            PCMatrix44Tmpl<double>::transform<double>(&time2.value, &v47, &v47);
            time1.var0 = v62;
            v37 = 0x3FF0000000000000;
            v34 = 0x3FF0000000000000;
            v31 = 0x3FF0000000000000;
            *v30 = 0x3FF0000000000000;
            memset(&v30[8], 0, 32);
            v32 = 0u;
            v33 = 0u;
            v35 = 0u;
            v36 = 0u;
            v25 = *(*(this + 198) + 960);
            if (v25)
            {
              if (v26)
              {
                (*(*v26 + 1256))(v26, v30, &time1);
              }
            }

            PCMatrix44Tmpl<double>::transform<double>(v30, &v49, &v49);
            v27 = *(this + 198);
            var0 = time1.var0;
            OZCamera::cameraAtTime(v27, &var0);
          }

          if (a2 > 1)
          {
            if (a2 == 2)
            {
              v18 = *&v54[4];
            }

            else
            {
              v18 = *&v54[5];
            }
          }

          else if (a2)
          {
            v18 = *&v54[3];
          }

          else
          {
            v18 = *&v54[2];
          }

          return v16 + v18;
        }
      }
    }
  }

  return a5;
}

void sub_26027E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, PCSharedCount a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(&a24);
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZValueCache<OZZoomObjectCacheItem>::add(uint64_t a1, uint64_t a2)
{
  PCSharedMutex::lock((a1 + 40));
  std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(a1 + 8, *(a2 + 8));
  if (*(a1 + 24) >= *(a1 + 32))
  {
    std::list<OZProjectedBoundsCacheItem>::pop_front(a1 + 8);
  }

  operator new();
}

uint64_t OZValueCache<OZZoomObjectCacheItem>::OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872CB858;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_260347AE0;
  PCSharedMutex::PCSharedMutex((a1 + 40));
  return a1;
}

void OZValueCache<OZZoomObjectCacheItem>::~OZValueCache(uint64_t a1)
{
  OZValueCache<OZZoomObjectCacheItem>::~OZValueCache(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZValueCache<OZZoomObjectCacheItem>::~OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872CB858;
  OZValueCache<OZBoundsCacheItem>::flush(a1);
  PCSharedMutex::~PCSharedMutex((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  return a1;
}

uint64_t OZAttractedToBehavior_Factory::getInstance(OZAttractedToBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZAttractedToBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZAttractedToBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZAttractedToBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZAttractedToBehavior_Factory::_instance;
}

uint64_t OZAttractorBehavior_Factory::getInstance(OZAttractorBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZAttractorBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZAttractorBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZAttractorBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZAttractorBehavior_Factory::_instance;
}

uint64_t OZDriftAttractorBehavior_Factory::getInstance(OZDriftAttractorBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZDriftAttractorBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDriftAttractorBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDriftAttractorBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDriftAttractorBehavior_Factory::_instance;
}

uint64_t OZDriftAttractedToBehavior_Factory::getInstance(OZDriftAttractedToBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZDriftAttractedToBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDriftAttractedToBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDriftAttractedToBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDriftAttractedToBehavior_Factory::_instance;
}

uint64_t OZRepelFromBehavior_Factory::getInstance(OZRepelFromBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRepelFromBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRepelFromBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRepelFromBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRepelFromBehavior_Factory::_instance;
}

uint64_t OZRepelorBehavior_Factory::getInstance(OZRepelorBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRepelorBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRepelorBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRepelorBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRepelorBehavior_Factory::_instance;
}

uint64_t OZGravityBehavior_Factory::getInstance(OZGravityBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZGravityBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGravityBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGravityBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGravityBehavior_Factory::_instance;
}

uint64_t OZThrowBehavior_Factory::getInstance(OZThrowBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZThrowBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZThrowBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZThrowBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZThrowBehavior_Factory::_instance;
}

uint64_t OZSpinBehavior_Factory::getInstance(OZSpinBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSpinBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSpinBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSpinBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSpinBehavior_Factory::_instance;
}

uint64_t OZBrownianBehavior_Factory::getInstance(OZBrownianBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior_Factory::_instance;
}

uint64_t OZAlignSimBehavior_Factory::getInstance(OZAlignSimBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZAlignSimBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZAlignSimBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZAlignSimBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZAlignSimBehavior_Factory::_instance;
}

uint64_t OZRotationalDragBehavior_Factory::getInstance(OZRotationalDragBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRotationalDragBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRotationalDragBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRotationalDragBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRotationalDragBehavior_Factory::_instance;
}

uint64_t OZSpringBehavior_Factory::getInstance(OZSpringBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSpringBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSpringBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSpringBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSpringBehavior_Factory::_instance;
}

uint64_t OZViscousDragBehavior_Factory::getInstance(OZViscousDragBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZViscousDragBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZViscousDragBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZViscousDragBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZViscousDragBehavior_Factory::_instance;
}

uint64_t OZWindBehavior_Factory::getInstance(OZWindBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZWindBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZWindBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZWindBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZWindBehavior_Factory::_instance;
}

uint64_t OZVortexAroundBehavior_Factory::getInstance(OZVortexAroundBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZVortexAroundBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZVortexAroundBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZVortexAroundBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZVortexAroundBehavior_Factory::_instance;
}

uint64_t OZVortexBehavior_Factory::getInstance(OZVortexBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZVortexBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZVortexBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZVortexBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZVortexBehavior_Factory::_instance;
}

uint64_t OZBoundsCollisionBehavior_Factory::getInstance(OZBoundsCollisionBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZBoundsCollisionBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBoundsCollisionBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBoundsCollisionBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBoundsCollisionBehavior_Factory::_instance;
}

uint64_t OZRampBehavior_Factory::getInstance(OZRampBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRampBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRampBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRampBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRampBehavior_Factory::_instance;
}

uint64_t OZExponentialBehavior_Factory::getInstance(OZExponentialBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZExponentialBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZExponentialBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZExponentialBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZExponentialBehavior_Factory::_instance;
}

uint64_t OZLogarithmicBehavior_Factory::getInstance(OZLogarithmicBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZLogarithmicBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLogarithmicBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLogarithmicBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLogarithmicBehavior_Factory::_instance;
}

uint64_t OZRateBehavior_Factory::getInstance(OZRateBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRateBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRateBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRateBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRateBehavior_Factory::_instance;
}

uint64_t OZGrowShrinkBehavior_Factory::getInstance(OZGrowShrinkBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior_Factory::_instance;
}

uint64_t OZAverageBehavior_Factory::getInstance(OZAverageBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZAverageBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZAverageBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZAverageBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZAverageBehavior_Factory::_instance;
}

uint64_t OZRandomizeBehavior_Factory::getInstance(OZRandomizeBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRandomizeBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRandomizeBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRandomizeBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRandomizeBehavior_Factory::_instance;
}

uint64_t OZReverseBehavior_Factory::getInstance(OZReverseBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZReverseBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZReverseBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZReverseBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZReverseBehavior_Factory::_instance;
}

uint64_t OZNegateBehavior_Factory::getInstance(OZNegateBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZNegateBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZNegateBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZNegateBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZNegateBehavior_Factory::_instance;
}

uint64_t OZStopBehavior_Factory::getInstance(OZStopBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZStopBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZStopBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZStopBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZStopBehavior_Factory::_instance;
}

uint64_t OZOscillateBehavior_Factory::getInstance(OZOscillateBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZOscillateBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZOscillateBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZOscillateBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZOscillateBehavior_Factory::_instance;
}

uint64_t OZFadeInOutBehavior_Factory::getInstance(OZFadeInOutBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZFadeInOutBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFadeInOutBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFadeInOutBehavior_Factory::_instance;
}

uint64_t OZSnapAlignBehavior_Factory::getInstance(OZSnapAlignBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSnapAlignBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSnapAlignBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSnapAlignBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSnapAlignBehavior_Factory::_instance;
}

uint64_t OZFocusBehavior_Factory::getInstance(OZFocusBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZFocusBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFocusBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFocusBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFocusBehavior_Factory::_instance;
}

uint64_t OZFramingBehavior_Factory::getInstance(OZFramingBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZFramingBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFramingBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFramingBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFramingBehavior_Factory::_instance;
}

uint64_t OZMoveToBehavior_Factory::getInstance(OZMoveToBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZMoveToBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMoveToBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMoveToBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMoveToBehavior_Factory::_instance;
}

uint64_t OZPointAtBehavior_Factory::getInstance(OZPointAtBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZPointAtBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZPointAtBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZPointAtBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZPointAtBehavior_Factory::_instance;
}

uint64_t OZWriggleBehavior_Factory::getInstance(OZWriggleBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZWriggleBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZWriggleBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZWriggleBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZWriggleBehavior_Factory::_instance;
}

uint64_t OZGenericBehavior_Factory::getInstance(OZGenericBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZGenericBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGenericBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGenericBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGenericBehavior_Factory::_instance;
}

uint64_t OZGenericBehaviorV1_Factory::getInstance(OZGenericBehaviorV1_Factory *this)
{
  if (atomic_load_explicit(&OZGenericBehaviorV1_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGenericBehaviorV1_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGenericBehaviorV1_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGenericBehaviorV1_Factory::_instance;
}

uint64_t OZGenericBehaviorV2_Factory::getInstance(OZGenericBehaviorV2_Factory *this)
{
  if (atomic_load_explicit(&OZGenericBehaviorV2_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGenericBehaviorV2_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGenericBehaviorV2_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGenericBehaviorV2_Factory::_instance;
}

uint64_t OZAlignToBehavior_Factory::getInstance(OZAlignToBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZAlignToBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZAlignToBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZAlignToBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZAlignToBehavior_Factory::_instance;
}

uint64_t OZ3DEnginePhysicsBehavior_Factory::getInstance(OZ3DEnginePhysicsBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEnginePhysicsBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEnginePhysicsBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEnginePhysicsBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEnginePhysicsBehavior_Factory::_instance;
}

uint64_t OZ3DEngineApplyForceBehavior_Factory::getInstance(OZ3DEngineApplyForceBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEngineApplyForceBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEngineApplyForceBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEngineApplyForceBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEngineApplyForceBehavior_Factory::_instance;
}

uint64_t OZ3DEnginePhysicsFieldBehavior_Factory::getInstance(OZ3DEnginePhysicsFieldBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEnginePhysicsFieldBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEnginePhysicsFieldBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEnginePhysicsFieldBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEnginePhysicsFieldBehavior_Factory::_instance;
}

uint64_t OZ3DEngineScenePlacementBehavior_Factory::getInstance(OZ3DEngineScenePlacementBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEngineScenePlacementBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEngineScenePlacementBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEngineScenePlacementBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEngineScenePlacementBehavior_Factory::_instance;
}

uint64_t BHOvershootBehavior_Factory::getInstance(BHOvershootBehavior_Factory *this)
{
  if (atomic_load_explicit(&BHOvershootBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&BHOvershootBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<BHOvershootBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return BHOvershootBehavior_Factory::_instance;
}

uint64_t OZDiscreteBehavior_Factory::getInstance(OZDiscreteBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZDiscreteBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDiscreteBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDiscreteBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDiscreteBehavior_Factory::_instance;
}

uint64_t OZClampBehavior_Factory::getInstance(OZClampBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZClampBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZClampBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZClampBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZClampBehavior_Factory::_instance;
}

uint64_t OZDollyInOutBehavior_Factory::getInstance(OZDollyInOutBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZDollyInOutBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDollyInOutBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDollyInOutBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDollyInOutBehavior_Factory::_instance;
}

uint64_t OZPanBehavior_Factory::getInstance(OZPanBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZPanBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZPanBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZPanBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZPanBehavior_Factory::_instance;
}

uint64_t OZZoomInOutBehavior_Factory::getInstance(OZZoomInOutBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZZoomInOutBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZZoomInOutBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZZoomInOutBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZZoomInOutBehavior_Factory::_instance;
}

uint64_t OZZoomObjectBehavior_Factory::getInstance(OZZoomObjectBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZZoomObjectBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZZoomObjectBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZZoomObjectBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZZoomObjectBehavior_Factory::_instance;
}

void OZAttractedToBehavior_Factory::OZAttractedToBehavior_Factory(OZAttractedToBehavior_Factory *this)
{
  v4 = xmmword_2608507D0;
  v5 = xmmword_2608557B0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CB888;
  *(this + 18) = &unk_2872CB968;
}

void OZAttractorBehavior_Factory::OZAttractorBehavior_Factory(OZAttractorBehavior_Factory *this)
{
  v4 = xmmword_260850810;
  v5 = xmmword_2608557C0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CB9C0;
  *(this + 18) = &unk_2872CBAA0;
}

void OZDriftAttractorBehavior_Factory::OZDriftAttractorBehavior_Factory(OZDriftAttractorBehavior_Factory *this)
{
  v4 = xmmword_2608557C0;
  v5 = xmmword_2608557D0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CBAF8;
  *(this + 18) = &unk_2872CBBD8;
}

void OZDriftAttractedToBehavior_Factory::OZDriftAttractedToBehavior_Factory(OZDriftAttractedToBehavior_Factory *this)
{
  v4 = xmmword_2608557B0;
  v5 = xmmword_2608557E0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CBC30;
  *(this + 18) = &unk_2872CBD10;
}

void OZRepelFromBehavior_Factory::OZRepelFromBehavior_Factory(OZRepelFromBehavior_Factory *this)
{
  v4 = xmmword_2608557B0;
  v5 = xmmword_2608557F0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CBD68;
  *(this + 18) = &unk_2872CBE48;
}

void OZRepelorBehavior_Factory::OZRepelorBehavior_Factory(OZRepelorBehavior_Factory *this)
{
  v4 = xmmword_2608557C0;
  v5 = xmmword_260855800;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CBEA0;
  *(this + 18) = &unk_2872CBF80;
}

void OZGravityBehavior_Factory::OZGravityBehavior_Factory(OZGravityBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855810;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CBFD8;
  *(this + 18) = &unk_2872CC0B8;
}

void OZThrowBehavior_Factory::OZThrowBehavior_Factory(OZThrowBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855820;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC110;
  *(this + 18) = &unk_2872CC1F0;
}

void OZSpinBehavior_Factory::OZSpinBehavior_Factory(OZSpinBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855830;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC248;
  *(this + 18) = &unk_2872CC328;
}

void OZBrownianBehavior_Factory::OZBrownianBehavior_Factory(OZBrownianBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855840;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC380;
  *(this + 18) = &unk_2872CC460;
}

void OZAlignSimBehavior_Factory::OZAlignSimBehavior_Factory(OZAlignSimBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855850;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC4B8;
  *(this + 18) = &unk_2872CC598;
}

void OZRotationalDragBehavior_Factory::OZRotationalDragBehavior_Factory(OZRotationalDragBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855860;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC5F0;
  *(this + 18) = &unk_2872CC6D0;
}

void OZSpringBehavior_Factory::OZSpringBehavior_Factory(OZSpringBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855870;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC728;
  *(this + 18) = &unk_2872CC808;
}

void OZViscousDragBehavior_Factory::OZViscousDragBehavior_Factory(OZViscousDragBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855880;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC860;
  *(this + 18) = &unk_2872CC940;
}

void OZWindBehavior_Factory::OZWindBehavior_Factory(OZWindBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260855890;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CC998;
  *(this + 18) = &unk_2872CCA78;
}

void OZVortexAroundBehavior_Factory::OZVortexAroundBehavior_Factory(OZVortexAroundBehavior_Factory *this)
{
  v4 = xmmword_2608557B0;
  v5 = xmmword_2608558A0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CCAD0;
  *(this + 18) = &unk_2872CCBB0;
}

void OZVortexBehavior_Factory::OZVortexBehavior_Factory(OZVortexBehavior_Factory *this)
{
  v4 = xmmword_2608557C0;
  v5 = xmmword_2608558B0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CCC08;
  *(this + 18) = &unk_2872CCCE8;
}

void OZBoundsCollisionBehavior_Factory::OZBoundsCollisionBehavior_Factory(OZBoundsCollisionBehavior_Factory *this)
{
  v4 = xmmword_260850830;
  v5 = xmmword_2608558C0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CCD40;
  *(this + 18) = &unk_2872CCE20;
}

void OZRampBehavior_Factory::OZRampBehavior_Factory(OZRampBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_2608558D0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CCE78;
  *(this + 18) = &unk_2872CCF58;
}

void OZExponentialBehavior_Factory::OZExponentialBehavior_Factory(OZExponentialBehavior_Factory *this)
{
  v3 = xmmword_2608558D0;
  v4 = xmmword_2608558E0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CCFB0;
  *(this + 18) = &unk_2872CD090;
}

void OZLogarithmicBehavior_Factory::OZLogarithmicBehavior_Factory(OZLogarithmicBehavior_Factory *this)
{
  v3 = xmmword_2608558D0;
  v4 = xmmword_2608558F0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD0E8;
  *(this + 18) = &unk_2872CD1C8;
}

void OZRateBehavior_Factory::OZRateBehavior_Factory(OZRateBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855900;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD220;
  *(this + 18) = &unk_2872CD300;
}

void OZGrowShrinkBehavior_Factory::OZGrowShrinkBehavior_Factory(OZGrowShrinkBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855910;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD358;
  *(this + 18) = &unk_2872CD438;
}

void OZAverageBehavior_Factory::OZAverageBehavior_Factory(OZAverageBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855920;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD490;
  *(this + 18) = &unk_2872CD570;
}

void OZRandomizeBehavior_Factory::OZRandomizeBehavior_Factory(OZRandomizeBehavior_Factory *this)
{
  v3 = xmmword_260855940;
  v4 = xmmword_260855930;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD5C8;
  *(this + 18) = &unk_2872CD6A8;
}

void OZReverseBehavior_Factory::OZReverseBehavior_Factory(OZReverseBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855950;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD700;
  *(this + 18) = &unk_2872CD7E0;
}

void OZNegateBehavior_Factory::OZNegateBehavior_Factory(OZNegateBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855960;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD838;
  *(this + 18) = &unk_2872CD918;
}

void OZStopBehavior_Factory::OZStopBehavior_Factory(OZStopBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855970;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CD970;
  *(this + 18) = &unk_2872CDA50;
}

void OZOscillateBehavior_Factory::OZOscillateBehavior_Factory(OZOscillateBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855980;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CDAA8;
  *(this + 18) = &unk_2872CDB88;
}

void OZFadeInOutBehavior_Factory::OZFadeInOutBehavior_Factory(OZFadeInOutBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855990;
  v3 = xmmword_260348380;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CDBE0;
  *(this + 18) = &unk_2872CDCC0;
}

void OZSnapAlignBehavior_Factory::OZSnapAlignBehavior_Factory(OZSnapAlignBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608559A0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CDD18;
  *(this + 18) = &unk_2872CDDF8;
}

void OZFocusBehavior_Factory::OZFocusBehavior_Factory(OZFocusBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608559B0;
  v3 = xmmword_26084FA40;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CDE50;
  *(this + 18) = &unk_2872CDF30;
}

void OZFramingBehavior_Factory::OZFramingBehavior_Factory(OZFramingBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608559C0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CDF88;
  *(this + 18) = &unk_2872CE068;
}

void OZMoveToBehavior_Factory::OZMoveToBehavior_Factory(OZMoveToBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608559D0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE0C0;
  *(this + 18) = &unk_2872CE1A0;
}

void OZPointAtBehavior_Factory::OZPointAtBehavior_Factory(OZPointAtBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608559E0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE1F8;
  *(this + 18) = &unk_2872CE2D8;
}

void OZWriggleBehavior_Factory::OZWriggleBehavior_Factory(OZWriggleBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855940;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE330;
  *(this + 18) = &unk_2872CE410;
}

void OZGenericBehavior_Factory::OZGenericBehavior_Factory(OZGenericBehavior_Factory *this)
{
  v3 = xmmword_2603483A0;
  v4 = xmmword_2608559F0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE468;
  *(this + 18) = &unk_2872CE548;
}

void OZGenericBehaviorV1_Factory::OZGenericBehaviorV1_Factory(OZGenericBehaviorV1_Factory *this)
{
  v3 = xmmword_2608559F0;
  v4 = xmmword_260855A00;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE5A0;
  *(this + 18) = &unk_2872CE680;
}

void OZGenericBehaviorV2_Factory::OZGenericBehaviorV2_Factory(OZGenericBehaviorV2_Factory *this)
{
  v3 = xmmword_2603483A0;
  v4 = xmmword_260855A10;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE6D8;
  *(this + 18) = &unk_2872CE7B8;
}

void OZAlignToBehavior_Factory::OZAlignToBehavior_Factory(OZAlignToBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855A20;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE810;
  *(this + 18) = &unk_2872CE8F0;
}

void OZ3DEnginePhysicsBehavior_Factory::OZ3DEnginePhysicsBehavior_Factory(OZ3DEnginePhysicsBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855A30;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CE948;
  *(this + 18) = &unk_2872CEA28;
}

void OZ3DEngineApplyForceBehavior_Factory::OZ3DEngineApplyForceBehavior_Factory(OZ3DEngineApplyForceBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260852D10;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CEA80;
  *(this + 18) = &unk_2872CEB60;
}

void OZ3DEnginePhysicsFieldBehavior_Factory::OZ3DEnginePhysicsFieldBehavior_Factory(OZ3DEnginePhysicsFieldBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260852D20;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CEBB8;
  *(this + 18) = &unk_2872CEC98;
}

void OZ3DEngineScenePlacementBehavior_Factory::OZ3DEngineScenePlacementBehavior_Factory(OZ3DEngineScenePlacementBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855A40;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CECF0;
  *(this + 18) = &unk_2872CEDD0;
}

void BHOvershootBehavior_Factory::BHOvershootBehavior_Factory(BHOvershootBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855A50;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CEE28;
  *(this + 18) = &unk_2872CEF08;
}

void OZDiscreteBehavior_Factory::OZDiscreteBehavior_Factory(OZDiscreteBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855A60;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CEF60;
  *(this + 18) = &unk_2872CF040;
}

void OZClampBehavior_Factory::OZClampBehavior_Factory(OZClampBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260855A70;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CF098;
  *(this + 18) = &unk_2872CF178;
}

void OZDollyInOutBehavior_Factory::OZDollyInOutBehavior_Factory(OZDollyInOutBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855A80;
  v3 = xmmword_26084FA40;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CF1D0;
  *(this + 18) = &unk_2872CF2B0;
}

void OZPanBehavior_Factory::OZPanBehavior_Factory(OZPanBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855A90;
  v3 = xmmword_26084FA40;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CF308;
  *(this + 18) = &unk_2872CF3E8;
}

void OZZoomInOutBehavior_Factory::OZZoomInOutBehavior_Factory(OZZoomInOutBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855AA0;
  v3 = xmmword_26084FA40;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CF440;
  *(this + 18) = &unk_2872CF520;
}

void OZZoomObjectBehavior_Factory::OZZoomObjectBehavior_Factory(OZZoomObjectBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260855AB0;
  v3 = xmmword_26084FA40;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872CF578;
  *(this + 18) = &unk_2872CF658;
}

void PSEmitter::PSEmitter(PSEmitter *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZLockingElement::OZLockingElement(this, a2, a3, a4);
  *v5 = &unk_2872CF6B0;
  v5[25] = &unk_2872CF950;
  v5[27] = &unk_2872D0228;
  v5[31] = &unk_2872D0480;
  v5[841] = &unk_2872D04D8;
  PCString::PCString(&v103, "Channel ParticleTypes");
  OZChannelFolder::OZChannelFolder((this + 18976), &v103, (this + 256), 0x12Cu, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Shape Options");
  OZChannelFolder::OZChannelFolder((this + 19104), &v103, (this + 648), 0x12Du, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Shape Enum 2D");
  PCURL::PCURL(&v102, @"Emitter Shape Type");
  OZChannelEnum::OZChannelEnum((this + 19232), &v103, &v102, (this + 19104), 0x12Eu, 0, 0, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Shape Anim Enum");
  PCURL::PCURL(&v102, @"Emitter Shape Anim");
  OZChannelEnum::OZChannelEnum((this + 19488), 0, &v103, &v102, (this + 19104), 0x15Au, 2, 0, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emit At Points");
  OZChannelBool::OZChannelBool((this + 19744), &v103, (this + 19104), 0x12Fu, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emit Pattern Enum");
  PCURL::PCURL(&v102, @"Emitter Emit Pattern Type");
  Instance = PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(v6);
  OZChannelEnum::OZChannelEnum((this + 19896), 1u, &v103, &v102, (this + 19104), 0x148u, 0, Instance, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Num Points");
  v9 = PSEmitter::PSEmitter_numPointsChanImpl::getInstance(v8);
  v10 = PSEmitter::PSEmitter_numPointsChanInfo::getInstance(v9);
  OZChannelUint32::OZChannelUint32((this + 20152), 5.0, &v103, (this + 19104), 0x130u, 0, v9, v10);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Num Points U");
  v12 = PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(v11);
  v13 = PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(v12);
  OZChannelUint32::OZChannelUint32((this + 20304), 5.0, &v103, (this + 19104), 0x131u, 0, v12, v13);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Num Points V");
  v15 = PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(v14);
  v16 = PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(v15);
  OZChannelUint32::OZChannelUint32((this + 20456), 5.0, &v103, (this + 19104), 0x132u, 0, v15, v16);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Num Points W");
  v18 = PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(v17);
  v19 = PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(v18);
  OZChannelUint32::OZChannelUint32((this + 20608), 5.0, &v103, (this + 19104), 0x167u, 0, v18, v19);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Stroke Width");
  v21 = PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(v20);
  v22 = PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(v21);
  OZChannelPercent::OZChannelPercent((this + 20760), 1.0, &v103, (this + 19104), 0x162u, 2u, v21, v22);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Stroke Width OS");
  v24 = PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(v23);
  v25 = PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(v24);
  OZChannelPercent::OZChannelPercent((this + 20912), 1.0, &v103, (this + 19104), 0x163u, 2u, v24, v25);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Tile Offset");
  v27 = PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(v26);
  v28 = PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(v27);
  OZChannelPercent::OZChannelPercent((this + 21064), 0.0, &v103, (this + 19104), 0x149u, 0, v27, v28);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Build Origin Enum");
  PCURL::PCURL(&v102, @"Emitter Rect Build Origin Type");
  v30 = PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(v29);
  OZChannelEnum::OZChannelEnum((this + 21216), 4u, &v103, &v102, (this + 19104), 0x14Au, 0, v30, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Build Style Enum");
  PCURL::PCURL(&v102, @"Emitter Rect Build Style Type");
  v32 = PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(v31);
  OZChannelEnum::OZChannelEnum((this + 21472), 0, &v103, &v102, (this + 19104), 0x14Bu, 0, v32, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCString::PCString(&v103, "Hidden");
  v33 = PCString::PCString(&v102, "Hidden");
  v34 = PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(v33);
  OZChannelEnum::OZChannelEnum((this + 21728), 0xEu, &v103, &v102, (this + 19104), 0x168u, 0, v34, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCString::PCString(&v103, "Hidden");
  v35 = PCString::PCString(&v102, "Hidden");
  v36 = PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(v35);
  OZChannelEnum::OZChannelEnum((this + 21984), 0, &v103, &v102, (this + 19104), 0x169u, 0, v36, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Open Build Origin Enum");
  PCURL::PCURL(&v102, @"Emitter Open Build Origin Type");
  v38 = PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(v37);
  OZChannelEnum::OZChannelEnum((this + 22240), 0, &v103, &v102, (this + 19104), 0x14Eu, 0, v38, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Closed Build Origin Enum");
  PCURL::PCURL(&v102, @"Emitter Closed Build Origin Type");
  v40 = PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(v39);
  OZChannelEnum::OZChannelEnum((this + 22496), 1u, &v103, &v102, (this + 19104), 0x14Cu, 0, v40, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Radial Build Origin Enum");
  PCURL::PCURL(&v102, @"Emitter Radial Build Origin Type");
  v42 = PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(v41);
  OZChannelEnum::OZChannelEnum((this + 22752), 0, &v103, &v102, (this + 19104), 0x14Du, 0, v42, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Build Randomly");
  OZChannelBool::OZChannelBool((this + 23008), 0, &v103, (this + 19104), 0x14Fu, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Outline Offset");
  v44 = PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(v43);
  v45 = PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(v44);
  OZChannelPercent::OZChannelPercent((this + 23160), 0.0, &v103, (this + 19104), 0x150u, 0, v44, v45);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Radius");
  v47 = PSEmitter::PSEmitter_radiusChanImpl::getInstance(v46);
  v48 = PSEmitter::PSEmitter_radiusChanInfo::getInstance(v47);
  OZChannelDouble::OZChannelDouble((this + 23312), 200.0, &v103, (this + 19104), 0x133u, 0, v47, v48);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Point 1");
  OZChannelPosition3D::OZChannelPosition3D((this + 23464), -100.0, 0.0, 0.0, &v103, (this + 19104), 0x134u, 0, 3u);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Point 2");
  OZChannelPosition3D::OZChannelPosition3D((this + 24352), 100.0, 0.0, 0.0, &v103, (this + 19104), 0x135u, 0, 3u);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Width");
  v50 = PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(v49);
  OZChannelDouble::OZChannelDouble((this + 25240), 200.0, &v103, (this + 19104), 0x151u, 2, v50, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Size");
  v52 = PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(v51);
  v53 = PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(v52);
  OZChannel3D::OZChannel3D((this + 25392), 300.0, 300.0, 300.0, &v103, (this + 19104), 0x15Bu, 0, 3u, v52, v53);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Num Radial Arms");
  v55 = PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(v54);
  v56 = PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(v55);
  OZChannelUint32::OZChannelUint32((this + 25984), 3.0, &v103, (this + 19104), 0x153u, 0, v55, v56);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Points Per Arm");
  v58 = PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(v57);
  v59 = PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(v58);
  OZChannelUint32::OZChannelUint32((this + 26136), 10.0, &v103, (this + 19104), 0x154u, 0, v58, v59);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Spiral Twists");
  v61 = PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(v60);
  v62 = PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(v61);
  OZChannelDouble::OZChannelDouble((this + 26288), 0.25, &v103, (this + 19104), 0x155u, 0, v61, v62);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Wave Amplitude");
  v64 = PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(v63);
  OZChannelDouble::OZChannelDouble((this + 26440), 50.0, &v103, (this + 19104), 0x156u, 0, v64, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Wave Frequency");
  v66 = PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(v65);
  v67 = PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(v66);
  OZChannelDouble::OZChannelDouble((this + 26592), 1.0, &v103, (this + 19104), 0x157u, 0, v66, v67);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Wave Phase");
  v69 = PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(v68);
  OZChannelAngle::OZChannelAngle((this + 26744), 0.0, &v103, (this + 19104), 0x158u, 0, 0, v69);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Wave Damping");
  v71 = PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(v70);
  v72 = PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(v71);
  OZChannelDouble::OZChannelDouble((this + 26896), 0.0, &v103, (this + 19104), 0x15Fu, 0, v71, v72);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emit At Alpha");
  OZChannelBool::OZChannelBool((this + 27048), 1, &v103, (this + 19104), 0x141u, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emit Alpha Cutoff");
  OZChannelPercent::OZChannelPercent((this + 27200), 0.5, &v103, (this + 19104), 0x142u, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Geometry Node Ref");
  OZChanRotoshapeRef::OZChanRotoshapeRef((this + 27352), &v103, (this + 19104), 0x146u, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Image Node Ref");
  OZChanElementOrFootageRef::OZChanElementOrFootageRef((this + 27512), &v103, (this + 19104), 0x147u, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emission Angle");
  v74 = PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(v73);
  OZChannelAngle::OZChannelAngle((this + 27672), 0.0, &v103, (this + 648), 0x136u, 0, v74, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emission Longitude");
  v76 = PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(v75);
  OZChannelAngle::OZChannelAngle((this + 27824), 4.71238898, &v103, (this + 648), 0x166u, 0, v76, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Emission Range");
  v78 = PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(v77);
  OZChannelAngle::OZChannelAngle((this + 27976), 6.28318531, &v103, (this + 648), 0x137u, 0, v78, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Multiplier Properties");
  OZChannelFolder::OZChannelFolder((this + 28128), &v103, (this + 648), 0x138u, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Birth Rate");
  v80 = PSEmitter::PSEmitter_birthRateChanImpl::getInstance(v79);
  v81 = PSEmitter::PSEmitter_birthRateChanInfo::getInstance(v80);
  OZChannelPercent::OZChannelPercent((this + 28256), 1.0, &v103, (this + 28128), 0x139u, 0, v80, v81);
  PCString::~PCString(&v103);
  PCString::PCString(&v103, "Hidden");
  OZChannelBool::OZChannelBool((this + 28408), 0, &v103, (this + 28128), 0x16Cu, 2u, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Initial Num");
  v83 = PSEmitter::PSEmitter_initialNumChanImpl::getInstance(v82);
  OZChannelPercent::OZChannelPercent((this + 28560), 1.0, &v103, (this + 28128), 0x13Au, 0, v83, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Lifetime");
  v85 = PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(v84);
  v86 = PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(v85);
  OZChannelPercent::OZChannelPercent((this + 28712), 1.0, &v103, (this + 28128), 0x13Bu, 0, v85, v86);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Scale");
  OZChannelScale3D::OZChannelScale3D((this + 28864), 1.0, 1.0, 1.0, &v103, (this + 28128), 0x13Cu, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Speed");
  v88 = PSEmitter::PSEmitter_speedChanImpl::getInstance(v87);
  v89 = PSEmitter::PSEmitter_speedChanInfo::getInstance(v88);
  OZChannelPercent::OZChannelPercent((this + 29456), 1.0, &v103, (this + 28128), 0x13Du, 0, v88, v89);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Spin");
  v91 = PSEmitter::PSEmitter_spinChanImpl::getInstance(v90);
  v92 = PSEmitter::PSEmitter_spinChanInfo::getInstance(v91);
  OZChannelPercent::OZChannelPercent((this + 29608), 1.0, &v103, (this + 28128), 0x13Eu, 0, v91, v92);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Tint Color");
  OZChannelColor::OZChannelColor((this + 29760), 1.0, 1.0, 1.0, 1.0, &v103, (this + 648), 0x13Fu, 2u, 6u);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Tint Amount");
  v94 = PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(v93);
  OZChannelPercent::OZChannelPercent((this + 30920), 0.0, &v103, (this + 648), 0x140u, 2u, v94, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Render Order Enum");
  PCURL::PCURL(&v102, @"Emitter Render Order");
  OZChannelEnum::OZChannelEnum((this + 31072), &v103, &v102, (this + 648), 0x143u, 0, 0, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Replicator Reverse Stacking");
  OZChannelBool::OZChannelBool((this + 31328), &v103, (this + 648), 0x15Cu, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Interleave Particle Types");
  OZChannelBool::OZChannelBool((this + 31480), &v103, (this + 648), 0x144u, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Fill Points");
  OZChannelBool::OZChannelBool((this + 31632), 0, &v103, (this + 648), 0x159u, 0, 0, 0);
  PCString::~PCString(&v103);
  LODWORD(v91) = *(this + 70);
  PCURL::PCURL(&v103, @"Emitter Random Fill Seed");
  OZChannelSeed::OZChannelSeed((this + 31784), v91, &v103, (this + 648), 0x15Du, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Use Reparametrized Shape");
  OZChannelBool::OZChannelBool((this + 31936), 1, &v103, (this + 648), 0x15Eu, 2u, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Preview Position");
  OZChannelPosition::OZChannelPosition((this + 32088), &v103, (this + 648), 0x145u, 2u, 2u, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Is 3D");
  OZChannelBool::OZChannelBool((this + 32792), 0, &v103, (this + 648), 0x164u, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Render Space Enum");
  PCURL::PCURL(&v102, @"Emitter Render Space");
  v96 = PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(v95);
  OZChannelEnum::OZChannelEnum((this + 32944), 1u, &v103, &v102, (this + 648), 0x16Au, 0, v96, 0);
  PCString::~PCString(&v102);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Is Facing Camera");
  OZChannelBool::OZChannelBool((this + 33200), 1, &v103, (this + 648), 0x165u, 0, 0, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Is Depth Ordered");
  OZChannelBool::OZChannelBool((this + 33352), 1, &v103, (this + 648), 0x16Bu, 0, 0, 0);
  PCString::~PCString(&v103);
  *(this + 33512) = 0u;
  *(this + 8396) = -1;
  PCMutex::PCMutex((this + 33592));
  *(this + 2104) = 0u;
  *(this + 2105) = vdupq_n_s64(this + 33680);
  *(this + 4212) = 0;
  OZChannelFolder::setFoldFlag((this + 256), 0x40000);
  OZChannelFolder::saveStateAsDefault((this + 256));
  OZChannelBase::setFlag((this + 18976), 2, 0);
  OZChannelFolder::saveStateAsDefault((this + 18976));
  PSEmitter::updateEmitterShapeEnum(this, 0);
  PCURL::PCURL(&v103, @"Emitter Rect Size Width");
  OZChannelBase::setName((this + 25528), &v103, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Size Height");
  OZChannelBase::setName((this + 25680), &v103, 0);
  PCString::~PCString(&v103);
  PCURL::PCURL(&v103, @"Emitter Rect Size Depth");
  OZChannelBase::setName((this + 25832), &v103, 0);
  PCString::~PCString(&v103);
  resetVisibleInHUDFlags((this + 256), (this + 18976));
  (*(*this + 448))(this, 1);
  *(this + 16776) = 0;
  *(this + 33556) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 2098) = _Q0;
}

void sub_26028C984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  std::__list_imp<unsigned int>::clear(v14);
  PCMutex::~PCMutex((v12 + v20));
  v22 = *(v19 + 752);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  OZChannelBool::~OZChannelBool((v12 + v13));
  OZChannelBool::~OZChannelBool((v12 + v18));
  OZChannelEnum::~OZChannelEnum((v12 + v15));
  OZChannelBool::~OZChannelBool((v12 + 32792));
  OZChannelPosition::~OZChannelPosition((v12 + 32088));
  OZChannelBool::~OZChannelBool((v12 + 31936));
  OZChannel::~OZChannel((v12 + 31784));
  OZChannelBool::~OZChannelBool((v12 + 31632));
  OZChannelBool::~OZChannelBool((v12 + 31480));
  OZChannelBool::~OZChannelBool((v12 + 31328));
  OZChannelEnum::~OZChannelEnum((v12 + 31072));
  OZChannelPercent::~OZChannelPercent((v12 + 30920));
  OZChannelColor::~OZChannelColor((v12 + 29760));
  OZChannelPercent::~OZChannelPercent((v12 + 29608));
  OZChannelPercent::~OZChannelPercent((v12 + 29456));
  OZChannelScale3D::~OZChannelScale3D((v12 + 28864));
  OZChannelPercent::~OZChannelPercent((v12 + 28712));
  OZChannelPercent::~OZChannelPercent((v12 + 28560));
  OZChannelBool::~OZChannelBool((v12 + 28408));
  OZChannelPercent::~OZChannelPercent((v12 + 28256));
  OZChannelFolder::~OZChannelFolder((v12 + v17));
  OZChannel::~OZChannel((v12 + 27976));
  OZChannel::~OZChannel((v12 + 27824));
  OZChannel::~OZChannel((v12 + 27672));
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((v12 + 27512));
  OZChanRotoshapeRef::~OZChanRotoshapeRef((v12 + 27352));
  OZChannelPercent::~OZChannelPercent((v12 + 27200));
  OZChannelBool::~OZChannelBool((v12 + 27048));
  OZChannel::~OZChannel((v12 + 26896));
  OZChannel::~OZChannel((v12 + 26744));
  OZChannel::~OZChannel((v12 + 26592));
  OZChannel::~OZChannel((v12 + 26440));
  OZChannel::~OZChannel((v12 + 26288));
  OZChannel::~OZChannel((v12 + 26136));
  OZChannel::~OZChannel((v12 + 25984));
  OZChannel3D::~OZChannel3D((v12 + 25392));
  OZChannel::~OZChannel((v12 + 25240));
  OZChannelPosition3D::~OZChannelPosition3D((v12 + 24352));
  OZChannelPosition3D::~OZChannelPosition3D((v12 + 23464));
  OZChannel::~OZChannel((v12 + 23312));
  OZChannelPercent::~OZChannelPercent((v12 + 23160));
  OZChannelBool::~OZChannelBool((v12 + 23008));
  OZChannelEnum::~OZChannelEnum((v12 + 22752));
  OZChannelEnum::~OZChannelEnum((v12 + 22496));
  OZChannelEnum::~OZChannelEnum((v12 + 22240));
  OZChannelEnum::~OZChannelEnum((v12 + 21984));
  OZChannelEnum::~OZChannelEnum((v12 + 21728));
  OZChannelEnum::~OZChannelEnum((v12 + 21472));
  OZChannelEnum::~OZChannelEnum((v12 + 21216));
  OZChannelPercent::~OZChannelPercent((v12 + 21064));
  OZChannelPercent::~OZChannelPercent((v12 + 20912));
  OZChannelPercent::~OZChannelPercent((v12 + 20760));
  OZChannel::~OZChannel((v12 + 20608));
  OZChannel::~OZChannel((v12 + 20456));
  OZChannel::~OZChannel((v12 + 20304));
  OZChannel::~OZChannel((v12 + 20152));
  OZChannelEnum::~OZChannelEnum((v12 + 19896));
  OZChannelBool::~OZChannelBool((v12 + 19744));
  OZChannelEnum::~OZChannelEnum((v12 + 19488));
  OZChannelEnum::~OZChannelEnum((v12 + 19232));
  OZChannelFolder::~OZChannelFolder((v12 + v16));
  OZChannelFolder::~OZChannelFolder((v12 + 18976));
  OZLockingElement::~OZLockingElement(v12);
  _Unwind_Resume(a1);
}

void PSEmitter::updateEmitterShapeEnum(PSEmitter *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    PCSharedCount::PCSharedCount(v7);
    OZChannelBase::addToUndo((this + 19232), v7);
    PCString::~PCString(v7);
  }

  if (OZChannel::getValueAsInt((this + 32792), MEMORY[0x277CC08F0], 0.0))
  {
    *&v7[0].var0 = xmmword_26085610C;
    *v8 = unk_26085611C;
    *&v8[12] = unk_260856128;
    OZChannelEnum::setTags((this + 19232), v7, 11);
    PCURL::PCURL(&v6, @"Emitter Shape Enum 3D");
    OZChannelEnum::setStrings(this + 2404, &v6, 1);
    PCString::~PCString(&v6);
    return;
  }

  *&v8[16] = 5;
  *&v7[0].var0 = xmmword_260856138;
  *v8 = unk_260856148;
  OZChannelEnum::setTags((this + 19232), v7, 9);
  PCURL::PCURL(&v6, @"Emitter Shape Enum 2D");
  OZChannelEnum::setStrings(this + 2404, &v6, 1);
  PCString::~PCString(&v6);
  if (a2)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 19232), MEMORY[0x277CC08F0], 0.0);
    if (ValueAsInt == 10)
    {
      v5 = 2.0;
    }

    else
    {
      if (ValueAsInt != 11)
      {
        return;
      }

      v5 = 6.0;
    }

    OZChannel::setValue((this + 19232), MEMORY[0x277CC08F0], v5, 0);
  }
}

OZChannelBase *resetVisibleInHUDFlags(OZChannelBase *result, OZChannelBase *a2)
{
  var0 = result[1].var0;
  if (var0)
  {
    for (i = *var0; i != var0[1]; ++i)
    {
      v5 = *i;
      if (*i != a2)
      {
        {
          result = resetVisibleInHUDFlags(v8, a2);
        }

        else
        {
          result = OZChannelBase::resetFlag(v5, 16, 0);
        }
      }
    }
  }

  return result;
}

void PSEmitter::PSEmitter(PSEmitter *this, const PSEmitter *a2, uint64_t a3)
{
  v5 = a2 + 200;
  v19 = a3;
  OZLockingElement::OZLockingElement(this, (a2 + 200), a3);
  *v6 = &unk_2872CF6B0;
  v7 = v6 + 200;
  *(v6 + 200) = &unk_2872CF950;
  *(v6 + 216) = &unk_2872D0228;
  *(v6 + 248) = &unk_2872D0480;
  *(v6 + 6728) = &unk_2872D04D8;
  OZChannelFolder::OZChannelFolder((v6 + 18976), (a2 + 18976), (this + 256));
  OZChannelFolder::OZChannelFolder((this + 19104), (a2 + 19104), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 19232), (a2 + 19232), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 19488), (a2 + 19488), (this + 19104));
  OZChannelBool::OZChannelBool((this + 19744), (a2 + 19744), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 19896), (a2 + 19896), (this + 19104));
  OZChannel::OZChannel((this + 20152), (a2 + 20152), (this + 19104));
  *(this + 2519) = &unk_287246400;
  *(this + 2521) = &unk_287246760;
  OZChannel::OZChannel((this + 20304), (a2 + 20304), (this + 19104));
  *(this + 2538) = &unk_287246400;
  *(this + 2540) = &unk_287246760;
  OZChannel::OZChannel((this + 20456), (a2 + 20456), (this + 19104));
  *(this + 2557) = &unk_287246400;
  *(this + 2559) = &unk_287246760;
  OZChannel::OZChannel((this + 20608), a2 + 184, (this + 19104));
  *(this + 2576) = &unk_287246400;
  *(this + 2578) = &unk_287246760;
  OZChannelPercent::OZChannelPercent((this + 20760), (a2 + 20760), (this + 19104));
  OZChannelPercent::OZChannelPercent((this + 20912), (a2 + 20912), (this + 19104));
  OZChannelPercent::OZChannelPercent((this + 21064), (a2 + 21064), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 21216), (a2 + 21216), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 21472), (a2 + 21472), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 21728), (a2 + 21728), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 21984), (a2 + 21984), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 22240), (a2 + 22240), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 22496), (a2 + 22496), (this + 19104));
  OZChannelEnum::OZChannelEnum((this + 22752), (a2 + 22752), (this + 19104));
  OZChannelBool::OZChannelBool((this + 23008), (a2 + 23008), (this + 19104));
  OZChannelPercent::OZChannelPercent((this + 23160), (a2 + 23160), (this + 19104));
  OZChannel::OZChannel((this + 23312), (a2 + 23312), (this + 19104));
  *(this + 2914) = &unk_287245C60;
  *(this + 2916) = &unk_287245FC0;
  OZChannelPosition3D::OZChannelPosition3D((this + 23464), (a2 + 23464), (this + 19104));
  OZChannelPosition3D::OZChannelPosition3D((this + 24352), (a2 + 24352), (this + 19104));
  OZChannel::OZChannel((this + 25240), (a2 + 25240), (this + 19104));
  *(this + 3155) = &unk_287245C60;
  *(this + 3157) = &unk_287245FC0;
  OZChannel3D::OZChannel3D((this + 25392), (a2 + 25392), (this + 19104));
  OZChannel::OZChannel((this + 25984), a2 + 232, (this + 19104));
  *(this + 3248) = &unk_287246400;
  *(this + 3250) = &unk_287246760;
  OZChannel::OZChannel((this + 26136), (a2 + 26136), (this + 19104));
  *(this + 3267) = &unk_287246400;
  *(this + 3269) = &unk_287246760;
  OZChannel::OZChannel((this + 26288), (a2 + 26288), (this + 19104));
  *(this + 3286) = &unk_287245C60;
  *(this + 3288) = &unk_287245FC0;
  OZChannel::OZChannel((this + 26440), (a2 + 26440), (this + 19104));
  *(this + 3305) = &unk_287245C60;
  *(this + 3307) = &unk_287245FC0;
  OZChannel::OZChannel((this + 26592), (a2 + 26592), (this + 19104));
  *(this + 3324) = &unk_287245C60;
  *(this + 3326) = &unk_287245FC0;
  OZChannel::OZChannel((this + 26744), (a2 + 26744), (this + 19104));
  *(this + 3343) = &unk_287246030;
  *(this + 3345) = &unk_287246390;
  OZChannel::OZChannel((this + 26896), (a2 + 26896), (this + 19104));
  *(this + 3362) = &unk_287245C60;
  *(this + 3364) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 27048), (a2 + 27048), (this + 19104));
  OZChannelPercent::OZChannelPercent((this + 27200), (a2 + 27200), (this + 19104));
  OZChanRotoshapeRef::OZChanRotoshapeRef((this + 27352), (a2 + 27352), (this + 19104));
  OZChanElementOrFootageRef::OZChanElementOrFootageRef((this + 27512), (a2 + 27512), (this + 19104));
  OZChannel::OZChannel((this + 27672), (a2 + 27672), (this + 648));
  *(this + 3459) = &unk_287246030;
  *(this + 3461) = &unk_287246390;
  OZChannel::OZChannel((this + 27824), (a2 + 27824), (this + 648));
  *(this + 3478) = &unk_287246030;
  *(this + 3480) = &unk_287246390;
  OZChannel::OZChannel((this + 27976), (a2 + 27976), (this + 648));
  *(this + 3497) = &unk_287246030;
  *(this + 3499) = &unk_287246390;
  OZChannelFolder::OZChannelFolder((this + 28128), (a2 + 28128), (this + 648));
  OZChannelPercent::OZChannelPercent((this + 28256), (a2 + 28256), (this + 28128));
  OZChannelBool::OZChannelBool((this + 28408), (a2 + 28408), (this + 28128));
  OZChannelPercent::OZChannelPercent((this + 28560), a2 + 255, (this + 28128));
  OZChannelPercent::OZChannelPercent((this + 28712), (a2 + 28712), (this + 28128));
  OZChannelScale3D::OZChannelScale3D((this + 28864), (a2 + 28864), (this + 28128));
  OZChannelPercent::OZChannelPercent((this + 29456), a2 + 263, (this + 28128));
  OZChannelPercent::OZChannelPercent((this + 29608), (a2 + 29608), (this + 28128));
  OZChannelColor::OZChannelColor((this + 29760), (a2 + 29760), (this + 648));
  OZChannelPercent::OZChannelPercent((this + 30920), (a2 + 30920), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 31072), (a2 + 31072), (this + 648));
  OZChannelBool::OZChannelBool((this + 31328), (a2 + 31328), (this + 648));
  OZChannelBool::OZChannelBool((this + 31480), (a2 + 31480), (this + 648));
  OZChannelBool::OZChannelBool((this + 31632), (a2 + 31632), (this + 648));
  OZChannel::OZChannel((this + 31784), (a2 + 31784), (this + 648));
  *(this + 3973) = &unk_287247AE0;
  *(this + 3975) = &unk_287247E40;
  OZChannelBool::OZChannelBool((this + 31936), (a2 + 31936), (this + 648));
  OZChannelPosition::OZChannelPosition((this + 32088), (a2 + 32088), (this + 648));
  OZChannelBool::OZChannelBool((this + 32792), (a2 + 32792), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 32944), (a2 + 32944), (this + 648));
  OZChannelBool::OZChannelBool((this + 33200), (a2 + 33200), (this + 648));
  OZChannelBool::OZChannelBool((this + 33352), (a2 + 33352), (this + 648));
  *(this + 33512) = 0u;
  *(this + 8396) = -1;
  PCMutex::PCMutex((this + 33592));
  *(this + 2104) = 0u;
  *(this + 4210) = this + 33680;
  *(this + 4211) = this + 33680;
  *(this + 4212) = 0;
  TimeOffset = OZChannelObjectRootBase::getTimeOffset(a2 + 16, v20);
  (*(*v7 + 1120))(v7, v20, 0, TimeOffset);
  (*(*v5 + 1128))(v20, v5);
  (*(*v7 + 1136))(v7, v20, 0);
  PSEmitter::updateEmitterShapeEnum(this, 0);
  OZChannelFolder::setFoldFlag((this + 256), 0x40000);
  OZChannelFolder::saveStateAsDefault((this + 256));
  *(this + 16776) = 0;
  *(this + 33556) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 2098) = _Q0;
  if ((v19 & 1) == 0)
  {
    v14 = a2 + 33680;
    if ((a2 + 33680) != *(a2 + 4211))
    {
      do
      {
        v15 = (*(**(*(*v14 + 16) + 8) + 24))(*(*(*v14 + 16) + 8), *(*v14 + 16), v19);
        if (v15)
        {
          if (v16)
          {
            v17 = v16;
            if ((v19 & 8) == 0)
            {
              OZObjectManipulator::appendCopyToName((v16 + 16));
              v18 = (*(*v17 + 640))(v17);
              OZChannelBase::setNameUnset(v18, 1);
            }

            operator new();
          }
        }

        v14 = *v14;
      }

      while (v14 != *(a2 + 4211));
    }
  }
}

void sub_26028E4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannel *a19, OZChannel *a20, OZChannel *a21, OZChannel *a22, OZChannel *a23, OZChannel *a24, OZChannel *a25)
{
  v28 = *(v26 + 752);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  OZChannelBool::~OZChannelBool((v25 + 33352));
  OZChannelBool::~OZChannelBool((v25 + 33200));
  OZChannelEnum::~OZChannelEnum((v25 + 32944));
  OZChannelBool::~OZChannelBool((v25 + 32792));
  OZChannelPosition::~OZChannelPosition((v25 + 32088));
  OZChannelBool::~OZChannelBool((v25 + 31936));
  OZChannel::~OZChannel(a9);
  OZChannelBool::~OZChannelBool((v25 + 31632));
  OZChannelBool::~OZChannelBool((v25 + 31480));
  OZChannelBool::~OZChannelBool((v25 + 31328));
  OZChannelEnum::~OZChannelEnum((v25 + 31072));
  OZChannelPercent::~OZChannelPercent((v25 + 30920));
  OZChannelColor::~OZChannelColor((v25 + 29760));
  OZChannelPercent::~OZChannelPercent((v25 + 29608));
  OZChannelPercent::~OZChannelPercent((v25 + 29456));
  OZChannelScale3D::~OZChannelScale3D((v25 + 28864));
  OZChannelPercent::~OZChannelPercent((v25 + 28712));
  OZChannelPercent::~OZChannelPercent((v25 + 28560));
  OZChannelBool::~OZChannelBool((v25 + 28408));
  OZChannelPercent::~OZChannelPercent((v25 + 28256));
  OZChannelFolder::~OZChannelFolder((v25 + 28128));
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((v25 + 27512));
  OZChanRotoshapeRef::~OZChanRotoshapeRef((v25 + 27352));
  OZChannelPercent::~OZChannelPercent((v25 + 27200));
  OZChannelBool::~OZChannelBool((v25 + 27048));
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannel::~OZChannel(a15);
  OZChannel::~OZChannel(a16);
  OZChannel::~OZChannel(a17);
  OZChannel::~OZChannel(a18);
  OZChannel::~OZChannel(a19);
  OZChannel3D::~OZChannel3D((v25 + 25392));
  OZChannel::~OZChannel(a20);
  OZChannelPosition3D::~OZChannelPosition3D((v25 + 24352));
  OZChannelPosition3D::~OZChannelPosition3D((v25 + 23464));
  OZChannel::~OZChannel(a21);
  OZChannelPercent::~OZChannelPercent((v25 + 23160));
  OZChannelBool::~OZChannelBool((v25 + 23008));
  OZChannelEnum::~OZChannelEnum((v25 + 22752));
  OZChannelEnum::~OZChannelEnum((v25 + 22496));
  OZChannelEnum::~OZChannelEnum((v25 + 22240));
  OZChannelEnum::~OZChannelEnum((v25 + 21984));
  OZChannelEnum::~OZChannelEnum((v25 + 21728));
  OZChannelEnum::~OZChannelEnum((v25 + 21472));
  OZChannelEnum::~OZChannelEnum((v25 + 21216));
  OZChannelPercent::~OZChannelPercent((v25 + 21064));
  OZChannelPercent::~OZChannelPercent((v25 + 20912));
  OZChannelPercent::~OZChannelPercent((v25 + 20760));
  OZChannel::~OZChannel(a22);
  OZChannel::~OZChannel(a23);
  OZChannel::~OZChannel(a24);
  OZChannel::~OZChannel(a25);
  OZChannelEnum::~OZChannelEnum((v25 + 19896));
  OZChannelBool::~OZChannelBool((v25 + 19744));
  OZChannelEnum::~OZChannelEnum((v25 + 19488));
  OZChannelEnum::~OZChannelEnum((v25 + 19232));
  OZChannelFolder::~OZChannelFolder((v25 + 19104));
  OZChannelFolder::~OZChannelFolder((v25 + 18976));
  OZLockingElement::~OZLockingElement(v25);
  _Unwind_Resume(a1);
}

uint64_t PSEmitter::operator=(uint64_t a1, const void *a2)
{
  OZElement::operator=(a1 + 200, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 18976);
  OZChannelFolder::operator=(a1 + 19104);
  OZChannelBase::operator=(a1 + 19232, (v5 + 19232));
  OZChannelBase::operator=(a1 + 19488, (v5 + 19488));
  OZChannelBase::operator=(a1 + 19744, (v5 + 19744));
  OZChannelBase::operator=(a1 + 20304, (v5 + 20304));
  OZChannelBase::operator=(a1 + 20456, (v5 + 20456));
  OZChannelBase::operator=(a1 + 20608, (v5 + 20608));
  OZChannelBase::operator=(a1 + 20760, (v5 + 20760));
  OZChannelBase::operator=(a1 + 20912, (v5 + 20912));
  OZChannelBase::operator=(a1 + 23312, (v5 + 23312));
  OZChannelPosition::operator=(a1 + 23464, (v5 + 23464));
  OZChannelPosition::operator=(a1 + 24352, (v5 + 24352));
  OZChannelBase::operator=(a1 + 27048, (v5 + 27048));
  OZChannelBase::operator=(a1 + 27200, (v5 + 27200));
  OZChanSceneNodeRef::operator=(a1 + 27352, (v5 + 27352));
  OZChanSceneNodeRef::operator=(a1 + 27512, (v5 + 27512));
  OZChannelBase::operator=(a1 + 27672, (v5 + 27672));
  OZChannelBase::operator=(a1 + 27824, (v5 + 27824));
  OZChannelBase::operator=(a1 + 27976, (v5 + 27976));
  OZChannelBase::operator=(a1 + 28712, (v5 + 28712));
  OZChannelBase::operator=(a1 + 28256, (v5 + 28256));
  OZChannelBase::operator=(a1 + 28408, (v5 + 28408));
  OZChannelBase::operator=(a1 + 28560, (v5 + 28560));
  OZChannelFolder::operator=(a1 + 28864);
  OZChannelBase::operator=(a1 + 29000, (v5 + 29000));
  OZChannelBase::operator=(a1 + 29152, (v5 + 29152));
  OZChannelBase::operator=(a1 + 29304, (v5 + 29304));
  OZChannelBase::operator=(a1 + 29456, (v5 + 29456));
  OZChannelBase::operator=(a1 + 29608, (v5 + 29608));
  OZChannelFolder::operator=(a1 + 29760);
  OZChannelBase::operator=(a1 + 29896, (v5 + 29896));
  OZChannelBase::operator=(a1 + 30048, (v5 + 30048));
  OZChannelBase::operator=(a1 + 30200, (v5 + 30200));
  OZChannelBase::operator=(a1 + 30352, (v5 + 30352));
  OZChannelBase::operator=(a1 + 30504, (v5 + 30504));
  *(a1 + 30760) = v5[30760];
  OZChannelBase::operator=(a1 + 30768, (v5 + 30768));
  OZChannelBase::operator=(a1 + 30920, (v5 + 30920));
  OZChannelBase::operator=(a1 + 31072, (v5 + 31072));
  OZChannelBase::operator=(a1 + 31328, (v5 + 31328));
  OZChannelBase::operator=(a1 + 31480, (v5 + 31480));
  OZChannelBase::operator=(a1 + 31936, (v5 + 31936));
  *(a1 + 33552) = 0;
  *(a1 + 33556) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 33568) = _Q1;
  *(a1 + 33584) = -1;
  *(a1 + 33664) = 0u;

  return OZChannelBase::operator=(a1 + 26896, (v5 + 26896));
}

void PSEmitter::~PSEmitter(PSEmitter *this)
{
  v2 = (this + 0x8000);
  *this = &unk_2872CF6B0;
  v3 = (this + 200);
  *(this + 25) = &unk_2872CF950;
  *(this + 27) = &unk_2872D0228;
  *(this + 31) = &unk_2872D0480;
  *(this + 841) = &unk_2872D04D8;
  for (i = *(this + 4212); i; i = v2[116])
  {
    v5 = v2[115];
    v6 = v5[1];
    v7 = v5[2];
    v8 = *v5;
    *(v8 + 8) = v6;
    *v6 = v8;
    v2[116] = i - 1;
    operator delete(v5);
    v9 = (*(*v7 + 640))(v7);
    OZChannelFolder::removeDescendant((this + 18976), v9);
    v10 = *(this + 146);
    if (v10 && OZScene::getNode(v10, v7[20]) == v7)
    {
      OZScene::unregisterNode(*(this + 146), v7);
      OZScene::removeAllDependencies(*(this + 146), v7);
    }

    (*(*v7 + 8))(v7);
  }

  v11 = v2[112];
  if (v11)
  {
    MEMORY[0x2666E9ED0](v11, 0x1000C8052888210);
  }

  v2[112] = 0;
  std::__list_imp<unsigned int>::clear(this + 4210);
  PCMutex::~PCMutex((this + 33592));
  v12 = v2[94];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  OZChannelBool::~OZChannelBool((this + 33352));
  OZChannelBool::~OZChannelBool((this + 33200));
  OZChannelEnum::~OZChannelEnum((this + 32944));
  OZChannelBool::~OZChannelBool((this + 32792));
  OZChannelPosition::~OZChannelPosition((this + 32088));
  OZChannelBool::~OZChannelBool((this + 31936));
  OZChannel::~OZChannel((this + 31784));
  OZChannelBool::~OZChannelBool((this + 31632));
  OZChannelBool::~OZChannelBool((this + 31480));
  OZChannelBool::~OZChannelBool((this + 31328));
  OZChannelEnum::~OZChannelEnum((this + 31072));
  OZChannelPercent::~OZChannelPercent((this + 30920));
  *(this + 3720) = &unk_28724C608;
  *(this + 3722) = &unk_28724C978;
  OZChannel::~OZChannel((this + 30768));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 29760));
  OZChannelPercent::~OZChannelPercent((this + 29608));
  OZChannelPercent::~OZChannelPercent((this + 29456));
  *(this + 3608) = &unk_2872557A8;
  *(this + 3610) = &unk_287255B00;
  OZChannel::~OZChannel((this + 29304));
  OZChannel2D::~OZChannel2D((this + 28864));
  OZChannelPercent::~OZChannelPercent((this + 28712));
  OZChannelPercent::~OZChannelPercent((this + 28560));
  OZChannelBool::~OZChannelBool((this + 28408));
  OZChannelPercent::~OZChannelPercent((this + 28256));
  OZChannelFolder::~OZChannelFolder((this + 28128));
  OZChannel::~OZChannel((this + 27976));
  OZChannel::~OZChannel((this + 27824));
  OZChannel::~OZChannel((this + 27672));
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((this + 27512));
  OZChanRotoshapeRef::~OZChanRotoshapeRef((this + 27352));
  OZChannelPercent::~OZChannelPercent((this + 27200));
  OZChannelBool::~OZChannelBool((this + 27048));
  OZChannel::~OZChannel((this + 26896));
  OZChannel::~OZChannel((this + 26744));
  OZChannel::~OZChannel((this + 26592));
  OZChannel::~OZChannel((this + 26440));
  OZChannel::~OZChannel((this + 26288));
  OZChannel::~OZChannel((this + 26136));
  OZChannel::~OZChannel((this + 25984));
  *(this + 3174) = &unk_28724B1C8;
  *(this + 3176) = &unk_28724B528;
  OZChannel::~OZChannel((this + 25832));
  OZChannel2D::~OZChannel2D((this + 25392));
  OZChannel::~OZChannel((this + 25240));
  OZChannelPosition3D::~OZChannelPosition3D((this + 24352));
  OZChannelPosition3D::~OZChannelPosition3D((this + 23464));
  OZChannel::~OZChannel((this + 23312));
  OZChannelPercent::~OZChannelPercent((this + 23160));
  OZChannelBool::~OZChannelBool((this + 23008));
  OZChannelEnum::~OZChannelEnum((this + 22752));
  OZChannelEnum::~OZChannelEnum((this + 22496));
  OZChannelEnum::~OZChannelEnum((this + 22240));
  OZChannelEnum::~OZChannelEnum((this + 21984));
  OZChannelEnum::~OZChannelEnum((this + 21728));
  OZChannelEnum::~OZChannelEnum((this + 21472));
  OZChannelEnum::~OZChannelEnum((this + 21216));
  OZChannelPercent::~OZChannelPercent((this + 21064));
  OZChannelPercent::~OZChannelPercent((this + 20912));
  OZChannelPercent::~OZChannelPercent((this + 20760));
  OZChannel::~OZChannel((this + 20608));
  OZChannel::~OZChannel((this + 20456));
  OZChannel::~OZChannel((this + 20304));
  OZChannel::~OZChannel((this + 20152));
  OZChannelEnum::~OZChannelEnum((this + 19896));
  OZChannelBool::~OZChannelBool((this + 19744));
  OZChannelEnum::~OZChannelEnum((this + 19488));
  OZChannelEnum::~OZChannelEnum((this + 19232));
  OZChannelFolder::~OZChannelFolder((this + 19104));
  OZChannelFolder::~OZChannelFolder((this + 18976));
  OZElement::~OZElement(v3);
  *this = &unk_2872018B0;
  PCMutex::~PCMutex((this + 128));
  PCSharedMutex::~PCSharedMutex((this + 8));
}

{
  PSEmitter::~PSEmitter(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toPSEmitter::~PSEmitter(PSEmitter *this)
{
  PSEmitter::~PSEmitter((this - 200));
}

{
  PSEmitter::~PSEmitter((this - 216));
}

{
  PSEmitter::~PSEmitter((this - 248));
}

{
  PSEmitter::~PSEmitter((this - 6728));
}

{
  PSEmitter::~PSEmitter((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  PSEmitter::~PSEmitter((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  PSEmitter::~PSEmitter((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  PSEmitter::~PSEmitter((this - 6728));

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *PSEmitter::didCreateCopyForCopyOnWrite(PSEmitter *this, double a2)
{
  LODWORD(a2) = *(this + 70);
  OZChannel::setDefaultValue((this + 31784), *&a2);
  OZChannel::resetCurve((this + 31784));

  return OZChannelBase::resetFlag((this + 31784), 0x100000000, 1);
}

uint64_t PSEmitter::willRemoveFromScene(PSEmitter *this, OZScene *a2)
{
  OZLockingElement::willRemoveFromScene(this, a2);
  v4 = (*(*this + 256))(this);
  result = (*(*this + 264))(this);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      result = (*(**(v4 + 16) + 872))(*(v4 + 16), a2);
      v4 = *(v4 + 8);
    }

    while (v4 != v6);
  }

  return result;
}

void PSEmitter::getOriginalBounds(Li3DEngineScene *a1, float64x2_t *a2, const CMTime *a3)
{
  v6 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v37, v6);
  __asm { FMOV            V0.2D, #-1.0 }

  v21 = _Q0;
  a2[1] = _Q0;
  v36 = *a3;
  if (PSEmitter::needSourceBitmap(a1, &v36))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v35 = 0x3FF0000000000000;
  v32 = 0x3FF0000000000000;
  v29 = 0x3FF0000000000000;
  v26 = 0x3FF0000000000000;
  v27 = 0u;
  v28 = 0u;
  v30 = 0u;
  v31 = 0u;
  v33 = 0u;
  v34 = 0u;
  (*(*(a1 + 25) + 1264))(a1 + 25, &v26, a3);
  v13 = (*(*a1 + 256))(a1);
  for (i = (*(*a1 + 264))(a1); v13 != i; v13 = *(v13 + 8))
  {
    v15 = *(v13 + 16);
    if (v15)
    {
    }

    else
    {
      v16 = 0;
    }

    *&v23.f64[0] = v36.epoch;
    v22 = *&v36.value;
    if ((*(*(v16 + 2) + 104))(v16 + 2, &v22, 0, 1, 1))
    {
      v25 = 0;
      v24 = 0;
      PSParticleType::getState(v16, v12, a3, &v25, &v24);
      (*(*v16 + 1240))(v16);
      v17 = v25;
      for (j = *v25; j != v17[1].var0; j = (j + 248))
      {
        v22 = 0uLL;
        v23 = v21;
        (*(*v16 + 1248))(v16, j, a3, &v22);
        PCRect<double>::operator|=(a2, &v22);
        v17 = v25;
      }

      if (v24)
      {
        OZSimStateArray::~OZSimStateArray(v17);
        MEMORY[0x2666E9F00]();
      }
    }
  }

  __asm { FMOV            V0.2D, #2.0 }

  v20 = vrndpq_f64(vaddq_f64(a2[1], _Q0));
  *a2 = vrndpq_f64(vaddq_f64(*a2, v21));
  a2[1] = v20;
  if (v20.f64[0] < 0.0 || v20.f64[1] < 0.0)
  {
    *a2 = v21;
    a2[1] = _Q0;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v37);
}

uint64_t PSEmitter::needSourceBitmap(PSEmitter *this, const CMTime *a2)
{
  if (OZChannel::getValueAsInt((this + 19232), MEMORY[0x277CC08F0], 0.0) != 5)
  {
    return 0;
  }

  result = OZChanElementOrFootageRef::getImageNode((this + 27512));
  if (!result)
  {
    return result;
  }

  if (OZChannel::getValueAsInt((this + 27048), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannel::getValueAsDouble((this + 27200), a2, 0.0);
    if (fabs(v5) >= 0.0000001)
    {
      return 1;
    }
  }

  v6 = (*(*this + 256))(this);
  v7 = (*(*this + 264))(this);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = MEMORY[0x277CC08F0];
  do
  {
    v11 = OZChannel::getValueAsInt((v10 + 5368), v9, 0.0) == 4;
    result = v11;
    if (v11)
    {
      break;
    }

    v6 = *(v6 + 8);
  }

  while (v6 != v8);
  return result;
}

uint64_t PSEmitter::getProjectedBounds(uint64_t a1, float64x2_t *a2, double *a3, const OZRenderState *a4)
{
  OZRenderParams::OZRenderParams(v19);
  OZRenderParams::setState(v19, a4);
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
  (*(*(a1 + 200) + 1256))(a1 + 200, &v9, a4);
  PCMatrix44Tmpl<double>::leftMult(&v9, a3);
  PSEmitter::getRenderBounds(a1, a2, v19, &v9);
  OZRenderParams::~OZRenderParams(v19);
  return 1;
}

void sub_26028FC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

void PSEmitter::getRenderBounds(uint64_t a1, float64x2_t *a2, CMTime *this, _BYTE *a4)
{
  if (OZRenderParams::hasParameter(this, kPSIsPreviewRender))
  {
    *a2 = vdupq_n_s64(0xC090000000000000);
    a2[1] = vdupq_n_s64(0x40A0000000000000uLL);
  }

  else
  {
    v44 = *this;
    PSEmitter::RenderParams::RenderParams(v33, this);
    v33[0] = a1;
    v36 = 0;
    v37 = OZChannel::getValueAsInt((a1 + 32792), &v44, 0.0) != 0;
    v8 = OZChannel::getValueAsInt((a1 + 33200), &v44, 0.0) != 0;
    v9 = v8 && v37;
    v38 = v9;
    if (v9)
    {
      (*(*(a1 + 200) + 1304))(a1 + 200, &v39, this);
      PSEmitter::getCameraPropertiesInLocalSpace(a1, this, &v41, &v42, &v43);
    }

    if (v40 != a4)
    {
      for (i = 0; i != 128; i += 32)
      {
        v11 = &v40[i];
        v12 = *&a4[i + 16];
        *v11 = *&a4[i];
        v11[1] = v12;
      }
    }

    v13 = Li3DEngineScene::sceneManager(a1);
    OZLockingGroup::WriteSentry::WriteSentry(v32, v13);
    __asm { FMOV            V0.2D, #-1.0 }

    v28 = _Q0;
    a2[1] = _Q0;
    if (PSEmitter::needSourceBitmap(a1, &v44))
    {
      v19 = 2;
    }

    else
    {
      v19 = v36;
    }

    v31 = *this;
    v20 = (*(*a1 + 256))(a1);
    for (j = (*(*a1 + 264))(a1); v20 != j; v20 = *(v20 + 8))
    {
      v22 = *(v20 + 16);
      if (v22)
      {
      }

      else
      {
        v23 = 0;
      }

      v30 = v44;
      if ((*(*(v23 + 2) + 104))(v23 + 2, &v30, 0, 1, 1))
      {
        v30.value = 0;
        v29 = 0;
        (*(*v23 + 1240))(v23);
        PSParticleType::getState(v23, v19, &v31, &v30, &v29);
        v25 = *v30.value;
        v24 = *(v30.value + 8);
        while (v25 != v24)
        {
          (*(*v23 + 1256))(v23, v33, v25, a2);
          v25 += 248;
        }

        if (v29 && v30.value)
        {
          OZSimStateArray::~OZSimStateArray(v30.value);
          MEMORY[0x2666E9F00]();
        }
      }
    }

    __asm { FMOV            V0.2D, #2.0 }

    v27 = vrndpq_f64(vaddq_f64(a2[1], _Q0));
    *a2 = vrndpq_f64(vaddq_f64(*a2, v28));
    a2[1] = v27;
    if (v27.f64[0] < 0.0 || v27.f64[1] < 0.0)
    {
      *a2 = v28;
      a2[1] = _Q0;
    }

    OZLockingGroup::WriteSentry::~WriteSentry(v32);
    LiClipSet::~LiClipSet(&v35);
    OZRenderParams::~OZRenderParams(&v34);
  }
}

void sub_26029009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  LiClipSet::~LiClipSet(&STACK[0x608]);
  OZRenderParams::~OZRenderParams(va1);
  _Unwind_Resume(a1);
}

void PSEmitter::getCameraPropertiesInLocalSpace(uint64_t a1, PC_Sp_counted_base **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a4 = xmmword_260342700;
  *(a4 + 16) = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0x3FF0000000000000;
  if (a2[162] | a2[160] && *(a2 + 242) == 1)
  {
    OZRenderParams::OZRenderParams(v26, a2);
    v10 = a2[162];
    if (!v10)
    {
      v10 = a2[160];
    }

    v16.var0 = v10;
    if (v10)
    {
      v11 = (v10 + *(*v10 - 24));
    }

    else
    {
      v11 = 0;
    }

    PCSharedCount::PCSharedCount(&v17, v11);
    OZRenderParams::setCamera(v26, &v16);
    PCSharedCount::~PCSharedCount(&v17);
    v25 = 0x3FF0000000000000;
    v22 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
    v16.var0 = 0x3FF0000000000000;
    v17 = 0u;
    v18 = 0u;
    v20 = 0u;
    v21 = 0u;
    v23 = 0u;
    v24 = 0u;
    (*(*(a1 + 200) + 1296))(a1 + 200, &v16, v26);
    PCMatrix44Tmpl<double>::transform<double>(&v16, a3, a3);
    var0 = v16.var0;
    v14 = *(&v18 + 1);
    v13 = v19;
    *a4 = v17;
    *(a4 + 8) = v13;
    v15 = v21;
    *(a4 + 16) = *(&v21 + 1);
    *a5 = var0;
    *(a5 + 8) = v14;
    *(a5 + 16) = v15;
    PCVector3<double>::normalize(a4, 0.000000100000001);
    PCVector3<double>::normalize(a5, 0.000000100000001);
    OZRenderParams::~OZRenderParams(v26);
  }
}

void sub_2602902B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  PCSharedCount::~PCSharedCount(v17 + 1);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t PSEmitter::estimateRenderMemory(uint64_t a1, CMTime *a2, _BYTE *a3)
{
  v42 = *a2;
  PSEmitter::RenderParams::RenderParams(v31, a2);
  v31[0] = a1;
  hasParameter = OZRenderParams::hasParameter(a2, kPSIsPreviewRender);
  v35 = OZChannel::getValueAsInt((a1 + 32792), &v42, 0.0) != 0;
  v6 = OZChannel::getValueAsInt((a1 + 33200), &v42, 0.0) != 0;
  v7 = v6 && v35;
  v36 = v7;
  if (v7)
  {
    (*(*(a1 + 200) + 1304))(a1 + 200, &v37, a2);
    PSEmitter::getCameraPropertiesInLocalSpace(a1, a2, &v39, &v40, &v41);
  }

  if (v38 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v9 = &v38[i];
      v10 = *&a3[i + 16];
      *v9 = *&a3[i];
      v9[1] = v10;
    }
  }

  v11 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v30, v11);
  v12 = PSEmitter::needSourceBitmap(a1, &v42);
  v13 = hasParameter;
  if (v12)
  {
    v13 = 2;
  }

  v23 = v13;
  v29 = *a2;
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v14 = (*(*a1 + 256))(a1);
  v15 = (*(*a1 + 264))(a1);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = *(v14 + 16);
      if (v17)
      {
      }

      else
      {
        v18 = 0;
      }

      v26 = v42;
      if ((*(*(v18 + 2) + 104))(v18 + 2, &v26, 0, 1, 1))
      {
        (*(*v18 + 1288))(v18, a2);
        v25 = 1;
        v19 = (*(*v18 + 1272))(v18, a2, &v25);
        if ((v25 & 1) != 0 || !(v19 >> 24))
        {
          v16 += v19;
        }

        else
        {
          v26.value = 0;
          v24 = 0;
          PSParticleType::getState(v18, v23, &v29, &v26, &v24);
          v21 = *v26.value;
          v20 = *(v26.value + 8);
          while (v21 != v20)
          {
            v16 += (*(*v18 + 1264))(v18, v31, v21, &v27);
            v21 += 248;
          }

          if (v24 && v26.value)
          {
            OZSimStateArray::~OZSimStateArray(v26.value);
            MEMORY[0x2666E9F00]();
          }
        }
      }

      v14 = *(v14 + 8);
    }

    while (v14 != v15);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v27, v28[0]);
  OZLockingGroup::WriteSentry::~WriteSentry(v30);
  LiClipSet::~LiClipSet(&v33);
  OZRenderParams::~OZRenderParams(&v32);
  return v16;
}

void sub_260290720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va, v9);
  OZLockingGroup::WriteSentry::~WriteSentry(va1);
  LiClipSet::~LiClipSet(&STACK[0x608]);
  OZRenderParams::~OZRenderParams(va2);
  _Unwind_Resume(a1);
}

void PSEmitter::SimEntry::~SimEntry(PCSharedCount **this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      OZSimStateArray::~OZSimStateArray(v2);
      MEMORY[0x2666E9F00]();
    }
  }
}

double PSEmitter::setupEmitterParams(PSEmitter *this, const OZRenderParams *a2, PSEmitter::RenderParams *a3)
{
  v8 = *a2;
  *a3 = this;
  *(a3 + 1496) = OZRenderParams::hasParameter(a2, kPSIsPreviewRender);
  *(a3 + 1497) = (*(*this + 168))(this);
  v6 = (OZChannel::getValueAsInt((this + 33200), &v8, 0.0) != 0) & *(a3 + 1497);
  *(a3 + 1498) = v6;
  if (v6 == 1)
  {
    (*(*(this + 25) + 1304))(this + 200, a3 + 1504, a2);
    PSEmitter::getCameraPropertiesInLocalSpace(this, a2, a3 + 1760, a3 + 1784, a3 + 1808);
  }

  *(a3 + 219) = 0x3FF0000000000000;
  *(a3 + 214) = 0x3FF0000000000000;
  *(a3 + 209) = 0x3FF0000000000000;
  *(a3 + 204) = 0x3FF0000000000000;
  result = 0.0;
  *(a3 + 1640) = 0u;
  *(a3 + 1656) = 0u;
  *(a3 + 105) = 0u;
  *(a3 + 106) = 0u;
  *(a3 + 1720) = 0u;
  *(a3 + 1736) = 0u;
  return result;
}

OZSimStateArray *PSEmitter::getSimList(uint64_t a1, const CMTime *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v8 = (*(*a1 + 256))(a1);
  result = (*(*a1 + 264))(a1);
  if (v8 != result)
  {
    v10 = result;
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

      epoch = a2->epoch;
      *v15 = *&a2->value;
      result = (*(*(v12 + 2) + 104))(v12 + 2, v15, 0, 1, 1);
      if (result)
      {
        v15[0] = 0;
        v14 = 0;
        PSParticleType::getState(v12, a3, a2, v15, &v14);
        result = v15[0];
        if (*v15[0] != *(v15[0] + 1))
        {
          operator new();
        }

        if (v14)
        {
          OZSimStateArray::~OZSimStateArray(v15[0]);
          result = MEMORY[0x2666E9F00]();
        }
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v10);
  }

  *a5 = 0;
  return result;
}

BOOL PSEmitter::lessThanOldestFirst(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (CMTimeCompare(&time1, &v8))
  {
    time1 = *(a1 + 32);
    v8 = *(a2 + 32);
    return CMTimeCompare(&time1, &v8) >> 31;
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    if (v5 >= v6)
    {
      if (v5 > v6)
      {
        return 0;
      }

      else
      {
        v7 = (*(**(a1 + 8) + 32))(*(a1 + 8));
        return v7 < (*(**(a2 + 8) + 32))(*(a2 + 8));
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t PSEmitter::lessThanYoungestFirst(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (CMTimeCompare(&time1, &v8))
  {
    time1 = *(a1 + 32);
    v8 = *(a2 + 32);
    return CMTimeCompare(&time1, &v8) > 0;
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a2 + 56);
    if (v5 <= v6)
    {
      if (v5 >= v6)
      {
        v7 = (*(**(a1 + 8) + 32))(*(a1 + 8));
        return v7 > (*(**(a2 + 8) + 32))(*(a2 + 8));
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }
}

BOOL PSEmitter::lessThanOldestFirstWithRank(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (CMTimeCompare(&time1, &v11))
  {
    time1 = *(a1 + 32);
    v11 = *(a2 + 32);
    return CMTimeCompare(&time1, &v11) >> 31;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = v7[22];
  v9 = *(*(a2 + 8) + 176);
  if (v8 < v9)
  {
    return 1;
  }

  if (v8 > v9)
  {
    return 0;
  }

  v10 = (*(*v7 + 32))(v7);
  return v10 < (*(**(a2 + 8) + 32))(*(a2 + 8));
}

BOOL PSEmitter::lessThanYoungestFirstWithRank(uint64_t a1, uint64_t a2)
{
  time1 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (CMTimeCompare(&time1, &v11))
  {
    time1 = *(a1 + 32);
    v11 = *(a2 + 32);
    return CMTimeCompare(&time1, &v11) > 0;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = v7[22];
  v9 = *(*(a2 + 8) + 176);
  if (v8 > v9)
  {
    return 1;
  }

  if (v8 < v9)
  {
    return 0;
  }

  v10 = (*(*v7 + 32))(v7);
  return v10 > (*(**(a2 + 8) + 32))(*(a2 + 8));
}

BOOL PSEmitter::lessThanZDepthOldestFirst(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (vabdd_f64(v2, v3) >= 0.0000001)
  {
    return v2 < v3;
  }

  else
  {
    return PSEmitter::lessThanOldestFirst(a1, a2);
  }
}

uint64_t PSEmitter::lessThanZDepthYoungestFirst(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (vabdd_f64(v2, v3) >= 0.0000001)
  {
    return v2 < v3;
  }

  else
  {
    return PSEmitter::lessThanYoungestFirst(a1, a2);
  }
}

void PSEmitter::PostRenderFinalizer::~PostRenderFinalizer(PSEmitter::PostRenderFinalizer *this)
{
  v2 = *this;
  v3 = *(*this + 8);
  if (v3 != *this)
  {
    do
    {
      v4 = *(v3 + 16);
      (*(**(v4 + 40) + 1304))(*(v4 + 40), *(this + 1));
      PSEmitter::SimEntry::~SimEntry(v4);
      MEMORY[0x2666E9F00]();
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void PSEmitter::getHelium(PSEmitter *this@<X0>, CMTime *a2@<X1>, LiAgent *a3@<X2>, PSHeliumNode **a4@<X8>)
{
  *&v19._pcColorDesc._colorSpaceRef._obj = *&a2->value;
  *&v19._pcColorDesc._toneMapMethod._gain = a2->epoch;
  if ((*(*(this + 27) + 104))())
  {
    hasParameter = OZRenderParams::hasParameter(a2, kPSIsPreviewRender);
    v9 = Li3DEngineScene::sceneManager(this);
    OZLockingGroup::WriteSentry::WriteSentry(v26, v9);
    v10 = HGObject::operator new(0x390uLL);
    PSHeliumNode::PSHeliumNode(v10, a2);
    v25 = 0;
    v22 = &v22;
    v23 = &v22;
    v24 = 0;
    *&v19._pcColorDesc._colorSpaceRef._obj = *&a2->value;
    *&v19._pcColorDesc._toneMapMethod._gain = a2->epoch;
    PSEmitter::getSimList(this, &v19, hasParameter, &v22, &v25);
    if (v24)
    {
      v20 = &v22;
      v21 = a2;
      for (i = v23; i != &v22; i = i[1])
      {
        (*(**(i[2] + 40) + 1296))(*(i[2] + 40), v21, v10);
      }

      v12 = (*(*this + 168))(this);
      v13 = *(a3 + 20);
      LiAgent::getObjectToImageTransform(a3, v18);
      PCMatrix44Tmpl<double>::operator*(v13, v18, &v19);
      PSHeliumNode::setObjectToFilmMatrix(v10, &v19);
      v14 = v25;
      PSHeliumNode::setNumberOfParticles(v10, v25);
      ObjectClipPlanes = LiAgent::getObjectClipPlanes(a3);
      PSHeliumNode::setClip(v10, ObjectClipPlanes);
      if (v12)
      {
        PSEmitter::getHeliumGraph3D(this, a2, a3, &v22, hasParameter, v14, v10);
      }

      else
      {
        PSEmitter::getHeliumGraph2D(this, a2, a3, &v22, hasParameter, v14, v10);
      }

      PSHeliumNode::preRender(v10);
      PSEmitter::PostRenderFinalizer::~PostRenderFinalizer(&v20);
      CGColorSpace = FxColorDescription::getCGColorSpace((*(a3 + 6) + 160));
      RequestedColorDescription = LiAgent::getRequestedColorDescription(a3);
      FxColorDescription::FxColorDescription(&v19, RequestedColorDescription, CGColorSpace);
      LiAgent::setActualColorDescription(a3, &v19);
      *a4 = v10;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v19._pcColorDesc._colorSpaceRef._obj);
      std::__list_imp<unsigned int>::clear(&v22);
    }

    else
    {
      *a4 = 0;
      std::__list_imp<unsigned int>::clear(&v22);
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }
    }

    OZLockingGroup::WriteSentry::~WriteSentry(v26);
  }

  else
  {
    *a4 = 0;
  }
}

void sub_2602913D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  std::__list_imp<unsigned int>::clear((v18 - 120));
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  OZLockingGroup::WriteSentry::~WriteSentry((v18 - 88));
  _Unwind_Resume(a1);
}

void PSEmitter::getHeliumGraph3D(uint64_t a1, CMTime *a2, uint64_t a3, void *a4, char a5, unsigned int a6, uint64_t a7)
{
  v43 = *a2;
  PSEmitter::RenderParams::RenderParams(v33, a2);
  LiClipSet::operator=(v35, a3 + 96);
  v35[6] = LiAgent::getHeliumRenderer(a3);
  v33[0] = a1;
  v36 = a5;
  v38 = OZChannel::getValueAsInt((a1 + 33200), &v43, 0.0) != 0;
  v37 = 1;
  v14 = *(a3 + 160);
  LiAgent::getObjectToImageTransform(a3, v30);
  PCMatrix44Tmpl<double>::operator*(v14, v30, v32);
  for (i = 0; i != 16; i += 4)
  {
    v16 = &v33[i];
    v17 = *&v32[i * 8 + 16];
    *(v16 + 102) = *&v32[i * 8];
    *(v16 + 103) = v17;
  }

  if (OZChannel::getValueAsInt((a1 + 33200), &v43, 0.0))
  {
    LiAgent::getFaceCameraTransform(a3, v30);
    for (j = 0; j != 8; j += 2)
    {
      v19 = &v39[j * 16];
      v20 = v30[j + 1];
      *v19 = v30[j];
      v19[1] = v20;
    }

    PSEmitter::getCameraPropertiesInLocalSpace(a1, a2, &v40, &v41, &v42);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  LiAgent::getObjectToFilmTransform(a3, v30);
  v25 = vnegq_f64(v30[4]);
  v26 = -v31;
  v22.n128_f64[0] = PSEmitter::buildRenderList3D(a1, v21, a4, a6, &v27, 0, v25.f64);
  v23 = v27;
  v24 = v28;
  if (v27 != v28)
  {
    do
    {
      (*(**(v23 + 2) + 1280))(*(v23 + 2), v33, *(v23 + 1), *v23, a7, v22);
      v23 += 4;
    }

    while (v23 != v24);
    v23 = v27;
  }

  if (v23)
  {
    v28 = v23;
    operator delete(v23);
  }

  LiClipSet::~LiClipSet(v35);
  OZRenderParams::~OZRenderParams(&v34);
}

void sub_2602916A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50)
{
  LiClipSet::~LiClipSet((v50 + 1440));
  OZRenderParams::~OZRenderParams(&a50);
  _Unwind_Resume(a1);
}

void PSEmitter::getHeliumGraph2D(uint64_t a1, const OZRenderParams *a2, uint64_t a3, void *a4, char a5, unsigned int a6, uint64_t a7)
{
  PSEmitter::RenderParams::RenderParams(v58, a2);
  LiClipSet::operator=(v60, a3 + 96);
  v60[6] = LiAgent::getHeliumRenderer(a3);
  v58[0] = a1;
  v61 = a5;
  v62 = 0;
  v14 = *(a3 + 160);
  LiAgent::getObjectToImageTransform(a3, &v55);
  PCMatrix44Tmpl<double>::operator*(v14, &v55, v57);
  for (i = 0; i != 16; i += 4)
  {
    v16 = &v58[i];
    v17 = *&v57[i * 8 + 16];
    *(v16 + 102) = *&v57[i * 8];
    *(v16 + 103) = v17;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<PSEmitter::RenderEntry>::resize(&v52, a6);
  v18 = v52;
  v51 = *a2;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 31480), &v51, 0.0);
  v19 = OZChannel::getValueAsInt((a1 + 31632), MEMORY[0x277CC08F0], 0.0);
  v20 = *(*a1 + 576);
  if (v19)
  {
    _ZF = v20(a1) == 0;
    v22 = PSEmitter::lessThanYoungestFirstWithRank;
    v23 = PSEmitter::lessThanOldestFirstWithRank;
  }

  else
  {
    _ZF = v20(a1) == 0;
    v22 = PSEmitter::lessThanYoungestFirst;
    v23 = PSEmitter::lessThanOldestFirst;
  }

  if (!_ZF)
  {
    v22 = v23;
  }

  v45 = v22;
  haveROI = LiAgent::haveROI(a3);
  LiAgent::getROI(a3, &v50);
  v46 = a4[1];
  if (v46 == a4)
  {
    v30 = v18;
  }

  else
  {
    v25 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v48 = _Q0;
    v30 = v18;
    do
    {
      v31 = *(*a4 + 16);
      v33 = **v31;
      v32 = (*v31)[1];
      if (v33 != v32)
      {
        v34 = v31[5];
        v30 = v18;
        do
        {
          if (!haveROI || (v55 = 0uLL, v56 = v48, (*(*v34 + 1256))(v34, v58, v33, &v55), v56.n128_f64[0] < 0.0) || v56.n128_f64[1] < 0.0 || (v35.i64[0] = v50.n128_i32[0], v35.i64[1] = v50.n128_i32[1], v36 = vcvtq_f64_s64(v35), v35.i64[0] = v50.n128_i32[2], v35.i64[1] = v50.n128_i32[3], v49[0] = v36, v49[1] = vcvtq_f64_s64(v35), PCRect<double>::intersects(&v55, v49)))
          {
            *(v30 + 1) = v37;
            *(v30 + 2) = v34;
            *(v30 + 14) = v25;
            *v30 = v33;
            _Q0 = *(v37 + 8);
            *(v30 + 6) = *(v37 + 3);
            v30[2] = _Q0;
            v30 += 4;
          }

          v33 += 248;
        }

        while (v33 != v32);
      }

      if (!ValueAsInt)
      {
        v38 = 126 - 2 * __clz((v30 - v18) >> 6);
        *&v55 = v45;
        if (v30 == v18)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38;
        }

        _Q0 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,false>(v18, v30, &v55, v39, 1, _Q0);
      }

      ++v25;
      a4 = *a4;
      v18 = v30;
    }

    while (a4 != v46);
  }

  std::vector<PSEmitter::RenderEntry>::resize(&v52, ((v30 - v52) >> 6));
  if (ValueAsInt)
  {
    v41 = 126 - 2 * __clz((v53 - v52) >> 6);
    *&v55 = v45;
    if (v53 == v52)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v40 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,false>(v52, v53, &v55, v42, 1, v40);
  }

  v44 = v52;
  v43 = v53;
  if (v52 != v53)
  {
    do
    {
      (*(*v44[1].n128_u64[0] + 1280))(v44[1].n128_u64[0], v58, v44->n128_u64[1], v44->n128_u64[0], a7, v40);
      v44 += 4;
    }

    while (v44 != v43);
    v44 = v52;
  }

  if (v44)
  {
    v53 = v44;
    operator delete(v44);
  }

  LiClipSet::~LiClipSet(v60);
  OZRenderParams::~OZRenderParams(&v59);
}

void sub_260291B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  LiClipSet::~LiClipSet(&STACK[0x730]);
  OZRenderParams::~OZRenderParams(&a61);
  _Unwind_Resume(a1);
}

void std::vector<PSEmitter::RenderEntry>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<PSEmitter::RenderEntry>::__append(a1, a2 - v2);
  }
}

double PSEmitter::buildRenderList3D(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, __int128 **a5, char a6, double *a7)
{
  std::vector<PSEmitter::RenderEntry>::resize(a5, a4);
  v34 = a3[1];
  if (v34 != a3)
  {
    v9 = 0;
    v10 = *a5;
    do
    {
      v11 = *(*a3 + 16);
      v13 = **v11;
      v12 = (*v11)[1];
      if (v13 == v12)
      {
        a3 = *a3;
      }

      else
      {
        v14 = v11[5];
        do
        {
          v15 = a7[1];
          v16 = *(v13 + 184);
          v17 = *a7 * *(v13 + 176);
          v18 = v10 + 4;
          *v10 = v13;
          *(v10 + 2) = v14;
          *(v10 + 3) = v17 + v15 * v16 + a7[2] * *(v13 + 192);
          *(v10 + 14) = v9;
          *(v10 + 1) = v19;
          v20 = *(v19 + 3);
          v10[2] = *(v19 + 8);
          *(v10 + 6) = v20;
          v13 += 248;
          v10 += 4;
        }

        while (v13 != v12);
        a3 = *a3;
        v10 = v18;
      }

      ++v9;
    }

    while (a3 != v34);
  }

  if (!OZChannel::getValueAsInt((a1 + 33352), MEMORY[0x277CC08F0], 0.0) || (a6 & 1) != 0)
  {
    ValueAsInt = OZChannel::getValueAsInt((a1 + 31632), MEMORY[0x277CC08F0], 0.0);
    v21 = (*(*a1 + 576))(a1) == 0;
    if (ValueAsInt)
    {
      v23 = PSEmitter::lessThanYoungestFirstWithRank;
      v24 = PSEmitter::lessThanOldestFirstWithRank;
    }

    else
    {
      v23 = PSEmitter::lessThanYoungestFirst;
      v24 = PSEmitter::lessThanOldestFirst;
    }
  }

  else
  {
    v21 = (*(*a1 + 576))(a1) == 0;
    v23 = PSEmitter::lessThanZDepthYoungestFirst;
    v24 = PSEmitter::lessThanZDepthOldestFirst;
  }

  if (!v21)
  {
    v23 = v24;
  }

  v26 = *a5;
  v27 = a5[1];
  v28 = 126 - 2 * __clz((v27 - *a5) >> 6);
  v21 = v27 == *a5;
  v35 = v23;
  if (v21)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,false>(v26, v27, &v35, v29, 1, v22).n128_u64[0];
  return result;
}

uint64_t PSEmitter::shouldPrecompose(PSEmitter *this, const CMTime *a2)
{
  v4 = this + 6880;
  OZChannel::getValueAsDouble((this + 6880), a2, 0.0);
  if (vabdd_f64(1.0, v5) >= 0.0000001)
  {
    return 1;
  }

  if ((*(*v4 + 496))(v4, 1))
  {
    return 1;
  }

  if ((*(*this + 288))(this))
  {
    return 1;
  }

  v6 = this + 200;
  if ((*(*(this + 25) + 416))(this + 200) & 1) != 0 || ((*(*v6 + 1864))(this + 200) & 1) != 0 || ((*(*v6 + 1592))(this + 200, a2) & 1) != 0 || ((*(*this + 272))(this))
  {
    return 1;
  }

  v8 = *(*this + 280);

  return v8(this);
}

uint64_t PSEmitter::shouldDoLocalParticleRender(PSEmitter *this)
{
  v2 = this + 0x8000;
  if (*(this + 33712) != 1)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(v2 + 235) = ValueAsInt;
    v2[944] = 1;
    if (!ValueAsInt)
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (*(this + 8427))
  {
    return 1;
  }

LABEL_6:
  v5 = (*(*this + 256))(this);
  v6 = (*(*this + 264))(this);
  if (v5 != v6)
  {
    v7 = v6;
    while (1)
    {
      v8 = *(v5 + 16);
      if ((*(*(v9 + 2) + 24))(v9 + 2, 0, 1) && PSParticleType::shouldDoLocalParticleRender(v9))
      {
        break;
      }

      v5 = *(v5 + 8);
      if (v5 == v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t PSEmitter::doesTransformFromLocalToScreenSpace(PSEmitter *this, CMTime *a2)
{
  if ((*(*this + 168))(this))
  {
    v4 = (*(*this + 136))(this, a2);
    v6 = *a2;
    if (!PSEmitter::shouldPrecompose(this, &v6) || v4)
    {
      return PSEmitter::shouldDoLocalParticleRender(this);
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return OZElement::doesTransformFromLocalToScreenSpace(this + 200);
  }
}

void PSEmitter::makeRenderImageSource(PSEmitter *this, OZRenderParams *a2, const OZRenderGraphState *a3, int a4)
{
  shouldDoLocalParticleRender = PSEmitter::shouldDoLocalParticleRender(this);
  v7 = (*(*this + 168))(this) ^ 1;
  if (!a4)
  {
    if (shouldDoLocalParticleRender | v7)
    {
      operator new();
    }
  }

  operator new();
}

void sub_2602929A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  PCSharedCount::~PCSharedCount(v64 + 1);
  PCSharedCount::~PCSharedCount(v63 + 1);
  OZRenderGraphState::~OZRenderGraphState(&a63);
  LiGraphBuilder::~LiGraphBuilder(&STACK[0x2E0]);
  std::unique_ptr<LiGraphBuilder>::reset[abi:ne200100]((v66 - 112), 0);
  PCSharedCount::~PCSharedCount(v65 + 1);
  _Unwind_Resume(a1);
}

void *PSEmitter::buildRealRenderGraph(uint64_t a1, void *a2, OZRenderParams *a3, uint64_t a4, OZRenderGraphState *a5)
{
  OZRenderGraphState::OZRenderGraphState(v30, a5);
  (*(*(a1 + 200) + 2064))(a1 + 200, a3, v30);
  if (!OZChannel::getValueAsInt((a1 + 33352), MEMORY[0x277CC08F0], 0.0))
  {
    if (!*a2)
    {
      throw_PCNullPointerException(1);
    }

    (*(**a2 + 192))(*a2, 1);
  }

  hasParameter = OZRenderParams::hasParameter(a3, kPSIsPreviewRender);
  v10 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v29, v10);
  v28 = 0;
  v25 = &v25;
  v26 = &v25;
  v27 = 0;
  v22[0] = *a3;
  PSEmitter::getSimList(a1, v22, hasParameter, &v25, &v28);
  if (v27)
  {
    v24[0] = &v25;
    v24[1] = a3;
    for (i = v26; i != &v25; i = i[1])
    {
      (*(**(i[2] + 40) + 1288))(*(i[2] + 40), a3);
    }

    PSEmitter::RenderParams::RenderParams(v22, a3);
    PSEmitter::setupEmitterParams(a1, a3, v22);
    __p = 0;
    v20 = 0;
    v21 = 0;
    v18[0] = 0.0;
    v18[1] = 0.0;
    v18[2] = 1.0;
    PSEmitter::buildRenderList3D(a1, v12, &v25, v28, &__p, 1, v18);
    v14 = __p;
    for (j = v20; j != v14; PSParticleType::buildParticleRenderGraph(j[2], a2, &v22[0].value, j[1], v15, a4, v30))
    {
      v15 = *(j - 8);
      j -= 8;
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    LiClipSet::~LiClipSet(&v23);
    OZRenderParams::~OZRenderParams(&v22[0].epoch);
    PSEmitter::PostRenderFinalizer::~PostRenderFinalizer(v24);
  }

  std::__list_imp<unsigned int>::clear(&v25);
  OZLockingGroup::WriteSentry::~WriteSentry(v29);
  v32 = &unk_2871F25A8;
  if (v33 < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v33;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v32, 0, v16);
  if (v34)
  {
    MEMORY[0x2666E9ED0](v34, 0x1000C8077774924);
  }

  v34 = 0;
  v33 = 0;
  return std::__list_imp<unsigned int>::clear(v31);
}

void sub_260292DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (__p)
  {
    operator delete(__p);
  }

  LiClipSet::~LiClipSet(&STACK[0x5D0]);
  OZRenderParams::~OZRenderParams(va);
  PSEmitter::PostRenderFinalizer::~PostRenderFinalizer(&STACK[0x758]);
  std::__list_imp<unsigned int>::clear(&STACK[0x768]);
  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x788]);
  OZRenderGraphState::~OZRenderGraphState(&STACK[0x790]);
  _Unwind_Resume(a1);
}

void non-virtual thunk toPSEmitter::makeRenderImageSource(PSEmitter *this, OZRenderParams *a2, const OZRenderGraphState *a3, int a4)
{
  PSEmitter::makeRenderImageSource((this - 200), a2, a3, a4);
}

{
  PSEmitter::makeRenderImageSource((this - 6728), a2, a3, a4);
}

void PSEmitter::buildRenderGraph(PSEmitter *this, CMTime *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  v8 = (*(*this + 168))(this);
  v9 = v8;
  if (v8)
  {
    v12 = *a2;
    if (PSEmitter::shouldPrecompose(this, &v12))
    {
      shouldDoLocalParticleRender = 1;
    }

    else
    {
      shouldDoLocalParticleRender = PSEmitter::shouldDoLocalParticleRender(this);
    }
  }

  else
  {
    shouldDoLocalParticleRender = 0;
  }

  if ((*(*(this + 25) + 1440))(this + 200))
  {
    (*(*(this + 25) + 1976))(this + 200, a2, a3);
  }

  else if (v9)
  {
    if (!shouldDoLocalParticleRender)
    {
      operator new();
    }

    OZRenderGraphState::OZRenderGraphState(&v12, a4);
    if (PSEmitter::shouldDoLocalParticleRender(this))
    {
      v14 = 0;
    }

    LiGraphBuilder::partitionWorld(a3);
    OZElement::buildRenderGraph((this + 200), a2, a3, &v12);
    LiGraphBuilder::partitionWorld(a3);
    v15 = &unk_2871F25A8;
    if (v16 < 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v16;
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v15, 0, v11);
    if (v17)
    {
      MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
    }

    v17 = 0;
    v16 = 0;
    std::__list_imp<unsigned int>::clear(v13);
  }

  else
  {
    OZElement::buildRenderGraph((this + 200), a2, a3, a4);
  }
}

void sub_260293298(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 1);
  PCSharedCount::~PCSharedCount(v1 + 1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toPSEmitter::buildRenderGraph(PSEmitter *this, CMTime *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  PSEmitter::buildRenderGraph((this - 200), a2, a3, a4);
}

{
  PSEmitter::buildRenderGraph((this - 6728), a2, a3, a4);
}

uint64_t PSEmitter::setGeodeProperties3D(PSEmitter *this, CMTime *a2, const OZRenderGraphState *a3, LiGeode *a4)
{
  OZElement::setGeodeProperties3D(this + 200, a2, a3, a4);
  result = (*(*this + 168))(this);
  v9 = result;
  if ((*(a3 + 258) & 1) == 0)
  {
    if (result)
    {
      result = PSEmitter::shouldDoLocalParticleRender(this);
      if ((result & 1) == 0)
      {
        v11 = *a2;
        result = PSEmitter::shouldPrecompose(this, &v11);
        if (result)
        {
          *(a4 + 554) = 0;
        }
      }
    }
  }

  if (v9 && (result = PSEmitter::shouldDoLocalParticleRender(this), result))
  {
    v11 = *a2;
    result = OZChannel::getValueAsInt((this + 33200), &v11, 0.0);
    v10 = result != 0;
  }

  else
  {
    v10 = 0;
  }

  *(a4 + 556) = v10;
  return result;
}

uint64_t PSEmitter::hitCheck(uint64_t a1, float *a2, __int128 *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 & 4) != 0 && ((*(*(a1 + 200) + 680))())
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    v25 = *a3;
    v26[0] = *(a3 + 2);
    if (!(*(*(a1 + 216) + 104))(a1 + 216, &v25, 1, 1, 1))
    {
      return 0;
    }
  }

  v12 = *a2;
  v28 = a2[1];
  v29 = v12;
  v27 = 0;
  v14 = *(a1 + 200);
  v13 = a1 + 200;
  v15 = (*(v14 + 1368))(v13, a4, &v29, &v28, &v27, a3, 0);
  result = 0;
  if (!v15)
  {
    return result;
  }

  v25 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  *v26 = _Q0;
  (*(*v13 + 1488))(v13, &v25, a3);
  if (v26[0] < 0.0 || v26[1] < 0.0)
  {
    return 0;
  }

  if (*&v25 > v29 || v26[0] + *&v25 < v29)
  {
    return 0;
  }

  result = 0;
  v23 = v28;
  if (*(&v25 + 1) <= v28 && v26[1] + *(&v25 + 1) >= v28)
  {
    v24 = v27;
    *a5 = v29;
    *(a5 + 8) = v23;
    *(a5 + 16) = v24;
    return v13;
  }

  return result;
}

uint64_t PSEmitter::getDescendantAtIndex(PSEmitter *this, int a2)
{
  v2 = this + 33680;
  v3 = *(this + 4211);
  v4 = v3 != this + 33680;
  if (v3 != this + 33680 && a2 != 0)
  {
    v6 = a2 - 1;
    do
    {
      v3 = *(v3 + 1);
      v8 = v6-- != 0;
      v4 = v3 != v2;
    }

    while (v3 != v2 && v8);
  }

  if (!v4)
  {
    return 0;
  }

  v9 = *(v3 + 2);
  if (v9)
  {
    return v9 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toPSEmitter::getDescendantAtIndex(PSEmitter *this, int a2)
{
  v2 = this + 33480;
  v3 = *(this + 4186);
  v4 = v3 != this + 33480;
  if (a2 && v3 != this + 33480)
  {
    v5 = a2 - 1;
    do
    {
      v3 = *(v3 + 1);
      v7 = v5-- != 0;
      v4 = v3 != v2;
    }

    while (v3 != v2 && v7);
  }

  if (!v4)
  {
    return 0;
  }

  v8 = *(v3 + 2);
  if (v8)
  {
    return v8 + 16;
  }

  else
  {
    return 0;
  }
}

PSEmitter *PSEmitter::addDescendantAfter(PSEmitter *this, OZSceneNode *lpsrc, OZSceneNode *a3)
{
  if (lpsrc)
  {
    v4 = this;
    if (this)
    {
      PSParticleType::setEmitter(this, v4);
      if (a3)
      {
        v5 = (v4 + 33680);
        for (i = *(v4 + 4211); ; i = *(i + 8))
        {
          if (i == v5)
          {
            goto LABEL_11;
          }

          if (*(i + 16) == a3)
          {
            break;
          }
        }

        if (i != v5)
        {
          operator new();
        }
      }

LABEL_11:
      operator new();
    }
  }

  return this;
}

PSEmitter *PSEmitter::addDescendantBefore(PSEmitter *this, OZSceneNode *lpsrc, OZSceneNode *a3)
{
  if (lpsrc)
  {
    v4 = this;
    if (this)
    {
      PSParticleType::setEmitter(this, v4);
      if (a3)
      {
          ;
        }
      }

      operator new();
    }
  }

  return this;
}

OZChannelFolder *PSEmitter::removeDescendant(PSEmitter *this, OZSceneNode *a2)
{
  v4 = this + 0x8000;
  v5 = (this + 33680);
  for (i = *(this + 4211); i != v5; i = i[1])
  {
    if (i[2] == a2)
    {
      if (i != v5)
      {
        (*(*a2 + 256))(a2, 0);
        v8 = *i;
        v7 = i[1];
        *(v8 + 1) = v7;
        *v7 = v8;
        --*(v4 + 116);
        operator delete(i);
        (*(*this + 424))(this);
        v9 = this + 200;
        if ((*(*(this + 25) + 272))(this + 200))
        {
          v10 = (*(*v9 + 272))(this + 200);
          OZScene::unregisterNode(v10, a2);
          v11 = (*(*v9 + 272))(this + 200);
          OZScene::removeAllDependencies(v11, a2);
        }
      }

      break;
    }
  }

  v12 = (*(*a2 + 640))(a2);

  return OZChannelFolder::removeDescendant((this + 18976), v12);
}

uint64_t PSEmitter::isFourCornerPinned(PSEmitter *this)
{
  result = OZElement::isFourCornerPinned((this + 200));
  if (result)
  {
    return (*(*this + 168))(this) ^ 1;
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::isFourCornerPinned(OZElement *this)
{
  result = OZElement::isFourCornerPinned(this);
  if (result)
  {
    return (*(*(this - 25) + 168))(this - 200) ^ 1;
  }

  return result;
}

uint64_t PSEmitter::isCropped(PSEmitter *this)
{
  result = OZElement::isCropped((this + 200));
  if (result)
  {
    return (*(*this + 168))(this) ^ 1;
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::isCropped(OZElement *this)
{
  result = OZElement::isCropped(this);
  if (result)
  {
    return (*(*(this - 25) + 168))(this - 200) ^ 1;
  }

  return result;
}

uint64_t PSEmitter::isDropShadowEnabled(PSEmitter *this)
{
  result = OZElement::isDropShadowEnabled((this + 200));
  if (result)
  {
    return (*(*this + 168))(this) ^ 1;
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::isDropShadowEnabled(OZElement *this)
{
  result = OZElement::isDropShadowEnabled(this);
  if (result)
  {
    return (*(*(this - 25) + 168))(this - 200) ^ 1;
  }

  return result;
}

uint64_t PSEmitter::canReflect(PSEmitter *this)
{
  result = OZElement::canReflect((this + 200));
  if (result)
  {
    return (*(*this + 168))(this) ^ 1;
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::canReflect(OZElement *this)
{
  result = OZElement::canReflect(this);
  if (result)
  {
    return (*(*(this - 25) + 168))(this - 200) ^ 1;
  }

  return result;
}

uint64_t PSEmitter::writeBody(PSEmitter *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
    PCSerializerWriteStream::pushScope(a2, &OZEmitterScope);
    v10 = (*(*this + 256))(this);
    v11 = (*(*this + 264))(this);
    if (v10 != v11)
    {
      v12 = v11;
      do
      {
        v13 = *(v10 + 16);
        if (!OZChannelBase::testFlag((v13 + 56), 8))
        {
          v15 = *(v13 + 48);
          v14 = v13 + 48;
          (*(v15 + 16))(v14, a2, 0);
          (*(*v14 + 24))(v14, a2, 0, 1, a5);
          (*(*a2 + 24))(a2);
        }

        v10 = *(v10 + 8);
      }

      while (v10 != v12);
    }

    PCSerializerWriteStream::popScope(a2);
  }

  v16 = *(this + 70);
  if (v16 != OZChannel::getValueAsInt((this + 31784), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannelBase::setFlag((this + 31784), 0x100000000, 1);
  }

  return OZElement::writeBody((this + 200), a2, a3, a4, a5);
}

uint64_t non-virtual thunk toPSEmitter::writeBody(PSEmitter *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  return PSEmitter::writeBody((this - 200), a2, a3, a4, a5);
}

{
  return PSEmitter::writeBody((this - 248), a2, a3, a4, a5);
}

uint64_t PSEmitter::parseBegin(PSEmitter *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 31936), MEMORY[0x277CC08F0], 0.0, 0);
    OZChannel::setValue((this + 19896), v4, 3.0, 0);
  }

  OZElement::parseBegin((this + 200), a2);
  PCSerializerReadStream::pushScope(a2, &OZEmitterScope);
  return 1;
}

uint64_t non-virtual thunk toPSEmitter::parseBegin(PSEmitter *this, PCSerializerReadStream *a2)
{
  PSEmitter::parseBegin((this - 200), a2);
  return 1;
}

{
  PSEmitter::parseBegin((this - 248), a2);
  return 1;
}

uint64_t PSEmitter::parseEnd(PSEmitter *this, PCSerializerReadStream *a2)
{
  OZElement::parseEnd((this + 200), a2);
  OZChannel::setDefaultValue((this + 27824), 4.71238898);
  ValueAsInt = OZChannel::getValueAsInt((this + 19232), MEMORY[0x277CC08F0], 0.0);
  switch(ValueAsInt)
  {
    case 2:
      if (OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) != 3)
      {
        goto LABEL_10;
      }

      v8 = MEMORY[0x277CC08F0];
      v6 = (this + 19896);
      v7 = 0.0;
      break;
    case 5:
      if (OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) != 3)
      {
        goto LABEL_10;
      }

      v8 = MEMORY[0x277CC08F0];
      v6 = (this + 19896);
      v7 = 2.0;
      break;
    case 3:
      v5 = MEMORY[0x277CC08F0];
      OZChannel::setValue((this + 19232), MEMORY[0x277CC08F0], 2.0, 0);
      v6 = (this + 19896);
      v7 = 1.0;
      v8 = v5;
      break;
    default:
      goto LABEL_10;
  }

  OZChannel::setValue(v6, v8, v7, 0);
LABEL_10:
  (*(*this + 456))(this, 0);
  if (OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 3)
  {
    OZChannelBase::reset((this + 19896), 0);
  }

  if (!OZChannel::getValueAsInt((this + 27048), MEMORY[0x277CC08F0], 0.0))
  {
    v9 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 27048), MEMORY[0x277CC08F0], 1.0, 0);
    OZChannel::setValue((this + 27200), v9, 0.0, 0);
  }

  if (*(a2 + 26) <= 2u)
  {
    OZChannel::setValue((this + 32792), MEMORY[0x277CC08F0], 0.0, 0);
  }

  (*(*this + 448))(this, 1);
  return 1;
}

uint64_t non-virtual thunk toPSEmitter::parseEnd(PSEmitter *this, PCSerializerReadStream *a2)
{
  PSEmitter::parseEnd((this - 200), a2);
  return 1;
}

{
  PSEmitter::parseEnd((this - 248), a2);
  return 1;
}

uint64_t PSEmitter::parseElement(PSEmitter *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v12);
  *v11 = 0;
  OZElement::parseElement((this + 200), a2, a3);
  if (*(a3 + 2) == 62)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v11);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v12);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v11[1]);
    v6 = OZFactories::lookupFactory(*(theApp + 32), v11[0]);
    if (v6)
    {
      if (v7)
      {
        v8 = (*(*v7 + 168))(v7, &v12, v11[1]);
        if (v8)
        {
          OZChannelBase::setID((v9 + 56), v11[1]);
          PSParticleType::setEmitter(v9, this);
          (*(*v9 + 256))(v9, this + 200);
          operator new();
        }
      }
    }
  }

  PCString::~PCString(&v12);
  return 1;
}

uint64_t non-virtual thunk toPSEmitter::parseElement(PSEmitter *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PSEmitter::parseElement((this - 200), a2, a3);
  return 1;
}

{
  PSEmitter::parseElement((this - 248), a2, a3);
  return 1;
}

uint64_t PSEmitter::createParticleType(PSEmitter *this, OZImageNode *a2)
{
  PCURL::PCURL(&v8, @"Particle Type Default Name");
  if (a2)
  {
    if (v3)
    {
      Name = OZObjectManipulator::getName(&v3->var2);
      PCString::set(&v8, Name);
    }
  }

  NextUniqueID = OZChannelBase::getNextUniqueID(v3);
  ParticleType = PSParticleType::createParticleType(&v8, NextUniqueID);
  (*(*(ParticleType + 16) + 120))();
  PCString::~PCString(&v8);
  return ParticleType;
}

void PSEmitter::getIconName(PSEmitter *this@<X0>, PCURL *a2@<X8>)
{
  if (!OZChannel::getValueAsInt((this + 32792), MEMORY[0x277CC08F0], 0.0))
  {
    goto LABEL_9;
  }

  if (*(this + 33712) == 1)
  {
    if (*(this + 8427))
    {
      goto LABEL_9;
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(this + 8427) = ValueAsInt;
    *(this + 33712) = 1;
    if (ValueAsInt)
    {
      goto LABEL_9;
    }
  }

  if ((*(*(this + 25) + 272))(this + 200))
  {
    v5 = (*(*(this + 25) + 272))(this + 200);
    OZScene::getCurrentTime(v5, &v6);
    if (PSEmitter::shouldPrecompose(this, &v6))
    {
      PCURL::PCURL(a2, @"M_LayersList_ObjectIconColor-ParticleEmitterRasterized");
      return;
    }
  }

LABEL_9:
  (*(**(this + 26) + 80))(*(this + 26));
}

void PSEmitter::getIconNameBW(PSEmitter *this@<X0>, PCURL *a2@<X8>)
{
  if (!OZChannel::getValueAsInt((this + 32792), MEMORY[0x277CC08F0], 0.0))
  {
    goto LABEL_9;
  }

  if (*(this + 33712) == 1)
  {
    if (*(this + 8427))
    {
      goto LABEL_9;
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(this + 8427) = ValueAsInt;
    *(this + 33712) = 1;
    if (ValueAsInt)
    {
      goto LABEL_9;
    }
  }

  if ((*(*(this + 25) + 272))(this + 200))
  {
    v5 = (*(*(this + 25) + 272))(this + 200);
    OZScene::getCurrentTime(v5, &v6);
    if (PSEmitter::shouldPrecompose(this, &v6))
    {
      PCURL::PCURL(a2, @"M_LayersList_ObjectIconGrey-ParticleEmitterRasterized");
      return;
    }
  }

LABEL_9:
  (*(**(this + 26) + 88))(*(this + 26));
}

uint64_t PSEmitter::getIconID(PSEmitter *this)
{
  if (!OZChannel::getValueAsInt((this + 32792), MEMORY[0x277CC08F0], 0.0))
  {
    return (*(**(this + 26) + 96))(*(this + 26));
  }

  if (*(this + 33712) == 1)
  {
    if (*(this + 8427))
    {
      return (*(**(this + 26) + 96))(*(this + 26));
    }
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(this + 8427) = ValueAsInt;
    *(this + 33712) = 1;
    if (ValueAsInt)
    {
      return (*(**(this + 26) + 96))(*(this + 26));
    }
  }

  if ((*(*(this + 25) + 272))(this + 200))
  {
    v3 = (*(*(this + 25) + 272))(this + 200);
    OZScene::getCurrentTime(v3, &v5);
    if (PSEmitter::shouldPrecompose(this, &v5))
    {
      return 29;
    }
  }

  return (*(**(this + 26) + 96))(*(this + 26));
}

__n128 PSEmitter::getNaturalDuration@<Q0>(PSEmitter *this@<X0>, __n128 *a2@<X8>)
{
  v3 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v4 = ((*(*v3 + 272))(v3) + 336);

    result.n128_u64[0] = OZSceneSettings::getFrameDuration(v4, a2).n128_u64[0];
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    a2[1].n128_u64[0] = *(v6 + 16);
  }

  return result;
}

void PSEmitter::addParticleType(PSEmitter *this, PSParticleType *a2)
{
  PSParticleType::setEmitter(a2, this);
  v4 = (*(*a2 + 640))(a2);
  OZChannelFolder::push_front((this + 18976), v4);
  (*(*a2 + 256))(a2, this + 200);
  v5 = (*(*(this + 25) + 272))(this + 200);
  if (v5)
  {
    v6 = v5;
    OZScene::registerNode(v5, a2);
    OZScene::addAllDependencies(v6, a2);
    OZDocument::postNotification(*(v6 + 1584), 16);
    (*(*a2 + 280))(a2, v6);
  }

  operator new();
}

void PSEmitter::addNewParticleType(PSEmitter *this, OZImageNode *lpsrc)
{
  if (lpsrc)
  {
    if (v4)
    {
      if ((*(*v4 + 248))(v4))
      {
        v5 = MEMORY[0x277CC08F0];
        OZChannel::setValue((this + 32792), MEMORY[0x277CC08F0], 1.0, 0);
        OZChannel::setValue((this + 32944), v5, 0.0, 0);
        (*(*this + 456))(this, 1);
      }
    }
  }

  v6 = (*(*this + 568))(this, lpsrc);
  PSEmitter::addParticleType(this, v6);
}

void PSEmitter::allowDrag(PSEmitter *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  v8 = a6;
  v14 = this + 0x8000;
  *a5 = 0;
  *(this + 16752) = 0;
  if (!lpsrc)
  {
    goto LABEL_50;
  }

  if (v16)
  {
    v17 = this + 33680;
    v18 = *(v14 + 115);
    if (v18 != (this + 33680))
    {
      v19 = *(v14 + 115);
      while (*(v19 + 16) != v16)
      {
        v19 = *(v19 + 8);
        if (v19 == v17)
        {
          goto LABEL_24;
        }
      }

      if (v19 != v17)
      {
        if ((*(*(this + 25) + 640))(this + 200) == a3)
        {
          return;
        }

        v18 = *(v14 + 115);
      }
    }

LABEL_24:
    *a6 = 0;
    if (v18 == v17)
    {
      goto LABEL_40;
    }

    v29 = a4;
    v25 = 0;
    v26 = -1;
    v27 = -1;
    do
    {
      if ((*(**(v18 + 16) + 640))(*(v18 + 16)) == a3)
      {
        v26 = v25;
      }

      if (*(v18 + 16) == v15)
      {
        v27 = v25;
      }

      if ((v27 & 0x8000000000000000) == 0 && (v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      ++v25;
      v18 = *(v18 + 8);
    }

    while (v18 != v17);
    if (v27 != v26 && ((v26 | v27) & 0x8000000000000000) == 0)
    {
      *a5 = v29 & 2;
      if (v27 > v26)
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }

      *a6 = v28;
LABEL_41:
      if (!*a5)
      {
        return;
      }

LABEL_44:
      v14[737] = 1;
      return;
    }

    LOBYTE(a4) = v29;
    if (v26 < 0)
    {
LABEL_40:
      if ((*(*(this + 25) + 640))(this + 200) != a3)
      {
        goto LABEL_41;
      }
    }

    *a5 = a4 & 1;
    if ((a4 & 1) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

  v8 = a6;
  {
    *a6 = 1;
    *a5 = a4 & 9;
    v14[736] = 1;
    if ((a4 & 9) != 0)
    {
      return;
    }
  }

  else
  {
LABEL_50:
    if (*a5)
    {
      return;
    }
  }

  OZElement::allowDrag((this + 200), lpsrc, a3, a4, a5, v8, a7);
  if (!*a5)
  {
    v23 = *(lpsrc + 1);
    v31 = xmmword_260848510;
    if (OZFactory::isKindOfClass(v23, &v31))
    {
      v24 = (*(*this + 216))(this);
      if (a7 == 1 && v24 == 1 && (*(*(this + 25) + 640))(this + 200) == a3)
      {
        *a5 = a4 & 1;
        *v8 = 1;
      }
    }
  }
}

void non-virtual thunk toPSEmitter::allowDrag(PSEmitter *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  PSEmitter::allowDrag((this - 200), a2, a3, a4, a5, a6, a7);
}

{
  PSEmitter::allowDrag((this - 216), a2, a3, a4, a5, a6, a7);
}

uint64_t PSEmitter::prepareForDragOperation(uint64_t a1)
{
  if (*(a1 + 33504) & 1) != 0 || (*(a1 + 33505))
  {
    return 1;
  }

  else
  {
    return OZSceneNode::prepareForDragOperation();
  }
}

uint64_t non-virtual thunk toPSEmitter::prepareForDragOperation(uint64_t a1)
{
  if (*(a1 + 33304) & 1) != 0 || (*(a1 + 33305))
  {
    return 1;
  }

  else
  {
    return OZSceneNode::prepareForDragOperation();
  }
}

{
  if (*(a1 + 33288) & 1) != 0 || (*(a1 + 33289))
  {
    return 1;
  }

  else
  {
    return OZSceneNode::prepareForDragOperation();
  }
}

uint64_t PSEmitter::performDragOperation(PSEmitter *this, OZFactoryBase *a2, OZChannelBase *a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, const CMTime *a8)
{
  v15 = this + 0x8000;
  if ((*(*this + 624))(this) && ((v15[737] & 1) != 0 || v15[736] == 1))
  {
    PCURL::PCURL(v33, @"Undo Drop");
    (*(*(this + 27) + 176))(this + 216, v33, 3);
    PCString::~PCString(v33);
    while (*(v15 + 116))
    {
      v16 = (*(**(*(v15 + 115) + 16) + 640))(*(*(v15 + 115) + 16));
      (*(*this + 416))(this, v16);
    }

    v17 = 1;
    if (!a2)
    {
LABEL_15:
      if (v15[736])
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  if (v15[737] == 1)
  {
    v20 = v19[120];
    if ((*(*v19 + 640))() == a3)
    {
      return 0;
    }

    if (v20)
    {
      if ((v17 & 1) == 0)
      {
        PCURL::PCURL(v33, @"Undo Reorder");
        (*(v19[2] + 176))(v19 + 2, v33, 3);
        PCString::~PCString(v33);
      }

      (*(*v20 + 1000))(v20, v19);
    }

    else if ((v17 & 1) == 0)
    {
      PCURL::PCURL(v33, @"Undo Drop");
      (*(*(this + 27) + 176))(this + 216, v33, 3);
      PCString::~PCString(v33);
    }

    v26 = *(v15 + 115);
    if (v26 != (this + 33680))
    {
      v27 = v26 + 2;
      if ((*(*v26[2] + 640))(v26[2]) == a3)
      {
        v28 = 0;
LABEL_38:
        if (a5 == 3)
        {
          v28 = *v27;
        }

        goto LABEL_40;
      }

      while (1)
      {
        v26 = v26[1];
        if (v26 == (this + 33680))
        {
          break;
        }

        v28 = *v27;
        v27 = v26 + 2;
        if ((*(*v26[2] + 640))(v26[2]) == a3)
        {
          goto LABEL_38;
        }
      }
    }

    v28 = 0;
LABEL_40:
    (*(*this + 232))(this, v19, v28);
    (*(*this + 424))(this);
    v29 = *(this + 146);
    if (v29)
    {
      OZDocument::postNotification(*(v29 + 1584), 16);
    }

    return 1;
  }

  if (v15[736] == 1 && ((a7 & 8) == 0 || !v18 || (v18[1224] & 8) != 0))
  {
    if (v23)
    {
      v24 = v23;
      (*(*this + 168))(this);
      PSEmitter::addNewParticleType(this, v24);
    }

    return 1;
  }

LABEL_21:
  v21 = *(a2 + 1);
  *&v33[0].var0 = xmmword_260848510;
  if (!OZFactory::isKindOfClass(v21, v33) || (v22 = (*(*this + 216))(this), a6 != 1) || v22 != 1 || (*(*(this + 25) + 640))(this + 200) != a3)
  {
    OZElement::performDragOperation((this + 200), a2, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  v31 = (*(*this + 224))(this, 0);
  if (v31)
  {
  }

  v25 = 1;
  (*(*v31 + 584))(v31, a2, a3, a4, a5, 1, a7, a8);
  return v25;
}

uint64_t non-virtual thunk toPSEmitter::performDragOperation(PSEmitter *this, OZFactoryBase *a2, OZChannelBase *a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, const CMTime *a8)
{
  return PSEmitter::performDragOperation((this - 200), a2, a3, a4, a5, a6, a7, a8);
}

{
  return PSEmitter::performDragOperation((this - 216), a2, a3, a4, a5, a6, a7, a8);
}

uint64_t PSEmitter::deleteThis(PSEmitter *this, OZChannelBase *a2)
{
  v4 = (*(*this + 256))(this);
  v5 = (*(*this + 264))(this);
  if (v4 == v5)
  {
LABEL_5:

    return OZSceneNode::deleteThis((this + 200), a2);
  }

  else
  {
    v6 = v5;
    while (1)
    {
      v7 = v4[2];
      if ((*(*v7 + 640))(v7) == a2)
      {
        break;
      }

      v4 = v4[1];
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    v11 = *v4;
    v10 = v4[1];
    *(v11 + 8) = v10;
    *v10 = v11;
    --*(this + 4212);
    operator delete(v4);
    v12 = (*(*v9 + 640))(v9);
    OZChannelFolder::removeDescendant((this + 18976), v12);
    v13 = (*(*(this + 25) + 272))(this + 200);
    if (v13)
    {
      v14 = v13;
      OZScene::unregisterNode(v13, v7);
      OZScene::removeAllDependencies(v14, v7);
      OZDocument::postNotification(v14[198], 16);
    }

    (*(*v9 + 8))(v9);
    return 1;
  }
}

uint64_t non-virtual thunk toPSEmitter::deleteThis(PSEmitter *this, OZChannelBase *a2)
{
  return PSEmitter::deleteThis((this - 200), a2);
}

{
  return PSEmitter::deleteThis((this - 216), a2);
}

uint64_t PSEmitter::dirty(PSEmitter *this)
{
  result = OZElement::dirty((this + 200));
  *(this + 8396) = -1;
  return result;
}

uint64_t non-virtual thunk toPSEmitter::dirty(OZElement *this)
{
  result = OZElement::dirty(this);
  *(this + 8346) = -1;
  return result;
}

uint64_t non-virtual thunk toPSEmitter::dirty(PSEmitter *this)
{
  result = OZElement::dirty((this - 16));
  *(this + 8342) = -1;
  return result;
}

uint64_t PSEmitter::calcStaticHash(uint64_t a1)
{
  result = OZChannelBase::testFlag((a1 + 256), 8);
  if ((result & 1) == 0)
  {

    return OZTransformNode::calcStaticHash(a1 + 200);
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::calcStaticHash(uint64_t a1)
{
  result = OZChannelBase::testFlag((a1 + 56), 8);
  if ((result & 1) == 0)
  {

    return OZTransformNode::calcStaticHash(a1);
  }

  return result;
}

double PSEmitter::calcHashForState(PSEmitter *a1, const void *a2, __int128 *a3)
{
  (*(*(a1 + 25) + 536))();
  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  v12 = *PCHashWriteStream::getHash(v6)->i8;
  if (PSEmitter::simulatingAnyParticleTypes(a1))
  {
    (*(*a2 + 40))(a2);
    v10 = *a3;
    v11 = *(a3 + 2);
    (*(*a2 + 112))(a2, &v10);
  }

  Hash = PCHashWriteStream::getHash(v7);
  PCHash128::operator+=(&v12, Hash);
  *&result = PCHashWriteStream::setHash(v7, &v12).n128_u64[0];
  return result;
}

uint64_t PSEmitter::simulatingAnyParticleTypes(PSEmitter *this)
{
  v2 = (*(*this + 256))(this);
  v3 = (*(*this + 264))(this);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v3;
  do
  {
    v6 = *(v2 + 16);
    if (v6)
    {
    }

    result = (*(*v6 + 1384))(v6);
    if (result)
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != v5);
  return result;
}

double non-virtual thunk toPSEmitter::calcHashForState(uint64_t a1, const void *a2, __int128 *a3)
{
  return PSEmitter::calcHashForState((a1 - 200), a2, a3);
}

{
  return PSEmitter::calcHashForState((a1 - 216), a2, a3);
}

OZChannelBase *PSEmitter::updateChanHiddenFlag(PSEmitter *this, OZChannelBase *a2, int a3, char a4)
{
  v7 = this + 200;
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v8 = *((*(*v7 + 272))(v7) + 1584);
  }

  else
  {
    v8 = 0;
  }

  result = OZChannelBase::testFlag(a2, 2);
  if (result != a3)
  {
    if ((a4 & 1) == 0)
    {
      if (v8)
      {
        v10 = *(v8 + 168);
        if (!v10 || !OZNotificationManager::wasChannelModified(v10, a2))
        {
          PCSharedCount::PCSharedCount(&v11);
          (*(a2->var0 + 43))(a2, &v11);
          PCString::~PCString(&v11);
        }
      }
    }

    if (a3)
    {
      return OZChannelBase::setFlag(a2, 2, a4);
    }

    else
    {
      return OZChannelBase::resetFlag(a2, 2, a4);
    }
  }

  return result;
}

void PSEmitter::updateEmitterHiddenFlags(PSEmitter *this, char a2)
{
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v20 = (this + 19744);
  v23 = (this + 19744);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 19896);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20152);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20304);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20456);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20608);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20760);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 20912);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 21064);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 21216);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 21472);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 21728);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 21984);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 22240);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 22496);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 22752);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 23008);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 23160);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 23312);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 23464);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 24352);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 25392);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 25528);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 25680);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 25832);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 25984);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26136);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26288);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26440);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26592);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26744);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 26896);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27200);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27352);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27512);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27672);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27824);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 27976);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 28256);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 28560);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 28712);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 28864);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 29456);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 29608);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 29760);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 30920);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 31072);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 31328);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 31480);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = (this + 31784);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(&v26, &v23);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v22 = **&MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 19232), &v22, 0.0);
  v5 = OZChannel::getValueAsInt((this + 19896), &v22, 0.0);
  v6 = OZChannel::getValueAsInt(v20, &v22, 0.0);
  if (ValueAsInt == 1)
  {
    v9 = v6;
    v21 = (this + 23464);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 24352);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = v20;
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    if (!v9)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (ValueAsInt == 10)
  {
    v8 = v6;
    v21 = (this + 19896);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 23312);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (!v5)
        {
          v21 = v20;
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          if (v8)
          {
            v21 = (this + 20304);
            std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
            v21 = (this + 20456);
            std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          }
        }

        goto LABEL_54;
      }

      goto LABEL_29;
    }

    v21 = v20;
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (ValueAsInt != 2)
  {
    if ((ValueAsInt - 5) <= 1)
    {
      v10 = v6;
      v21 = (this + 19896);
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (ValueAsInt == 5)
      {
        v21 = (this + 27512);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 27200);
      }

      else
      {
        v21 = (this + 25392);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 25528);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 25680);
      }

      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (v5)
      {
        if (v5 == 2)
        {
          v21 = v20;
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          if (!v10)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        if (v5 != 1)
        {
          goto LABEL_54;
        }

LABEL_29:
        v21 = (this + 20304);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 20456);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 21064);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        goto LABEL_54;
      }

      v21 = v20;
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (!v10)
      {
        goto LABEL_54;
      }

LABEL_49:
      v21 = (this + 20152);
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      v21 = (this + 23160);
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      goto LABEL_54;
    }

    if (ValueAsInt == 4)
    {
      v12 = v6;
      v21 = (this + 27352);
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      v21 = v20;
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (!v12)
      {
        goto LABEL_54;
      }

      goto LABEL_49;
    }

    if (ValueAsInt != 11)
    {
      v13 = v6;
      if ((ValueAsInt - 7) > 1)
      {
        if (ValueAsInt == 9)
        {
          v21 = (this + 23464);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 24352);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 26440);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 26592);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 26744);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 26896);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = v20;
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          if (v13)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v21 = (this + 23312);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        if (ValueAsInt == 8)
        {
          v21 = (this + 26288);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        }

        v21 = (this + 25984);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = v20;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        if (v13)
        {
          v21 = (this + 26136);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
          v21 = (this + 23160);
          std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        }
      }

      goto LABEL_54;
    }

    v11 = v6;
    v21 = (this + 19896);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 25392);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 25528);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 25680);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 25832);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    if (!v5)
    {
      v21 = v20;
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (v11)
      {
        v21 = (this + 20304);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 20456);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 23160);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      }

      goto LABEL_54;
    }

    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v21 = (this + 20304);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 20456);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 20608);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
        v21 = (this + 21064);
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      }

      goto LABEL_54;
    }

    v21 = v20;
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    if (!v11)
    {
      goto LABEL_54;
    }

LABEL_51:
    v21 = (this + 20152);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    goto LABEL_54;
  }

  v7 = v6;
  v21 = (this + 19896);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  v21 = (this + 23312);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  switch(v5)
  {
    case 2:
      v21 = v20;
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (!v7)
      {
        break;
      }

      goto LABEL_51;
    case 1:
      goto LABEL_29;
    case 0:
      v21 = v20;
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
      if (v7)
      {
        goto LABEL_49;
      }

      break;
  }

LABEL_54:
  v21 = (this + 27672);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  v21 = (this + 27824);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  v21 = (this + 27976);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  v21 = (this + 31072);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  v21 = (this + 31480);
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  if ((*(*this + 216))(this) != 1 || OZChannelFolder::hasMoreThanOneKeypoint((this + 28128)))
  {
    v21 = (this + 28256);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 28560);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 28712);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 28864);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 29456);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
    v21 = (this + 29608);
    std::vector<TXTabStop *>::push_back[abi:ne200100](&v23, &v21);
  }

  v14 = v23;
  v15 = v24;
  while (v14 != v15)
  {
    v21 = *v14;
    PSEmitter::updateChanHiddenFlag(this, v21, 0, a2);
    std::__tree<OZLocking *>::__erase_unique<OZLocking *>(&v26, &v21);
    ++v14;
  }

  v16 = v26;
  if (v26 != v27)
  {
    do
    {
      PSEmitter::updateChanHiddenFlag(this, v16[4], 1, a2);
      v17 = v16[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v16[2];
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      v16 = v18;
    }

    while (v18 != v27);
  }

  PSEmitter::updatePropertiesChans(this, a2);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v26, v27[0]);
}

void sub_2602976EC(_Unwind_Exception *a1)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 - 112, *(v1 - 104));
  _Unwind_Resume(a1);
}

OZChannelBase *PSEmitter::updatePropertiesChans(PSEmitter *this, char a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 32792), MEMORY[0x277CC08F0], 0.0);
  v5 = ValueAsInt != 0;
  PSEmitter::updateChanHiddenFlag(this, (this + 14768), v5, a2);
  PSEmitter::updateChanHiddenFlag(this, (this + 17720), v5, a2);
  PSEmitter::updateChanHiddenFlag(this, (this + 12872), v5, a2);
  v6 = (this + 6880);
  if (ValueAsInt)
  {
    OZChannelBase::setFlag(v6, 2048, a2);
    OZChannelBase::setFlag((this + 7032), 2048, a2);
    OZChannelBase::setFlag((this + 14768), 2048, a2);
    OZChannelBase::setFlag((this + 8432), 2048, a2);

    return OZChannelBase::setRangeName((this + 200), v7);
  }

  else
  {
    OZChannelBase::resetFlag(v6, 2048, a2);
    OZChannelBase::resetFlag((this + 7032), 2048, a2);
    OZChannelBase::resetFlag((this + 14768), 2048, a2);

    return OZChannelBase::resetFlag((this + 8432), 2048, a2);
  }
}

void PSEmitter::tintColor(PSEmitter *this, const CMTime *a2, PCColor *a3)
{
  OZChannel::getValueAsDouble((this + 30920), a2, 0.0);
  v7 = v6;
  if (fabs(v6) >= 0.0000001)
  {
    PCColor::PCColor(&v11);
    OZChannelColor::getColor((this + 29760), a2, &v11);
    v8 = v7;
    PCColor::mix(a3, &v11, v8);
    Alpha = PCColor::getAlpha(a3);
    v10 = (1.0 - v7) * Alpha + v7 * PCColor::getAlpha(&v11);
    PCColor::setAlpha(a3, v10);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v11.var1._obj);
  }
}

void PSEmitter::getPreviewTransformMatrix(OZChannel *a1, uint64_t a2, CMTime *a3)
{
  if (*&a3[2].timescale == &a1[1].var6)
  {
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    v11 = 1.0;
  }

  else
  {
    OZChannel::getValueAsDouble(a1 + 212, a3, 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble(a1 + 213, a3, 0.0);
    v9 = v8;
    v10 = *&a3[1].epoch;
    v11 = (*(a1->var0 + 44))(a1) / v10;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 24) = v7 - v11 * 0.0;
    *(a2 + 56) = v9;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
  }

  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = v11;
}

double PSEmitter::getInvPreviewTransformMatrix(OZChannel *a1, uint64_t a2, CMTime *a3)
{
  if (*&a3[2].timescale == &a1[1].var6)
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  else
  {
    OZChannel::getValueAsDouble(a1 + 212, a3, 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble(a1 + 213, a3, 0.0);
    v9 = v8;
    v10 = *&a3[1].epoch;
    v11 = (*(a1->var0 + 44))(a1) / v10;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *a2 = v11;
    *(a2 + 40) = 0x3FF0000000000000;
    *(a2 + 24) = v7 - v11 * 0.0;
    *(a2 + 56) = v9;
    *(a2 + 80) = xmmword_2603426F0;

    PCMatrix44Tmpl<double>::invert(a2, a2, 0.0);
  }

  return result;
}

void PSEmitter::initParticles(PSEmitter *this, uint64_t a2, PSParticleType *a3, uint64_t a4, void *a5, OZSimStateArray *a6)
{
  v249 = a4;
  v228 = a2;
  v8 = (this + 28672);
  v321 = *(a6 + 1);
  memset(&v320, 0, sizeof(v320));
  v9 = this + 200;
  v10 = (*(*(this + 25) + 272))(this + 200, a2, a3, a4, a5);
  FrameDuration = OZSceneSettings::getFrameDuration((v10 + 336), &v320);
  v12 = *((*(*v9 + 272))(v9, FrameDuration) + 368);
  Seed = PSParticleType::getSeed(a3);
  (*(*v9 + 1128))(&v317, v9);
  v227 = (*(*this + 168))(this);
  v221 = v8[16];
  v14 = 0.0;
  v229 = this;
  OZChannel::getValueAsDouble((this + 28712), &v321, 0.0);
  v16 = v15;
  if ((*(*a3 + 1576))(a3))
  {
    *&time.var0.var0 = v318;
    time.var0.var3 = v319;
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    OZChannel::getValueAsDouble((a3 + 1576), &v321, 0.0);
    Seconds = v17;
    OZChannel::getValueAsDouble((a3 + 1728), &v321, 0.0);
    v14 = v18;
  }

  v219 = v8[202];
  OZChannel::getValueAsDouble((a3 + 1880), &v321, 0.0);
  v20 = v19;
  OZChannel::getValueAsDouble((a3 + 2032), &v321, 0.0);
  v22 = v21;
  OZChannel::getValueAsDouble((this + 29456), &v321, 0.0);
  v24 = v23;
  v222 = *(a3 + 3758);
  v315 = 0uLL;
  v316 = 0.0;
  OZChannelRotation3D::getValueAsEulerAngles(a3 + 2336, &v321, &v315, 0.0);
  v313 = 0uLL;
  v314 = 0.0;
  OZChannelRotation3D::getValueAsEulerAngles(a3 + 3192, &v321, &v313, 0.0);
  v311 = 0uLL;
  v312 = 0.0;
  OZChannelRotation3D::getValueAsEulerAngles(a3 + 4208, &v321, &v311, 0.0);
  if ((v227 & 1) == 0)
  {
    v315 = 0uLL;
    v313 = 0uLL;
    v311 = 0uLL;
  }

  v218 = v8[240];
  OZChannel::getValueAsDouble((a3 + 5064), &v321, 0.0);
  v245 = v25;
  OZChannel::getValueAsDouble((a3 + 5216), &v321, 0.0);
  v242 = v26;
  OZChannel::getValueAsDouble((this + 29608), &v321, 0.0);
  v239 = v27;
  v236 = v8[54];
  v310 = 0.0;
  v309 = 0.0;
  v308 = 0.0;
  OZChannelScale3D::getValue((a3 + 8040), &v321, &v310, &v309, &v308, 0.0);
  v307 = 0.0;
  v306 = 0.0;
  v305 = 0.0;
  OZChannelScale3D::getValue((a3 + 8632), &v321, &v307, &v306, &v305, 0.0);
  v304 = 0.0;
  v303 = 0.0;
  v302 = 0.0;
  OZChannelScale3D::getValue((a3 + 9224), &v321, &v304, &v303, &v302, 0.0);
  v301 = 0.0;
  v300 = 0.0;
  v299 = 0.0;
  OZChannelScale3D::getValue((this + 28864), &v321, &v301, &v300, &v299, 0.0);
  v310 = v301 * v310;
  v309 = v300 * v309;
  v308 = v299 * v308;
  v304 = v301 * v304;
  v303 = v300 * v303;
  v302 = v299 * v302;
  OZChannel::getValueAsDouble((a3 + 13200), &v321, 0.0);
  v29 = v28;
  OZChannel::getValueAsDouble((a3 + 13352), &v321, 0.0);
  v31 = v30;
  OZChannel::getValueAsDouble((a3 + 13640), &v321, 0.0);
  v226 = v32;
  OZChannel::getValueAsDouble((a3 + 13792), &v321, 0.0);
  v225 = v33;
  OZChannel::getValueAsDouble((this + 27672), &v321, 0.0);
  v223 = v34;
  OZChannel::getValueAsDouble((this + 27824), &v321, 0.0);
  v238 = v35;
  OZChannel::getValueAsDouble((this + 27976), &v321, 0.0);
  v220 = v36;
  v237 = cos(v36 * 0.5);
  OZRenderState::OZRenderState(&time);
  time.var0 = v321;
  time.var8 = 0;
  v297 = 0x3FF0000000000000;
  v294 = 0x3FF0000000000000;
  v291 = 0x3FF0000000000000;
  v288 = 0x3FF0000000000000;
  v289 = 0u;
  v290 = 0u;
  v292 = 0u;
  v293 = 0u;
  v295 = 0u;
  v296 = 0u;
  v287 = 0x3FF0000000000000;
  v284 = 0x3FF0000000000000;
  v281 = 0x3FF0000000000000;
  v278 = 0x3FF0000000000000;
  v279 = 0u;
  v280 = 0u;
  v282 = 0u;
  v283 = 0u;
  v285 = 0u;
  v286 = 0u;
  if (v228 == 1)
  {
    v276 = 0uLL;
    *&v277 = 0.0;
    v37 = (*(*v9 + 272))(v9);
    OZSceneSettings::getFrameDuration((v37 + 336), &v276);
    PSEmitter::getPreviewTransformMatrix(this, &v288, &time);
    if ((*(*a3 + 1488))(a3))
    {
      time1 = v321;
      *&time2.value = v276;
      time2.epoch = v277;
      PC_CMTimeSaferSubtract(&time1, &time2, &v275);
      time2 = v317;
      time1 = v275;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        time1 = v321;
        *&time2.value = v276;
        time2.epoch = v277;
        PC_CMTimeSaferSubtract(&time1, &time2, &v275);
        time.var0 = v275;
      }
    }

    PSEmitter::getPreviewTransformMatrix(this, &v278, &time);
  }

  else
  {
    v276 = 0uLL;
    *&v277 = 0.0;
    v38 = (*(*v9 + 272))(v9);
    v39 = OZSceneSettings::getFrameDuration((v38 + 336), &v276);
    (*(*v9 + 1256))(v9, &v288, &time, v39);
    if ((*(*a3 + 1488))(a3))
    {
      time1 = v321;
      *&time2.value = v276;
      time2.epoch = v277;
      PC_CMTimeSaferSubtract(&time1, &time2, &v275);
      time2 = v317;
      time1 = v275;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        time1 = v321;
        *&time2.value = v276;
        time2.epoch = v277;
        PC_CMTimeSaferSubtract(&time1, &time2, &v275);
        time.var0 = v275;
      }
    }

    (*(*v9 + 1256))(v9, &v278, &time);
  }

  v276 = 0uLL;
  *&v277 = 0.0;
  memset(&v275, 0, sizeof(v275));
  PCMatrix44Tmpl<double>::transform<double>(&v288, v276.f64, v276.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v278, &v275.value, &v275.value);
  ValueAsInt = OZChannel::getValueAsInt((a3 + 10272), &v321, 0.0);
  OZChannel::getValueAsDouble((a3 + 10424), &v321, 0.0);
  v213 = v40;
  v230 = v24;
  v232 = v22;
  OZChannel::getValueAsDouble((a3 + 10576), &v321, 0.0);
  v212 = v41;
  v42 = v16;
  v43 = v12;
  v214 = (*(*a3 + 1584))(a3);
  v44 = v20;
  OZChannel::getValueAsDouble((a3 + 10888), &v321, 0.0);
  v46 = v45;
  OZChannel::getValueAsDouble((a3 + 11040), &v321, 0.0);
  v48 = v47;
  v49 = OZChannel::getValueAsInt((a3 + 10120), &v321, 0.0);
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0.0;
  }

  v217 = v50;
  if (v49)
  {
    v51 = v46;
  }

  else
  {
    v51 = 0.0;
  }

  v235 = v51;
  v274 = *(a3 + 686);
  v273 = 0;
  v52 = OZChannel::getValueAsInt((this + 19232), &v321, 0.0);
  if (v52 == 5)
  {
    PSEmitter::getSrcImage(v229, v228, &v321);
  }

  v211 = v52;
  if (v249)
  {
    v53 = 0;
    v54 = v43 * v42 * Seconds;
    v55 = v43 * v42 * v14;
    v56 = v44 * v230;
    v57 = v232 * v230;
    v233 = v245 * v239;
    v234 = v57;
    v231 = v242 * v239;
    v58 = -1108378657 * ((*(a6 + 1) - *a6) >> 3) - v249;
    v215 = v56;
    v216 = v55;
    do
    {
      v59 = *a6 + 248 * v58;
      v60 = *(v59 + 232);
      if (v60)
      {
      }

      else
      {
        v61 = 0;
      }

      v62 = (*(*v61 + 32))(v61);
      v63 = v62;
      v64 = v54;
      if (v55 > 0.0)
      {
        v65 = -32;
        v66 = -1640531527;
        v67 = v62;
        v68 = v221;
        do
        {
          v67 += (Seed + 16 * v68) ^ (v68 + v66) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v68 >> 5));
          v68 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v67) ^ (v66 + v67) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v67 >> 5));
          v66 -= 1640531527;
          _CF = __CFADD__(v65++, 1);
        }

        while (!_CF);
        v64 = v54 + v55 * ((v68 ^ v67) / 2147483650.0 * 0.5);
      }

      if (v64 < 0.0)
      {
        v64 = 0.0;
      }

      v70 = operator*(&v320, &time1, v64);
      *(v61 + 32) = time1;
      v71 = PCColor::WHITE(v70);
      v72 = *v71;
      v73 = *(v71 + 2);
      *(v61 + 8) = *(v71 + 1);
      *(v61 + 9) = v73;
      *(v61 + 7) = v72;
      PCCFRef<CGColorSpace *>::operator=(v61 + 20, v71 + 6);
      __x.value = 0x3FF0000000000000;
      *&__x.timescale = 0;
      __x.epoch = 0;
      *v59 = 0;
      *(v59 + 8) = 0;
      *(v59 + 16) = 0;
      (*(*v229 + 648))();
      v271 = *v59;
      v269 = *&v271.value;
      v270 = *&v271.epoch;
      PCMatrix44Tmpl<double>::transform<double>(&v288, &v271.value, &v271.value);
      PCMatrix44Tmpl<double>::transform<double>(&v278, v269.f64, v269.f64);
      v267 = 0uLL;
      v268 = 0;
      v74 = *(v61 + 8);
      time1.epoch = *(v61 + 3);
      *&time1.value = v74;
      time2 = v320;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v266);
      v75 = *(v61 + 8);
      time1.epoch = *(v61 + 3);
      *&time1.value = v75;
      time2 = v266;
      PC_CMTimeSaferSubtract(&time1, &time2, &v267);
      operator/(&v267, &v320, &time1);
      v76 = CMTimeGetSeconds(&time1);
      v77 = v76 * *&v271.epoch + (1.0 - v76) * v270;
      v251 = v76;
      v246 = 1.0 - v76;
      *v59 = vaddq_f64(vmulq_n_f64(*&v271.value, v76), vmulq_n_f64(v269, 1.0 - v76));
      *(v59 + 16) = v77;
      *&v266.value = 0uLL;
      v264 = 0.0;
      v265 = 0.0;
      (*(*a3 + 1560))(a3, &v321, v61, Seed, &v266, &v264);
      *(v61 + 56) = *&v266.value;
      *(v61 + 9) = 0x3FF0000000000000;
      v262 = 0.0;
      v263 = 0.0;
      OZChannel2DOverRange::getValueOverRange((a3 + 13944), &v321, *(v61 + 21), &v263, &v262);
      v78 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
      v79 = -32;
      v80 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
      v81 = -1640531527;
      v82 = v63;
      v83 = v236 + 10000;
      v84 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
      do
      {
        v82 += (Seed + 16 * v83) ^ (v81 + v83) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v83 >> 5));
        v83 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v82) ^ (v81 + v82) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v82 >> 5));
        v81 -= 1640531527;
        _CF = __CFADD__(v79++, 1);
      }

      while (!_CF);
      v85 = (v83 ^ v82);
      v86 = -32;
      v87 = -1640531527;
      v88 = v63;
      v89 = v236 + 10001;
      do
      {
        v88 += (Seed + 16 * v89) ^ (v87 + v89) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v89 >> 5));
        v89 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v88) ^ (v87 + v88) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v88 >> 5));
        v87 -= 1640531527;
        _CF = __CFADD__(v86++, 1);
      }

      while (!_CF);
      v90 = (v29 + (v226 + v263) * (v85 / 2147483650.0 * 0.5)) * v264;
      v91 = (v31 + (v225 + v262) * ((v89 ^ v88) / 2147483650.0 * 0.5)) * v265;
      if (fabs(v90) >= 0.0000001 || fabs(v91) >= 0.0000001)
      {
        v92 = v90 * 0.0 + v91 * *&__x.epoch;
        v93 = vmulq_n_f64(*&__x.value, v91);
        v94 = vmulq_n_f64(*&__x.value, v90);
        v95 = vextq_s8(v94, v94, 8uLL);
        *&v96.f64[0] = *&vsubq_f64(v93, v95);
        v96.f64[1] = vaddq_f64(v93, v95).f64[1];
        *v59 = vaddq_f64(v96, *v59);
        *(v59 + 16) = v92 + *(v59 + 16);
      }

      v97 = *&v277;
      v240 = *&v275.value;
      v243 = v276;
      v98 = *&v275.epoch;
      memset(&time2, 0, sizeof(time2));
      if (v227)
      {
        v99 = v31;
        v100 = 538680;
        v101 = -32;
        v102 = -1640531527;
        v103 = v63;
        do
        {
          v103 += (Seed + 16 * v100) ^ (v100 + v102) ^ (v78 + (v100 >> 5));
          v100 += (v80 + 16 * v103) ^ (v102 + v103) ^ (v84 + (v103 >> 5));
          v102 -= 1640531527;
          _CF = __CFADD__(v101++, 1);
        }

        while (!_CF);
        v104 = v54;
        v105 = v29;
        v106 = (v100 ^ v103);
        v107 = -32;
        v108 = -1640531527;
        v109 = v63;
        v110 = 230275;
        do
        {
          v109 += (Seed + 16 * v110) ^ (v108 + v110) ^ (v78 + (v110 >> 5));
          v110 += (v80 + 16 * v109) ^ (v108 + v109) ^ (v84 + (v109 >> 5));
          v108 -= 1640531527;
          _CF = __CFADD__(v107++, 1);
        }

        while (!_CF);
        v111 = (1.0 - v237) * (v106 / 4294967300.0) + -1.0;
        v112 = sqrt(1.0 - v111 * v111);
        v113 = __sincos_stret((v110 ^ v109) / 2147483650.0 * 6.28318531);
        *&time2.value = v112 * v113.__cosval;
        *&time2.timescale = v112 * v113.__sinval;
        *&time2.epoch = -v111;
        v261 = 0x3FF0000000000000;
        v258 = 0x3FF0000000000000;
        v255 = 0x3FF0000000000000;
        time1.value = 0x3FF0000000000000;
        *&time1.timescale = 0u;
        v254 = 0u;
        v256 = 0u;
        v257 = 0u;
        v259 = 0u;
        v260 = 0u;
        PCMatrix44Tmpl<double>::rightRotate(&time1.value, 1, -v238);
        PCMatrix44Tmpl<double>::rightRotate(&time1.value, 0, -v223);
        PCMatrix44Tmpl<double>::transform<double>(&time1.value, &time2.value, &time2.value);
        v29 = v105;
        v31 = v99;
        v54 = v104;
        v56 = v215;
        v55 = v216;
      }

      else
      {
        v114 = -32;
        v115 = -1640531527;
        v116 = v63;
        v117 = 230275;
        do
        {
          v116 += (Seed + 16 * v117) ^ (v115 + v117) ^ (v78 + (v117 >> 5));
          v117 += (v80 + 16 * v116) ^ (v115 + v116) ^ (v84 + (v116 >> 5));
          v115 -= 1640531527;
          _CF = __CFADD__(v114++, 1);
        }

        while (!_CF);
        v118 = atan2(*&__x.timescale, *&__x.value);
        v119 = __sincos_stret(v223 + v118 + v220 * ((v117 ^ v116) / 2147483650.0 * 0.5));
        time2.value = *&v119.__cosval;
        *&time2.timescale = v119.__sinval;
      }

      v120 = v56;
      if (v234 > 0.0)
      {
        v121 = -32;
        v122 = -1640531527;
        v123 = v63;
        v124 = v219;
        do
        {
          v123 += (Seed + 16 * v124) ^ (v124 + v122) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v124 >> 5));
          v124 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v123) ^ (v122 + v123) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v123 >> 5));
          v122 -= 1640531527;
          _CF = __CFADD__(v121++, 1);
        }

        while (!_CF);
        v120 = v56 + v234 * ((v124 ^ v123) / 2147483650.0 * 0.5);
      }

      *&time2.value = vmulq_n_f64(*&time2.value, v120);
      *&time2.epoch = v120 * *&time2.epoch;
      time1 = time2;
      PCMatrix44Tmpl<double>::transform<double>(&v288, &time2.value, &time2.value);
      PCMatrix44Tmpl<double>::transform<double>(&v278, &time1.value, &time1.value);
      *&time2.value = vaddq_f64(vmulq_n_f64(*&time2.value, v251), vmulq_n_f64(*&time1.value, v246));
      *&time2.epoch = v251 * *&time2.epoch + v246 * *&time1.epoch;
      epoch = time2.epoch;
      *(v59 + 56) = vsubq_f64(*&time2.value, vaddq_f64(vmulq_n_f64(v243, v251), vmulq_n_f64(v240, v246)));
      *(v59 + 72) = *&epoch - (v251 * v97 + v246 * v98);
      v126 = v233;
      if (v231 > 0.0)
      {
        v127 = -32;
        v128 = -1640531527;
        v129 = v218;
        do
        {
          v63 += (Seed + 16 * v129) ^ (v129 + v128) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v129 >> 5));
          v129 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v63) ^ (v128 + v63) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v63 >> 5));
          v128 -= 1640531527;
          _CF = __CFADD__(v127++, 1);
        }

        while (!_CF);
        v126 = v233 + v231 * ((v129 ^ v63) / 2147483650.0 * 0.5);
      }

      *(v59 + 80) = 0;
      *(v59 + 88) = 0;
      *(v59 + 96) = v126;
      *(v59 + 104) = *(v59 + 80);
      *(v59 + 120) = *(v59 + 96);
      (*(*a3 + 1552))(a3, &v321, v61, Seed, v61 + 112);
      ++v58;
      ++v53;
    }

    while (v53 != v249);
    if ((v273 & 1) == 0)
    {
      PSEmitter::calcOrderIndexFromOrderFraction(v229, a6, v249);
    }

    v130 = 0;
    v131 = -1108378657 * ((*(a6 + 1) - *a6) >> 3) - v249;
    __asm { FMOV            V0.2D, #0.5 }

    v241 = _Q0;
    do
    {
      v136 = *a6 + 248 * v131;
      v137 = *(v136 + 232);
      if (v137)
      {
      }

      else
      {
        v138 = 0;
      }

      v139 = (*(*v138 + 32))(v138);
      v140 = v139;
      v141 = v138[21];
      v142 = (1.0 - v141) * v316 + v141 * (v316 + v314);
      v143 = vaddq_f64(vmulq_n_f64(v315, 1.0 - v141), vmulq_n_f64(vaddq_f64(v315, v313), v141));
      v244 = v141;
      v247 = 1.0 - v141;
      if (vaddvq_f64(vmulq_f64(v311, v311)) + v312 * v312 <= 0.0)
      {
        v252 = v143;
      }

      else
      {
        v144 = -32;
        v145 = -1640531527;
        v146 = v139;
        v147 = v222 + 2;
        do
        {
          v146 += (Seed + 16 * v147) ^ (v145 + v147) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v147 >> 5));
          v147 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v146) ^ (v145 + v146) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v146 >> 5));
          v145 -= 1640531527;
          _CF = __CFADD__(v144++, 1);
        }

        while (!_CF);
        v148.f64[0] = (v147 ^ v146) / 2147483650.0;
        v149 = -32;
        v150 = -1640531527;
        v151 = v139;
        v152 = v222 + 1;
        do
        {
          v151 += (Seed + 16 * v152) ^ (v150 + v152) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v152 >> 5));
          v152 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v151) ^ (v150 + v151) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v151 >> 5));
          v150 -= 1640531527;
          _CF = __CFADD__(v149++, 1);
        }

        while (!_CF);
        v153 = (v152 ^ v151);
        v154 = -32;
        v155 = -1640531527;
        v156 = v139;
        v157 = v222;
        do
        {
          v156 += (Seed + 16 * v157) ^ (v157 + v155) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v157 >> 5));
          v157 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v156) ^ (v155 + v156) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v156 >> 5));
          v155 -= 1640531527;
          _CF = __CFADD__(v154++, 1);
        }

        while (!_CF);
        v148.f64[1] = v153 / 2147483650.0;
        v252 = vaddq_f64(v143, vmulq_f64(vmulq_f64(v311, v148), v241));
        v142 = v142 + v312 * ((v157 ^ v156) / 2147483650.0) * 0.5;
      }

      v158 = (*(*a3 + 1568))(a3, &v321, v138, Seed);
      v159 = __sincos_stret((v142 + v158) * 0.5);
      v160 = v159.__sinval * 0.0;
      v161 = __sincos_stret(0.5 * v252.f64[0]);
      v162 = __sincos_stret(vmuld_lane_f64(0.5, v252, 1));
      v163 = v161.__cosval * (v162.__sinval * 0.0);
      v164 = v161.__sinval * 0.0 * v162.__sinval;
      v165 = v161.__sinval * 0.0 * (v162.__sinval * 0.0);
      v166 = v161.__sinval * v162.__cosval + v163 + v164 - v165;
      v167 = v166 * (v159.__sinval * 0.0);
      v168 = v161.__sinval * 0.0 * v162.__cosval;
      v169 = v161.__sinval * (v162.__sinval * 0.0);
      v170 = v168 + v161.__cosval * v162.__sinval + v169 - v165;
      v171 = v161.__cosval * v162.__cosval - (v165 + v164 + v169);
      v179.f64[0] = v165 - v161.__sinval * v162.__sinval + v168 + v163;
      v172 = v171 * v159.__sinval + v179.f64[0] * v159.__cosval + v166 * v160 - v170 * v160;
      v173 = v170 * v159.__cosval + v171 * v160 + v179.f64[0] * v160 - v166 * v159.__sinval;
      v174 = v166 * v159.__cosval + v171 * v160 + v170 * v159.__sinval - v179.f64[0] * v160;
      v179.f64[0] = v171 * v159.__cosval - (v179.f64[0] * v159.__sinval + v167 + v170 * (v159.__sinval * 0.0));
      v175 = *(v136 + 24);
      v176 = *(v136 + 32);
      v177 = *(v136 + 40);
      v178 = *(v136 + 48);
      *(v136 + 40) = v173 * v175 + v179.f64[0] * v177 + v174 * v178 - v172 * v176;
      *(v136 + 48) = v173 * v176 - v174 * v177 + v172 * v175 + v179.f64[0] * v178;
      *(v136 + 24) = v179.f64[0] * v175 - (v174 * v176 + v173 * v177 + v172 * v178);
      *(v136 + 32) = v174 * v175 + v179.f64[0] * v176 + v172 * v177 - v173 * v178;
      v179.f64[0] = v310 * (v247 + v244 * v307);
      if (v304 > 0.0)
      {
        v180 = -32;
        v181 = -1640531527;
        v182 = v140;
        v183 = v236;
        do
        {
          v182 += (Seed + 16 * v183) ^ (v183 + v181) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v183 >> 5));
          v183 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v182) ^ (v181 + v182) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v182 >> 5));
          v181 -= 1640531527;
          _CF = __CFADD__(v180++, 1);
        }

        while (!_CF);
        v179.f64[0] = v179.f64[0] + v304 * ((v183 ^ v182) / 2147483650.0 * 0.5);
        if (v179.f64[0] < 0.0)
        {
          v179.f64[0] = 0.0;
        }
      }

      v184 = v309 * (v247 + v244 * v306);
      if (v303 > 0.0)
      {
        v185 = -32;
        v186 = -1640531527;
        v187 = v140;
        v188 = v236;
        do
        {
          v187 += (Seed + 16 * v188) ^ (v188 + v186) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v188 >> 5));
          v188 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v187) ^ (v186 + v187) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v187 >> 5));
          v186 -= 1640531527;
          _CF = __CFADD__(v185++, 1);
        }

        while (!_CF);
        v184 = v184 + v303 * ((v188 ^ v187) / 2147483650.0 * 0.5);
        if (v184 < 0.0)
        {
          v184 = 0.0;
        }
      }

      v189 = v308 * (v247 + v244 * v305);
      if (v302 > 0.0)
      {
        v190 = -32;
        v191 = -1640531527;
        v192 = v140;
        v193 = v236;
        do
        {
          v192 += (Seed + 16 * v193) ^ (v193 + v191) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v193 >> 5));
          v193 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v192) ^ (v191 + v192) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v192 >> 5));
          v191 -= 1640531527;
          _CF = __CFADD__(v190++, 1);
        }

        while (!_CF);
        v189 = v189 + v302 * ((v193 ^ v192) / 2147483650.0 * 0.5);
        if (v189 < 0.0)
        {
          v189 = 0.0;
        }
      }

      v194 = v189 * v138[9];
      v179.f64[1] = v184;
      *(v138 + 7) = vmulq_f64(v179, *(v138 + 7));
      v138[9] = v194;
      if (ValueAsInt)
      {
        memset(&time1, 0, sizeof(time1));
        v195 = 945328649;
        v196 = -32;
        v197 = -1640531527;
        v198 = v140;
        do
        {
          v198 += (Seed + 16 * v195) ^ (v197 + v195) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v195 >> 5));
          v195 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v198) ^ (v197 + v198) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v198 >> 5));
          v197 -= 1640531527;
          _CF = __CFADD__(v196++, 1);
        }

        while (!_CF);
        operator*(&v274, &time1, (v195 ^ v198) / 4294967300.0);
        __x = time1;
        v271 = v320;
        PC_CMTimeFloorToSampleDuration(&__x, &v271, &time2);
        *(v138 + 5) = *&time2.value;
        v199 = time2.epoch;
      }

      else
      {
        if (v214)
        {
          OZChannelDoubleOverRange::getValueOverRangeAsDouble((a3 + 10728), &v321, v138[21]);
          operator*(&v320, &time1, v200);
        }

        else
        {
          operator*(&v320, &time1, v213 + v212 * v138[22]);
        }

        *(v138 + 5) = *&time1.value;
        v199 = time1.epoch;
      }

      *(v138 + 12) = v199;
      v201 = v235;
      if (v235 > 0.0)
      {
        v202 = -2096987786;
        v203 = -32;
        v204 = -1640531527;
        do
        {
          v140 += (Seed + 16 * v202) ^ (v204 + v202) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v202 >> 5));
          v202 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v140) ^ (v204 + v140) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v140 >> 5));
          v204 -= 1640531527;
          _CF = __CFADD__(v203++, 1);
        }

        while (!_CF);
        v201 = v235 + v217 * ((v202 ^ v140) / 4294967300.0);
        if (v201 < 1.0)
        {
          v201 = 1.0;
        }
      }

      v138[13] = v201;
      ++v131;
      ++v130;
    }

    while (v130 != v249);
  }

  if (OZChannel::getValueAsInt((v229 + 31632), MEMORY[0x277CC08F0], 0.0))
  {
    v205 = *(a6 + 1);
    v206 = (*a6 + 248 * (0xEF7BDEF7BDEF7BDFLL * ((v205 - *a6) >> 3) - v249));
    v207 = 126 - 2 * __clz(0xEF7BDEF7BDEF7BDFLL * ((v205 - v206) >> 3));
    time1.value = lessThanOrderingSimElem;
    if (v205 == v206)
    {
      v208 = 0;
    }

    else
    {
      v208 = v207;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,false>(v206, v205, &time1, v208, 1);
  }

  if (v211 == 5)
  {
    v209 = *(v229 + 4190);
    v210 = 0uLL;
    *(v229 + 33512) = 0u;
    if (v209)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v209);
      v210 = 0uLL;
    }

    *(v229 + 4191) = 0x3FF0000000000000;
    *(v229 + 2096) = v210;
  }
}

void PSEmitter::getSrcImage(PSEmitter *this, int a2, const CMTime *a3)
{
  v6 = this + 0x8000;
  v7 = *(this + 4190);
  v8 = 0uLL;
  *(this + 33512) = 0u;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v8 = 0uLL;
  }

  *(v6 + 95) = 0x3FF0000000000000;
  *(v6 + 48) = v8;
  ImageNode = OZChanElementOrFootageRef::getImageNode((this + 27512));
  if (ImageNode)
  {
    v10 = ImageNode;
    OZRenderParams::OZRenderParams(&v32);
    v32 = *&a3->value;
    epoch = a3->epoch;
    v36 = 0uLL;
    v33 = epoch;
    v30 = 1.0;
    v31 = 1.0;
    v29 = 0x3FF0000000000000;
    if (v12)
    {
      v13 = v12;
      *(v6 + 95) = (*(*v12 + 1328))(v12);
      if (OZChannel::getValueAsInt((this + 31936), MEMORY[0x277CC08F0], 0.0))
      {
        (*(*v13 + 1312))(v13, &v31, &v30, &v29, &v32, 0);
      }
    }

    v27[0] = 0;
    v27[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v28 = _Q0;
    (*(*v10 + 16))(v10, v27, &v32);
    v19 = *(&v28 + 1);
    *(v6 + 96) = v31 * *&v28 * *(v6 + 95);
    *(v6 + 97) = v30 * v19;
    if (a2 != 2 && (PSEmitter::needSourceBitmap(this, a3) & 1) != 0)
    {
      (*(*(this + 25) + 288))(&v26, this + 200);
      OZRenderParams::setWorkingColorDescription(&v32, &v26);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v26._pcColorDesc._colorSpaceRef._obj);
      v20 = (*(*(this + 25) + 296))(this + 200);
      OZRenderParams::setBlendingGamma(&v32, v20);
      v21 = PGGetPerThreadContext();
      OZRenderParams::setImageContext(&v32, v21);
      v22 = (*(*(this + 25) + 272))(this + 200);
      if (v22)
      {
        v23 = *(v22 + 1504);
        if (v23)
        {
          FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(v23);
          OZRenderParams::setImageType(&v32, 1);
          OZRenderParams::setWidth(&v32, *&v28);
          OZRenderParams::setHeight(&v32, *(&v28 + 1));
          v35 = 3;
          v36 = 0u;
          v37 = 0u;
          LiHelium::getDefaultGPU(v24, &v25);
          *&v26._pcColorDesc._colorSpaceRef._obj = v25;
          v25 = 0uLL;
          OZRenderParams::setRenderDevice(&v32, &v26);
          if (*&v26._pcColorDesc._dynamicRange)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v26._pcColorDesc._dynamicRange);
          }

          if (*(&v25 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
          }

          operator new();
        }

        operator new();
      }
    }

    OZRenderParams::~OZRenderParams(&v32);
  }
}

void sub_26029A08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x2666E9F00](v15, 0xC400A2AC0F1);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

double PCRandom::getRandTEAf(PCRandom *this, unsigned int a2, int a3)
{
  v3 = -32;
  v4 = -1640531527;
  do
  {
    LODWORD(this) = ((a3 + 16 * a2) ^ (v4 + a2) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (a2 >> 5))) + this;
    a2 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * this) ^ (v4 + this) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (this >> 5));
    v4 -= 1640531527;
  }

  while (!__CFADD__(v3++, 1));
  return (a2 ^ this) / 4294967300.0;
}

void PSEmitter::calcOrderIndexFromOrderFraction(PSEmitter *this, OZSimStateArray *a2, unsigned int a3)
{
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v5 = -1108378657 * ((*(a2 + 1) - *a2) >> 3) - a3;
  if (a3)
  {
    v6 = a3;
    v7 = -1108378657 * ((*(a2 + 1) - *a2) >> 3) - a3;
    do
    {
      std::__tree<double,LessThanDouble,std::allocator<double>>::__emplace_unique_key_args<double,double const&>(&v39, v8 + 21);
      ++v7;
      --v6;
    }

    while (v6);
    v9 = v39;
    __src = 0;
    v37 = 0;
    v38 = 0;
    if (v39 == v40)
    {
      LODWORD(v34) = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        if (v10 >= v38)
        {
          v11 = __src;
          v12 = v10 - __src;
          v13 = (v10 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v15 = v38 - __src;
          if ((v38 - __src) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v16);
          }

          v17 = v13;
          v18 = (8 * v13);
          v19 = &v18[-v17];
          *v18 = v9[4];
          v10 = (v18 + 1);
          memcpy(v19, v11, v12);
          v20 = __src;
          __src = v19;
          v37 = v10;
          v38 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = v9[4];
          v10 += 8;
        }

        v37 = v10;
        v21 = v9[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v9[2];
            v23 = *v22 == v9;
            v9 = v22;
          }

          while (!v23);
        }

        v9 = v22;
      }

      while (v22 != v40);
      v34 = (v10 - __src) >> 3;
    }

    v24 = this;
  }

  else
  {
    v24 = this;
    LODWORD(v34) = 0;
    __src = 0;
    v37 = 0;
    v38 = 0;
  }

  ValueAsInt = OZChannel::getValueAsInt((v24 + 23008), MEMORY[0x277CC08F0], 0.0);
  v26 = OZChannel::getValueAsInt((v24 + 31784), MEMORY[0x277CC08F0], 0.0);
  if (!a3)
  {
    v31 = __src;
    if (!__src)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v27 = v26;
  v28 = 0;
  do
  {
    v29 = *(*a2 + 248 * (v5 + v28) + 232);
    if (v29)
    {
    }

    else
    {
      v30 = 0;
    }

    v31 = __src;
    if (__src != v37)
    {
      v32 = 0;
      v33 = __src;
      while (vabdd_f64(*v33, v30[21]) >= 0.0000001)
      {
        ++v33;
        v32 = (v32 + 1);
        if (v33 == v37)
        {
          goto LABEL_41;
        }
      }

      if (ValueAsInt)
      {
        LODWORD(v32) = PSEmitter::shuffleOrder(this, v32, v34, v27);
        v31 = __src;
      }

      v30[22] = v32;
      v30[21] = *&v31[8 * v32];
    }

LABEL_41:
    ++v28;
  }

  while (v28 != a3);
  if (v31)
  {
LABEL_43:
    v37 = v31;
    operator delete(v31);
  }

LABEL_44:
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v39, v40[0]);
}

void sub_26029A528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

BOOL lessThanOrderingSimElem(const OZSimStateElement *a1, const void **a2)
{
  v3 = *(a1 + 29);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v6 = v4[22];
  v7 = v5[22];
  if (vabdd_f64(v6, v7) >= 0.0000001)
  {
    return v6 < v7;
  }

  v8 = v5;
  v9 = (*(*v4 + 32))(v4);
  return v9 < (*(*v8 + 32))(v8);
}

void PSEmitter::initPropertiesFromShape(uint64_t a1, int a2, CMTime *a3, uint64_t a4, uint64_t a5, float64x2_t *a6, uint64_t a7, _BYTE *a8)
{
  *a8 = 1;
  v278 = 0uLL;
  v279 = 1.0;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 19232), a3, 0.0);
  v13 = OZChannel::getValueAsInt((a1 + 19896), a3, 0.0);
  v257 = a2;
  if (ValueAsInt == 4)
  {
    EmitAtPoints = PSEmitter::getEmitAtPoints(a1);
    v15 = OZChannel::getValueAsInt((a1 + 31632), a3, 0.0) == 0;
    v16 = OZChannel::getValueAsInt((a1 + 20152), a3, 0.0);
    v260 = 0;
    if (!EmitAtPoints)
    {
      v17 = 1;
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  v18 = v13;
  v17 = ((ValueAsInt & 0xFFFFFFFB) == 2 || ValueAsInt == 5) && v13 == 0 || ValueAsInt == 10 && v13 == 0;
  v22 = PSEmitter::getEmitAtPoints(a1);
  v23 = OZChannel::getValueAsInt((a1 + 31632), a3, 0.0);
  v15 = v23 == 0;
  v24 = ValueAsInt - 9;
  v260 = ValueAsInt == 9;
  if (ValueAsInt <= 9 && ((1 << ValueAsInt) & 0x213) != 0)
  {
    v25 = 0.0;
    v16 = OZChannel::getValueAsInt((a1 + 20152), a3, 0.0);
    if (!ValueAsInt)
    {
LABEL_47:
      v41 = a6;
LABEL_48:
      PSEmitter::genOrderLinear(a1, v25, v17, v16, a3, (a5 + 168), (a5 + 176));
      OZChannel::getValueAsDouble((a1 + 23160), a3, 0.0);
      v44 = v25 + v42.n128_f64[0];
      if (v17)
      {
        __y.f64[0] = 0.0;
        modf(v44, __y.f64);
        v44 = v44 - __y.f64[0];
        if (v44 < 0.0)
        {
          v44 = v44 + 1.0;
        }
      }

      if (ValueAsInt > 4)
      {
        switch(ValueAsInt)
        {
          case 5:
            if (v257 == 2)
            {
              v45 = 0;
              v46 = 0;
            }

            else
            {
              v46 = OZChannel::getValueAsInt((a4 + 5368), a3, 0.0) == 4;
              v45 = 0;
              if (OZChannel::getValueAsInt((a1 + 27048), a3, 0.0))
              {
                OZChannel::getValueAsDouble((a1 + 27200), a3, 0.0);
                if (v42.n128_f64[0] > 0.0)
                {
                  v45 = 1;
                }
              }
            }

            v42.n128_f64[0] = v44;
            PSEmitter::initPropertiesFromImageOutline(a1, a3, v45, v46, a5, v41, a7, v42, v43);
            break;
          case 6:
            __y.f64[0] = 0.0;
            v274.f64[0] = 0.0;
            v277 = 0.0;
            OZChannelScale3D::getValue((a1 + 25392), a3, __y.f64, v274.f64, &v277, 0.0);
            v47.f64[0] = __y.f64[0];
            PSEmitter::genPosRect(v44, v47, v274.f64[0], v48, v49, v41, a7);
            break;
          case 9:
            PSEmitter::genPosWave(a1, a3, v41, a7, &v278, v44);
            break;
        }
      }

      else
      {
        switch(ValueAsInt)
        {
          case 1:
            PSEmitter::genPosLine(a1, a3, v41, a7, v44);
            break;
          case 2:
            PSEmitter::genPosCircle(a1, a3, v41, a7, v44);
            break;
          case 4:
            PSEmitter::genPosGeometry(a1, a3, v41, v44);
            break;
        }
      }

      goto LABEL_70;
    }

    if (v22)
    {
LABEL_22:
      if (!v17)
      {
        v26 = v16 - 1;
        if (v16 != 1)
        {
LABEL_24:
          if (v15 || (*(*a5 + 32))(a5) >= v16)
          {
            v29 = 923990407;
            v30 = (*(*a5 + 32))(a5);
            v31 = (*(*a1 + 600))(a1, a4);
            v32 = -32;
            v33 = -1640531527;
            do
            {
              v30 += (v31 + 16 * v29) ^ (v33 + v29) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v29 >> 5));
              v29 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v30) ^ (v33 + v30) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v30 >> 5));
              v33 -= 1640531527;
              v34 = __CFADD__(v32++, 1);
            }

            while (!v34);
            v27 = floor((v29 ^ v30) / 4294967300.0 * v16 + 0.0000001);
            v28 = v26;
          }

          else
          {
            v27 = (*(*a5 + 32))(a5);
            v28 = v26;
          }

          v25 = v27 / v28;
          goto LABEL_47;
        }

        goto LABEL_46;
      }

LABEL_23:
      v17 = 1;
      v26 = v16;
      if (v16)
      {
        goto LABEL_24;
      }

LABEL_46:
      v25 = 0.5;
      goto LABEL_47;
    }

LABEL_41:
    v36 = 923990407;
    v37 = (*(*a5 + 32))(a5);
    v38 = (*(*a1 + 600))(a1, a4);
    v39 = -32;
    v40 = -1640531527;
    v41 = a6;
    do
    {
      v37 += (v38 + 16 * v36) ^ (v40 + v36) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v36 >> 5));
      v36 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v37) ^ (v40 + v37) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v37 >> 5));
      v40 -= 1640531527;
      v34 = __CFADD__(v39++, 1);
    }

    while (!v34);
    v25 = (v36 ^ v37) / 4294967300.0;
    goto LABEL_48;
  }

  if (ValueAsInt == 6 && !v18 || (ValueAsInt != 5 ? (v35 = ValueAsInt == 2) : (v35 = 1), v35 && !v18))
  {
    v16 = OZChannel::getValueAsInt((a1 + 20152), a3, 0.0);
    if (v22)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  if ((ValueAsInt & 0xFFFFFFFE) != 0xA || (v18 - 1) > 1)
  {
    v41 = a6;
    if (ValueAsInt == 11 && !v18)
    {
      if (!v22)
      {
        v134 = (*(*a5 + 32))(a5);
        v135 = (*(*a1 + 600))(a1, a4);
        RandTEAf = PCRandom::getRandTEAf(v134, 0x3712F987u, v135);
        v137 = (*(*a5 + 32))(a5);
        v138 = (*(*a1 + 600))(a1, a4);
        v139 = PCRandom::getRandTEAf(v137, 0x83820093, v138);
        v140 = (*(*a5 + 32))(a5);
        v141 = (*(*a1 + 600))(a1, a4);
        v142 = PCRandom::getRandTEAf(v140, 0x39002838u, v141);
        __y.f64[0] = 0.0;
        v274.f64[0] = 0.0;
        v277 = 0.0;
        OZChannelScale3D::getValue((a1 + 25392), a3, __y.f64, v274.f64, &v277, 0.0);
        v143 = (v274.f64[0] + v274.f64[0]) * v277;
        v144 = v277 * (__y.f64[0] + __y.f64[0]);
        v145 = v274.f64[0] * (__y.f64[0] + __y.f64[0]);
        v146 = v143 + v144;
        v147 = RandTEAf * (v145 + v143 + v144);
        v148 = v147 < v144 + v143 + v145 * 0.5;
        v149 = 1.0;
        if (v148)
        {
          v150 = 0.0;
        }

        else
        {
          v150 = 1.0;
        }

        if (v147 >= v143 + v144 * 0.5)
        {
          v151 = 1.0;
        }

        else
        {
          v151 = 0.0;
        }

        if (v147 < v146)
        {
          v152 = v142;
        }

        else
        {
          v151 = v142;
          v152 = v150;
        }

        if (v147 < v143 * 0.5)
        {
          v149 = 0.0;
        }

        if (v147 < v143)
        {
          v153 = v149;
        }

        else
        {
          v153 = v139;
        }

        if (v147 >= v143)
        {
          v139 = v151;
          v142 = v152;
        }

        PSEmitter::genPosFilledBox(a1, a3, a6, a7, &v278, v153, v139, v142);
        PSEmitter::genOrderFilledBox(a1, v153, v139, v142, 1, 1, 1, a3, (a5 + 168), (a5 + 176));
        if (*(a5 + 176) < 0.0)
        {
          *a8 = 0;
        }

        goto LABEL_278;
      }

      v97 = OZChannel::getValueAsInt((a1 + 20304), a3, 0.0);
      v98 = OZChannel::getValueAsInt((a1 + 20456), a3, 0.0);
      v99 = OZChannel::getValueAsInt((a1 + 20608), a3, 0.0);
      if (v97 <= 1)
      {
        v100 = 1;
      }

      else
      {
        v100 = v97;
      }

      v101 = v100 - 1;
      if (v98 <= 1)
      {
        v102 = 1;
      }

      else
      {
        v102 = v98;
      }

      v103 = v102 - 1;
      if (v99 <= 1)
      {
        v104 = 1;
      }

      else
      {
        v104 = v99;
      }

      v258 = v104 - 1;
      v261 = v103;
      if (v97 <= 2)
      {
        v105 = 2;
      }

      else
      {
        v105 = v97;
      }

      v252 = v98 - 2;
      v106 = v99 - 2;
      v107 = ((v98 - 2) & ~((v98 - 2) >> 31)) * (v105 - 2);
      v108 = v98 * v97;
      v109 = v108 * v99 - v107 * (v106 & ~(v106 >> 31));
      v110 = (*(*a5 + 32))(a5);
      if (!v23 || v110 >= v109)
      {
        v111 = (*(*a5 + 32))(a5);
        v112 = (*(*a1 + 600))(a1, a4);
        v113 = (PCRandom::getRandTEAf(v111, 0x3712F987u, v112) * v109);
        if (v109 <= v113)
        {
          v110 = 0;
        }

        else
        {
          v110 = v113;
        }
      }

      v114 = v101;
      v115 = v261;
      if (v110 >= 2 * v108)
      {
        v181 = v258;
        v182 = v106 * v97;
        v183 = (v182 & ~(v182 >> 31)) + v108;
        if (v110 >= 2 * v183)
        {
          v205 = v110 - 2 * v183;
          v206 = v106 * v252;
          v116 = 0.5;
          v118 = 0.5;
          if (v258)
          {
            v118 = (v205 % v106 + 1) / v181;
          }

          v207 = v206 & ~(v206 >> 31);
          v41 = a6;
          if (v261)
          {
            if (v206 <= 1)
            {
              v206 = 1;
            }

            v116 = (v205 % v206 / v106 + 1) / v115;
          }

          if (v205 >= v207)
          {
            v117 = 1.0;
          }

          else
          {
            v117 = 0.0;
          }
        }

        else
        {
          v184 = v110 - 2 * v108;
          v118 = 0.5;
          v117 = 0.5;
          if (v101)
          {
            v117 = (v184 % v97) / v114;
          }

          if (v258)
          {
            if (v182 <= 1)
            {
              v185 = 1;
            }

            else
            {
              v185 = v106 * v97;
            }

            v118 = (v184 % v185 / v97 + 1) / v181;
          }

          v41 = a6;
          if (v261)
          {
            if (v182 <= 1)
            {
              v182 = 1;
            }

            v116 = (v184 / v182);
          }

          else
          {
            v116 = 0.5;
          }
        }
      }

      else
      {
        v116 = 0.5;
        v117 = 0.5;
        if (v101)
        {
          v117 = (v110 % v97) / v114;
        }

        if (v261)
        {
          v116 = (v110 % v108 / v97) / v115;
        }

        v41 = a6;
        if (v258)
        {
          v118 = (v110 / v108);
        }

        else
        {
          v118 = 0.5;
        }
      }

      PSEmitter::genPosFilledBox(a1, a3, v41, a7, &v278, v117, v116, v118);
      PSEmitter::genOrderFilledBox(a1, v117, v116, v118, 1, 1, 1, a3, (a5 + 168), (a5 + 176));
      v260 = 0;
      *a8 = 0;
      goto LABEL_70;
    }

    v253 = (*(*a5 + 32))(a5);
    v119 = (*(*a1 + 600))(a1, a4);
    v120 = PCRandom::getRandTEAf(v253, 0x3712F987u, v119);
    v254 = (*(*a5 + 32))(a5);
    v121 = (*(*a1 + 600))(a1, a4);
    v122 = PCRandom::getRandTEAf(v254, 0x83820093, v121);
    if (!v22)
    {
      v127 = v122;
      v133 = 0.0;
      v128 = 1;
      v130 = 1;
      goto LABEL_222;
    }

    v123 = 26136;
    if (v24 >= 0xFFFFFFFE)
    {
      v124 = 25984;
    }

    else
    {
      v123 = 20304;
      v124 = 20456;
    }

    v125 = OZChannel::getValueAsInt((a1 + v123), a3, 0.0);
    v126 = OZChannel::getValueAsInt((a1 + v124), a3, 0.0);
    v247 = v126 * v125;
    v250 = v126;
    v255 = v125;
    v246 = v125 - 1;
    if (!v17)
    {
      --v125;
    }

    v127 = 0.5;
    v120 = 0.5;
    if (v125 >= 1)
    {
      if (v23 && (*(*a5 + 32))(a5) < v247)
      {
        v128 = v255;
        v120 = ((*(*a5 + 32))(a5) % v255) / v125;
        v129 = (__PAIR64__(v250, v24) - 4294967294u) >> 32;
        v130 = v250;
        if (v129 < 1)
        {
          v41 = a6;
LABEL_213:
          v133 = 0.0;
          if (ValueAsInt <= 6 && ((1 << ValueAsInt) & 0x64) != 0)
          {
            v193 = OZChannel::getValueAsInt((a1 + 19896), a3, 0.0);
            if (v128 >= 2 && v193 == 1)
            {
              OZChannel::getValueAsDouble((a1 + 21064), a3, 0.0);
              v195 = v127 * v129 * v194;
              __y.f64[0] = 0.0;
              modf(v195, __y.f64);
              v196 = v195 - __y.f64[0];
              isOrderByRowOrCol = PSEmitter::isOrderByRowOrCol(a1);
              v198 = v196 / v246;
              v133 = isOrderByRowOrCol ? v196 / v246 : 0.0;
              if (!isOrderByRowOrCol)
              {
                v120 = v120 + v198;
              }
            }
          }

LABEL_222:
          if (ValueAsInt > 6)
          {
            switch(ValueAsInt)
            {
              case 7:
                PSEmitter::genOrderRadial(a1, v120, v128, a3, (a5 + 168), (a5 + 176));
                OZChannel::getValueAsDouble((a1 + 23160), a3, 0.0);
                PSEmitter::genPosRadial(a1, a3, v41, a7, v120 + v201, v127);
                break;
              case 8:
                PSEmitter::genOrderRadial(a1, v120, v128, a3, (a5 + 168), (a5 + 176));
                OZChannel::getValueAsDouble((a1 + 23160), a3, 0.0);
                PSEmitter::genPosSpiral(a1, a3, v41, a7, v120 + v204, v127);
                break;
              case 10:
                PSEmitter::genPosSurfaceSphere(a1, a3, v41, a7, &v278, v120, v127);
                PSEmitter::genOrderLinear(a1, v120, v17, v128, a3, (a5 + 168), (a5 + 176));
                break;
              default:
                goto LABEL_70;
            }

            goto LABEL_278;
          }

          if (ValueAsInt == 2)
          {
            __y = *v41;
            v267 = *(v41 + 16);
            v199 = PSEmitter::genPosFilledCircle(a1, a3, &__y, a7, v120, v127);
            if (!v22)
            {
              v200 = (*(*a1 + 584))(a1);
              if ((v200 | v199))
              {
                LOBYTE(v199) = v199 | v200 ^ 1;
              }

              else
              {
                v231 = 1;
                do
                {
                  v232 = (*(*a5 + 32))(a5);
                  v233 = v231 + 923990407;
                  v234 = (*(*a1 + 600))(a1, a4);
                  v235 = -32;
                  v236 = -1640531527;
                  do
                  {
                    v232 += (v234 + 16 * v233) ^ (v236 + v233) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v233 >> 5));
                    v233 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v232) ^ (v236 + v232) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v232 >> 5));
                    v236 -= 1640531527;
                    v34 = __CFADD__(v235++, 1);
                  }

                  while (!v34);
                  v237 = (v233 ^ v232);
                  v238 = (*(*a5 + 32))(a5);
                  v239 = v231 - 2088632173;
                  v240 = (*(*a1 + 600))(a1, a4);
                  v241 = -32;
                  v242 = -1640531527;
                  do
                  {
                    v238 += (v240 + 16 * v239) ^ (v242 + v239) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v239 >> 5));
                    v239 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v238) ^ (v242 + v238) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v238 >> 5));
                    v242 -= 1640531527;
                    v34 = __CFADD__(v241++, 1);
                  }

                  while (!v34);
                  v120 = v237 / 4294967300.0;
                  __y = *a6;
                  v267 = a6[1].f64[0];
                  v127 = (v239 ^ v238) / 4294967300.0;
                  v243 = PSEmitter::genPosFilledCircle(a1, a3, &__y, a7, v120, v127);
                  if (v243)
                  {
                    break;
                  }

                  v34 = v231++ >= 0x13;
                }

                while (!v34);
                if (v243)
                {
                  LOBYTE(v199) = 1;
                }

                else
                {
                  fwrite("kMaxCirlceAttempts reached\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
                  LOBYTE(v199) = 0;
                }

                v41 = a6;
              }
            }

            v244.f64[1] = __y.f64[1];
            *v41 = __y;
            *(v41 + 16) = v267;
            v244.f64[0] = v120;
            PSEmitter::genOrderFilledCircle(a1, v244, v127, 0.5, a3, (a5 + 168), (a5 + 176));
            if (*(a5 + 176) < 0.0)
            {
              *a8 = 0;
            }

            if ((v199 & 1) == 0)
            {
              v260 = 0;
              v245 = MEMORY[0x277CC08F0];
              *(a5 + 32) = *MEMORY[0x277CC08F0];
              *(a5 + 48) = *(v245 + 16);
              goto LABEL_70;
            }

            goto LABEL_278;
          }

          if (ValueAsInt != 5)
          {
            if (ValueAsInt != 6)
            {
              goto LABEL_70;
            }

            PSEmitter::genOrderFilledRect(a1, v120, v127, v128, v130, a3, (a5 + 168), (a5 + 176));
            if (*(a5 + 176) < 0.0)
            {
              *a8 = 0;
            }

            PSEmitter::genPosFilledRect(a1, a3, v41, v133 + v120, v127);
LABEL_278:
            v260 = 0;
            goto LABEL_70;
          }

          PSEmitter::genOrderFilledRect(a1, v120, v127, v128, v130, a3, (a5 + 168), (a5 + 176));
          if (*(a5 + 176) < 0.0)
          {
            *a8 = 0;
          }

          v202 = v133 + v120;
          if (v257 == 2)
          {
            v203 = 0;
          }

          else
          {
            v203 = OZChannel::getValueAsInt((a4 + 5368), a3, 0.0) == 4;
            if (OZChannel::getValueAsInt((a1 + 27048), a3, 0.0))
            {
              OZChannel::getValueAsDouble((a1 + 27200), a3, 0.0);
              if (v227 > 0.0)
              {
                v228 = 1;
LABEL_271:
                PSEmitter::initPropertiesFromImage(a1, v202, v127, a3, v228, v203, a5, v41);
                goto LABEL_278;
              }
            }
          }

          v228 = 0;
          goto LABEL_271;
        }

        v41 = a6;
        goto LABEL_206;
      }

      v186 = (*(*a5 + 32))(a5);
      v187 = (*(*a1 + 600))(a1, a4);
      v188 = PCRandom::getRandTEAf(v186, 0x3712F987u, v187);
      if (vabdd_f64(1.0, v188) < 0.0000001)
      {
        v188 = 0.0;
      }

      v120 = floor(v188 * v255 + 0.0000001) / v125;
    }

    v189 = v24 < 0xFFFFFFFE;
    v130 = v250;
    v129 = v250 - v189;
    if (v250 - v189 < 1)
    {
      v41 = a6;
LABEL_212:
      v128 = v255;
      goto LABEL_213;
    }

    v41 = a6;
    if (!v23)
    {
LABEL_208:
      v190 = (*(*a5 + 32))(a5);
      v191 = (*(*a1 + 600))(a1, a4);
      v192 = PCRandom::getRandTEAf(v190, 0x83820093, v191);
      if (vabdd_f64(1.0, v192) < 0.0000001)
      {
        v192 = 0.0;
      }

      v127 = floor(v192 * v130 + 0.0000001) / v129;
      goto LABEL_212;
    }

LABEL_206:
    if ((*(*a5 + 32))(a5) < v247)
    {
      v128 = v255;
      v127 = ((*(*a5 + 32))(a5) / v255) / v129;
      goto LABEL_213;
    }

    goto LABEL_208;
  }

  v82 = (*(*a5 + 32))(a5);
  v83 = (*(*a1 + 600))(a1, a4);
  v84 = PCRandom::getRandTEAf(v82, 0x3712F987u, v83);
  v85 = (*(*a5 + 32))(a5);
  v86 = (*(*a1 + 600))(a1, a4);
  v87 = PCRandom::getRandTEAf(v85, 0x83820093, v86);
  v88 = (*(*a5 + 32))(a5);
  v89 = (*(*a1 + 600))(a1, a4);
  v90 = PCRandom::getRandTEAf(v88, 0x39002838u, v89);
  v91 = v18 != 2 && v22;
  if (v18 == 1 || v18 != 2 && v22)
  {
    v96 = OZChannel::getValueAsInt((a1 + 20304), a3, 0.0);
    v95 = OZChannel::getValueAsInt((a1 + 20456), a3, 0.0);
    v93 = OZChannel::getValueAsInt((a1 + 20608), a3, 0.0);
    v251 = v95 * v96;
    v256 = v95 * v96 * v93;
    v259 = v91;
    v131 = v96 - 1;
    v87 = 0.5;
    v84 = 0.5;
    if (v96 >= 2)
    {
      if (v23 && (*(*a5 + 32))(a5) < v256)
      {
        v84 = ((*(*a5 + 32))(a5) % v96) / v131;
        if (v95 >= 2)
        {
          v248 = v93;
          v132 = v95 - 1;
LABEL_159:
          if ((*(*a5 + 32))(a5) < v256)
          {
            v161 = ((*(*a5 + 32))(a5) % v251 / v96);
            v162 = v132;
LABEL_164:
            v87 = v161 / v162;
            v93 = v248;
            goto LABEL_165;
          }

LABEL_161:
          v163 = v95;
          v164 = v131;
          v165 = (*(*a5 + 32))(a5);
          v166 = (*(*a1 + 600))(a1, a4);
          v167 = v165;
          v131 = v164;
          v95 = v163;
          v168 = PCRandom::getRandTEAf(v167, 0x83820093, v166);
          if (vabdd_f64(1.0, v168) < 0.0000001)
          {
            v168 = 0.0;
          }

          v161 = floor(v168 * v163 + 0.0000001);
          v162 = v132;
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      v249 = v96;
      v154 = v93;
      v155 = v95;
      v156 = v131;
      v157 = (*(*a5 + 32))(a5);
      v158 = (*(*a1 + 600))(a1, a4);
      v159 = v157;
      v131 = v156;
      v95 = v155;
      v93 = v154;
      v96 = v249;
      v160 = PCRandom::getRandTEAf(v159, 0x3712F987u, v158);
      if (vabdd_f64(1.0, v160) < 0.0000001)
      {
        v160 = 0.0;
      }

      v84 = floor(v160 * v249 + 0.0000001) / v131;
    }

    if (v95 >= 2)
    {
      v248 = v93;
      v132 = v95 - 1;
      if (!v23)
      {
        goto LABEL_161;
      }

      goto LABEL_159;
    }

LABEL_165:
    v169 = v93 - 1;
    v92 = 0.5;
    if (v93 >= 2)
    {
      if (v23 && (*(*a5 + 32))(a5) < v256)
      {
        v170 = ((*(*a5 + 32))(a5) / v251);
        v171 = v169;
      }

      else
      {
        v172 = (*(*a5 + 32))(a5);
        v173 = (*(*a1 + 600))(a1, a4);
        v174 = PCRandom::getRandTEAf(v172, 0x39002838u, v173);
        if (vabdd_f64(1.0, v174) < 0.0000001)
        {
          v174 = 0.0;
        }

        v170 = floor(v174 * v93 + 0.0000001);
        v171 = v169;
      }

      v92 = v170 / v171;
    }

    v94 = 0.0;
    if (OZChannel::getValueAsInt((a1 + 19896), a3, 0.0) == 1 && v96 >= 2)
    {
      OZChannel::getValueAsDouble((a1 + 21064), a3, 0.0);
      v176 = v87 * v169 * v175;
      __y.f64[0] = 0.0;
      modf(v176, __y.f64);
      v177 = v176 - __y.f64[0];
      isOrderByRowColStack = PSEmitter::isOrderByRowColStack(a1);
      v179 = v177 / v131;
      v94 = isOrderByRowColStack ? v177 / v131 : 0.0;
      if (!isOrderByRowColStack)
      {
        v84 = v84 + v179;
      }
    }

    v91 = v259;
    goto LABEL_181;
  }

  v92 = v90;
  v93 = 1;
  v94 = 0.0;
  v95 = 1;
  v96 = 1;
LABEL_181:
  if (ValueAsInt == 10)
  {
    v41 = a6;
    __y = *a6;
    v267 = a6[1].f64[0];
    v180 = PSEmitter::genPosFilledSphere(a1, a3, &__y, &v274, v84, v87, v92);
    if (!v91 && ((*(*a1 + 584))(a1) & 1) == 0)
    {
      if (v180)
      {
        v180 = 1;
      }

      else
      {
        v208 = 1;
        do
        {
          v209 = (*(*a5 + 32))(a5);
          v210 = v208 + 923990407;
          v211 = (*(*a1 + 600))(a1, a4);
          v212 = -32;
          v213 = -1640531527;
          do
          {
            v209 += (v211 + 16 * v210) ^ (v213 + v210) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v210 >> 5));
            v210 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v209) ^ (v213 + v209) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v209 >> 5));
            v213 -= 1640531527;
            v34 = __CFADD__(v212++, 1);
          }

          while (!v34);
          v214 = (v210 ^ v209);
          v215 = (*(*a5 + 32))(a5);
          v216 = v208 - 2088632173;
          v217 = (*(*a1 + 600))(a1, a4);
          v218 = -32;
          v219 = -1640531527;
          do
          {
            v215 += (v217 + 16 * v216) ^ (v219 + v216) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v216 >> 5));
            v216 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v215) ^ (v219 + v215) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v215 >> 5));
            v219 -= 1640531527;
            v34 = __CFADD__(v218++, 1);
          }

          while (!v34);
          v220 = (v216 ^ v215);
          v221 = (*(*a5 + 32))(a5);
          v222 = v208 + 956311608;
          v223 = (*(*a1 + 600))(a1, a4);
          v224 = -32;
          v225 = -1640531527;
          do
          {
            v221 += (v223 + 16 * v222) ^ (v225 + v222) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v222 >> 5));
            v222 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v221) ^ (v225 + v221) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v221 >> 5));
            v225 -= 1640531527;
            v34 = __CFADD__(v224++, 1);
          }

          while (!v34);
          v84 = v214 / 4294967300.0;
          v87 = v220 / 4294967300.0;
          __y = *a6;
          v267 = a6[1].f64[0];
          v92 = (v222 ^ v221) / 4294967300.0;
          v226 = PSEmitter::genPosFilledSphere(a1, a3, &__y, &v274, v84, v87, v92);
          if (v226)
          {
            break;
          }

          v34 = v208++ >= 0x13;
        }

        while (!v34);
        if (v226)
        {
          v180 = 1;
        }

        else
        {
          fwrite("kMaxCirlceAttempts reached\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
          v180 = 0;
        }

        v41 = a6;
      }
    }

    v229.f64[1] = __y.f64[1];
    *v41 = __y;
    *(v41 + 16) = v267;
    v229.f64[0] = v84;
    PSEmitter::genOrderFilledCircle(a1, v229, v87, v92, a3, (a5 + 168), (a5 + 176));
    if (*(a5 + 176) < 0.0)
    {
      *a8 = 0;
    }

    if (!v180)
    {
      v230 = MEMORY[0x277CC08F0];
      *(a5 + 32) = *MEMORY[0x277CC08F0];
      *(a5 + 48) = *(v230 + 16);
    }

    goto LABEL_278;
  }

  PSEmitter::genOrderFilledBox(a1, v84, v87, v92, v96, v95, v93, a3, (a5 + 168), (a5 + 176));
  if (*(a5 + 176) < 0.0)
  {
    *a8 = 0;
  }

  v41 = a6;
  PSEmitter::genPosFilledBox(a1, a3, a6, 0, 0, v94 + v84, v87, v92);
LABEL_70:
  if (OZChannel::getValueAsInt((a1 + 23008), a3, 0.0) && *a8 == 1)
  {
    OrderLength = PSEmitter::getOrderLength(a1, a3);
    v51 = (*(a5 + 168) * OrderLength + 0.00001);
    v52 = OrderLength - 1;
    if (OrderLength - 1 >= v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = v52;
    }

    v54 = OZChannel::getValueAsInt((a1 + 31784), MEMORY[0x277CC08F0], 0.0);
    v55 = PSEmitter::shuffleOrder(a1, v53, OrderLength, v54);
    *(a5 + 168) = v55 / v52;
    *(a5 + 176) = v55;
  }

  if (PSEmitter::canAlignRotation(a1, a3) && OZChannel::getValueAsInt((a4 + 2184), a3, 0.0))
  {
    v274 = 0x3FF0000000000000uLL;
    v275 = 0.0;
    sinval = 0.0;
    if ((ValueAsInt & 0xFFFFFFFE) == 0xA)
    {
      v60 = *(a7 + 8);
      v56.i64[0] = *(a7 + 16);
      v61 = *a7;
      *v58.i64 = v278.f64[1] * *v56.i64 - v279 * v60;
      v62 = v279 * *a7 - *v56.i64 * v278.f64[0];
      v63 = v60 * v278.f64[0] - v278.f64[1] * *a7;
      v64 = -v278.f64[0];
      *v57.i64 = -v278.f64[1];
      *v59.i64 = -v279;
      __y.f64[0] = -v278.f64[0];
      __y.f64[1] = *v58.i64;
      v271 = -v279;
      v272 = v63;
      v267 = v61;
      v268 = -v278.f64[1];
      v269 = v62;
      v270 = v60;
      v273 = *v56.i64;
    }

    else
    {
      if (!v260)
      {
        v69 = atan2(*a7, -*(a7 + 8));
        v70 = __sincos_stret(v69 * 0.5);
        v274.f64[0] = v70.__cosval;
        v274.f64[1] = v70.__sinval * 0.0;
        v275 = v70.__sinval * 0.0;
        sinval = v70.__sinval;
LABEL_84:
        if (&v274 != (v41 + 24))
        {
          v71 = *(v41 + 24);
          v72 = *(v41 + 32);
          v73 = *(v41 + 40);
          v74 = *(v41 + 48);
          v75 = v71 * v274.f64[0] - (v72 * v274.f64[1] + v73 * v275 + v74 * sinval);
          v76 = v274.f64[0] * v72 + v71 * v274.f64[1];
          v77 = v274.f64[0] * v73 + v71 * v275;
          v78 = v274.f64[0] * v74 + v71 * sinval;
          v79 = v73 * sinval - v275 * v74;
          v80 = v274.f64[1] * v74 - v72 * sinval;
          v81 = v72 * v275 - v274.f64[1] * v73;
          *(v41 + 40) = v77 + v80;
          *(v41 + 48) = v81 + v78;
          *(v41 + 24) = v75;
          *(v41 + 32) = v76 + v79;
        }

        return;
      }

      v65 = *(a7 + 8);
      v56.i64[0] = *(a7 + 16);
      v57.i64[0] = *&v278.f64[1];
      v64 = v278.f64[0];
      *v59.i64 = v279;
      v66 = *a7;
      *v58.i64 = -(v278.f64[1] * *v56.i64 - v279 * v65);
      v67 = -(v279 * *a7 - *v56.i64 * v278.f64[0]);
      v68 = -(v65 * v278.f64[0] - v278.f64[1] * *a7);
      __y.f64[0] = *v58.i64;
      __y.f64[1] = v66;
      v271 = v68;
      v272 = *v56.i64;
      v267 = v278.f64[0];
      v268 = v67;
      v269 = v65;
      v270 = v278.f64[1];
      v273 = v279;
    }

    PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(&__y, &v274, v56, v57, v64, v58, v59);
    goto LABEL_84;
  }
}