void *PadHostService::PadHostServiceAlgsDevice::PadHostServiceAlgsDevice(uint64_t a1, char a2, int a3, char a4, const char *a5)
{
  result = AlgsDevice::AlgsDevice(a1, a2, "PadHostServiceDefaultPersonality", a3, a4, a5, 1);
  *result = &unk_2876EE850;
  return result;
}

AlgWorkNode *TouchService::InterpolationStep::InterpolationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v16 = &unk_2876EE8B0;
  *(v16 + 10) = a2;
  *(v16 + 11) = a3;
  *(v16 + 12) = a4;
  *(v16 + 13) = a5;
  *(v16 + 14) = a6;
  *(v16 + 15) = a7;
  *(v16 + 16) = a8;
  *(v16 + 19) = 0;
  *(v16 + 20) = 0;
  *(v16 + 18) = 0;
  TouchService::InterpolationStep::runNodeRegistrations(v16);
  *(a1 + 17) = operator new(8 * *(*(a1 + 14) + 40));
  if (*(*(a1 + 14) + 40))
  {
    v17 = 0;
    do
    {
      v18 = operator new(0x58uLL);
      v19 = 0;
      *v18 = *(a1 + 13) + 28;
      do
      {
        v20 = &v18[v19];
        v20[16] = 0;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 4) = 0;
        v19 += 6;
      }

      while (v19 != 18);
      v18[2] = 0;
      *(v18 + 16) = 0;
      *(v18 + 40) = 0;
      *(v18 + 64) = 0;
      *(*(a1 + 17) + 8 * v17++) = v18;
    }

    while (v17 < *(*(a1 + 14) + 40));
  }

  return a1;
}

{
  return TouchService::InterpolationStep::InterpolationStep(a1, a2, a3, a4, a5, a6, a7, a8);
}

void *TouchService::InterpolationStep::runNodeRegistrations(TouchService::InterpolationStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  v2 = *(this + 16);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

void AlgWorkNode::~AlgWorkNode(AlgWorkNode *this)
{
  *this = &unk_2876F3948;
  if (*(this + 5))
  {
    *(this + 5) = 0;
  }

  if (*(this + 9))
  {
    *(this + 9) = 0;
  }

  if (*(this + 13))
  {
    *(this + 13) = 0;
  }

  if (*(this + 17))
  {
    *(this + 17) = 0;
  }

  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x266758580](v3, 0x1000C8077774924);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x266758580](v4, 0x1000C8077774924);
  }

  v5 = *(this + 1);
  if (v5)
  {
    MEMORY[0x266758580](v5, 0x1000C8077774924);
  }
}

void TouchService::InterpolationStep::~InterpolationStep(TouchService::InterpolationStep *this)
{
  *this = &unk_2876EE8B0;
  v2 = *(this + 14);
  if (*(v2 + 40))
  {
    v3 = 0;
    do
    {
      v4 = *(*(this + 17) + 8 * v3);
      if (v4)
      {
        MEMORY[0x266758590](v4, 0x1060C401C0A2C60);
        v2 = *(this + 14);
      }

      ++v3;
    }

    while (v3 < *(v2 + 40));
  }

  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x266758580](v5, 0x20C8093837F09);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::InterpolationStep::~InterpolationStep(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::InterpolationStep::run(TouchService::InterpolationStep *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 13);
  if (*(v2 + 28) == 1)
  {
    v3 = (*(v2 + 32) + 1000000) / (2 * *(v2 + 32));
    v5 = (this + 144);
    v4 = *(this + 18);
    v7 = *(this + 10);
    v6 = *(this + 11);
    *(v6 + 8) = *(v7 + 2);
    v8 = *v7;
    if (*v7 - v4 <= 3 * v3)
    {
      v9 = (v4 + v8) >> 1;
      v10 = (*(this + 20) + v7[2]) >> 1;
    }

    else
    {
      v9 = v8 - v3;
      v10 = v7[2] - v3;
    }

    *v6 = v9;
    *(v6 + 16) = v10;
    TouchService::TouchServiceEventCollection::setNumEvents(*(this + 16), 0);
    if ((*(**(this + 14) + 40))(*(this + 14)))
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = ((*(*(*(this + 14) + 32) + 8))() + 48 * v13);
        v15 = *v14;
        if (!*v14 || v15 >= *(*(this + 14) + 40))
        {
          break;
        }

        PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 15), v15);
        v17 = (v12 + 1);
        TouchService::TouchServiceEventCollection::setNumEvents(*(this + 16), v12 + 1);
        v18 = (*(*(*(this + 16) + 32) + 8))() + 48 * v12;
        v20 = *(v14 + 1);
        v19 = *(v14 + 2);
        *v18 = *v14;
        *(v18 + 16) = v20;
        *(v18 + 32) = v19;
        if (PathWithId && *(PathWithId + 1) - 3 >= 2 && v14[1] - 3 <= 1)
        {
          *(v18 + 1) = 2;
        }

        v21 = *(*(this + 17) + 8 * *v14);
        if (v14[1] - 1 >= 6)
        {
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *(v21 + 40) = 0;
          *(v21 + 64) = 0;
        }

        else
        {
          v37 = 0;
          v22 = 25400.0 / *(*(this + 12) + 28);
          TouchService::PathInterpolator::update(v21, **(this + 10), v14);
          if (TouchService::PathInterpolator::interpolateAt(v21, **(this + 11), &v37 + 1, &v37, v22))
          {
            *(v18 + 4) = HIDWORD(v37);
            *(v18 + 8) = v37;
            *v18 = *v14;
            v23 = SALoggingGeneral();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = *v14;
              v25 = v14[2];
              v26 = v14[1];
              v27 = *(v14 + 1);
              v28 = *(v14 + 2);
              v29 = *(v18 + 4);
              v30 = *(v18 + 8);
              *buf = 67110657;
              v39 = v24;
              v40 = 1024;
              v41 = v25;
              v42 = 1024;
              v43 = v26;
              v44 = 2053;
              v45 = v27;
              v46 = 2053;
              v47 = v28;
              v48 = 2053;
              v49 = v29;
              v50 = 2053;
              v51 = v30;
              _os_log_debug_impl(&dword_2653C2000, v23, OS_LOG_TYPE_DEBUG, "InterpolationStep:  P%d -> F%d stage=%d path=(%{sensitive}.3f,%{sensitive}.3f) interp=(%{sensitive}.3f,%{sensitive}.3f)\n", buf, 0x3Cu);
            }
          }

          else
          {
            TouchService::TouchServiceEventCollection::setNumEvents(*(this + 16), v12);
            v17 = v12;
          }
        }

        ++v13;
        v12 = v17;
        if ((*(**(this + 14) + 40))(*(this + 14)) <= v13)
        {
          goto LABEL_21;
        }
      }

      result = 1;
    }

    else
    {
LABEL_21:
      v31 = *(this + 14);
      if (v31[40] >= 2u)
      {
        v32 = 1;
        do
        {
          if (!TouchService::PlainPathCollection::getPathWithId(v31, v32))
          {
            v33 = *(*(this + 17) + 8 * v32);
            *(v33 + 8) = 0;
            *(v33 + 16) = 0;
            *(v33 + 40) = 0;
            *(v33 + 64) = 0;
          }

          ++v32;
          v31 = *(this + 14);
        }

        while (v32 < v31[40]);
      }

      result = 0;
      v34 = *(this + 10);
      v35 = *(v34 + 16);
      *v5 = *v34;
      *(this + 20) = v35;
    }
  }

  else
  {
    TouchService::TouchServiceEventCollection::setNumEvents(*(this + 16), 0);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TouchService::PathInterpolator::update(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 && *(result + 32) >= a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 40) = 0;
    *(result + 64) = 0;
  }

  else
  {
    v4 = *(a3 + 1) - 3 < 2;
    v5 = *(a3 + 4);
    *(result + 64) = *(result + 40);
    *(result + 80) = *(result + 56);
    *(result + 40) = *(result + 16);
    *(result + 56) = *(result + 32);
    *(result + 16) = v4;
    *(result + 20) = v5;
    *(result + 32) = a2;
    *(result + 8) = v3 + 1;
  }

  return result;
}

BOOL TouchService::PathInterpolator::interpolateAt(TouchService::PathInterpolator *this, uint64_t a2, float *a3, float *a4, float a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  if (v6 < 2)
  {
    v12 = SALoggingGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      TouchService::PathInterpolator::interpolateAt(a2, v12);
    }

    goto LABEL_18;
  }

  if (*(this + 16) == 1 && *(this + 40) == 1)
  {
    v11 = *(this + 64) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(this + 5);
  v14 = *(this + 11);
  v15 = vabds_f32(v13, v14) < a5 && vabds_f32(*(this + 6), *(this + 12)) < a5;
  v16 = *(this + 4);
  if (v6 == 2)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v29 = ((((*(*this + 4) >> 1) + 1000000) / *(*this + 4)) * 2.5);
  v30 = *(this + 10);
  v31 = v16 - v30;
  v17 = v16 - v30 > v29;
  if (((v15 | v11) & 1) != 0 || v31 > v29)
  {
LABEL_13:
    v18 = *(this + 7);
    v19 = (a2 - v18);
    v20 = (v16 - v18);
    *a3 = Interpolation::polynomial1stOrder(this, v19, v13, v14, v20, 0.0);
    *a4 = Interpolation::polynomial1stOrder(v21, v19, *(this + 6), *(this + 12), v20, 0.0);
    v22 = SALoggingGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(this + 2);
      v24 = *a3;
      v25 = *a4;
      v41 = 67110913;
      *v42 = v23;
      *&v42[4] = 1024;
      *&v42[6] = v15;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = v11 & 1;
      HIWORD(v43) = 1024;
      *v44 = v17;
      *&v44[4] = 2048;
      *&v44[6] = a5;
      *&v44[14] = 2048;
      *&v44[16] = a2;
      v45 = 2053;
      v46 = v24;
      v47 = 2053;
      v48 = v25;
      v26 = "InterpolationStep:  Linear Interpolation Occurred(_count=%d, is_stationary=%d, is_2nd_touching=%d, is_frame_dropped=%d, quantum=%.3f) at t=%llu: output=(%{sensitive}.3f,%{sensitive}.3f)\n";
      v27 = v22;
      v28 = 66;
LABEL_20:
      _os_log_debug_impl(&dword_2653C2000, v27, OS_LOG_TYPE_DEBUG, v26, &v41, v28);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v32 = (a2 - v30);
  v33 = v31;
  v34 = (*(this + 7) - v30);
  *a3 = Interpolation::polynomial2ndOrder(this, v32, v13, v14, *(this + 17), v31, v34, 0.0);
  *a4 = Interpolation::polynomial2ndOrder(v35, v32, *(this + 6), *(this + 12), *(this + 18), v33, v34, 0.0);
  v36 = SALoggingGeneral();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v39 = *a3;
    v40 = *a4;
    v41 = 134218753;
    *v42 = a5;
    *&v42[8] = 2048;
    v43 = a2;
    *v44 = 2053;
    *&v44[2] = v39;
    *&v44[10] = 2053;
    *&v44[12] = v40;
    v26 = "InterpolationStep:  2nd-order Polynomial Interpolation Occurred(quantum=%.3f) at t=%llu: output=(%{sensitive}.3f,%{sensitive}.3f)\n";
    v27 = v36;
    v28 = 42;
    goto LABEL_20;
  }

LABEL_18:
  result = v6 > 1;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void TouchService::PathInterpolator::interpolateAt(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_2653C2000, a2, OS_LOG_TYPE_DEBUG, "InterpolationStep:  Interpolation Didn't Occur at t=%llu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void PalmRejection::UpdatePalmRejectionFeaturesStep::UpdatePalmRejectionFeaturesStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v7 = &unk_2876EE900;
  v7[10] = a2;
  v7[11] = a3;
  v7[12] = a4;
}

uint64_t PalmRejection::UpdatePalmRejectionFeaturesStep::run(PalmRejection::UpdatePalmRejectionFeaturesStep *this, const float *a2)
{
  v2 = *(this + 12);
  if (!*(v2 + 1148))
  {
    return 0;
  }

  v27 = 0.0;
  v4 = *(this + 11);
  *(v2 + 901) = *(v4 + 8060) > 0.34907;
  *(v2 + 892) = *(v4 + 8008);
  v5 = *(this + 10);
  *(*(this + 12) + 904) = *(*(this + 11) + 8056);
  v28[0] = PalmRejUtil::getDist2WeightParams((v5 + 72), a2);
  v28[1] = v6;
  v7 = *(this + 12);
  if (*(v7 + 568) >= *(*(this + 10) + 52) || *(v7 + 1784) == 1 && *(v7 + 901) != 1)
  {
    v9 = *(v7 + 1148);
    if (v9 < 1)
    {
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    v10 = (v7 + 1068);
    do
    {
      *v10 = 1065353216;
      *(v10 - 20) = 0;
      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {
    PalmRejection::UpdatePalmRejectionFeaturesStep::getB222Poses2Cos(this, v28, &v27);
    v7 = *(this + 12);
    v8 = *(v7 + 1148) > 0;
    if (*(v7 + 1148) <= 0)
    {
      goto LABEL_19;
    }
  }

  LOWORD(v11) = 0;
  do
  {
    PalmRejection::UpdatePalmRejectionFeaturesStep::updatePathHistory(this, *(this + 11) + 400 * *(*(this + 11) + 2 * v11 + 8252), v11, *(v7 + 568));
    v11 = (v11 + 1);
    v7 = *(this + 12);
    v12 = *(v7 + 1148);
  }

  while (v11 < v12);
  if (v12 < 1)
  {
    goto LABEL_18;
  }

  v8 = 0;
  v13 = 0;
  v14 = *(this + 11);
  v15 = v14 + 8252;
  do
  {
    if (*(v14 + 400 * *(v15 + 2 * v13) + 160) >= 3u)
    {
      *(v14 + 8292 + 2 * v8) = *(v15 + 2 * v13);
      *(v14 + 8332 + 2 * v8++) = v13;
      LOWORD(v12) = *(v7 + 1148);
    }

    ++v13;
  }

  while (v13 < v12);
LABEL_19:
  *(v7 + 1150) = v8;
  if (*(v7 + 1785) == 1)
  {
    v16 = v27;
    v17 = *(this + 11);
LABEL_21:
    *(v17 + 8424) = v16;
    PalmRejection::UpdatePalmRejectionFeaturesStep::updateTouchHistoryFeatures(this);
    goto LABEL_25;
  }

  v18 = *(*(this + 10) + 40);
  if (*(v7 + 564) < v18)
  {
    v17 = *(this + 11);
    v16 = v27;
    if ((*(v17 + 8424) * v27) >= 0.0)
    {
      goto LABEL_21;
    }
  }

  PalmRejection::UpdatePalmRejectionFeaturesStep::resetTouchHistoryFeatures(this, *(v7 + 568) - v18);
LABEL_25:
  PalmRejection::UpdatePalmRejectionFeaturesStep::populateClassificationFrameFeatures(this);
  if (*(*(this + 12) + 1150) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(this + 11);
      v21 = v20 + 2 * v19;
      v22 = v20 + 400 * *(v21 + 8292);
      v23 = *(v21 + 8332);
      v24 = PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(this, v22, *(v21 + 8332));
      v25 = *(this + 12);
      *(v25 + 4 * v23 + 480) = v24;
      *(v22 + 372) = *(v22 + 372) + ((v24 - *(v22 + 372)) / *(v22 + 364));
      ++v19;
    }

    while (*(v25 + 1150) > v19);
  }

  return 0;
}

void PalmRejection::UpdatePalmRejectionFeaturesStep::getB222Poses2Cos(uint64_t a1, float *a2, float *a3)
{
  v5 = *(a1 + 96);
  v6 = *(v5 + 892);
  v7 = *(v5 + 896);
  v8 = __sincosf_stret(*(v5 + 904));
  v9 = *(v5 + 1148);
  if (v9 >= 1)
  {
    v10 = *(v5 + 1784);
    v11 = (v5 + 1068);
    v12 = (v5 + 4);
    do
    {
      v13 = *(v12 - 1) - v6;
      v14 = *v12 - v7;
      v15 = sqrtf((v14 * v14) + (v13 * v13));
      if (v15 > 0.000000001)
      {
        v14 = v14 / v15;
        v13 = v13 / v15;
      }

      v16 = (v8.__sinval * v14) + (v13 * v8.__cosval);
      *a3 = *a3 + v16;
      v17 = 1.0 / (expf(a2[1] + (*a2 * v15)) + 1.0);
      if ((v10 & 1) != 0 || *(v5 + 901) == 1)
      {
        v17 = fmaxf(v16 * v17, 0.0);
      }

      else
      {
        v16 = 0.0;
      }

      *(v11 - 40) = v17;
      *(v11 - 20) = v16;
      *v11++ = v17;
      v12 += 2;
      --v9;
    }

    while (v9);
  }
}

float32_t PalmRejection::UpdatePalmRejectionFeaturesStep::updatePathHistory(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = (a2 + 324);
  v5 = *(a2 + 68);
  if (v5 == 1)
  {
    v6 = *(*(a1 + 96) + 4 * a3 + 812);
    v7 = *(a2 + 376);
    *(a2 + 344) = v7;
    v8 = HIDWORD(v7);
    v9 = *&v7;
    v10 = a3;
    *(a2 + 332) = v6;
    v11 = *(a2 + 8);
    *(a2 + 336) = v11;
    *(a2 + 340) = v11;
    *(a2 + 356) = 0;
    *(a2 + 352) = 0;
    *(a2 + 364) = 0;
    *v4 = 0;
    *(a2 + 372) = 0;
    v12 = *&v8;
  }

  else
  {
    v9 = *(a2 + 376);
    v12 = *(a2 + 380);
    v10 = a3;
  }

  v13 = *(a1 + 96);
  v14 = v13 + 4 * v10;
  *(a2 + 360) = fmaxf((30000 - a4), 0.0) * *(v14 + 1068);
  v15 = *(a2 + 344);
  v16 = *(a2 + 348);
  v17 = fminf(v15, v16);
  if (fminf(v9, v12) > -1000.0 && v17 <= -1000.0)
  {
    *(a2 + 372) = 0;
    *(a2 + 364) = 0;
  }

  *(a2 + 344) = fmaxf(v9, v15);
  *(a2 + 348) = fmaxf(v12, v16);
  if (*(a2 + 160) >= 3u)
  {
    ++*(a2 + 364);
  }

  v19 = vand_s8(*(a2 + 20), vcltz_s32(vshl_n_s32(vdup_n_s32(v5 > 1), 0x1FuLL)));
  if (v5 == 2)
  {
    if (*(a2 + 364) == 1)
    {
      *(a2 + 332) = *(v14 + 812);
    }

    *(a2 + 340) = *(a2 + 340) - *(a2 + 8);
  }

  v20 = *(a1 + 80);
  v21 = vsub_f32(v19, *v4);
  *v4 = vmla_n_f32(*v4, v21, *(v20 + 44));
  if (*(v13 + 568) < *(v20 + 52) && (*(v13 + 1784) != 1 || *(v13 + 901) == 1))
  {
    ++*(a2 + 356);
    v21.f32[0] = *(v14 + 908) + *(a2 + 352);
    *(a2 + 352) = v21.i32[0];
  }

  return v21.f32[0];
}

uint64_t PalmRejection::UpdatePalmRejectionFeaturesStep::updateTouchHistoryFeatures(uint64_t this)
{
  v1 = *(this + 88);
  v2 = *(this + 96);
  v3 = *(v2 + 1150);
  v4 = *(v1 + 8384) + v3;
  *(v1 + 8384) = v4;
  if (v3 >= 1)
  {
    v5 = (v1 + 8292);
    v6.i32[0] = 0;
    v7 = v3;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *v5++;
      v11 = (v1 + 400 * v10);
      v12 = fminf(sqrtf(v11[42] * v11[43]), 28000.0);
      v8 = v8 + v12;
      v9 = v9 + (v12 * v12);
      v6.f32[0] = v6.f32[0] + v11[20];
      --v7;
    }

    while (v7);
    *v13.i32 = v4;
    *v14.i32 = 1.0 - (v3 / v4);
    v15 = fminf(*v14.i32, (v3 * -0.07) + 1.0);
    v6.f32[1] = (1.0 - v15) * v8;
    v6.i64[1] = __PAIR64__(LODWORD(v9), LODWORD(v8));
    *&v13.i32[1] = v3;
    v16 = vdupq_lane_s32(v13, 0);
    v16.f32[1] = v3;
    *&v14.i32[1] = v15;
    v17 = vdupq_lane_s32(v14, 0);
    v17.f32[1] = v15;
    *(v1 + 8388) = vmlaq_f32(vdivq_f32(v6, v16), *(v1 + 8388), v17);
  }

  v18 = 1.0;
  if ((*(v2 + 900) & 1) == 0)
  {
    v18 = *(v1 + 8404) * 0.999;
  }

  *(v1 + 8404) = v18;
  return this;
}

uint64_t PalmRejection::UpdatePalmRejectionFeaturesStep::resetTouchHistoryFeatures(PalmRejection::UpdatePalmRejectionFeaturesStep *this, int a2)
{
  v4 = SALoggingGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    PalmRejection::UpdatePalmRejectionFeaturesStep::resetTouchHistoryFeatures(v4);
  }

  v5 = *(this + 11);
  v6 = expf(a2 * -0.001);
  *(v5 + 8400) = 0;
  *(v5 + 8384) = 0u;
  *(v5 + 8404) = v6;
  *(v5 + 8408) = 0;
  *(v5 + 8420) = -1;
  *(v5 + 8416) = -65536;
  *(v5 + 8424) = 0;
  return PalmRejection::UpdatePalmRejectionFeaturesStep::updateTouchHistoryFeatures(this);
}

float PalmRejection::UpdatePalmRejectionFeaturesStep::populateClassificationFrameFeatures(PalmRejection::UpdatePalmRejectionFeaturesStep *this)
{
  v1 = *(this + 12);
  v2 = *(v1 + 1148);
  if (v2 >= 1)
  {
    v3 = *(this + 11);
    v4 = (v3 + 8252);
    v5 = (v1 + 572);
    do
    {
      v6 = *v4++;
      v7 = v3 + 400 * v6;
      v5[20] = sqrtf((*(v7 + 328) * *(v7 + 328)) + (*(v7 + 324) * *(v7 + 324)));
      if (*(v7 + 356) < 1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = *(v7 + 352) / *(v7 + 356);
      }

      *v5++ = v8;
      --v2;
    }

    while (v2);
  }

  v9 = *(v1 + 1150);
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v9 >= 1)
  {
    v16 = *(this + 11);
    v17 = (v16 + 8292);
    v18 = *(v1 + 1150);
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      v21 = (v16 + 400 * *v17);
      v13 = v13 + *(v1 + 652 + 4 * v17[20]);
      v14 = v14 + v21[51];
      v22 = fminf(v21[86], v21[87]);
      v12 = v12 + v21[20];
      v19 = v19 + v22;
      if (v22 > 0.0)
      {
        v20 = v20 + 1.0;
      }

      ++v17;
      --v18;
    }

    while (v18);
    v15 = v13 / v9;
    v14 = v14 / v9;
    v13 = v12 / v9;
    v12 = v19 / v9;
    v11 = v20 / v9;
  }

  v23 = *(this + 11);
  v24 = *(v23 + 8396);
  v25 = fmaxf(*(v23 + 8400) - (v24 * v24), 0.0);
  *(v1 + 1156) = v25;
  v26 = sqrtf(v25);
  *(v1 + 1160) = v26;
  v27 = ((v24 - v26) + 0.001) + 10000.0;
  if (v27 > 0.0)
  {
    v10 = v27 / (((v24 + v26) + 0.001) + 10000.0);
  }

  *(v1 + 1152) = v10;
  if (v9 == 2)
  {
    v28 = *(v1 + 812 + 4 * *(v23 + 8332));
    v29 = *(v1 + 812 + 4 * *(v23 + 8334));
    *(v1 + 1196) = vabds_f32(v28, v29) / (v28 + v29);
  }

  else
  {
    *(v1 + 1196) = 1065353216;
    if (v9 < 1)
    {
      v34 = 0.0;
      v33 = 0.0;
      v31 = 0.0;
      goto LABEL_20;
    }
  }

  v30 = (v23 + 8292);
  v31 = 0.0;
  v32 = v9;
  v33 = 0.0;
  v34 = 0.0;
  do
  {
    v35 = (v23 + 400 * *v30);
    v31 = v31 + ((*(v1 + 652 + 4 * v30[20]) - v15) * (*(v1 + 652 + 4 * v30[20]) - v15));
    v33 = v33 + ((v35[51] - v14) * (v35[51] - v14));
    v36 = fminf(v35[86], v35[87]);
    v34 = v34 + ((v36 - v12) * (v36 - v12));
    ++v30;
    --v32;
  }

  while (v32);
LABEL_20:
  *(v1 + 1168) = v14;
  *(v1 + 1172) = sqrtf(v33 / v9);
  *(v1 + 1164) = sqrtf(v31 / v9);
  *(v1 + 1188) = v11;
  *(v1 + 1192) = sqrtf(v34 / v9);
  result = v13 / (*(v23 + 8388) + 1.0);
  *(v1 + 1176) = result;
  return result;
}

float PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(void *a1, uint64_t a2, unsigned int a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v6 = (a2 + 68);
  v5 = *(a2 + 68);
  v7 = *(a2 + 172);
  v8 = sqrtf(*(a2 + 168) * v7);
  v9 = *(a2 + 344);
  v10 = *(a2 + 348);
  v11 = fminf(v9, v10);
  v12 = v10 < 0.0 && v9 < 0.0;
  v13 = *(v4 + 4 * a3 + 572);
  v14 = 0.0;
  if (v13 > 0.0001)
  {
    v14 = 1.0;
    if (v11 >= -3000.0)
    {
      v16 = (v11 - v8) < -13000.0 && v11 < 0.0;
      v14 = v16;
    }
  }

  v17 = *(v4 + 1148);
  v18 = *(v4 + 1784);
  if (v17 == 1)
  {
    if (*(v4 + 1784))
    {
      v19 = 88;
      goto LABEL_22;
    }

    v20 = *(v4 + 901) == 0;
    v19 = 168;
    v21 = 88;
  }

  else
  {
    if (*(v4 + 1784))
    {
      v19 = 248;
      goto LABEL_22;
    }

    v20 = *(v4 + 901) == 0;
    v19 = 328;
    v21 = 248;
  }

  if (!v20)
  {
    v19 = v21;
  }

LABEL_22:
  v22 = a1[10] + v19;
  v71 = 1065353216;
  v72 = *(a2 + 332);
  v23 = v72;
  v73 = v8 - v72;
  v24 = (v4 + 4 * a3);
  v25 = v24[203];
  v74 = v8;
  v75 = v25;
  v52 = v24[183];
  v76 = v52;
  v26 = 1.0;
  v27 = *(a2 + 340) / (v25 + 1.0);
  if (v5 <= 1)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  v55 = v24[163] / (*(a2 + 80) + 1.0);
  v56 = v27 * v28;
  v78 = v7;
  v79 = v27 * v28;
  v80 = v55;
  v29 = fminf(v11, 3000.0);
  if (v11 >= -1000.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  v53 = v7 * v30;
  v54 = v29;
  v81 = v29;
  v82 = v7 * v30;
  v83 = v12;
  v84 = v14;
  v31 = *(a2 + 12);
  v85 = *(a2 + 204);
  v86 = v31;
  v61 = v13;
  v62 = v85;
  if (v31 >= v85)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  v87 = v32;
  v88 = v13;
  v60 = v14;
  if (v17 == 1)
  {
    v33 = v11 > -1000.0;
    if (v5 > 0xF)
    {
      v33 = 1;
    }

    v34 = *(a2 + 180) * v33;
    v35 = 1.0;
    if (v5 <= 0xF)
    {
      v35 = 0.0;
    }

    v36 = *(a2 + 360);
    v77 = *(a2 + 180) * v33;
    v59 = v36 * v35;
    v89 = v36 * v35;
    v90 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v34 = *(a2 + 180);
    v77 = v34;
    if (v17 <= 2 && (v5 < 0x10 || *(a1[11] + 8416) >= 10))
    {
      if (*(v4 + 1196) <= 0.2)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }
    }

    v59 = v26 * *(a2 + 360);
    v89 = v59;
    v90 = logf(v17);
    v37 = v90;
  }

  v58 = v37;
  v38 = 0;
  v39 = 0.0;
  do
  {
    v40 = vmulq_f32(*(&v71 + v38), *(v22 + v38));
    v39 = (((v39 + v40.f32[0]) + v40.f32[1]) + v40.f32[2]) + v40.f32[3];
    v38 += 16;
  }

  while (v38 != 80);
  v57 = 1.0 / (expf(v39) + 1.0);
  v41 = logf((v57 + 0.00001) / 1.0);
  v42 = SALoggingGeneral();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(a2, v6, v42);
  }

  v43 = SALoggingGeneral();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v64 = 1.0;
    v65 = 2048;
    v66 = v23;
    v67 = 2048;
    v68 = (v8 - v23);
    v69 = 2048;
    v70 = v8;
    _os_log_debug_impl(&dword_2653C2000, v43, OS_LOG_TYPE_DEBUG, "  0 -  3 : %12.5e %12.5e %12.5e %12.5e", buf, 0x2Au);
  }

  v44 = SALoggingGeneral();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v64 = v25;
    v65 = 2048;
    v66 = v52;
    v67 = 2048;
    v68 = v34;
    v69 = 2048;
    v70 = v7;
    _os_log_debug_impl(&dword_2653C2000, v44, OS_LOG_TYPE_DEBUG, "  4 -  7 : %12.5e %12.5e %12.5e %12.5e", buf, 0x2Au);
  }

  v45 = SALoggingGeneral();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v64 = v56;
    v65 = 2048;
    v66 = v55;
    v67 = 2048;
    v68 = v54;
    v69 = 2048;
    v70 = v53;
    _os_log_debug_impl(&dword_2653C2000, v45, OS_LOG_TYPE_DEBUG, "  8 - 11 : %12.5e %12.5e %12.5e %12.5e", buf, 0x2Au);
  }

  v46 = SALoggingGeneral();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v64 = v12;
    v65 = 2048;
    v66 = v60;
    v67 = 2048;
    v68 = v62;
    v69 = 2048;
    v70 = v31;
    _os_log_debug_impl(&dword_2653C2000, v46, OS_LOG_TYPE_DEBUG, " 12 - 15 : %12.5e %12.5e %12.5e %12.5e", buf, 0x2Au);
  }

  v47 = SALoggingGeneral();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0.0;
    *buf = 134218752;
    if (v31 < v62)
    {
      v51 = 1.0;
    }

    v64 = v51;
    v65 = 2048;
    v66 = v61;
    v67 = 2048;
    v68 = v59;
    v69 = 2048;
    v70 = v58;
    _os_log_debug_impl(&dword_2653C2000, v47, OS_LOG_TYPE_DEBUG, " 16 - 19 : %12.5e %12.5e %12.5e %12.5e", buf, 0x2Au);
  }

  v48 = SALoggingGeneral();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(v48, v57, v41);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v41;
}

void PalmRejection::UpdatePalmRejectionFeaturesStep::~UpdatePalmRejectionFeaturesStep(PalmRejection::UpdatePalmRejectionFeaturesStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(uint64_t a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_2653C2000, log, OS_LOG_TYPE_DEBUG, "\nUpdatePalmRejectionFeature %1d : %3d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void PalmRejection::UpdatePalmRejectionFeaturesStep::calculatePathProbability(os_log_t log, float a2, float a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_2653C2000, log, OS_LOG_TYPE_DEBUG, " prob/log  : %12.7f %12.7f\n", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

AlgWorkNode *TouchService::HysteresisFilterStep::HysteresisFilterStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v12 = &unk_2876EE950;
  PlainDataNode<TouchService::HysteresisFilterParams>::PlainDataNode((v12 + 10), 0x1BE28DBAFB9D43C2, 0, 0);
  *(a1 + 24) = a2;
  *(a1 + 25) = a3;
  *(a1 + 26) = a4;
  *(a1 + 27) = a5;
  *(a1 + 28) = a6;
  TouchService::HysteresisFilterStep::runNodeRegistrations(a1);
  *(a1 + 29) = operator new(8 * *(*(a1 + 27) + 40));
  if (*(*(a1 + 27) + 40))
  {
    v13 = 0;
    v14 = a1 + 108;
    do
    {
      v15 = operator new(0x90uLL);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v14;
      *(v15 + 6) = 0;
      v15[4] = v14;
      *(v15 + 40) = 0;
      v15[6] = 0;
      v15[7] = 0;
      *(v15 + 16) = 0;
      *(v15 + 72) = 0;
      *(v15 + 24) = 0;
      v15[10] = 0;
      v15[11] = 0;
      *(v15 + 104) = 0;
      v15[14] = 0;
      v15[15] = 0;
      *(v15 + 32) = 0;
      *(v15 + 68) = 0;
      *(*(a1 + 29) + 8 * v13++) = v15;
    }

    while (v13 < *(*(a1 + 27) + 40));
  }

  return a1;
}

void *TouchService::HysteresisFilterStep::runNodeRegistrations(TouchService::HysteresisFilterStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 25));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 26));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 27));
  v2 = *(this + 27);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

void TouchService::HysteresisFilterStep::~HysteresisFilterStep(TouchService::HysteresisFilterStep *this)
{
  *this = &unk_2876EE950;
  v2 = *(this + 27);
  if (*(v2 + 40))
  {
    v3 = 0;
    do
    {
      v4 = *(*(this + 29) + 8 * v3);
      if (v4)
      {
        MEMORY[0x266758590](v4, 0x1060C400E8161FDLL);
        v2 = *(this + 27);
      }

      ++v3;
    }

    while (v3 < *(v2 + 40));
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x266758580](v5, 0x20C8093837F09);
  }

  *(this + 10) = &unk_2876F3810;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::HysteresisFilterStep::~HysteresisFilterStep(this);

  JUMPOUT(0x266758590);
}

uint64_t TouchService::HysteresisFilterStep::run(TouchService::HysteresisFilterStep *this)
{
  v2 = *(*(this + 24) + 28);
  result = (*(**(this + 27) + 40))(*(this + 27));
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 25400.0 / v2;
    while (1)
    {
      v7 = (*(*(*(this + 27) + 32) + 8))();
      if (!*(v7 + v4) || *(v7 + v4) >= *(*(this + 27) + 40))
      {
        break;
      }

      v8 = v7;
      v9 = *(*(this + 29) + 8 * *(v7 + v4));
      TouchService::HysteresisFilter::update(v9, **(this + 28), (v7 + v4), (*(this + 26) + 28), *(this + 25) + 28, v6);
      *(v8 + v4 + 4) = *(v9 + 8);
      ++v5;
      v4 += 48;
      if (v5 >= (*(**(this + 27) + 40))(*(this + 27)))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void TouchService::HysteresisFilter::update(uint64_t a1, unint64_t a2, float *a3, _BYTE *a4, uint64_t a5, float a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 1);
  v9 = v8 - 3 < 2;
  v10 = v8 >= 3;
  v11 = v8 - 3;
  if (!v10 || (v12 = *(a1 + 136) ^ 1, (v9 & v12 & 1) != 0))
  {
    *(a1 + 136) = v9;
    goto LABEL_7;
  }

  if ((v11 < 2) | v12 & 1)
  {
    *(a1 + 136) = v9;
    v16 = *(a1 + 137);
    goto LABEL_12;
  }

  v20 = *(a1 + 137);
  *(a1 + 136) = v9;
  if (v20)
  {
LABEL_7:
    v17 = *(a3 + 1);
    *a1 = v17;
    *(a1 + 8) = v17;
    *(a1 + 137) = 0;
    *(a1 + 40) = 0;
    *(a1 + 72) = 0;
    *(a1 + 24) = 0;
    v18 = *MEMORY[0x277D85DE8];
    v19 = a1 + 24;

    InstabilityFilter::update(v19, a2, a3, 0);
    return;
  }

  v16 = 0;
LABEL_12:
  v21 = (a1 + 24);
  InstabilityFilter::update(a1 + 24, a2, a3, v16 & 1);
  v22 = *(a1 + 16);
  v23 = *(v22 + 60);
  if (*a4 == 1)
  {
    v23 = *(v22 + 60);
    if (*(v22 + 68) == 1)
    {
      v23 = *(v22 + 60);
      if ((a3[2] - *(a5 + 12)) < *(v22 + 72))
      {
        v23 = *(v22 + 76);
      }
    }
  }

  v24 = *(a1 + 24);
  v25 = *(v22 + 60) * v24;
  v26 = v23 * v24;
  v27 = *a1;
  v28 = *(a1 + 4);
  v29 = a3[1];
  v30 = a3[2];
  v31 = v25 + *a1;
  if ((v29 - *a1) <= v25)
  {
    v31 = a3[1];
  }

  if ((*a1 - v29) > v25)
  {
    v32 = v27 - v25;
  }

  else
  {
    v32 = v31;
  }

  *a1 = v32;
  if ((v28 - v30) <= v26)
  {
    v33 = v30;
    if ((v30 - v28) > v26)
    {
      v33 = v26 + v28;
    }
  }

  else
  {
    v33 = v28 - v26;
  }

  *(a1 + 4) = v33;
  v34 = *(v22 + 64);
  v35 = v29 - v32;
  v36 = v29 + v34;
  if ((v32 - v29) <= v34)
  {
    v36 = v32;
  }

  v37 = v29 - v34;
  if (v35 > v34)
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  v39 = v30 - v33;
  v40 = v30 + v34;
  if ((v33 - v30) <= v34)
  {
    v40 = v33;
  }

  v41 = v30 - v34;
  if (v39 > v34)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  v43 = -a6;
  if (a6 >= 0.0)
  {
    v43 = a6;
  }

  if (v32 >= v38 || (v38 - v32) >= v43)
  {
    if ((v32 - v38) >= v43 || v32 <= v38)
    {
      v44 = v38;
    }

    else
    {
      v44 = v32 - v43;
    }
  }

  else
  {
    v44 = v43 + v32;
  }

  if (v33 >= v42 || (v42 - v33) >= v43)
  {
    v47 = (v33 - v42) >= v43 || v33 <= v42;
    v48 = v33 - v43;
    if (v47)
    {
      v46 = v42;
    }

    else
    {
      v46 = v48;
    }
  }

  else
  {
    v46 = v43 + v33;
  }

  v49 = v33 != v46 || v32 != v44;
  v50 = *(a1 + 137) | v49;
  *(a1 + 137) = v50;
  *a1 = v44;
  *(a1 + 4) = v46;
  if (v50)
  {
    v51 = v44 != *(a1 + 8) || v46 != *(a1 + 12);
    *(a1 + 8) = *a1;
  }

  else
  {
    v51 = 0;
  }

  v52 = SALoggingGeneral();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v54 = *a3;
    v55 = *(a3 + 2);
    v56 = *(a3 + 1);
    v57 = *v21;
    v58 = a3[1];
    v59 = a3[2];
    v60[0] = 67112961;
    v60[1] = v54;
    v61 = 1024;
    v62 = v55;
    v63 = 1024;
    v64 = v56;
    v65 = 1024;
    v66 = v49;
    v67 = 1024;
    v68 = v51;
    v69 = 2048;
    v70 = v57;
    v71 = 2048;
    v72 = v25;
    v73 = 2048;
    v74 = v26;
    v75 = 2053;
    v76 = v58;
    v77 = 2053;
    v78 = v59;
    v79 = 2053;
    v80 = v27;
    v81 = 2053;
    v82 = v28;
    v83 = 2053;
    v84 = v32;
    v85 = 2053;
    v86 = v33;
    v87 = 2053;
    v88 = v44;
    v89 = 2053;
    v90 = v46;
    _os_log_debug_impl(&dword_2653C2000, v52, OS_LOG_TYPE_DEBUG, "HysteresisFilterStep:  P%d -> F%d stage=%d slid=%d moved=%d instability=%0.3f(x:%.0f, y:%.0f) input=(%{sensitive}.0f,%{sensitive}.0f) old=(%{sensitive}.0f,%{sensitive}.0f) hide=(%{sensitive}.0f,%{sensitive}.0f) new=(%{sensitive}.0f,%{sensitive}.0f)\n", v60, 0x8Eu);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void InstabilityFilter::update(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 60) = *(a1 + 28);
  *(a1 + 48) = *(a1 + 16);
  *(a1 + 16) = 1;
  *(a1 + 24) = a2;
  v6 = vdiv_f32(*(a3 + 20), vdup_n_s32(0x447A0000u));
  *(a1 + 32) = v6;
  v7 = *(a3 + 32);
  *(a1 + 40) = v7;
  v8 = *(a3 + 1);
  v9 = v8 - 1;
  if (*(a1 + 48) != 1)
  {
    if (v9 >= 6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v9 < 6 && (v8 - 5) < 0xFFFFFFFE || *(a1 + 56) > a2)
  {
LABEL_7:
    *(a1 + 80) = 1;
    *(a1 + 48) = *(a1 + 16);
    *(a1 + 60) = *(a1 + 28);
    *(a1 + 88) = a2;
    *(a1 + 96) = v7;
    *(a1 + 100) = v6.i32[0];
    *(a1 + 104) = 0;
    *a1 = 0;
  }

LABEL_8:
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v10 = (a2 - *(a1 + 88)) / 1000000.0;
  v11 = *(a1 + 8);
  v12 = (a2 - *(a1 + 56)) / 1000000.0;
  v13 = v12 / 0.008;
  v55 = v6;
  v14 = powf(flt_26541FBA8[v11[12] < v10], v12 / 0.008);
  v15 = 1.0;
  v16 = (v7 * (1.0 - v14)) + (v14 * *(a1 + 96));
  *(a1 + 96) = v16;
  v17 = powf(0.95, v13);
  v18 = ((1.0 - v17) * v55.f32[0]) + (v17 * *(a1 + 100));
  *(a1 + 100) = v18;
  v19 = *(a1 + 72);
  if (v7 <= v19)
  {
    v20 = *(a1 + 72);
  }

  else
  {
    v20 = v7;
  }

  if (v20 > 0.0)
  {
    v21 = fabsf(((v7 - v19) * 100.0) / v20);
    v22 = 1.0;
    if (a4)
    {
      v22 = v11[11];
    }

    v23 = v22 * v11[9];
    v24 = 0.0;
    if (v21 > v23)
    {
      v25 = v22 * v11[10];
      v26 = v21 < v25;
      v24 = (v21 - v23) / (v25 - v23);
      if (!v26)
      {
        v24 = 1.0;
      }
    }

    v27 = powf(v24, 1.5);
    if ((a4 & (v7 < v16)) != 0)
    {
      v27 = 0.0;
    }

    v54 = v27;
    v28 = 1.0;
    if (v10 > 0.0)
    {
      v28 = 0.0;
      if (v10 < 0.5)
      {
        v28 = (0.5 - v10) + (0.5 - v10);
      }
    }

    v29 = ((v11[8] + -1.0) * v28) + 1.0;
    v30 = vabd_f32(v55, *(a1 + 64));
    v31 = v30.f32[1];
    if (v30.f32[0] > v30.f32[1])
    {
      v31 = v30.f32[0];
    }

    v32 = v29 * v11[6];
    v33 = 0.0;
    v34 = 0.0;
    if (v31 > v32)
    {
      v34 = (v31 - v32) / ((v29 * v11[7]) - v32);
    }

    v35 = powf(v34, 1.5);
    v36 = *(a1 + 104);
    v37 = 0.75;
    if (v7 < v16)
    {
      v37 = 0.5;
    }

    if (v35 > v36)
    {
      v37 = 0.25;
    }

    v38 = powf(v37, v13);
    v39 = (v35 * (1.0 - v38)) + (v38 * v36);
    *(a1 + 104) = v39;
    v41 = v11[2];
    v40 = v11[3];
    if (v55.f32[0] > v41)
    {
      v33 = (v55.f32[0] - v41) / (v40 - v41);
    }

    v43 = v11[4];
    v42 = v11[5];
    v44 = v55.f32[1];
    v45 = 0.0;
    if (v55.f32[1] > v43)
    {
      v45 = (v55.f32[1] - v43) / (v42 - v43);
    }

    if (v55.f32[1] <= 6.0)
    {
      v46 = 1.0;
      if (v55.f32[0] <= 6.0)
      {
LABEL_39:
        v47 = 0.0;
        if (v46 > *v11)
        {
          v47 = (v46 - *v11) / (v11[1] - *v11);
        }

        v48 = (v18 - v42) / ((v40 + 0.5) - v42);
        if (v18 <= v42)
        {
          v48 = 0.0;
        }

        if (v39 <= v47)
        {
          v39 = v47;
        }

        if (v45 <= v33)
        {
          v49 = v33;
        }

        else
        {
          v49 = v45;
        }

        if (v39 <= v49)
        {
          v39 = v49;
        }

        if (v39 <= v48)
        {
          v39 = v48;
        }

        if (v54 <= v39)
        {
          v15 = v39;
        }

        else
        {
          v15 = v54;
        }

        goto LABEL_55;
      }

      v44 = 6.0;
    }

    v46 = v55.f32[0] / v44;
    goto LABEL_39;
  }

LABEL_55:
  v50 = 0.0;
  if ((a4 & 1) == 0)
  {
    if (v10 <= 0.0)
    {
      v50 = 1.0;
      v53 = 0.2;
    }

    else
    {
      v52 = v11[13];
      v51 = v11[14];
      v53 = 0.0;
      if (v52 > v10)
      {
        v50 = (v52 - v10) / v52;
      }

      if (v51 > v10)
      {
        v53 = ((v51 - v10) / v51) * 0.2;
      }
    }

    if (v50 <= v53)
    {
      v50 = v53;
    }
  }

  if (v15 > v50)
  {
    v50 = v15;
  }

  *a1 = v50;
}

double PlainDataNode<TouchService::HysteresisFilterParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EE9A0;
  *(v4 + 28) = xmmword_26541FBC0;
  *(v4 + 44) = xmmword_26541FBD0;
  *(v4 + 60) = xmmword_26541FBE0;
  *(v4 + 76) = xmmword_26541FBF0;
  *(v4 + 92) = 1134493696;
  *(v4 + 96) = 1;
  result = 2.2518004e15;
  *(v4 + 100) = 0x43200000459C4000;
  *(v4 + 16) = 31234;
  *(v4 + 24) = 80;
  return result;
}

__n128 PlainDataNode<TouchService::HysteresisFilterParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 64);
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  *(a1 + 44) = result;
  return result;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::ClusterWithGaussianMixtureModelStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v7 = &unk_2876EE9F0;
  v7[10] = a2;
  v7[11] = a3;
  v7[12] = a4;
}

uint64_t PalmRejection::ClusterWithGaussianMixtureModelStep::run(PalmRejection::ClusterWithGaussianMixtureModelStep *this, const float *a2, double a3, int32x4_t a4)
{
  v4 = *(this + 12);
  if (v4[574])
  {
    v6 = v4[575];
    if (v6 < 3)
    {
      if (v6 == 2)
      {
        v12 = *(this + 11);
        *(v12 + 400 * *(v12 + 8292) + 384) = 0;
        *(v12 + 400 * *(v12 + 8294) + 384) = 1;
        *&a3 = PalmRejection::ClusterWithGaussianMixtureModelStep::GMMClusterCovInitialization(this, 2u, a3, a4);
        v13 = *(this + 11) + 0x2000;
        if (*(*(this + 11) + 8436) == 1)
        {
          v4[882] = *(*(this + 11) + 8292);
          v4[883] = *(v13 + 102);
        }
      }
    }

    else
    {
      Dist2WeightParams = PalmRejUtil::getDist2WeightParams((*(this + 10) + 56), a2);
      PalmRejection::ClusterWithGaussianMixtureModelStep::GMMPathInitialization(this, Dist2WeightParams, v8);
      *&a3 = PalmRejection::ClusterWithGaussianMixtureModelStep::GMMClusterCovInitialization(this, *(*(this + 12) + 1150), v9, v10);
      v11 = 0;
      do
      {
        *&a3 = PalmRejection::ClusterWithGaussianMixtureModelStep::GMMGreedySwap(this, *(*(this + 12) + 1150), a3, a4);
        if (v11 > 3)
        {
          break;
        }

        ++v11;
      }

      while (*&a3 > 0.0);
    }

    PalmRejection::ClusterWithGaussianMixtureModelStep::GMMClusterCovInitialization(this, *(*(this + 12) + 1150), a3, a4);
  }

  return 0;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::GMMPathInitialization(PalmRejection::ClusterWithGaussianMixtureModelStep *a1, float a2, float a3)
{
  v47 = *MEMORY[0x277D85DE8];
  PalmRejection::ClusterWithGaussianMixtureModelStep::calculatePosCovOfClusteringFeatures(a1);
  PalmRejection::ClusterWithGaussianMixtureModelStep::calculateMetaEllipseFeatures(a1, a2, a3);
  PalmRejection::ClusterWithGaussianMixtureModelStep::populateAllPathGMMCovarianceObjects(a1, v6, v7, v8);
  if (*(*(a1 + 12) + 1150) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = (*(a1 + 11) + 400 * *(*(a1 + 11) + 2 * v9 + 8292));
      if ((v10[16].f32[0] - (v10[16].f32[2] * v10[16].f32[2])) >= v10[16].f32[1])
      {
        v11 = v10[16].f32[0] - (v10[16].f32[2] * v10[16].f32[2]);
      }

      else
      {
        v11 = v10[16].f32[1];
      }

      *&v13 = logf(v11);
      if (v11 <= 0.0)
      {
        *&v13 = -3.4028e38;
      }

      v10[16].i32[3] = LODWORD(v13);
      PalmRejection::ClusterWithGaussianMixtureModelStep::updateCovObj2x2LogDet(v13, v14, v12, v10 + 17, 1u);
      v15 = *(a1 + 12);
      v16 = *(v15 + 4 * v9 + 1240);
      v17 = (v16 >= 0.27 || *(v15 + 1150) != 3) && (v16 >= 0.5 || *(v15 + 1150) <= 3);
      v10[24].i16[0] = v17;
      v18 = SALoggingGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = v10[3].u8[8];
        v20 = v10[18].f32[0];
        v21 = v10[18].f32[1];
        v22 = v10[18].f32[2];
        v23 = v10[18].f32[3];
        v24 = v10[16].f32[1];
        v25 = v10[19].f32[0];
        v26 = v10[19].f32[1];
        v27 = v10[16].f32[2];
        *buf = 67111168;
        v30 = v19;
        v31 = 2048;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        v35 = 2048;
        v36 = v22;
        v37 = 2048;
        v38 = v23;
        v39 = 2048;
        v40 = v24;
        v41 = 2048;
        v42 = v25;
        v43 = 2048;
        v44 = v26;
        v45 = 2048;
        v46 = v27;
        _os_log_debug_impl(&dword_2653C2000, v18, OS_LOG_TYPE_DEBUG, "\nClusterWithGaussianMixtureModelStep %1d : cov2x2.covsqd = %f %f %f %f cov1x1.covsqd = %f cov2x2.xbars = %f %f cov1x1.xbar = %f", buf, 0x58u);
      }

      ++v9;
    }

    while (*(*(a1 + 12) + 1150) > v9);
  }

  v28 = *MEMORY[0x277D85DE8];
}

float PalmRejection::ClusterWithGaussianMixtureModelStep::GMMClusterCovInitialization(PalmRejection::ClusterWithGaussianMixtureModelStep *this, unsigned int a2, double a3, int32x4_t a4)
{
  v5 = *(this + 11);
  *(v5 + 8176) = 0;
  v6 = 0.0;
  *(v5 + 8160) = 0u;
  *(v5 + 8144) = 0u;
  *(v5 + 8128) = 0u;
  *(v5 + 8112) = 0u;
  v7 = *(this + 11);
  *(v7 + 8244) = 0;
  *(v7 + 8212) = 0u;
  *(v7 + 8228) = 0u;
  *(v7 + 8180) = 0u;
  *(v7 + 8196) = 0u;
  if (a2)
  {
    v8 = *(this + 11);
    v9 = (v8 + 8292);
    v10 = a2;
    do
    {
      v11 = *v9++;
      v12 = v8 + 400 * v11;
      v13 = v8 + 8112 + 68 * *(v12 + 384);
      v14 = *(v12 + 260);
      v15 = *(v13 + 8);
      v16 = *(v12 + 264);
      *v13 = *v13 + *(v12 + 256);
      *(v13 + 4) = v14;
      *(v13 + 8) = v15 + v16;
      v17 = *(v13 + 20);
      *(v13 + 16) = *(v13 + 16) + *(v12 + 272);
      *(v13 + 20) = v17 + *(v12 + 276);
      v18 = *(v13 + 28);
      *(v13 + 24) = *(v13 + 24) + *(v12 + 280);
      *(v13 + 28) = v18 + *(v12 + 284);
      a4.i32[0] = *(v13 + 48);
      v19 = *(v13 + 52);
      *(v13 + 48) = *a4.i32 + *(v12 + 304);
      *&v6 = v19 + *(v12 + 308);
      *(v13 + 52) = LODWORD(v6);
      ++*(v13 + 64);
      --v10;
    }

    while (v10);
  }

  *&v20 = PalmRejection::ClusterWithGaussianMixtureModelStep::updateClusterCovColLogDet(this, (*(this + 11) + 8112), v6, a4);
  result = PalmRejection::ClusterWithGaussianMixtureModelStep::updateClusterCovColLogDet(v21, (*(this + 11) + 8180), v20, v22);
  v24 = *(this + 11);
  v25 = *(v24 + 8176);
  v26 = *(v24 + 8244);
  v27 = (v26 + v25);
  if (v27 > 2)
  {
    result = ((*(v24 + 8240) * v26) + (*(v24 + 8172) * v25)) / (v27 + v27);
    *(v24 + 8248) = result;
  }

  return result;
}

float PalmRejection::ClusterWithGaussianMixtureModelStep::GMMGreedySwap(_BOOL8 this, int a2, double a3, int32x4_t a4)
{
  v4 = a2;
  v5 = this;
  v46 = *MEMORY[0x277D85DE8];
  v6 = -1.0;
  v7 = a2;
  if (a2 >= 1)
  {
    v8 = *(this + 88);
    v9 = v8[515].f32[2];
    LOWORD(v10) = -1;
    v11 = 0.0;
    v12 = 8292;
    v13 = 67109376;
    v14 = a2;
    do
    {
      v15 = *(v5 + 88);
      v16 = *(v15 + v12);
      v17 = v15 + 400 * v16;
      PalmRejection::ClusterWithGaussianMixtureModelStep::swapAndScore(this, v40, &v8[507], v17, *&v13, a4);
      v18 = v9 - v41;
      v19 = SALoggingGeneral();
      this = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (this)
      {
        v21 = *(v17 + 56);
        *buf = 67109376;
        v43 = v21;
        v44 = 2048;
        v45 = v18;
        _os_log_debug_impl(&dword_2653C2000, v19, OS_LOG_TYPE_DEBUG, "swapping %d improves by %f\n", buf, 0x12u);
      }

      if (v18 <= v11)
      {
        v20 = v10;
      }

      else
      {
        v20 = v16;
      }

      v10 = v20;
      if (v18 > v11)
      {
        v11 = v18;
      }

      v12 += 2;
      --v14;
    }

    while (v14);
    v4 = a2;
    if ((v20 & 0x80000000) == 0)
    {
      PalmRejection::ClusterWithGaussianMixtureModelStep::swapAndScore(this, v8 + 507, &v8[507], *(v5 + 88) + 400 * v20, *&v13, a4);
      v22 = *(v5 + 88) + 400 * v10;
      *(v22 + 384) = *(v22 + 384) != 1;
      v6 = v11;
    }
  }

  v23 = SALoggingGeneral();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    PalmRejection::ClusterWithGaussianMixtureModelStep::GMMGreedySwap(v23, v6);
  }

  if (v4 >= 1)
  {
    v24 = 8292;
    v25 = v7;
    do
    {
      v26 = *(v5 + 88);
      v27 = *(v26 + v24);
      v28 = v26 + 400 * *(v26 + v24);
      if (!*(v28 + 384))
      {
        v29 = SALoggingGeneral();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(v28 + 56);
          *buf = 67109376;
          v43 = v27;
          v44 = 1024;
          LODWORD(v45) = v30;
          _os_log_debug_impl(&dword_2653C2000, v29, OS_LOG_TYPE_DEBUG, "  gmm_clust_id = 0 : c_idx = %1d trk_path_id = %d", buf, 0xEu);
        }
      }

      v24 += 2;
      --v25;
    }

    while (v25);
    v31 = 8292;
    do
    {
      v32 = *(v5 + 88);
      v33 = *(v32 + v31);
      v34 = v32 + 400 * *(v32 + v31);
      if (*(v34 + 384) == 1)
      {
        v35 = SALoggingGeneral();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = *(v34 + 56);
          *buf = 67109376;
          v43 = v33;
          v44 = 1024;
          LODWORD(v45) = v36;
          _os_log_debug_impl(&dword_2653C2000, v35, OS_LOG_TYPE_DEBUG, "  gmm_clust_id = 1 : c_idx = %1d trk_path_id = %d", buf, 0xEu);
        }
      }

      v31 += 2;
      --v7;
    }

    while (v7);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v6;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::calculatePosCovOfClusteringFeatures(PalmRejection::ClusterWithGaussianMixtureModelStep *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(this + 12) + 1150) >= 1)
  {
    v2 = 0;
    do
    {
      PalmRejUtil::getEllipseCovariance((*(this + 11) + 400 * *(*(this + 11) + 2 * v2 + 8292) + 72), v6);
      v3 = *(this + 12);
      v4 = (v3 + 16 * v2);
      v4[40] = (v6[0] * 10.0) + 1000000.0;
      v4[41] = v6[1] * 10.0;
      v4[42] = v6[2] * 10.0;
      ++v2;
      LODWORD(v3) = *(v3 + 1150);
      v4[43] = (v6[3] * 10.0) + 1000000.0;
    }

    while (v3 > v2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::calculateMetaEllipseFeatures(uint64_t a1, float a2, float a3)
{
  v5 = a1;
  v94 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 88);
  if (*(v6 + 8436) == 1)
  {
    PassiveStylus3rdPartyDetection::initialize((*(a1 + 96) + 1756));
    v6 = *(v5 + 88);
  }

  v86 = a2;
  v87 = a3;
  v7 = *(v5 + 96);
  v8 = *(v7 + 1150);
  if (v8 <= 0)
  {
    v21 = *(v6 + 8292);
    *(v7 + 560) = 0.0 / v8;
    v20 = NAN;
    v25 = NAN;
  }

  else
  {
    v89 = v5;
    v9 = 0.0;
    v10 = v93;
    v11 = *(v7 + 1150);
    v12 = (v6 + 8292);
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      v16 = (v6 + 400 * *v12);
      v17 = 1.0 - expf(v16[93] * 0.05);
      *v10++ = v17;
      v13 = v13 + v17;
      v14 = v14 + (v17 * *v16);
      v15 = v15 + (v17 * v16[1]);
      v9 = v9 + *(v7 + 652 + 4 * v12[20]);
      ++v12;
      --v11;
    }

    while (v11);
    v18 = 0;
    v19 = v9 / v8;
    v20 = v14 / v13;
    v21 = *(v6 + 8292);
    v22 = 0.0;
    v23 = 3.4028e38;
    v24 = 0.0;
    v25 = v15 / v13;
    do
    {
      v26 = *(v6 + 2 * v18 + 8292);
      v27 = (v6 + 400 * v26);
      v93[v18] = v93[v18] / v13;
      v28 = sqrtf(((v27[1] - v25) * (v27[1] - v25)) + ((*v27 - v20) * (*v27 - v20)));
      if (*(v6 + 8436) == 1)
      {
        v29 = v20;
        PassiveStylus3rdPartyDetection::updateMaxValues(v26, v7 + 1756, v28, fminf(v27[42], 30000.0));
        v20 = v29;
        v6 = *(v89 + 88);
        v7 = *(v89 + 96);
      }

      if (v28 < v23)
      {
        v21 = v26;
        v23 = v28;
      }

      if (v28 > v22)
      {
        v22 = v28;
      }

      v30 = *(v7 + 4 * *(v6 + 2 * v18 + 8332) + 652) - v19;
      v24 = v24 + (v30 * v30);
      ++v18;
      v8 = *(v7 + 1150);
    }

    while (v8 > v18);
    *(v7 + 560) = v24 / v8;
    if (v23 > 50000.0)
    {
      v5 = v89;
    }

    else
    {
      v5 = v89;
      if (v22 <= 160000.0)
      {
        goto LABEL_29;
      }
    }
  }

  if (v8 < 1)
  {
    v25 = NAN;
    v20 = NAN;
  }

  else
  {
    v31 = (v6 + 400 * v21);
    v88 = (v25 + v31[1]) * 0.5;
    v90 = (v20 + *v31) * 0.5;
    v32 = 8292;
    v33 = v6 + 400 * *(v6 + 2 * (v8 - 1) + 8292);
    v34 = 0.0;
    if (fminf(*(v33 + 344), *(v33 + 348)) >= 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = (v35 * 3.0) + 1.0;
    v37 = v8;
    v38 = v93;
    v39 = v8;
    v40 = 0.0;
    v41 = 0.0;
    do
    {
      v42 = (v6 + 400 * *(v6 + v32));
      v44 = *v42;
      v43 = v42[1];
      v45 = v36 * (1.0 / (expf(v87 + (v86 * sqrtf(((v43 - v88) * (v43 - v88)) + ((*v42 - v90) * (*v42 - v90))))) + 1.0));
      *v38++ = v45;
      v34 = v34 + v45;
      v40 = v40 + (v45 * v44);
      v41 = v41 + (v45 * v43);
      v32 += 2;
      --v39;
    }

    while (v39);
    v20 = v40 / v34;
    v46 = v93;
    v25 = v41 / v34;
    do
    {
      *v46 = *v46 / v34;
      ++v46;
      --v37;
    }

    while (v37);
  }

LABEL_29:
  v91 = 0;
  v92 = 0;
  if (v8 < 1)
  {
    v50 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
  }

  else
  {
    v47 = v8;
    v48 = (v6 + 8292);
    v49 = (v7 + 172);
    v50 = 0.0;
    v51 = v93;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = *v48++;
      v56 = (v6 + 400 * v55);
      v57 = *v56;
      v58 = v56[1];
      v59 = *v51++;
      v60 = v59;
      v54 = v54 + (v59 * (*(v49 - 3) + (v57 * v57)));
      *&v91 = v54;
      v53 = v53 + (v59 * (*(v49 - 2) + (v57 * v58)));
      *(&v91 + 1) = v53;
      v52 = v52 + (v59 * (*(v49 - 1) + (v57 * v58)));
      *&v92 = v52;
      v61 = *v49;
      v49 += 4;
      v50 = v50 + (v60 * (v61 + (v58 * v58)));
      *(&v92 + 1) = v50;
      --v47;
    }

    while (v47);
  }

  *&v91 = v54 - (v20 * v20);
  *(&v91 + 1) = v53 - (v20 * v25);
  *&v92 = v52 - (v20 * v25);
  *(&v92 + 1) = v50 - (v25 * v25);
  v62 = v20;
  PalmRejUtil::CovarianceToSAEllipseAxes(&v91, v7 + 1200, 6000.0);
  v63 = PalmRejUtil::calculateSAEllipseFoci(*(v5 + 96) + 1200, v62);
  v67 = *(v5 + 96);
  v68 = *(v67 + 1150);
  if (v68 >= 1)
  {
    v69 = *(v5 + 88);
    v70 = (v69 + 8292);
    v71 = (v67 + 1240);
    v72 = 0.0;
    v73 = 3.4028e38;
    v74 = *(v67 + 1150);
    v75 = (v67 + 1240);
    do
    {
      v76 = *v70++;
      v77 = (v69 + 400 * v76);
      v78 = sqrtf(((v64 - v77[1]) * (v64 - v77[1])) + ((v63 - *v77) * (v63 - *v77)));
      *v75 = v78;
      v79 = v78 + sqrtf(((v66 - v77[1]) * (v66 - v77[1])) + ((v65 - *v77) * (v65 - *v77)));
      *v75++ = v79;
      if (v79 < v73)
      {
        v73 = v79;
      }

      if (v79 > v72)
      {
        v72 = v79;
      }

      --v74;
    }

    while (v74);
    v80 = v68;
    do
    {
      v81 = *v71 - v73;
      if (v73 != v72)
      {
        v81 = v81 / (v72 - v73);
      }

      v82 = sqrtf(v81);
      if (v68 == 3)
      {
        v81 = v82;
      }

      *v71++ = v81;
      --v80;
    }

    while (v80);
  }

  Mean = PalmRejUtil::getMean((v67 + 1240), v68);
  Var = PalmRejUtil::getVar((*(v5 + 96) + 1240), *(*(v5 + 96) + 1150), *&Mean);
  *(*(v5 + 96) + 1320) = LODWORD(Var);
  v85 = *MEMORY[0x277D85DE8];
}

uint64_t PalmRejection::ClusterWithGaussianMixtureModelStep::populateAllPathGMMCovarianceObjects(uint64_t this, double a2, double a3, int32x4_t a4)
{
  v4 = *(this + 96);
  v5 = *(v4 + 1150);
  if (v5 >= 1)
  {
    v6 = *(this + 88);
    v7 = (v6 + 8332);
    v8 = (v4 + 1240);
    v9 = (v4 + 172);
    do
    {
      v10 = v6 + 400 * *(v7 - 20);
      *(v10 + 288) = *(v9 - 3);
      *(v10 + 292) = *(v9 - 2);
      *(v10 + 296) = *(v9 - 1);
      v11 = *v9;
      v9 += 4;
      *(v10 + 300) = v11;
      v12 = *v7++;
      v13 = (v4 + 8 * v12);
      a4.i32[0] = *v13;
      *(v10 + 304) = *v13;
      a4.i32[1] = v13[1];
      *(v10 + 308) = a4.i32[1];
      a4 = vaddq_f32(*(v10 + 288), vmulq_f32(vdupq_lane_s64(a4.i64[0], 0), vzip1q_s32(a4, a4)));
      *(v10 + 272) = a4;
      v14 = *v8++;
      *(v10 + 264) = v14;
      v15 = (*(v4 + 1320) * 0.5) + 0.0001;
      *(v10 + 260) = v15;
      *(v10 + 256) = (v14 * v14) + v15;
      --v5;
    }

    while (v5);
  }

  return this;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::updateCovObj1x1LogDet(uint64_t a1, float *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = (*a2 / a3) - ((a2[2] * a2[2]) / (a3 * a3));
    if (v4 < a2[1])
    {
      v4 = a2[1];
    }

    if (v4 <= 0.0)
    {
      v5 = -3.4028e38;
    }

    else
    {
      v5 = logf(v4);
    }
  }

  else
  {
    v5 = 0.0;
  }

  a2[3] = v5;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::updateCovObj2x2LogDet(double a1, int32x4_t a2, uint64_t a3, float32x4_t *a4, unsigned int a5)
{
  if (a5)
  {
    *&a1 = (a5 * a5);
    a2.i64[0] = a4[2].i64[0];
    v6 = vzip1q_s32(a2, a2);
    v6.i32[2] = a2.i32[0];
    v7 = vmulq_f32(v6, vzip1q_s32(a2, vdupq_lane_s32(*a2.i8, 1)));
    v8 = vdivq_f32(v7, vdupq_lane_s32(*&a1, 0));
    v7.f32[0] = a5;
    v9 = vsubq_f32(vdivq_f32(*a4, vdupq_lane_s32(*v7.f32, 0)), v8);
    v10 = vmuls_lane_f32(-v9.f32[1], v9, 2) + (v9.f32[0] * v9.f32[3]);
    v11 = logf(v10);
    if (v10 <= 0.0)
    {
      v11 = -3.4028e38;
    }
  }

  else
  {
    v11 = 0.0;
  }

  a4[2].f32[2] = v11;
}

float PalmRejection::ClusterWithGaussianMixtureModelStep::updateClusterCovColLogDet(uint64_t a1, float32x4_t *a2, double a3, int32x4_t a4)
{
  a2[3].i32[3] = 0;
  v4 = a2[4].u16[0];
  if (v4 >= 1)
  {
    PalmRejection::ClusterWithGaussianMixtureModelStep::updateCovObj2x2LogDet(a3, a4, a1, a2 + 1, v4);
    a2[3].f32[3] = a2[3].f32[2] + a2[3].f32[3];
    PalmRejection::ClusterWithGaussianMixtureModelStep::updateCovObj1x1LogDet(v6, a2->f32, a2[4].u16[0]);
    *&a3 = a2->f32[3] + a2[3].f32[3];
    a2[3].i32[3] = LODWORD(a3);
  }

  return *&a3;
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::swapAndScore(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, double a5, int32x4_t a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27[0] = a2 + 68;
  v25[0] = a3;
  v25[1] = a3 + 68;
  v7 = *(a4 + 384);
  if (v7 == 1)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v27;
  }

  v9 = v25[v7 != 1];
  v10 = v27[v7 - 1];
  v11 = v25[v7];
  v12 = *v8;
  v12[1].f32[0] = v9[4] + *(a4 + 272);
  v12[1].f32[1] = v9[5] + *(a4 + 276);
  v12[1].f32[2] = v9[6] + *(a4 + 280);
  v12[1].f32[3] = v9[7] + *(a4 + 284);
  v12[3].f32[0] = v9[12] + *(a4 + 304);
  v12[3].f32[1] = v9[13] + *(a4 + 308);
  *(v10 + 16) = v11[4] - *(a4 + 272);
  *(v10 + 20) = v11[5] - *(a4 + 276);
  *(v10 + 24) = v11[6] - *(a4 + 280);
  *(v10 + 28) = v11[7] - *(a4 + 284);
  *(v10 + 48) = v11[12] - *(a4 + 304);
  *(v10 + 52) = v11[13] - *(a4 + 308);
  v13 = *(a4 + 260);
  v12->f32[0] = *v9 + *(a4 + 256);
  v12->i32[1] = v13;
  v12->f32[2] = v9[2] + *(a4 + 264);
  *v10 = *v11 - *(a4 + 256);
  *(v10 + 4) = v13;
  a6.i32[0] = *(a4 + 264);
  *&a5 = v11[2] - *a6.i32;
  *(v10 + 8) = LODWORD(a5);
  v14 = v26;
  v15 = v27[0];
  if (v7 == 1)
  {
    v16 = v26;
  }

  else
  {
    v16 = v27[0];
  }

  v17 = v25[v7];
  v16[4].i16[0] = *(v25[v7 != 1] + 64) + 1;
  *(v27[v7 - 1] + 64) = *(v17 + 64) - 1;
  *&v18 = PalmRejection::ClusterWithGaussianMixtureModelStep::updateClusterCovColLogDet(a1, v14, a5, a6);
  PalmRejection::ClusterWithGaussianMixtureModelStep::updateClusterCovColLogDet(v19, v15, v18, v20);
  v21 = a2[4].i16[0];
  v22 = a2[8].i16[2];
  v23 = (v22 + v21);
  if (v23 >= 3)
  {
    a2[8].f32[2] = ((a2[8].f32[0] * v22) + (a2[3].f32[3] * v21)) / (v23 + v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void PalmRejection::ClusterWithGaussianMixtureModelStep::GMMGreedySwap(os_log_t log, float a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_2653C2000, log, OS_LOG_TYPE_DEBUG, "Clustering after done with swaps: max_diff = %f", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void Device0x039AlgsFireflyCalBlobHandler::Device0x039AlgsFireflyCalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v14 + 32) = a4;
  *(v14 + 40) = a3;
  *(v14 + 16) = 1;
  *(v14 + 24) = 3240;
  *v14 = &unk_2876EEA40;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  *(v14 + 72) = a8;
}

uint64_t Device0x039AlgsFireflyCalBlobHandler::injectBuffer(Device0x039AlgsFireflyCalBlobHandler *this, const unsigned __int8 *a2)
{
  result = (*(*this + 40))(this);
  if (!**(this + 4))
  {
    Device0x039AlgsFireflyCalBlobHandler::loadBloomingParams(this, a2, v5);
    v6 = *(this + 7);
    v7 = *(this + 8);
    *(v6 + 2) = *(a2 + 66) >> 1;
    *(v6 + 6) = *(a2 + 67) >> 1;
    v7[144] = a2[136];
    v7[146] = a2[138];
    v7[145] = a2[137];
    v7[147] = a2[139];

    return Device0x039AlgsFireflyCalBlobHandler::loadLutParams(this, a2);
  }

  return result;
}

uint64_t Device0x039AlgsFireflyCalBlobHandler::loadBloomingParams(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 48);
  v4 = *(v3 + 1);
  v5 = (v4 + *v3);
  if (v4 + *v3)
  {
    v6 = result;
    v7 = 0;
    v29 = a2 + 3211;
    v30 = a2 + 3229;
    v27 = a2 + 3202;
    v28 = a2 + 3220;
    v8 = a2 + 2482;
    v9 = a2 + 1942;
    do
    {
      v10 = *(*(v6 + 72) + 635);
      if (v10 <= v7)
      {
        v11 = v7 - v10 + 7;
      }

      else
      {
        v11 = v7;
      }

      v12 = v11;
      if (*(v3 + 68))
      {
        v13 = 0;
        v14 = (1 << *(v30 + v11));
        LOBYTE(a3) = *(v29 + v11);
        v15 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v8 + 80 * v12 + v13);
          v16 = ((v14 - LODWORD(a3)) + v15) / v14;
          v18 = *(v3 + 40);
          v17 = v3 + 40;
          v19 = (*(v18 + 8))(v17);
          result = (*(*v17 + 24))(v17);
          *(v19 + 4 * (v13++ + v7 * result)) = v16;
          v3 = *(v6 + 48);
        }

        while (v13 < *(v3 + 68));
      }

      if (*(v3 + 132))
      {
        v20 = 0;
        v21 = (1 << *(v28 + v12));
        LOBYTE(a3) = *(v27 + v12);
        v22 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v9 + 60 * v12 + v20);
          v23 = ((v21 - LODWORD(a3)) + v22) / v21;
          v25 = *(v3 + 104);
          v24 = v3 + 104;
          v26 = (*(v25 + 8))(v24);
          result = (*(*v24 + 24))(v24);
          *(v26 + 4 * (v20++ + v7 * result)) = v23;
          v3 = *(v6 + 48);
        }

        while (v20 < *(v3 + 132));
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t Device0x039AlgsFireflyCalBlobHandler::loadLutParams(uint64_t result, uint64_t a2)
{
  v46 = result;
  v2 = *(result + 72);
  if (*(v2 + 632) == 1)
  {
    v3 = (*(v2 + 636) + *(v2 + 635));
  }

  else
  {
    v3 = 1;
  }

  v4 = *(result + 40);
  v5 = (v4[7] / v4[8]) * 1000.0;
  v6 = *(a2 + 140);
  *(v2 + 4) = v5 / (v6 - 1);
  *v2 = v6;
  v45 = v3;
  if (v3)
  {
    v7 = 0;
    v41 = v2;
    v42 = a2;
    v8 = v2 + 56;
    v43 = a2 + 142;
    do
    {
      v9 = *(*(v46 + 72) + 635);
      v10 = (*(*v8 + 8))(v8);
      *(v10 + 4 * (*(*v8 + 24))(v8) * v7) = 0;
      v11 = (*(*v8 + 8))(v8);
      result = (*(*v8 + 24))(v8);
      *(v11 + 4 * (v6 - 1 + result * v7)) = 0;
      if (v6 >= 4)
      {
        v12 = 0;
        v13 = v7 - v9 + 7;
        if (v7 < v9)
        {
          v13 = v7;
        }

        v14 = v43 + 200 * v13;
        v15 = 1;
        v16 = v6 - 2;
        do
        {
          v17 = (v5 * *(v14 + 2 * v12)) / 32767.0;
          v18 = (*(*v8 + 8))(v8);
          *(v18 + 4 * (v15 + v7 * (*(*v8 + 24))(v8))) = v17;
          v19 = (*(*v8 + 8))(v8);
          v20 = -*(v19 + 4 * (v15 + v7 * (*(*v8 + 24))(v8)));
          v21 = (*(*v8 + 8))(v8);
          result = (*(*v8 + 24))(v8);
          *(v21 + 4 * (v16 + v7 * result)) = v20;
          ++v12;
          --v16;
          ++v15;
        }

        while ((v6 - 2 + (((v6 - 2) & 0x8000) >> 15)) >> 1 > v12);
      }

      if (v6)
      {
        v22 = (*(*v8 + 8))(v8);
        result = (*(*v8 + 24))(v8);
        *(v22 + 4 * ((v6 >> 1) + result * v7)) = 0;
      }

      ++v7;
      v3 = v45;
    }

    while (v7 != v45);
    v4 = *(v46 + 40);
    v2 = v41;
    a2 = v42;
  }

  v23 = (v4[5] / v4[6]) * 1000.0;
  v24 = *(a2 + 141);
  *(v2 + 8) = v23 / (v24 - 1);
  *(v2 + 1) = v24;
  if (v3)
  {
    v25 = 0;
    v26 = v2 + 120;
    v44 = a2 + 142;
    do
    {
      v27 = *(*(v46 + 72) + 635);
      v28 = (*(*v26 + 8))(v26);
      *(v28 + 4 * (*(*v26 + 24))(v26) * v25) = 0;
      v29 = (*(*v26 + 8))(v26);
      result = (*(*v26 + 24))(v26);
      *(v29 + 4 * (v24 - 1 + result * v25)) = 0;
      if (v24 >= 4)
      {
        v30 = 0;
        v31 = v25 - v27 + 7;
        if (v25 < v27)
        {
          v31 = v25;
        }

        v32 = 1;
        v33 = v44 + 200 * v31;
        v34 = v24 - 2;
        do
        {
          v35 = (v23 * *(v33 + 2 * v30 + 100)) / 32767.0;
          v36 = (*(*v26 + 8))(v26);
          *(v36 + 4 * (v32 + v25 * (*(*v26 + 24))(v26))) = v35;
          v37 = (*(*v26 + 8))(v26);
          v38 = -*(v37 + 4 * (v32 + v25 * (*(*v26 + 24))(v26)));
          v39 = (*(*v26 + 8))(v26);
          result = (*(*v26 + 24))(v26);
          *(v39 + 4 * (v34 + v25 * result)) = v38;
          ++v30;
          --v34;
          ++v32;
        }

        while ((v24 - 2 + (((v24 - 2) & 0x8000) >> 15)) >> 1 > v30);
      }

      if (v24)
      {
        v40 = (*(*v26 + 8))(v26);
        result = (*(*v26 + 24))(v26);
        *(v40 + 4 * ((v24 >> 1) + result * v25)) = 0;
      }

      ++v25;
    }

    while (v25 != v45);
  }

  return result;
}

void Device0x038AlgsFireflyCalBlobHandler::Device0x038AlgsFireflyCalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v14 + 32) = a4;
  *(v14 + 40) = a3;
  *(v14 + 16) = 1;
  *(v14 + 24) = 3240;
  *v14 = &unk_2876EEA98;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  *(v14 + 72) = a8;
}

uint64_t Device0x038AlgsFireflyCalBlobHandler::injectBuffer(Device0x038AlgsFireflyCalBlobHandler *this, const unsigned __int8 *a2)
{
  result = (*(*this + 40))(this);
  if (!**(this + 4))
  {
    Device0x039AlgsFireflyCalBlobHandler::loadBloomingParams(this, a2, v5);
    v6 = *(this + 7);
    v7 = *(this + 8);
    *(v6 + 2) = *(a2 + 66) >> 1;
    *(v6 + 6) = *(a2 + 67) >> 1;
    v7[144] = a2[136];
    v7[146] = a2[138];
    v7[145] = a2[137];
    v7[147] = a2[139];

    return Device0x039AlgsFireflyCalBlobHandler::loadLutParams(this, a2);
  }

  return result;
}

void PalmRejection::ParseContactDataStep::ParseContactDataStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v15 = &unk_2876EEAF0;
  v15[10] = a2;
  v15[11] = a3;
  v15[12] = a4;
  v15[13] = a5;
  v15[14] = a6;
  v15[15] = a7;
  v15[16] = a8;
}

uint64_t PalmRejection::ParseContactDataStep::run(PalmRejection::ParseContactDataStep *this)
{
  v2 = *(this + 16);
  *(v2 + 8) = *(*(this + 13) + 24);
  v3 = *(this + 11);
  if (v3[21] == 1)
  {
    **(this + 16) = (*(*v3 + 40))(v3);
    v3 = *(this + 11);
  }

  else
  {
    *v2 = 0;
  }

  *(*(this + 15) + 8436) = **(this + 14);
  if ((*(*v3 + 40))(v3) > 0x14)
  {
    return 1;
  }

  PalmRejection::ParseContactDataStep::updatePathTrkFrameInfo(this);
  PalmRejection::ParseContactDataStep::fillPathTrajectories(this);
  PalmRejection::ParseContactDataStep::updatePathCollectionAndExtrema(this);
  return 0;
}

uint64_t PalmRejection::ParseContactDataStep::updatePathTrkFrameInfo(uint64_t this)
{
  if (**(this + 128))
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    do
    {
      this = (*(*(v1[11] + 32) + 8))();
      v4 = *(this + v2);
      if (v4 <= 0x13)
      {
        v5 = v1[15] + 400 * *(this + v2);
        v6 = *(this + v2 + 2);
        if (v6 > 0xB || (v7 = *(v5 + 58), v7 >= 0xC))
        {
          *(v5 + 58) = v6;
          LOBYTE(v7) = v6;
        }

        *(v1[16] + v4 + 16) = v7;
        *(v5 + 160) = *(this + v2 + 1);
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < *v1[16]);
  }

  return this;
}

void PalmRejection::ParseContactDataStep::fillPathTrajectories(PalmRejection::ParseContactDataStep *this)
{
  v2 = 0;
  v3 = *(this + 15);
  v4 = vdupq_n_s64(0x13uLL);
  do
  {
    v5 = vdupq_n_s64(v2);
    v6 = vorrq_s8(v5, xmmword_26541FD30);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v4, v6)), 2).u8[0])
    {
      v3[457] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), v6)), 2).i8[2])
    {
      v3[857] = 0;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), vorrq_s8(v5, xmmword_26541FD20)))).i32[1])
    {
      v3[1257] = 0;
      v3[1657] = 0;
    }

    v2 += 4;
    v3 += 1600;
  }

  while (v2 != 20);
  PathsFromPreciseContacts = PalmRejection::ParseContactDataStep::loadPathsFromPreciseContacts(this);
  v8 = 468;
  v9 = 19;
  do
  {
    v10 = *(this + 15);
    v11 = v10 + v8;
    if (*(v10 + v8 - 11) < 2u)
    {
      ++*(v11 - 4);
      if (*(v10 + v8))
      {
        PalmRejection::ParseContactDataStep::concludePathTrajectory(PathsFromPreciseContacts, v11 - 68, *(*(this + 13) + 40));
        *(v10 + v8) = 0;
      }
    }

    else
    {
      *(v11 - 4) = 0;
    }

    v8 += 400;
    --v9;
  }

  while (v9);
}

void *PalmRejection::ParseContactDataStep::updatePathCollectionAndExtrema(void *this)
{
  v1 = this;
  v2 = this[12];
  v3 = *(v2 + 28);
  if (*(v2 + 28))
  {
    v4 = *(this[13] + 24);
    v5 = this[15];
    if (v4 - *(v5 + 8096) <= v3)
    {
      v6 = 0;
    }

    else
    {
      *(v5 + 8096) = v4;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v5 = this[15];
  }

  v7 = 0;
  *(v5 + 8108) = *(v5 + 8104);
  *(v5 + 8104) = 0;
  *(v5 + 8082) = *(v5 + 8080);
  *(v5 + 8086) = *(v5 + 8084);
  *(v5 + 8092) = *(v5 + 8090);
  *(v5 + 8080) = 0;
  *(v5 + 8084) = 0;
  *(v5 + 8094) = 0;
  v8 = 19;
  *(v5 + 8088) = 0;
  do
  {
    v9 = *(v1 + 120);
    v10 = v9 + v7;
    v11 = *(v9 + v7 + 408);
    if (v11 <= 0.0)
    {
      if (*(v10 + 464) == 1)
      {
        this = PalmRejection::ParseContactDataStep::concludePathTransitions(v1, v10 + 400);
      }
    }

    else
    {
      ++*(v9 + 8080);
      *(v9 + 8104) = (v11 + *(v9 + 8104));
      v12 = *(v10 + 468);
      if (v12 == 1 || *(v9 + v7 + 512) == 1)
      {
        v13 = v9 + v7;
        *(v13 + 580) = 1065353216;
        *(v13 + 572) = 0;
        *(v9 + v7 + 564) = 0;
        *(v9 + v7 + 604) = 0;
        v14 = *(v10 + 400);
        if (v12 == 1)
        {
          *(v13 + 620) = v14;
          *(v13 + 612) = v14;
        }

        *(v13 + 636) = v14;
        *(v13 + 628) = v14;
        *(v13 + 644) = 0;
      }

      PalmRejection::ParseContactDataStep::updatePathExtrema(v1, v10 + 400, v6);
      this = PalmRejection::ParseContactDataStep::detectPathTransitions(v1, (v10 + 400));
    }

    v15 = v9 + v7;
    v16 = *(v9 + v7 + 468);
    if (v16 == 1)
    {
      v17 = *(v1 + 120);
      ++v17[4047];
      if (*(v15 + 536) == *(v15 + 528))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (*(v15 + 464) != 1)
      {
        if (!v16)
        {
          goto LABEL_26;
        }

        v17 = *(v1 + 120);
        if (v16 == 2)
        {
          ++v17[4044];
        }

LABEL_25:
        ++v17[4045];
        goto LABEL_26;
      }

      v17 = *(v1 + 120);
      ++v17[4047];
      if (v16)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    if (*(v9 + v7 + 560) - 3 <= 1)
    {
      ++*(*(v1 + 120) + 8084);
    }

    v7 += 400;
    --v8;
  }

  while (v8);
  return this;
}

uint64_t PalmRejection::ParseContactDataStep::loadPathsFromPreciseContacts(uint64_t this)
{
  if (**(this + 128))
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    v4 = vdup_n_s32(0x43800000u);
    v5 = vdup_n_s32(0x447A0000u);
    while (1)
    {
      this = (*(*(*(v1 + 88) + 32) + 8))();
      if (*(this + v2) <= 0x13uLL)
      {
        break;
      }

LABEL_13:
      ++v3;
      v2 += 48;
      if (v3 >= **(v1 + 128))
      {
        return this;
      }
    }

    v6 = this;
    v7 = *(v1 + 120) + 400 * *(this + v2);
    v8 = this + v2;
    v9 = *(this + v2 + 32);
    if (v9 > 0.0)
    {
      *(v7 + 57) = v3 + 2;
      v10 = *(v7 + 68);
      *(v7 + 68) = v10 + 1;
      if (v10)
      {
        v17 = LODWORD(v9);
        v11 = *(v7 + 8);
        *(v7 + 40) = *v7;
        *(v7 + 388) = v11;
LABEL_9:
        *v7 = *(v8 + 4);
        v12 = vdiv_f32(vmul_f32(*(v8 + 12), v4), v5);
        *(v7 + 20) = v12;
        *(v7 + 32) = sqrtf(vmuls_lane_f32(v12.f32[1], v12, 1) + (v12.f32[0] * v12.f32[0]));
        *(v7 + 36) = atan2f(v12.f32[1], v12.f32[0]);
        v13.i32[0] = v17;
        v13.i32[1] = *(v8 + 36);
        v14 = vcvt_f32_s32(vshr_n_s32(vshl_n_s32(vcvt_n_s32_f32(v13, 8uLL), 0x10uLL), 0x10uLL));
        *(v7 + 8) = v14;
        v15 = *(*(v1 + 104) + 40);
        if (v15 < 1)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = (((v14.f32[0] - *(v7 + 388)) * 12.0) * 10.0) / v15;
        }

        *(v7 + 28) = v16;
        v18 = *(v6 + v2 + 28);
        v19 = *(v6 + v2 + 20);
        this = PalmRejection::ParseContactDataStep::validPathUpdatePrevAndSmooth(v1, v7, &v18);
        goto LABEL_13;
      }

      *(v7 + 32) = 0;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      v9 = *(v8 + 32);
    }

    v17 = LODWORD(v9);
    goto LABEL_9;
  }

  return this;
}

void PalmRejection::ParseContactDataStep::concludePathTrajectory(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 48) = *(a2 + 32);
  *(a2 + 40) = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a3 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = ((*(a2 + 388) * -12.0) * 10.0) / a3;
  }

  *(a2 + 28) = v3;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = atan2f(0.0, 0.0);
}

uint64_t PalmRejection::ParseContactDataStep::validPathUpdatePrevAndSmooth(uint64_t result, uint64_t a2, float *a3)
{
  v4 = *(result + 96);
  v5 = *(v4 + 4);
  v6 = a3[1];
  v7 = a3[2];
  if (v7 <= v5)
  {
    v8 = 1.0;
    if (v6 > v5)
    {
      v8 = v6 / v5;
    }
  }

  else
  {
    v8 = v6 / v7;
  }

  a3[4] = v8;
  if (*(a2 + 68) == 1)
  {
    v9 = *(a2 + 12);
    *(a2 + 388) = *(a2 + 8);
    *(a2 + 392) = v9;
    *(a2 + 52) = v9;
    v10 = *(a3 + 4);
    v11 = *(a3 + 1);
    *(a2 + 72) = *a3;
    *(a2 + 88) = v11;
    *(a2 + 104) = v10;
  }

  else if ((*(v4 + 39) & 4) != 0)
  {
    v14 = *a3;
    v15 = *(a3 + 1);
    *(a2 + 104) = *(a3 + 4);
    *(a2 + 88) = v15;
    *(a2 + 72) = v14;
  }

  else
  {
    v13 = *(a3 + 1);
    v17[0] = *a3;
    HIDWORD(v12) = DWORD1(v17[0]);
    v17[1] = v13;
    v18 = *(a3 + 4);
    LODWORD(v12) = *(v4 + 12);
    result = PalmRejection::ParseContactDataStep::smoothEllipseAxes(result, v17, (a2 + 72), v12);
    *(a2 + 112) = 0;
  }

  v16 = *(a2 + 12);
  if (v16 > *(a2 + 52))
  {
    *(a2 + 52) = v16;
  }

  return result;
}

uint64_t PalmRejection::ParseContactDataStep::smoothEllipseAxes(uint64_t a1, uint64_t a2, float *a3, double a4)
{
  v5 = *(a2 + 16);
  v6 = *(*(a1 + 96) + 8);
  v7 = a3[4];
  v8 = a3[1];
  v9 = *(a2 + 4);
  v10 = vabds_f32(v8, v9);
  if (v10 <= (v8 * 0.125))
  {
    v11 = *&a4;
  }

  else
  {
    v11 = 1.0;
    if (v10 <= (v8 * 0.25))
    {
      v11 = (*&a4 + 1.0) * 0.5;
    }
  }

  v12 = (v8 * (1.0 - v11)) + (v11 * v9);
  v13 = ((1.0 - v11) * a3[2]) + (v11 * *(a2 + 8));
  a3[1] = v12;
  a3[2] = v13;
  a3[4] = (v7 * (1.0 - v11)) + (v11 * v5);
  if (v5 <= v6)
  {
    LODWORD(a4) = 1070141403;
  }

  else
  {
    LODWORD(a4) = *a2;
    if (v7 > v6 && v11 < 1.0)
    {
      *&a4 = alg_AverageAngles0_180(a4, *a3, 1);
    }
  }

  *a3 = *&a4;
  return 0;
}

void PalmRejection::ParseContactDataStep::updatePathExtrema(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 208);
  v5 = *(a2 + 8);
  if (v4 < v5 || (*(a2 + 112) & 1) != 0)
  {
    v6 = (v4 >= v5) | *(a2 + 112);
    *(a2 + 208) = v5;
  }

  else
  {
    v6 = 0;
  }

  PalmRejection::ParseContactDataStep::sustainPeakEllipseAxes(a1, a2 + 72, a3, v6 & 1, a2 + 164, (a2 + 204), *a2, *(a2 + 4), *(a2 + 12));
  v7 = *a2;
  if (*a2 > *(a2 + 228))
  {
    *(a2 + 228) = v7;
  }

  if (v7 < *(a2 + 236))
  {
    *(a2 + 236) = v7;
  }

  v8 = *(a2 + 4);
  if (v8 > *(a2 + 232))
  {
    *(a2 + 232) = v8;
  }

  if (v8 < *(a2 + 240))
  {
    *(a2 + 240) = v8;
  }

  v9 = *(a2 + 76);
  if (v9 <= 6600.0)
  {
    v10 = *(a2 + 244);
  }

  else
  {
    v10 = (v9 + -6600.0) + *(a2 + 244);
  }

  v11 = v10 + -100.0;
  v12 = v10 <= 100.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *(a2 + 244) = v13;
}

uint64_t PalmRejection::ParseContactDataStep::detectPathTransitions(uint64_t a1, void *a2)
{
  if (*(a2 + 17) == 1)
  {
    *(a2 + 220) = *a2;
    a2[16] = *(*(a1 + 104) + 24);
    if (*(*(a1 + 120) + 8082) <= 0)
    {
      return PalmRejection::ParseContactDataStep::detectAndSetPathMake(a1, a2);
    }
  }

  else
  {
    if (a2[17] <= a2[18])
    {
      return PalmRejection::ParseContactDataStep::detectAndSetPathMake(a1, a2);
    }

    if (*(a2 + 3) < (*(*(a1 + 96) + 24) * *(*(a1 + 96) + 16) / 256) && *(a2 + 2) < *(a2 + 97))
    {
      a2[18] = *(*(a1 + 104) + 24);
    }
  }

  return a1;
}

uint64_t PalmRejection::ParseContactDataStep::concludePathTransitions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  if (v3 >= v2 && *(a2 + 144) < v3)
  {
    *(a2 + 144) = *(*(result + 104) + 24);
  }

  if (*(a2 + 152) <= v2)
  {
    *(a2 + 152) = *(*(result + 104) + 24);
  }

  *(a2 + 76) = 0;
  *(a2 + 80) = 0;
  return result;
}

void PalmRejection::ParseContactDataStep::sustainPeakEllipseAxes(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, float *a6, float a7, float a8, float a9)
{
  if (*(a5 + 8) > 0.0 && (*(a5 + 4) > 0.0 ? (_ZF = a4 == 0) : (_ZF = 0), _ZF))
  {
    v15 = *(*(a1 + 96) + 12);
    if (PalmRejection::PalmRejSurfaceUtil::computeMinDistToEdges(*(a1 + 80), 62, a7, a8) > *(*(a1 + 96) + 32))
    {
      if (a3)
      {
        __asm { FMOV            V1.2S, #-10.0 }

        v16 = COERCE_DOUBLE(vadd_f32(*(a5 + 4), _D1));
        *(a5 + 4) = v16;
      }

      v21 = *(a2 + 16);
      v22 = *(a5 + 16);
      if (v21 > v22)
      {
        *(a5 + 16) = ((1.0 - v15) * v22) + (v15 * v21);
      }

      v23 = *(a2 + 8);
      v24 = *(a5 + 8);
      if (v23 > v24)
      {
        *(a5 + 8) = ((1.0 - v15) * v24) + (v15 * v23);
      }

      v25 = *(a2 + 4);
      v26 = *(a5 + 4);
      if (v25 > v26)
      {
        *(a5 + 4) = ((1.0 - v15) * v26) + (v15 * v25);
      }

      if (*a6 < a9)
      {
        *a6 = (((1.0 - v15) * *a6) + (v15 * a9));
      }

      LODWORD(v16) = *a2;
      *a5 = alg_AverageAngles0_180(v16, *a5, 1);
    }
  }

  else
  {
    *(a5 + 16) = *(a2 + 16);
    *(a5 + 8) = *(a2 + 8);
    *a5 = *a2;
    *a6 = a9;
  }
}

BOOL PalmRejection::ParseContactDataStep::detectAndSetPathMake(uint64_t a1, void *a2)
{
  result = PalmRejection::ParseContactDataStep::isPathAboveMakeThreshold(a1, a2, (*(*(a1 + 120) + 8000) >> 4) & 1);
  if (result)
  {
    a2[17] = *(*(a1 + 104) + 24);
    *(a2 + 220) = *a2;
  }

  return result;
}

BOOL PalmRejection::ParseContactDataStep::isPathAboveMakeThreshold(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 96);
  if (*(a2 + 8) < v3[5])
  {
    return 0;
  }

  v5 = v3[4];
  v6 = *(a2 + 12);
  result = v6 >= v5;
  if (v6 < v5 && a3 != 0)
  {
    if (*(a2 + 58) - 1 > 4)
    {
      return 0;
    }

    return *(a2 + 12) >= (((v3[6] + 256.0) * 0.5) * v5 / 256);
  }

  return result;
}

void PalmRejection::ParseContactDataStep::~ParseContactDataStep(PalmRejection::ParseContactDataStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::CalculateMetaClassifierProbabilitiesStep::CalculateMetaClassifierProbabilitiesStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v9 = &unk_2876EEB40;
  v9[10] = a2;
  v9[11] = a3;
  v9[12] = a4;
  v9[13] = a5;
}

uint64_t PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(_BOOL8 this)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = (this + 104);
  v1 = *(this + 104);
  *v1 = 0;
  *(v1 + 8) = 0;
  v3 = *(this + 96);
  if (!*(v3 + 1148))
  {
    goto LABEL_58;
  }

  v4 = this;
  v5 = *(this + 88);
  v6 = v3 + 1524;
  if (*(v3 + 1712) >= *(v3 + 1512))
  {
    v7 = v3 + 1524;
    v6 = v3 + 1324;
  }

  else
  {
    *(v3 + 1728) = vrev64_s32(*(v3 + 1728));
    *(v3 + 1744) = vrev64_s32(*(v3 + 1744));
    v7 = v3 + 1324;
  }

  v8 = *(v3 + 1150);
  if (v8 >= 2)
  {
    v9 = SALoggingGeneral();
    this = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (this)
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run((v3 + 1724), v3);
    }

    LOWORD(v8) = *(v3 + 1150);
  }

  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v68 = 0u;
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v65 = 0u;
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      if (v8 < 3)
      {
        v39 = *v2;
        *v39 = 0;
        v39[2] = 0.0;
        goto LABEL_33;
      }

      v24 = fminf(*(v3 + 1724), 200000.0);
      *(v3 + 1724) = v24;
      LODWORD(v65) = 1065353216;
      v25 = *(v5 + 8396);
      DWORD1(v65) = *(v5 + 8392);
      *(&v65 + 2) = v25;
      *(&v65 + 3) = (v25 + 1.0) / (*(&v65 + 1) + 1.0);
      *&v66 = vrev64_s32(*(v3 + 1152));
      v26 = *(v3 + 1176);
      DWORD2(v66) = *(v5 + 8404);
      HIDWORD(v66) = v26;
      v27 = *(v3 + 1188);
      LODWORD(v67[0]) = *(v3 + 1168);
      DWORD1(v67[0]) = v27;
      DWORD2(v67[0]) = *(v3 + 1172);
      LODWORD(v28) = *(v3 + 1164);
      DWORD1(v28) = *(v3 + 1192);
      *(&v28 + 1) = *(v6 + 188);
      *(v67 + 12) = v28;
      *&v28 = *(v7 + 188);
      *&v29 = *(v6 + 176);
      *(&v28 + 1) = *(v6 + 168);
      *(&v67[1] + 12) = v28;
      HIDWORD(v67[2]) = *v6;
      DWORD2(v29) = *(v6 + 84);
      HIDWORD(v29) = *(v7 + 168);
      LODWORD(v28) = *(v7 + 172);
      DWORD1(v28) = *v7;
      *(&v28 + 1) = *(v7 + 176);
      v67[3] = v29;
      v68 = v28;
      LODWORD(v69[0]) = *(v7 + 84);
      *(v69 + 1) = v24;
      *(v69 + 8) = *(v3 + 1728);
      *(&v69[1] + 1) = *(v3 + 1744);
      v70 = *(v3 + 1752);
      if (*(v3 + 1784))
      {
        v30 = 1;
      }

      else
      {
        v30 = *(v3 + 901);
      }

      v44 = *(v4 + 80);
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::calProbForThreeScenarios(this, v30 & 1, 0x25u, &v65, (v44 + 1056), (v44 + 1204), (v44 + 1352), (v44 + 1500), (v44 + 1648), (v44 + 1796), *(v4 + 104));
      v33 = *(v4 + 104);
      v45 = *(v5 + 8404);
      v46 = v33[1].f32[0];
      *v47.i32 = vaddv_f32(*v33) + v46;
      v48 = vdiv_f32(*v33, vdup_lane_s32(v47, 0));
      *v33 = v48;
      v33[1].f32[0] = v46 / *v47.i32;
      if (v45 < 0.0000001)
      {
        v38 = v48.f32[0] + v48.f32[0];
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v10 = *(v4 + 88) + 400 * *(*(v4 + 88) + 8292);
    v11 = fminf(*(v10 + 344), *(v10 + 348));
    LODWORD(v65) = 1065353216;
    v12 = *(v5 + 8396);
    DWORD1(v65) = *(v5 + 8392);
    *(&v65 + 2) = v12;
    *(&v65 + 3) = (v12 + 1.0) / (*(&v65 + 1) + 1.0);
    *&v66 = vrev64_s32(*(v3 + 1152));
    v13 = *(v3 + 1176);
    DWORD2(v66) = *(v5 + 8404);
    HIDWORD(v66) = v13;
    LODWORD(v67[0]) = *(v3 + 1168);
    v14 = *(v3 + 572);
    DWORD1(v67[0]) = *(v10 + 372);
    DWORD2(v67[0]) = v14;
    *(v67 + 3) = fminf(v11 + 1000.0, 0.0) * *(v10 + 172);
    if (*(v3 + 1784) == 1)
    {
      v15 = *(v4 + 80);
    }

    else
    {
      v15 = *(v4 + 80);
      if (*(v3 + 901) != 1)
      {
        v31 = v15 + 456;
        goto LABEL_25;
      }
    }

    v31 = v15 + 408;
LABEL_25:
    v40 = 0;
    v41 = 0.0;
    do
    {
      v42 = vmulq_f32(*(&v65 + v40), *(v31 + v40));
      v41 = (((v41 + v42.f32[0]) + v42.f32[1]) + v42.f32[2]) + v42.f32[3];
      v40 += 16;
    }

    while (v40 != 48);
    v43 = 1.0 / (expf(-v41) + 1.0);
    v33 = *v2;
    v33->f32[0] = v43;
    v33->f32[1] = 1.0 - v43;
    v33[1].i32[0] = 0;
    if (*(v5 + 8404) < 0.0000001)
    {
      v38 = v43 * 3.0;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v16 = *(v5 + 8404);
  v18 = expf(fmaxf((*(v5 + 8416) - 5), 0.0) * -0.4);
  LODWORD(v65) = 1065353216;
  v19 = *(v5 + 8396);
  DWORD1(v65) = *(v5 + 8392);
  *(&v65 + 2) = v19;
  *(&v65 + 3) = (v19 + 1.0) / (*(&v65 + 1) + 1.0);
  *&v66 = vrev64_s32(*(v3 + 1152));
  v20 = *(v3 + 1176);
  *(&v66 + 2) = v16 * v18;
  HIDWORD(v66) = v20;
  v21 = *(v3 + 1188);
  LODWORD(v67[0]) = *(v3 + 1168);
  DWORD1(v67[0]) = v21;
  LODWORD(v22) = *(v3 + 1172);
  DWORD1(v22) = *(v3 + 1164);
  *(&v22 + 1) = *(v3 + 1180);
  *(v67 + 8) = v22;
  LODWORD(v22) = *(v3 + 1196);
  DWORD1(v22) = *(v3 + 1724);
  *(&v22 + 1) = *(v3 + 1728);
  *(&v67[1] + 8) = v22;
  *(&v67[2] + 8) = *(v3 + 1736);
  DWORD2(v67[3]) = *(v3 + 1752);
  if (*(v3 + 1784))
  {
    v23 = 1;
  }

  else
  {
    v23 = *(v3 + 901);
  }

  v32 = *(v4 + 80);
  PalmRejection::CalculateMetaClassifierProbabilitiesStep::calProbForThreeScenarios(v17, v23 & 1, 0x17u, &v65, (v32 + 504), (v32 + 596), (v32 + 688), (v32 + 780), (v32 + 872), (v32 + 964), *(v4 + 104));
  v33 = *(v4 + 104);
  v34 = *(v5 + 8404);
  v35 = v33[1].f32[0];
  *v36.i32 = vaddv_f32(*v33) + v35;
  v37 = vdiv_f32(*v33, vdup_lane_s32(v36, 0));
  *v33 = v37;
  v33[1].f32[0] = v35 / *v36.i32;
  if (v34 < 0.0000001)
  {
    v38 = 2.5 * v37.f32[0];
LABEL_32:
    v33->f32[0] = v38;
  }

LABEL_33:
  if (*(v3 + 1150))
  {
    v49 = SALoggingGeneral();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run((v3 + 1150), v2);
    }

    v50 = SALoggingGeneral();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(&v65);
    }

    v51 = SALoggingGeneral();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(&v65);
    }

    v52 = SALoggingGeneral();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(&v65);
    }

    v53 = SALoggingGeneral();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(&v65);
    }

    v54 = SALoggingGeneral();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(&v65);
    }

    if (*(v3 + 1150))
    {
      v55 = *v2;
      v56 = (*v2)[2];
      if (v56 <= 0.3)
      {
        v58 = v55[1];
        if ((v56 * 3.0) <= v58)
        {
          v60 = *v55;
          v61 = SALoggingGeneral();
          v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG);
          if (v60 <= v58)
          {
            if (v62)
            {
              PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(v2);
            }
          }

          else if (v62)
          {
            PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(v2);
          }
        }

        else
        {
          v59 = SALoggingGeneral();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(v2);
          }
        }
      }

      else
      {
        v57 = SALoggingGeneral();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(v2);
        }
      }
    }
  }

LABEL_58:
  v63 = *MEMORY[0x277D85DE8];
  return 0;
}

float PalmRejection::CalculateMetaClassifierProbabilitiesStep::calProbForThreeScenarios(PalmRejection::CalculateMetaClassifierProbabilitiesStep *this, int a2, unsigned int a3, const float *a4, float *a5, float *a6, float *a7, float *a8, const float *a9, const float *a10, float *a11)
{
  v13 = a4;
  if (!a2)
  {
    a5 = a6;
  }

  v17 = 0.0;
  v18 = 0.0;
  if (a3)
  {
    v19 = a3;
    v20 = a4;
    do
    {
      v21 = *v20++;
      v22 = v21;
      v23 = *a5++;
      v18 = v18 + (v22 * v23);
      --v19;
    }

    while (v19);
  }

  *a11 = 1.0 / (expf(-v18) + 1.0);
  if (a2)
  {
    v24 = a7;
  }

  else
  {
    v24 = a8;
  }

  if (a3)
  {
    v25 = a3;
    v17 = 0.0;
    v26 = v13;
    do
    {
      v27 = *v26++;
      v28 = v27;
      v29 = *v24++;
      v17 = v17 + (v28 * v29);
      --v25;
    }

    while (v25);
  }

  a11[1] = 1.0 / (expf(-v17) + 1.0);
  if (!a2)
  {
    a9 = a10;
  }

  if (a3)
  {
    v31 = a3;
    v32 = 0.0;
    do
    {
      v33 = *v13++;
      v34 = v33;
      v35 = *a9++;
      v32 = v32 + (v34 * v35);
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = 0.0;
  }

  result = 1.0 / (expf(-v32) + 1.0);
  a11[2] = result;
  return result;
}

void PalmRejection::CalculateMetaClassifierProbabilitiesStep::~CalculateMetaClassifierProbabilitiesStep(PalmRejection::CalculateMetaClassifierProbabilitiesStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

double OUTLINED_FUNCTION_2@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  result = **a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 8);
  return result;
}

void PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(float *a1, float *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2[435];
  v4 = a2[432];
  v5 = a2[433];
  v6 = a2[434];
  v9[0] = 134219008;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_2653C2000, v7, OS_LOG_TYPE_DEBUG, "dmin=%f dmax=%f d01=%f d10=%f dist=%f\n", v9, 0x34u);
  v8 = *MEMORY[0x277D85DE8];
}

void PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(__int16 *a1, float **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a2 + 1);
  v4 = OUTLINED_FUNCTION_4(**a2);
  v6 = *(v5 + 8);
  v11[0] = 67109888;
  v11[1] = v7;
  v12 = 2048;
  v13 = v4;
  v14 = 2048;
  v15 = v8;
  v16 = 2048;
  v17 = v6;
  _os_log_debug_impl(&dword_2653C2000, v9, OS_LOG_TYPE_DEBUG, "CalculateMetaClassifierProbabilitiesStep : num_paths_clustering  = %d : Log prob for classes = [%f %f %f]\n", v11, 0x26u);
  v10 = *MEMORY[0x277D85DE8];
}

void PalmRejection::CalculateMetaClassifierProbabilitiesStep::run(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  OUTLINED_FUNCTION_4(*a1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 12);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);
  v7 = *(v5 + 20);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 24);
  v10 = *(v8 + 28);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x52u);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 36);
  OUTLINED_FUNCTION_4(*(a1 + 32));
  v3 = *(v2 + 40);
  v4 = *(v2 + 44);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 56);
  v10 = *(v8 + 60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x52u);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 68);
  OUTLINED_FUNCTION_4(*(a1 + 64));
  v3 = *(v2 + 72);
  v4 = *(v2 + 76);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 88);
  v10 = *(v8 + 92);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x52u);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 100);
  OUTLINED_FUNCTION_4(*(a1 + 96));
  v3 = *(v2 + 104);
  v4 = *(v2 + 108);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 112);
  v7 = *(v5 + 116);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 120);
  v10 = *(v8 + 124);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x52u);
  v16 = *MEMORY[0x277D85DE8];
}

{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 132);
  OUTLINED_FUNCTION_4(*(a1 + 128));
  v3 = *(v2 + 136);
  v4 = *(v2 + 140);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 144);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x34u);
  v12 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void Device0x038P100CalBlobHandler::Device0x038P100CalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v12 + 32) = a4;
  *(v12 + 40) = a3;
  *(v12 + 16) = 1;
  *(v12 + 24) = 1848;
  *v12 = &unk_2876EEB90;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
}

uint64_t Device0x038P100CalBlobHandler::injectBuffer(Device0x038P100CalBlobHandler *this, const unsigned __int8 *a2)
{
  result = (*(*this + 40))(this);
  if (!**(this + 4))
  {
    Device0x038P100CalBlobHandler::loadBloomingParams(this, a2, v5);
    Device0x038P100CalBlobHandler::loadMeasurementParams(this, a2);

    return Device0x038P100CalBlobHandler::loadLutParams(this, a2);
  }

  return result;
}

uint64_t Device0x038P100CalBlobHandler::loadBloomingParams(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 48);
  v4 = v3[1];
  if (v3[1])
  {
    v5 = result;
    v6 = 0;
    v26 = a2 + 1840;
    v27 = a2 + 1844;
    v7 = a2 + 1678;
    v24 = a2 + 1838;
    v25 = a2 + 1842;
    v8 = a2 + 1558;
    do
    {
      v9 = *v3;
      if (*(v3 + 17))
      {
        v10 = 0;
        v11 = (1 << *(v27 + v6));
        LOBYTE(a3) = *(v26 + v6);
        v12 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v7 + v10);
          v13 = ((v11 - LODWORD(a3)) + v12) / v11;
          v15 = *(v3 + 5);
          v14 = v3 + 40;
          v16 = (*(v15 + 8))(v14);
          result = (*(*v14 + 24))(v14);
          *(v16 + 4 * (v10++ + (v9 + v6) * result)) = v13;
          v3 = *(v5 + 48);
        }

        while (v10 < *(v3 + 17));
      }

      if (*(v3 + 33))
      {
        v17 = 0;
        v18 = (1 << *(v25 + v6));
        LOBYTE(a3) = *(v24 + v6);
        v19 = LODWORD(a3);
        do
        {
          LOBYTE(a3) = *(v8 + v17);
          v20 = ((v18 - LODWORD(a3)) + v19) / v18;
          v22 = *(v3 + 13);
          v21 = v3 + 104;
          v23 = (*(v22 + 8))(v21);
          result = (*(*v21 + 24))(v21);
          *(v23 + 4 * (v17++ + (v9 + v6) * result)) = v20;
          v3 = *(v5 + 48);
        }

        while (v17 < *(v3 + 33));
      }

      ++v6;
      v7 += 80;
      v8 += 60;
    }

    while (v6 != v4);
  }

  return result;
}

float Device0x038P100CalBlobHandler::loadMeasurementParams(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (*(v2 + 229))
  {
    v3 = (a2 + 740);
    v4 = (a2 + 752);
    v5 = 728;
    result = 0.0;
    v7 = *(a1 + 56);
    do
    {
      v8 = vcvtd_n_f64_u32(*(v3 - 2), 1uLL) * 0.0009765625;
      v9 = (v5 + *(v7 + 228) + 40);
      *(v2 + 36 + 4 * v9) = v8;
      v10 = *v3++;
      *&v11 = vcvts_n_f32_u32(v10, 1uLL) * 0.00097656;
      *(v2 + 72 + 4 * v9) = *&v11;
      *(v2 + 148 + v9) = *(v4 - 24);
      *(v2 + 166 + v9) = *(v4 - 20);
      *(v2 + 157 + v9) = *(v4 - 22);
      *(v2 + 175 + v9) = *(v4 - 18);
      *(v2 + 108 + v9) = *(v4 - 8);
      *(v2 + 126 + v9) = *(v4 - 4);
      *(v2 + 117 + v9) = *(v4 - 6);
      *(v2 + 135 + v9) = *(v4 - 2);
      LOBYTE(v11) = *v4;
      *(v2 + 4 * v9) = (v11 * -0.0039062) + 1.0;
      v7 = *(a1 + 56);
      v12 = v5 - 727;
      ++v5;
      ++v4;
    }

    while (v12 < *(v7 + 229));
  }

  return result;
}

uint64_t Device0x038P100CalBlobHandler::loadLutParams(uint64_t result, uint64_t a2)
{
  v42 = result;
  v2 = *(result + 64);
  if (*(v2 + 632) == 1)
  {
    v3 = *(v2 + 636);
    v4 = *(result + 40);
    v5 = (v4[7] / v4[8]) * 1000.0;
    v6 = *(a2 + 754);
    *(v2 + 4) = v5 / (v6 - 1);
    *v2 = v6;
    v41 = v3;
    if (v3)
    {
      v7 = 0;
      v37 = v2;
      v38 = a2;
      v8 = v2 + 56;
      v39 = a2 + 758;
      do
      {
        v9 = (*(*(v42 + 64) + 635) + v7);
        v10 = (*(*v8 + 8))(v8);
        *(v10 + 4 * (*(*v8 + 24))(v8) * v9) = 0;
        v11 = (*(*v8 + 8))(v8);
        result = (*(*v8 + 24))(v8);
        *(v11 + 4 * (v6 - 1 + result * v9)) = 0;
        if (v6 >= 4)
        {
          v12 = 0;
          v13 = 1;
          v14 = v6 - 2;
          do
          {
            v15 = (v5 * *(v39 + 400 * v7 + 2 * v12)) / 32767.0;
            v16 = (*(*v8 + 8))(v8);
            *(v16 + 4 * (v13 + v9 * (*(*v8 + 24))(v8))) = v15;
            v17 = (*(*v8 + 8))(v8);
            v18 = -*(v17 + 4 * (v13 + v9 * (*(*v8 + 24))(v8)));
            v19 = (*(*v8 + 8))(v8);
            result = (*(*v8 + 24))(v8);
            *(v19 + 4 * (v14 + v9 * result)) = v18;
            ++v12;
            --v14;
            ++v13;
          }

          while ((v6 - 2 + (((v6 - 2) & 0x8000) >> 15)) >> 1 > v12);
        }

        if (v6)
        {
          v20 = (*(*v8 + 8))(v8);
          result = (*(*v8 + 24))(v8);
          *(v20 + 4 * ((v6 >> 1) + result * v9)) = 0;
        }

        ++v7;
      }

      while (v7 != v41);
      v4 = *(v42 + 40);
      v2 = v37;
      a2 = v38;
    }

    v21 = (v4[5] / v4[6]) * 1000.0;
    v22 = *(a2 + 755);
    *(v2 + 8) = v21 / (v22 - 1);
    *(v2 + 1) = v22;
    if (v41)
    {
      v23 = 0;
      v24 = v2 + 120;
      v40 = a2 + 758;
      do
      {
        v25 = (*(*(v42 + 64) + 635) + v23);
        v26 = (*(*v24 + 8))(v24);
        *(v26 + 4 * (*(*v24 + 24))(v24) * v25) = 0;
        v27 = (*(*v24 + 8))(v24);
        result = (*(*v24 + 24))(v24);
        *(v27 + 4 * (v22 - 1 + result * v25)) = 0;
        if (v22 >= 4)
        {
          v28 = 0;
          v29 = 1;
          v30 = v22 - 2;
          do
          {
            v31 = (v21 * *(v40 + 400 * v23 + 2 * v28 + 100)) / 32767.0;
            v32 = (*(*v24 + 8))(v24);
            *(v32 + 4 * (v29 + v25 * (*(*v24 + 24))(v24))) = v31;
            v33 = (*(*v24 + 8))(v24);
            v34 = -*(v33 + 4 * (v29 + v25 * (*(*v24 + 24))(v24)));
            v35 = (*(*v24 + 8))(v24);
            result = (*(*v24 + 24))(v24);
            *(v35 + 4 * (v30 + v25 * result)) = v34;
            ++v28;
            --v30;
            ++v29;
          }

          while ((v22 - 2 + (((v22 - 2) & 0x8000) >> 15)) >> 1 > v28);
        }

        if (v22)
        {
          v36 = (*(*v24 + 8))(v24);
          result = (*(*v24 + 24))(v24);
          *(v36 + 4 * ((v22 >> 1) + result * v25)) = 0;
        }

        ++v23;
      }

      while (v23 != v41);
    }
  }

  return result;
}

AlgWorkNode *TouchService::EventInfoStep::EventInfoStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v18 = &unk_2876EEBE8;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = a6;
  *(v18 + 112) = a7;
  *(v18 + 120) = a8;
  *(v18 + 128) = a9;
  *(v18 + 136) = a10;
  *(v18 + 144) = a2;
  *(v18 + 176) = 0;
  TouchService::EventInfoStep::runNodeRegistrations(v18);
  return a1;
}

{
  return TouchService::EventInfoStep::EventInfoStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *TouchService::EventInfoStep::runNodeRegistrations(TouchService::EventInfoStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 10));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 11));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 12));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 13));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 16));
  v2 = *(this + 17);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t TouchService::EventInfoStep::baselineAdaptNotification(uint64_t this)
{
  if (*(*(this + 88) + 28) == 1)
  {
    v1 = this;
    this = (*(**(this + 104) + 40))(*(this + 104));
    if (this || *(*(v1 + 80) + 28) == 1 && (this = (*(**(v1 + 120) + 40))(*(v1 + 120)), this))
    {
      if (*(v1 + 176) == 1)
      {
        v2 = *(v1 + 160);
        v3 = *(v1 + 168);
        *(v3 + 33) = *(v2 + 104) ^ 1;
        *(v3 + 32) = 1;
        *(v3 + 56) = 2;
        v4 = *(*(v1 + 144) + 16) + 0xF4240u / *(*(v1 + 80) + 32);
        *(v3 + 40) = v4 + *(*(v1 + 88) + 32);
        *(v3 + 48) = v4;
        *(v3 + 64) = 1;
        *(v2 + 104) = 1;
      }
    }
  }

  return this;
}

uint64_t TouchService::EventInfoStep::run(TouchService::EventInfoStep *this)
{
  v1 = *(this + 17);
  *(*(this + 16) + 64) = 0;
  *(v1 + 64) = 0;
  if (*(*(this + 11) + 28) == 1 && ((*(**(this + 13) + 40))(*(this + 13)) || *(*(this + 10) + 28) == 1 && (*(**(this + 15) + 40))(*(this + 15))))
  {
    v3 = *(this + 12);
    v4 = *(v3 + 104);
    if (v4 & 1) != 0 || (*(*(this + 14) + 104))
    {
      *(this + 38) = 0;
      v5 = *(this + 10);
      if (*(v5 + 28) == 1)
      {
        v6 = *(this + 14);
        if (*(v6 + 104) == 1)
        {
          v7 = *(v6 + 88);
          v8 = *(this + 17);
          v9 = *(this + 18);
          *(v8 + 32) = v7;
          *(v8 + 56) = 0;
          v10 = *(v9 + 16);
          v11 = 36;
          if (v7)
          {
            v11 = 32;
          }

          v12 = v10 + 0xF4240u / *(v5 + 32);
          *(v8 + 40) = v12 + *(*(this + 11) + v11);
          *(v8 + 48) = v12;
          *(v8 + 64) = 1;
          *(this + 20) = v6;
          *(this + 21) = v8;
          *(this + 176) = v7;
        }
      }

      if (v4)
      {
        v13 = *(this + 16);
        v14 = *(v3 + 88);
        *(v13 + 32) = v14;
        *(v13 + 56) = 0;
        v15 = 36;
        if (v14)
        {
          v15 = 32;
        }

        v16 = *(*(this + 18) + 16) + 0xF4240u / *(v5 + 32);
        *(v13 + 40) = v16 + *(*(this + 11) + v15);
        *(v13 + 48) = v16;
        *(v13 + 64) = 1;
        *(this + 20) = v3;
        *(this + 21) = v13;
        *(this + 176) = v14;
      }
    }

    else
    {
      v17 = *(this + 38);
      v18 = *(this + 11);
      if (!(v17 % *(v18 + 30)))
      {
        v19 = *(this + 16);
        *(v19 + 32) = 256;
        *(v19 + 56) = 1;
        v20 = *(*(this + 18) + 16) + 0xF4240u / *(*(this + 10) + 32);
        *(v19 + 40) = v20 + *(v18 + 36);
        *(v19 + 48) = v20;
        *(v19 + 64) = 1;
        *(v3 + 104) = 1;
        *(this + 176) = 0;
      }

      *(this + 38) = v17 + 1;
    }
  }

  return 0;
}

void TouchService::EventInfoStep::~EventInfoStep(TouchService::EventInfoStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadHostService::Device0x039PadHostServiceActivePlan::Device0x039PadHostServiceActivePlan(PadHostService::Device0x039PadHostServiceActivePlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876EEC38;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v3 = operator new(0xA0uLL);
  Device0x039SurfaceDimensions::Device0x039SurfaceDimensions(v3);
  *(this + 15) = v4;
  operator new(0x8E0uLL);
  v5 = *(this + 15);
  *(this + 16) = Device0x039PadParameterCollection::Device0x039PadParameterCollection(v6);
  v7 = operator new(0xC88uLL);
  Device0x039PadFireflyParameterCollection::Device0x039PadFireflyParameterCollection(v7, *(this + 15));
  *(this + 17) = v8;
  v9 = operator new(0xBE8uLL);
  *(this + 18) = Device0x039PadHoverParameterCollection::Device0x039PadHoverParameterCollection(v9, *(this + 15));
  v10 = operator new(0xF8uLL);
  v11 = *(this + 15);
  v12 = *(v11 + 4);
  *(this + 19) = SurfaceGrid::SurfaceGrid(v10, *v11, v11 + 8, *(this + 16) + 804, v11 + 116, (v11 + 20), v11 + 40, 0);
  AlgDataNode::AlgDataNode((this + 160), 0xD919591722A99D58, 0);
  *(this + 20) = &unk_2876F0108;
  *(this + 188) = 0;
  *(this + 44) = 20480;
  *(this + 46) = 1;
  DeviceOrientationNode::DeviceOrientationNode(this + 192, 0x83DB5EE3F6A933E1);
  AlgDataNode::AlgDataNode((this + 224), 0x71B2728FC5A9ACEDLL, 0);
  *(this + 28) = &unk_2876F0108;
  *(this + 252) = 0;
  *(this + 60) = 20480;
  *(this + 62) = 1;
  AlgDataNode::AlgDataNode((this + 256), 0x726D0D8D985328D2, 0);
  *(this + 32) = &unk_2876F0158;
  *(this + 77) = 0;
  *(this + 292) = 0;
  *(this + 300) = 0;
  *(this + 284) = 0;
  *(this + 68) = 20715;
  *(this + 70) = 28;
  SurfaceDescriptorNode::SurfaceDescriptorNode((this + 312), 0x29965DE49819D20DuLL);
  AlgDataNode::AlgDataNode((this + 368), 0xD992F1C73B6AF5FELL, 0);
  *(this + 46) = &unk_2876F0108;
  *(this + 396) = 0;
  *(this + 96) = 20480;
  *(this + 98) = 1;
  v14 = *(*(this + 15) + 13);
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 106) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 228) = 0;
  *(this + 214) = v14;
  *(this + 430) = 0;
  v15 = &Device0x039::FFDtiStatsOPNormalization;
  for (i = 108; i != 114; ++i)
  {
    v17 = *v15++;
    *(this + i) = v17;
  }

  v18 = v13;
  *(this + 228) = 0;
  AlgDataNode::AlgDataNode((this + 464), 0x762B06BEA3FE3797, 0);
  *(this + 58) = &unk_2876F01A8;
  *(this + 492) = 0;
  *(this + 120) = 20482;
  *(this + 122) = 1;
  AlgDataNode::AlgDataNode((this + 496), 0x7EC0C8093C3ACAC4, 0);
  *(this + 62) = &unk_2876F01A8;
  *(this + 524) = 0;
  *(this + 128) = 20482;
  *(this + 130) = 1;
  Device0x039FireflyTask::Device0x039FireflyTask(this + 528, v18, *(this + 17), *(this + 18), *(this + 15), *(this + 19), this + 160, this + 224, this + 256, this + 400, this + 464, this + 496);
}

void sub_2653CABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep((v14 + 35992));
  PadTouchService::PadTouchTask::~PadTouchTask((v14 + v18));
  Device0x039FireflyTask::~Device0x039FireflyTask((v14 + 528));
  *v20 = &unk_2876F3810;
  *v19 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  *a14 = &unk_2876F3810;
  *v17 = &unk_2876F3810;
  *v16 = &unk_2876F3810;
  DeviceOrientationNode::~DeviceOrientationNode((v14 + 192));
  *v15 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v14);
  _Unwind_Resume(a1);
}

void *PadHostService::Device0x039PadHostServiceActivePlan::runNodeRegistrations(PadHostService::Device0x039PadHostServiceActivePlan *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 312);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 368);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 192);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 224);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 160);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 256);
  v3 = this + 18088;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 528;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 35992;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 37304;
  return SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
}

void AlgTaskNode::~AlgTaskNode(AlgTaskNode *this)
{
  *this = &unk_2876F38D0;
  if (*(this + 23))
  {
    *(this + 23) = 0;
  }

  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758590);
}

void PadHostService::Device0x039PadHostServiceActivePlan::~Device0x039PadHostServiceActivePlan(PadHostService::Device0x039PadHostServiceActivePlan *this)
{
  *this = &unk_2876EEC38;
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      MEMORY[0x266758580](v3, 0x1000C8033FC2DF1);
    }

    *(v2 + 88) = &unk_2876F3810;
    MEMORY[0x266758590](v2, 0x10A0C4034B7AEE1);
  }

  v4 = *(this + 16);
  if (v4)
  {
    SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(v4 + 265);
    SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(v4 + 256);
    v4[249] = &unk_2876F3810;
    v4[241] = &unk_2876F3810;
    v4[217] = &unk_2876F3810;
    v4[210] = &unk_2876F3810;
    v4[204] = &unk_2876F3810;
    v4[196] = &unk_2876F3810;
    v4[183] = &unk_2876F3810;
    v4[179] = &unk_2876F3810;
    v4[169] = &unk_2876F3810;
    v4[154] = &unk_2876F3810;
    v4[137] = &unk_2876F3810;
    v4[132] = &unk_2876F3810;
    v4[108] = &unk_2876F3810;
    v4[97] = &unk_2876F3810;
    v4[76] = &unk_2876F3810;
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v4 + 67);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v4 + 59);
    v4[47] = &unk_2876F3810;
    v4[38] = &unk_2876F3810;
    v4[7] = &unk_2876F3810;
    v4[1] = &unk_2876F3810;
    MEMORY[0x266758590](v4, 0x1090C4016D6A234);
  }

  v5 = *(this + 17);
  if (v5)
  {
    v5[259] = &unk_2876F3810;
    v5[251] = &unk_2876F3810;
    v5[246] = &unk_2876F3810;
    SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v5 + 239);
    v5[226] = &unk_2876F3810;
    v5[214] = &unk_2876F3810;
    v5[202] = &unk_2876F3810;
    v5[196] = &unk_2876F3810;
    v5[176] = &unk_2876F3810;
    SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v5 + 168);
    SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v5 + 161);
    SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v5 + 154);
    SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v5 + 147);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 139);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 131);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 123);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 115);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 107);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 99);
    v5[63] = &unk_2876F3810;
    v5[57] = &unk_2876F3810;
    v5[49] = &unk_2876F3810;
    v5[33] = &unk_2876F3810;
    v5[18] = &unk_2876F3810;
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 10);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v5 + 2);
    MEMORY[0x266758590](v5, 0x1090C400FEEE2BALL);
  }

  v6 = *(this + 18);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PadFireflyService::FireflyServiceTask::~FireflyServiceTask((this + 37304));
  PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep((this + 35992));
  PadTouchService::PadTouchTask::~PadTouchTask((this + 18088));
  Device0x039FireflyTask::~Device0x039FireflyTask((this + 528));
  *(this + 62) = &unk_2876F3810;
  *(this + 58) = &unk_2876F3810;
  *(this + 46) = &unk_2876F3810;
  *(this + 39) = &unk_2876F3810;
  *(this + 32) = &unk_2876F3810;
  *(this + 28) = &unk_2876F3810;
  DeviceOrientationNode::~DeviceOrientationNode((this + 192));
  *(this + 20) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PadHostService::Device0x039PadHostServiceActivePlan::~Device0x039PadHostServiceActivePlan(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHostService::Device0x039PadHostServiceActivePlan::runPlan(PadHostService::Device0x039PadHostServiceActivePlan *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v6 = PacketCollection::at(a2, 0);
  v7 = *(v6 + 40);
  *(this + 12) = v7;
  *(this + 14) = v7;
  *(this + 26) = *(v6 + 48);
  v8 = *(*this + 40);

  return v8(this, a2, a3);
}

uint64_t PadHostService::Device0x039PadHostServiceActivePlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[12] = 0;
  a1[13] = 0;
  v7 = a1 + 12;
  v7[2] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(v7, *(a2 + 16), *(a2 + 8));
    v8 = a1[12];
    if (a1[14])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  a1[14] = v8;
LABEL_7:
  v9 = *(a1 + 26);
  v10 = *(*a1 + 40);

  return v10(a1, a3, a4, v8, v9, 0);
}

double Device0x039SurfaceDimensions::Device0x039SurfaceDimensions(uint64_t a1)
{
  v1 = PadSurfaceDimensions::PadSurfaceDimensions(a1, 3u, 16, 0, 64);
  *(v1 + 4) = 1140850688;
  *(v1 + 8) = 0x300000400002;
  *(v1 + 16) = 0;
  *(v1 + 116) = xmmword_26541FFE0;
  *(v1 + 132) = 0x48802C10483FD7A6;
  *(v1 + 20) = xmmword_26541FFF0;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  return result;
}

uint64_t PadSurfaceDimensions::PadSurfaceDimensions(uint64_t a1, unsigned int a2, __int16 a3, char a4, __int16 a5)
{
  SurfaceDimensions::SurfaceDimensions(a1);
  *(v10 + 144) = a2;
  *(v10 + 146) = a3;
  *(v10 + 148) = a4;
  *(v10 + 150) = a5;
  v11 = operator new(3 * a2);
  *(a1 + 152) = v11;
  v12 = *(a1 + 144);
  if (*(a1 + 144))
  {
    v13 = 0;
    v14 = *(a1 + 146);
    v15 = v11 + 2;
    do
    {
      *(v15 - 2) = 0;
      *(v15 - 1) = v14;
      *v15 = v14 * v13;
      v15 += 3;
      ++v13;
    }

    while (v12 != v13);
  }

  return a1;
}

PadTouchParameterCollection *Device0x039PadParameterCollection::Device0x039PadParameterCollection(__n128 a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v15 = *MEMORY[0x277D85DE8];
  v5 = v1 + 282;
  PadTouchParameterCollection::PadTouchParameterCollection(v1, *v2, *(v3 + 1), *(v3 + 10), *(v3 + 13), v3[73], v3[72]);
  *(v6 + 4) = 120;
  *(v6 + 1084) = 0x2726212003120703;
  *(v6 + 1092) = 20544;
  *(v6 + 1460) = 589177120;
  v7 = *(v3 + 1);
  *(v6 + 36) = 0x4100000000000000;
  *(v6 + 44) = v7;
  *(v6 + 48) = 1148846080;
  *(v6 + 332) = 1086324736;
  *(v6 + 336) = 0x4140000042480000;
  *(v6 + 344) = 917518;
  *(v5 + 66) = xmmword_265420000;
  *(v6 + 364) = 0x3E800000425C0000;
  *(v6 + 372) = 1;
  *(v6 + 84) = xmmword_265420010;
  *(v6 + 100) = 1;
  *(v6 + 104) = xmmword_265420020;
  *(v6 + 120) = xmmword_265420030;
  *(v6 + 136) = xmmword_265420040;
  *(v6 + 152) = xmmword_265420050;
  *(v6 + 168) = 0x42F000003E79FFD6;
  *(v6 + 176) = 2;
  *(v6 + 177) = 0;
  *(v6 + 178) = 0;
  *(v6 + 180) = 0x3F33333340C00000;
  *(v6 + 188) = 65548;
  *(v6 + 192) = xmmword_265420060;
  *(v6 + 208) = 1966095;
  *(v6 + 212) = xmmword_265420070;
  *(v6 + 228) = xmmword_265420080;
  *(v6 + 244) = xmmword_265420090;
  *(v6 + 260) = 0x3E80000046A02800;
  *(v6 + 268) = 197632;
  *(v6 + 272) = 1056964608;
  *(v6 + 280) = 256;
  *(v6 + 276) = 0;
  *v5 = 0;
  *(v6 + 290) = 40;
  *(v5 + 3) = 16974083;
  *(v6 + 298) = 0;
  *(v6 + 640) = 0.14746 / v7;
  *(v6 + 644) = xmmword_2654200A0;
  *(v6 + 660) = 0x3F8000003F000000;
  *(v6 + 668) = 0u;
  *(v6 + 684) = 0u;
  *(v6 + 700) = 0u;
  *(v6 + 716) = 0;
  *(v6 + 720) = xmmword_2654200B0;
  *(v6 + 736) = 3;
  *(v6 + 739) = 0;
  *(v6 + 737) = 0;
  *(v6 + 740) = xmmword_2654200C0;
  *(v6 + 756) = xmmword_2654200D0;
  *(v6 + 772) = 0;
  *(v6 + 804) = xmmword_2654200E0;
  *(v6 + 820) = xmmword_2654200F0;
  *(v6 + 836) = 1072064102;
  *(v6 + 840) = 0x100000001;
  *(v6 + 848) = 0u;
  *(v5 + 122) = xmmword_265420100;
  *(v6 + 420) = 1090519040;
  *(v6 + 424) = 0x42C8000041300000;
  *(v6 + 432) = 257;
  *(v5 + 154) = xmmword_265420110;
  *(v5 + 170) = xmmword_265420120;
  memcpy(__dst, &unk_265420650, 0x1200uLL);
  v8 = *(v4 + 132);
  LOBYTE(v12) = 0;
  BYTE1(v12) = v8;
  HIWORD(v12) = v8;
  LOBYTE(v13) = v8;
  HIBYTE(v13) = v8;
  SA2DArrayBase<float>::copyFromBuffer<unsigned short>(v4 + 504, __dst, (v8 * v8), &v12);
  *(v4 + 150) = 880803840;
  SA1DArrayBase<float>::scaleElementwise(v4 + 504, v4 + 504, 0.00000023842);
  memcpy(__dst, &unk_265421850, sizeof(__dst));
  v9 = *(v4 + 148);
  LOBYTE(v12) = 0;
  BYTE1(v12) = v9;
  HIWORD(v12) = v9;
  LOBYTE(v13) = v9;
  HIBYTE(v13) = v9;
  SA2DArrayBase<float>::copyFromBuffer<unsigned short>(v4 + 568, __dst, (v9 * v9), &v12);
  *(v4 + 151) = 864026624;
  SA1DArrayBase<float>::scaleElementwise(v4 + 568, v4 + 568, 0.000000059605);
  *(v4 + 1340) = (43692 * (*(v3 + 13) / *(v4 + 1333))) >> 16;
  *(v5 + 1210) = xmmword_265420130;
  *(v5 + 1226) = xmmword_265420140;
  *(v5 + 1242) = xmmword_265420150;
  *(v5 + 1258) = xmmword_265420160;
  *(v4 + 1556) = 0x40C0000040800000;
  *(v4 + 1780) = 0x4489800044898000;
  *(v4 + 458) = 1149861888;
  *(v4 + 449) = 1176256512;
  *(v4 + 228) = 0x453B800000000000;
  *(v4 + 454) = 0;
  *(v4 + 528) = 1031798784;
  __dst[12] = xmmword_265423910;
  __dst[13] = unk_265423920;
  __dst[14] = xmmword_265423930;
  __dst[15] = unk_265423940;
  __dst[8] = xmmword_2654238D0;
  __dst[9] = unk_2654238E0;
  __dst[10] = xmmword_2654238F0;
  __dst[11] = unk_265423900;
  __dst[4] = xmmword_265423890;
  __dst[5] = unk_2654238A0;
  __dst[6] = xmmword_2654238B0;
  __dst[7] = unk_2654238C0;
  __dst[0] = xmmword_265423850;
  __dst[1] = unk_265423860;
  __dst[2] = xmmword_265423870;
  __dst[3] = unk_265423880;
  v12 = 1052672;
  v13 = 4112;
  SA2DArrayBase<signed char>::copyFromBuffer<signed char>(v4 + 2080, __dst, 256, &v12);
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

void PadTouchParameterCollection::PadTouchParameterCollection(PadTouchParameterCollection *this, __int16 a2, float a3, int a4, int a5, int a6, int a7)
{
  *this = -105;
  AlgDataNode::AlgDataNode((this + 8), 0xC461CC7C5F413243, 0);
  *(this + 36) = 0x413AB85200000000;
  *(this + 12) = 1148846080;
  *(this + 6) = 20502;
  *(this + 8) = 16;
  *(this + 1) = &unk_2876EECB0;
  *(this + 11) = a3;
  PlainDataNode<PathTrackParams>::PlainDataNode((this + 56), 0x141FFC6FEAC75F2BLL, 0, 0);
  PlainDataNode<WatershedParams>::PlainDataNode((this + 304), 0x51519DF060DC2D90, 0, 0);
  AlgDataNode::AlgDataNode((this + 376), 0x4D6A832C99FF2440, 0);
  *(this + 47) = &unk_2876EEDB8;
  *(this + 404) = 0u;
  *(this + 420) = 0u;
  *(this + 436) = 0u;
  *(this + 452) = 0u;
  *(this + 98) = 20675;
  *(this + 100) = 64;
  PadTouchBloomingKMatrixParams::PadTouchBloomingKMatrixParams((this + 472), a4, a5);
  PlainDataNode<EllipseEstimationParams>::PlainDataNode((this + 608), 0x116A4A4E9C2C7AF7, 0, 0);
  PlainDataNode<ExtrapolationParams>::PlainDataNode((this + 776), 0xE9CCE10AB7FD5EF3, 0, 0);
  PlainDataNode<PadBaselineAdaptationParams>::PlainDataNode((this + 864), 0xF2B8D6689B375A71, 0, 0);
  AlgDataNode::AlgDataNode((this + 1056), 0xB94635D88701C836, 0);
  *(this + 132) = &unk_2876EEFD8;
  *(this + 1084) = 0x19180706030B0603;
  *(this + 546) = 10288;
  *(this + 268) = 20680;
  *(this + 270) = 10;
  AlgDataNode::AlgDataNode((this + 1096), 0x726CB863A12E63BDLL, 0);
  *(this + 137) = &unk_2876EF028;
  *(this + 1156) = 0u;
  *(this + 1172) = 0u;
  *(this + 75) = 0u;
  *(this + 1124) = 0u;
  *(this + 1140) = 0u;
  *(this + 1188) = 0u;
  *(this + 285) = 1065353216;
  *(this + 289) = 1065353216;
  *(this + 293) = 1065353216;
  *(this + 278) = 20665;
  *(this + 280) = 92;
  *(this + 305) = 1059648963;
  *(this + 304) = (a3 * 28.0) * 0.00097656;
  *(this + 306) = (a3 * 96.0) * 0.00097656;
  PlainDataNode<PadNegPixelCompensationParams>::PlainDataNode((this + 1232), 0xC4052ED611DD3895, 0, 0);
  PlainDataNode<BankCorrectionParams>::PlainDataNode((this + 1352), 0x23949B0A05202837, 0, 0);
  AlgDataNode::AlgDataNode((this + 1432), 0xDA560516C901C3DLL, 0);
  *(this + 179) = &unk_2876EF118;
  *(this + 365) = 387061012;
  *(this + 362) = 20668;
  *(this + 364) = 4;
  PlainDataNode<ContactDistinguishingLevels>::PlainDataNode((this + 1464), 0x9251918812B0D9A0, 0, 0);
  AlgDataNode::AlgDataNode((this + 1568), 0x34563094647BAF60, 0);
  *(this + 196) = &unk_2876EF1B8;
  *(this + 400) = 1120403456;
  *(this + 802) = 2;
  *(this + 1608) = xmmword_265420170;
  *(this + 203) = 0x3F19999A3F99999ALL;
  *(this + 396) = 20670;
  *(this + 199) = 0x45CE400000000024;
  AlgDataNode::AlgDataNode((this + 1632), 0xD8FCA16B86E74F3CLL, 0);
  *(this + 204) = &unk_2876EF208;
  *(this + 1660) = xmmword_265420180;
  *(this + 419) = 1048576000;
  *(this + 412) = 20671;
  *(this + 414) = 20;
  AlgDataNode::AlgDataNode((this + 1680), 0x7F164EF24AA593C7, 0);
  *(this + 210) = &unk_2876EF258;
  *(this + 1708) = xmmword_265420190;
  *(this + 1724) = 0x3E99999A3F000000;
  *(this + 424) = 20672;
  *(this + 426) = 24;
  PlainDataNode<PadEdgeStraddleParams>::PlainDataNode((this + 1736), 0x9BFB837C63AF82E6, 0, 0);
  AlgDataNode::AlgDataNode((this + 1928), 0x505D0F0D0718CA6CLL, 0);
  *(this + 241) = &unk_2876EF2F8;
  *(this + 978) = 3;
  *(this + 245) = 0x487A000047C80000;
  *(this + 984) = 1;
  *(this + 1972) = xmmword_2654201A0;
  *(this + 486) = 20674;
  *(this + 488) = 32;
  AlgDataNode::AlgDataNode((this + 1992), 0x24A8AFF4A30B0DDELL, 0);
  *(this + 249) = &unk_2876EF348;
  *(this + 253) = 3000;
  *(this + 254) = 0x640000001ELL;
  *(this + 510) = 1069128090;
  *(this + 2044) = 0;
  *(this + 502) = 20711;
  *(this + 504) = 24;
  SA2DArrayDynamicSize<signed char>::SA2DArrayDynamicSize((this + 2048), 0x302FF55001E58E02, a6, a6, 0, 0);
  *(this + 528) = 1065353216;
  PadInputPreprocessingParams::PadInputPreprocessingParams((this + 2120), a7 * a6);
  *(this + 275) = 0x3DCCCCCD40A00000;
  *(this + 552) = 0;
  *(this + 1106) = 5;
  *(this + 277) = 0x3F4CCCCD3E4CCCCDLL;
  *(this + 139) = xmmword_265423D04;
  *(this + 2236) = *(&xmmword_265423D04 + 12);
  *(this + 282) = 100000;
  *(this + 1132) = 4;
}

void sub_2653CC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19)
{
  SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(v20 + 256);
  *v19 = &unk_2876F3810;
  *v26 = &unk_2876F3810;
  *v24 = &unk_2876F3810;
  *v23 = &unk_2876F3810;
  *v22 = &unk_2876F3810;
  *v27 = &unk_2876F3810;
  *a9 = &unk_2876F3810;
  *v25 = &unk_2876F3810;
  *a10 = &unk_2876F3810;
  *a11 = &unk_2876F3810;
  *v21 = &unk_2876F3810;
  *a12 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  *a14 = &unk_2876F3810;
  *a15 = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v20 + 67);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v20 + 59);
  *a16 = &unk_2876F3810;
  *a17 = &unk_2876F3810;
  *a18 = &unk_2876F3810;
  *a19 = &unk_2876F3810;
  _Unwind_Resume(a1);
}

uint64_t SA2DArrayBase<float>::copyFromBuffer<unsigned short>(uint64_t a1, _WORD *a2, uint64_t a3, unsigned __int8 *a4)
{
  v21 = (*(*a1 + 8))(a1);
  v7 = *a4;
  v8 = a4[3];
  v9 = (*(*a1 + 24))(a1);
  v10 = a4[1];
  v11 = *a4;
  v12 = a4[4];
  v13 = a4[3];
  result = (*(*a1 + 24))(a1);
  if (v10 != v11)
  {
    v16 = 0;
    v17 = v12 - v13;
    v18 = (v21 + 4 * (v8 + v9 * v7));
    v19 = 2 * (a4[4] - a4[3]);
    do
    {
      LOWORD(v15) = *a2;
      v15 = LODWORD(v15);
      *v18 = v15;
      if (v17 >= 2)
      {
        v20 = 1;
        do
        {
          LOWORD(v15) = a2[v20];
          v15 = LODWORD(v15);
          v18[v20++] = v15;
        }

        while (v17 != v20);
      }

      v18 += result;
      a2 = (a2 + v19);
      ++v16;
    }

    while (v16 != v10 - v11);
  }

  return result;
}

uint64_t SA1DArrayBase<float>::scaleElementwise(uint64_t a1, uint64_t a2, float a3)
{
  v6 = (*(*a1 + 8))(a1);
  (**a1)(a1);
  v7 = (*(*a2 + 8))(a2);
  (**a2)(a2);
  result = (**a1)(a1);
  *v7 = *v6 * a3;
  if (result >= 2)
  {
    v9 = v7 + 1;
    v10 = v6 + 1;
    v11 = result - 1;
    do
    {
      v12 = *v10++;
      *v9++ = v12 * a3;
      --v11;
    }

    while (v11);
  }

  return result;
}

void *SA2DArrayBase<signed char>::copyFromBuffer<signed char>(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4)
{
  v19 = (*(*a1 + 8))(a1);
  v7 = *a4;
  v8 = a4[3];
  v9 = (*(*a1 + 24))(a1);
  v10 = a4[1];
  v11 = *a4;
  v12 = a4[4];
  v13 = a4[3];
  result = (*(*a1 + 24))(a1);
  v15 = v10 - v11;
  if (v10 != v11)
  {
    v16 = a4[4] - a4[3];
    v17 = (v19 + (v8 + v9 * v7));
    v18 = result;
    do
    {
      if (a2 != v17)
      {
        result = memcpy(v17, a2, (v12 - v13));
      }

      v17 += v18;
      a2 += v16;
      --v15;
    }

    while (v15);
  }

  return result;
}

void PadTouchParameterCollection::~PadTouchParameterCollection(PadTouchParameterCollection *this)
{
  SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(this + 265);
  SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(this + 256);
  *(this + 249) = &unk_2876F3810;
  *(this + 241) = &unk_2876F3810;
  *(this + 217) = &unk_2876F3810;
  *(this + 210) = &unk_2876F3810;
  *(this + 204) = &unk_2876F3810;
  *(this + 196) = &unk_2876F3810;
  *(this + 183) = &unk_2876F3810;
  *(this + 179) = &unk_2876F3810;
  *(this + 169) = &unk_2876F3810;
  *(this + 154) = &unk_2876F3810;
  *(this + 137) = &unk_2876F3810;
  *(this + 132) = &unk_2876F3810;
  *(this + 108) = &unk_2876F3810;
  *(this + 97) = &unk_2876F3810;
  *(this + 76) = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 67);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 59);
  *(this + 47) = &unk_2876F3810;
  *(this + 38) = &unk_2876F3810;
  *(this + 7) = &unk_2876F3810;
  *(this + 1) = &unk_2876F3810;
}

__n128 PlainDataNode<SensorEqualizationParams>::injectBuffer(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 28) = *a2;
  return result;
}

double PlainDataNode<PathTrackParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EED18;
  *(v4 + 28) = xmmword_2654201B0;
  *(v4 + 44) = 2;
  *(v4 + 48) = xmmword_265420020;
  *(v4 + 64) = xmmword_265420030;
  *(v4 + 80) = xmmword_265420040;
  *(v4 + 96) = xmmword_265420050;
  *(v4 + 112) = 0x42F000003E79FFD6;
  *(v4 + 120) = 2;
  *(v4 + 124) = 0x3F33333340C00000;
  *(v4 + 132) = 65548;
  *(v4 + 136) = xmmword_2654201C0;
  *(v4 + 152) = 1966095;
  *(v4 + 156) = xmmword_265420070;
  *(v4 + 172) = xmmword_2654201D0;
  *(v4 + 188) = xmmword_265420090;
  *(v4 + 204) = 0x3E80000046A02800;
  *(v4 + 212) = 197632;
  *(v4 + 216) = 1056964608;
  *(v4 + 220) = 1;
  *(v4 + 226) = 0;
  *(v4 + 221) = 0;
  *(v4 + 234) = 40;
  *&result = 16974082;
  *(v4 + 238) = 16974082;
  *(v4 + 242) = 0;
  *(v4 + 16) = 20666;
  *(v4 + 24) = 216;
  return result;
}

__n128 PlainDataNode<PathTrackParams>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 44) = a2[1];
  *(a1 + 28) = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  *(a1 + 108) = a2[5];
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  *(a1 + 172) = a2[9];
  *(a1 + 156) = v8;
  *(a1 + 140) = v7;
  *(a1 + 124) = v6;
  result = a2[10];
  v10 = a2[11];
  v11 = a2[12];
  *(a1 + 236) = *(a2 + 26);
  *(a1 + 220) = v11;
  *(a1 + 204) = v10;
  *(a1 + 188) = result;
  return result;
}

double PlainDataNode<WatershedParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EED68;
  *(v4 + 28) = 0x4285666641A00000;
  *(v4 + 36) = 0xE001C42200000;
  *(v4 + 44) = xmmword_2654201E0;
  result = 0.000000119209319;
  *(v4 + 60) = 0x3E800000425C0000;
  *(v4 + 68) = 1;
  *(v4 + 16) = 20552;
  *(v4 + 24) = 44;
  return result;
}

__n128 PlainDataNode<WatershedParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 56) = *(a2 + 28);
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

__n128 PlainDataNode<PadTouchBloomingParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 76) = *(a2 + 48);
  *(a1 + 60) = v4;
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

void PadTouchBloomingKMatrixParams::PadTouchBloomingKMatrixParams(PadTouchBloomingKMatrixParams *this, int a2, int a3)
{
  v5 = SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize(this, 0xD395DF524B16FECBLL, a3, a3, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((v5 + 64), 0xD39365BAE7A45831, a2, a2, 0, 0);
  *(this + 16) = vdup_n_s32(0x33D6BF95u);
}

AlgDataNode *SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  AlgDataNode::AlgDataNode(a1, a2, a6);
  *v9 = &unk_2876EEE08;
  *(v9 + 32) = &unk_2876EEE58;
  *(v9 + 40) = 20481;
  *(v9 + 44) = 2;
  *(v9 + 46) = 0;
  *(v9 + 56) = a3;
  *(v9 + 60) = a4;
  SA2DArrayDynamicSize<float>::initialize(v9, a3, a4);
  return a1;
}

uint64_t SA2DArrayDynamicSize<float>::initialize(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  v4 = operator new(4 * (a3 * a2));
  v6 = v3 + 32;
  v5 = *(v3 + 32);
  *(v3 + 48) = v4;
  v7 = *(v3 + 22);
  LODWORD(v3) = (*(v5 + 16))(v3 + 32);
  result = (*(*v6 + 24))(v6);
  *(v6 - 8) = v7 + 4 * v3 * result;
  return result;
}

void SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(void *a1)
{
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

uint64_t SA2DArrayDynamicSize<float>::sendCallback(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  *(a3 + 40) = a1 + 40;
  *(a3 + 56) = *(a1 + 48);
  return a2(a3);
}

void *SA2DArrayDynamicSize<float>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 4 * result);
  }

  return result;
}

void *SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EEE08;
  a1[4] = &unk_2876EEE58;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8052888210);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

double PlainDataNode<EllipseEstimationParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EEEE8;
  *(v4 + 32) = xmmword_2654201F0;
  *(v4 + 48) = 0x3F0000003F000000;
  *(v4 + 56) = 1065353216;
  *(v4 + 60) = 0u;
  *(v4 + 76) = 0u;
  *(v4 + 92) = 0u;
  *(v4 + 108) = 0;
  *(v4 + 112) = xmmword_2654200B0;
  *(v4 + 128) = 3;
  *(v4 + 129) = 0;
  *(v4 + 131) = 0;
  *(v4 + 132) = xmmword_265420200;
  result = 860.160524;
  *(v4 + 148) = xmmword_2654200D0;
  *(v4 + 164) = 0;
  *(v4 + 16) = 20677;
  *(v4 + 24) = 136;
  return result;
}

__n128 PlainDataNode<EllipseEstimationParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 48);
  *(a1 + 96) = v4;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 160) = *(a2 + 128);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = result;
  return result;
}

double PlainDataNode<ExtrapolationParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EEF38;
  *(v4 + 28) = xmmword_2654200E0;
  *(v4 + 44) = xmmword_2654200F0;
  *(v4 + 60) = 1065353216;
  *&result = 0x100000001;
  *(v4 + 64) = 0x100000001;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 16) = 20681;
  *(v4 + 24) = 60;
  return result;
}

__n128 PlainDataNode<ExtrapolationParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 72) = *(a2 + 44);
  *(a1 + 60) = v4;
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

double PlainDataNode<PadBaselineAdaptationParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EEF88;
  *(v4 + 32) = xmmword_265420210;
  *(v4 + 48) = xmmword_265420220;
  *(v4 + 64) = 0x40000000;
  *(v4 + 72) = xmmword_265420230;
  *(v4 + 88) = 0x3F66666641200000;
  *(v4 + 96) = 32769024;
  *(v4 + 104) = xmmword_265420240;
  *(v4 + 120) = xmmword_265420250;
  *(v4 + 136) = xmmword_265420260;
  result = 3.00406191e-307;
  *(v4 + 152) = 0x4B007D003C0010;
  *(v4 + 160) = 1059481190;
  *(v4 + 164) = 6;
  *(v4 + 166) = 5;
  *(v4 + 168) = 1176256512;
  *(v4 + 176) = 1000;
  *(v4 + 184) = 1;
  *(v4 + 16) = 20664;
  *(v4 + 24) = 160;
  return result;
}

__n128 PlainDataNode<PadBaselineAdaptationParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 112) = v5;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 128);
  *(a1 + 176) = v8;
  *(a1 + 128) = result;
  *(a1 + 144) = v7;
  return result;
}

uint64_t PlainDataNode<PatchCullCoverParams>::injectBuffer(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 36) = *(a2 + 4);
  *(result + 28) = v2;
  return result;
}

__n128 PlainDataNode<MtdoParams>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 44) = a2[1];
  *(a1 + 28) = v2;
  result = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  *(a1 + 104) = *(a2 + 76);
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  *(a1 + 60) = result;
  return result;
}

double PlainDataNode<PadNegPixelCompensationParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF078;
  *(v4 + 28) = 0x1EFFFCFFFB0005;
  *(v4 + 36) = 10;
  *(v4 + 40) = xmmword_265420270;
  *(v4 + 56) = 919391437;
  *(v4 + 64) = 0x19000780032005ALL;
  *(v4 + 72) = 0;
  *(v4 + 76) = 0x3DCCCCCD3F400000;
  result = 6.67523433e-308;
  *(v4 + 84) = 0x280003012C03E8;
  *(v4 + 92) = 400;
  *(v4 + 94) = 1;
  *(v4 + 96) = 1125515264;
  *(v4 + 100) = 1028;
  *(v4 + 104) = 1092616192;
  *(v4 + 108) = 4;
  *(v4 + 112) = 1109393408;
  *(v4 + 16) = 20667;
  *(v4 + 24) = 88;
  return result;
}

__n128 PlainDataNode<PadNegPixelCompensationParams>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 44) = a2[1];
  *(a1 + 28) = v2;
  result = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  *(a1 + 108) = *(a2 + 10);
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  *(a1 + 60) = result;
  return result;
}

double PlainDataNode<BankCorrectionParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF0C8;
  *(v4 + 28) = xmmword_265420280;
  *(v4 + 44) = xmmword_265420290;
  result = 6.38029537e37;
  *(v4 + 60) = xmmword_2654202A0;
  *(v4 + 76) = 1108344832;
  *(v4 + 16) = 20669;
  *(v4 + 24) = 52;
  return result;
}

__n128 PlainDataNode<BankCorrectionParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 76) = *(a2 + 48);
  *(a1 + 60) = v4;
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

double PlainDataNode<ContactDistinguishingLevels>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF168;
  *(v4 + 28) = xmmword_2654202B0;
  *(v4 + 44) = xmmword_265420140;
  *(v4 + 60) = xmmword_265420150;
  *(v4 + 76) = xmmword_265420160;
  result = 8192.00197;
  *(v4 + 92) = 0x40C0000040800000;
  *(v4 + 16) = 20676;
  *(v4 + 24) = 72;
  return result;
}

__n128 PlainDataNode<ContactDistinguishingLevels>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 64);
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  *(a1 + 44) = result;
  return result;
}

__n128 PlainDataNode<PadTouchWithStylusParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 60) = *(a2 + 32);
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

__n128 PlainDataNode<PadCornerPalmParams>::injectBuffer(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 44) = a2[1].n128_u32[0];
  *(a1 + 28) = result;
  return result;
}

__n128 PlainDataNode<PadThumbEccenParams>::injectBuffer(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 44) = a2[1].n128_u64[0];
  *(a1 + 28) = result;
  return result;
}

double PlainDataNode<PadEdgeStraddleParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF2A8;
  *(v4 + 32) = 250;
  *(v4 + 40) = xmmword_2654202C0;
  *(v4 + 56) = xmmword_2654202D0;
  *(v4 + 72) = xmmword_2654202E0;
  *(v4 + 88) = xmmword_2654202F0;
  *(v4 + 104) = xmmword_265420300;
  *(v4 + 120) = xmmword_265420310;
  *(v4 + 136) = xmmword_265420320;
  *(v4 + 152) = xmmword_265420330;
  result = 2.18573821e27;
  *(v4 + 168) = xmmword_265420340;
  *(v4 + 184) = 1167867904;
  *(v4 + 16) = 20673;
  *(v4 + 24) = 160;
  return result;
}

__n128 PlainDataNode<BankPolyfitParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 44) = *(a2 + 16);
  *(a1 + 28) = result;
  return result;
}

__n128 PlainDataNode<PadEsdDetectParams>::injectBuffer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[3].n128_u64[0] = a2[1].n128_u64[0];
  a1[2] = result;
  return result;
}

AlgDataNode *SA2DArrayDynamicSize<signed char>::SA2DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  AlgDataNode::AlgDataNode(a1, a2, a6);
  *v9 = &unk_2876EF398;
  *(v9 + 32) = &unk_2876EF3E8;
  *(v9 + 40) = 20483;
  *(v9 + 44) = 2;
  *(v9 + 46) = 0;
  *(v9 + 56) = a3;
  *(v9 + 60) = a4;
  SA2DArrayDynamicSize<signed char>::initialize(v9, a3, a4);
  return a1;
}

uint64_t SA2DArrayDynamicSize<signed char>::initialize(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  v4 = operator new((a3 * a2));
  v6 = v3 + 32;
  v5 = *(v3 + 32);
  *(v3 + 48) = v4;
  v7 = *(v3 + 22);
  LODWORD(v3) = (*(v5 + 16))(v3 + 32);
  result = (*(*v6 + 24))(v6);
  *(v6 - 8) = v7 + result * v3;
  return result;
}

void SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(void *a1)
{
  SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA2DArrayDynamicSize<signed char>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, result);
  }

  return result;
}

void *SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EF398;
  a1[4] = &unk_2876EF3E8;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

void PadInputPreprocessingParams::PadInputPreprocessingParams(PadInputPreprocessingParams *this, int a2)
{
  v2 = SA2DArrayDynamicSize<unsigned char>::SA2DArrayDynamicSize(this, 0xBFDE0720AF6B029BLL, 4, a2, 0, 0);
  *(v2 + 8) = 0x8080808080808080;
  *(v2 + 9) = 0x8080808080808080;
  SA1DArrayBase<unsigned char>::fill(v2 + 32, 128);
}

void *SA1DArrayBase<unsigned char>::fill(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 8))(a1);
  (**a1)(a1);
  result = (**a1)(a1);
  *v4 = a2;
  if (result >= 2)
  {

    return memset(v4 + 1, a2, (result - 1));
  }

  return result;
}

AlgDataNode *SA2DArrayDynamicSize<unsigned char>::SA2DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  AlgDataNode::AlgDataNode(a1, a2, a6);
  *v9 = &unk_2876EF478;
  *(v9 + 32) = &unk_2876EF4C8;
  *(v9 + 40) = 20482;
  *(v9 + 44) = 2;
  *(v9 + 46) = 0;
  *(v9 + 56) = a3;
  *(v9 + 60) = a4;
  SA2DArrayDynamicSize<unsigned char>::initialize(v9, a3, a4);
  return a1;
}

uint64_t SA2DArrayDynamicSize<unsigned char>::initialize(uint64_t a1, int a2, int a3)
{
  v3 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  v4 = operator new((a3 * a2));
  v6 = v3 + 32;
  v5 = *(v3 + 32);
  *(v3 + 48) = v4;
  v7 = *(v3 + 22);
  LODWORD(v3) = (*(v5 + 16))(v3 + 32);
  result = (*(*v6 + 24))(v6);
  *(v6 - 8) = v7 + result * v3;
  return result;
}

void SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(void *a1)
{
  SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA2DArrayDynamicSize<unsigned char>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, result);
  }

  return result;
}

void *SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EF478;
  a1[4] = &unk_2876EF4C8;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

double Device0x039PadFireflyParameterCollection::Device0x039PadFireflyParameterCollection(PadFireflyParameterCollection *a1, uint64_t a2)
{
  v2 = (a1 + 328);
  PadFireflyParameterCollection::PadFireflyParameterCollection(a1, 6, 2, *(a2 + 10), *(a2 + 13), Device0x039::kProfileLookupTableLong, 8u, 1, 1u);
  *(v3 + 1836) = 1;
  *(v3 + 292) = 1202702336;
  *(v3 + 296) = 0;
  *(v3 + 300) = 0x47AFC8003F666666;
  *(v3 + 308) = 84214531;
  *(v3 + 312) = 7;
  *(v3 + 316) = 0x3A83126F43960000;
  *(v3 + 324) = 3;
  v91 = v2;
  *v2 = xmmword_265420350;
  *(v3 + 344) = 6;
  *(v3 + 348) = 0x3D4CCCCD42C80000;
  *(v3 + 356) = 250;
  *(v3 + 360) = 514;
  *(v3 + 364) = 1062836634;
  *(v3 + 368) = 2;
  *(v3 + 372) = 2;
  *(v3 + 376) = 0xC3F0000000000000;
  *(v3 + 384) = 1232348160;
  *(v3 + 1436) = 257;
  *(v3 + 1440) = xmmword_265420360;
  *(v3 + 1456) = xmmword_265420370;
  *(v3 + 1472) = xmmword_265420380;
  *(v3 + 1488) = xmmword_265420390;
  *(v3 + 1504) = xmmword_2654203A0;
  *(v3 + 1520) = xmmword_2654203B0;
  *(v3 + 1536) = xmmword_2654203C0;
  *(v3 + 1552) = 0;
  v4 = v3 + 568;
  *(v3 + 1556) = 0x40000000;
  v5 = (v3 + 604);
  v89 = v3 + 680;
  v6 = v3 + 698;
  v7 = v3 + 689;
  *(v3 + 1560) = 0x42480000446D8000;
  v8 = v3 + 707;
  v9 = v3 + 640;
  v10 = v3 + 658;
  v11 = v3 + 649;
  v12 = v3 + 667;
  *(v3 + 676) = 67371781;
  v90 = v3;
  memset_pattern16((v3 + 532), &unk_2654205F0, 0x18uLL);
  v13 = 0;
  v14 = v5;
  do
  {
    *(v14 - 9) = vcvts_n_f32_s32(Device0x039::kGenFireflyTipAzpps[v13], 1uLL) * 0.00097656;
    *v14++ = 0.11719;
    v15 = (v4 + v13);
    v15[112] = 2;
    v15[130] = 1;
    v15[121] = 2;
    v15[139] = 1;
    v15[72] = 1;
    v15[90] = 1;
    v15[81] = 1;
    v15[99] = 1;
    ++v13;
  }

  while (v13 != 6);
  memset_pattern16((v90 + 556), &unk_2654205F0, 8uLL);
  v16 = 6;
  v17 = 1;
  do
  {
    *(v4 + 4 * v16) = 1036386304;
    v18 = v17;
    v5[v16] = 0.11719;
    *(v89 + v16) = 2;
    *(v6 + v16) = 1;
    *(v7 + v16) = 2;
    *(v8 + v16) = 1;
    *(v9 + v16) = 1;
    *(v10 + v16) = 1;
    *(v11 + v16) = 1;
    *(v12 + v16) = 1;
    v16 = 7;
    v17 = 0;
  }

  while ((v18 & 1) != 0);
  *(v90 + 728) = 0x3FC000003FB70A3DLL;
  *(v90 + 494) = 0;
  *(v90 + 498) = 0;
  *(v90 + 486) = 15;
  *(v90 + 490) = 20;
  *(v91 + 92) = xmmword_2654203D0;
  *(v91 + 108) = 0;
  v19 = &Device0x039::kGenFireflyRawTiltAngles;
  v20 = 1644;
  v21.i64[0] = 0x3800000038000000;
  v21.i64[1] = 0x3800000038000000;
  do
  {
    v22 = *v19++;
    *(v90 + v20) = vmulq_f32(vcvtq_f32_s32(v22), v21);
    v20 += 16;
  }

  while (v20 != 1676);
  v23 = &Device0x039::kGenFireflyZtotAngleCorrection;
  v24.i64[0] = 0x3800000038000000;
  v24.i64[1] = 0x3800000038000000;
  do
  {
    v25 = *v23++;
    *(v90 + v20) = vmulq_f32(vcvtq_f32_s32(v25), v24);
    v20 += 16;
  }

  while (v20 != 1708);
  if (*(v90 + 1400) == 1)
  {
    v26 = *(v90 + 1403);
  }

  else
  {
    v26 = 1;
  }

  v27 = (*(a2 + 28) / *(a2 + 32)) * 1000.0;
  *(v90 + 772) = v27 / 55.0;
  *(v90 + 768) = 56;
  if (v26)
  {
    v28 = 0;
    v29 = v90 + 824;
    v30 = &Device0x039::kGenFireflyTipLutX;
    do
    {
      v31 = (*(*v29 + 8))(v29);
      *(v31 + 4 * (*(*v29 + 24))(v29) * v28) = 0;
      v32 = (*(*v29 + 8))(v29);
      *(v32 + 4 * ((*(*v29 + 24))(v29) * v28 + 55)) = 0;
      v33 = 1;
      v34 = 27;
      v35 = v30;
      do
      {
        v36 = *v35++;
        v37 = (*(*v29 + 8))(v29);
        *(v37 + 4 * (v33 + v28 * (*(*v29 + 24))(v29))) = (v27 * v36) / 32767.0;
        v38 = (*(*v29 + 8))(v29);
        v39 = *(v38 + 4 * (v33 + v28 * (*(*v29 + 24))(v29)));
        v40 = (*(*v29 + 8))(v29);
        *(v40 + 4 * (v34 + v28 * (*(*v29 + 24))(v29) + 27)) = -v39;
        ++v33;
        --v34;
      }

      while (v34);
      ++v28;
      v30 += 50;
    }

    while (v26 > v28);
  }

  v41 = (*(a2 + 20) / *(a2 + 24)) * 1000.0;
  *(v90 + 776) = v41 / 58.0;
  *(v90 + 769) = 59;
  if (v26)
  {
    v42 = 0;
    v43 = v90 + 888;
    v44 = &Device0x039::kGenFireflyTipLutY;
    do
    {
      v45 = (*(*v43 + 8))(v43);
      *(v45 + 4 * (*(*v43 + 24))(v43) * v42) = 0;
      v46 = (*(*v43 + 8))(v43);
      *(v46 + 4 * ((*(*v43 + 24))(v43) * v42 + 58)) = 0;
      v47 = 1;
      v48 = 28;
      v49 = v44;
      do
      {
        v50 = *v49++;
        v51 = (*(*v43 + 8))(v43);
        *(v51 + 4 * (v47 + v42 * (*(*v43 + 24))(v43))) = (v41 * v50) / 32767.0;
        v52 = (*(*v43 + 8))(v43);
        v53 = *(v52 + 4 * (v47 + v42 * (*(*v43 + 24))(v43)));
        v54 = (*(*v43 + 8))(v43);
        *(v54 + 4 * (v48 + v42 * (*(*v43 + 24))(v43) + 29)) = -v53;
        ++v47;
        --v48;
      }

      while (v48);
      v55 = (*(*v43 + 8))(v43);
      *(v55 + 4 * ((*(*v43 + 24))(v43) * v42++ + 29)) = 0;
      v44 += 50;
    }

    while (v26 > v42);
  }

  v92 = *(v90 + 1404);
  if (*(v90 + 1404))
  {
    v56 = 0;
    v57 = v90 + 824;
    v58 = &Device0x039::kGenP100TipLutX;
    do
    {
      v59 = *(v90 + 1403);
      v60 = (*(*(v90 + 824) + 8))(v57);
      v61 = (v59 + v56);
      *(v60 + 4 * (*(*v57 + 24))(v57) * v61) = 0;
      v62 = (*(*v57 + 8))(v57);
      *(v62 + 4 * ((*(*v57 + 24))(v57) * v61 + 55)) = 0;
      v63 = v61;
      v64 = 1;
      v65 = 27;
      v66 = v58;
      do
      {
        v67 = *v66++;
        v68 = (*(*v57 + 8))(v57);
        *(v68 + 4 * (v64 + v63 * (*(*v57 + 24))(v57))) = (v27 * v67) / 32767.0;
        v69 = (*(*v57 + 8))(v57);
        v70 = *(v69 + 4 * (v64 + v63 * (*(*v57 + 24))(v57)));
        v71 = (*(*v57 + 8))(v57);
        *(v71 + 4 * (v65 + v63 * (*(*v57 + 24))(v57) + 27)) = -v70;
        ++v64;
        --v65;
      }

      while (v65);
      ++v56;
      v58 += 50;
    }

    while (v56 != v92);
    v72 = 0;
    v73 = v90 + 888;
    v74 = &Device0x039::kGenP100TipLutY;
    do
    {
      v75 = *(v90 + 1403);
      v76 = (*(*(v90 + 888) + 8))(v73);
      v77 = (v75 + v72);
      *(v76 + 4 * (*(*v73 + 24))(v73) * v77) = 0;
      v78 = (*(*v73 + 8))(v73);
      *(v78 + 4 * ((*(*v73 + 24))(v73) * v77 + 58)) = 0;
      v79 = 1;
      v80 = 28;
      v81 = v74;
      do
      {
        v82 = *v81++;
        v83 = (*(*v73 + 8))(v73);
        *(v83 + 4 * (v79 + v77 * (*(*v73 + 24))(v73))) = (v41 * v82) / 32767.0;
        v84 = (*(*v73 + 8))(v73);
        v85 = *(v84 + 4 * (v79 + v77 * (*(*v73 + 24))(v73)));
        v86 = (*(*v73 + 8))(v73);
        *(v86 + 4 * (v80 + v77 * (*(*v73 + 24))(v73) + 29)) = -v85;
        ++v79;
        --v80;
      }

      while (v80);
      v87 = (*(*v73 + 8))(v73);
      *(v87 + 4 * ((*(*v73 + 24))(v73) * v77 + 29)) = 0;
      ++v72;
      v74 += 50;
    }

    while (v72 != v92);
  }

  *(v90 + 1840) = xmmword_2654203E0;
  *(v90 + 1856) = xmmword_2654203F0;
  *(v90 + 1872) = xmmword_265420400;
  *(v90 + 1888) = xmmword_265420410;
  result = 6.79931105e-10;
  *(v90 + 1904) = 0x3E075CBCBC0869FBLL;
  return result;
}

void PadFireflyParameterCollection::PadFireflyParameterCollection(PadFireflyParameterCollection *this, int a2, int a3, int a4, int a5, unsigned __int8 *a6, unsigned int a7, int a8, unsigned __int8 a9)
{
  *this = -105;
  v15 = (this + 144);
  PadFireflyBloomingParams::PadFireflyBloomingParams((this + 8), a2, a3, a4, a5);
  AlgDataNode::AlgDataNode(v15, 0x726CB863A12E63BDLL, 0);
  *(this + 18) = &unk_2876EF028;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 220) = 0u;
  *(this + 172) = 0u;
  *(this + 236) = 0u;
  *(this + 248) = 0u;
  *(this + 47) = 1065353216;
  *(this + 51) = 1065353216;
  *(this + 55) = 1065353216;
  *(this + 40) = 20665;
  *(this + 42) = 92;
  PlainDataNode<FireflyNegPixelCompensationParam>::PlainDataNode((this + 264), 0x252CA392CDFFC5DBLL, 0, 0);
  PlainDataNode<PadFireflyThresholdParams>::PlainDataNode((this + 392), 0x231A83CA09FA81C7, 0, 0);
  AlgDataNode::AlgDataNode((this + 456), 0xF6FA37937A1C5272, 0);
  *(this + 57) = &unk_2876EF5F8;
  *(this + 484) = 0;
  *(this + 490) = 0;
  *(this + 243) = 5;
  *(this + 245) = 30;
  *(this + 249) = 0;
  *(this + 118) = 20683;
  *(this + 120) = 16;
  AlgDataNode::AlgDataNode((this + 504), 0x7D32E2D0DA101BB1, 0);
  *(this + 63) = &unk_2876EF648;
  PadFireflyXYMeasurementParams::PadFireflyXYMeasurementParams((this + 532));
  *(this + 130) = 20685;
  *(this + 132) = 232;
  PadFireflyLutParams::PadFireflyLutParams((this + 768), a2, a3, (a3 + a2), a8, a9);
  PlainDataNode<PadFireflyExtrapolationParams>::PlainDataNode((this + 1408), 0x54E15A6DCFEB3A84, 0, 0);
  AlgDataNode::AlgDataNode((this + 1568), 0xE690EBDC522C80E3, 0);
  *(this + 196) = &unk_2876EF788;
  *(this + 798) = 2;
  *(this + 200) = 0x437A000042480000;
  *(this + 402) = 196611;
  *(this + 396) = 20691;
  *(this + 398) = 16;
  AlgDataNode::AlgDataNode((this + 1616), 0x229CC8C20CFF6C21, 0);
  *(this + 202) = &unk_2876EF7D8;
  *(this + 1644) = xmmword_265423E98;
  *(this + 1660) = unk_265423EA8;
  *(this + 1676) = xmmword_265423EB8;
  *(this + 1692) = unk_265423EC8;
  *(this + 408) = 20687;
  *(this + 410) = 64;
  PlainDataNode<PadFireflyAdaptiveMakeBreak>::PlainDataNode((this + 1712), 0x7EFC3A890E5B841ALL, 0, 0);
  PlainDataNode<PadFireflyDisplayNoiseProjection>::PlainDataNode((this + 1808), 0xFCCD578C1EF39D4ELL, 0, 0);
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((this + 1912), 0x1CFD9E94E117BA6BLL, a7);
  AlgDataNode::AlgDataNode((this + 1968), 0x67D8B3472AC2AD89, 0);
  *(this + 246) = &unk_2876EF968;
  *(this + 250) = 0x3F0000003F333333;
  *(this + 496) = 20709;
  *(this + 249) = 0x3F6666660000000CLL;
  PlainDataNode<PadFireflyPeakDetectionParams>::PlainDataNode((this + 2008), 0x4848AF96B81C6B3ALL, 0, 0);
  AlgDataNode::AlgDataNode((this + 2072), 0x9F2AFFCCF871CB7, 0);
  *(this + 259) = &unk_2876EFA08;
  bzero(this + 2100, 0x44CuLL);
  *(this + 522) = 20721;
  *(this + 524) = 1100;
  *(this + 800) = 16842752;
  *(this + 1602) = 0;
  *(this + 1) = 240;
  *(this + 760) = a2;
  *(this + 761) = a3;
  v16 = (*(*(this + 243) + 8))(this + 1944);
  v17 = (**(this + 243))(this + 1944);
  if (v16 != a6)
  {
    memcpy(v16, a6, v17);
  }
}

void sub_2653CFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  *v18 = &unk_2876F3810;
  *v20 = &unk_2876F3810;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v15 + 239);
  *v19 = &unk_2876F3810;
  *a9 = &unk_2876F3810;
  *v17 = &unk_2876F3810;
  *v16 = &unk_2876F3810;
  *a10 = &unk_2876F3810;
  PadFireflyLutParams::~PadFireflyLutParams((v15 + 96));
  *a11 = &unk_2876F3810;
  *a12 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  *a14 = &unk_2876F3810;
  *a15 = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v15 + 10);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v15 + 2);
  _Unwind_Resume(a1);
}

void PadFireflyParameterCollection::~PadFireflyParameterCollection(PadFireflyParameterCollection *this)
{
  *(this + 259) = &unk_2876F3810;
  *(this + 251) = &unk_2876F3810;
  *(this + 246) = &unk_2876F3810;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 239);
  *(this + 226) = &unk_2876F3810;
  *(this + 214) = &unk_2876F3810;
  *(this + 202) = &unk_2876F3810;
  *(this + 196) = &unk_2876F3810;
  *(this + 176) = &unk_2876F3810;
  PadFireflyLutParams::~PadFireflyLutParams((this + 768));
  *(this + 63) = &unk_2876F3810;
  *(this + 57) = &unk_2876F3810;
  *(this + 49) = &unk_2876F3810;
  *(this + 33) = &unk_2876F3810;
  *(this + 18) = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 10);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 2);
}

void PadFireflyBloomingParams::PadFireflyBloomingParams(PadFireflyBloomingParams *this, int a2, int a3, int a4, int a5)
{
  *this = a2;
  *(this + 1) = a3;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 8), 0x7BEC1D6CB94FD62ALL, a3 + a2, a4, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 72), 0x7BEC1D6CB9501604, a3 + a2, a5, 0, 0);
  SA1DArrayBase<float>::fill(this + 40, 1.0);
  SA1DArrayBase<float>::fill(this + 104, 1.0);
}

uint64_t SA1DArrayBase<float>::fill(uint64_t a1, float a2)
{
  v4 = (*(*a1 + 8))(a1);
  (**a1)(a1);
  result = (**a1)(a1);
  *v4 = a2;
  if (result >= 2)
  {
    v6 = 0;
    v7 = (result - 1);
    v8 = vdupq_n_s64(v7 - 1);
    v9 = (v7 + 3) & 0x1FFFFFFFCLL;
    v10 = v4 + 2;
    do
    {
      v11 = vdupq_n_s64(v6);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_26541FD30)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v10 - 1) = a2;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *v10 = a2;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_26541FD20)))).i32[1])
      {
        v10[1] = a2;
        v10[2] = a2;
      }

      v6 += 4;
      v10 += 4;
    }

    while (v9 != v6);
  }

  return result;
}

double PlainDataNode<FireflyNegPixelCompensationParam>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF558;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0x481C40003F666666;
  *(v4 + 44) = 84214531;
  *(v4 + 48) = 7;
  *(v4 + 52) = 0x3A83126F43C80000;
  *(v4 + 60) = 3;
  *(v4 + 64) = xmmword_265420420;
  *(v4 + 80) = 6;
  *(v4 + 84) = 0x3D4CCCCD42C80000;
  *(v4 + 92) = 250;
  *(v4 + 96) = 514;
  *(v4 + 100) = 1062836634;
  *(v4 + 104) = 2;
  *(v4 + 108) = 2;
  result = -1.84467441e19;
  *(v4 + 112) = 0xC3F0000000000000;
  *(v4 + 120) = 1232348160;
  *(v4 + 16) = 20692;
  *(v4 + 24) = 100;
  *(v4 + 28) = 1209810944;
  return result;
}

__n128 PlainDataNode<FireflyNegPixelCompensationParam>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 60) = a2[2];
  *(a1 + 44) = v3;
  *(a1 + 28) = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 124) = *(a2 + 24);
  *(a1 + 108) = v6;
  *(a1 + 92) = v5;
  *(a1 + 76) = result;
  return result;
}

double PlainDataNode<PadFireflyThresholdParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF5A8;
  *(v4 + 28) = xmmword_2654203D0;
  *(v4 + 44) = 0;
  result = 4.20899717e28;
  *(v4 + 52) = 0x45E10000461AB000;
  *(v4 + 16) = 20682;
  *(v4 + 24) = 32;
  return result;
}

__n128 PlainDataNode<PadFireflyXYMeasurementParams>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 60) = a2[2];
  *(a1 + 44) = v3;
  *(a1 + 28) = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 124) = a2[6];
  *(a1 + 108) = v6;
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 188) = a2[10];
  *(a1 + 172) = v9;
  *(a1 + 156) = v8;
  *(a1 + 140) = v7;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 252) = *(a2 + 28);
  *(a1 + 236) = v12;
  *(a1 + 220) = v11;
  *(a1 + 204) = result;
  return result;
}

void PadFireflyXYMeasurementParams::PadFireflyXYMeasurementParams(PadFireflyXYMeasurementParams *this)
{
  *(this + 36) = 67371781;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 23) = _D0;
  *(this + 192) = 1;
  *(this + 196) = xmmword_265420430;
  *(this + 212) = xmmword_265420440;
  *(this + 114) = 519;
  memset_pattern16(this, &unk_2654205C0, 0x24uLL);
  memset_pattern16(this + 36, &unk_2654205D0, 0x24uLL);
  memset_pattern16(this + 72, &unk_2654205E0, 0x24uLL);
  for (i = 175; i != 184; ++i)
  {
    v8 = this + i;
    *(v8 - 67) = 1;
    *(v8 - 58) = 1;
    *(v8 - 49) = 1;
    *(v8 - 40) = 1;
    *(v8 - 27) = 2;
    *(v8 - 18) = 2;
    *(v8 - 9) = 1;
    *v8 = 1;
  }
}

void PadFireflyLutParams::PadFireflyLutParams(PadFireflyLutParams *this, int a2, int a3, int a4, int a5, int a6)
{
  *this = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 24), 0xE7E9F526CF674076, a4, 101, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 88), 0xE7E9F526CF674077, a4, 101, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 152), 0x1BF2E999B76A69C7, a4, a5, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 216), 0x1BF2E999B76A69C8, a4, a6, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 280), 0x8D3FD794C9A45604, a4, a5, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 344), 0x8D3FD794C9A45605, a4, a6, 0, 0);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 408), 0xFD9BCB78049BEDF1, 4u);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 464), 0xFD9BCB78049BEDF2, 4u);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 520), 0xB7837F0AFE84642ELL, 4u);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 576), 0xB7837F0AFE84642FLL, 4u);
  *(this + 632) = a3 + a2 == a4;
  *(this + 633) = 0;
  *(this + 635) = a2;
  *(this + 636) = a3;
  *(this + 637) = a5;
  *(this + 638) = a6;
  SA1DArrayBase<float>::fill(this + 56, 0.0);
  SA1DArrayBase<float>::fill(this + 120, 0.0);
  SA1DArrayBase<float>::fill(this + 184, 0.0);
  SA1DArrayBase<float>::fill(this + 248, 0.0);
  SA1DArrayBase<float>::fill(this + 312, 0.0);
  SA1DArrayBase<float>::fill(this + 376, 0.0);
  SA1DArrayBase<float>::fill(this + 440, 0.0);
  SA1DArrayBase<float>::fill(this + 496, 0.0);
  SA1DArrayBase<float>::fill(this + 552, 0.0);
  SA1DArrayBase<float>::fill(this + 608, 0.0);
}

void sub_2653D0700(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 65);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 58);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 51);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 43);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 35);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 27);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 19);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 11);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 3);
  _Unwind_Resume(a1);
}

AlgDataNode *SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, unsigned int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v5 = &unk_2876EF698;
  *(v5 + 32) = &unk_2876EF6E0;
  *(v5 + 40) = 20481;
  *(v5 + 44) = 1;
  *(v5 + 16) = 39424;
  *(v5 + 22) = 8;
  *(v5 + 45) = a3;
  *(v5 + 24) = 4 * a3 + 8;
  *(a1 + 6) = operator new(4 * a3);
  return a1;
}

void SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(void *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA1DArrayDynamicSize<float>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  (*(*v3 + 40))(v3);
  v6 = v3[4];
  v3 += 4;
  v7 = (*(v6 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 4 * result);
  }

  return result;
}

void *SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EF698;
  a1[4] = &unk_2876EF6E0;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8052888210);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

double PlainDataNode<PadFireflyExtrapolationParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF738;
  *(v4 + 28) = 257;
  *(v4 + 32) = xmmword_265420360;
  *(v4 + 48) = xmmword_265420370;
  *(v4 + 64) = xmmword_265420380;
  *(v4 + 80) = xmmword_265420450;
  *(v4 + 96) = xmmword_2654203A0;
  *(v4 + 112) = xmmword_2654203B0;
  *(v4 + 128) = xmmword_2654203C0;
  *(v4 + 144) = 0;
  result = 4.35343216e21;
  *(v4 + 148) = 0x446D800040000000;
  *(v4 + 156) = 1112014848;
  *(v4 + 16) = 20686;
  *(v4 + 24) = 132;
  return result;
}

__n128 PlainDataNode<PadFireflyExtrapolationParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 64);
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  *(a1 + 44) = v2;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 156) = *(a2 + 128);
  *(a1 + 140) = v7;
  *(a1 + 124) = v6;
  *(a1 + 108) = result;
  return result;
}

double PlainDataNode<PadFireflyAdaptiveMakeBreak>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF828;
  *(v4 + 28) = xmmword_265420460;
  *(v4 + 44) = xmmword_265420470;
  *(v4 + 60) = xmmword_265420480;
  result = 0.000878906475;
  *(v4 + 76) = xmmword_265420490;
  *(v4 + 92) = 1063675494;
  *(v4 + 16) = 20688;
  *(v4 + 24) = 68;
  return result;
}

__n128 PlainDataNode<PadFireflyAdaptiveMakeBreak>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 64);
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  *(a1 + 44) = result;
  return result;
}

double PlainDataNode<PadFireflyDisplayNoiseProjection>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF878;
  *(v4 + 28) = 1;
  *(v4 + 32) = xmmword_2654204A0;
  *(v4 + 48) = xmmword_2654204B0;
  *(v4 + 64) = xmmword_2654204C0;
  *(v4 + 80) = xmmword_2654204D0;
  result = 0.00000000178254898;
  *(v4 + 96) = 0x3E1E9FBBBC3DBA67;
  *(v4 + 16) = 20696;
  *(v4 + 24) = 76;
  return result;
}

__n128 PlainDataNode<PadFireflyDisplayNoiseProjection>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 88) = *(a2 + 60);
  *(a1 + 76) = v4;
  *(a1 + 60) = v3;
  *(a1 + 44) = result;
  return result;
}

AlgDataNode *SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, unsigned int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v5 = &unk_2876EF8C8;
  *(v5 + 32) = &unk_2876EF910;
  *(v5 + 40) = 20482;
  *(v5 + 44) = 1;
  *(v5 + 16) = 39424;
  *(v5 + 22) = 8;
  *(v5 + 45) = a3;
  *(v5 + 24) = a3 + 8;
  *(a1 + 6) = operator new(a3);
  return a1;
}

void SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(void *a1)
{
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA1DArrayDynamicSize<unsigned char>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  (*(*v3 + 40))(v3);
  v6 = v3[4];
  v3 += 4;
  v7 = (*(v6 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, result);
  }

  return result;
}

uint64_t PlainDataNode<PadFireflyHoverTransitionParams>::injectBuffer(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 36) = *(a2 + 2);
  *(result + 28) = v2;
  return result;
}

double PlainDataNode<PadFireflyPeakDetectionParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EF9B8;
  *(v4 + 32) = xmmword_2654204E0;
  *(v4 + 48) = 0x3F666666358637BDLL;
  *(v4 + 56) = 16974850;
  *(v4 + 60) = 1;
  *(v4 + 61) = 0;
  *(v4 + 63) = 0;
  *(v4 + 16) = 20722;
  *&result = 0x300000024;
  *(v4 + 24) = 0x300000024;
  return result;
}

void *SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EF8C8;
  a1[4] = &unk_2876EF910;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8077774924);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

void PadFireflyLutParams::~PadFireflyLutParams(PadFireflyLutParams *this)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 72);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 65);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 58);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 51);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 43);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 35);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 27);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 19);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 11);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 3);
}

uint64_t Device0x039PadHoverParameterCollection::Device0x039PadHoverParameterCollection(uint64_t a1, uint64_t a2)
{
  v3 = PadHoverParameterCollection::PadHoverParameterCollection(a1, 6, 8, 6, *(a2 + 10), *(a2 + 13), 0xCu, a2, 0x48u, 56, 14, &Device0x039::kFreqToProfileIndexLookupTable, 6u, 35, 8u, 8u);
  *v3 = &unk_2876EFA58;
  v4 = PlainDataNode<ExtrapolationParams>::PlainDataNode((v3 + 370), 0xE9CCE10AB7FD5EF3, 0, 0);
  *(a1 + 836) = 1082560348;
  v5 = (*(*(a1 + 1264) + 8))(a1 + 1264, v4);
  v6 = (**(a1 + 1264))(a1 + 1264);
  if (v5 != &Device0x039::kGenProfileTipX)
  {
    memcpy(v5, &Device0x039::kGenProfileTipX, 4 * v6);
  }

  v7 = (*(*(a1 + 1336) + 8))(a1 + 1336);
  v8 = (**(a1 + 1336))(a1 + 1336);
  if (v7 != &Device0x039::kGenProfileTipY)
  {
    memcpy(v7, &Device0x039::kGenProfileTipY, 4 * v8);
  }

  v9 = (*(*(a1 + 1408) + 8))(a1 + 1408);
  v10 = (**(a1 + 1408))(a1 + 1408);
  if (v9 != &Device0x039::kGenProfileRingX)
  {
    memcpy(v9, &Device0x039::kGenProfileRingX, 4 * v10);
  }

  v11 = (*(*(a1 + 1480) + 8))(a1 + 1480);
  v12 = (**(a1 + 1480))(a1 + 1480);
  if (v11 != &Device0x039::kGenProfileRingY)
  {
    memcpy(v11, &Device0x039::kGenProfileRingY, 4 * v12);
  }

  v13 = (*(*(a1 + 1208) + 8))(a1 + 1208);
  v14 = (**(a1 + 1208))(a1 + 1208);
  if (v13 != &Device0x039PadHoverParameterCollection::Device0x039PadHoverParameterCollection(PadSurfaceDimensions const&,MemType_t)::kProfileHeights)
  {
    memcpy(v13, &Device0x039PadHoverParameterCollection::Device0x039PadHoverParameterCollection(PadSurfaceDimensions const&,MemType_t)::kProfileHeights, 4 * v14);
  }

  v15 = (*(*(a1 + 1552) + 8))(a1 + 1552);
  v16 = (**(a1 + 1552))(a1 + 1552);
  if (v15 != &Device0x039::kGenPhaseGapCosLut)
  {
    memcpy(v15, &Device0x039::kGenPhaseGapCosLut, 4 * v16);
  }

  v17 = (*(*(a1 + 1624) + 8))(a1 + 1624);
  v18 = (**(a1 + 1624))(a1 + 1624);
  if (v17 != &Device0x039::kGenPhaseGapSinLut)
  {
    memcpy(v17, &Device0x039::kGenPhaseGapSinLut, 4 * v18);
  }

  v19 = (*(*(a1 + 1696) + 8))(a1 + 1696);
  v20 = (**(a1 + 1696))(a1 + 1696);
  if (v19 != &Device0x039::kGenXEdgeFHYTipLut)
  {
    memcpy(v19, &Device0x039::kGenXEdgeFHYTipLut, 4 * v20);
  }

  v21 = (*(*(a1 + 1840) + 8))(a1 + 1840);
  v22 = (**(a1 + 1840))(a1 + 1840);
  if (v21 != &Device0x039::kGenXEdgeFHYRingLut)
  {
    memcpy(v21, &Device0x039::kGenXEdgeFHYRingLut, 4 * v22);
  }

  v23 = (*(*(a1 + 1768) + 8))(a1 + 1768);
  v24 = (**(a1 + 1768))(a1 + 1768);
  if (v23 != &Device0x039::kGenYEdgeFHXTipLut)
  {
    memcpy(v23, &Device0x039::kGenYEdgeFHXTipLut, 4 * v24);
  }

  v25 = (*(*(a1 + 1912) + 8))(a1 + 1912);
  v26 = (**(a1 + 1912))(a1 + 1912);
  if (v25 != &Device0x039::kGenYEdgeFHXRingLut)
  {
    memcpy(v25, &Device0x039::kGenYEdgeFHXRingLut, 4 * v26);
  }

  *(a1 + 2475) = 1028;
  *(a1 + 2477) = 1;
  v27 = (*(*(a1 + 1984) + 8))(a1 + 1984);
  v28 = (**(a1 + 1984))(a1 + 1984);
  if (v27 != &Device0x039::kGenGridX)
  {
    memcpy(v27, &Device0x039::kGenGridX, 4 * v28);
  }

  v29 = (*(*(a1 + 2040) + 8))(a1 + 2040);
  v30 = (**(a1 + 2040))(a1 + 2040);
  if (v29 != &Device0x039::kGenGridY)
  {
    memcpy(v29, &Device0x039::kGenGridY, 4 * v30);
  }

  v31 = (*(*(a1 + 2096) + 8))(a1 + 2096);
  v32 = (**(a1 + 2096))(a1 + 2096);
  if (v31 != &Device0x039::kGenGridH)
  {
    memcpy(v31, &Device0x039::kGenGridH, 4 * v32);
  }

  v33 = (*(*(a1 + 2264) + 8))(a1 + 2264);
  v34 = (**(a1 + 2264))(a1 + 2264);
  if (v33 != &Device0x039::kGenHoverHeightBiasCorrectionTipLut)
  {
    memcpy(v33, &Device0x039::kGenHoverHeightBiasCorrectionTipLut, 4 * v34);
  }

  v35 = (*(*(a1 + 2328) + 8))(a1 + 2328);
  v36 = (**(a1 + 2328))(a1 + 2328);
  if (v35 != &Device0x039::kGenHoverHeightTipLut)
  {
    memcpy(v35, &Device0x039::kGenHoverHeightTipLut, 4 * v36);
  }

  v37 = (*(*(a1 + 2152) + 8))(a1 + 2152);
  v38 = (**(a1 + 2152))(a1 + 2152);
  if (v37 != &Device0x039HoverZtotHeightLut::kLowHoverZtot)
  {
    memcpy(v37, &Device0x039HoverZtotHeightLut::kLowHoverZtot, 4 * v38);
  }

  v39 = (*(*(a1 + 2208) + 8))(a1 + 2208);
  v40 = (**(a1 + 2208))(a1 + 2208);
  if (v39 != &Device0x039HoverZtotHeightLut::kLowHoverHeightsLut)
  {
    memcpy(v39, &Device0x039HoverZtotHeightLut::kLowHoverHeightsLut, 4 * v40);
  }

  v41 = (*(*(a1 + 2392) + 8))(a1 + 2392);
  v42 = (**(a1 + 2392))(a1 + 2392);
  memcpy(v41, &unk_2654FFB58, 4 * v42);
  v43 = (*(*(a1 + 2448) + 8))(a1 + 2448);
  v44 = (**(a1 + 2448))(a1 + 2448);
  memcpy(v43, &unk_2654FFB78, 4 * v44);
  bzero(__src, 0x300uLL);
  for (i = 0; i != 144; i += 48)
  {
    *&v46 = &Device0x039::kGenProfCoefsTipX;
    *(&v46 + 1) = &unk_2654FFBB0;
    *&v47 = &unk_2654FFBB0;
    *(&v47 + 1) = &unk_2654FFBC8;
    v48 = &__src[i];
    v48[2] = v47;
    *&v47 = &unk_2654FFBC8;
    *(&v47 + 1) = &Device0x039::kGenProfCoefsTipX;
    *v48 = v46;
    v48[1] = v47;
    *&v46 = &Device0x039::kGenProfCoefsTipY;
    *(&v46 + 1) = &unk_2654FFBF8;
    *&v47 = &unk_2654FFBF8;
    *(&v47 + 1) = &unk_2654FFC10;
    v48[14] = v47;
    *&v47 = &unk_2654FFC10;
    *(&v47 + 1) = &Device0x039::kGenProfCoefsTipY;
    v48[12] = v46;
    v48[13] = v47;
    *&v46 = &Device0x039::kGenProfCoefsRingX;
    *(&v46 + 1) = &unk_2654FFC40;
    *&v47 = &unk_2654FFC40;
    *(&v47 + 1) = &unk_2654FFC58;
    v48[26] = v47;
    *&v47 = &unk_2654FFC58;
    *(&v47 + 1) = &Device0x039::kGenProfCoefsRingX;
    v48[24] = v46;
    v48[25] = v47;
    *&v46 = &Device0x039::kGenProfCoefsRingY;
    *(&v46 + 1) = &unk_2654FFC88;
    *&v47 = &unk_2654FFC88;
    *(&v47 + 1) = &unk_2654FFCA0;
    v48[38] = v47;
    *&v47 = &unk_2654FFCA0;
    *(&v47 + 1) = &Device0x039::kGenProfCoefsRingY;
    v48[36] = v46;
    v48[37] = v47;
  }

  memcpy(__dst, __src, sizeof(__dst));
  if (__dst != (a1 + 40))
  {
    swap((a1 + 40), __dst);
  }

  *(a1 + 996) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1004) = 0x47AFC8003F666666;
  *(a1 + 1012) = 84214531;
  *(a1 + 1016) = 7;
  *(a1 + 1020) = 0x3A83126F00000000;
  *(a1 + 1028) = 3;
  *(a1 + 1032) = xmmword_265420350;
  *(a1 + 1048) = 6;
  *(a1 + 1052) = 0x3D4CCCCD42C80000;
  *(a1 + 1060) = 250;
  *(a1 + 1064) = 514;
  *(a1 + 1068) = 1062836634;
  *(a1 + 1072) = 2;
  *(a1 + 1076) = 2;
  *(a1 + 1080) = 0xC3F0000000000000;
  *(a1 + 1088) = 1232348160;
  *(a1 + 2548) = xmmword_2654204F0;
  return a1;
}

uint64_t PadHoverParameterCollection::PadHoverParameterCollection(uint64_t a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, unsigned __int8 a9, char a10, char a11, void *__src, unsigned __int16 a13, char a14, unsigned __int8 a15, unsigned __int8 a16)
{
  *a1 = &unk_2876EFAA0;
  PlainDataNode<HoverProfileModelParamsSt>::PlainDataNode((a1 + 8));
  AlgDataNode::AlgDataNode((a1 + 808), 0x2345CE583FDCFE75, 0);
  *(a1 + 808) = &unk_2876EFB10;
  *(a1 + 824) = 20481;
  *(a1 + 832) = 4;
  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 840), 0xFD897E6A9732294FLL, a13);
  PlainDataNode<PadHoverRefinementParam>::PlainDataNode((a1 + 896), 0xBB06875D8176EF9ALL, 0, 0);
  PlainDataNode<FireflyNegPixelCompensationParam>::PlainDataNode((a1 + 968), 0x7E9608A87C55B4EELL, 0, 0);
  AlgDataNode::AlgDataNode((a1 + 1096), 0x3470A5B2DBE2215ELL, 0);
  *(a1 + 1096) = &unk_2876EFBB0;
  *(a1 + 1124) = 7;
  *(a1 + 1128) = 0x40000000;
  *(a1 + 1132) = 1281;
  *(a1 + 1134) = 11;
  *(a1 + 1112) = 20697;
  *(a1 + 1120) = 12;
  *(a1 + 1136) = a7;
  *(a1 + 1137) = a4;
  *(a1 + 1140) = a7;
  *(a1 + 1144) = *(a8 + 28) / *(a8 + 32);
  *(a1 + 1148) = *(a8 + 20) / *(a8 + 24);
  *(a1 + 1152) = a2;
  *(a1 + 1156) = vdivq_f32(*(a8 + 124), vdupq_n_s32(0x447A0000u));
  PadHoverProfileModelSt::PadHoverProfileModelSt((a1 + 1176), a5, a6, a7);
  PadHoverLutSt::PadHoverLutSt((a1 + 1520), a2, a3, a4, a5, a6, a7, a9, a10, a11, a14, a15, a16);
  AlgDataNode::AlgDataNode((a1 + 2480), 0x35FA16E258356ECCLL, 0);
  *(a1 + 2480) = &unk_2876EFCE0;
  *(a1 + 2512) = 1143930880;
  *(a1 + 2516) = 1024;
  *(a1 + 2518) = 1;
  *(a1 + 2496) = 20702;
  *(a1 + 2504) = 0x442F00000000000CLL;
  AlgDataNode::AlgDataNode((a1 + 2520), 0xF11652BA98456AFELL, 0);
  *(a1 + 2520) = &unk_2876EFD30;
  *(a1 + 2548) = xmmword_265420500;
  *(a1 + 2536) = 20704;
  *(a1 + 2544) = 16;
  PlainDataNode<PadHoverPathFilteringParams>::PlainDataNode((a1 + 2568), 0x9B701D96236312BELL, 0, 0);
  PlainDataNode<PadHoverMitigationsParams>::PlainDataNode((a1 + 2760), 0x2DC8BC51FF722015, 0, 0);
  AlgDataNode::AlgDataNode((a1 + 2848), 0x82BCA62B24DC9985, 0);
  *(a1 + 2848) = &unk_2876EFE20;
  *(a1 + 2884) = 0;
  *(a1 + 2892) = 0;
  *(a1 + 2876) = 0;
  *(a1 + 2864) = 20723;
  *(a1 + 2872) = 24;
  AlgDataNode::AlgDataNode((a1 + 2904), 0xFEECBBEC363783B1, 0);
  *(a1 + 2904) = &unk_2876EFE70;
  *(a1 + 2932) = 16974851;
  *(a1 + 2936) = xmmword_265420510;
  *(a1 + 2952) = 0;
  *(a1 + 2920) = 20724;
  *(a1 + 2928) = 24;
  *(a1 + 1172) = 60;
  *(a1 + 1124) = a2;
  v24 = (*(*(a1 + 872) + 8))(a1 + 872);
  v25 = (**(a1 + 872))(a1 + 872);
  if (v24 != __src)
  {
    memcpy(v24, __src, v25);
  }

  return a1;
}

void sub_2653D2338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  *v15 = &unk_2876F3810;
  *v19 = &unk_2876F3810;
  *v16 = &unk_2876F3810;
  *v18 = &unk_2876F3810;
  *v17 = &unk_2876F3810;
  PadHoverLutSt::~PadHoverLutSt((v14 + 190));
  PadHoverProfileModelSt::~PadHoverProfileModelSt((v14 + 147));
  *a10 = &unk_2876F3810;
  *a11 = &unk_2876F3810;
  *a12 = &unk_2876F3810;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v14 + 105);
  *a13 = &unk_2876F3810;
  *a14 = &unk_2876F3810;
  _Unwind_Resume(a1);
}

void PadHoverParameterCollection::~PadHoverParameterCollection(PadHoverParameterCollection *this)
{
  *this = &unk_2876EFAA0;
  *(this + 363) = &unk_2876F3810;
  *(this + 356) = &unk_2876F3810;
  *(this + 345) = &unk_2876F3810;
  *(this + 321) = &unk_2876F3810;
  *(this + 315) = &unk_2876F3810;
  *(this + 310) = &unk_2876F3810;
  PadHoverLutSt::~PadHoverLutSt((this + 1520));
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 181);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 172);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 163);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 154);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 147);
  *(this + 137) = &unk_2876F3810;
  *(this + 121) = &unk_2876F3810;
  *(this + 112) = &unk_2876F3810;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 105);
  *(this + 101) = &unk_2876F3810;
  *(this + 1) = &unk_2876F3810;
}

{
  PadHoverParameterCollection::~PadHoverParameterCollection(this);

  JUMPOUT(0x266758590);
}

void Device0x039PadHoverParameterCollection::~Device0x039PadHoverParameterCollection(Device0x039PadHoverParameterCollection *this)
{
  *this = &unk_2876EFA58;
  *(this + 370) = &unk_2876F3810;
  PadHoverParameterCollection::~PadHoverParameterCollection(this);
}

{
  *this = &unk_2876EFA58;
  *(this + 370) = &unk_2876F3810;
  PadHoverParameterCollection::~PadHoverParameterCollection(this);

  JUMPOUT(0x266758590);
}

void PlainDataNode<HoverProfileModelParamsSt>::PlainDataNode(AlgDataNode *a1)
{
  AlgDataNode::AlgDataNode(a1);
  *v1 = &unk_2876EFAC0;
  v2 = 32;
  do
  {
    v3 = (v1 + v2);
    v2 += 24;
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  while (v2 != 224);
  do
  {
    v4 = (v1 + v2);
    v2 += 24;
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  while (v2 != 416);
  do
  {
    v5 = (v1 + v2);
    v2 += 24;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  while (v2 != 608);
  do
  {
    v6 = (v1 + v2);
    v2 += 24;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  while (v2 != 800);
  *(v1 + 16) = 20703;
  *(v1 + 24) = 768;
}

double PlainDataNode<PadHoverRefinementParam>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EFB60;
  *(v4 + 28) = xmmword_265420520;
  *(v4 + 44) = 522;
  *&result = 1028443341;
  *(v4 + 48) = xmmword_265420530;
  *(v4 + 64) = 65538;
  *(v4 + 16) = 20701;
  *(v4 + 24) = 40;
  return result;
}

__n128 PlainDataNode<PadHoverRefinementParam>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 60) = *(a2 + 32);
  *(a1 + 44) = v3;
  *(a1 + 28) = result;
  return result;
}

void PadHoverProfileModelSt::PadHoverProfileModelSt(PadHoverProfileModelSt *this, int a2, int a3, unsigned int a4)
{
  v8 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize(this, 0x6D7BC3F13914FBA6, a4);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((v8 + 56), 0x7C461B4818F04F9FLL, a3, a4, a3);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 128), 0x7C461B4818F04FA0, a2, a4, a2);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 200), 0x509844B36D60C42, a3, a4, a3);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 272), 0x509844B36D60C43, a2, a4, a2);
}

void sub_2653D2A98(_Unwind_Exception *a1)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 25);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 16);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 7);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1);
  _Unwind_Resume(a1);
}

AlgDataNode *SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, int a3, int a4, int a5)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v9 = &unk_2876EFC00;
  *(v9 + 32) = &unk_2876EFC58;
  *(v9 + 40) = 20481;
  *(v9 + 44) = 3;
  *(v9 + 56) = a3;
  *(v9 + 60) = a4;
  *(v9 + 64) = a5;
  SA3DArrayDynamicSize<float>::initialize(v9, a3, a4, a5);
  return a1;
}

uint64_t SA3DArrayDynamicSize<float>::initialize(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a1;
  *(a1 + 16) = 39424;
  *(a1 + 22) = 8;
  *(a1 + 45) = a2;
  *(a1 + 46) = a3;
  *(a1 + 47) = a4;
  v5 = operator new(4 * (a3 * a2 * a4));
  v7 = v4 + 32;
  v6 = *(v4 + 32);
  *(v4 + 48) = v5;
  v8 = *(v4 + 22);
  LODWORD(v4) = (*(v6 + 16))(v4 + 32);
  v9 = (*(*v7 + 24))(v7);
  result = (*(*v7 + 32))(v7);
  *(v7 - 8) = v8 + 4 * v4 * v9 * result;
  return result;
}

void SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(void *a1)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA3DArrayDynamicSize<float>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  (*(*v3 + 32))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 4 * result);
  }

  return result;
}

uint64_t SA3DArrayBase<float>::numElems(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1) * v2;
  return v3 * (*(*a1 + 32))(a1);
}

void *SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EFC00;
  a1[4] = &unk_2876EFC58;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8052888210);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

void PadHoverLutSt::PadHoverLutSt(PadHoverLutSt *this, int a2, int a3, int a4, int a5, int a6, unsigned __int8 a7, unsigned int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v20 = SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize(this, 0x7C78748458D391CCLL, a3, a6, a5);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((v20 + 72), 0x7C7874847DB6CAF1, a3, a6, a5);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 144), 0x7C6A29740D55F098, a4, a10, a8);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 216), 0x7C6F9A6A92B2A5D9, a4, a10, a9);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 288), 0x9AF57F51E09797BLL, a4, a10, a8);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((this + 360), 0xA62E7BC4EFCD6DCLL, a4, a10, a9);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 432), 0x9BC8B57692F3BB1, a9);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 488), 0xA701B1E9A229912, a8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 544), 0xFE838EE459F965A1, a10);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 600), 0xBFB08C9237BCE8ECLL, a11);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 656), 0xF4FB2498D35E57A9, a11);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 712), 0xDC9B3CCB9A1D193BLL, a2, a12, 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((this + 776), 0x1A2ED6AC92934721, a2, a12, 0, 0);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 840), 0x33FEB832ACB9AD2, a13);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 896), 0x7A65D43D836E9F8, a13);
  *(this + 952) = a8;
  *(this + 953) = a9;
  *(this + 954) = a10;
  *(this + 958) = a11;
}

void sub_2653D3208(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 105);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 97);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v1 + 89);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 82);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 75);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 68);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 61);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1 + 54);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 45);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 36);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 27);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 18);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1 + 9);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v1);
  _Unwind_Resume(a1);
}

double PlainDataNode<PadHoverPathFilteringParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EFD80;
  *(v4 + 28) = vdupq_n_s32(0x3F4CCCCDu);
  *(v4 + 44) = 0x3F4CCCCD41400000;
  *(v4 + 52) = 2139095040;
  *(v4 + 56) = 0x100010006000ALL;
  *(v4 + 64) = xmmword_265420540;
  *(v4 + 80) = xmmword_265420550;
  *(v4 + 96) = xmmword_265420560;
  *(v4 + 112) = xmmword_265420570;
  *(v4 + 128) = 0x100010006000ALL;
  *(v4 + 136) = xmmword_265420580;
  result = -1.40444811e306;
  *(v4 + 152) = xmmword_265420590;
  *(v4 + 168) = 2139095040;
  *(v4 + 180) = 0;
  *(v4 + 175) = 0;
  *(v4 + 184) = 1;
  *(v4 + 188) = 0;
  *(v4 + 16) = 20705;
  *(v4 + 24) = 164;
  return result;
}

__n128 PlainDataNode<PadHoverPathFilteringParams>::injectBuffer(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 60) = a2[2];
  *(a1 + 44) = v3;
  *(a1 + 28) = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 124) = a2[6];
  *(a1 + 108) = v6;
  *(a1 + 92) = v5;
  *(a1 + 76) = v4;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 188) = *(a2 + 40);
  *(a1 + 172) = v9;
  *(a1 + 156) = v8;
  *(a1 + 140) = result;
  return result;
}

double PlainDataNode<PadHoverMitigationsParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876EFDD0;
  *(v4 + 28) = xmmword_2654205A0;
  *(v4 + 44) = 0x3E4CCCCD3F000000;
  *(v4 + 52) = 1036831949;
  *(v4 + 56) = 5;
  *(v4 + 60) = xmmword_2654205B0;
  result = 3.52171979e-12;
  *(v4 + 76) = 0x3D8EFA353C9D466ELL;
  *(v4 + 84) = 1215570944;
  *(v4 + 16) = 20719;
  *(v4 + 24) = 60;
  return result;
}

void PadHoverLutSt::~PadHoverLutSt(PadHoverLutSt *this)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 112);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 105);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 97);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 89);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 82);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 75);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 68);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 61);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 54);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 45);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 36);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 27);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 18);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 9);

  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this);
}

void PadHoverProfileModelSt::~PadHoverProfileModelSt(PadHoverProfileModelSt *this)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 34);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 25);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 16);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 7);

  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this);
}

uint64_t *swap(uint64_t *result, uint64_t *a2)
{
  v2 = 8;
  do
  {
    v3 = *result;
    *result = *a2;
    *a2 = v3;
    v4 = result[1];
    result[1] = a2[1];
    a2[1] = v4;
    v5 = result[2];
    result[2] = a2[2];
    a2[2] = v5;
    v6 = result[24];
    result[24] = a2[24];
    a2[24] = v6;
    v7 = result[25];
    result[25] = a2[25];
    a2[25] = v7;
    v8 = result[26];
    result[26] = a2[26];
    a2[26] = v8;
    v9 = result[48];
    result[48] = a2[48];
    a2[48] = v9;
    v10 = result[49];
    result[49] = a2[49];
    a2[49] = v10;
    v11 = result[50];
    result[50] = a2[50];
    a2[50] = v11;
    v12 = result[72];
    result[72] = a2[72];
    a2[72] = v12;
    v13 = result[73];
    result[73] = a2[73];
    a2[73] = v13;
    v14 = result[74];
    result[74] = a2[74];
    a2[74] = v14;
    a2 += 3;
    result += 3;
    --v2;
  }

  while (v2);
  return result;
}

void PadFireflyService::FireflyServiceTask::~FireflyServiceTask(PadFireflyService::FireflyServiceTask *this)
{
  *this = &unk_2876F1A30;
  AlgWorkNode::~AlgWorkNode((this + 1976));
  AlgTaskNode::~AlgTaskNode((this + 1872));
  AlgWorkNode::~AlgWorkNode((this + 1728));
  *(this + 190) = &unk_2876F1EB8;
  *(this + 211) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 1520));
  PadFireflyService::FFRadiusCorrectionStep::~FFRadiusCorrectionStep((this + 1360));
  PadFireflyService::FFHysteresisFilterStep::~FFHysteresisFilterStep((this + 1072));
  *(this + 125) = &unk_2876F3810;
  *(this + 120) = &unk_2876F3810;
  PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection((this + 904));
  *(this + 97) = &unk_2876F3810;
  *(this + 81) = &unk_2876F3810;
  *(this + 76) = &unk_2876F3810;
  *(this + 71) = &unk_2876F3810;
  *(this + 63) = &unk_2876F3810;
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((this + 448));
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((this + 392));
  PadFireflyService::FireflyServiceEventCollection::~FireflyServiceEventCollection((this + 320));
  *(this + 24) = &unk_2876F3810;
  PadHostService::PlainFireflyContactCollection::~PlainFireflyContactCollection((this + 136));

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PadFireflyService::FireflyServiceTask::~FireflyServiceTask(this);

  JUMPOUT(0x266758590);
}

void PadTouchService::PadTouchTask::~PadTouchTask(PadTouchService::PadTouchTask *this)
{
  *this = &unk_2876F0578;
  AlgWorkNode::~AlgWorkNode((this + 17800));
  AlgTaskNode::~AlgTaskNode((this + 17696));
  TouchService::TouchTask::~TouchTask((this + 15488));
  PalmRejection::PalmRejectionTask::~PalmRejectionTask((this + 1616));
  *(this + 188) = &unk_2876F3810;
  *(this + 181) = &unk_2876F3810;
  *(this + 163) = &unk_2876F3810;
  *(this + 159) = &unk_2876F3810;
  *(this + 150) = &unk_2876F3810;
  *(this + 141) = &unk_2876F3810;
  *(this + 136) = &unk_2876F3810;
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection((this + 1032));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 976));
  *(this + 108) = &unk_2876F3810;
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 808));
  *(this + 87) = &unk_2876F3810;
  *(this + 82) = &unk_2876F3810;
  *(this + 78) = &unk_2876F3810;
  *(this + 72) = &unk_2876F3810;
  *(this + 68) = &unk_2876F3810;
  *(this + 64) = &unk_2876F3810;
  *(this + 60) = &unk_2876F3810;
  *(this + 56) = &unk_2876F3810;
  *(this + 52) = &unk_2876F3810;
  *(this + 47) = &unk_2876F3810;
  *(this + 42) = &unk_2876F3810;
  *(this + 27) = &unk_2876F3810;
  *(this + 23) = &unk_2876F3810;
  TouchService::PlainPathCollection::~PlainPathCollection((this + 128));

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PadTouchService::PadTouchTask::~PadTouchTask(this);

  JUMPOUT(0x266758590);
}

void TouchService::TouchTask::~TouchTask(TouchService::TouchTask *this)
{
  *this = &unk_2876F1AF8;
  AlgWorkNode::~AlgWorkNode((this + 2024));
  AlgWorkNode::~AlgWorkNode((this + 1856));
  AlgWorkNode::~AlgWorkNode((this + 1688));
  TouchService::InterpolationStep::~InterpolationStep((this + 1520));
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep((this + 1368));
  TouchService::HysteresisFilterStep::~HysteresisFilterStep((this + 1128));
  *(this + 124) = &unk_2876F1990;
  *(this + 134) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 992));
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep((this + 856));
  AlgWorkNode::~AlgWorkNode((this + 712));
  AlgWorkNode::~AlgWorkNode((this + 616));
  TouchService::PlainPathCollection::~PlainPathCollection((this + 496));
  TouchService::PlainPathCollection::~PlainPathCollection((this + 440));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 304));
  *(this + 24) = &unk_2876F3810;
  TouchService::PlainPathCollection::~PlainPathCollection((this + 136));

  AlgTaskNode::~AlgTaskNode(this);
}

{
  TouchService::TouchTask::~TouchTask(this);

  JUMPOUT(0x266758590);
}

void PalmRejection::PalmRejectionTask::~PalmRejectionTask(PalmRejection::PalmRejectionTask *this)
{
  *this = &unk_2876F1F58;
  AlgWorkNode::~AlgWorkNode((this + 13768));
  AlgWorkNode::~AlgWorkNode((this + 13680));
  AlgWorkNode::~AlgWorkNode((this + 13568));
  AlgWorkNode::~AlgWorkNode((this + 13448));
  AlgWorkNode::~AlgWorkNode((this + 13336));
  AlgWorkNode::~AlgWorkNode((this + 13232));
  AlgWorkNode::~AlgWorkNode((this + 13128));
  AlgWorkNode::~AlgWorkNode((this + 13024));
  AlgWorkNode::~AlgWorkNode((this + 12904));
  AlgWorkNode::~AlgWorkNode((this + 12808));
  AlgWorkNode::~AlgWorkNode((this + 12664));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 1575);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 1568);
  *(this + 1316) = &unk_2876F3810;
  *(this + 27) = &unk_2876F3810;
  *(this + 17) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PalmRejection::PalmRejectionTask::~PalmRejectionTask(this);

  JUMPOUT(0x266758590);
}

void Device0x039FireflyTask::~Device0x039FireflyTask(Device0x039FireflyTask *this)
{
  *this = &unk_2876F27E0;
  v2 = (this + 10216);
  *(this + 1277) = &unk_2876F34B8;
  *(this + 2172) = &unk_2876F3418;
  *(this + 2190) = &unk_2876F3810;
  *(this + 2186) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 17376));
  PadHoverTask::~PadHoverTask((this + 10744));
  *(this + 1306) = &unk_2876F2858;
  *(this + 1339) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 10448));
  *(this + 1294) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v2);
  *(this + 1238) = &unk_2876F28A8;
  *(this + 1273) = &unk_2876F3810;
  *(this + 1269) = &unk_2876F3810;
  *(this + 1265) = &unk_2876F3810;
  *(this + 1261) = &unk_2876F3810;
  *(this + 1257) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9904));
  *(this + 1218) = &unk_2876F3580;
  *(this + 1234) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9744));
  *(this + 1197) = &unk_2876F2A80;
  *(this + 1214) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9576));
  *(this + 1161) = &unk_2876F32B8;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 1189);
  *(this + 1175) = &unk_2876F3810;
  *(this + 1171) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9288));
  *(this + 1135) = &unk_2876F2F68;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 1153);
  *(this + 1145) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9080));
  AlgWorkNode::~AlgWorkNode((this + 8960));
  *(this + 1088) = &unk_2876F2948;
  *(this + 1098) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8704));
  *(this + 1050) = &unk_2876F2AD0;
  *(this + 1084) = &unk_2876F3810;
  *(this + 1060) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8400));
  *(this + 1035) = &unk_2876F3530;
  *(this + 1046) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8280));
  PadFireflyModelBasedGridSearch::~PadFireflyModelBasedGridSearch((this + 7880));
  PadFireflyShapeNoiseProjection::~PadFireflyShapeNoiseProjection((this + 6648));
  *(this + 822) = &unk_2876F3810;
  *(this + 814) = &unk_2876F3810;
  *(this + 791) = &unk_2876F3268;
  *(this + 805) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 6328));
  *(this + 737) = &unk_2876F28F8;
  *(this + 786) = &unk_2876F3810;
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 777);
  *(this + 772) = &unk_2876F3810;
  *(this + 767) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 5896));
  AlgTaskNode::~AlgTaskNode((this + 5792));
  AlgTaskNode::~AlgTaskNode((this + 5688));
  AlgTaskNode::~AlgTaskNode((this + 5576));
  *(this + 689) = &unk_2876F3810;
  *(this + 531) = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((this + 4472));
  *(this + 531) = &unk_2876F3810;
  *(this + 524) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 515);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 507);
  *(this + 503) = &unk_2876F3810;
  *(this + 499) = &unk_2876F3810;
  *(this + 495) = &unk_2876F3810;
  *(this + 491) = &unk_2876F3810;
  *(this + 487) = &unk_2876F3810;
  *(this + 483) = &unk_2876F3810;
  *(this + 479) = &unk_2876F3810;
  *(this + 473) = &unk_2876F3810;
  *(this + 468) = &unk_2876F3810;
  *(this + 464) = &unk_2876F3810;
  *(this + 406) = &unk_2876F3810;
  *(this + 402) = &unk_2876F3810;
  *(this + 398) = &unk_2876F3810;
  *(this + 392) = &unk_2876F3810;
  *(this + 384) = &unk_2876F3810;
  *(this + 375) = &unk_2876F3810;
  *(this + 371) = &unk_2876F3810;
  *(this + 367) = &unk_2876F3810;
  *(this + 362) = &unk_2876F3810;
  *(this + 358) = &unk_2876F3810;
  *(this + 354) = &unk_2876F3810;
  *(this + 347) = &unk_2876F3810;
  *(this + 338) = &unk_2876F3810;
  *(this + 328) = &unk_2876F3810;
  *(this + 316) = &unk_2876F3810;
  *(this + 311) = &unk_2876F3810;
  *(this + 306) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 296);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 288);
  *(this + 277) = &unk_2876EFEC0;
  *(this + 281) = &unk_2876EFF18;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 277);
  *(this + 273) = &unk_2876F3810;
  *(this + 267) = &unk_2876F3810;
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(this + 259);
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(this + 251);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 242);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 234);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 226);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 218);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 209);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 200);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 191);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 182);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 173);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 164);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 155);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 146);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 136);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 127);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 118);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 109);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 100);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 91);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 82);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 73);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 63);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 53);
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(this + 43);
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(this + 33);
  *(this + 13) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  Device0x039FireflyTask::~Device0x039FireflyTask(this);

  JUMPOUT(0x266758590);
}

void *SensorImage<float>::~SensorImage(void *a1)
{
  *a1 = &unk_2876EFEC0;
  a1[4] = &unk_2876EFF18;
  return SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a1);
}

void PadHoverTask::~PadHoverTask(PadHoverTask *this)
{
  *this = &unk_2876F2D80;
  *(this + 751) = &unk_2876F2998;
  *(this + 821) = &unk_2876F3810;
  *(this + 813) = &unk_2876F3810;
  *(this + 809) = &unk_2876F3810;
  *(this + 801) = &unk_2876F3810;
  *(this + 797) = &unk_2876F3810;
  *(this + 793) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 6008));
  *(this + 418) = &unk_2876F3308;
  *(this + 747) = &unk_2876F3810;
  *(this + 726) = &unk_2876F3810;
  *(this + 717) = &unk_2876F3810;
  *(this + 705) = &unk_2876F3810;
  *(this + 665) = &unk_2876F3810;
  *(this + 656) = &unk_2876F3810;
  *(this + 644) = &unk_2876F3810;
  *(this + 604) = &unk_2876F3810;
  *(this + 595) = &unk_2876F3810;
  *(this + 583) = &unk_2876F3810;
  *(this + 543) = &unk_2876F3810;
  *(this + 534) = &unk_2876F3810;
  *(this + 522) = &unk_2876F3810;
  *(this + 482) = &unk_2876F3810;
  *(this + 473) = &unk_2876F3810;
  *(this + 461) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 3344));
  *(this + 394) = &unk_2876F2D30;
  *(this + 404) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 3152));
  AlgWorkNode::~AlgWorkNode((this + 3032));
  *(this + 355) = &unk_2876F2CE0;
  *(this + 375) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 2840));
  *(this + 334) = &unk_2876F31E0;
  *(this + 351) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 2672));
  *(this + 260) = &unk_2876F3008;
  *(this + 330) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 306);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 298);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 290);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 282);
  AlgWorkNode::~AlgWorkNode((this + 2080));
  *(this + 201) = &unk_2876F2FB8;
  *(this + 256) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 248);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 240);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 232);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 224);
  AlgWorkNode::~AlgWorkNode((this + 1608));
  *(this + 197) = &unk_2876F3810;
  *(this + 180) = &unk_2876F3810;
  *(this + 174) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode((this + 1288));
  *(this + 157) = &unk_2876F3810;
  *(this + 149) = &unk_2876F3810;
  *(this + 143) = &unk_2876F3810;
  *(this + 137) = &unk_2876F3810;
  *(this + 132) = &unk_2876F3810;
  *(this + 126) = &unk_2876F3810;
  *(this + 120) = &unk_2876F3810;
  *(this + 114) = &unk_2876F3810;
  *(this + 109) = &unk_2876F3810;
  *(this + 103) = &unk_2876F3810;
  *(this + 97) = &unk_2876F3810;
  *(this + 91) = &unk_2876F3810;
  *(this + 85) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 77);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 69);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 61);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 53);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 43);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 35);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 27);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 19);

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PadHoverTask::~PadHoverTask(this);

  JUMPOUT(0x266758590);
}

void PadFireflyShapeNoiseProjection::~PadFireflyShapeNoiseProjection(PadFireflyShapeNoiseProjection *this)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 143);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 134);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 126);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 118);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 110);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 102);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 94);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 86);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 78);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 70);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 62);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 54);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 46);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 38);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 30);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 22);
  *(this + 15) = &unk_2876F3810;
  *(this + 7) = &unk_2876F3810;
}

void SensorImage<float>::~SensorImage(void *a1)
{
  *a1 = &unk_2876EFEC0;
  a1[4] = &unk_2876EFF18;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876EFF48;
  a1[4] = &unk_2876EFF98;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C80BDFB0063);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

void SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(void *a1)
{
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA2DArrayDynamicSize<short>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 2 * result);
  }

  return result;
}

void *SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876F0028;
  a1[4] = &unk_2876F0080;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C80BDFB0063);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

void SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(void *a1)
{
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA3DArrayDynamicSize<short>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  v6 = v3[4];
  v3 += 4;
  (*(v6 + 16))(v3);
  (*(*v3 + 24))(v3);
  (*(*v3 + 32))(v3);
  v7 = (*(*v3 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 2 * result);
  }

  return result;
}

uint64_t SA3DArrayBase<short>::numElems(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1) * v2;
  return v3 * (*(*a1 + 32))(a1);
}

void *SAList<std::reference_wrapper<AlgWorkNode>>::push_back(uint64_t a1, void *a2)
{
  result = *a1;
  if (!result)
  {
    result = operator new(8 * *(a1 + 8));
    *a1 = result;
  }

  result[(*(a1 + 12))++] = *a2;
  return result;
}

__n128 PlainDataNode<PadPTWResults>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 40) = *(a2 + 12);
  *(a1 + 28) = result;
  return result;
}

PadHostService::Device0x039PadHostServiceTTWPlan *PadHostService::Device0x039PadHostServiceTTWPlan::Device0x039PadHostServiceTTWPlan(PadHostService::Device0x039PadHostServiceTTWPlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876F01F8;
  v3 = v2 + 15;
  AlgDataNode::AlgDataNode((v2 + 15), 0x726DB665A87D6D56, 0);
  *(this + 15) = &unk_2876F0270;
  *(this + 148) = 0;
  *(this + 164) = 0;
  *(this + 156) = 0;
  *(this + 43) = 0;
  *(this + 34) = 28672;
  *(this + 36) = 28;
  AlgDataNode::AlgDataNode((this + 176), 0x1AE6533682FB2CLL, 0);
  *(this + 34) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 48) = 31232;
  *(this + 50) = 72;
  *(this + 22) = &unk_2876F02C0;
  *(this + 280) = 0;
  AlgDataNode::AlgDataNode((this + 288), 0x726D0D8D985328D2, 0);
  *(this + 36) = &unk_2876F0158;
  *(this + 85) = 0;
  *(this + 324) = 0;
  *(this + 332) = 0;
  *(this + 316) = 0;
  *(this + 76) = 20715;
  *(this + 78) = 28;
  AlgDataNode::AlgDataNode((this + 344), 0x1AE62762759A22, 0);
  *(this + 57) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 376) = 0u;
  *(this + 90) = 31244;
  *(this + 92) = 88;
  *(this + 43) = &unk_2876F0328;
  *(this + 464) = 0;
  TouchService::TapEventGenerationStep::TapEventGenerationStep(this + 472, this + 96, v3, this + 176);
  PadFireflyService::PTWEventGenerationStep::PTWEventGenerationStep(this + 576, this + 96, this + 288, this + 344);
  PadHostService::Device0x039PadHostServiceTTWPlan::runNodeRegistrations(this);
  *(this + 148) = 0;
  *(this + 316) = 0;
  return this;
}

void sub_2653D5BE8(_Unwind_Exception *a1)
{
  AlgWorkNode::~AlgWorkNode((v1 + 576));
  AlgWorkNode::~AlgWorkNode((v1 + 472));
  *v5 = &unk_2876F3810;
  *v4 = &unk_2876F3810;
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

void *PadHostService::Device0x039PadHostServiceTTWPlan::runNodeRegistrations(PadHostService::Device0x039PadHostServiceTTWPlan *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 120);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 288);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 176);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 344);
  v3 = this + 472;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 576;
  return SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
}

uint64_t PadHostService::Device0x039PadHostServiceTTWPlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[12] = 0;
  a1[13] = 0;
  v7 = a1 + 12;
  v7[2] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(v7, *(a2 + 16), *(a2 + 8));
    v8 = a1[12];
    v9 = *(a1 + 26);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(*a1 + 40);

  return v10(a1, a3, a4, v8, v9, 0);
}

uint64_t PadHostService::Device0x039PadHostServiceTTWPlan::runAfterChildren(PadHostService::Device0x039PadHostServiceTTWPlan *this)
{
  *(this + 148) = 0;
  *(this + 316) = 0;
  return 0;
}

void PadHostService::Device0x039PadHostServiceTTWPlan::~Device0x039PadHostServiceTTWPlan(PadHostService::Device0x039PadHostServiceTTWPlan *this)
{
  *this = &unk_2876F01F8;
  AlgWorkNode::~AlgWorkNode((this + 576));
  AlgWorkNode::~AlgWorkNode((this + 472));
  *(this + 43) = &unk_2876F3810;
  *(this + 36) = &unk_2876F3810;
  *(this + 22) = &unk_2876F3810;
  *(this + 15) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  *this = &unk_2876F01F8;
  AlgWorkNode::~AlgWorkNode((this + 576));
  AlgWorkNode::~AlgWorkNode((this + 472));
  *(this + 43) = &unk_2876F3810;
  *(this + 36) = &unk_2876F3810;
  *(this + 22) = &unk_2876F3810;
  *(this + 15) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PlainDataNodeWithValidity<SADigitizerEventPacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 104) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

__n128 PlainDataNode<SADigitizerEventPacket>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

uint64_t PlainDataNodeWithValidity<SADigitizerStylusEventPacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 120) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

__n128 PlainDataNode<SADigitizerStylusEventPacket>::injectBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 112) = *(a2 + 80);
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 64) = result;
  return result;
}

uint64_t PadHostService::Device0x039PadHostServiceAlgsDevice::Device0x039PadHostServiceAlgsDevice(uint64_t a1, char a2, int a3, char a4)
{
  v8 = SAPadHostServiceJ8xxVersionDescriptor();
  v9 = PadHostService::PadHostServiceAlgsDevice::PadHostServiceAlgsDevice(a1, a2, a3, a4, *v8);
  *a1 = &unk_2876F0390;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  PadHostService::Device0x039PadHostServiceAlgsDevice::newPlanNode(v9, 0);
  return a1;
}

void PadHostService::Device0x039PadHostServiceAlgsDevice::~Device0x039PadHostServiceAlgsDevice(PadHostService::Device0x039PadHostServiceAlgsDevice *this)
{
  *this = &unk_2876F0390;
  v2 = *(this + 14);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AlgsDevice::~AlgsDevice(this);
}

{
  PadHostService::Device0x039PadHostServiceAlgsDevice::~Device0x039PadHostServiceAlgsDevice(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHostService::Device0x039PadHostServiceAlgsDevice::newPlanNode(PadHostService::Device0x039PadHostServiceAlgsDevice *this, int a2)
{
  if (a2 == 1)
  {
    v7 = *(this + 14);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 120);
    v9 = operator new(0x2A8uLL);
    active = PadHostService::Device0x039PadHostServiceTTWPlan::Device0x039PadHostServiceTTWPlan(v9);
    goto LABEL_9;
  }

  if (!a2)
  {
    v3 = *(this + 14);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 120);
    v5 = operator new(0x99D8uLL);
    active = PadHostService::Device0x039PadHostServiceActivePlan::Device0x039PadHostServiceActivePlan(v5);
LABEL_9:
    *(this + 14) = active;
    return 1;
  }

  return 0;
}

PadHostService::Device0x038PadHostServiceTTWPlan *PadHostService::Device0x038PadHostServiceTTWPlan::Device0x038PadHostServiceTTWPlan(PadHostService::Device0x038PadHostServiceTTWPlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876F03F0;
  v3 = v2 + 15;
  AlgDataNode::AlgDataNode((v2 + 15), 0x726DB665A87D6D56, 0);
  *(this + 15) = &unk_2876F0270;
  *(this + 148) = 0;
  *(this + 164) = 0;
  *(this + 156) = 0;
  *(this + 43) = 0;
  *(this + 34) = 28672;
  *(this + 36) = 28;
  AlgDataNode::AlgDataNode((this + 176), 0x1AE6533682FB2CLL, 0);
  *(this + 34) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 48) = 31232;
  *(this + 50) = 72;
  *(this + 22) = &unk_2876F02C0;
  *(this + 280) = 0;
  AlgDataNode::AlgDataNode((this + 288), 0x726D0D8D985328D2, 0);
  *(this + 36) = &unk_2876F0158;
  *(this + 85) = 0;
  *(this + 324) = 0;
  *(this + 332) = 0;
  *(this + 316) = 0;
  *(this + 76) = 20715;
  *(this + 78) = 28;
  AlgDataNode::AlgDataNode((this + 344), 0x1AE62762759A22, 0);
  *(this + 57) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 376) = 0u;
  *(this + 90) = 31244;
  *(this + 92) = 88;
  *(this + 43) = &unk_2876F0328;
  *(this + 464) = 0;
  TouchService::TapEventGenerationStep::TapEventGenerationStep(this + 472, this + 96, v3, this + 176);
  PadFireflyService::PTWEventGenerationStep::PTWEventGenerationStep(this + 576, this + 96, this + 288, this + 344);
  PadHostService::Device0x039PadHostServiceTTWPlan::runNodeRegistrations(this);
  *(this + 148) = 0;
  *(this + 316) = 0;
  return this;
}

void sub_2653D64D0(_Unwind_Exception *a1)
{
  AlgWorkNode::~AlgWorkNode((v1 + 576));
  AlgWorkNode::~AlgWorkNode((v1 + 472));
  *v5 = &unk_2876F3810;
  *v4 = &unk_2876F3810;
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHostService::Device0x038PadHostServiceTTWPlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[12] = 0;
  a1[13] = 0;
  v7 = a1 + 12;
  v7[2] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(v7, *(a2 + 16), *(a2 + 8));
    v8 = a1[12];
    v9 = *(a1 + 26);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(*a1 + 40);

  return v10(a1, a3, a4, v8, v9, 0);
}

uint64_t PadHostService::Device0x038PadHostServiceTTWPlan::runAfterChildren(PadHostService::Device0x038PadHostServiceTTWPlan *this)
{
  *(this + 148) = 0;
  *(this + 316) = 0;
  return 0;
}

void PadHostService::Device0x038PadHostServiceTTWPlan::~Device0x038PadHostServiceTTWPlan(PadHostService::Device0x038PadHostServiceTTWPlan *this)
{
  *this = &unk_2876F03F0;
  AlgWorkNode::~AlgWorkNode((this + 576));
  AlgWorkNode::~AlgWorkNode((this + 472));
  *(this + 43) = &unk_2876F3810;
  *(this + 36) = &unk_2876F3810;
  *(this + 22) = &unk_2876F3810;
  *(this + 15) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  *this = &unk_2876F03F0;
  AlgWorkNode::~AlgWorkNode((this + 576));
  AlgWorkNode::~AlgWorkNode((this + 472));
  *(this + 43) = &unk_2876F3810;
  *(this + 36) = &unk_2876F3810;
  *(this + 22) = &unk_2876F3810;
  *(this + 15) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(this);

  JUMPOUT(0x266758590);
}

void PadHostService::Device0x038PadHostServiceActivePlan::Device0x038PadHostServiceActivePlan(PadHostService::Device0x038PadHostServiceActivePlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876F0468;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v3 = operator new(0xA0uLL);
  Device0x038SurfaceDimensions::Device0x038SurfaceDimensions(v3);
  *(this + 15) = v4;
  operator new(0x8E0uLL);
  v5 = *(this + 15);
  *(this + 16) = Device0x038PadParameterCollection::Device0x038PadParameterCollection(v6);
  v7 = operator new(0xCE0uLL);
  Device0x038PadFireflyParameterCollection::Device0x038PadFireflyParameterCollection(v7, *(this + 15));
  *(this + 17) = v8;
  v9 = operator new(0xBE8uLL);
  *(this + 18) = Device0x038PadHoverParameterCollection::Device0x038PadHoverParameterCollection(v9, *(this + 15));
  v10 = operator new(0xF8uLL);
  v11 = *(this + 15);
  v12 = *(v11 + 4);
  *(this + 19) = SurfaceGrid::SurfaceGrid(v10, *v11, v11 + 8, *(this + 16) + 804, v11 + 116, (v11 + 20), v11 + 40, 0);
  AlgDataNode::AlgDataNode((this + 160), 0xD919591722A99D58, 0);
  *(this + 20) = &unk_2876F0108;
  *(this + 188) = 0;
  *(this + 44) = 20480;
  *(this + 46) = 1;
  DeviceOrientationNode::DeviceOrientationNode(this + 192, 0x83DB5EE3F6A933E1);
  AlgDataNode::AlgDataNode((this + 224), 0x71B2728FC5A9ACEDLL, 0);
  *(this + 28) = &unk_2876F0108;
  *(this + 252) = 0;
  *(this + 60) = 20480;
  *(this + 62) = 1;
  AlgDataNode::AlgDataNode((this + 256), 0x726D0D8D985328D2, 0);
  *(this + 32) = &unk_2876F0158;
  *(this + 77) = 0;
  *(this + 292) = 0;
  *(this + 300) = 0;
  *(this + 284) = 0;
  *(this + 68) = 20715;
  *(this + 70) = 28;
  SurfaceDescriptorNode::SurfaceDescriptorNode((this + 312), 0x29965DE49819D20DuLL);
  AlgDataNode::AlgDataNode((this + 368), 0xD992F1C73B6AF5FELL, 0);
  *(this + 46) = &unk_2876F0108;
  *(this + 396) = 0;
  *(this + 96) = 20480;
  *(this + 98) = 1;
  v14 = *(*(this + 15) + 13);
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 106) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 228) = 0;
  *(this + 214) = v14;
  *(this + 430) = 0;
  v15 = &Device0x038::FFDtiStatsOPNormalization;
  for (i = 108; i != 114; ++i)
  {
    v17 = *v15++;
    *(this + i) = v17;
  }

  v18 = v13;
  *(this + 228) = 0;
  AlgDataNode::AlgDataNode((this + 464), 0x762B06BEA3FE3797, 0);
  *(this + 58) = &unk_2876F01A8;
  *(this + 492) = 0;
  *(this + 120) = 20482;
  *(this + 122) = 1;
  AlgDataNode::AlgDataNode((this + 496), 0x7EC0C8093C3ACAC4, 0);
  *(this + 62) = &unk_2876F01A8;
  *(this + 524) = 0;
  *(this + 128) = 20482;
  *(this + 130) = 1;
  Device0x038FireflyTask::Device0x038FireflyTask(this + 528, v18, *(this + 17), *(this + 18), *(this + 15), *(this + 19), this + 160, this + 224, this + 256, this + 400, this + 464, this + 496);
}

void sub_2653D6CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep((v14 + 35992));
  PadTouchService::PadTouchTask::~PadTouchTask((v14 + v18));
  Device0x038FireflyTask::~Device0x038FireflyTask((v14 + 528));
  *v20 = &unk_2876F3810;
  *v19 = &unk_2876F3810;
  *a13 = &unk_2876F3810;
  *a14 = &unk_2876F3810;
  *v17 = &unk_2876F3810;
  *v16 = &unk_2876F3810;
  DeviceOrientationNode::~DeviceOrientationNode((v14 + 192));
  *v15 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v14);
  _Unwind_Resume(a1);
}

void PadHostService::Device0x038PadHostServiceActivePlan::~Device0x038PadHostServiceActivePlan(PadHostService::Device0x038PadHostServiceActivePlan *this)
{
  *this = &unk_2876F0468;
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      MEMORY[0x266758580](v3, 0x1000C8033FC2DF1);
    }

    *(v2 + 88) = &unk_2876F3810;
    MEMORY[0x266758590](v2, 0x10A0C4034B7AEE1);
  }

  v4 = *(this + 16);
  if (v4)
  {
    SA2DArrayDynamicSize<unsigned char>::~SA2DArrayDynamicSize(v4 + 265);
    SA2DArrayDynamicSize<signed char>::~SA2DArrayDynamicSize(v4 + 256);
    v4[249] = &unk_2876F3810;
    v4[241] = &unk_2876F3810;
    v4[217] = &unk_2876F3810;
    v4[210] = &unk_2876F3810;
    v4[204] = &unk_2876F3810;
    v4[196] = &unk_2876F3810;
    v4[183] = &unk_2876F3810;
    v4[179] = &unk_2876F3810;
    v4[169] = &unk_2876F3810;
    v4[154] = &unk_2876F3810;
    v4[137] = &unk_2876F3810;
    v4[132] = &unk_2876F3810;
    v4[108] = &unk_2876F3810;
    v4[97] = &unk_2876F3810;
    v4[76] = &unk_2876F3810;
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v4 + 67);
    SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v4 + 59);
    v4[47] = &unk_2876F3810;
    v4[38] = &unk_2876F3810;
    v4[7] = &unk_2876F3810;
    v4[1] = &unk_2876F3810;
    MEMORY[0x266758590](v4, 0x1090C4016D6A234);
  }

  v5 = *(this + 17);
  if (v5)
  {
    Device0x038PadFireflyParameterCollection::~Device0x038PadFireflyParameterCollection(v5);
    MEMORY[0x266758590]();
  }

  v6 = *(this + 18);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PadFireflyService::FireflyServiceTask::~FireflyServiceTask((this + 37304));
  PadTouchService::PadTouchCoreAnalyticsStep::~PadTouchCoreAnalyticsStep((this + 35992));
  PadTouchService::PadTouchTask::~PadTouchTask((this + 18088));
  Device0x038FireflyTask::~Device0x038FireflyTask((this + 528));
  *(this + 62) = &unk_2876F3810;
  *(this + 58) = &unk_2876F3810;
  *(this + 46) = &unk_2876F3810;
  *(this + 39) = &unk_2876F3810;
  *(this + 32) = &unk_2876F3810;
  *(this + 28) = &unk_2876F3810;
  DeviceOrientationNode::~DeviceOrientationNode((this + 192));
  *(this + 20) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  PadHostService::Device0x038PadHostServiceActivePlan::~Device0x038PadHostServiceActivePlan(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHostService::Device0x038PadHostServiceActivePlan::runPlan(PadHostService::Device0x038PadHostServiceActivePlan *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v6 = PacketCollection::at(a2, 0);
  v7 = *(v6 + 40);
  *(this + 12) = v7;
  *(this + 14) = v7;
  *(this + 26) = *(v6 + 48);
  v8 = *(*this + 40);

  return v8(this, a2, a3);
}

uint64_t PadHostService::Device0x038PadHostServiceActivePlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[12] = 0;
  a1[13] = 0;
  v7 = a1 + 12;
  v7[2] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(v7, *(a2 + 16), *(a2 + 8));
    v8 = a1[12];
    if (a1[14])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  a1[14] = v8;
LABEL_7:
  v9 = *(a1 + 26);
  v10 = *(*a1 + 40);

  return v10(a1, a3, a4, v8, v9, 0);
}

double Device0x038SurfaceDimensions::Device0x038SurfaceDimensions(uint64_t a1)
{
  v1 = PadSurfaceDimensions::PadSurfaceDimensions(a1, 2u, 20, 0, 56);
  *(v1 + 4) = 1140850688;
  *(v1 + 8) = 0x280000380002;
  *(v1 + 16) = 0;
  *(v1 + 116) = xmmword_2655000A0;
  *(v1 + 132) = 0x486135C0481AC740;
  *(v1 + 20) = xmmword_2655000B0;
  result = 0.0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  return result;
}

PadTouchParameterCollection *Device0x038PadParameterCollection::Device0x038PadParameterCollection(__n128 a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v15 = *MEMORY[0x277D85DE8];
  v5 = v1 + 282;
  PadTouchParameterCollection::PadTouchParameterCollection(v1, *v2, *(v3 + 1), *(v3 + 10), *(v3 + 13), v3[73], v3[72]);
  *(v6 + 4) = 120;
  *(v6 + 1084) = 0x19180706030B0603;
  *(v6 + 1092) = 10288;
  *(v6 + 1460) = 387061012;
  v7 = *(v3 + 1);
  *(v6 + 36) = 0x4100000000000000;
  *(v6 + 44) = v7;
  *(v6 + 48) = 1148846080;
  *(v6 + 332) = 1086324736;
  *(v6 + 336) = 0x4140000042480000;
  *(v6 + 344) = 917518;
  *(v5 + 66) = xmmword_265420000;
  *(v6 + 364) = 0x3E800000425C0000;
  *(v6 + 372) = 1;
  *(v6 + 84) = xmmword_265420010;
  *(v6 + 100) = 1;
  *(v6 + 104) = xmmword_265420020;
  *(v6 + 120) = xmmword_265420030;
  *(v6 + 136) = xmmword_265420040;
  *(v6 + 152) = xmmword_265420050;
  *(v6 + 168) = 0x42F000003E79FFD6;
  *(v6 + 176) = 2;
  *(v6 + 177) = 0;
  *(v6 + 178) = 0;
  *(v6 + 180) = 0x3F33333340C00000;
  *(v6 + 188) = 65548;
  *(v6 + 192) = xmmword_265420060;
  *(v6 + 208) = 1966095;
  *(v6 + 212) = xmmword_265420070;
  *(v6 + 228) = xmmword_265420080;
  *(v6 + 244) = xmmword_265420090;
  *(v6 + 260) = 0x3E80000046A02800;
  *(v6 + 268) = 197632;
  *(v6 + 272) = 1056964608;
  *(v6 + 280) = 256;
  *(v6 + 276) = 0;
  *v5 = 0;
  *(v6 + 290) = 40;
  *(v5 + 3) = 16974083;
  *(v6 + 298) = 0;
  *(v6 + 640) = 0.14453 / v7;
  *(v6 + 644) = xmmword_2654200A0;
  *(v6 + 660) = 0x3F8000003F000000;
  *(v6 + 668) = 0u;
  *(v6 + 684) = 0u;
  *(v6 + 700) = 0u;
  *(v6 + 716) = 0;
  *(v6 + 720) = xmmword_2654200B0;
  *(v6 + 736) = 3;
  *(v6 + 739) = 0;
  *(v6 + 737) = 0;
  *(v6 + 740) = xmmword_2654200C0;
  *(v6 + 756) = xmmword_2654200D0;
  *(v6 + 772) = 0;
  *(v6 + 804) = xmmword_2654200E0;
  *(v6 + 820) = xmmword_2654200F0;
  *(v6 + 836) = 1072064102;
  *(v6 + 840) = 0x100000001;
  *(v6 + 848) = 0u;
  *(v5 + 122) = xmmword_265420100;
  *(v6 + 420) = 1090519040;
  *(v6 + 424) = 0x42C8000041300000;
  *(v6 + 432) = 257;
  *(v5 + 154) = xmmword_2655000C0;
  *(v5 + 170) = xmmword_2655000C0;
  memcpy(__dst, &unk_265500170, 0xC80uLL);
  v8 = *(v4 + 132);
  LOBYTE(v12) = 0;
  BYTE1(v12) = v8;
  HIWORD(v12) = v8;
  LOBYTE(v13) = v8;
  HIBYTE(v13) = v8;
  SA2DArrayBase<float>::copyFromBuffer<unsigned short>(v4 + 504, __dst, (v8 * v8), &v12);
  *(v4 + 150) = 880803840;
  SA1DArrayBase<float>::scaleElementwise(v4 + 504, v4 + 504, 0.00000023842);
  memcpy(__dst, &unk_265500DF0, sizeof(__dst));
  v9 = *(v4 + 148);
  LOBYTE(v12) = 0;
  BYTE1(v12) = v9;
  HIWORD(v12) = v9;
  LOBYTE(v13) = v9;
  HIBYTE(v13) = v9;
  SA2DArrayBase<float>::copyFromBuffer<unsigned short>(v4 + 568, __dst, (v9 * v9), &v12);
  *(v4 + 151) = 872415232;
  SA1DArrayBase<float>::scaleElementwise(v4 + 568, v4 + 568, 0.00000011921);
  *(v4 + 1340) = (*(v3 + 13) / *(v4 + 1333)) >> 1;
  *(v5 + 1210) = xmmword_265420130;
  *(v5 + 1226) = xmmword_265420140;
  *(v5 + 1242) = xmmword_265420150;
  *(v5 + 1258) = xmmword_265420160;
  *(v4 + 1556) = 0x40C0000040800000;
  *(v4 + 1780) = 0x4489800044898000;
  *(v4 + 458) = 1149861888;
  *(v4 + 449) = 1176256512;
  *(v4 + 228) = 0x453B800000000000;
  *(v4 + 454) = 0;
  *(v4 + 528) = 1036495203;
  memcpy(__dst, &unk_265502670, 0x190uLL);
  v12 = 1315840;
  v13 = 5140;
  SA2DArrayBase<signed char>::copyFromBuffer<signed char>(v4 + 2080, __dst, 400, &v12);
  *(v4 + 139) = xmmword_2655000D0;
  *(v4 + 280) = 0x41A8000041A00000;
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

double Device0x038PadFireflyParameterCollection::Device0x038PadFireflyParameterCollection(uint64_t a1, uint64_t a2)
{
  PadFireflyParameterCollection::PadFireflyParameterCollection(a1, 6, 2, *(a2 + 10), *(a2 + 13), Device0x038::kProfileLookupTableLong, 8u, 1, 1u);
  PlainDataNode<ExtrapolationParams>::PlainDataNode((v3 + 3208), 0xE9CCE10AB7FD5EF3, 0, 0);
  *(a1 + 1836) = 1;
  *(a1 + 292) = 1202702336;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0x47AFC8003F666666;
  *(a1 + 308) = 84214531;
  *(a1 + 312) = 7;
  *(a1 + 316) = 0x3A83126F43960000;
  *(a1 + 324) = 3;
  v92 = a1 + 328;
  *(a1 + 328) = xmmword_265420350;
  *(a1 + 344) = 6;
  *(a1 + 348) = 0x3D4CCCCD42C80000;
  *(a1 + 356) = 250;
  *(a1 + 360) = 514;
  *(a1 + 364) = 1062836634;
  *(a1 + 368) = 2;
  *(a1 + 372) = 2;
  *(a1 + 376) = 0xC3F0000000000000;
  *(a1 + 384) = 1232348160;
  *(a1 + 1436) = 257;
  *(a1 + 1440) = xmmword_265420360;
  *(a1 + 1456) = xmmword_265420370;
  *(a1 + 1472) = xmmword_265420380;
  *(a1 + 1488) = xmmword_265420390;
  *(a1 + 1504) = xmmword_2654203A0;
  *(a1 + 1520) = xmmword_2654203B0;
  *(a1 + 1536) = xmmword_2654203C0;
  *(a1 + 1552) = 0;
  v4 = a1 + 568;
  *(a1 + 1556) = 0x40000000;
  v5 = (a1 + 604);
  v90 = a1 + 680;
  v6 = a1;
  v7 = a1 + 698;
  v8 = v6 + 689;
  *(v6 + 1560) = 0x42480000446D8000;
  v9 = v6 + 707;
  v10 = v6 + 640;
  v11 = v6 + 658;
  v12 = v6 + 649;
  v13 = v6 + 667;
  *(v6 + 676) = 67371781;
  v91 = v6;
  memset_pattern16((v6 + 532), &unk_2654205F0, 0x18uLL);
  v14 = 0;
  v15 = v5;
  do
  {
    *(v15 - 9) = vcvts_n_f32_s32(Device0x038::kGenFireflyTipAzpps[v14], 1uLL) * 0.00097656;
    *v15++ = 0.11719;
    v16 = (v4 + v14);
    v16[112] = 2;
    v16[130] = 1;
    v16[121] = 2;
    v16[139] = 1;
    v16[72] = 1;
    v16[90] = 1;
    v16[81] = 1;
    v16[99] = 1;
    ++v14;
  }

  while (v14 != 6);
  memset_pattern16((v91 + 556), &unk_2654205F0, 8uLL);
  v17 = 6;
  v18 = 1;
  do
  {
    *(v4 + 4 * v17) = 1036386304;
    v19 = v18;
    v5[v17] = 0.11719;
    *(v90 + v17) = 2;
    *(v7 + v17) = 1;
    *(v8 + v17) = 2;
    *(v9 + v17) = 1;
    *(v10 + v17) = 1;
    *(v11 + v17) = 1;
    *(v12 + v17) = 1;
    *(v13 + v17) = 1;
    v17 = 7;
    v18 = 0;
  }

  while ((v19 & 1) != 0);
  *(v91 + 728) = 0x3FC000003FB70A3DLL;
  *(v91 + 494) = 0;
  *(v91 + 498) = 0;
  *(v92 + 92) = xmmword_2654203D0;
  *(v92 + 108) = 0;
  v20 = &Device0x038::kGenFireflyRawTiltAngles;
  v21 = 1644;
  v22.i64[0] = 0x3800000038000000;
  v22.i64[1] = 0x3800000038000000;
  do
  {
    v23 = *v20++;
    *(v91 + v21) = vmulq_f32(vcvtq_f32_s32(v23), v22);
    v21 += 16;
  }

  while (v21 != 1676);
  v24 = &Device0x038::kGenFireflyZtotAngleCorrection;
  v25.i64[0] = 0x3800000038000000;
  v25.i64[1] = 0x3800000038000000;
  do
  {
    v26 = *v24++;
    *(v91 + v21) = vmulq_f32(vcvtq_f32_s32(v26), v25);
    v21 += 16;
  }

  while (v21 != 1708);
  if (*(v91 + 1400) == 1)
  {
    v27 = *(v91 + 1403);
  }

  else
  {
    v27 = 1;
  }

  v28 = (*(a2 + 28) / *(a2 + 32)) * 1000.0;
  *(v91 + 772) = v28 / 55.0;
  *(v91 + 768) = 56;
  if (v27)
  {
    v29 = 0;
    v30 = v91 + 824;
    v31 = &Device0x038::kGenFireflyTipLutX;
    do
    {
      v32 = (*(*v30 + 8))(v30);
      *(v32 + 4 * (*(*v30 + 24))(v30) * v29) = 0;
      v33 = (*(*v30 + 8))(v30);
      *(v33 + 4 * ((*(*v30 + 24))(v30) * v29 + 55)) = 0;
      v34 = 1;
      v35 = 27;
      v36 = v31;
      do
      {
        v37 = *v36++;
        v38 = (*(*v30 + 8))(v30);
        *(v38 + 4 * (v34 + v29 * (*(*v30 + 24))(v30))) = (v28 * v37) / 32767.0;
        v39 = (*(*v30 + 8))(v30);
        v40 = *(v39 + 4 * (v34 + v29 * (*(*v30 + 24))(v30)));
        v41 = (*(*v30 + 8))(v30);
        *(v41 + 4 * (v35 + v29 * (*(*v30 + 24))(v30) + 27)) = -v40;
        ++v34;
        --v35;
      }

      while (v35);
      ++v29;
      v31 += 50;
    }

    while (v27 > v29);
  }

  v42 = (*(a2 + 20) / *(a2 + 24)) * 1000.0;
  *(v91 + 776) = v42 / 58.0;
  *(v91 + 769) = 59;
  if (v27)
  {
    v43 = 0;
    v44 = v91 + 888;
    v45 = &Device0x038::kGenFireflyTipLutY;
    do
    {
      v46 = (*(*v44 + 8))(v44);
      *(v46 + 4 * (*(*v44 + 24))(v44) * v43) = 0;
      v47 = (*(*v44 + 8))(v44);
      *(v47 + 4 * ((*(*v44 + 24))(v44) * v43 + 58)) = 0;
      v48 = 1;
      v49 = 28;
      v50 = v45;
      do
      {
        v51 = *v50++;
        v52 = (*(*v44 + 8))(v44);
        *(v52 + 4 * (v48 + v43 * (*(*v44 + 24))(v44))) = (v42 * v51) / 32767.0;
        v53 = (*(*v44 + 8))(v44);
        v54 = *(v53 + 4 * (v48 + v43 * (*(*v44 + 24))(v44)));
        v55 = (*(*v44 + 8))(v44);
        *(v55 + 4 * (v49 + v43 * (*(*v44 + 24))(v44) + 29)) = -v54;
        ++v48;
        --v49;
      }

      while (v49);
      v56 = (*(*v44 + 8))(v44);
      *(v56 + 4 * ((*(*v44 + 24))(v44) * v43++ + 29)) = 0;
      v45 += 50;
    }

    while (v27 > v43);
  }

  v93 = *(v91 + 1404);
  if (*(v91 + 1404))
  {
    v57 = 0;
    v58 = v91 + 824;
    v59 = &Device0x038::kGenP100TipLutX;
    do
    {
      v60 = *(v91 + 1403);
      v61 = (*(*(v91 + 824) + 8))(v58);
      v62 = (v60 + v57);
      *(v61 + 4 * (*(*v58 + 24))(v58) * v62) = 0;
      v63 = (*(*v58 + 8))(v58);
      *(v63 + 4 * ((*(*v58 + 24))(v58) * v62 + 55)) = 0;
      v64 = v62;
      v65 = 1;
      v66 = 27;
      v67 = v59;
      do
      {
        v68 = *v67++;
        v69 = (*(*v58 + 8))(v58);
        *(v69 + 4 * (v65 + v64 * (*(*v58 + 24))(v58))) = (v28 * v68) / 32767.0;
        v70 = (*(*v58 + 8))(v58);
        v71 = *(v70 + 4 * (v65 + v64 * (*(*v58 + 24))(v58)));
        v72 = (*(*v58 + 8))(v58);
        *(v72 + 4 * (v66 + v64 * (*(*v58 + 24))(v58) + 27)) = -v71;
        ++v65;
        --v66;
      }

      while (v66);
      ++v57;
      v59 += 50;
    }

    while (v57 != v93);
    v73 = 0;
    v74 = v91 + 888;
    v75 = &Device0x038::kGenP100TipLutY;
    do
    {
      v76 = *(v91 + 1403);
      v77 = (*(*(v91 + 888) + 8))(v74);
      v78 = (v76 + v73);
      *(v77 + 4 * (*(*v74 + 24))(v74) * v78) = 0;
      v79 = (*(*v74 + 8))(v74);
      *(v79 + 4 * ((*(*v74 + 24))(v74) * v78 + 58)) = 0;
      v80 = 1;
      v81 = 28;
      v82 = v75;
      do
      {
        v83 = *v82++;
        v84 = (*(*v74 + 8))(v74);
        *(v84 + 4 * (v80 + v78 * (*(*v74 + 24))(v74))) = (v42 * v83) / 32767.0;
        v85 = (*(*v74 + 8))(v74);
        v86 = *(v85 + 4 * (v80 + v78 * (*(*v74 + 24))(v74)));
        v87 = (*(*v74 + 8))(v74);
        *(v87 + 4 * (v81 + v78 * (*(*v74 + 24))(v74) + 29)) = -v86;
        ++v80;
        --v81;
      }

      while (v81);
      v88 = (*(*v74 + 8))(v74);
      *(v88 + 4 * ((*(*v74 + 24))(v74) * v78 + 29)) = 0;
      ++v73;
      v75 += 50;
    }

    while (v73 != v93);
  }

  *(v91 + 1840) = xmmword_2655000E0;
  *(v91 + 1856) = xmmword_2655000F0;
  *(v91 + 1872) = xmmword_265500100;
  *(v91 + 1888) = xmmword_265500110;
  result = 0.0000000014758219;
  *(v91 + 1904) = 0x3E195ABBBC30D135;
  return result;
}

uint64_t Device0x038PadHoverParameterCollection::Device0x038PadHoverParameterCollection(uint64_t a1, uint64_t a2)
{
  v3 = PadHoverParameterCollection::PadHoverParameterCollection(a1, 6, 8, 6, *(a2 + 10), *(a2 + 13), 0xCu, a2, 0x40u, 48, 14, &Device0x038::kFreqToProfileIndexLookupTable, 6u, 35, 8u, 8u);
  *v3 = &unk_2876F04E0;
  v4 = PlainDataNode<ExtrapolationParams>::PlainDataNode((v3 + 370), 0xE9CCE10AB7FD5EF3, 0, 0);
  *(a1 + 836) = 1082560348;
  v5 = (*(*(a1 + 1264) + 8))(a1 + 1264, v4);
  v6 = (**(a1 + 1264))(a1 + 1264);
  if (v5 != &Device0x038::kGenProfileTipX)
  {
    memcpy(v5, &Device0x038::kGenProfileTipX, 4 * v6);
  }

  v7 = (*(*(a1 + 1336) + 8))(a1 + 1336);
  v8 = (**(a1 + 1336))(a1 + 1336);
  if (v7 != &Device0x038::kGenProfileTipY)
  {
    memcpy(v7, &Device0x038::kGenProfileTipY, 4 * v8);
  }

  v9 = (*(*(a1 + 1408) + 8))(a1 + 1408);
  v10 = (**(a1 + 1408))(a1 + 1408);
  if (v9 != &Device0x038::kGenProfileRingX)
  {
    memcpy(v9, &Device0x038::kGenProfileRingX, 4 * v10);
  }

  v11 = (*(*(a1 + 1480) + 8))(a1 + 1480);
  v12 = (**(a1 + 1480))(a1 + 1480);
  if (v11 != &Device0x038::kGenProfileRingY)
  {
    memcpy(v11, &Device0x038::kGenProfileRingY, 4 * v12);
  }

  v13 = (*(*(a1 + 1208) + 8))(a1 + 1208);
  v14 = (**(a1 + 1208))(a1 + 1208);
  if (v13 != &Device0x038PadHoverParameterCollection::Device0x038PadHoverParameterCollection(PadSurfaceDimensions const&,MemType_t)::kProfileHeights)
  {
    memcpy(v13, &Device0x038PadHoverParameterCollection::Device0x038PadHoverParameterCollection(PadSurfaceDimensions const&,MemType_t)::kProfileHeights, 4 * v14);
  }

  v15 = (*(*(a1 + 1552) + 8))(a1 + 1552);
  v16 = (**(a1 + 1552))(a1 + 1552);
  if (v15 != &Device0x038::kGenPhaseGapCosLut)
  {
    memcpy(v15, &Device0x038::kGenPhaseGapCosLut, 4 * v16);
  }

  v17 = (*(*(a1 + 1624) + 8))(a1 + 1624);
  v18 = (**(a1 + 1624))(a1 + 1624);
  if (v17 != &Device0x038::kGenPhaseGapSinLut)
  {
    memcpy(v17, &Device0x038::kGenPhaseGapSinLut, 4 * v18);
  }

  v19 = (*(*(a1 + 1696) + 8))(a1 + 1696);
  v20 = (**(a1 + 1696))(a1 + 1696);
  if (v19 != &Device0x038::kGenXEdgeFHYTipLut)
  {
    memcpy(v19, &Device0x038::kGenXEdgeFHYTipLut, 4 * v20);
  }

  v21 = (*(*(a1 + 1840) + 8))(a1 + 1840);
  v22 = (**(a1 + 1840))(a1 + 1840);
  if (v21 != &Device0x038::kGenXEdgeFHYRingLut)
  {
    memcpy(v21, &Device0x038::kGenXEdgeFHYRingLut, 4 * v22);
  }

  v23 = (*(*(a1 + 1768) + 8))(a1 + 1768);
  v24 = (**(a1 + 1768))(a1 + 1768);
  if (v23 != &Device0x038::kGenYEdgeFHXTipLut)
  {
    memcpy(v23, &Device0x038::kGenYEdgeFHXTipLut, 4 * v24);
  }

  v25 = (*(*(a1 + 1912) + 8))(a1 + 1912);
  v26 = (**(a1 + 1912))(a1 + 1912);
  if (v25 != &Device0x038::kGenYEdgeFHXRingLut)
  {
    memcpy(v25, &Device0x038::kGenYEdgeFHXRingLut, 4 * v26);
  }

  *(a1 + 2475) = 1028;
  *(a1 + 2477) = 1;
  v27 = (*(*(a1 + 1984) + 8))(a1 + 1984);
  v28 = (**(a1 + 1984))(a1 + 1984);
  if (v27 != &Device0x038::kGenGridX)
  {
    memcpy(v27, &Device0x038::kGenGridX, 4 * v28);
  }

  v29 = (*(*(a1 + 2040) + 8))(a1 + 2040);
  v30 = (**(a1 + 2040))(a1 + 2040);
  if (v29 != &Device0x038::kGenGridY)
  {
    memcpy(v29, &Device0x038::kGenGridY, 4 * v30);
  }

  v31 = (*(*(a1 + 2096) + 8))(a1 + 2096);
  v32 = (**(a1 + 2096))(a1 + 2096);
  if (v31 != &Device0x038::kGenGridH)
  {
    memcpy(v31, &Device0x038::kGenGridH, 4 * v32);
  }

  v33 = (*(*(a1 + 2264) + 8))(a1 + 2264);
  v34 = (**(a1 + 2264))(a1 + 2264);
  if (v33 != &Device0x038::kGenHoverHeightBiasCorrectionTipLut)
  {
    memcpy(v33, &Device0x038::kGenHoverHeightBiasCorrectionTipLut, 4 * v34);
  }

  v35 = (*(*(a1 + 2328) + 8))(a1 + 2328);
  v36 = (**(a1 + 2328))(a1 + 2328);
  if (v35 != &Device0x038::kGenHoverHeightTipLut)
  {
    memcpy(v35, &Device0x038::kGenHoverHeightTipLut, 4 * v36);
  }

  v37 = (*(*(a1 + 2152) + 8))(a1 + 2152);
  v38 = (**(a1 + 2152))(a1 + 2152);
  if (v37 != &Device0x038HoverZtotHeightLut::kLowHoverZtot)
  {
    memcpy(v37, &Device0x038HoverZtotHeightLut::kLowHoverZtot, 4 * v38);
  }

  v39 = (*(*(a1 + 2208) + 8))(a1 + 2208);
  v40 = (**(a1 + 2208))(a1 + 2208);
  if (v39 != &Device0x038HoverZtotHeightLut::kLowHoverHeightsLut)
  {
    memcpy(v39, &Device0x038HoverZtotHeightLut::kLowHoverHeightsLut, 4 * v40);
  }

  v41 = (*(*(a1 + 2392) + 8))(a1 + 2392);
  v42 = (**(a1 + 2392))(a1 + 2392);
  memcpy(v41, &unk_2655A795C, 4 * v42);
  v43 = (*(*(a1 + 2448) + 8))(a1 + 2448);
  v44 = (**(a1 + 2448))(a1 + 2448);
  memcpy(v43, &unk_2655A797C, 4 * v44);
  bzero(__src, 0x300uLL);
  for (i = 0; i != 144; i += 48)
  {
    *&v46 = &Device0x038::kGenProfCoefsTipX;
    *(&v46 + 1) = &unk_2655A79B4;
    *&v47 = &unk_2655A79B4;
    *(&v47 + 1) = &unk_2655A79CC;
    v48 = &__src[i];
    v48[2] = v47;
    *&v47 = &unk_2655A79CC;
    *(&v47 + 1) = &Device0x038::kGenProfCoefsTipX;
    *v48 = v46;
    v48[1] = v47;
    *&v46 = &Device0x038::kGenProfCoefsTipY;
    *(&v46 + 1) = &unk_2655A79FC;
    *&v47 = &unk_2655A79FC;
    *(&v47 + 1) = &unk_2655A7A14;
    v48[14] = v47;
    *&v47 = &unk_2655A7A14;
    *(&v47 + 1) = &Device0x038::kGenProfCoefsTipY;
    v48[12] = v46;
    v48[13] = v47;
    *&v46 = &Device0x038::kGenProfCoefsRingX;
    *(&v46 + 1) = &unk_2655A7A44;
    *&v47 = &unk_2655A7A44;
    *(&v47 + 1) = &unk_2655A7A5C;
    v48[26] = v47;
    *&v47 = &unk_2655A7A5C;
    *(&v47 + 1) = &Device0x038::kGenProfCoefsRingX;
    v48[24] = v46;
    v48[25] = v47;
    *&v46 = &Device0x038::kGenProfCoefsRingY;
    *(&v46 + 1) = &unk_2655A7A8C;
    *&v47 = &unk_2655A7A8C;
    *(&v47 + 1) = &unk_2655A7AA4;
    v48[38] = v47;
    *&v47 = &unk_2655A7AA4;
    *(&v47 + 1) = &Device0x038::kGenProfCoefsRingY;
    v48[36] = v46;
    v48[37] = v47;
  }

  memcpy(__dst, __src, sizeof(__dst));
  if (__dst != (a1 + 40))
  {
    swap((a1 + 40), __dst);
  }

  *(a1 + 996) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1004) = 0x481C40003F666666;
  *(a1 + 1012) = 84214531;
  *(a1 + 1016) = 7;
  *(a1 + 1020) = 0x3A83126F00000000;
  *(a1 + 1028) = 3;
  *(a1 + 1032) = xmmword_265420420;
  *(a1 + 1048) = 6;
  *(a1 + 1052) = 0x3D4CCCCD42C80000;
  *(a1 + 1060) = 250;
  *(a1 + 1064) = 514;
  *(a1 + 1068) = 1062836634;
  *(a1 + 1072) = 2;
  *(a1 + 1076) = 2;
  *(a1 + 1080) = 0xC3F0000000000000;
  *(a1 + 1088) = 1232348160;
  return a1;
}

void Device0x038PadHoverParameterCollection::~Device0x038PadHoverParameterCollection(Device0x038PadHoverParameterCollection *this)
{
  *this = &unk_2876F04E0;
  *(this + 370) = &unk_2876F3810;
  PadHoverParameterCollection::~PadHoverParameterCollection(this);
}

{
  *this = &unk_2876F04E0;
  *(this + 370) = &unk_2876F3810;
  PadHoverParameterCollection::~PadHoverParameterCollection(this);

  JUMPOUT(0x266758590);
}

void Device0x038FireflyTask::~Device0x038FireflyTask(Device0x038FireflyTask *this)
{
  *this = &unk_2876F0950;
  v2 = (this + 10216);
  *(this + 1277) = &unk_2876F34B8;
  *(this + 2172) = &unk_2876F3418;
  *(this + 2190) = &unk_2876F3810;
  *(this + 2186) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 17376));
  PadHoverTask::~PadHoverTask((this + 10744));
  *(this + 1306) = &unk_2876F2858;
  *(this + 1339) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 10448));
  *(this + 1294) = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode(v2);
  *(this + 1238) = &unk_2876F28A8;
  *(this + 1273) = &unk_2876F3810;
  *(this + 1269) = &unk_2876F3810;
  *(this + 1265) = &unk_2876F3810;
  *(this + 1261) = &unk_2876F3810;
  *(this + 1257) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9904));
  *(this + 1218) = &unk_2876F3580;
  *(this + 1234) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9744));
  *(this + 1197) = &unk_2876F2A80;
  *(this + 1214) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9576));
  *(this + 1161) = &unk_2876F32B8;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 1189);
  *(this + 1175) = &unk_2876F3810;
  *(this + 1171) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9288));
  *(this + 1135) = &unk_2876F2F68;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 1153);
  *(this + 1145) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 9080));
  AlgWorkNode::~AlgWorkNode((this + 8960));
  *(this + 1088) = &unk_2876F2948;
  *(this + 1098) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8704));
  *(this + 1050) = &unk_2876F2AD0;
  *(this + 1084) = &unk_2876F3810;
  *(this + 1060) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8400));
  *(this + 1035) = &unk_2876F3530;
  *(this + 1046) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 8280));
  PadFireflyModelBasedGridSearch::~PadFireflyModelBasedGridSearch((this + 7880));
  PadFireflyShapeNoiseProjection::~PadFireflyShapeNoiseProjection((this + 6648));
  *(this + 822) = &unk_2876F3810;
  *(this + 814) = &unk_2876F3810;
  *(this + 791) = &unk_2876F3268;
  *(this + 805) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 6328));
  *(this + 737) = &unk_2876F28F8;
  *(this + 786) = &unk_2876F3810;
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 777);
  *(this + 772) = &unk_2876F3810;
  *(this + 767) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode((this + 5896));
  AlgTaskNode::~AlgTaskNode((this + 5792));
  AlgTaskNode::~AlgTaskNode((this + 5688));
  AlgTaskNode::~AlgTaskNode((this + 5576));
  *(this + 689) = &unk_2876F3810;
  *(this + 531) = &unk_2876F3358;
  InputDetectionStateNode::~InputDetectionStateNode((this + 4472));
  *(this + 531) = &unk_2876F3810;
  *(this + 524) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 515);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 507);
  *(this + 503) = &unk_2876F3810;
  *(this + 499) = &unk_2876F3810;
  *(this + 495) = &unk_2876F3810;
  *(this + 491) = &unk_2876F3810;
  *(this + 487) = &unk_2876F3810;
  *(this + 483) = &unk_2876F3810;
  *(this + 479) = &unk_2876F3810;
  *(this + 473) = &unk_2876F3810;
  *(this + 468) = &unk_2876F3810;
  *(this + 464) = &unk_2876F3810;
  *(this + 406) = &unk_2876F3810;
  *(this + 402) = &unk_2876F3810;
  *(this + 398) = &unk_2876F3810;
  *(this + 392) = &unk_2876F3810;
  *(this + 384) = &unk_2876F3810;
  *(this + 375) = &unk_2876F3810;
  *(this + 371) = &unk_2876F3810;
  *(this + 367) = &unk_2876F3810;
  *(this + 362) = &unk_2876F3810;
  *(this + 358) = &unk_2876F3810;
  *(this + 354) = &unk_2876F3810;
  *(this + 347) = &unk_2876F3810;
  *(this + 338) = &unk_2876F3810;
  *(this + 328) = &unk_2876F3810;
  *(this + 316) = &unk_2876F3810;
  *(this + 311) = &unk_2876F3810;
  *(this + 306) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 296);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 288);
  *(this + 277) = &unk_2876EFEC0;
  *(this + 281) = &unk_2876EFF18;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 277);
  *(this + 273) = &unk_2876F3810;
  *(this + 267) = &unk_2876F3810;
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(this + 259);
  SA2DArrayDynamicSize<short>::~SA2DArrayDynamicSize(this + 251);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 242);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 234);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 226);
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 218);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 209);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 200);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 191);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 182);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 173);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 164);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 155);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 146);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 136);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 127);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 118);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 109);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 100);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 91);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 82);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 73);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 63);
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(this + 53);
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(this + 43);
  SA3DArrayDynamicSize<short>::~SA3DArrayDynamicSize(this + 33);
  *(this + 13) = &unk_2876F3810;

  AlgTaskNode::~AlgTaskNode(this);
}

{
  Device0x038FireflyTask::~Device0x038FireflyTask(this);

  JUMPOUT(0x266758590);
}

void Device0x038PadFireflyParameterCollection::~Device0x038PadFireflyParameterCollection(Device0x038PadFireflyParameterCollection *this)
{
  *(this + 401) = &unk_2876F3810;
  *(this + 259) = &unk_2876F3810;
  *(this + 251) = &unk_2876F3810;
  *(this + 246) = &unk_2876F3810;
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(this + 239);
  *(this + 226) = &unk_2876F3810;
  *(this + 214) = &unk_2876F3810;
  *(this + 202) = &unk_2876F3810;
  *(this + 196) = &unk_2876F3810;
  *(this + 176) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 168);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 161);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 154);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 147);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 139);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 131);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 123);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 115);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 107);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 99);
  *(this + 63) = &unk_2876F3810;
  *(this + 57) = &unk_2876F3810;
  *(this + 49) = &unk_2876F3810;
  *(this + 33) = &unk_2876F3810;
  *(this + 18) = &unk_2876F3810;
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 10);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(this + 2);
}

uint64_t PadHostService::Device0x038PadHostServiceAlgsDevice::Device0x038PadHostServiceAlgsDevice(uint64_t a1, char a2, int a3, char a4)
{
  v8 = SAPadHostServiceJ8xxVersionDescriptor();
  v9 = PadHostService::PadHostServiceAlgsDevice::PadHostServiceAlgsDevice(a1, a2, a3, a4, *v8);
  *a1 = &unk_2876F0518;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  PadHostService::Device0x038PadHostServiceAlgsDevice::newPlanNode(v9, 0);
  return a1;
}

void PadHostService::Device0x038PadHostServiceAlgsDevice::~Device0x038PadHostServiceAlgsDevice(PadHostService::Device0x038PadHostServiceAlgsDevice *this)
{
  *this = &unk_2876F0518;
  v2 = *(this + 14);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AlgsDevice::~AlgsDevice(this);
}

{
  PadHostService::Device0x038PadHostServiceAlgsDevice::~Device0x038PadHostServiceAlgsDevice(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHostService::Device0x038PadHostServiceAlgsDevice::newPlanNode(PadHostService::Device0x038PadHostServiceAlgsDevice *this, int a2)
{
  if (a2 == 1)
  {
    v7 = *(this + 14);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 120);
    v9 = operator new(0x2A8uLL);
    active = PadHostService::Device0x038PadHostServiceTTWPlan::Device0x038PadHostServiceTTWPlan(v9);
    goto LABEL_9;
  }

  if (!a2)
  {
    v3 = *(this + 14);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 120);
    v5 = operator new(0x99D8uLL);
    active = PadHostService::Device0x038PadHostServiceActivePlan::Device0x038PadHostServiceActivePlan(v5);
LABEL_9:
    *(this + 14) = active;
    return 1;
  }

  return 0;
}

uint64_t PadTouchService::PadTouchTask::PadTouchTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = AlgTaskNode::AlgTaskNode(a1, 0xAF83667BDA1FDB60, &PadTouchService::kPadTouchTaskDataNodeListSizes, 32);
  *v17 = &unk_2876F0578;
  v17[12] = 0;
  v23 = (v17 + 12);
  v17[13] = 0;
  v17[14] = 0;
  v17[15] = a2;
  TouchService::PlainPathCollection::PlainPathCollection(v17 + 16, 0x310DDDD485, 18, 0);
  AlgDataNode::AlgDataNode((a1 + 184), 0x8A9B4B9510DFB2FALL, 0);
  *(a1 + 184) = &unk_2876F0108;
  *(a1 + 212) = 0;
  *(a1 + 200) = 20480;
  *(a1 + 208) = 1;
  AlgDataNode::AlgDataNode((a1 + 216), 0xA9311C933FAB2A39, 0);
  *(a1 + 216) = &unk_2876F0108;
  *(a1 + 244) = 0;
  *(a1 + 232) = 20480;
  *(a1 + 240) = 1;
  *(a1 + 248) = a8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 312) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 100;
  *(a1 + 304) = 100;
  *(a1 + 288) = 0;
  *(a1 + 320) = a3;
  *(a1 + 328) = a7;
  AlgDataNode::AlgDataNode((a1 + 336), 0xEDBB78967950011, 0);
  *(a1 + 336) = &unk_2876F05F0;
  *(a1 + 364) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 31236;
  *(a1 + 360) = 8;
  AlgDataNode::AlgDataNode((a1 + 376), 0x4D123D542B029C57, 0);
  *(a1 + 376) = &unk_2876F0640;
  *(a1 + 404) = 0;
  *(a1 + 406) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 31238;
  *(a1 + 400) = 12;
  AlgDataNode::AlgDataNode((a1 + 416), 0xBFD069D33EF501AALL, 0);
  *(a1 + 416) = &unk_2876F0108;
  *(a1 + 444) = 0;
  *(a1 + 432) = 20480;
  *(a1 + 440) = 1;
  AlgDataNode::AlgDataNode((a1 + 448), 0xC117575754B910ECLL, 0);
  *(a1 + 448) = &unk_2876F0690;
  *(a1 + 464) = 20486;
  *(a1 + 472) = 4;
  AlgDataNode::AlgDataNode((a1 + 480), 0x84A7C1216FAC7749, 0);
  *(a1 + 480) = &unk_2876F0690;
  *(a1 + 496) = 20486;
  *(a1 + 504) = 4;
  AlgDataNode::AlgDataNode((a1 + 512), 0xB0A60E3AEC10AE51, 0);
  v22 = v18;
  *(a1 + 512) = &unk_2876F01A8;
  *(a1 + 540) = 0;
  *(a1 + 528) = 20482;
  *(a1 + 536) = 1;
  AlgDataNode::AlgDataNode((a1 + 544), 0x614773EFA4E20E8CLL, 0);
  *(a1 + 544) = &unk_2876F01A8;
  *(a1 + 572) = 0;
  *(a1 + 560) = 20482;
  *(a1 + 568) = 1;
  AlgDataNode::AlgDataNode((a1 + 576), 0x7E2F3B82958BC45, 0);
  *(a1 + 576) = &unk_2876F06E0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  *(a1 + 592) = 31243;
  *(a1 + 600) = 16;
  AlgDataNode::AlgDataNode((a1 + 624), 0x450AA5C3F7652727, 0);
  *(a1 + 624) = &unk_2876F0108;
  *(a1 + 652) = 0;
  *(a1 + 640) = 20480;
  *(a1 + 648) = 1;
  AlgDataNode::AlgDataNode((a1 + 656), 0xC6CBF46E2F277A78, 0);
  *(a1 + 656) = &unk_2876F0730;
  *(a1 + 688) = 0;
  *(a1 + 672) = 20488;
  *(a1 + 680) = 8;
  AlgDataNode::AlgDataNode((a1 + 696), 0x377A1603BFB01C2, 0);
  *(a1 + 792) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 712) = 31232;
  *(a1 + 720) = 72;
  *(a1 + 696) = &unk_2876F02C0;
  *(a1 + 800) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(a1 + 808, 0xBB59337C2FBD0775, 18, 0);
  AlgDataNode::AlgDataNode((a1 + 864), 0x348FFB668AEB850DLL, 0);
  *(a1 + 960) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 880) = 31232;
  *(a1 + 888) = 72;
  v21 = v19;
  *(a1 + 864) = &unk_2876F02C0;
  *(a1 + 968) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(a1 + 976, 0xA6CEC30BA0ABCAE0, 18, 0);
  TouchService::TouchServicePathStatsCollection::TouchServicePathStatsCollection();
  AlgDataNode::AlgDataNode((a1 + 1088), 0xE6B312786F98B150, 0);
  *(a1 + 1104) = 20481;
  *(a1 + 1112) = 4;
  *(a1 + 1088) = &unk_2876F0780;
  *(a1 + 1120) = 0;
  AlgDataNode::AlgDataNode((a1 + 1128), 0x3779E57A5AD9093, 0);
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1144) = 31239;
  *(a1 + 1152) = 32;
  *(a1 + 1128) = &unk_2876F07D0;
  *(a1 + 1192) = 0;
  AlgDataNode::AlgDataNode((a1 + 1200), 0x348FF85DF49E13DELL, 0);
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 31239;
  *(a1 + 1224) = 32;
  *(a1 + 1200) = &unk_2876F07D0;
  *(a1 + 1264) = 0;
  AlgDataNode::AlgDataNode((a1 + 1272), 0xDACD1AB81EF736C2, 0);
  *(a1 + 1300) = 0;
  *(a1 + 1288) = 20480;
  *(a1 + 1296) = 1;
  *(a1 + 1272) = &unk_2876F0838;
  AlgDataNode::AlgDataNode((a1 + 1304), 0x802C362E537882D8, 1);
  *(a1 + 1416) = 0;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1336) = 28;
  *(a1 + 1320) = 39426;
  *(a1 + 1328) = 0x7A0F00080000005CLL;
  *(a1 + 1304) = &unk_2876F0888;
  *(a1 + 1424) = &unk_2876F08D0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = a9;
  AlgDataNode::AlgDataNode((a1 + 1448), 0x726DB665A87D6D56, 0);
  *(a1 + 1448) = &unk_2876F0270;
  *(a1 + 1500) = 0;
  *(a1 + 1484) = 0;
  *(a1 + 1492) = 0;
  *(a1 + 1476) = 0;
  *(a1 + 1464) = 28672;
  *(a1 + 1472) = 28;
  AlgDataNode::AlgDataNode((a1 + 1504), 0x1AE6533682FB2CLL, 0);
  *(a1 + 1600) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 31232;
  *(a1 + 1528) = 72;
  *(a1 + 1504) = &unk_2876F02C0;
  *(a1 + 1608) = 0;
  PalmRejection::PalmRejectionTask::PalmRejectionTask(a1 + 1616, a1 + 184, a1 + 256, a5, a1 + 128, a4, a6);
  TouchService::TouchTask::TouchTask(a1 + 15488, a1 + 624, v23, a1 + 480, *(a1 + 320), *(a1 + 328), a1 + 128, a1 + 336, a1 + 376, a1 + 1304, a1 + 1032, v21, a1 + 976, a1 + 696, a1 + 808, a1 + 1088, a1 + 1128, a1 + 1200, v22, a1 + 656);
  ConditionalAlgTaskNode::ConditionalAlgTaskNode(a1 + 17696, 0xA20A19A18718299DLL, *(a1 + 1440));
  TouchService::TapEventGenerationStep::TapEventGenerationStep(a1 + 17800, v23, a1 + 1448, a1 + 1504);
  PadTouchService::PadTouchTask::runNodeRegistrations(a1);
  *(a1 + 244) = 0;
  *(*(a1 + 328) + 28) = 1;
  *(a1 + 364) = 0;
  *(a1 + 404) = 0;
  *(a1 + 540) = 0;
  *(a1 + 572) = 0;
  *(a1 + 616) = 0;
  *(a1 + 508) = 480;
  *(a1 + 688) = 0;
  *(a1 + 1476) = 0;
  return a1;
}

{
  return PadTouchService::PadTouchTask::PadTouchTask(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_2653DAFA8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, TouchService::TouchServicePathStatsCollection *a27, uint64_t a28, uint64_t a29, TouchService::TouchServiceEventCollection *a30, void *a31)
{
  *(v41 - 112) = a1;
  AlgWorkNode::~AlgWorkNode((v31 + v36));
  AlgTaskNode::~AlgTaskNode((v31 + v33));
  TouchService::TouchTask::~TouchTask((v31 + 15488));
  PalmRejection::PalmRejectionTask::~PalmRejectionTask((v31 + 1616));
  *v40 = &unk_2876F3810;
  *v38 = &unk_2876F3810;
  *v32 = &unk_2876F3810;
  *v35 = &unk_2876F3810;
  *v37 = &unk_2876F3810;
  *v34 = &unk_2876F3810;
  *v39 = &unk_2876F3810;
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(a27);
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(a30);
  *a31 = &unk_2876F3810;
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(*(v41 - 176));
  **(v41 - 168) = &unk_2876F3810;
  **(v41 - 160) = &unk_2876F3810;
  **(v41 - 152) = &unk_2876F3810;
  *a21 = &unk_2876F3810;
  *a22 = &unk_2876F3810;
  **(v41 - 144) = &unk_2876F3810;
  **(v41 - 136) = &unk_2876F3810;
  *a23 = &unk_2876F3810;
  *a24 = &unk_2876F3810;
  **(v41 - 128) = &unk_2876F3810;
  *a25 = &unk_2876F3810;
  *a26 = &unk_2876F3810;
  **(v41 - 120) = &unk_2876F3810;
  TouchService::PlainPathCollection::~PlainPathCollection((v31 + 128));
  AlgTaskNode::~AlgTaskNode(v31);
  _Unwind_Resume(*(v41 - 112));
}

uint64_t PadTouchService::PadTouchTask::runNodeRegistrations(PadTouchService::PadTouchTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 128);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 184);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 216);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 40));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 41));
  AlgWorkNode::registerAlgDataNode(this + 8, this + 336);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 376);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 416);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 480);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 512);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 544);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 576);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 448);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 1448);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 180));
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1304);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 656);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 696);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 808);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 864);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 976);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1032);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1088);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1128);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1200);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1272);
  AlgWorkNode::registerAlgDataNode(this + 40, this + 1504);
  v3 = this + 1616;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 15488;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  v3 = this + 17696;
  SAList<std::reference_wrapper<AlgWorkNode>>::push_back(this + 80, &v3);
  return ConditionalInjExtAndTaskNode::registerChild((this + 17696), (this + 17800));
}

uint64_t PadTouchService::PadTouchTask::setEventInfoParams(uint64_t result, uint64_t a2, int a3)
{
  *(result + 404) = a2;
  *(result + 412) = a3;
  return result;
}

_BYTE *PadTouchService::PadTouchTask::updateStylusLastSeen(PadFireflyPathCollection **this)
{
  result = PadFireflyPathCollection::getMutableNumContacts(this[31]);
  if (*result == 1)
  {
    result = PadFireflyPathCollection::getMutableContact(this[31]);
    if (result[1] - 2 <= 2)
    {
      this[86] = this[34];
    }
  }

  return result;
}

uint64_t PadTouchService::PadTouchTask::runBeforeChildren(PadTouchService::PadTouchTask *this)
{
  v2 = *(this + 149);
  *(this + 652) = v2;
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(v3 + 16);
    *(this + 6) = *v3;
    *(this + 14) = v4;
    v5 = *(this + 12);
    v6 = *(this + 26);
    *(this + 34) = v5;
    TimeState::updateWithMs(this + 256, v5 / 0x3E8, v6);
  }

  else
  {
    TouchService::TouchTask::invalidateOutputNodes((this + 15488));
    if (*(this + 469) == 1 && (*(this + 476) & 1) != 0)
    {
      TouchService::TouchTask::baselineAdaptNotification((this + 15488));
    }
  }

  PadTouchService::PadTouchTask::updateStylusLastSeen(this);
  if (*(this + 149) == 1)
  {
    v7 = *(this + 244) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *(this + 212) = v7 & 1;
  return 0;
}