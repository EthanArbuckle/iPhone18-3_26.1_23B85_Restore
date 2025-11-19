void OZChannelPosition::OZChannelPosition(OZChannelPosition *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, int a8, OZChannelImpl *a9, OZChannelInfo *a10)
{
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  Instance = OZChannelPosition_Factory::getInstance(this);
  v20 = Instance;
  if (!a9)
  {
    a9 = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(Instance);
  }

  OZChannel2D::OZChannel2D(this, a2, a3, v20, a4, a5, a6, a7, a8, a9, a10);
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 175) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  if (!a10)
  {
    v22 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v21);
    v23 = OZChannel::replaceInfo((this + 136), v22);
    v24 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v23);
    OZChannel::replaceInfo((this + 288), v24);
  }

  *(this + 440) = 1;
  *(this + 174) = 0;
}

void sub_25FEECC80(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock((v1 + 700));
  v4 = *(v1 + 672);
  if (v4)
  {
    *(v1 + 680) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 648);
  if (v5)
  {
    *(v1 + 656) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 624);
  if (v6)
  {
    *(v1 + 632) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 600);
  if (v7)
  {
    *(v1 + 608) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 584) = v8;
    operator delete(v8);
  }

  OZChannel2D::~OZChannel2D(v1);
  _Unwind_Resume(a1);
}

void OZChannelPosition::OZChannelPosition(OZChannelPosition *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5, OZChannelImpl *Instance, OZChannelInfo *a7)
{
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  if (!Instance)
  {
    Instance = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(this);
  }

  OZChannel2D::OZChannel2D(this, a2, a3, a4, a5, Instance, a7);
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 175) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  if (!a7)
  {
    v14 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v13);
    v15 = OZChannel::replaceInfo((this + 136), v14);
    v16 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v15);
    OZChannel::replaceInfo((this + 288), v16);
  }

  *(this + 440) = 1;
  *(this + 174) = 0;
}

void sub_25FEECE2C(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock((v1 + 700));
  v4 = *(v1 + 672);
  if (v4)
  {
    *(v1 + 680) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 648);
  if (v5)
  {
    *(v1 + 656) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 624);
  if (v6)
  {
    *(v1 + 632) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 600);
  if (v7)
  {
    *(v1 + 608) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 584) = v8;
    operator delete(v8);
  }

  OZChannel2D::~OZChannel2D(v1);
  _Unwind_Resume(a1);
}

void OZChannelPosition::OZChannelPosition(OZChannelPosition *this, const OZChannelPosition *a2, OZChannelFolder *a3)
{
  OZChannel2D::OZChannel2D(this, a2, a3);
  *v4 = &unk_287253528;
  *(v4 + 16) = &unk_287253880;
  *(v4 + 568) = 0x3FF0000000000000;
  *(v4 + 528) = 0x3FF0000000000000;
  *(v4 + 488) = 0x3FF0000000000000;
  *(v4 + 448) = 0x3FF0000000000000;
  *(v4 + 456) = 0u;
  *(v4 + 472) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 512) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 592) = 0u;
  *(v4 + 608) = 0u;
  *(v4 + 624) = 0u;
  *(v4 + 640) = 0u;
  *(v4 + 656) = 0u;
  *(v4 + 672) = 0u;
  *(v4 + 688) = 0u;
  *(v4 + 440) = *(a2 + 440);
}

void OZChannelPosition::~OZChannelPosition(OZChannelPosition *this)
{
  *this = &unk_287253528;
  *(this + 2) = &unk_287253880;
  PCSpinLock::lock(this + 175);
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 174) = 0;
  PCSpinLock::unlock(this + 175);
  PCSpinLock::~PCSpinLock(this + 175);
  v2 = *(this + 84);
  if (v2)
  {
    *(this + 85) = v2;
    operator delete(v2);
  }

  v3 = *(this + 81);
  if (v3)
  {
    *(this + 82) = v3;
    operator delete(v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    *(this + 79) = v4;
    operator delete(v4);
  }

  v5 = *(this + 75);
  if (v5)
  {
    *(this + 76) = v5;
    operator delete(v5);
  }

  v6 = *(this + 72);
  if (v6)
  {
    *(this + 73) = v6;
    operator delete(v6);
  }

  OZChannel2D::~OZChannel2D(this);
}

{
  OZChannelPosition::~OZChannelPosition(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelPosition::~OZChannelPosition(OZChannelPosition *this)
{
  OZChannelPosition::~OZChannelPosition((this - 16));
}

{
  OZChannelPosition::~OZChannelPosition((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelPosition::copy(OZChannelPosition *this, const OZChannelBase *a2, char a3)
{
  if (a2)
  {
    if (v6)
    {
      v7 = v6;
      PCSpinLock::lock(this + 175);
      *(this + 440) = v7[440];
      *(this + 76) = *(this + 75);
      *(this + 73) = *(this + 72);
      *(this + 79) = *(this + 78);
      *(this + 82) = *(this + 81);
      *(this + 85) = *(this + 84);
      *(this + 71) = 0x3FF0000000000000;
      *(this + 66) = 0x3FF0000000000000;
      *(this + 61) = 0x3FF0000000000000;
      *(this + 56) = 0x3FF0000000000000;
      *(this + 456) = 0u;
      *(this + 472) = 0u;
      *(this + 31) = 0u;
      *(this + 32) = 0u;
      *(this + 536) = 0u;
      *(this + 552) = 0u;
      *(this + 174) = 0;
      PCSpinLock::unlock(this + 175);
    }
  }

  OZChannel2D::copy(this, a2, a3);
}

uint64_t OZChannelPosition::setPosition(OZChannelPosition *this, const CMTime *a2, double a3, double a4, uint64_t a5)
{
  OZChannel::getValueAsDouble((this + 136), a2, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((this + 288), a2, 0.0);

  return OZChannelPosition::offsetPosition(this, a2, a3 - v11, a4 - v12, a5);
}

uint64_t OZChannelPosition::offsetPosition(OZChannelPosition *this, const CMTime *a2, double a3, double a4, uint64_t a5)
{
  OZChannelBase::globalToLocalTime((this + 136), a2, &v13);
  CurveValue = OZChannel::getCurveValue((this + 136), &v13, 0);
  OZChannelBase::globalToLocalTime((this + 288), a2, &v13);
  v11 = OZChannel::getCurveValue((this + 288), &v13, 0);
  return OZChannel2D::setValue(this, a2, CurveValue + a3, v11 + a4, a5);
}

const void *OZChannelPosition::willBeModified(OZChannelPosition *this, uint64_t a2)
{
  PCSpinLock::lock(this + 175);
  *(this + 76) = *(this + 75);
  *(this + 73) = *(this + 72);
  *(this + 79) = *(this + 78);
  *(this + 82) = *(this + 81);
  *(this + 85) = *(this + 84);
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 174) = 0;
  PCSpinLock::unlock(this + 175);

  return OZCompoundChannel::willBeModified(this, a2);
}

double OZChannelPosition::getLength(uint64_t a1, uint64_t a2, double *a3)
{
  PCSpinLock::lock((a1 + 700));
  if (*(a1 + 696))
  {
    if (!a3)
    {
      v10 = *(a1 + 608);
      goto LABEL_17;
    }

    v5 = 0;
    v6 = 0;
    v7 = 448;
LABEL_4:
    v8 = v7;
    v9 = 4;
    while (vabdd_f64(*(a3 + v8 - 448), *(a1 + v8)) < 0.0000001)
    {
      v8 += 8;
      if (!--v9)
      {
        v6 = v5 > 2;
        v7 += 32;
        if (++v5 != 4)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_10:
    v10 = *(a1 + 584);
    if (*(a1 + 576) != v10)
    {
      goto LABEL_17;
    }

LABEL_11:
    OZChannelPosition::getCachedVectors(a1, 0, 0, 0, 0, 0, a3);
    goto LABEL_13;
  }

  OZChannelPosition::getCachedVectors(a1, 0, 0, 0, 0, 0, a3);
  if (a3)
  {
LABEL_13:
    v11 = *(a1 + 576);
    v10 = *(a1 + 584);
    goto LABEL_16;
  }

  v11 = *(a1 + 600);
  v10 = *(a1 + 608);
LABEL_16:
  if (v11 == v10)
  {
    v12 = 0.0;
    goto LABEL_19;
  }

LABEL_17:
  v12 = *(v10 - 8);
LABEL_19:
  PCSpinLock::unlock((a1 + 700));
  return v12;
}

uint64_t OZChannelPosition::getCachedVectors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, double *a7)
{
  v14 = a1 + 136;
  v15 = (*(*(a1 + 136) + 832))(a1 + 136);
  v16 = v14 + 152;
  if (v15 != (*(*(v14 + 152) + 832))(v14 + 152))
  {
    return 0;
  }

  v84 = a7;
  if (a7)
  {
    v17 = 0;
    v18 = 0;
    v19 = a1 + 448;
LABEL_4:
    v20 = 0;
    while (vabdd_f64(a7[v20], *(v19 + v20 * 8)) < 0.0000001)
    {
      if (++v20 == 4)
      {
        v18 = v17 > 2;
        v19 += 32;
        a7 += 4;
        if (++v17 != 4)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (!v18)
    {
      goto LABEL_26;
    }

LABEL_11:
    if (*(a1 + 576) != *(a1 + 584))
    {
      goto LABEL_12;
    }

LABEL_26:
    v85 = (a1 + 696);
  }

  else
  {
LABEL_12:
    v85 = (a1 + 696);
    v22 = *(a1 + 696);
    if (v22)
    {
      if (a2)
      {
        operator new[]();
      }

      if (a3)
      {
        operator new[]();
      }

      if (a4)
      {
        operator new[]();
      }

      if (a5)
      {
        operator new[]();
      }

      v23 = 0;
      do
      {
        v23 += 8;
      }

      while (8 * v22 != v23);
      if (a6)
      {
        *a6 = v22;
      }

      return 1;
    }
  }

  v80 = a6;
  *(a1 + 608) = *(a1 + 600);
  *(a1 + 584) = *(a1 + 576);
  *(a1 + 632) = *(a1 + 624);
  *(a1 + 656) = *(a1 + 648);
  *(a1 + 680) = *(a1 + 672);
  *(a1 + 696) = 0;
  *(a1 + 568) = 0x3FF0000000000000;
  *(a1 + 528) = 0x3FF0000000000000;
  *(a1 + 488) = 0x3FF0000000000000;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  v24 = (*(*(a1 + 136) + 248))(v14);
  v25 = (*(*(a1 + 288) + 248))(v16);
  v109 = 0uLL;
  v110 = 0;
  OZChannel::getKeyframeParametricRange(v24, &v109);
  v107 = 0uLL;
  v108 = 0;
  OZChannel::getKeyframeMinTime(v24, &v107);
  *time = v107;
  *&time[16] = v108;
  v89 = v109;
  *&v90 = v110;
  PC_CMTimeSaferAdd(time, &v89, &v87);
  v110 = v88;
  v109 = v87;
  *time = v87;
  *&time[16] = v88;
  Seconds = CMTimeGetSeconds(time);
  *time = v107;
  *&time[16] = v108;
  v27 = CMTimeGetSeconds(time);
  isParametricCurveClosed = OZChannel::isParametricCurveClosed(v24);
  Interpolation = OZChannel::getInterpolation(v24);
  OZChannel::getKeyframes(v24, 1, &v105);
  OZChannel::getKeyframes(v25, 1, v104);
  v82 = v24;
  v30 = (*(v24->var0 + 104))(v24);
  v31 = (a1 + 624);
  v32 = (a1 + 648);
  v81 = (a1 + 672);
  if (v30 < 2 || (v106 - v105) < 9)
  {
    goto LABEL_70;
  }

  v33 = Seconds - v27;
  if (Interpolation <= 9)
  {
    if (Interpolation != 1)
    {
      if (Interpolation == 4)
      {
        v77 = isParametricCurveClosed;
        v102 = 0.0;
        v103 = 0.0;
        v34 = *(v105 + 1);
        if (v34)
        {
          v36 = *v104[0];
          v35 = *(v104[0] + 1);
          v37 = *v105;
          v76 = 1;
          v78 = *(v106 - 1);
          do
          {
            v83 = v34;
            v79 = v35;
            v98 = 0.0;
            v99 = 0.0;
            v96 = 0.0;
            v97 = 0.0;
            v94 = 0.0;
            v95 = 0.0;
            v92 = 0.0;
            v93 = 0.0;
            v38 = v37;
            OZChannel::getKeyframe(v82, v37, &v101, &v99);
            OZChannel::getKeyframe(v25, v36, 0, &v98);
            OZChannel::getKeyframe(v82, v83, &v100, &v93);
            OZChannel::getKeyframe(v25, v79, 0, &v92);
            *time = v101;
            v39 = CMTimeGetSeconds(time);
            *time = v100;
            v40 = CMTimeGetSeconds(time);
            if (((v38 == v78) & v77) != 0)
            {
              v41 = v33 + v40;
            }

            else
            {
              v41 = v40;
            }

            OZChannel::getKeyframeOutputTangents(v82, v38, 0, &v97, 1);
            OZChannel::getKeyframeOutputTangents(v25, v36, 0, &v96, 1);
            OZChannel::getKeyframeInputTangents(v82, v83, 0, &v95, 1);
            OZChannel::getKeyframeInputTangents(v25, v79, 0, &v94, 1);
            v42 = v92;
            v43 = v93;
            if (vabdd_f64(v99, v93) < 0.0000001 && vabdd_f64(v98, v92) < 0.0000001)
            {
              v43 = v93 + 0.000001;
              v42 = v92 + 0.000001;
              v92 = v92 + 0.000001;
              v93 = v93 + 0.000001;
            }

            *time = v99;
            *&time[8] = v98;
            *&time[16] = xmmword_260342700;
            v44 = v99 + v97;
            v45 = v98 + v96;
            v89.f64[0] = v99 + v97;
            v89.f64[1] = v98 + v96;
            v90 = xmmword_260342700;
            v46 = v95 + v43;
            v47 = v94 + v42;
            v87.f64[0] = v95 + v43;
            v87.f64[1] = v94 + v42;
            v88 = xmmword_260342700;
            v86[0].f64[0] = v43;
            v86[0].f64[1] = v42;
            v86[1] = xmmword_260342700;
            if (vabdd_f64(v99 + v97, v99) < 0.0000001 || vabdd_f64(v46, v44) < 0.0000001)
            {
              goto LABEL_50;
            }

            v48 = v44 - v99;
            v49 = v45 - v98;
            v50 = sqrt(v48 * v48 + v49 * v49);
            if (fabs(v50) >= 0.000000100000001)
            {
              v48 = v48 / v50;
              v49 = v49 / v50;
            }

            v51 = v46 - v44;
            v52 = v47 - v45;
            v53 = sqrt(v51 * v51 + v52 * v52);
            if (fabs(v53) >= 0.000000100000001)
            {
              v51 = v51 / v53;
              v52 = v52 / v53;
            }

            if (fabs(v49 * v52 + v48 * v51 + 1.0) >= 0.001)
            {
LABEL_50:
              PCAlgorithm::BezierSubdivide(time, &v89, &v87, v86, 6, v84, (a1 + 624), (a1 + 648), v39, v41 - v39, 0, v81);
            }

            else if (!OZChannel::getSamples(v82) || (OZChannel::getSamples(v25) & 1) == 0)
            {
              (*(v82->var0 + 1))(v82);
              if (v25)
              {
                (*(v25->var0 + 1))(v25);
              }

              v21 = 0;
              goto LABEL_98;
            }

            v102 = v86[0].f64[1];
            v103 = v86[0].f64[0];
            if (v38 == v78)
            {
              break;
            }

            if (v83 == v78)
            {
              if (!v77)
              {
                break;
              }

              v54 = v105;
              v55 = v104[0];
            }

            else
            {
              v54 = &v105[8 * ++v76];
              v55 = (v104[0] + 8 * v76);
            }

            v34 = *v54;
            v35 = *v55;
            v36 = v79;
            v37 = v83;
          }

          while (v34);
        }

        v56 = *(a1 + 680);
        if (v56 == *(a1 + 672))
        {
          v57 = *(a1 + 680);
        }

        else
        {
          *time = v27 + v33;
          std::vector<double>::push_back[abi:ne200100](v81, time);
          std::vector<double>::push_back[abi:ne200100]((a1 + 624), &v103);
          std::vector<double>::push_back[abi:ne200100]((a1 + 648), &v102);
          v57 = *(a1 + 680);
          v56 = *(a1 + 672);
        }

        *v85 = (v57 - v56) >> 3;
      }

      goto LABEL_70;
    }

    *v85 = v33 + 1;
    if (OZChannel::getSamples(v82))
    {
      goto LABEL_64;
    }

LABEL_65:
    (*(v82->var0 + 1))(v82);
    if (v25)
    {
      (*(v25->var0 + 1))(v25);
    }

    v21 = 0;
    goto LABEL_98;
  }

  if (Interpolation != 10 && Interpolation != 12)
  {
    goto LABEL_70;
  }

  *v85 = (v33 / 0.025) + (isParametricCurveClosed ^ 1);
  if (!OZChannel::getSamples(v82))
  {
    goto LABEL_65;
  }

LABEL_64:
  if ((OZChannel::getSamples(v25) & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_70:
  std::vector<double>::reserve((a1 + 600), *v85);
  *time = 0;
  std::vector<double>::push_back[abi:ne200100]((a1 + 600), time);
  LODWORD(v58) = *v85;
  if (*v85 >= 2u)
  {
    v59 = 0;
    do
    {
      v60 = *(*v31 + 8 * v59 + 8) - *(*v31 + 8 * v59);
      *time = *(*(a1 + 600) + 8 * v59) + sqrt(v60 * v60 + (*(*v32 + 8 * v59 + 8) - *(*v32 + 8 * v59)) * (*(*v32 + 8 * v59 + 8) - *(*v32 + 8 * v59)));
      std::vector<double>::push_back[abi:ne200100]((a1 + 600), time);
      v58 = *v85;
      v61 = v59 + 2;
      ++v59;
    }

    while (v61 < v58);
  }

  v62 = (a1 + 576);
  if (v84)
  {
    *(a1 + 584) = *(a1 + 576);
    std::vector<double>::reserve((a1 + 576), v58);
    v63 = a1 + 448;
    if ((a1 + 448) != v84)
    {
      v64 = 0;
      v65 = v84;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          *(v63 + i * 8) = v65[i];
        }

        ++v64;
        v63 += 32;
        v65 += 4;
      }

      while (v64 != 4);
    }

    *time = 0;
    std::vector<double>::push_back[abi:ne200100]((a1 + 576), time);
    LODWORD(v58) = *v85;
    if (*v85 >= 2u)
    {
      v67 = 0;
      do
      {
        v68 = *v31 + 8 * v67;
        v69 = (*v32 + 8 * v67);
        v70 = *v69;
        *time = *v68;
        *&time[8] = v70;
        *&time[16] = xmmword_260342700;
        v71 = v69[1];
        v89.f64[0] = *(v68 + 8);
        v89.f64[1] = v71;
        v90 = xmmword_260342700;
        PCMatrix44Tmpl<double>::transform<double>(v84, time, time);
        PCMatrix44Tmpl<double>::transform<double>(v84, v89.f64, v89.f64);
        v72 = vsubq_f64(v89, *time);
        v87.f64[0] = *(*v62 + v67) + sqrt(vaddvq_f64(vmulq_f64(v72, v72)));
        std::vector<double>::push_back[abi:ne200100](v62, &v87);
        v58 = *v85;
        v73 = v67 + 2;
        ++v67;
      }

      while (v73 < v58);
    }
  }

  if (a2)
  {
    operator new[]();
  }

  if (a3)
  {
    operator new[]();
  }

  if (a4)
  {
    operator new[]();
  }

  if (a5)
  {
    operator new[]();
  }

  if (v58)
  {
    v74 = 0;
    do
    {
      v74 += 8;
    }

    while (8 * v58 != v74);
  }

  if (v80)
  {
    *v80 = v58;
  }

  (*(v82->var0 + 1))(v82);
  if (v25)
  {
    (*(v25->var0 + 1))(v25);
  }

  v21 = 1;
LABEL_98:
  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  return v21;
}

void sub_25FEEE30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (a58)
  {
    operator delete(a58);
  }

  if (a61)
  {
    operator delete(a61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelPosition::getPositionsReparametrizedWithRange(os_unfair_lock_s *a1, double a2, uint64_t a3, const void **a4, const void **a5, const void **a6, double *a7)
{
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  PCSpinLock::lock(a1 + 175);
  OZChannelPosition::getCachedVectors(a1, &v37, &v39, &v38, &v36, &v40, a7);
  PCSpinLock::unlock(a1 + 175);
  v13 = 0.0;
  v14 = 0.0;
  if (v40 >= 2)
  {
    v14 = *(v36 + 8 * v40 - 8);
  }

  v15 = a2;
  v16 = v14 / a2;
  std::vector<double>::reserve(a4, v15);
  std::vector<double>::reserve(a5, v15);
  std::vector<double>::reserve(a6, v15);
  v17 = 0;
  v18 = 1;
  while (v13 < v14 || vabdd_f64(v13, v14) < 0.0000001)
  {
    v19 = v17;
    v20 = *(v36 + 8 * v17);
    v21 = vabdd_f64(v13, v20);
    if (v21 >= 0.0000001)
    {
      if (v17 < v40)
      {
        v23 = (v36 + 8 * v17);
        v24 = v40 - v17;
        while (*v23 < v13)
        {
          ++v17;
          ++v23;
          if (!--v24)
          {
            v17 = v40;
            break;
          }
        }
      }

      v19 = --v17;
      v20 = *(v36 + 8 * v17);
      v22 = v13 - v20;
      v21 = vabdd_f64(v13, v20);
    }

    else
    {
      v22 = v13 - v20;
    }

    if (v21 < 0.0000001)
    {
LABEL_15:
      std::vector<double>::push_back[abi:ne200100](a6, &v37[v19]);
      std::vector<double>::push_back[abi:ne200100](a4, &v39[v19]);
      std::vector<double>::push_back[abi:ne200100](a5, &v38[v19]);
      goto LABEL_23;
    }

    if (v13 >= v20)
    {
      if (v13 <= v20)
      {
        goto LABEL_23;
      }

      v32 = v17 + 1;
      v33 = *(v36 + 8 * v32);
      if (vabdd_f64(v33, v20) < 0.0000001)
      {
        goto LABEL_15;
      }

      v35 = *&v37[v19] + v22 * ((*&v37[v32] - *&v37[v19]) / (v33 - v20));
      std::vector<double>::push_back[abi:ne200100](a6, &v35);
      v35 = *&v39[v19] + (v13 - *(v36 + 8 * v19)) * ((*&v39[v32] - *&v39[v19]) / (*(v36 + 8 * v32) - *(v36 + 8 * v19)));
      std::vector<double>::push_back[abi:ne200100](a4, &v35);
      v27 = *(v36 + 8 * v19);
      v28 = v13 - v27;
      v29 = *&v38[v32];
      v30 = *&v38[v19];
      v31 = *(v36 + 8 * v32);
    }

    else
    {
      v25 = v17 - 1;
      v26 = *(v36 + 8 * v25);
      if (vabdd_f64(v20, v26) < 0.0000001)
      {
        goto LABEL_15;
      }

      v35 = *&v37[v25] + (v13 - v26) * ((*&v37[v19] - *&v37[v25]) / (v20 - v26));
      std::vector<double>::push_back[abi:ne200100](a6, &v35);
      v35 = *&v39[v25] + (v13 - *(v36 + 8 * v25)) * ((*&v39[v19] - *&v39[v25]) / (*(v36 + 8 * v19) - *(v36 + 8 * v25)));
      std::vector<double>::push_back[abi:ne200100](a4, &v35);
      v27 = *(v36 + 8 * v25);
      v28 = v13 - v27;
      v29 = *&v38[v19];
      v30 = *&v38[v25];
      v31 = *(v36 + 8 * v19);
    }

    v35 = v30 + v28 * ((v29 - v30) / (v31 - v27));
    std::vector<double>::push_back[abi:ne200100](a5, &v35);
LABEL_23:
    v18 = 0;
    v13 = v16 + v13;
  }

  if ((v18 & (v40 != 0)) != 0)
  {
    std::vector<double>::push_back[abi:ne200100](a6, v37);
    std::vector<double>::push_back[abi:ne200100](a4, v39);
    std::vector<double>::push_back[abi:ne200100](a5, v38);
  }

  if (v39)
  {
    MEMORY[0x2666E9ED0](v39, 0x1000C8000313F17);
  }

  if (v38)
  {
    MEMORY[0x2666E9ED0](v38, 0x1000C8000313F17);
  }

  if (v37)
  {
    MEMORY[0x2666E9ED0](v37, 0x1000C8000313F17);
  }

  if (v36)
  {
    MEMORY[0x2666E9ED0](v36, 0x1000C8000313F17);
  }

  return 0;
}

void OZChannelPosition::generatePathFromShape(OZChannelPosition *this, const CMTime *a2, OZChannelCurve *a3)
{
  v24 = 0.0;
  v25 = 0.0;
  v23 = 0.0;
  v22 = 0.0;
  v6 = (this + 136);
  (*(*this + 464))(this, 1);
  OZChannel::generateKeyframesFromDynamicCurve(v6, a2, (a3 + 288));
  OZChannel::generateKeyframesFromDynamicCurve((this + 288), a2, (a3 + 520));
  OZChannel::getKeyframes(v6, 1, &v20);
  OZChannel::getKeyframes((this + 288), 1, v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v7 = v20;
  if (v21 == v20)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if (v9 != 1)
      {
        OZChannel::getKeyframe(v6, v7[v9 - 2], 0, &v23);
        OZChannel::getKeyframe((this + 288), *(v19[0] + v9 - 2), 0, &v22);
        OZChannel::getKeyframe(v6, *(v20 + v8), 0, &v25);
        OZChannel::getKeyframe((this + 288), *(v19[0] + v8), 0, &v24);
        if (vabdd_f64(v23, v25) < 0.0000001 && vabdd_f64(v22, v24) < 0.0000001)
        {
          std::vector<HGMTLFunctionType>::push_back[abi:ne200100](&v16, v20 + v8);
          std::vector<HGMTLFunctionType>::push_back[abi:ne200100](&__p, v19[0] + v8);
        }
      }

      v8 = v9;
      v7 = v20;
      ++v9;
    }

    while (v8 < (v21 - v20) >> 3);
    v10 = v16;
    if (v17 != v16)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        OZChannel::deleteKeyframe(v6, v10[v11]);
        OZChannel::deleteKeyframe((this + 288), *(__p + v11));
        v11 = v12;
        v10 = v16;
        ++v12;
      }

      while (v11 < (v17 - v16) >> 3);
    }
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
    v10 = v16;
  }

  if (v10)
  {
    v17 = v10;
    operator delete(v10);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_25FEEE998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelPosition::OZChannelPosition_valueImpl::getInstance(OZChannelPosition::OZChannelPosition_valueImpl *this)
{
  if (atomic_load_explicit(&OZChannelPosition::OZChannelPosition_valueImpl::getInstance(void)::_OZChannelPosition_value_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPosition::OZChannelPosition_valueImpl::getInstance(void)::_OZChannelPosition_value_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition::OZChannelPosition_valueImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPosition::OZChannelPosition_valueImpl::_OZChannelPosition_value;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition::OZChannelPosition_valueImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPosition::OZChannelPosition_valueImpl::_OZChannelPosition_value)
  {
    operator new();
  }
}

void sub_25FEEEB98(_Unwind_Exception *a1)
{
  PCSingleton::~PCSingleton(v2);
  OZChannelImpl::~OZChannelImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelPosition::OZChannelPosition_valueInfo::getInstance(OZChannelPosition::OZChannelPosition_valueInfo *this)
{
  if (atomic_load_explicit(&OZChannelPosition::OZChannelPosition_valueInfo::getInstance(void)::OZChannelPosition_valueInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPosition::OZChannelPosition_valueInfo::getInstance(void)::OZChannelPosition_valueInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition::OZChannelPosition_valueInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPosition::OZChannelPosition_valueInfo::_OZChannelPosition_valueInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPosition::OZChannelPosition_valueInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPosition::OZChannelPosition_valueInfo::_OZChannelPosition_valueInfo)
  {
    operator new();
  }
}

OZChannelPosition::OZChannelPosition_valueInfo *OZChannelPosition::OZChannelPosition_valueInfo::OZChannelPosition_valueInfo(OZChannelPosition::OZChannelPosition_valueInfo *this, OZFactoryBase *a2)
{
  TXParagraphStyleFolder_Factory::createInstance(this, a2);
  PCURL::PCURL(&v4, @"Channel Position Suffix");
  OZChannelInfo::OZChannelInfo(this, -3.40282347e38, 3.40282347e38, 1.0, 0.01, 1.0, &v4);
  PCString::~PCString(&v4);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287253968;
  *(this + 10) = &unk_287253988;
  return this;
}

void OZChannelPosition3D::OZChannelPosition3D(OZChannelPosition3D *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  OZChannelPosition::OZChannelPosition(this, a2, a3, a4, a5, a6, 0, 0);
  *v7 = &unk_2872539E0;
  *(v7 + 16) = &unk_287253D38;
  *(v7 + 704) = 0;
  *(v7 + 720) = 0;
  *(v7 + 712) = 0;
  *(v7 + 728) = 1;
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v14, @"Channel Z");
  Instance = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(v9);
  OZChannelDouble::OZChannelDouble((this + 736), &v14, this, 3u, 0, Instance, 0);
  PCString::~PCString(&v14);
  v12 = OZChannelPosition3D_Factory::getInstance(v11);
  *(this + 1) = v12;
  v13 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v12);
  OZChannel::replaceInfo((this + 736), v13);
}

void sub_25FEEEE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  v12 = *(v10 + 88);
  if (v12)
  {
    *(v10 + 89) = v12;
    operator delete(v12);
  }

  OZChannelPosition::~OZChannelPosition(v10);
  _Unwind_Resume(a1);
}

void OZChannelPosition3D::OZChannelPosition3D(OZChannelPosition3D *this, double a2, double a3, double a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9)
{
  OZChannelPosition::OZChannelPosition(this, a2, a3, a5, a6, a7, a8, a9, 0, 0);
  *v11 = &unk_2872539E0;
  *(v11 + 16) = &unk_287253D38;
  *(v11 + 704) = 0;
  *(v11 + 720) = 0;
  *(v11 + 712) = 0;
  *(v11 + 728) = 1;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v18, @"Channel Z");
  Instance = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 736), a4, &v18, this, 3u, 0, Instance, 0);
  PCString::~PCString(&v18);
  v16 = OZChannelPosition3D_Factory::getInstance(v15);
  *(this + 1) = v16;
  v17 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v16);
  OZChannel::replaceInfo((this + 736), v17);
}

void sub_25FEEEFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  v12 = *(v10 + 88);
  if (v12)
  {
    *(v10 + 89) = v12;
    operator delete(v12);
  }

  OZChannelPosition::~OZChannelPosition(v10);
  _Unwind_Resume(a1);
}

void OZChannelPosition3D::OZChannelPosition3D(OZChannelPosition3D *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelPosition::OZChannelPosition(this, a2, a3, a4, a5, 0, 0);
  *v6 = &unk_2872539E0;
  *(v6 + 16) = &unk_287253D38;
  *(v6 + 704) = 0;
  *(v6 + 720) = 0;
  *(v6 + 712) = 0;
  *(v6 + 728) = 1;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v12, @"Channel Z");
  Instance = OZChannelPosition::OZChannelPosition_valueImpl::getInstance(v8);
  OZChannelDouble::OZChannelDouble((this + 736), &v12, this, 3u, 0, Instance, 0);
  PCString::~PCString(&v12);
  v11 = OZChannelPosition::OZChannelPosition_valueInfo::getInstance(v10);
  OZChannel::replaceInfo((this + 736), v11);
}

void sub_25FEEF0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 736));
  v12 = *(v10 + 704);
  if (v12)
  {
    *(v10 + 712) = v12;
    operator delete(v12);
  }

  OZChannelPosition::~OZChannelPosition(v10);
  _Unwind_Resume(a1);
}

void OZChannelPosition3D::OZChannelPosition3D(OZChannelPosition3D *this, const OZChannelPosition3D *a2, OZChannelFolder *a3)
{
  OZChannelPosition::OZChannelPosition(this, a2, a3);
  *v5 = &unk_2872539E0;
  *(v5 + 16) = &unk_287253D38;
  *(v5 + 704) = 0;
  *(v5 + 720) = 0;
  *(v5 + 712) = 0;
  *(v5 + 728) = *(a2 + 728);
  OZChannel::OZChannel((v5 + 736), (a2 + 736), this);
  *(this + 92) = &unk_287245C60;
  *(this + 94) = &unk_287245FC0;
}

void sub_25FEEF20C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 89) = v4;
    operator delete(v4);
  }

  OZChannelPosition::~OZChannelPosition(v1);
  _Unwind_Resume(a1);
}

void OZChannelPosition3D::~OZChannelPosition3D(OZChannelPosition3D *this)
{
  *this = &unk_2872539E0;
  *(this + 2) = &unk_287253D38;
  OZChannel::~OZChannel((this + 736));
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 89) = v2;
    operator delete(v2);
  }

  OZChannelPosition::~OZChannelPosition(this);
}

{
  OZChannelPosition3D::~OZChannelPosition3D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelPosition3D::~OZChannelPosition3D(OZChannelPosition3D *this)
{
  OZChannelPosition3D::~OZChannelPosition3D((this - 16));
}

{
  OZChannelPosition3D::~OZChannelPosition3D((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelPosition3D::copy(OZChannelPosition3D *this, const OZChannelBase *a2, char a3)
{
  OZChannelPosition::copy(this, a2, a3);
  if (a2)
  {
    if (v6)
    {
      v7 = v6;
      PCSpinLock::lock(this + 175);
      *(this + 89) = *(this + 88);
      PCSpinLock::unlock(this + 175);
      OZChannel::copy((this + 736), (v7 + 736), a3);
      *(this + 728) = v7[728];
    }
  }
}

uint64_t OZChannelPosition3D::setPosition(OZChannelPosition3D *this, const CMTime *a2, double a3, double a4, double a5)
{
  OZChannel::getValueAsDouble((this + 136), a2, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((this + 288), a2, 0.0);
  v13 = v12;
  OZChannel::getValueAsDouble((this + 736), a2, 0.0);

  return OZChannelPosition3D::offsetPosition(this, a2, a3 - v11, a4 - v13, a5 - v14, 1);
}

uint64_t OZChannelPosition3D::offsetPosition(OZChannelPosition3D *this, const CMTime *a2, double a3, double a4, double a5, char a6)
{
  memset(&v17, 0, sizeof(v17));
  v12 = (this + 136);
  (*(*this + 328))(&v17);
  CurveValue = OZChannel::getCurveValue(v12, &v17, 0);
  v14 = OZChannel::getCurveValue((this + 288), &v17, 0);
  v15 = OZChannel::getCurveValue((this + 736), &v17, 0);
  if (a6)
  {
    return OZChannelPosition3D::setValue(this, a2, CurveValue + a3, v14 + a4, v15 + a5);
  }

  OZChannel::willBeModified(v12, 1);
  OZChannel::offsetChannel(v12, a2, CurveValue + a3);
  OZChannel::willBeModified((this + 288), 1);
  OZChannel::offsetChannel((this + 288), a2, v14 + a4);
  OZChannel::willBeModified((this + 736), 1);
  return OZChannel::offsetChannel((this + 736), a2, v15 + a5);
}

uint64_t OZChannelPosition3D::setValue(OZChannelPosition3D *this, const CMTime *a2, double a3, double a4, double a5)
{
  v10 = (this + 136);
  (*(*(this + 17) + 712))(this + 136, a2, 0);
  (*(v10[1].var0 + 89))(v10 + 1, a2, 0, a4);
  (*(v10[3].var18 + 89))(&v10[3].var18, a2, 0, a5);
  result = OZChannel::isParametricCurveClosed(v10);
  if ((result & 1) == 0)
  {

    return OZChannelPosition3D::derivePath(this, a2, a3, a4, a5, 0);
  }

  return result;
}

uint64_t OZChannelPosition3D::derivePath(OZChannelPosition3D *this, const CMTime *a2, double a3, double a4, double a5, int a6)
{
  v124 = 0.0;
  v125 = 0.0;
  v122 = 0.0;
  v123 = 0.0;
  v121 = 0.0;
  v120 = 0.0;
  CurveValue = 0.0;
  v118 = 0.0;
  v117 = 0.0;
  v116 = 0.0;
  v115 = 0.0;
  v114 = 0.0;
  v113 = **&MEMORY[0x277CC08F0];
  v112 = **&MEMORY[0x277CC08F0];
  v111 = **&MEMORY[0x277CC08F0];
  v110 = **&MEMORY[0x277CC08F0];
  v109 = **&MEMORY[0x277CC08F0];
  v108 = **&MEMORY[0x277CC08F0];
  v107 = **&MEMORY[0x277CC08F0];
  v106 = **&MEMORY[0x277CC08F0];
  v105 = **&MEMORY[0x277CC08F0];
  v104 = **&MEMORY[0x277CC08F0];
  v103 = **&MEMORY[0x277CC08F0];
  v102 = **&MEMORY[0x277CC08F0];
  v101 = 0.0;
  if (OZChannel::isParametric((this + 136)) && a6)
  {
    OZChannel2D::deriveChannel(this, a2);
  }

  result = OZChannel::isParametricCurveClosed((this + 136));
  if (result)
  {
    return result;
  }

  memset(&v100, 0, sizeof(v100));
  (*(*this + 320))(&v99, this);
  v127 = *a2;
  v126 = v99;
  PC_CMTimeSaferSubtract(&v127, &v126, &v100);
  Keyframe = OZChannel::getKeyframe((this + 136), &v100);
  v13 = OZChannel::getKeyframe((this + 288), &v100);
  v14 = OZChannel::getKeyframe((this + 736), &v100);
  PreviousKeyframe = OZChannel::getPreviousKeyframe((this + 136), &v100, &v113, &v123);
  v16 = 0;
  if (PreviousKeyframe)
  {
    v16 = OZChannel::getKeyframe((this + 136), &v113);
  }

  if (OZChannel::getPreviousKeyframe((this + 288), &v100, &v112, &CurveValue))
  {
    v17 = OZChannel::getKeyframe((this + 288), &v112);
    v18 = PreviousKeyframe ^ 1;
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  v96 = v13;
  if (OZChannel::getPreviousKeyframe((this + 736), &v100, &v111, &v115))
  {
    v93 = v18;
    v19 = OZChannel::getKeyframe((this + 736), &v111);
  }

  else
  {
    v19 = 0;
    v93 = 1;
  }

  v97 = a6;
  if (v16)
  {
    v20 = v17 != 0;
    if (v17)
    {
      if (v19)
      {
LABEL_16:
        v21 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      CurveValue = OZChannel::getCurveValue((this + 288), &v113, 1);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    v22 = (this + 736);
    v23 = &v113;
    goto LABEL_22;
  }

  if (!v17)
  {
    if (v19)
    {
      v21 = 1;
      v123 = OZChannel::getCurveValue((this + 136), &v111, 1);
      v20 = 0;
      CurveValue = OZChannel::getCurveValue((this + 288), &v111, 1);
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    goto LABEL_26;
  }

  v21 = 1;
  v123 = OZChannel::getCurveValue((this + 136), &v112, 1);
  v20 = 1;
  if (!v19)
  {
    v22 = (this + 736);
    v23 = &v112;
LABEL_22:
    v21 = 0;
    v115 = OZChannel::getCurveValue(v22, v23, 1);
  }

LABEL_26:
  v95 = v14;
  NextKeyframe = OZChannel::getNextKeyframe((this + 136), &v100, &v110, &v122);
  if (NextKeyframe)
  {
    v25 = OZChannel::getKeyframe((this + 136), &v110);
  }

  else
  {
    v25 = 0;
  }

  if (OZChannel::getNextKeyframe((this + 288), &v100, &v109, &v118))
  {
    v26 = OZChannel::getKeyframe((this + 288), &v109);
    v27 = NextKeyframe ^ 1;
  }

  else
  {
    v26 = 0;
    v27 = 1;
  }

  if (OZChannel::getNextKeyframe((this + 736), &v100, &v108, &v114))
  {
    v28 = OZChannel::getKeyframe((this + 736), &v108);
  }

  else
  {
    v28 = 0;
    v27 = 1;
  }

  v91 = v28;
  v92 = v26;
  if (v25)
  {
    v29 = v26 != 0;
    if (v26)
    {
      if (v28)
      {
LABEL_38:
        LODWORD(v28) = 1;
        goto LABEL_48;
      }
    }

    else
    {
      v32 = OZChannel::getCurveValue((this + 288), &v110, 1);
      v29 = 0;
      v118 = v32;
      if (v28)
      {
        goto LABEL_38;
      }
    }

    v33 = v29;
    v31 = OZChannel::getCurveValue((this + 736), &v110, 1);
    v29 = v33;
    goto LABEL_44;
  }

  if (!v26)
  {
    if (v28)
    {
      LODWORD(v28) = 1;
      v122 = OZChannel::getCurveValue((this + 136), &v108, 1);
      v34 = OZChannel::getCurveValue((this + 288), &v108, 1);
      v29 = 0;
      v118 = v34;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_48;
  }

  v30 = v28;
  LODWORD(v28) = 1;
  v122 = OZChannel::getCurveValue((this + 136), &v109, 1);
  v29 = 1;
  if (!v30)
  {
    v31 = OZChannel::getCurveValue((this + 736), &v109, 1);
    v29 = 1;
LABEL_44:
    LODWORD(v28) = 0;
    v114 = v31;
  }

LABEL_48:
  v89 = v29;
  v35 = v28 | v29;
  if (v25)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  if (v16)
  {
    v37 = 1;
  }

  else
  {
    v37 = v21 | v20;
  }

  result = OZChannelBase::testFlag(this, 0x200000);
  v38 = Keyframe;
  if ((result & 1) == 0)
  {
    v88 = v37;
    if ((v93 | v36 | v37 ^ 1))
    {
      goto LABEL_103;
    }

    v39 = a5 - v115;
    if (v16)
    {
      v40 = (this + 136);
      v41 = v16;
    }

    else if (v20)
    {
      v40 = (this + 288);
      v41 = v17;
    }

    else
    {
      v40 = (this + 736);
      v41 = v19;
    }

    v42 = (a3 - v123) / 6.0;
    v43 = (a4 - CurveValue) / 6.0;
    if ((OZChannel::getKeyframeFlags(v40, v41) & 0x80) != 0)
    {
LABEL_93:
      if (v38)
      {
        v56 = (this + 136);
        v57 = v38;
      }

      else
      {
        v57 = v96;
        if (v96)
        {
          v56 = (this + 288);
        }

        else
        {
          v56 = (this + 736);
          v57 = v95;
        }
      }

      result = OZChannel::getKeyframeFlags(v56, v57);
      if ((result & 0x80) == 0 || v97)
      {
        OZChannel::getKeyframeInputTangents((this + 136), v38, &v101, 0, 1);
        OZChannel::setKeyframeInputTangents((this + 136), v38, v101, -v42, 1);
        OZChannel::getKeyframeInputTangents((this + 288), v96, &v101, 0, 1);
        OZChannel::setKeyframeInputTangents((this + 288), v96, v101, -v43, 1);
        OZChannel::getKeyframeInputTangents((this + 736), v95, &v101, 0, 1);
        OZChannel::setKeyframeInputTangents((this + 736), v95, v101, -(v39 / 6.0), 1);
        if (v97)
        {
          OZChannel::getKeyframeOutputTangents((this + 136), v38, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 136), v38, v101, 0.0, 1);
          OZChannel::getKeyframeOutputTangents((this + 288), v96, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 288), v96, v101, 0.0, 1);
          OZChannel::getKeyframeOutputTangents((this + 736), v95, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 736), v95, v101, 0.0, 1);
        }

        OZChannel::getKeyframeFlags((this + 136), v38);
        OZChannel::setKeyframeFlags((this + 136), v38);
        OZChannel::getKeyframeFlags((this + 288), v96);
        OZChannel::setKeyframeFlags((this + 288), v96);
        OZChannel::getKeyframeFlags((this + 736), v95);
        result = OZChannel::setKeyframeFlags((this + 736), v95);
      }

LABEL_103:
      if ((v88 | v27 | v36 ^ 1))
      {
LABEL_152:
        if ((v88 & v36) == 1)
        {
          if (v97)
          {
            v81 = (v122 - v123) / 6.0;
            v82 = (v118 - CurveValue) / 6.0;
            v83 = (v114 - v115) / 6.0;
            OZChannel::getKeyframeInputTangents((this + 136), v38, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 136), v38, v101, -(v81 * 0.5), 1);
            OZChannel::getKeyframeInputTangents((this + 288), v96, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 288), v96, v101, -(v82 * 0.5), 1);
            OZChannel::getKeyframeInputTangents((this + 736), v95, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 736), v95, v101, -(v83 * 0.5), 1);
            OZChannel::getKeyframeOutputTangents((this + 136), v38, &v101, 0, 1);
            OZChannel::setKeyframeOutputTangents((this + 136), v38, v101, v81 * 0.5, 1);
            OZChannel::getKeyframeOutputTangents((this + 288), v96, &v101, 0, 1);
            OZChannel::setKeyframeOutputTangents((this + 288), v96, v101, v82 * 0.5, 1);
            OZChannel::getKeyframeOutputTangents((this + 736), v95, &v101, 0, 1);
            return OZChannel::setKeyframeOutputTangents((this + 736), v95, v101, v83 * 0.5, 1);
          }
        }

        return result;
      }

      v58 = v114 - a5;
      if (v25)
      {
        v59 = v36;
        v60 = (this + 136);
        v61 = v25;
      }

      else
      {
        v59 = v36;
        if (v89)
        {
          v60 = (this + 288);
          v61 = v92;
        }

        else
        {
          v60 = (this + 736);
          v61 = v91;
        }
      }

      v62 = (v122 - a3) / 6.0;
      v63 = (v118 - a4) / 6.0;
      v64 = v58 / 6.0;
      if ((OZChannel::getKeyframeFlags(v60, v61) & 0x80) != 0)
      {
LABEL_142:
        if (v38)
        {
          v79 = (this + 136);
          v80 = v38;
        }

        else if (v96)
        {
          v79 = (this + 288);
          v80 = v96;
        }

        else
        {
          v79 = (this + 736);
          v80 = v95;
        }

        result = OZChannel::getKeyframeFlags(v79, v80);
        v36 = v59;
        if ((result & 0x80) == 0 || v97)
        {
          OZChannel::getKeyframeOutputTangents((this + 136), v38, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 136), v38, v101, v62, 1);
          OZChannel::getKeyframeOutputTangents((this + 288), v96, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 288), v96, v101, v63, 1);
          OZChannel::getKeyframeOutputTangents((this + 736), v95, &v101, 0, 1);
          OZChannel::setKeyframeOutputTangents((this + 736), v95, v101, v64, 1);
          if (v97)
          {
            OZChannel::getKeyframeInputTangents((this + 136), v38, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 136), v38, v101, 0.0, 1);
            OZChannel::getKeyframeInputTangents((this + 288), v96, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 288), v96, v101, 0.0, 1);
            OZChannel::getKeyframeInputTangents((this + 736), v95, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 736), v95, v101, 0.0, 1);
          }

          OZChannel::getKeyframeFlags((this + 136), v38);
          OZChannel::setKeyframeFlags((this + 136), v38);
          OZChannel::getKeyframeFlags((this + 288), v96);
          OZChannel::setKeyframeFlags((this + 288), v96);
          OZChannel::getKeyframeFlags((this + 736), v95);
          result = OZChannel::setKeyframeFlags((this + 736), v95);
        }

        goto LABEL_152;
      }

      if (OZChannel::getNextKeyframe((this + 136), &v110, &v104, &v124))
      {
        v65 = OZChannel::getKeyframe((this + 136), &v104) != 0;
      }

      else
      {
        v65 = 0;
      }

      if (OZChannel::getNextKeyframe((this + 288), &v109, &v103, &v120))
      {
        v66 = OZChannel::getKeyframe((this + 288), &v103) != 0;
      }

      else
      {
        v66 = 0;
      }

      if (OZChannel::getNextKeyframe((this + 736), &v108, &v102, &v116))
      {
        v67 = OZChannel::getKeyframe((this + 736), &v102) == 0;
        if (!v65)
        {
LABEL_118:
          if (v66)
          {
            v124 = OZChannel::getCurveValue((this + 136), &v103, 1);
            if (!v67 || !v89)
            {
              v68 = !v67;
              v66 |= v68;
              goto LABEL_133;
            }

            goto LABEL_128;
          }

          if (v67)
          {
            if (v89)
            {
LABEL_128:
              v69 = (this + 736);
              v70 = &v103;
              goto LABEL_129;
            }

            v68 = 0;
          }

          else
          {
            v68 = 1;
            v124 = OZChannel::getCurveValue((this + 136), &v102, 1);
            v66 = 0;
            v120 = OZChannel::getCurveValue((this + 288), &v102, 1);
          }

LABEL_133:
          v71 = vabdd_f64(v124, v122) < 0.0000001 && vabdd_f64(v120, v118) < 0.0000001 && vabdd_f64(v116, v114) < 0.0000001;
          if (((v65 | v68 | v66) & 1) == 0 || v71)
          {
            OZChannel::getKeyframeInputTangents((this + 136), v25, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 136), v25, v101, -v62, 1);
            v76 = v92;
            OZChannel::getKeyframeInputTangents((this + 288), v92, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 288), v92, v101, -v63, 1);
            v77 = v91;
            OZChannel::getKeyframeInputTangents((this + 736), v91, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 736), v91, v101, -v64, 1);
          }

          else
          {
            v72 = (a3 - v124) / 6.0;
            v90 = (a4 - v120) / 6.0 * 0.5;
            v73 = a5 - v116;
            v74 = v63;
            v75 = v73 / 6.0;
            v94 = v73 / 6.0 * 0.5;
            OZChannel::getKeyframeInputTangents((this + 136), v25, &v101, 0, 1);
            OZChannel::setKeyframeInputTangents((this + 136), v25, v101, -(v72 * 0.5), 1);
            v76 = v92;
            OZChannel::getKeyframeInputTangents((this + 288), v92, &v101, 0, 1);
            v64 = v58 / 6.0;
            OZChannel::setKeyframeInputTangents((this + 288), v92, v101, -v90, 1);
            v77 = v91;
            OZChannel::getKeyframeInputTangents((this + 736), v91, &v101, 0, 1);
            v78 = -(v75 * 0.5);
            v63 = v74;
            OZChannel::setKeyframeInputTangents((this + 736), v91, v101, v78, 1);
            OZChannel::getKeyframeOutputTangents((this + 136), v25, &v101, 0, 1);
            OZChannel::setKeyframeOutputTangents((this + 136), v25, v101, v72 * 0.5, 1);
            OZChannel::getKeyframeOutputTangents((this + 288), v92, &v101, 0, 1);
            OZChannel::setKeyframeOutputTangents((this + 288), v92, v101, v90, 1);
            OZChannel::getKeyframeOutputTangents((this + 736), v91, &v101, 0, 1);
            OZChannel::setKeyframeOutputTangents((this + 736), v91, v101, v94, 1);
          }

          v38 = Keyframe;
          OZChannel::getKeyframeFlags((this + 136), v25);
          OZChannel::setKeyframeFlags((this + 136), v25);
          OZChannel::getKeyframeFlags((this + 288), v76);
          OZChannel::setKeyframeFlags((this + 288), v76);
          OZChannel::getKeyframeFlags((this + 736), v77);
          OZChannel::setKeyframeFlags((this + 736), v77);
          goto LABEL_142;
        }
      }

      else
      {
        v67 = 1;
        if (!v65)
        {
          goto LABEL_118;
        }
      }

      if ((v66 & 1) == 0)
      {
        v120 = OZChannel::getCurveValue((this + 288), &v104, 1);
      }

      if (v67)
      {
        v69 = (this + 736);
        v70 = &v104;
LABEL_129:
        v68 = 0;
        v116 = OZChannel::getCurveValue(v69, v70, 1);
        goto LABEL_133;
      }

      v68 = 1;
      goto LABEL_133;
    }

    if (OZChannel::getPreviousKeyframe((this + 136), &v113, &v107, &v125))
    {
      v44 = OZChannel::getKeyframe((this + 136), &v107) != 0;
    }

    else
    {
      v44 = 0;
    }

    if (OZChannel::getPreviousKeyframe((this + 288), &v112, &v106, &v121))
    {
      v45 = OZChannel::getKeyframe((this + 288), &v106);
    }

    else
    {
      v45 = 0;
    }

    if (OZChannel::getPreviousKeyframe((this + 736), &v111, &v105, &v117))
    {
      v46 = OZChannel::getKeyframe((this + 736), &v111) == 0;
    }

    else
    {
      v46 = 1;
    }

    v87 = v36;
    if (v44)
    {
      v47 = v45 != 0;
      if (!v45)
      {
        v125 = OZChannel::getCurveValue((this + 288), &v107, 1);
      }

      if (v46)
      {
        v48 = (this + 736);
        v49 = &v107;
LABEL_79:
        v50 = 0;
        v117 = OZChannel::getCurveValue(v48, v49, 1);
        goto LABEL_84;
      }

      v50 = 1;
    }

    else
    {
      if (!v45)
      {
        if (v46)
        {
          v50 = 0;
          v47 = 0;
        }

        else
        {
          v50 = 1;
          v125 = OZChannel::getCurveValue((this + 136), &v105, 1);
          v47 = 0;
          v121 = OZChannel::getCurveValue((this + 288), &v105, 1);
        }

        goto LABEL_84;
      }

      v50 = 1;
      v125 = OZChannel::getCurveValue((this + 136), &v106, 1);
      v47 = 1;
      if (v46)
      {
        v48 = (this + 736);
        v49 = &v106;
        goto LABEL_79;
      }
    }

LABEL_84:
    v51 = vabdd_f64(v125, v123) < 0.0000001 && vabdd_f64(v121, CurveValue) < 0.0000001 && vabdd_f64(v117, v115) < 0.0000001;
    if ((v44 | v50 | v47) != 1 || v51)
    {
      OZChannel::getKeyframeOutputTangents((this + 136), v16, &v101, 0, 1);
      OZChannel::setKeyframeOutputTangents((this + 136), v16, v101, v42, 1);
      OZChannel::getKeyframeOutputTangents((this + 288), v17, &v101, 0, 1);
      OZChannel::setKeyframeOutputTangents((this + 288), v17, v101, v43, 1);
      OZChannel::getKeyframeOutputTangents((this + 736), v19, &v101, 0, 1);
      v52 = v101;
      v53 = (this + 736);
      v54 = v19;
      v55 = v39 / 6.0;
    }

    else
    {
      v84 = (a3 - v125) / 6.0 * 0.5;
      v85 = (a4 - v121) / 6.0 * 0.5;
      v86 = (a5 - v117) / 6.0 * 0.5;
      OZChannel::getKeyframeInputTangents((this + 136), v16, &v101, 0, 1);
      OZChannel::setKeyframeInputTangents((this + 136), v16, v101, -v84, 1);
      OZChannel::getKeyframeInputTangents((this + 288), v17, &v101, 0, 1);
      OZChannel::setKeyframeInputTangents((this + 288), v17, v101, -v85, 1);
      OZChannel::getKeyframeInputTangents((this + 736), v19, &v101, 0, 1);
      OZChannel::setKeyframeInputTangents((this + 736), v19, v101, -v86, 1);
      OZChannel::getKeyframeOutputTangents((this + 136), v16, &v101, 0, 1);
      OZChannel::setKeyframeOutputTangents((this + 136), v16, v101, v84, 1);
      OZChannel::getKeyframeOutputTangents((this + 288), v17, &v101, 0, 1);
      OZChannel::setKeyframeOutputTangents((this + 288), v17, v101, v85, 1);
      OZChannel::getKeyframeOutputTangents((this + 736), v19, &v101, 0, 1);
      v52 = v101;
      v53 = (this + 736);
      v54 = v19;
      v55 = v86;
    }

    OZChannel::setKeyframeOutputTangents(v53, v54, v52, v55, 1);
    v38 = Keyframe;
    v36 = v87;
    OZChannel::getKeyframeFlags((this + 136), v16);
    OZChannel::setKeyframeFlags((this + 136), v16);
    OZChannel::getKeyframeFlags((this + 288), v17);
    OZChannel::setKeyframeFlags((this + 288), v17);
    OZChannel::getKeyframeFlags((this + 736), v19);
    OZChannel::setKeyframeFlags((this + 736), v19);
    goto LABEL_93;
  }

  return result;
}

void OZChannelPosition3D::insertBezierPoint(OZChannelPosition3D *this, const CMTime *a2, double a3, double a4, double a5)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v54 = 0.0;
  v55[0] = 0.0;
  v52 = 0.0;
  CurveValue = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v49 = **&MEMORY[0x277CC08F0];
  v48 = **&MEMORY[0x277CC08F0];
  v47 = **&MEMORY[0x277CC08F0];
  v46 = **&MEMORY[0x277CC08F0];
  v45 = **&MEMORY[0x277CC08F0];
  v44 = **&MEMORY[0x277CC08F0];
  v43 = 0.0;
  isParametricCurveClosed = OZChannel::isParametricCurveClosed((this + 136));
  OZChannel::getPreviousKeyframe((this + 136), a2, &v49, v55);
  Keyframe = OZChannel::getKeyframe((this + 136), &v49);
  OZChannel::getPreviousKeyframe((this + 288), a2, &v48, &CurveValue);
  v12 = OZChannel::getKeyframe((this + 288), &v48);
  OZChannel::getPreviousKeyframe((this + 736), a2, &v47, &v51);
  v13 = OZChannel::getKeyframe((this + 736), &v47);
  v14 = v13;
  if (Keyframe)
  {
    v15 = v12 != 0;
    if (v12)
    {
      if (v13)
      {
LABEL_4:
        v16 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      CurveValue = OZChannel::getCurveValue((this + 288), &v49, 1);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v17 = (this + 736);
    v18 = &v49;
LABEL_10:
    v16 = 0;
    v51 = OZChannel::getCurveValue(v17, v18, 1);
    goto LABEL_14;
  }

  if (v12)
  {
    v16 = 1;
    v55[0] = OZChannel::getCurveValue((this + 136), &v48, 1);
    v15 = 1;
    if (v14)
    {
      goto LABEL_14;
    }

    v17 = (this + 736);
    v18 = &v48;
    goto LABEL_10;
  }

  if (v13)
  {
    v16 = 1;
    v55[0] = OZChannel::getCurveValue((this + 136), &v47, 1);
    v15 = 0;
    CurveValue = OZChannel::getCurveValue((this + 288), &v47, 1);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

LABEL_14:
  v39 = v12;
  if (OZChannel::getNextKeyframe((this + 136), a2, &v46, &v54))
  {
    v19 = OZChannel::getKeyframe((this + 136), &v46);
  }

  else
  {
    if (!isParametricCurveClosed)
    {
      v19 = 0;
      v42 = 0;
      if (!OZChannel::getNextKeyframe((this + 288), a2, &v45, &v52))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (OZChannel::getFirstKeyframe((this + 136), &v46, &v54))
    {
      v19 = OZChannel::getKeyframe((this + 136), &v46);
      CMTimeMake(&v56, 1, 1);
      time = v49;
      v59 = v56;
      PC_CMTimeSaferAdd(&time, &v59, &v57);
      v46 = v57;
    }

    else
    {
      v19 = 0;
    }
  }

  if ((OZChannel::getNextKeyframe((this + 288), a2, &v45, &v52) & 1) == 0)
  {
    if (isParametricCurveClosed && OZChannel::getFirstKeyframe((this + 288), &v45, &v52))
    {
      v42 = OZChannel::getKeyframe((this + 288), &v45);
      CMTimeMake(&v56, 1, 1);
      time = v48;
      v59 = v56;
      PC_CMTimeSaferAdd(&time, &v59, &v57);
      v45 = v57;
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_26;
  }

LABEL_25:
  v42 = OZChannel::getKeyframe((this + 288), &v45);
LABEL_26:
  v41 = v15;
  if (OZChannel::getNextKeyframe((this + 736), a2, &v44, &v50))
  {
    v20 = OZChannel::getKeyframe((this + 736), &v44);
  }

  else if (isParametricCurveClosed && OZChannel::getFirstKeyframe((this + 736), &v44, &v50))
  {
    v20 = OZChannel::getKeyframe((this + 736), &v44);
    CMTimeMake(&v56, 1, 1);
    time = v47;
    v59 = v56;
    PC_CMTimeSaferAdd(&time, &v59, &v57);
    v44 = v57;
  }

  else
  {
    v20 = 0;
  }

  v40 = v14;
  v21 = v19;
  v22 = Keyframe;
  if (v19)
  {
    v23 = v42 != 0;
    if (!v42)
    {
      v52 = OZChannel::getCurveValue((this + 288), &v46, 1);
    }

    v24 = v20;
    if (v20)
    {
      LODWORD(v20) = 1;
      goto LABEL_46;
    }

    v26 = OZChannel::getCurveValue((this + 736), &v46, 1);
LABEL_41:
    v50 = v26;
    goto LABEL_46;
  }

  if (v42)
  {
    v25 = v20;
    LODWORD(v20) = 1;
    v54 = OZChannel::getCurveValue((this + 136), &v45, 1);
    v23 = 1;
    v24 = v25;
    if (v25)
    {
      goto LABEL_46;
    }

    v26 = OZChannel::getCurveValue((this + 736), &v45, 1);
    LODWORD(v20) = 0;
    goto LABEL_41;
  }

  v24 = v20;
  if (v20)
  {
    LODWORD(v20) = 1;
    v54 = OZChannel::getCurveValue((this + 136), &v44, 1);
    v23 = 0;
    v52 = OZChannel::getCurveValue((this + 288), &v44, 1);
  }

  else
  {
    v23 = 0;
  }

LABEL_46:
  v27 = v23 | v20;
  if (v21)
  {
    v27 = 1;
  }

  if (v22 || ((v16 | v41) & 1) != 0)
  {
    if (v27)
    {
      time = *a2;
      CMTimeGetSeconds(&time);
      OZChannel::getKeyframe((this + 136), v22, 0, &time.value);
      OZChannel::getKeyframeOutputTangents((this + 136), v22, 0, &time.timescale, 1);
      *&time.timescale = *&time.timescale + *&time.value;
      OZChannel::getKeyframe((this + 288), v39, 0, &v59.value);
      OZChannel::getKeyframeOutputTangents((this + 288), v39, 0, &v59.timescale, 1);
      *&v59.timescale = *&v59.timescale + *&v59.value;
      OZChannel::getKeyframe((this + 736), v40, 0, &v57.value);
      OZChannel::getKeyframeOutputTangents((this + 736), v40, 0, &v57.timescale, 1);
      *&v57.timescale = *&v57.timescale + *&v57.value;
      OZChannel::getKeyframe((this + 136), v21, 0, v62);
      OZChannel::getKeyframeInputTangents((this + 136), v21, 0, &time.epoch, 1);
      *&time.epoch = *&time.epoch + v62[0];
      OZChannel::getKeyframe((this + 288), v42, 0, &v60);
      OZChannel::getKeyframeInputTangents((this + 288), v42, 0, &v59.epoch, 1);
      *&v59.epoch = *&v59.epoch + v60;
      OZChannel::getKeyframe((this + 736), v24, 0, &v58);
      OZChannel::getKeyframeInputTangents((this + 736), v24, 0, &v57.epoch, 1);
      *&v57.epoch = *&v57.epoch + v58;
      operator new[]();
    }

    v36 = (a3 - v55[0]) / 3.0;
    v37 = (a4 - CurveValue) / 3.0;
    v38 = (a5 - v51) / 3.0;
    OZChannel::setKeyframe((this + 136), a2, a3, 1);
    v28 = OZChannel::getKeyframe((this + 136), a2);
    OZChannel::setKeyframe((this + 288), a2, a4, 1);
    v29 = OZChannel::getKeyframe((this + 288), a2);
    OZChannel::setKeyframe((this + 736), a2, a5, 1);
    v30 = OZChannel::getKeyframe((this + 736), a2);
    OZChannel::getKeyframeOutputTangents((this + 136), v28, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 136), v28, v43, v36, 1);
    OZChannel::getKeyframeInputTangents((this + 136), v28, &v43, 0, 1);
    OZChannel::setKeyframeInputTangents((this + 136), v28, v43, -v36, 1);
    OZChannel::getKeyframeOutputTangents((this + 288), v29, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 288), v29, v43, v37, 1);
    OZChannel::getKeyframeInputTangents((this + 288), v29, &v43, 0, 1);
    OZChannel::setKeyframeInputTangents((this + 288), v29, v43, -v37, 1);
    OZChannel::getKeyframeOutputTangents((this + 736), v30, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 736), v30, v43, v38, 1);
    OZChannel::getKeyframeInputTangents((this + 736), v30, &v43, 0, 1);
    v34 = v43;
    v35 = -v38;
  }

  else
  {
    if (!v27)
    {
      return;
    }

    OZChannel::setKeyframe((this + 136), a2, a3, 1);
    v28 = OZChannel::getKeyframe((this + 136), a2);
    OZChannel::setKeyframe((this + 288), a2, a4, 1);
    v29 = OZChannel::getKeyframe((this + 288), a2);
    OZChannel::setKeyframe((this + 736), a2, a5, 1);
    v30 = OZChannel::getKeyframe((this + 736), a2);
    v31 = (v54 - a3) / 3.0;
    v32 = (v52 - a4) / 3.0;
    v33 = (v50 - a5) / 3.0;
    OZChannel::getKeyframeOutputTangents((this + 136), v28, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 136), v28, v43, v31, 1);
    OZChannel::getKeyframeInputTangents((this + 136), v28, &v43, 0, 1);
    OZChannel::setKeyframeInputTangents((this + 136), v28, v43, -v31, 1);
    OZChannel::getKeyframeOutputTangents((this + 288), v29, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 288), v29, v43, v32, 1);
    OZChannel::getKeyframeInputTangents((this + 288), v29, &v43, 0, 1);
    OZChannel::setKeyframeInputTangents((this + 288), v29, v43, -v32, 1);
    OZChannel::getKeyframeOutputTangents((this + 736), v30, &v43, 0, 1);
    OZChannel::setKeyframeOutputTangents((this + 736), v30, v43, v33, 1);
    OZChannel::getKeyframeInputTangents((this + 736), v30, &v43, 0, 1);
    v34 = v43;
    v35 = -v33;
  }

  OZChannel::setKeyframeInputTangents((this + 736), v30, v34, v35, 1);
  OZChannel::getKeyframeFlags((this + 136), v28);
  OZChannel::setKeyframeFlags((this + 136), v28);
  OZChannel::getKeyframeFlags((this + 288), v29);
  OZChannel::setKeyframeFlags((this + 288), v29);
  OZChannel::getKeyframeFlags((this + 736), v30);
  OZChannel::setKeyframeFlags((this + 736), v30);
}

const void *OZChannelPosition3D::willBeModified(os_unfair_lock_s *this, uint64_t a2)
{
  PCSpinLock::lock(this + 175);
  *&this[178]._os_unfair_lock_opaque = *&this[176]._os_unfair_lock_opaque;
  PCSpinLock::unlock(this + 175);

  return OZChannelPosition::willBeModified(this, a2);
}

void OZChannelPosition3D::getNormals(OZChannelPosition3D *this, const CMTime *a2, double *a3, double *a4, double *a5)
{
  if (a3 || a4 || a5)
  {
    CMTimeMake(&v26, 1, 50);
    v29 = *a2;
    v28 = v26;
    PC_CMTimeSaferSubtract(&v29, &v28, &v27);
    OZChannel::getValueAsDouble((this + 136), &v27, 0.0);
    v11 = v10;
    OZChannel::getValueAsDouble((this + 288), &v27, 0.0);
    v13 = v12;
    OZChannel::getValueAsDouble((this + 736), &v27, 0.0);
    v15 = v14;
    CMTimeMake(&v26, 1, 50);
    v29 = *a2;
    v28 = v26;
    PC_CMTimeSaferAdd(&v29, &v28, &v27);
    OZChannel::getValueAsDouble((this + 136), &v27, 0.0);
    v17 = v16;
    OZChannel::getValueAsDouble((this + 288), &v27, 0.0);
    v19 = v18;
    OZChannel::getValueAsDouble((this + 736), &v27, 0.0);
    v20 = v17 - v11;
    v21 = v19 - v13;
    v23 = v22 - v15;
    v24 = sqrt(v20 * v20 + v21 * v21 + v23 * v23);
    if (fabs(v24) >= 0.0000001)
    {
      v20 = v20 / v24;
      v21 = v21 / v24;
      v23 = v23 / v24;
    }

    v25 = v21 * 0.0;
    if (a3)
    {
      *a3 = v25 - v23;
    }

    if (a4)
    {
      *a4 = v23 * 0.0 - v20 * 0.0;
    }

    if (a5)
    {
      *a5 = v20 - v25;
    }
  }
}

uint64_t OZChannelPosition3D::getTangent(OZChannelPosition3D *a1, const CMTime *a2, double *a3, double a4)
{
  v18 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  OZChannelPosition3D::getPositionOnPath(a1, a2, a4 + -1.0, &v18, &v17, &v16, 0, 0, 0, 0);
  OZChannelPosition3D::getPositionOnPath(a1, v7, a4 + 1.0, &v15, &v14, &v13, 0, 0, 0, 0);
  v8 = v15 - v18;
  v9 = v14 - v17;
  v10 = v13 - v16;
  v11 = sqrt(v8 * v8 + v9 * v9 + v10 * v10);
  if (fabs(v11) >= 0.0000001)
  {
    v8 = v8 / v11;
    v9 = v9 / v11;
    v10 = v10 / v11;
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  return 1;
}

uint64_t OZChannelPosition3D::getPositionOnPath(OZChannelPosition3D *this, const CMTime *a2, double a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  *v106 = 0;
  v17 = (this + 136);
  v18 = (*(*(this + 17) + 832))(this + 136, a2);
  v19 = v17 + 19;
  if (v18 != (*(v17[19] + 832))(v17 + 19))
  {
    return 0;
  }

  v20 = (*(*(this + 17) + 832))(v17);
  v21 = this + 736;
  if (v20 != (*(*(this + 92) + 832))(this + 736) || !(*(*v17 + 832))(v17) || !(*(*v19 + 832))(v17 + 19) || !(*(*v21 + 832))(this + 736))
  {
    return 0;
  }

  v22 = (*(*v17 + 248))(v17);
  v23 = (*(*v19 + 248))(v17 + 19);
  v24 = (*(*v21 + 248))(this + 736);
  v25 = (*(v22->var0 + 104))(v22);
  v88 = v22;
  OZChannel::getKeyframes(v22, 0, v105);
  OZChannel::getKeyframes(v23, 0, v104);
  OZChannel::getKeyframes(v24, 0, __p);
  v26 = a9;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  PCSpinLock::lock(this + 175);
  OZChannelPosition3D::getCachedVectors(this, &v99, &v102, &v101, &v100, &v98, v106);
  PCSpinLock::unlock(this + 175);
  isParametricCurveClosed = OZChannel::isParametricCurveClosed(v88);
  Interpolation = OZChannel::getInterpolation(v88);
  if (a3 >= 0.0)
  {
    v34 = v106[0];
    v35 = (v98 + 8 * v106[0]);
    v36 = *(v35 - 1);
    if (v36 >= a3 && vabdd_f64(a3, v36) >= 0.0000001)
    {
      v32 = 0;
    }

    else
    {
      v96 = 0.0;
      v97 = 0.0;
      v94 = 0.0;
      v95 = 0.0;
      v92 = 0.0;
      v93 = 0.0;
      v107 = **&MEMORY[0x277CC08F0];
      if (isParametricCurveClosed)
      {
        v37 = *(v35 - 1);
        do
        {
          do
          {
            v38 = a3;
            a3 = a3 - v37;
          }

          while (v38 > v37);
        }

        while (vabdd_f64(v38, v37) < 0.0000001);
        a3 = v38;
      }

      else
      {
        if (Interpolation == 4)
        {
          v46 = v25 - 1;
          OZChannel::getKeyframeInputTangents(v88, *(v105[0] + v46), 0, &v97, 1);
          OZChannel::getKeyframeInputTangents(v23, *(v104[0] + v46), 0, &v96, 1);
          OZChannel::getKeyframeInputTangents(v24, *(__p[0] + v46), 0, &v95, 1);
          OZChannel::getKeyframe(v88, *(v105[0] + v46), &v107, &v94);
          OZChannel::getKeyframe(v23, *(v104[0] + v46), 0, &v93);
          OZChannel::getKeyframe(v24, *(__p[0] + v46), 0, &v92);
          CMTimeMake(&v90, 1, 50);
          v109[0] = v107;
          v108 = v90;
          PC_CMTimeSaferSubtract(v109, &v108, &v91);
          CurveValue = OZChannel::getCurveValue(v88, &v91, 1);
          CMTimeMake(&v90, 1, 50);
          v26 = a9;
          v109[0] = v107;
          v108 = v90;
          PC_CMTimeSaferSubtract(v109, &v108, &v91);
          v48 = OZChannel::getCurveValue(v23, &v91, 1);
          CMTimeMake(&v90, 1, 50);
          v109[0] = v107;
          v108 = v90;
          PC_CMTimeSaferSubtract(v109, &v108, &v91);
          v49 = OZChannel::getCurveValue(v24, &v91, 1);
          v50 = -v97;
          v51 = -v96;
          v96 = -v96;
          v97 = -v97;
          v52 = v95;
        }

        else
        {
          v61 = v25 - 2;
          OZChannel::getKeyframe(v88, *(v105[0] + v61), 0, &v97);
          OZChannel::getKeyframe(v23, *(v104[0] + v61), 0, &v96);
          OZChannel::getKeyframe(v24, *(__p[0] + v61), 0, &v95);
          v62 = v25 - 1;
          OZChannel::getKeyframe(v88, *(v105[0] + v62), &v107, &v94);
          OZChannel::getKeyframe(v23, *(v104[0] + v62), 0, &v93);
          OZChannel::getKeyframe(v24, *(__p[0] + v62), 0, &v92);
          v50 = -(v97 - v94);
          v51 = -(v96 - v93);
          v96 = v51;
          v97 = v50;
          v52 = v95 - v92;
          CurveValue = 0.0;
          v48 = 0.0;
          v49 = 0.0;
          v26 = a9;
        }

        v63 = -v52;
        v95 = -v52;
        v64 = sqrt(v52 * v52 + v50 * v50 + v51 * v51);
        if (v64 <= 10.0)
        {
          v50 = v94 - CurveValue;
          v51 = v93 - v48;
          v96 = v51;
          v97 = v50;
          v63 = v92 - v49;
          v95 = v63;
          v64 = sqrt(v50 * v50 + v51 * v51 + v63 * v63);
        }

        v34 = v106[0];
        v65 = (a3 - *(v98 + v106[0] - 1)) / v64;
        if (a4)
        {
          *a4 = v65 * v50 + v94;
        }

        if (a5)
        {
          *a5 = v65 * v51 + v93;
        }

        if (a6)
        {
          *a6 = v65 * v63 + v92;
        }

        if (a10)
        {
          *a10 = v99[v34 - 1];
        }

        if (a7 && a8 && v26)
        {
          *a7 = v50 / v64;
          *a8 = v51 / v64;
          *v26 = v63 / v64;
          v66 = *a7;
          v67 = *a8 * 0.0;
          v68 = v63 / v64 * 0.0 - *a7 * 0.0;
          *a7 = v67 - v63 / v64;
          *a8 = v68;
          *v26 = v66 - v67;
        }
      }

      v32 = isParametricCurveClosed ^ 1u;
    }
  }

  else
  {
    v96 = 0.0;
    v97 = 0.0;
    v94 = 0.0;
    v95 = 0.0;
    v92 = 0.0;
    v93 = 0.0;
    v107 = **&MEMORY[0x277CC08F0];
    if (isParametricCurveClosed)
    {
      v29 = -a3;
      v30 = *(v98 + v106[0] - 1);
      do
      {
        do
        {
          v31 = v29;
          v29 = v29 - v30;
        }

        while (v31 > v30);
      }

      while (vabdd_f64(v31, v30) < 0.0000001);
      a3 = v30 - v31;
    }

    else
    {
      v39 = *v105[0];
      if (Interpolation == 4)
      {
        OZChannel::getKeyframeOutputTangents(v88, v39, 0, &v97, 1);
        OZChannel::getKeyframeOutputTangents(v23, *v104[0], 0, &v96, 1);
        OZChannel::getKeyframeOutputTangents(v24, *__p[0], 0, &v95, 1);
        OZChannel::getKeyframe(v88, *v105[0], &v107, &v94);
        OZChannel::getKeyframe(v23, *v104[0], 0, &v93);
        OZChannel::getKeyframe(v24, *__p[0], 0, &v92);
        CMTimeMake(&v90, 1, 50);
        v109[0] = v107;
        v108 = v90;
        PC_CMTimeSaferAdd(v109, &v108, &v91);
        v40 = OZChannel::getCurveValue(v88, &v91, 1);
        CMTimeMake(&v90, 1, 50);
        v109[0] = v107;
        v108 = v90;
        PC_CMTimeSaferAdd(v109, &v108, &v91);
        v41 = OZChannel::getCurveValue(v23, &v91, 1);
        CMTimeMake(&v90, 1, 50);
        v109[0] = v107;
        v108 = v90;
        PC_CMTimeSaferAdd(v109, &v108, &v91);
        v42 = OZChannel::getCurveValue(v24, &v91, 1);
        v43 = -v97;
        v44 = -v96;
        v45 = v95;
      }

      else
      {
        OZChannel::getKeyframe(v88, v39, &v107, &v94);
        OZChannel::getKeyframe(v23, *v104[0], 0, &v93);
        OZChannel::getKeyframe(v24, *__p[0], 0, &v92);
        OZChannel::getKeyframe(v88, *(v105[0] + 1), 0, &v97);
        OZChannel::getKeyframe(v23, *(v104[0] + 1), 0, &v96);
        OZChannel::getKeyframe(v24, *(__p[0] + 1), 0, &v95);
        v43 = -(v97 - v94);
        v44 = -(v96 - v93);
        v45 = v95 - v92;
        v40 = 0.0;
        v41 = 0.0;
        v42 = 0.0;
      }

      v53 = sqrt(v45 * v45 + v43 * v43 + v44 * v44);
      if (v53 <= 10.0)
      {
        v43 = v94 - v40;
        v44 = v93 - v41;
        v96 = v44;
        v97 = v43;
        v54 = v92 - v42;
        v95 = v54;
        v53 = sqrt(v43 * v43 + v44 * v44 + v54 * v54);
      }

      else
      {
        v54 = -v45;
      }

      v55 = a3 / v53;
      if (a4)
      {
        *a4 = v94 - v55 * v43;
      }

      if (a5)
      {
        *a5 = v93 - v55 * v44;
      }

      if (a6)
      {
        *a6 = v92 - v55 * v54;
      }

      if (a10)
      {
        *a10 = 0.0;
      }

      if (a7 && a8 && a9)
      {
        *a7 = -v43 / v53;
        *a8 = -v44 / v53;
        v56 = -v54 / v53;
        *a9 = v56;
        v57 = *a7;
        v58 = *a8 * 0.0;
        v59 = v58 - v56;
        v60 = v56 * 0.0 - *a7 * 0.0;
        *a7 = v59;
        *a8 = v60;
        *a9 = v57 - v58;
      }
    }

    v32 = isParametricCurveClosed ^ 1u;
    v34 = v106[0];
  }

  if ((v32 & 1) == 0 && v34 >= 1)
  {
    PCAlgorithm::bisect(v98, v34, &v106[1], a3, v28);
    v69 = (v98 + 8 * v106[1]);
    v70 = *v69;
    if (vabdd_f64(a3, *v69) < 0.0000001)
    {
LABEL_62:
      v71 = v99;
      goto LABEL_63;
    }

    if (a3 >= v70)
    {
      v72 = 0.0;
      v73 = 0.0;
      v74 = 0.0;
      v75 = 0.0;
      if (a3 <= v70)
      {
        goto LABEL_71;
      }

      v82 = v69[1];
      v71 = v99;
      if (vabdd_f64(v82, v70) < 0.0000001)
      {
LABEL_63:
        v72 = v71[v106[1]];
        v73 = v102[v106[1]];
        v74 = v101[v106[1]];
        v75 = v100[v106[1]];
LABEL_71:
        if (a10)
        {
          *a10 = v72;
        }

        if (a4)
        {
          *a4 = v73;
        }

        if (a5)
        {
          *a5 = v74;
        }

        if (a6)
        {
          *a6 = v75;
        }

        memset(&v91, 0, sizeof(v91));
        OZFigTimeForChannelSeconds(&v91, v72, 0x40000);
        v86 = *(this + 6);
        if (v86)
        {
          (*(*v86 + 320))(&v90);
          v108 = v91;
          v107 = v90;
          PC_CMTimeSaferAdd(&v108, &v107, v109);
          v91 = v109[0];
        }

        OZChannelPosition3D::getNormals(this, &v91, a7, a8, v26);
        v32 = 1;
        goto LABEL_82;
      }

      v83 = a3 - v70;
      v84 = v82 - v70;
      v85 = 8 * v106[1] + 8;
      v72 = v99[v106[1]] + v83 * ((*(v99 + v85) - v99[v106[1]]) / v84);
      v73 = v102[v106[1]] + v83 * ((*(v102 + v85) - v102[v106[1]]) / v84);
      v74 = v101[v106[1]] + v83 * ((*(v101 + v85) - v101[v106[1]]) / v84);
      v80 = v100[v106[1]];
      v81 = v83 * ((*(v100 + v85) - v80) / v84);
    }

    else
    {
      v76 = *(v69 - 1);
      if (vabdd_f64(v70, v76) < 0.0000001)
      {
        goto LABEL_62;
      }

      v77 = v70 - v76;
      v78 = a3 - v76;
      v79 = 8 * v106[1] - 8;
      v72 = *(v99 + v79) + (a3 - v76) * ((v99[v106[1]] - *(v99 + v79)) / v77);
      v73 = *(v102 + v79) + v78 * ((v102[v106[1]] - *(v102 + v79)) / v77);
      v74 = *(v101 + v79) + v78 * ((v101[v106[1]] - *(v101 + v79)) / v77);
      v80 = *(v100 + v79);
      v81 = v78 * ((v100[v106[1]] - v80) / v77);
    }

    v75 = v80 + v81;
    goto LABEL_71;
  }

LABEL_82:
  if (v102)
  {
    MEMORY[0x2666E9ED0](v102, 0x1000C8000313F17);
  }

  v102 = 0;
  if (v101)
  {
    MEMORY[0x2666E9ED0](v101, 0x1000C8000313F17);
  }

  v101 = 0;
  if (v100)
  {
    MEMORY[0x2666E9ED0](v100, 0x1000C8000313F17);
  }

  v100 = 0;
  if (v99)
  {
    MEMORY[0x2666E9ED0](v99, 0x1000C8000313F17);
  }

  v99 = 0;
  if (v98)
  {
    MEMORY[0x2666E9ED0](v98, 0x1000C8000313F17);
  }

  v98 = 0;
  (*(v88->var0 + 1))(v88);
  if (v23)
  {
    (*(v23->var0 + 1))(v23);
  }

  if (v24)
  {
    (*(v24->var0 + 1))(v24);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v105[0])
  {
    v105[1] = v105[0];
    operator delete(v105[0]);
  }

  return v32;
}

void sub_25FEF2F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelPosition3D::getOrientations(OZChannelPosition3D *this, const CMTime *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, int a8, double a9, char a10)
{
  v65 = 0uLL;
  v66 = 0.0;
  if ((*(this + 729) & 1) != 0 || OZChannelPosition3D::isInZEqualsZeroPlane(this))
  {
    OZChannelPosition3D::getTangent(this, a2, &v65, a9);
    v17 = *(&v65 + 1);
    v18 = *&v65;
    v19 = -*(&v65 + 1);
    v20 = 0.0;
    v21 = v66;
    v22 = *(&v65 + 1) * 0.0 - *&v65 * v66;
    v23 = -(*(&v65 + 1) * v66) - *&v65 * 0.0;
    v24 = v18 * v18;
    v25 = *(&v65 + 1) * *(&v65 + 1) + *&v65 * *&v65;
    v26 = *&v65;
  }

  else
  {
    KeyframeNormal = OZChannel::getKeyframeNormal((this + 136), a2);
    v28 = OZChannel::getKeyframeNormal((this + 288), a2);
    v29 = OZChannel::getKeyframeNormal((this + 736), a2);
    OZChannelPosition3D::getTangent(this, a2, &v65, a9);
    v17 = *(&v65 + 1);
    v18 = *&v65;
    v21 = v66;
    v30 = v29 * *(&v65 + 1) - v28 * v66;
    v31 = KeyframeNormal * v66 - v29 * *&v65;
    v32 = v28 * *&v65 - KeyframeNormal * *(&v65 + 1);
    v42 = *&v65 * v32 - v66 * v30;
    v43 = v66 * v31 - *(&v65 + 1) * v32;
    v33 = *(&v65 + 1) * v30 - *&v65 * v31;
    v51 = 0uLL;
    v52 = 0.0;
    v44 = 0uLL;
    *&v45 = 0;
    OZChannelPosition3D::getTangent(this, a2, &v51, a9 + -100.0);
    OZChannelPosition3D::getTangent(this, a2, &v44, a9 + 100.0);
    v34 = fabs(fabs(v29 * v21 + v28 * v17 + KeyframeNormal * v18) + -1.0);
    v35 = v34 < 0.01;
    if (v34 >= 0.01)
    {
      v20 = v33;
    }

    else
    {
      v20 = *&v45 - v52;
    }

    if (v35)
    {
      v26 = *(&v44 + 1) - *(&v51 + 1);
    }

    else
    {
      v26 = v42;
    }

    if (v35)
    {
      v19 = *&v44 - *&v51;
    }

    else
    {
      v19 = v43;
    }

    v22 = v17 * v20 - v21 * v26;
    v23 = v21 * v19 - v18 * v20;
    v25 = v18 * v26 - v17 * v19;
    v24 = v26 * v26;
  }

  v36 = sqrt(v20 * v20 + v24 + v19 * v19);
  v35 = fabs(v36) < 0.000000100000001;
  v37 = v19 / v36;
  v38 = v26 / v36;
  v39 = v20 / v36;
  if (!v35)
  {
    v20 = v39;
    v26 = v38;
    v19 = v37;
  }

  v40 = sqrt(v25 * v25 + v23 * v23 + v22 * v22);
  if (fabs(v40) >= 0.000000100000001)
  {
    v22 = v22 / v40;
    v23 = v23 / v40;
    v25 = v25 / v40;
  }

  if (a10)
  {
    v19 = -v19;
    v26 = -v26;
    v20 = -v20;
    v18 = -v18;
    v17 = -v17;
    *&v65 = v18;
    *(&v65 + 1) = v17;
    v21 = -v21;
    v66 = v21;
  }

  v53 = 0;
  v57 = 0;
  *&v51 = v18;
  *(&v51 + 1) = v19;
  v54 = v17;
  v55 = v26;
  v58 = v21;
  v59 = v20;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v52 = v22;
  v56 = v23;
  v60 = v25;
  v64 = xmmword_260342700;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v47 = 4;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  PCMatrix44Tmpl<double>::getTransformation(&v51, &v44);
  if (a3)
  {
    *a3 = v48;
  }

  if (a4)
  {
    *a4 = *(&v48 + 1);
  }

  if (a5)
  {
    *a5 = v49;
  }

  if (a6)
  {
    *a6 = v65;
    *(a6 + 16) = v66;
  }

  return 1;
}

double OZChannelPosition3D::getLength(os_unfair_lock_s *this, const CMTime *a2)
{
  PCSpinLock::lock(this + 175);
  if (this[174]._os_unfair_lock_opaque)
  {
    v3 = *&this[152]._os_unfair_lock_opaque;
  }

  else
  {
    OZChannelPosition3D::getCachedVectors(this, 0, 0, 0, 0, 0, 0);
    v3 = *&this[152]._os_unfair_lock_opaque;
    if (*&this[150]._os_unfair_lock_opaque == v3)
    {
      v4 = 0.0;
      goto LABEL_5;
    }
  }

  v4 = *(v3 - 8);
LABEL_5:
  PCSpinLock::unlock(this + 175);
  return v4;
}

uint64_t OZChannelPosition3D::getCachedVectors(OZChannelPosition3D *this, double **a2, double **a3, double **a4, double **a5, double **a6, int *a7)
{
  v14 = (this + 136);
  v15 = (*(*(this + 17) + 832))(this + 136);
  if (v15 != (*(v14[1].var0 + 104))(v14 + 1))
  {
    return 0;
  }

  v44 = a7;
  v16 = (*(*(this + 17) + 832))(v14);
  if (v16 != (*(*(this + 92) + 832))(this + 736))
  {
    return 0;
  }

  v45 = (this + 696);
  v17 = *(this + 174);
  if (v17)
  {
    if (a2)
    {
      operator new[]();
    }

    if (a3)
    {
      operator new[]();
    }

    if (a4)
    {
      operator new[]();
    }

    if (a5)
    {
      operator new[]();
    }

    if (a6)
    {
      operator new[]();
    }

    v18 = 0;
    do
    {
      v18 += 8;
    }

    while (8 * v17 != v18);
    if (a7)
    {
      *a7 = v17;
    }

    return 1;
  }

  *(this + 76) = *(this + 75);
  *(this + 73) = *(this + 72);
  *(this + 79) = *(this + 78);
  *(this + 82) = *(this + 81);
  *(this + 89) = *(this + 88);
  *(this + 85) = *(this + 84);
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  v21 = (*(*(this + 17) + 248))(v14);
  v22 = (*(*(this + 36) + 248))(v14 + 1);
  v23 = (*(*(this + 92) + 248))(this + 736);
  memset(&v49, 0, sizeof(v49));
  OZChannel::getKeyframeParametricRange(v21, &v49);
  memset(&v48, 0, sizeof(v48));
  OZChannel::getKeyframeMinTime(v21, &v48);
  time = v48;
  v50 = v49;
  PC_CMTimeSaferAdd(&time, &v50, &__p);
  v49 = __p;
  time = __p;
  Seconds = CMTimeGetSeconds(&time);
  time = v48;
  v25 = CMTimeGetSeconds(&time);
  isParametricCurveClosed = OZChannel::isParametricCurveClosed(v21);
  Interpolation = OZChannel::getInterpolation(v14);
  OZChannel::getKeyframes(v21, 1, &time);
  OZChannel::getKeyframes(v22, 1, &v50);
  v42 = v22;
  OZChannel::getKeyframes(v21, 1, &__p);
  v43 = v21;
  v26 = (*(v21->var0 + 104))(v21);
  v27 = v23;
  v28 = (this + 624);
  v29 = (this + 648);
  v30 = (this + 704);
  if (v26 < 2 || *&time.timescale - time.value < 9uLL)
  {
    goto LABEL_37;
  }

  v31 = Seconds - v25;
  if (Interpolation > 9)
  {
    if (Interpolation == 10 || Interpolation == 12)
    {
      *v45 = (v31 / 0.025) + (isParametricCurveClosed ^ 1);
      if (!OZChannel::getSamples(v43) || !OZChannel::getSamples(v42))
      {
        goto LABEL_66;
      }

      goto LABEL_36;
    }

LABEL_37:
    v32 = (this + 600);
    std::vector<double>::reserve(v32, *v45);
    v46 = 0.0;
    std::vector<double>::push_back[abi:ne200100](v32, &v46);
    LODWORD(v33) = *v45;
    if (*v45 >= 2u)
    {
      v41 = v27;
      v34 = 0;
      do
      {
        v35 = *(*v28 + 8 * v34 + 8) - *(*v28 + 8 * v34);
        v36 = *(*v29 + 8 * v34 + 8) - *(*v29 + 8 * v34);
        v46 = *(*v32 + v34) + sqrt(v35 * v35 + v36 * v36 + (*(*v30 + 8 * v34 + 8) - *(*v30 + 8 * v34)) * (*(*v30 + 8 * v34 + 8) - *(*v30 + 8 * v34)));
        std::vector<double>::push_back[abi:ne200100](v32, &v46);
        v33 = *v45;
        v37 = v34 + 2;
        ++v34;
      }

      while (v37 < v33);
      v27 = v41;
    }

    if (a2)
    {
      operator new[]();
    }

    if (a3)
    {
      operator new[]();
    }

    if (a4)
    {
      operator new[]();
    }

    if (a5)
    {
      operator new[]();
    }

    if (a6)
    {
      operator new[]();
    }

    if (v33)
    {
      v38 = 0;
      do
      {
        v38 += 8;
      }

      while (8 * v33 != v38);
    }

    if (v44)
    {
      *v44 = v33;
    }

    (*(*v43 + 8))(v43);
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v19 = 1;
    if (!v27)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (Interpolation == 1)
  {
    *v45 = v31 + 1;
    if (!OZChannel::getSamples(v43) || !OZChannel::getSamples(v42))
    {
      goto LABEL_66;
    }
  }

  else
  {
    if (Interpolation != 4)
    {
      goto LABEL_37;
    }

    *v45 = (v31 / 0.025) + 1;
    if (!OZChannel::getSamples(v43) || !OZChannel::getSamples(v42))
    {
      goto LABEL_66;
    }
  }

LABEL_36:
  if (OZChannel::getSamples(v27))
  {
    goto LABEL_37;
  }

LABEL_66:
  (*(*v43 + 8))(v43);
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v19 = 0;
  if (!v27)
  {
    goto LABEL_60;
  }

LABEL_59:
  (*(*v27 + 8))(v27);
LABEL_60:
  if (__p.value)
  {
    *&__p.timescale = __p.value;
    operator delete(__p.value);
  }

  if (v50.value)
  {
    *&v50.timescale = v50.value;
    operator delete(v50.value);
  }

  if (time.value)
  {
    *&time.timescale = time.value;
    operator delete(time.value);
  }

  return v19;
}

void sub_25FEF3D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  v30 = *(v28 - 128);
  if (v30)
  {
    *(v28 - 120) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

BOOL OZChannelPosition3D::isInZEqualsZeroPlane(OZChannelPosition3D *this)
{
  v1 = (*(*(this + 92) + 248))(this + 736);
  OZChannel::getKeyframes(v1, 0, &__p);
  v2 = __p;
  if (v11 == __p)
  {
    v6 = 1;
    if (!__p)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v8 = 0.0;
    OZChannel::getKeyframe(v1, v2[v3], &v9, &v8);
    v5 = fabs(v8);
    v6 = v5 < 0.0000001;
    if (v5 >= 0.0000001)
    {
      break;
    }

    v3 = v4;
    v2 = __p;
    ++v4;
  }

  while (v3 < (v11 - __p) >> 3);
  if (v1)
  {
    (*(v1->var0 + 1))(v1);
  }

  v2 = __p;
  if (__p)
  {
LABEL_8:
    v11 = v2;
    operator delete(v2);
  }

  return v6;
}

void sub_25FEF3F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelPosition3D::flattenAtTime(OZChannelPosition3D *this, const CMTime *a2)
{
  OZChannel2D::flattenAtTime(this, a2);
  Keyframe = OZChannel::getKeyframe((this + 736), a2);
  OZChannel::setKeyframeOutputTangents((this + 736), Keyframe, 0.0, 0.0, 1);
  OZChannel::setKeyframeInputTangents((this + 736), Keyframe, 0.0, 0.0, 1);

  return OZChannel::setKeyframeTangentsBroken((this + 736), Keyframe);
}

uint64_t OZChannelPosition3D::setLinearAtTime(OZChannelPosition3D *this, const CMTime *a2)
{
  OZChannel2D::setLinearAtTime(this, a2);
  Keyframe = OZChannel::getKeyframe((this + 736), a2);

  return OZChannel::setKeyframeInterpolation((this + 736), Keyframe);
}

void OZChannelPositionPercent::OZChannelPositionPercent(OZChannelPositionPercent *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelPositionPercent_Factory::getInstance(this);
  OZChannel2D::OZChannel2D(this, Instance, a2, a3, a4, a5, 2, 0, 0);
  *this = &unk_287253DA8;
  *(this + 2) = &unk_287254100;
  *(this + 440) = 1;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v19, @"Channel X");
  OZChannelBase::setName((this + 136), &v19, 0);
  PCString::~PCString(&v19);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v19, @"Channel Y");
  OZChannelBase::setName((this + 288), &v19, 0);
  PCString::~PCString(&v19);
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setCoarseDelta((this + 136), 0.01);
  OZChannel::setFineDelta((this + 136), 0.0001);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setCoarseDelta((this + 288), 0.01);
  v15 = OZChannel::setFineDelta((this + 288), 0.0001);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v19, @"Channel Position Suffix");
  OZChannel::setSuffix((this + 136), &v19);
  PCString::~PCString(&v19);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v19, @"Channel Position Suffix");
  OZChannel::setSuffix((this + 288), &v19);
  PCString::~PCString(&v19);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEF4230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelPositionPercent::OZChannelPositionPercent(OZChannelPositionPercent *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel2D::OZChannel2D(this, a2, a3, a4, 2, 0, 0);
  *v5 = &unk_287253DA8;
  *(v5 + 16) = &unk_287254100;
  *(v5 + 440) = 1;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v13, @"Channel X");
  OZChannelBase::setName((this + 136), &v13, 0);
  PCString::~PCString(&v13);
  TXParagraphStyleFolder_Factory::createInstance(v7, v8);
  PCURL::PCURL(&v13, @"Channel Y");
  OZChannelBase::setName((this + 288), &v13, 0);
  PCString::~PCString(&v13);
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setCoarseDelta((this + 136), 0.01);
  OZChannel::setFineDelta((this + 136), 0.0001);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setCoarseDelta((this + 288), 0.01);
  v9 = OZChannel::setFineDelta((this + 288), 0.0001);
  TXParagraphStyleFolder_Factory::createInstance(v9, v10);
  PCURL::PCURL(&v13, @"Channel Position Suffix");
  OZChannel::setSuffix((this + 136), &v13);
  PCString::~PCString(&v13);
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v13, @"Channel Position Suffix");
  OZChannel::setSuffix((this + 288), &v13);
  PCString::~PCString(&v13);
  OZChannelBase::resetFlag(this, 16, 0);
}

void sub_25FEF4444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelPositionPercent::OZChannelPositionPercent(OZChannelPositionPercent *this, const OZChannelPositionPercent *a2, OZChannelFolder *a3)
{
  OZChannel2D::OZChannel2D(this, a2, a3);
  *v3 = &unk_287253DA8;
  *(v3 + 16) = &unk_287254100;
  *(v3 + 440) = 1;
}

void OZChannelPositionPercent::~OZChannelPositionPercent(OZChannelPositionPercent *this)
{
  OZChannel2D::~OZChannel2D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelPositionPercent::~OZChannelPositionPercent(OZChannelPositionPercent *this)
{
  OZChannel2D::~OZChannel2D((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelProgress::createOZChannelProgressInfo(OZChannelProgress *this)
{
  if (atomic_load_explicit(&OZChannelProgress::createOZChannelProgressInfo(void)::_OZChannelProgressInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelProgress::createOZChannelProgressInfo(void)::_OZChannelProgressInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelProgress::createOZChannelProgressInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelProgress::_OZChannelProgressInfo;
}

uint64_t OZChannelProgress::createOZChannelProgressImpl(OZChannelProgress *this)
{
  if (atomic_load_explicit(&OZChannelProgress::createOZChannelProgressImpl(void)::_OZChannelProgressImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelProgress::createOZChannelProgressImpl(void)::_OZChannelProgressImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelProgress::createOZChannelProgressImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelProgress::_OZChannelProgressImpl;
}

void OZChannelProgress::OZChannelProgress(OZChannelProgress *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  *v5 = &unk_287254170;
  *(v5 + 2) = &unk_2872544D0;
  OZChannelProgressInfo = OZChannelProgress::createOZChannelProgressInfo(v5);
  *(this + 16) = OZChannelProgressInfo;
  *(this + 17) = OZChannelProgressInfo;
  OZChannelProgress::createOZChannelProgressImpl(OZChannelProgressInfo);
  v7 = OZChannelProgress::_OZChannelProgressImpl;
  *(this + 14) = OZChannelProgress::_OZChannelProgressImpl;
  *(this + 15) = v7;
  *(this + 7) |= 8uLL;
  *(this + 76) = 0;
}

void OZChannelProgress::OZChannelProgress(OZChannelProgress *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v4 = &unk_287254170;
  *(v4 + 16) = &unk_2872544D0;
  *(v4 + 152) = a2[1].var5;
}

void OZChannelProgress::~OZChannelProgress(OZChannel *this)
{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelProgress::~OZChannelProgress(OZChannelProgress *this)
{
  OZChannel::~OZChannel((this - 16));

  JUMPOUT(0x2666E9F00);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelProgress::createOZChannelProgressInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelProgress::_OZChannelProgressInfo)
  {
    operator new();
  }
}

void OZChannelProgressInfo::OZChannelProgressInfo(OZChannelProgressInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 0.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287254540;
  *(this + 10) = &unk_287254560;
}

void OZChannelProgress::createOZChannelProgressImpl(void)::{lambda(void)#1}::operator()()
{
  if (!OZChannelProgress::_OZChannelProgressImpl)
  {
    operator new();
  }
}

void sub_25FEF50B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FEF5240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZChannelQuad::OZChannelQuad(OZChannelQuad *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelQuad_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_2872545B8;
  *(this + 2) = &unk_287254900;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v21, @"Channel Bottom Left");
  OZChannelPosition::OZChannelPosition((this + 136), &v21, this, 1u, 0, 2u, 0, 0);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v21, @"Channel Bottom Right");
  OZChannelPosition::OZChannelPosition((this + 840), &v21, this, 2u, 0, 2u, 0, 0);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v21, @"Channel Top Right");
  OZChannelPosition::OZChannelPosition((this + 1544), &v21, this, 3u, 0, 2u, 0, 0);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v21, @"Channel Top Left");
  OZChannelPosition::OZChannelPosition((this + 2248), &v21, this, 4u, 0, 2u, 0, 0);
  PCString::~PCString(&v21);
}

void sub_25FEF54D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPosition::~OZChannelPosition((v10 + 1544));
  OZChannelPosition::~OZChannelPosition((v10 + 840));
  OZChannelPosition::~OZChannelPosition((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelQuad::OZChannelQuad(OZChannelQuad *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_2872545B8;
  *(v6 + 2) = &unk_287254900;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v14, @"Channel Bottom Left");
  OZChannelPosition::OZChannelPosition((this + 136), &v14, this, 1u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v14, @"Channel Bottom Right");
  OZChannelPosition::OZChannelPosition((this + 840), &v14, this, 2u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v14, @"Channel Top Right");
  OZChannelPosition::OZChannelPosition((this + 1544), &v14, this, 3u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v14, @"Channel Top Left");
  OZChannelPosition::OZChannelPosition((this + 2248), &v14, this, 4u, 0, 2u, 0, 0);
  PCString::~PCString(&v14);
}

void sub_25FEF56E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPosition::~OZChannelPosition((v10 + 1544));
  OZChannelPosition::~OZChannelPosition((v10 + 840));
  OZChannelPosition::~OZChannelPosition((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelQuad::OZChannelQuad(OZChannelQuad *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_2872545B8;
  v5[2] = &unk_287254900;
  OZChannelPosition::OZChannelPosition((v5 + 17), &a2[1].var3, this);
  OZChannelPosition::OZChannelPosition((this + 840), &a2[7].var7, this);
  OZChannelPosition::OZChannelPosition((this + 1544), &a2[13].var11, this);
  OZChannelPosition::OZChannelPosition((this + 2248), &a2[20].var1, this);
}

void sub_25FEF5818(_Unwind_Exception *a1)
{
  OZChannelPosition::~OZChannelPosition((v1 + 1544));
  OZChannelPosition::~OZChannelPosition((v1 + 840));
  OZChannelPosition::~OZChannelPosition((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZChannelQuad::~OZChannelQuad(OZChannelQuad *this)
{
  OZChannelQuad::~OZChannelQuad((this - 16));
}

{
  OZChannelQuad::~OZChannelQuad((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelPosition::getPosition(OZChannelPosition *this, const CMTime *a2, double *a3, double *a4, double a5)
{
  if (a3)
  {
    OZChannel::getValueAsDouble((this + 136), a2, a5);
    *a3 = v10;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 288), a2, a5);
    *a4 = v11;
  }
}

uint64_t OZHistogramDelegate::notifyReferrers(OZHistogramDelegate *this)
{
  v3 = *(this + 2);
  for (i = *(this + 3); v3 != i; i = *(this + 3))
  {
    v4 = *v3++;
    [v4 removeReference:*(this + 1)];
  }

  v5 = *(*this + 8);

  return v5(this);
}

void OZChannelRotation3D::OZChannelRotation3D(OZChannelRotation3D *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelRotation3D_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_287254970;
  *(this + 2) = &unk_287254CC0;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v28, @"Channel X");
  OZChannelAngle::OZChannelAngle((this + 136), 0.0, &v28, this, 1u, 0, a7, a8);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v28, @"Channel Y");
  OZChannelAngle::OZChannelAngle((this + 288), 0.0, &v28, this, 2u, 0, a7, a8);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v28, @"Channel Z");
  OZChannelAngle::OZChannelAngle((this + 440), 0.0, &v28, this, 3u, 0, a7, a8);
  PCString::~PCString(&v28);
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v28, @"Channel Rotation3D Iterpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v25, v26);
  PCURL::PCURL(&v27, @"Channel Rotation3D Iterpolation Label");
  OZChannelEnumInterpMode::OZChannelEnumInterpMode((this + 592), &v28, &v27, this, 4u, 0);
  PCString::~PCString(&v27);
  PCString::~PCString(&v28);
  *(this + 212) = 0;
  OZChannelRotation3D::initCustomInterpolator(this);
}

void sub_25FEF5C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCSpinLock::~PCSpinLock((v10 + 848));
  OZChannelEnum::~OZChannelEnum((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

OZChannelImpl *OZChannelRotation3D::initCustomInterpolator(OZChannelRotation3D *this)
{
  if (!OZChannelRotation3D::_interpolator)
  {
    operator new();
  }

  OZChannel::setCustomInterpolator((this + 136));
  OZChannel::setCustomInterpolator((this + 288));
  OZChannel::setCustomInterpolator((this + 440));
  OZChannel::setOwnerChannel((this + 136), (this + 136));
  OZChannel::setOwnerChannel((this + 288), (this + 288));

  return OZChannel::setOwnerChannel((this + 440), (this + 440));
}

void OZChannelRotation3D::OZChannelRotation3D(OZChannelRotation3D *this, double a2, double a3, double a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9, OZChannelImpl *a10, OZChannelInfo *a11)
{
  Instance = OZChannelRotation3D_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a5, a6, a7, a8, 0, a9);
  *this = &unk_287254970;
  *(this + 2) = &unk_287254CC0;
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v34, @"Channel X");
  OZChannelAngle::OZChannelAngle((this + 136), a2, &v34, this, 1u, 0, a10, a11);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v25, v26);
  PCURL::PCURL(&v34, @"Channel Y");
  OZChannelAngle::OZChannelAngle((this + 288), a3, &v34, this, 2u, 0, a10, a11);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v27, v28);
  PCURL::PCURL(&v34, @"Channel Z");
  OZChannelAngle::OZChannelAngle((this + 440), a4, &v34, this, 3u, 0, a10, a11);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v29, v30);
  PCURL::PCURL(&v34, @"Channel Rotation3D Iterpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v31, v32);
  PCURL::PCURL(&v33, @"Channel Rotation3D Iterpolation Label");
  OZChannelEnumInterpMode::OZChannelEnumInterpMode((this + 592), &v34, &v33, this, 4u, 0);
  PCString::~PCString(&v33);
  PCString::~PCString(&v34);
  *(this + 212) = 0;
  OZChannelRotation3D::initCustomInterpolator(this);
}

void sub_25FEF601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCSpinLock::~PCSpinLock((v10 + 848));
  OZChannelEnum::~OZChannelEnum((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelRotation3D::OZChannelRotation3D(OZChannelRotation3D *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_287254970;
  *(v6 + 2) = &unk_287254CC0;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v17, @"Channel X");
  OZChannelAngle::OZChannelAngle((this + 136), 0.0, &v17, this, 1u, 0, 0, 0);
  PCString::~PCString(&v17);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v17, @"Channel Y");
  OZChannelAngle::OZChannelAngle((this + 288), 0.0, &v17, this, 2u, 0, 0, 0);
  PCString::~PCString(&v17);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v17, @"Channel Z");
  OZChannelAngle::OZChannelAngle((this + 440), 0.0, &v17, this, 3u, 0, 0, 0);
  PCString::~PCString(&v17);
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v17, @"Channel Rotation3D Iterpolation Enum");
  TXParagraphStyleFolder_Factory::createInstance(v14, v15);
  PCURL::PCURL(&v16, @"Channel Rotation3D Iterpolation Label");
  OZChannelEnumInterpMode::OZChannelEnumInterpMode((this + 592), &v17, &v16, this, 4u, 0);
  PCString::~PCString(&v16);
  PCString::~PCString(&v17);
  *(this + 212) = 0;
  OZChannelRotation3D::initCustomInterpolator(this);
}

void sub_25FEF6280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCSpinLock::~PCSpinLock((v10 + 848));
  OZChannelEnum::~OZChannelEnum((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelRotation3D::OZChannelRotation3D(OZChannelRotation3D *this, const OZChannelRotation3D *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_287254970;
  *(v5 + 16) = &unk_287254CC0;
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287246030;
  *(this + 19) = &unk_287246390;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287246030;
  *(this + 38) = &unk_287246390;
  OZChannel::OZChannel((this + 440), (a2 + 440), this);
  *(this + 55) = &unk_287246030;
  *(this + 57) = &unk_287246390;
  OZChannelEnum::OZChannelEnum((this + 592), (a2 + 592), this);
  *(this + 74) = &unk_287254D30;
  *(this + 76) = &unk_2872550A0;
  *(this + 212) = 0;
  OZChannelRotation3D::initCustomInterpolator(this);
}

void sub_25FEF64F4(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v1 + 212);
  OZChannelEnum::~OZChannelEnum(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelRotation3D::~OZChannelRotation3D(OZChannelRotation3D *this)
{
  *this = &unk_287254970;
  *(this + 2) = &unk_287254CC0;
  PCSpinLock::~PCSpinLock(this + 212);
  OZChannelEnum::~OZChannelEnum(this + 74);
  OZChannel::~OZChannel((this + 440));
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelRotation3D::~OZChannelRotation3D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelRotation3D::~OZChannelRotation3D(OZChannelRotation3D *this)
{
  OZChannelRotation3D::~OZChannelRotation3D((this - 16));
}

{
  OZChannelRotation3D::~OZChannelRotation3D((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelRotation3D::copy(OZChannelRotation3D *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);
  OZChannel::copy((this + 440), (v4 + 440), a3);

  OZChannelEnum::copy(this + 74, (v4 + 592), a3);
}

OZChannelBase *OZChannelRotation3D::interpWillBeModified(OZChannelRotation3D *this, uint64_t a2)
{
  OZChannel::parentWillBeModified((this + 136), a2);
  OZChannel::parentWillBeModified((this + 288), a2);

  return OZChannel::parentWillBeModified((this + 440), a2);
}

uint64_t OZChannelRotation3D::setCurveInterpolation(OZChannelRotation3D *this, uint64_t a2)
{
  v4 = (this + 136);
  (*(*this + 824))(this, 0);
  OZChannel::setInterpolation(v4, a2);
  OZChannel::setInterpolation((this + 288), a2);

  return OZChannel::setInterpolation((this + 440), a2);
}

uint64_t OZChannelRotation3D::setKeypointInterpolation(OZChannelRotation3D *this, OZChannel *a2, void *a3)
{
  v12 = **&MEMORY[0x277CC08F0];
  v11 = 0.0;
  OZChannel::getKeyframe(a2, a3, &v12, &v11);
  if ((this + 136) == a2 || (Keyframe = OZChannel::getKeyframe(a2, &v12)) == 0)
  {
    v6 = 0;
  }

  else
  {
    OZChannel::setKeyframeInterpolation((this + 136), Keyframe);
    v6 = 1;
  }

  if ((this + 288) != a2)
  {
    v7 = OZChannel::getKeyframe(a2, &v12);
    if (v7)
    {
      OZChannel::setKeyframeInterpolation((this + 288), v7);
      v6 = 1;
    }
  }

  v8 = (this + 440);
  if (v8 != a2)
  {
    v9 = OZChannel::getKeyframe(a2, &v12);
    if (v9)
    {
      OZChannel::setKeyframeInterpolation(v8, v9);
      return 1;
    }
  }

  return v6;
}

OZChannelFolder *OZChannelRotation3D::setValue(OZChannelRotation3D *this, OZChannel *a2, const CMTime *a3, double a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000))
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v9 = (this + 288);
    v10 = (this + 440);
    if ((this + 136) == a2 || v9 == a2 || v10 == a2)
    {
      OZChannel::getValueAsDouble((this + 136), a3, 0.0);
      v14 = v13;
      OZChannel::getValueAsDouble((this + 288), a3, 0.0);
      v16 = v15;
      OZChannel::getValueAsDouble((this + 440), a3, 0.0);
      v18 = v17;
      v19 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
      if ((this + 136) == a2)
      {
        v20 = a4;
      }

      else
      {
        v20 = v14;
      }

      OZChannel::setValue((this + 136), a3, v20, 0);
      if (v9 == a2)
      {
        v21 = a4;
      }

      else
      {
        v21 = v16;
      }

      OZChannel::setValue((this + 288), a3, v21, 0);
      if (v10 == a2)
      {
        v22 = a4;
      }

      else
      {
        v22 = v18;
      }

      OZChannel::setValue((this + 440), a3, v22, 0);
      OZChannel::setKeyframe((this + 592), v19, 1.0, 1);
    }

    else
    {
      (*(a2->var0 + 89))(a2, a3, 0, a4);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v11 = *(a2->var0 + 89);
    v8.n128_f64[0] = a4;

    return v11(a2, a3, 0, v8);
  }
}

OZChannelFolder *OZChannelRotation3D::compoundAddKeypointAt(OZChannelRotation3D *this, OZChannel *a2, const CMTime *a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    if ((this + 136) == a2 || (this + 288) == a2 || (this + 440) == a2)
    {
      v10 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
      OZChannel::addKeypointAt((this + 136), a3);
      OZChannel::addKeypointAt((this + 288), a3);
      OZChannel::addKeypointAt((this + 440), a3);
      OZChannel::setKeyframe((this + 592), v10, 1.0, 1);
    }

    else
    {
      (*(a2->var0 + 75))(a2, a3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 75);

    return v8(a2, a3);
  }
}

double OZChannelRotation3D::compoundMoveKeypointTo@<D0>(OZChannelRotation3D *this@<X0>, OZChannel *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, CMTime *a8@<X8>)
{
  v19 = *a4;
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a7) && ((OZChannelFolder::resetFoldFlag(this, 0x100000), v15 = (this + 288), v16 = (this + 440), (this + 136) == a2) || v15 == a2 || v16 == a2))
  {
    OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
    (*(a2->var0 + 77))(&v18, a2, a3, &v19, a5, a6);
    v19 = v18;
    if ((this + 136) != a2)
    {
      OZChannel::moveKeypointTo((this + 136), a3, &v19, a5, a6, &v18);
    }

    if (v15 != a2)
    {
      OZChannel::moveKeypointTo((this + 288), a3, &v19, a5, a6, &v18);
    }

    if (v16 != a2)
    {
      OZChannel::moveKeypointTo((this + 440), a3, &v19, a5, a6, &v18);
    }

    OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 1.0, 1);
    OZChannelFolder::setFoldFlag(this, 0x100000);
    result = *&v19.value;
    *a8 = v19;
  }

  else
  {
    (*(a2->var0 + 77))(a2, a3, &v19, a5, a6);
  }

  return result;
}

OZChannelFolder *OZChannelRotation3D::compoundDeleteKeypointAt(OZChannelRotation3D *this, OZChannel *a2, const CMTime *a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    if ((this + 136) == a2 || (this + 288) == a2 || (this + 440) == a2)
    {
      v10 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
      OZChannel::deleteKeypointAt((this + 136), a3);
      OZChannel::deleteKeypointAt((this + 288), a3);
      OZChannel::deleteKeypointAt((this + 440), a3);
      OZChannel::setKeyframe((this + 592), v10, 1.0, 1);
    }

    else
    {
      (*(a2->var0 + 76))(a2, a3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 76);

    return v8(a2, a3);
  }
}

OZChannelFolder *OZChannelRotation3D::compoundReset(OZChannelRotation3D *this, OZChannel *a2, char a3)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a3 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    if ((this + 136) == a2 || (this + 288) == a2 || (this + 440) == a2)
    {
      v8 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
      OZChannelBase::reset((this + 136), 0);
      OZChannelBase::reset((this + 288), 0);
      OZChannelBase::reset((this + 440), 0);
      OZChannel::setKeyframe((this + 592), v8, 1.0, 1);
    }

    else
    {
      (*(a2->var0 + 36))(a2, 0);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v6 = *(a2->var0 + 36);

    return v6(a2, 0);
  }
}

OZChannelFolder *OZChannelRotation3D::compoundSetIsSpline(OZChannelRotation3D *this, OZChannel *a2, uint64_t a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    if ((this + 136) == a2 || (this + 288) == a2 || (this + 440) == a2)
    {
      v10 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe((this + 592), MEMORY[0x277CC08F0], 0.0, 1);
      OZChannel::setIsSpline((this + 136), a3);
      OZChannel::setIsSpline((this + 288), a3);
      OZChannel::setIsSpline((this + 440), a3);
      OZChannel::setKeyframe((this + 592), v10, 1.0, 1);
    }

    else
    {
      (*(a2->var0 + 60))(a2, a3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 60);

    return v8(a2, a3);
  }
}

uint64_t OZChannelRotation3D::willBeModified(OZChannelBase *this, uint64_t a2)
{
  OZChannelBase::willBeModified(this, a2);
  v4 = *(this->var0 + 103);

  return v4(this, a2);
}

double OZChannelRotation3D::getValueAsQuatd(uint64_t a1, double *a2, CMTime *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 136), a3, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 288), a3, a4);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 440), a3, a4);
  v27 = v12;
  v13 = __sincos_stret(v9 * 0.5);
  v14 = v13.__sinval * 0.0;
  v15 = __sincos_stret(v11 * 0.5);
  v16 = v15.__sinval * 0.0;
  v17 = __sincos_stret(v27 * 0.5);
  v18 = v13.__cosval * v15.__cosval - (v14 * v16 + v14 * v15.__sinval + v13.__sinval * v16);
  v19 = v13.__sinval * v15.__cosval + v13.__cosval * v16 + v14 * v15.__sinval - v14 * v16;
  v20 = v14 * v15.__cosval + v13.__cosval * v15.__sinval + v13.__sinval * v16 - v14 * v16;
  v21 = v14 * v16 - v13.__sinval * v15.__sinval + v14 * v15.__cosval + v13.__cosval * v16;
  v22 = v17.__sinval * 0.0 * v19;
  v23 = v17.__sinval * 0.0 * v20;
  v24 = v17.__sinval * 0.0 * v18;
  v25 = v17.__sinval * 0.0 * v21;
  a2[2] = v25 - v17.__sinval * v19 + v17.__cosval * v20 + v24;
  a2[3] = v22 - v23 + v17.__cosval * v21 + v17.__sinval * v18;
  result = v17.__sinval * v20 - v25 + v17.__cosval * v19 + v24;
  *a2 = v17.__cosval * v18 - (v17.__sinval * v21 + v22 + v23);
  a2[1] = result;
  return result;
}

BOOL PCQuat<double>::getIncrementalEulerAngles(double *a1, double *a2, double *a3, double *a4, unsigned int a5)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v36 = 0x3FF0000000000000;
  v33 = 0x3FF0000000000000;
  v30 = 0x3FF0000000000000;
  v27 = 0x3FF0000000000000;
  v28 = 0u;
  v29 = 0u;
  v31 = 0u;
  v32 = 0u;
  v34 = 0u;
  v35 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v27, a1);
  memset(v22, 0, sizeof(v22));
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v23 = a5;
  result = PCMatrix44Tmpl<double>::getTransformation(&v27, v22);
  v13 = *(&v24 + 1);
  *a2 = v24;
  *a3 = v13;
  *a4 = v25;
  *a2 = *a2 + vcvtmd_s64_f64((v9 - *a2) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  *a3 = *a3 + vcvtmd_s64_f64((v10 - *a3) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  v14 = *a4 + vcvtmd_s64_f64((v11 - *a4) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  *a4 = v14;
  v15 = -v14;
  v16 = -*a2;
  v17 = -*a3;
  if (((1 << a5) & 0x14) != 0)
  {
    v17 = *a3;
  }

  else
  {
    v16 = *a2;
  }

  if (((1 << a5) & 0xA) != 0)
  {
    v16 = *a2;
    v17 = *a3;
  }

  else
  {
    v15 = v14;
  }

  if (a5 > 5)
  {
    v16 = *a2;
    v17 = *a3;
    v15 = v14;
  }

  v18 = v15 + 3.14159265;
  v19 = v16 + 3.14159265 + vcvtmd_s64_f64((v9 - (v16 + 3.14159265)) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  v20 = v17 + 3.14159265 + vcvtmd_s64_f64((v10 - (v17 + 3.14159265)) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  v21 = v18 + vcvtmd_s64_f64((v11 - v18) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
  if (vabdd_f64(v19, v9) + vabdd_f64(v20, v10) + vabdd_f64(v21, v11) < vabdd_f64(*a2, v9) + vabdd_f64(*a3, v10) + vabdd_f64(v14, v11))
  {
    *a2 = v19;
    *a3 = v20;
    *a4 = v21;
  }

  return result;
}

void OZChannelRotation3D::getValueAsEulerAngles(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 136), a2, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 288), a2, a4);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 440), a2, a4);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v12;
}

OZChannelFolder *OZChannelRotation3D::interpolationModeWasSet(OZChannelRotation3D *this)
{
  v1 = this;
  v2 = MEMORY[0x277CC08F0];
  if (OZChannel::getValueAsInt((this + 592), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    OZChannel::setKeyframe((v1 + 592), v2, 0.0, 1);
    OZChannelFolder::setFoldFlag(v1, 0x100000);
    v3 = 0;
    v4 = (v1 + 288);
    v5 = (v1 + 136);
    v6 = (v1 + 440);
    do
    {
      if (v3 == 1)
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      if (v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v5;
      }

      v9 = (*(v8->var0 + 104))(v8);
      if (v9)
      {
        v10 = v9;
        OZChannel::getKeyframes(v8, 0, __p);
        v11 = 0;
        v18 = v10;
        do
        {
          v20 = *v2;
          v19 = 0.0;
          OZChannel::getKeyframe(v8, *(__p[0] + v11), &v20, &v19);
          OZChannelFolder::addKeypointAt(v1, &v20);
          v12 = v1;
          for (i = 0; i != 3; ++i)
          {
            if (v3 != i)
            {
              if (i == 1)
              {
                v14 = v4;
              }

              else
              {
                v14 = v6;
              }

              if (i)
              {
                v15 = v14;
              }

              else
              {
                v15 = v5;
              }

              Keyframe = OZChannel::getKeyframe(v15, &v20);
              if (Keyframe)
              {
                OZChannel::getKeyframeInterpolation(v8, *(__p[0] + v11));
                OZChannel::setKeyframeInterpolation(v15, Keyframe);
              }
            }
          }

          ++v11;
          v1 = v12;
          v2 = MEMORY[0x277CC08F0];
        }

        while (v11 != v18);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      ++v3;
    }

    while (v3 != 3);
    return OZChannel::setKeyframe((v1 + 592), MEMORY[0x277CC08F0], 1.0, 1);
  }

  else
  {

    return OZChannelFolder::resetFoldFlag(v1, 0x100000);
  }
}

void sub_25FEF7A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelRotation3D::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  OZChannelFolder::parseEnd(this, a2);
  OZChannelRotation3D::interpolationModeWasSet(this);
  return 1;
}

uint64_t non-virtual thunk toOZChannelRotation3D::parseEnd(OZChannelRotation3D *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  OZChannelFolder::parseEnd((this - 16), a2);
  OZChannelRotation3D::interpolationModeWasSet(v2);
  return 1;
}

uint64_t OZChannelEnumInterpMode_Factory::getInstance(OZChannelEnumInterpMode_Factory *this)
{
  if (atomic_load_explicit(&OZChannelEnumInterpMode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnumInterpMode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnumInterpMode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnumInterpMode_Factory::_instance;
}

void OZChannelEnumInterpMode::OZChannelEnumInterpMode(OZChannelEnumInterpMode *this, const PCString *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  Instance = OZChannelEnumInterpMode_Factory::getInstance(this);
  OZChannelEnum::OZChannelEnum(this, a2, Instance, a3, a4, a5, a6, 0, 0);
  *this = &unk_287254D30;
  *(this + 2) = &unk_2872550A0;
}

void *OZChannelEnumInterpMode::willBeModified(OZChannel *this, uint64_t a2)
{
  OZChannel::willBeModified(this, a2);
  result = this->var6;
  if (result)
  {
    if (result)
    {
      v4 = *(*result + 824);

      return v4();
    }
  }

  return result;
}

void *OZChannelEnumInterpMode::addToUndo(OZChannelBase *this, const PCString *a2)
{
  var6 = this->var6;
  result = OZChannelBase::getChannelRootBase(this);
  if (var6)
  {
    v5 = result;
    result = (*(*var6 + 120))(var6);
    if (result && v5 != 0)
    {
      v7 = *(*v5 + 752);

      return v7(v5, var6, a2);
    }
  }

  return result;
}

void OZQuaternionCubicInterpolator::~OZQuaternionCubicInterpolator(PCSpinLock *this)
{
  *&this->_lock._os_unfair_lock_opaque = &unk_2872550F8;
  PCSpinLock::~PCSpinLock(this + 5);

  OZChannelBase::setRangeName(this, v2);
}

{
  *&this->_lock._os_unfair_lock_opaque = &unk_2872550F8;
  PCSpinLock::~PCSpinLock(this + 5);
  OZChannelBase::setRangeName(this, v2);

  JUMPOUT(0x2666E9F00);
}

FILE *OZQuaternionCubicInterpolator::interpolate(OZQuaternionCubicInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, char *a5, const CMTime *a6)
{
  v10 = (*(*a4 + 208))(a4, a2, a3);
  v173[0] = *(a4 + 16);
  v172 = *(a5 + 16);
  time1 = *(a4 + 16);
  *time2 = *(a5 + 1);
  *&time2[16] = *(a5 + 4);
  if (CMTimeCompare(&time1, time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v167);
    time1 = v173[0];
    *time2 = v167;
    PC_CMTimeSaferAdd(&time1, time2, &v169);
    *&v172.value = v169;
    *&v172.epoch = v170;
  }

  v11 = *(*(*(*(a2 + 20) + 32) + 152) + 48);
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  CurveInterface = OZChannel::getCurveInterface((v12 + 136));
  v15 = PVInstructionGraphContext::HGNodeCache((v14 + 40));
  v16 = OZChannel::getCurveInterface((v12 + 288));
  v18 = PVInstructionGraphContext::HGNodeCache((v17 + 40));
  v19 = OZChannel::getCurveInterface((v12 + 440));
  v21 = PVInstructionGraphContext::HGNodeCache((v20 + 40));
  v22 = MEMORY[0x277CC08F0];
  v23 = (*(*v15 + 240))(v15, v173, MEMORY[0x277CC08F0], 0);
  v138 = (*(*v15 + 240))(v15, &v172, v22, 0);
  v24 = (*(*v18 + 240))(v18, v173, v22, 0);
  v136 = (*(*v18 + 240))(v18, &v172, v22, 0);
  v131 = (*(*v21 + 240))(v21, v173, v22, 0);
  v134 = (*(*v21 + 240))(v21, &v172, v22, 0);
  v25 = __sincos_stret(v23 * 0.5);
  v26 = 0.0;
  v27 = v25.__sinval * 0.0;
  v28 = __sincos_stret(v24 * 0.5);
  v29 = v28.__sinval * 0.0;
  v30 = __sincos_stret(v131 * 0.5);
  v31 = v25.__cosval * v28.__cosval - (v27 * v29 + v27 * v28.__sinval + v25.__sinval * v29);
  v32 = v25.__sinval * v28.__cosval + v25.__cosval * v29 + v27 * v28.__sinval - v27 * v29;
  v33 = v27 * v28.__cosval + v25.__cosval * v28.__sinval + v25.__sinval * v29 - v27 * v29;
  v34 = v27 * v29 - v25.__sinval * v28.__sinval + v27 * v28.__cosval + v25.__cosval * v29;
  v35 = v32 * (v30.__sinval * 0.0);
  v36 = v33 * (v30.__sinval * 0.0);
  v132 = v31 * v30.__cosval - (v34 * v30.__sinval + v35 + v36);
  v37 = v31 * (v30.__sinval * 0.0);
  v38 = v34 * (v30.__sinval * 0.0);
  v126 = v33 * v30.__cosval + v37 + v38 - v32 * v30.__sinval;
  v129 = v32 * v30.__cosval + v37 + v33 * v30.__sinval - v38;
  v124 = v31 * v30.__sinval + v34 * v30.__cosval + v35 - v36;
  v167.value = 0x3FF0000000000000;
  v39 = __sincos_stret(v138 * 0.5);
  v40 = v39.__sinval * 0.0;
  v41 = __sincos_stret(v136 * 0.5);
  v42 = v41.__sinval * 0.0;
  v43 = __sincos_stret(v134 * 0.5);
  v44 = v39.__cosval * v41.__cosval - (v40 * v42 + v40 * v41.__sinval + v39.__sinval * v42);
  v45 = v39.__sinval * v41.__cosval + v39.__cosval * v42 + v40 * v41.__sinval - v40 * v42;
  v46 = v40 * v41.__cosval + v39.__cosval * v41.__sinval + v39.__sinval * v42 - v40 * v42;
  v47 = v40 * v42 - v39.__sinval * v41.__sinval + v40 * v41.__cosval + v39.__cosval * v42;
  v48 = v45 * (v43.__sinval * 0.0);
  v49 = v46 * (v43.__sinval * 0.0);
  v50 = v44 * v43.__cosval - (v47 * v43.__sinval + v48 + v49);
  v51 = v44 * (v43.__sinval * 0.0);
  v52 = v44 * v43.__sinval + v47 * v43.__cosval;
  v53 = v47 * (v43.__sinval * 0.0);
  v54 = v45 * v43.__cosval + v51 + v46 * v43.__sinval - v53;
  v55 = v46 * v43.__cosval + v51 + v53 - v45 * v43.__sinval;
  v56 = v52 + v48 - v49;
  v57 = sqrt(v132 * v132 + v124 * v124 + v129 * v129 + v126 * v126);
  if (v57 == 0.0)
  {
    v169.f64[1] = 0.0;
    v170 = 0.0;
    v171 = 0.0;
    v60 = 1.0;
    v59 = 0.0;
    v58 = 0.0;
  }

  else
  {
    v58 = v129 / v57;
    v59 = v126 / v57;
    v169.f64[1] = v129 / v57;
    v170 = v126 / v57;
    v26 = v124 / v57;
    v171 = v124 / v57;
    v60 = v132 / v57;
  }

  v169.f64[0] = v60;
  v61 = sqrt(v50 * v50 + v56 * v56 + v54 * v54 + v55 * v55);
  if (v61 == 0.0)
  {
    *&v167.timescale = 0;
    v167.epoch = 0;
    v168 = 0.0;
    v65 = 1.0;
    v64 = 0.0;
    v63 = 0.0;
    v62 = 0.0;
  }

  else
  {
    v62 = v54 / v61;
    v63 = v55 / v61;
    *&v167.timescale = v62;
    *&v167.epoch = v63;
    v64 = v56 / v61;
    v168 = v64;
    v65 = v50 / v61;
  }

  *&v167.value = v65;
  v66 = (v60 - v65) * (v60 - v65) + (v58 - v62) * (v58 - v62) + (v59 - v63) * (v59 - v63) + (v26 - v64) * (v26 - v64);
  v67 = (v60 + v65) * (v60 + v65) + (v58 + v62) * (v58 + v62) + (v59 + v63) * (v59 + v63) + (v26 + v64) * (v26 + v64);
  if (v67 < v66)
  {
    *&v167.value = -v65;
    *&v167.timescale = -v62;
    *&v167.epoch = -v63;
    v168 = -v64;
  }

  if (v10 == 8)
  {
    time1 = *a6;
    *time2 = v173[0];
    PC_CMTimeSaferSubtract(&time1, time2, &v156);
    operator*(&v156, &v160, 3.14159265);
    time1 = v172;
    *time2 = v173[0];
    PC_CMTimeSaferSubtract(&time1, time2, &v164);
    operator/(&v160.value, &v164, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    v69 = sin(Seconds * 0.5);
    goto LABEL_18;
  }

  if (v10 == 7)
  {
    time1 = *a6;
    *time2 = v173[0];
    PC_CMTimeSaferSubtract(&time1, time2, &v156);
    operator*(&v156, &v160, 3.14159265);
    time1 = v172;
    *time2 = v173[0];
    PC_CMTimeSaferSubtract(&time1, time2, &v164);
    operator/(&v160.value, &v164, &time1);
    v68 = CMTimeGetSeconds(&time1);
    v69 = 1.0 - cos(v68 * 0.5);
LABEL_18:
    v166 = v69;
    v10 = 1;
    goto LABEL_20;
  }

  time1 = *a6;
  *time2 = v173[0];
  PC_CMTimeSaferSubtract(&time1, time2, &v160);
  time1 = v172;
  *time2 = v173[0];
  PC_CMTimeSaferSubtract(&time1, time2, &v156);
  operator/(&v160.value, &v156, &time1);
  v166 = CMTimeGetSeconds(&time1);
LABEL_20:
  v162 = 0;
  v163 = 0;
  v71 = MEMORY[0x277CC08F0];
  OZSpline::getPreviousValidVertex(a2, a4, &v163, MEMORY[0x277CC08F0]);
  OZSpline::getNextValidVertex(a2, a5, &v162, v71);
  if ((v10 & 0xFFFFFFFD) == 4)
  {
    v72 = v163;
    if (!v163)
    {
      v163 = a4;
      v72 = a4;
    }

    v137 = v67;
    v139 = v66;
    v73 = v162;
    if (!v162)
    {
      v162 = a5;
      v73 = a5;
    }

    v160.value = 0x3FF0000000000000;
    *&v160.timescale = 0;
    v160.epoch = 0;
    v161 = 0;
    v164 = *(v72 + 1);
    v165 = *(v72 + 4);
    v158 = *(v73 + 1);
    v159 = *(v73 + 4);
    v74 = MEMORY[0x277CC08F0];
    v75 = (*(*v15 + 240))(v15, &v164, MEMORY[0x277CC08F0], 0);
    v135 = (*(*v15 + 240))(v15, &v158, v74, 0);
    v76 = (*(*v18 + 240))(v18, &v164, v74, 0);
    v133 = (*(*v18 + 240))(v18, &v158, v74, 0);
    v127 = (*(*v21 + 240))(v21, &v164, v74, 0);
    v130 = (*(*v21 + 240))(v21, &v158, v74, 0);
    v77 = __sincos_stret(v75 * 0.5);
    v78 = v77.__sinval * 0.0;
    v79 = __sincos_stret(v76 * 0.5);
    v80 = v79.__sinval * 0.0;
    v81 = __sincos_stret(v127 * 0.5);
    v82 = v77.__cosval * v79.__cosval - (v78 * v80 + v78 * v79.__sinval + v77.__sinval * v80);
    v83 = v77.__sinval * v79.__cosval + v77.__cosval * v80 + v78 * v79.__sinval - v78 * v80;
    v84 = v78 * v79.__cosval + v77.__cosval * v79.__sinval + v77.__sinval * v80 - v78 * v80;
    v85 = v78 * v80 - v77.__sinval * v79.__sinval + v78 * v79.__cosval + v77.__cosval * v80;
    v86 = v83 * (v81.__sinval * 0.0);
    v87 = v84 * (v81.__sinval * 0.0);
    v128 = v82 * v81.__cosval - (v85 * v81.__sinval + v86 + v87);
    v88 = v82 * (v81.__sinval * 0.0);
    v89 = v85 * (v81.__sinval * 0.0);
    v125 = v83 * v81.__cosval + v88 + v84 * v81.__sinval - v89;
    v122 = v82 * v81.__sinval + v85 * v81.__cosval + v86 - v87;
    v123 = v84 * v81.__cosval + v88 + v89 - v83 * v81.__sinval;
    *time2 = 0x3FF0000000000000;
    v90 = __sincos_stret(v135 * 0.5);
    v91 = v90.__sinval * 0.0;
    v92 = __sincos_stret(v133 * 0.5);
    v93 = v92.__sinval * 0.0;
    v94 = __sincos_stret(v130 * 0.5);
    v95 = v90.__cosval * v92.__cosval - (v91 * v93 + v91 * v92.__sinval + v90.__sinval * v93);
    v96 = v90.__sinval * v92.__cosval + v90.__cosval * v93 + v91 * v92.__sinval - v91 * v93;
    v97 = v91 * v92.__cosval + v90.__cosval * v92.__sinval + v90.__sinval * v93 - v91 * v93;
    v98 = v91 * v93 - v90.__sinval * v92.__sinval + v91 * v92.__cosval + v90.__cosval * v93;
    v99 = v96 * (v94.__sinval * 0.0);
    v100 = v97 * (v94.__sinval * 0.0);
    v101 = v95 * v94.__cosval - (v98 * v94.__sinval + v99 + v100);
    v102 = v95 * (v94.__sinval * 0.0);
    v103 = v98 * (v94.__sinval * 0.0);
    v104 = v103 - v96 * v94.__sinval;
    v105 = v96 * v94.__cosval + v102 + v97 * v94.__sinval - v103;
    v106 = v97 * v94.__cosval + v102 + v104;
    v107 = v95 * v94.__sinval + v98 * v94.__cosval + v99 - v100;
    v108 = sqrt(v128 * v128 + v122 * v122 + v125 * v125 + v123 * v123);
    if (v108 == 0.0)
    {
      *&time1.timescale = 0;
      time1.epoch = 0;
      *&v148 = 0;
      v109 = 1.0;
    }

    else
    {
      *&time1.timescale = v125 / v108;
      *&time1.epoch = v123 / v108;
      *&v148 = v122 / v108;
      v109 = v128 / v108;
    }

    *&time1.value = v109;
    v110 = sqrt(v101 * v101 + v107 * v107 + v105 * v105 + v106 * v106);
    if (v110 == 0.0)
    {
      memset(&time2[8], 0, 24);
      v114 = 1.0;
      v113 = 0.0;
      v112 = 0.0;
      v111 = 0.0;
    }

    else
    {
      v111 = v105 / v110;
      v112 = v106 / v110;
      *&time2[8] = v111;
      *&time2[16] = v112;
      v113 = v107 / v110;
      *&time2[24] = v113;
      v114 = v101 / v110;
    }

    *time2 = v114;
    if (v137 < v139)
    {
      *time2 = -v114;
      *&time2[8] = -v111;
      *&time2[16] = -v112;
      *&time2[24] = -v113;
    }

    spline<double>(&time1.value, &v169, &v167, time2, &v166, &v156);
    v160 = v156;
    v161 = v157;
  }

  else
  {
    slerp<double>(&v169, &v167, &v166, &time1);
    v160 = time1;
    v161 = v148;
  }

  v155 = 0x3FF0000000000000;
  v152 = 0x3FF0000000000000;
  v149 = 0x3FF0000000000000;
  time1.value = 0x3FF0000000000000;
  *&time1.timescale = 0u;
  v148 = 0u;
  v150 = 0u;
  v151 = 0u;
  v153 = 0u;
  v154 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&time1, &v160.value);
  v142 = 0u;
  memset(time2, 0, sizeof(time2));
  v143 = 4;
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  Transformation = PCMatrix44Tmpl<double>::getTransformation(&time1.value, time2);
  result = _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/ProChanneliOS/Channels/OZChannelRotation3D.cpp", 745, v116, v117, v118, v119, v120);
  *(this + 16) = 0;
  return result;
}

double spline<double>@<D0>(double *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  intermediate<double>(a1, a2->f64, a3->f64, v13);
  intermediate<double>(a2->f64, a3->f64, a4, v12);
  return squad<double>(a2, v13, v12, a3, a5, a6);
}

void slerp<double>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a1->f64[1];
  v8 = a1[1].f64[0];
  v9 = a1[1].f64[1];
  v11 = a2[1].f64[0];
  v10 = a2[1].f64[1];
  v12 = vmulq_f64(*a1, *a2).f64[0] + vmuld_lane_f64(v7, *a2, 1) + v8 * v11 + v9 * v10;
  if (v12 >= 1.0)
  {
    *a4 = v5;
  }

  else
  {
    v13 = sqrt(1.0 - v12 * v12);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v14 = *a3;
    if (v13 * 1.79769313e308 > 1.0)
    {
      v15 = v6.f64[1];
      v25 = v6.f64[0];
      v26 = v5.f64[0];
      v28 = *a3;
      v16 = acos(v12);
      v17 = sin(v16 * (1.0 - v28));
      v18 = v16 * v28;
      v19 = v17 / v13;
      v20 = sin(v18) / v13;
      v21 = v25 * v20 + v26 * v19;
      v22 = v15 * v20 + v7 * v19;
      v8 = v11 * v20 + v8 * v19;
      v9 = v10 * v20 + v9 * v19;
LABEL_8:
      *a4 = v21;
      *(a4 + 8) = v22;
      goto LABEL_9;
    }

    if (v12 <= 0.0)
    {
      v27 = v5.f64[0];
      v29 = *a3;
      v23 = sin((0.5 - v14) * 3.14159265);
      v24 = sin(v29 * 3.14159265);
      v21 = v9 * v24 + v27 * v23;
      v22 = v7 * v23 - v8 * v24;
      v8 = v24 * v7 + v8 * v23;
      v9 = v9 * v23 - v27 * v24;
      goto LABEL_8;
    }

    v8 = v11 * v14 + v8 * (1.0 - v14);
    v9 = v10 * v14 + v9 * (1.0 - v14);
    *a4 = vaddq_f64(vmulq_n_f64(v6, v14), vmulq_n_f64(v5, 1.0 - v14));
  }

LABEL_9:
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
}

char *OZQuaternionCubicInterpolator::isActive(OZQuaternionCubicInterpolator *this, OZSpline *a2, void *a3)
{
  if (a3)
  {
    v4 = (*(*a3 + 208))(a3) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(*(a2 + 20) + 32) + 152);
  if (!v5)
  {
    return 0;
  }

  result = *(v5 + 48);
  if (result)
  {
    if (result)
    {
      return ((OZChannel::getValueAsInt((result + 592), MEMORY[0x277CC08F0], 0.0) != 0) & ~v4);
    }
  }

  return result;
}

void OZChannelEnumInterpMode_Factory::OZChannelEnumInterpMode_Factory(OZChannelEnumInterpMode_Factory *this)
{
  v3 = xmmword_260848500;
  v4 = xmmword_26084A120;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872551C8;
  *(this + 16) = &unk_287255298;
}

void intermediate<double>(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = v6 * v6 + v5 * v5 + v7 * v7 + v8 * v8;
  v10 = *a2;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  if (v9 != 0.0)
  {
    v10 = v6 / v9;
    v11 = -v5 / v9;
    v12 = -v7 / v9;
    v13 = -v8 / v9;
  }

  v70 = a2[1];
  v14 = a3[1];
  v15 = a3[2];
  v16 = a3[3];
  v69 = v10 * *a3 - (v11 * v14 + v12 * v15 + v13 * v16);
  v65 = v11 * *a3 + v10 * v14;
  v63 = v13 * *a3 + v10 * v16;
  v64 = v12 * *a3 + v10 * v15;
  v61 = v13 * v14 - v11 * v16;
  v62 = v12 * v16 - v13 * v15;
  v60 = v11 * v15 - v12 * v14;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = v11 * *a1 + v10 * v17 + v12 * v19 - v13 * v18;
  v21 = v12 * *a1 + v10 * v18 + v13 * v17 - v11 * v19;
  v22 = v11 * v18 - v12 * v17 + v13 * *a1 + v10 * v19;
  if (v10 * *a1 - (v11 * v17 + v12 * v18 + v13 * v19) <= 1.0)
  {
    v23 = v10 * *a1 - (v11 * v17 + v12 * v18 + v13 * v19);
  }

  else
  {
    v23 = 1.0;
  }

  v24 = acos(v23);
  v25 = sin(v24);
  if (v24 == 0.0)
  {
    v66 = v22;
    v67 = v21;
    v68 = v20;
  }

  else
  {
    v26 = fabs(v25);
    v29 = v26 < 1.0;
    v27 = fabs(v24);
    v28 = v26 * 1.79769313e308;
    v29 = !v29 || v27 < v28;
    if (v29)
    {
      v30 = v24 / v25;
    }

    else
    {
      v30 = 0.0;
    }

    v67 = v21 * v30;
    v68 = v20 * v30;
    v66 = v22 * v30;
  }

  v31 = v65 + v62;
  v32 = v64 + v61;
  v33 = v60 + v63;
  v34 = v69;
  if (v69 > 1.0)
  {
    v34 = 1.0;
  }

  v35 = acos(v34);
  v36 = sin(v35);
  if (v35 != 0.0)
  {
    v37 = fabs(v36);
    v29 = v37 < 1.0;
    v38 = fabs(v35);
    v39 = v37 * 1.79769313e308;
    if (!v29 || v38 < v39)
    {
      v41 = v35 / v36;
    }

    else
    {
      v41 = 0.0;
    }

    v31 = v31 * v41;
    v32 = v32 * v41;
    v33 = v33 * v41;
  }

  v42 = v66 + v33;
  v43 = (v68 + v31) * -0.25;
  v44 = (v67 + v32) * -0.25;
  v45 = v42 * -0.25;
  v46 = sqrt(v44 * v44 + v43 * v43 + v45 * v45);
  v47 = sin(v46);
  v48 = fabs(v46);
  v29 = v48 < 1.0;
  v49 = fabs(v47);
  v50 = v48 * 1.79769313e308;
  if (!v29 || v49 < v50)
  {
    v52 = v47 / v46;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = cos(v46);
  v54 = v6 * v53 - (v8 * (v45 * v52) + v70 * (v43 * v52) + v7 * (v44 * v52));
  v55 = v70 * v53 + v6 * (v43 * v52) + v7 * (v45 * v52) - v8 * (v44 * v52);
  v56 = v7 * v53 + v6 * (v44 * v52) + v8 * (v43 * v52) - v70 * (v45 * v52);
  v57 = v70 * (v44 * v52) - v7 * (v43 * v52) + v8 * v53 + v6 * (v45 * v52);
  v58 = sqrt(v54 * v54 + v57 * v57 + v55 * v55 + v56 * v56);
  if (v58 == 0.0)
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v59 = 1.0;
    *(a4 + 24) = 0;
  }

  else
  {
    *(a4 + 8) = v55 / v58;
    *(a4 + 16) = v56 / v58;
    *(a4 + 24) = v57 / v58;
    v59 = v54 / v58;
  }

  *a4 = v59;
}

double squad<double>@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  slerp<double>(a1, a4, a5, v13);
  slerp<double>(a2, a3, a5, v12);
  v11 = (*a5 + *a5) * (1.0 - *a5);
  slerp<double>(v13, v12, &v11, a6);
  return result;
}

void sub_25FEF9A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  Instance = OZChannelScale_Factory::getInstance(this);
  v16 = Instance;
  if (!a7)
  {
    a7 = OZChannelScale::OZChannelScale_valueImpl::getInstance(Instance);
  }

  OZChannel2D::OZChannel2D(this, v16, a2, a3, a4, a5, a6, a7, a8);
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!a8)
  {
    v18 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v17);
    v19 = OZChannel::replaceInfo((this + 136), v18);
    v20 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v19);
    OZChannel::replaceInfo((this + 288), v20);
  }
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, int a7, OZChannelImpl *Instance, OZChannelInfo *a9)
{
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!Instance)
  {
    Instance = OZChannelScale::OZChannelScale_valueImpl::getInstance(this);
  }

  OZChannel2D::OZChannel2D(this, a2, a3, a4, a5, a6, a7, Instance, a9);
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!a9)
  {
    v17 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v16);
    v18 = OZChannel::replaceInfo((this + 136), v17);
    v19 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v18);
    OZChannel::replaceInfo((this + 288), v19);
  }
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, int a8, OZChannelImpl *a9, OZChannelInfo *a10)
{
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  Instance = OZChannelScale_Factory::getInstance(this);
  v20 = Instance;
  if (!a9)
  {
    a9 = OZChannelScale::OZChannelScale_valueImpl::getInstance(Instance);
  }

  OZChannel2D::OZChannel2D(this, a2, a3, v20, a4, a5, a6, a7, a8, a9, a10);
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!a10)
  {
    v22 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v21);
    v23 = OZChannel::replaceInfo((this + 136), v22);
    v24 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v23);
    OZChannel::replaceInfo((this + 288), v24);
  }
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, double a2, double a3, OZFactory *a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9, OZChannelImpl *Instance, OZChannelInfo *a11)
{
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!Instance)
  {
    Instance = OZChannelScale::OZChannelScale_valueImpl::getInstance(this);
  }

  OZChannel2D::OZChannel2D(this, a2, a3, a4, a5, a6, a7, a8, a9, Instance, a11);
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  if (!a11)
  {
    v21 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v20);
    v22 = OZChannel::replaceInfo((this + 136), v21);
    v23 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v22);
    OZChannel::replaceInfo((this + 288), v23);
  }
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  Instance = OZChannelScale::OZChannelScale_valueImpl::getInstance(this);
  OZChannel2D::OZChannel2D(this, a2, a3, a4, 0, Instance, 0);
  *this = &unk_2872552F0;
  *(this + 2) = &unk_287255648;
  v10 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v9);
  v11 = OZChannel::replaceInfo((this + 136), v10);
  v12 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v11);
  OZChannel::replaceInfo((this + 288), v12);
}

void OZChannelScale::OZChannelScale(OZChannelScale *this, const OZChannelScale *a2, OZChannelFolder *a3)
{
  OZChannel2D::OZChannel2D(this, a2, a3);
  *v3 = &unk_2872552F0;
  v3[2] = &unk_287255648;
}

uint64_t OZChannelScale::OZChannelScale_valueImpl::getInstance(OZChannelScale::OZChannelScale_valueImpl *this)
{
  if (atomic_load_explicit(&OZChannelScale::OZChannelScale_valueImpl::getInstance(void)::OZChannelScale_valueImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScale::OZChannelScale_valueImpl::getInstance(void)::OZChannelScale_valueImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale::OZChannelScale_valueImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScale::OZChannelScale_valueImpl::_OZChannelScale_value;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale::OZChannelScale_valueImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelScale::OZChannelScale_valueImpl::_OZChannelScale_value)
  {
    operator new();
  }
}

uint64_t OZChannelScale::OZChannelScale_valueInfo::getInstance(OZChannelScale::OZChannelScale_valueInfo *this)
{
  if (atomic_load_explicit(&OZChannelScale::OZChannelScale_valueInfo::getInstance(void)::OZChannelScale_valueInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelScale::OZChannelScale_valueInfo::getInstance(void)::OZChannelScale_valueInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale::OZChannelScale_valueInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelScale::OZChannelScale_valueInfo::_OZChannelScale_valueInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelScale::OZChannelScale_valueInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelScale::OZChannelScale_valueInfo::_OZChannelScale_valueInfo)
  {
    operator new();
  }
}

OZChannelScale::OZChannelScale_valueInfo *OZChannelScale::OZChannelScale_valueInfo::OZChannelScale_valueInfo(OZChannelScale::OZChannelScale_valueInfo *this)
{
  PCURL::PCURL(&v3, @"%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 4.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287255730;
  *(this + 10) = &unk_287255750;
  return this;
}

void OZChannelScale3D::OZChannelScale3D(OZChannelScale3D *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelScale3D_Factory::getInstance(this);
  OZChannelScale::OZChannelScale(this, Instance, a2, a3, a4, a5, 2, 0, 0);
  *this = &unk_2872557A8;
  *(this + 2) = &unk_287255B00;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v17, @"Channel Z");
  v14 = OZChannelScale::OZChannelScale_valueImpl::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 440), &v17, this, 3u, 0, v14, 0);
  PCString::~PCString(&v17);
  v16 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v15);
  OZChannel::replaceInfo((this + 440), v16);
}

void sub_25FEFA670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 440));
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelScale3D::OZChannelScale3D(OZChannelScale3D *this, double a2, double a3, double a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8)
{
  Instance = OZChannelScale3D_Factory::getInstance(this);
  OZChannelScale::OZChannelScale(this, a2, a3, Instance, a5, a6, a7, a8, 2, 0, 0);
  *this = &unk_2872557A8;
  *(this + 2) = &unk_287255B00;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v23, @"Channel Z");
  v20 = OZChannelScale::OZChannelScale_valueImpl::getInstance(v19);
  OZChannelDouble::OZChannelDouble((this + 440), a4, &v23, this, 3u, 0, v20, 0);
  PCString::~PCString(&v23);
  v22 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v21);
  OZChannel::replaceInfo((this + 440), v22);
}

void sub_25FEFA7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 440));
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelScale3D::OZChannelScale3D(OZChannelScale3D *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelScale::OZChannelScale(this, a2, a3, a4);
  *v5 = &unk_2872557A8;
  *(v5 + 2) = &unk_287255B00;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v11, @"Channel Z");
  Instance = OZChannelScale::OZChannelScale_valueImpl::getInstance(v7);
  OZChannelDouble::OZChannelDouble((this + 440), &v11, this, 3u, 0, Instance, 0);
  PCString::~PCString(&v11);
  v10 = OZChannelScale::OZChannelScale_valueInfo::getInstance(v9);
  OZChannel::replaceInfo((this + 440), v10);
}

void sub_25FEFA8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 440));
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelScale3D::OZChannelScale3D(OZChannelScale3D *this, const OZChannelScale3D *a2, OZChannelFolder *a3)
{
  OZChannelScale::OZChannelScale(this, a2, a3);
  *v5 = &unk_2872557A8;
  *(v5 + 16) = &unk_287255B00;
  OZChannel::OZChannel((v5 + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
}

void OZChannelScale3D::copy(OZChannelScale3D *this, const OZChannelBase *a2, char a3)
{
  OZChannel2D::copy(this, a2, a3);

  OZChannel::copy((this + 440), (v6 + 440), a3);
}

void non-virtual thunk toOZChannelScale3D::~OZChannelScale3D(OZChannelScale3D *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_2872557A8;
  *this = &unk_287255B00;
  OZChannel::~OZChannel((this + 424));

  OZChannel2D::~OZChannel2D(v1);
}

{
  v1 = (this - 16);
  *(this - 2) = &unk_2872557A8;
  *this = &unk_287255B00;
  OZChannel::~OZChannel((this + 424));
  OZChannel2D::~OZChannel2D(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelScaleOverLife::OZChannelScaleOverLife(OZChannelScaleOverLife *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelCurve::OZChannelCurve(this, a2, a3, a4);
  *v4 = &unk_287255B70;
  v4[2] = &unk_287255F18;
}

void non-virtual thunk toOZChannelScaleOverLife::~OZChannelScaleOverLife(OZChannelScaleOverLife *this)
{
  OZChannelCurve::~OZChannelCurve((this - 16));
}

{
  OZChannelCurve::~OZChannelCurve((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelScaleOverLife::~OZChannelScaleOverLife(OZChannel *this)
{
  OZChannelCurve::~OZChannelCurve(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelShear::OZChannelShear(OZChannelShear *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelShear_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_287255F88;
  *(this + 2) = &unk_2872562D0;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v17, @"Channel X");
  OZChannelShearAngle::OZChannelShearAngle((this + 136), &v17, this, 1u, 0, 0, 0);
  PCString::~PCString(&v17);
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v17, @"Channel Y");
  OZChannelShearAngle::OZChannelShearAngle((this + 288), &v17, this, 2u, 0, 0, 0);
  PCString::~PCString(&v17);
}

void sub_25FEFAE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelShear::OZChannelShear(OZChannelShear *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_287255F88;
  *(v6 + 2) = &unk_2872562D0;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v10, @"Channel X");
  OZChannelShearAngle::OZChannelShearAngle((this + 136), &v10, this, 1u, 0, 0, 0);
  PCString::~PCString(&v10);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v10, @"Channel Y");
  OZChannelShearAngle::OZChannelShearAngle((this + 288), &v10, this, 2u, 0, 0, 0);
  PCString::~PCString(&v10);
}

void sub_25FEFAFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelShear::OZChannelShear(OZChannelShear *this, const OZChannelShear *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_287255F88;
  *(v5 + 16) = &unk_2872562D0;
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287246BA0;
  *(this + 19) = &unk_287246F00;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287246BA0;
  *(this + 38) = &unk_287246F00;
}

void sub_25FEFB124(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelShear::copy(OZChannelShear *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);

  OZChannel::copy((this + 288), (v4 + 288), a3);
}

void OZChannelShear::~OZChannelShear(OZChannelShear *this)
{
  OZChannelShear::~OZChannelShear(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287255F88;
  *(this + 2) = &unk_2872562D0;
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

void non-virtual thunk toOZChannelShear::~OZChannelShear(OZChannelShear *this)
{
  OZChannelShear::~OZChannelShear((this - 16));
}

{
  OZChannelShear::~OZChannelShear((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelText::OZChannelText(OZChannelText *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelText_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, 0, 0);
  this->var0 = &unk_287256340;
  this->var2 = &unk_2872566C0;
  PCSharedCount::PCSharedCount(&this->var19);
  this->var20 = 0;
  OZChannelTextInfo = OZChannelText::createOZChannelTextInfo(v11);
  this->var16 = OZChannelTextInfo;
  this->var17 = OZChannelTextInfo;
  OZChannelText::createOZChannelTextImpl(OZChannelTextInfo);
  v13 = OZChannelText::_OZChannelTextImpl;
  this->var14 = OZChannelText::_OZChannelTextImpl;
  this->var15 = v13;
  this->var7 |= 0x10000uLL;
  OZChannelBase::resetFlag(this, 16, 0);
  (*(this->var0 + 16))(this);
}

uint64_t OZChannelText::createOZChannelTextInfo(OZChannelText *this)
{
  if (atomic_load_explicit(&OZChannelText::createOZChannelTextInfo(void)::_OZChannelTextInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelText::createOZChannelTextInfo(void)::_OZChannelTextInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelText::createOZChannelTextInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelText::_OZChannelTextInfo;
}

uint64_t OZChannelText::createOZChannelTextImpl(OZChannelText *this)
{
  if (atomic_load_explicit(&OZChannelText::createOZChannelTextImpl(void)::_OZChannelTextImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelText::createOZChannelTextImpl(void)::_OZChannelTextImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelText::createOZChannelTextImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelText::_OZChannelTextImpl;
}

void OZChannelText::OZChannelText(OZChannelText *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  v5->var0 = &unk_287256340;
  v5[2].var0 = &unk_2872566C0;
  PCSharedCount::PCSharedCount(v5 + 19);
  this->var20 = 0;
  OZChannelTextInfo = OZChannelText::createOZChannelTextInfo(v6);
  this->var16 = OZChannelTextInfo;
  this->var17 = OZChannelTextInfo;
  OZChannelText::createOZChannelTextImpl(OZChannelTextInfo);
  v8 = OZChannelText::_OZChannelTextImpl;
  this->var14 = OZChannelText::_OZChannelTextImpl;
  this->var15 = v8;
  this->var7 |= 0x10000uLL;
  OZChannelBase::resetFlag(this, 16, 0);
  (*(this->var0 + 16))(this);
}

void OZChannelText::OZChannelText(OZChannelText *this, const PCString *a2, PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  Instance = OZChannelText_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a4, a5, a6, 0, 0);
  this->var0 = &unk_287256340;
  this->var2 = &unk_2872566C0;
  PCSharedCount::PCSharedCount(&this->var19);
  this->var20 = 0;
  OZChannelTextInfo = OZChannelText::createOZChannelTextInfo(v13);
  this->var16 = OZChannelTextInfo;
  this->var17 = OZChannelTextInfo;
  OZChannelText::createOZChannelTextImpl(OZChannelTextInfo);
  v15 = OZChannelText::_OZChannelTextImpl;
  this->var14 = OZChannelText::_OZChannelTextImpl;
  this->var15 = v15;
  PCString::set(&this->var19, a3);
  this->var7 |= 0x10000uLL;
  OZChannelBase::resetFlag(this, 16, 0);
  (*(this->var0 + 16))(this);
}

void OZChannelText::OZChannelText(OZChannelText *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  v5->var0 = &unk_287256340;
  v5[2].var0 = &unk_2872566C0;
  PCSharedCount::PCSharedCount(v5 + 19);
  this->var20 = a2[1].var6;
  PCString::set(&this->var19, &a2[1].var5);
  this->var20 = a2[1].var6;
}

void sub_25FEFB860(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 152));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelText::OZChannelText(OZChannelText *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, 0, 0);
  v7->var0 = &unk_287256340;
  v7[2].var0 = &unk_2872566C0;
  PCSharedCount::PCSharedCount(v7 + 19);
  this->var20 = 0;
  OZChannelTextInfo = OZChannelText::createOZChannelTextInfo(v8);
  this->var16 = OZChannelTextInfo;
  this->var17 = OZChannelTextInfo;
  OZChannelText::createOZChannelTextImpl(OZChannelTextInfo);
  v10 = OZChannelText::_OZChannelTextImpl;
  this->var14 = OZChannelText::_OZChannelTextImpl;
  this->var15 = v10;
  this->var7 |= 0x10000uLL;
  OZChannelBase::resetFlag(this, 16, 0);
  (*(this->var0 + 16))(this);
}

void OZChannelText::copy(OZChannelText *this, const OZChannelBase *a2, char a3)
{
  OZChannel::copy(this, a2, a3);
  if (a2)
  {
    if (v5)
    {
      v6 = v5;
      PCString::set(&this->var19, v5 + 19);
      this->var20 = v6[20].var0;
    }
  }
}

void OZChannelText::~OZChannelText(OZChannelText *this)
{
  this->var0 = &unk_287256340;
  this->var2 = &unk_2872566C0;
  PCString::~PCString(&this->var19);

  OZChannel::~OZChannel(this);
}

{
  this->var0 = &unk_287256340;
  this->var2 = &unk_2872566C0;
  PCString::~PCString(&this->var19);

  OZChannel::~OZChannel(this);
}

{
  this->var0 = &unk_287256340;
  this->var2 = &unk_2872566C0;
  PCString::~PCString(&this->var19);
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelText::~OZChannelText(OZChannelText *this)
{
  p_var19 = &this[-1].var19;
  this[-1].var19.var0 = &unk_287256340;
  this->var0 = &unk_2872566C0;
  PCString::~PCString(&this->var17);

  OZChannel::~OZChannel(p_var19);
}

{
  OZChannelText::~OZChannelText((this - 16));
}

void OZChannelText::assign(OZChannelText *this, const OZChannelBase *a2)
{
  OZChannel::assign(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      PCString::set(&this->var19, v4 + 19);
      this->var20 = v5[20].var0;
    }
  }
}

void OZChannelText::setString(OZChannelText *this, PCString a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
  }

  PCString::set(&this->var19, a2.var0);
}

void OZChannelText::setAttributedString(OZChannelText *this, CFAttributedStringRef aStr)
{
  String = CFAttributedStringGetString(aStr);
  CStringPtr = CFStringGetCStringPtr(String, 0x8000100u);
  PCString::PCString(&v5, CStringPtr);
  (*(this->var0 + 108))(this, &v5, 0, 0);
  PCString::~PCString(&v5);
}

uint64_t OZChannelText::writeBody(OZChannelText *this, PCSerializerWriteStream *a2, int a3)
{
  OZChannelBase::writeBody(this, a2, a3);
  PCSerializerWriteStream::pushScope(a2, &OZChannelTextScope);
  if (PCString::size(&this->var19))
  {
    PCString::PCString(&v6, &this->var19);
    (*(*a2 + 16))(a2, 114);
    (*(*a2 + 104))(a2, &v6);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v6);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelText::parseBegin(OZChannelText *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelTextScope);
  PCString::clear(&this->var19);
  return 1;
}

uint64_t OZChannelText::parseElement(OZChannelText *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 114)
  {
    (*(*a3 + 16))(a3, &this->var19);
    OZChannelBase::parseElement(this, a2, a3);
  }

  return 1;
}

uint64_t OZChannelText::parseEnd(OZChannelText *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseEnd(this, a2);
  if (this->var20)
  {
    v3 = PCString::ns_str(&this->var19);
    v4 = [MEMORY[0x277CCA900] newlineCharacterSet];
    [(__CFString *)v3 rangeOfCharacterFromSet:v4];
    if (v5)
    {
      v8.var0 = 0;
      PCString::set(&v8, [-[__CFString componentsSeparatedByCharactersInSet:](v3 componentsSeparatedByCharactersInSet:{v4), "componentsJoinedByString:", &stru_2872E16E0}]);
      PCString::PCString(&v7, &v8);
      (*(this->var0 + 108))(this, &v7, 1, 0);
      PCString::~PCString(&v7);
      PCString::~PCString(&v8);
    }
  }

  return 1;
}

void sub_25FEFC13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelText::createOZChannelTextInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelText::_OZChannelTextInfo)
  {
    operator new();
  }
}

void OZChannelTextInfo::OZChannelTextInfo(OZChannelTextInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287256730;
  *(this + 10) = &unk_287256750;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelText::createOZChannelTextImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelText::_OZChannelTextImpl)
  {
    operator new();
  }
}

void OZChannelBlindData::OZChannelBlindData(OZChannelBlindData *this, const PCString *a2, void *a3, OZChannelFolder *a4, unsigned int a5, int a6, char a7, NSData *(*a8)(NSData *, NSData *, float, void *), NSData *a9, BOOL (*a10)(NSData *, NSData *, void *), NSData *a11)
{
  Instance = OZChannelBlindData_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a4, a5, a6, 0, 0);
  *this = &unk_2872567A8;
  *(this + 2) = &unk_287256B08;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  PCMutex::PCMutex((this + 176), 1);
  *(this + 22) = &unk_2871D83A0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 296) = a7;
  *(this + 38) = a8;
  *(this + 39) = [(NSData *)a9 copy];
  *(this + 40) = a10;
  *(this + 41) = [(NSData *)a11 copy];
  *(this + 336) = 1;
  PCSharedCount::PCSharedCount(this + 43);
  PCSharedCount::PCSharedCount(this + 44);
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 384) = 0;
  *(this + 47) = 0;
  OZChannelBlindDataInfo = OZChannelBlindData::createOZChannelBlindDataInfo(v20);
  *(this + 16) = OZChannelBlindDataInfo;
  *(this + 17) = OZChannelBlindDataInfo;
  OZChannelBlindData::createOZChannelBlindDataImpl(OZChannelBlindDataInfo);
  v22 = OZChannelBlindData::_OZChannelBlindDataImpl;
  *(this + 14) = OZChannelBlindData::_OZChannelBlindDataImpl;
  *(this + 15) = v22;
  OZChannelBlindData::setDefaultValue(this, a3);
  (*(*this + 280))(this, 0);
  operator new();
}

{
  OZChannelBlindData::OZChannelBlindData(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_25FEFC514(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 344));
  PCMutex::~PCMutex(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::createOZChannelBlindDataInfo(OZChannelBlindData *this)
{
  if (atomic_load_explicit(&OZChannelBlindData::createOZChannelBlindDataInfo(void)::_OZChannelBlindDataInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBlindData::createOZChannelBlindDataInfo(void)::_OZChannelBlindDataInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBlindData::createOZChannelBlindDataInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBlindData::_OZChannelBlindDataInfo;
}

uint64_t OZChannelBlindData::createOZChannelBlindDataImpl(OZChannelBlindData *this)
{
  if (atomic_load_explicit(&OZChannelBlindData::createOZChannelBlindDataImpl(void)::_OZChannelBlindDataImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBlindData::createOZChannelBlindDataImpl(void)::_OZChannelBlindDataImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBlindData::createOZChannelBlindDataImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBlindData::_OZChannelBlindDataImpl;
}

uint64_t OZChannelBlindData::setDefaultValue(OZChannelBlindData *this, void *a2)
{
  v4 = (this + 176);
  v8 = this + 176;
  PCMutex::lock((this + 176));
  LOBYTE(v9) = 1;
  *(this + 336) = 1;
  v5 = OZChannelBlindData::encodeObjectToData(this, a2);
  if (OZChannelBase::testFlag(this, 0x200000000))
  {
    v6 = *(this + 35);
    if (v5)
    {
      if (v6 && ([v6 isEqualToData:{v5, v8, v9}] & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    OZChannelBase::setFlag(this, 0x100000000, 1);
  }

LABEL_8:

  *(this + 35) = v5;
  return PCMutex::unlock(v4);
}

void OZChannelBlindData::OZChannelBlindData(OZChannelBlindData *this, OZFactory *a2, const PCString *a3, unsigned int a4, char a5, NSData *(*a6)(NSData *, NSData *, float, void *), NSData *a7, BOOL (*a8)(NSData *, NSData *, void *), NSData *a9)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  *v14 = &unk_2872567A8;
  *(v14 + 16) = &unk_287256B08;
  *(v14 + 152) = 0;
  *(v14 + 160) = 0;
  *(v14 + 168) = 0;
  PCMutex::PCMutex((v14 + 176), 1);
  *(this + 22) = &unk_2871D83A0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 296) = a5;
  *(this + 38) = a6;
  *(this + 39) = [(NSData *)a7 copy];
  *(this + 40) = a8;
  *(this + 41) = [(NSData *)a9 copy];
  *(this + 336) = 1;
  PCSharedCount::PCSharedCount(this + 43);
  PCSharedCount::PCSharedCount(this + 44);
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 384) = 0;
  *(this + 47) = 0;
  OZChannelBlindDataInfo = OZChannelBlindData::createOZChannelBlindDataInfo(v15);
  *(this + 16) = OZChannelBlindDataInfo;
  *(this + 17) = OZChannelBlindDataInfo;
  OZChannelBlindData::createOZChannelBlindDataImpl(OZChannelBlindDataInfo);
  v17 = OZChannelBlindData::_OZChannelBlindDataImpl;
  *(this + 14) = OZChannelBlindData::_OZChannelBlindDataImpl;
  *(this + 15) = v17;
  operator new();
}

{
  OZChannelBlindData::OZChannelBlindData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_25FEFC890(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 344));
  PCMutex::~PCMutex(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelBlindData::OZChannelBlindData(OZChannelBlindData *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v4 = &unk_2872567A8;
  *(v4 + 16) = &unk_287256B08;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  PCMutex::PCMutex((v4 + 176), 1);
  *(this + 22) = &unk_2871D83A0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 296) = 1;
  *(this + 336) = 1;
  PCSharedCount::PCSharedCount(this + 43);
  PCSharedCount::PCSharedCount(this + 44);
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 384) = 0;
  *(this + 47) = 0;
  operator new();
}

void sub_25FEFCA54(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 344));
  PCMutex::~PCMutex(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::copyInternalData(OZChannelBlindData *this, id *a2)
{
  v4 = (this + 176);
  v18 = this + 176;
  PCMutex::lock((this + 176));
  v19 = 1;
  *(this + 336) = 1;
  *(this + 35) = a2[35];
  *(this + 36) = a2[36];
  *(this + 296) = *(a2 + 296);
  v5 = a2[39];
  *(this + 38) = a2[38];
  v6 = [v5 copy];
  v8 = a2[40];
  v7 = a2[41];
  *(this + 39) = v6;
  *(this + 40) = v8;
  v9 = [v7 copy];
  v10 = (this + 152);
  v11 = *(this + 19);
  *(this + 41) = v9;
  if (v11 != *(this + 20))
  {
    do
    {

      v11 += 32;
    }

    while (v11 != *(this + 20));
    v11 = *v10;
  }

  *(this + 20) = v11;
  for (i = a2[19]; i != a2[20]; i += 32)
  {
    v13 = *(i + 2);
    v15 = *i;
    v16 = v13;
    v17 = 0;
    v17 = *(i + 3);
    std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](v10, &v15);
  }

  return PCMutex::unlock(v4);
}

void sub_25FEFCBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZChannelBlindData::~OZChannelBlindData(OZChannelBlindData *this)
{
  *this = &unk_2872567A8;
  *(this + 2) = &unk_287256B08;
  v2 = *(this + 34);
  if (v2)
  {
    if (*v2 && *(v2 + 8) == 1)
    {
      PCMutex::unlock(*v2);
      *(v2 + 8) = 0;
    }

    MEMORY[0x2666E9F00](v2, 0x1020C405F07FB98);
  }

  for (i = *(this + 19); i != *(this + 20); i += 32)
  {
  }

  v5 = (this + 360);
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v5);
  PCString::~PCString(this + 44);
  PCString::~PCString(this + 43);
  PCMutex::~PCMutex((this + 176));
  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  OZChannel::~OZChannel(this);
}

{
  OZChannelBlindData::~OZChannelBlindData(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelBlindData::~OZChannelBlindData(OZChannelBlindData *this)
{
  OZChannelBlindData::~OZChannelBlindData((this - 16));
}

{
  OZChannelBlindData::~OZChannelBlindData((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelBlindData::resetToDefault(OZChannelBlindData *this, char a2)
{
  OZChannel::resetToDefault(this, a2);
  PCMutex::lock((this + 176));

  *(this + 36) = 0;
  *(this + 336) = 1;
  v3 = *(this + 19);
  if (v3 != *(this + 20))
  {
    do
    {

      v3 += 32;
    }

    while (v3 != *(this + 20));
    v3 = *(this + 19);
  }

  *(this + 20) = v3;
  return PCMutex::unlock((this + 176));
}

id OZChannelBlindData::encodeObjectToData(OZChannelBlindData *this, void *a2)
{
  if (*(this + 296))
  {
    v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v3 encodeObject:a2 forKey:@"BlindDataObject"];
    [v3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"DataIsLegacy"}];
    v4 = [v3 encodedData];

    return v4;
  }

  else
  {

    return OZChannelBlindData::legacyEncodeObjectToData(this, a2);
  }
}

void std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,void *>>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

PCMutex *OZChannelBlindData::copy(OZChannelBlindData *this, const OZChannelBase *a2, char a3)
{
  var6 = a2[2].var6;
  if (*var6 && (*(var6 + 8) & 1) == 0)
  {
    PCMutex::lock(*var6);
    *(var6 + 8) = 1;
  }

  OZChannel::copy(this, a2, a3);
  OZChannelBlindData::copyInternalData(this, &a2->var0);
  v7 = a2[2].var6;
  result = *v7;
  if (*v7)
  {
    if (*(v7 + 8) == 1)
    {
      result = PCMutex::unlock(result);
      *(v7 + 8) = 0;
    }
  }

  return result;
}

uint64_t OZChannelBlindData::assign(OZChannelBlindData *this, const OZChannelBase *a2)
{
  var6 = a2[2].var6;
  if (*var6 && (*(var6 + 8) & 1) == 0)
  {
    PCMutex::lock(*var6);
    *(var6 + 8) = 1;
  }

  OZChannel::assign(this, a2);
  v19 = this + 176;
  PCMutex::lock((this + 176));
  v20 = 1;
  *(this + 336) = 1;
  v5 = *(this + 35);
  if (v5 != a2[2].var7)
  {

    *(this + 35) = a2[2].var7;
  }

  v6 = *(this + 36);
  if (v6 != a2[2].var8)
  {

    *(this + 36) = a2[2].var8;
  }

  v7 = *(this + 19);
  if (v7 != *(this + 20))
  {
    do
    {

      v7 += 32;
    }

    while (v7 != *(this + 20));
    v7 = *(this + 19);
  }

  *(this + 20) = v7;
  for (i = a2[1].var5; i != a2[1].var6; i += 4)
  {
    var0 = i[2].var0;
    v16 = *&i->var0;
    v17 = var0;
    v18 = 0;
    v18 = i[3].var0;
    std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](this + 152, &v16);
  }

  *(this + 296) = a2[2].var9;
  var11 = a2[2].var11;
  *(this + 38) = a2[2].var10;
  v11 = [(__CFString *)var11 copy];
  var12 = a2[2].var12;
  var13 = a2[2].var13;
  *(this + 39) = v11;
  *(this + 40) = var12;
  *(this + 41) = [(OZChannelTimeConverter *)var13 copy];
  v14 = a2[2].var6;
  if (*v14 && *(v14 + 8) == 1)
  {
    PCMutex::unlock(*v14);
    *(v14 + 8) = 0;
  }

  return PCMutex::unlock((this + 176));
}

void sub_25FEFD2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZChannelBlindData::compare(OZChannelBlindData *this, const OZChannelBase *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(this + 34);
  if (*v3 && (*(v3 + 8) & 1) == 0)
  {
    PCMutex::lock(*v3);
    *(v3 + 8) = 1;
  }

  var6 = a2[2].var6;
  if (*var6)
  {
    if ((*(var6 + 8) & 1) == 0)
    {
      PCMutex::lock(*var6);
      *(var6 + 8) = 1;
    }
  }

  OZChannelBlindData::OZChannelBlindData(v5, a2, a2->var6);
}

uint64_t OZChannelBlindData::writeHeader(OZChannelBlindData *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelBlindDataScope);
  (*(*a2 + 16))(a2, 110);
  (*(*a2 + 216))(a2, 110, this + 32);
  (*(*a2 + 144))(a2, 111, *(this + 6));

  return OZChannelBase::writeFlags(this, a2, 0);
}

void OZChannelBlindData::writeBody(OZChannelBlindData *this, PCSerializerWriteStream *a2, int a3)
{
  v6 = (this + 176);
  v30 = (this + 176);
  PCMutex::lock((this + 176));
  v31 = 1;
  if (a3)
  {
    OZChannelBase::writeFlags(this, a2, 1);
  }

  v8 = *(this + 19);
  v7 = *(this + 20);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 56))(a2, (v7 - v8) >> 5);
  (*(*a2 + 24))(a2);
  if (*(this + 336) == 1)
  {
    *(this + 336) = 0;
    v10 = *(this + 45);
      ;
    }

    *(this + 46) = v10;
    for (j = *(this + 19); j != *(this + 20); j += 32)
    {
      v12 = *(j + 24);
      PCAsciiStream::PCAsciiStream(&v28);
      PCAsciiStream::write(&v28, [v12 bytes], objc_msgSend(v12, "length"));
      PCAsciiStream::close(&v28);
      PCAsciiStream::getString(&v28, &v27);
      v13 = *(this + 46);
      if (v13 >= *(this + 47))
      {
        v14 = std::vector<PCString>::__emplace_back_slow_path<PCString>(this + 360, &v27);
      }

      else
      {
        PCString::PCString(*(this + 46), &v27);
        v14 = v13 + 8;
        *(this + 46) = v13 + 8;
      }

      *(this + 46) = v14;
      PCString::~PCString(&v27);
      PCAsciiStream::~PCAsciiStream(&v28);
    }

    PCAsciiStream::PCAsciiStream(&v28);
    PCAsciiStream::write(&v28, [*(this + 35) bytes], objc_msgSend(*(this + 35), "length"));
    PCAsciiStream::close(&v28);
    PCAsciiStream::getString(&v28, &v27);
    PCString::set(this + 43, &v27);
    PCString::~PCString(&v27);
    PCAsciiStream::PCAsciiStream(&v27);
    v15 = *(this + 36);
    if (!v15)
    {
      v15 = *(this + 35);
    }

    PCAsciiStream::write(&v27, [v15 bytes], objc_msgSend(v15, "length"));
    PCAsciiStream::close(&v27);
    PCAsciiStream::getString(&v27, &v26);
    PCString::set(this + 44, &v26);
    PCString::~PCString(&v26);
    PCAsciiStream::~PCAsciiStream(&v27);
    PCAsciiStream::~PCAsciiStream(&v28);
  }

  v16 = *(this + 19);
  if (v16 == *(this + 20))
  {
    v20 = 0;
  }

  else
  {
    v17 = 0;
    v18 = *(this + 45);
    do
    {
      (*(*a2 + 16))(a2, 2);
      v19 = *v16;
      v29 = *(v16 + 2);
      v28 = v19;
      (*(*a2 + 16))(a2, 3);
      (*(*a2 + 112))(a2, &v28);
      (*(*a2 + 24))(a2);
      PCString::PCString(&v25, v18);
      (*(*a2 + 16))(a2, 4);
      (*(*a2 + 104))(a2, &v25);
      (*(*a2 + 24))(a2);
      PCString::~PCString(&v25);
      (*(*a2 + 24))(a2);
      v17 += PCString::size(v18++);
      v16 += 2;
    }

    while (v16 != *(this + 20));
    v20 = v17 > 0x80000;
  }

  PCString::PCString(&v24, this + 43);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 104))(a2, &v24);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v24);
  PCString::PCString(&v23, this + 44);
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 104))(a2, &v23);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v23);
  PCSerializerWriteStream::popScope(a2);
  if (!v20 && PCString::size(this + 44) <= 0x80000)
  {
    goto LABEL_27;
  }

  v22 = *(this + 45);
    ;
  }

  *(this + 46) = v22;
  PCString::clear(this + 44);
  *(this + 336) = 1;
  v6 = v30;
  if (v30)
  {
LABEL_27:
    if (v31 == 1)
    {
      PCMutex::unlock(v6);
    }
  }
}

void sub_25FEFDC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, PCString a15, PCString a16, PCString a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  PCString::~PCString(&a16);
  PCAsciiStream::~PCAsciiStream(&a17);
  PCAsciiStream::~PCAsciiStream(&a28);
  PCLockSentry<PCMutex>::~PCLockSentry(v28 - 80);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::parseBegin(OZChannelBlindData *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelBlindDataScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelBlindData::parseBegin(OZChannelBlindData *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin((this - 16), a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelBlindDataScope);
  return 1;
}

uint64_t OZChannelBlindData::parseEnd(OZChannelBlindData *this, PCSerializerReadStream *a2)
{
  OZChannel::parseEnd(this, a2);
  if (*(this + 36) && [*(this + 35) isEqualToData:?])
  {

    *(this + 36) = 0;
  }

  return 1;
}

uint64_t OZChannelBlindData::parseElement(OZChannelBlindData *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v20 = 0;
  PCSharedCount::PCSharedCount(&v19);
  v6 = *(a3 + 2);
  if (*(a2 + 26) <= 4u)
  {
    if (v6 == 110)
    {
      (*(*a3 + 96))(a3, 114, &v19);
      v7 = MEMORY[0x277CC08F0];
      *(this + 248) = *MEMORY[0x277CC08F0];
      *(this + 33) = *(v7 + 16);
      OZChannelBase::parseElement(this, a2, a3);
    }

    goto LABEL_24;
  }

  if (v6 <= 4)
  {
    if (v6 <= 2)
    {
      if (v6 == 1)
      {
        PCSerializerReadStream::getAsInt32(a2, a3, &v20);
        goto LABEL_24;
      }

      if (v6 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v6 == 3)
    {
      PCSerializerReadStream::getAsFigTime(a2, a3, &v17);
      *(this + 248) = v17;
      *(this + 33) = v18;
      goto LABEL_24;
    }

    PCSerializerReadStream::getAsString(a2, a3, &v19);
    PCString::PCString(&v15, &v19);
    v10.var0 = &v15;
    OZChannelBlindData::setData(this, v10);
    v9 = &v15;
LABEL_22:
    PCString::~PCString(v9);
    goto LABEL_24;
  }

  if (v6 <= 109)
  {
    if (v6 == 5)
    {
      PCSerializerReadStream::getAsString(a2, a3, &v19);
      PCString::PCString(&v14, &v19);
      v11.var0 = &v14;
      OZChannelBlindData::setDefaultData(this, v11);
      v9 = &v14;
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_24;
      }

      PCSerializerReadStream::getAsString(a2, a3, &v19);
      PCString::PCString(&v13, &v19);
      v8.var0 = &v13;
      OZChannelBlindData::setValueData(this, v8);
      v9 = &v13;
    }

    goto LABEL_22;
  }

  if (v6 == 110)
  {
LABEL_19:
    OZChannelBase::parseElement(this, a2, a3);
    goto LABEL_24;
  }

  if (v6 == 112)
  {
    v16 = 0;
    if ((*(*a3 + 48))(a3, &v16))
    {
      OZChannelBase::setFlags(this, v16);
    }
  }

LABEL_24:
  PCString::~PCString(&v19);
  return 1;
}

void sub_25FEFE008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, __int16 a12, char a13, char a14)
{
  PCString::~PCString(&a11);
  PCString::~PCString((v14 - 48));
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::setData(OZChannelBlindData *this, PCString a2)
{
  PCAsciiStream::PCAsciiStream(v18);
  v4 = PCString::size(a2.var0);
  v5 = malloc_type_malloc(v4, 0x245396F0uLL);
  CStr = PCString::createCStr(a2.var0);
  PCAsciiStream::open(v18, CStr);
  v7 = PCString::size(a2.var0);
  v8 = PCAsciiStream::read(v18, v5, v7);
  PCAsciiStream::close(v18);
  free(CStr);
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 length:v8];
  v16 = this + 176;
  PCMutex::lock((this + 176));
  v17 = 1;
  *(this + 336) = 1;
  if (v9)
  {
    v10 = v9;
    v13 = *(this + 248);
    v14 = *(this + 33);
    v15 = v9;
    (*(*this + 336))(&v12, this, this + 248);
    OZChannel::addKeypointAt(this, &v12);
    std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](this + 152, &v13);
  }

  PCMutex::unlock((this + 176));
  PCAsciiStream::~PCAsciiStream(v18);
  return 0;
}

void sub_25FEFE1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  PCAsciiStream::~PCAsciiStream(va1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::setDefaultData(OZChannelBlindData *this, PCString a2)
{
  PCAsciiStream::PCAsciiStream(v14);
  v4 = PCString::size(a2.var0);
  v5 = malloc_type_malloc(v4, 0x3EED7F68uLL);
  CStr = PCString::createCStr(a2.var0);
  PCAsciiStream::open(v14, CStr);
  v7 = PCString::size(a2.var0);
  v8 = PCAsciiStream::read(v14, v5, v7);
  PCAsciiStream::close(v14);
  free(CStr);
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 length:v8];
  PCMutex::lock((this + 176));
  *(this + 336) = 1;
  if (!OZChannelBase::testFlag(this, 0x200000000))
  {
LABEL_8:
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v10 = *(this + 35);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    OZChannelBase::setFlag(this, 0x100000000, 1);
    goto LABEL_8;
  }

  if (([v10 isEqualToData:v9] & 1) == 0)
  {
    OZChannelBase::setFlag(this, 0x100000000, 1);
  }

LABEL_9:
  v11 = *(this + 35);
  if (v11)
  {
  }

  v12 = v9;
  *(this + 35) = v9;
LABEL_12:
  PCMutex::unlock((this + 176));
  PCAsciiStream::~PCAsciiStream(v14);
  return 0;
}

void sub_25FEFE32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCAsciiStream::~PCAsciiStream(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::setValueData(OZChannelBlindData *this, PCString a2)
{
  PCAsciiStream::PCAsciiStream(v13);
  v4 = PCString::size(a2.var0);
  v5 = malloc_type_malloc(v4, 0x9A99EF4FuLL);
  CStr = PCString::createCStr(a2.var0);
  PCAsciiStream::open(v13, CStr);
  v7 = PCString::size(a2.var0);
  v8 = PCAsciiStream::read(v13, v5, v7);
  PCAsciiStream::close(v13);
  free(CStr);
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 length:v8];
  PCMutex::lock((this + 176));
  *(this + 336) = 1;
  if (v9)
  {
    v10 = *(this + 36);
    if (v10)
    {
    }

    v11 = v9;
    *(this + 36) = v9;
  }

  PCMutex::unlock((this + 176));
  PCAsciiStream::~PCAsciiStream(v13);
  return 0;
}

void sub_25FEFE458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCAsciiStream::~PCAsciiStream(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::calcHashForState(OZChannelBlindData *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  result = OZChannelBase::testFlag(this, 128);
  if ((result & 1) == 0)
  {
    v7 = (this + 176);
    v14 = this + 176;
    PCMutex::lock((this + 176));
    v15 = 1;
    OZChannel::calcHashForState(this, a2, a3);
    PluginDataPtr = OZChannelBlindData::getPluginDataPtr(this, a3);
    v9 = OZChannelBlindData::encodeObjectToData(this, PluginDataPtr);
    PCAsciiStream::PCAsciiStream(v13);
    PCSharedCount::PCSharedCount(&v12);
    PCAsciiStream::write(v13, [v9 bytes], objc_msgSend(v9, "length"));
    PCAsciiStream::close(v13);
    PCAsciiStream::getString(v13, &v11);
    PCString::set(&v12, &v11);
    PCString::~PCString(&v11);
    PCSerializerWriteStream::pushScope(a2, &OZChannelBlindDataScope);
    PCString::PCString(&v10, &v12);
    (*(*a2 + 16))(a2, 4);
    (*(*a2 + 104))(a2, &v10);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v10);
    PCSerializerWriteStream::popScope(a2);

    PCString::~PCString(&v12);
    PCAsciiStream::~PCAsciiStream(v13);
    return PCMutex::unlock(v7);
  }

  return result;
}

void sub_25FEFE654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, char a12)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCAsciiStream::~PCAsciiStream(&a12);
  PCLockSentry<PCMutex>::~PCLockSentry(v12 - 48);
  _Unwind_Resume(a1);
}

NSData *OZChannelBlindData::getPluginDataPtr(OZChannelBlindData *this, const CMTime *a2)
{
  v4 = (this + 176);
  v26 = (this + 176);
  PCMutex::lock((this + 176));
  v27 = 1;
  memset(&v25, 0, sizeof(v25));
  (*(*this + 328))(&v25, this, a2);
  if (!(*(*this + 552))(this, 0))
  {
    v10 = *(this + 36);
    if (!v10)
    {
      v10 = *(this + 35);
    }

    goto LABEL_14;
  }

  Keyframe = OZChannelBlindData::findKeyframe(this, &v25, 1);
  v6 = Keyframe;
  v7 = *(this + 19);
  v8 = Keyframe - 2;
  if (v7 == Keyframe)
  {
    v9 = *(this + 19);
  }

  else
  {
    v9 = Keyframe - 2;
  }

  v10 = *(v9 + 3);
  if (*(this + 20) == Keyframe)
  {
    goto LABEL_14;
  }

  v11 = OZChannelBlindData::decodeObjectFromData(this, *(Keyframe + 3));
  if (!v11)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"Unable to unarchive data" userInfo:0]);
  }

  time1 = v25;
  v12 = *v6;
  time2.epoch = *(v6 + 2);
  *&time2.value = v12;
  if (!CMTimeCompare(&time1, &time2))
  {
    goto LABEL_15;
  }

  if (v7 == v6)
  {
LABEL_14:
    v11 = OZChannelBlindData::decodeObjectFromData(this, v10);
    v4 = v26;
    if (!v26)
    {
      return v11;
    }

    goto LABEL_15;
  }

  v13 = OZChannelBlindData::decodeObjectFromData(this, *(v9 + 3));
  if (!v13)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"Unable to unarchive data" userInfo:0]);
  }

  time1 = v25;
  v14 = *v8;
  time2.epoch = *(v8 + 2);
  *&time2.value = v14;
  PC_CMTimeSaferSubtract(&time1, &time2, &v24);
  v15 = *v6;
  time1.epoch = *(v6 + 2);
  *&time1.value = v15;
  v16 = *v8;
  time2.epoch = *(v8 + 2);
  *&time2.value = v16;
  PC_CMTimeSaferSubtract(&time1, &time2, v23);
  operator/(&v24, v23, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  v18 = Seconds;
  if (*(this + 296) != 1)
  {
    if (objc_opt_respondsToSelector())
    {
      *&v22 = v18;
      v20 = [(NSData *)v13 interpolateBetween:v11 withWeight:v22];
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v19 = Seconds;
  v20 = (*(this + 38))(v13, v11, *(this + 39), v19);
LABEL_20:
  v11 = v20;
LABEL_15:
  if (v27 == 1)
  {
    PCMutex::unlock(v4);
  }

  return v11;
}

void sub_25FEFE994(void *a1)
{
  objc_begin_catch(a1);
  PCString::cf_str(v1 + 4);
  NSLog(&cfstr_UnableToUnarch_1.isa);
  objc_end_catch();
  JUMPOUT(0x25FEFE8BCLL);
}

void sub_25FEFE9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZChannelBlindData::setInterpolateContext(OZChannelBlindData *this, NSData *a2)
{
  v4 = *(this + 39);
  *(this + 39) = [(NSData *)a2 copy];

  v5 = *(this + 41);
  *(this + 41) = [(NSData *)a2 copy];
}

__int128 *OZChannelBlindData::findKeyframe(OZChannelBlindData *this, const CMTime *a2, int a3)
{
  v3 = *(this + 19);
  v4 = *(this + 20);
  if (v4 == v3)
  {
    return v4;
  }

  v7 = (v4 - v3) >> 5;
  do
  {
    v8 = &v3[2 * (v7 >> 1)];
    v9 = *v8;
    time1.epoch = *(v8 + 2);
    *&time1.value = v9;
    v13 = *a2;
    v10 = CMTimeCompare(&time1, &v13);
    if (v10 >= 0)
    {
      v7 >>= 1;
    }

    else
    {
      v7 += ~(v7 >> 1);
    }

    if (v10 < 0)
    {
      v3 = v8 + 2;
    }
  }

  while (v7);
  if (v3 == v4)
  {
    return v4;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return v4;
    }

    v11 = *v3;
    time1.epoch = *(v3 + 2);
    *&time1.value = v11;
    v13 = *a2;
    if (CMTimeCompare(&time1, &v13))
    {
      return v4;
    }
  }

  return v3;
}

NSData *OZChannelBlindData::decodeObjectFromData(OZChannelBlindData *this, NSData *a2)
{
  v2 = a2;
  if (*(this + 296))
  {
    v8 = 0;
    v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a2 error:&v8];
    if (!v3)
    {
      v4 = MEMORY[0x277CBEAD8];
      v5 = [v8 localizedFailureReason];
      [v4 raise:*MEMORY[0x277CBE728] format:{@"%@", v5}];
    }

    v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"DataIsLegacy"];
    if (v6)
    {
      if (([v6 BOOLValue] & 1) == 0)
      {
        v2 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"BlindDataObject"];
      }
    }

    return v2;
  }

  else
  {

    return OZChannelBlindData::legacyDecodeObjectFromData(this, a2);
  }
}

void sub_25FEFEC88(void *a1)
{
  objc_begin_catch(a1);
  PCString::cf_str(v1 + 4);
  [0 error];
  NSLog(&cfstr_UnableToUnarch_2.isa);
  objc_end_catch();
  JUMPOUT(0x25FEFEC40);
}

uint64_t OZChannelBlindData::setPluginDataPtr(OZChannelBlindData *this, const CMTime *a2, void *a3, char a4, int a5, char a6)
{
  memset(&v21, 0, sizeof(v21));
  (*(*this + 328))(&v21);
  if ((a4 & 1) == 0)
  {
    (*(*this + 464))(this, 1);
  }

  v19 = this + 176;
  PCMutex::lock((this + 176));
  v20 = 1;
  *(this + 336) = 1;

  *(this + 36) = 0;
  if (((*(*this + 552))(this, 0) & 1) == 0 && !OZChannel::isAnimated(this))
  {
    *(this + 36) = OZChannelBlindData::encodeObjectToData(this, a3);
    return PCMutex::unlock((this + 176));
  }

  if (!a3)
  {
    (*(*this + 608))(this, a2);
    return PCMutex::unlock((this + 176));
  }

  Keyframe = OZChannelBlindData::findKeyframe(this, &v21, 1);
  v13 = OZChannelBlindData::encodeObjectToData(this, a3);
  v17 = v21;
  v18 = v13;
  if (*(this + 20) == Keyframe)
  {
    std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](this + 152, &v17);
    if (!a5)
    {
      return PCMutex::unlock((this + 176));
    }

    goto LABEL_9;
  }

  v14 = *Keyframe;
  time1.epoch = *(Keyframe + 2);
  *&time1.value = v14;
  time2 = v21;
  if (CMTimeCompare(&time1, &time2))
  {
    std::vector<std::pair<CMTime,void *>>::insert(this + 19, Keyframe, &v17.value);
    if (a5)
    {
LABEL_9:
      (*(*this + 336))(&time1, this, &v21);
      OZChannel::addKeypointAt(this, &time1);
    }
  }

  else if (a6)
  {
    v15 = *(Keyframe + 3);
    *(Keyframe + 3) = v13;
  }

  else
  {
    std::vector<std::pair<CMTime,void *>>::insert(this + 19, Keyframe + 2, &v17.value);
  }

  return PCMutex::unlock((this + 176));
}

void sub_25FEFEFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

__int128 *std::vector<std::pair<CMTime,void *>>::insert(void *a1, __int128 *a2, __int128 *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 5) + 1;
    if (v12 >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v5 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v36 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,void *>>>(a1, v15);
    }

    v33 = 0;
    v34 = 32 * v16;
    v35 = (32 * v16);
    std::__split_buffer<std::pair<CMTime,void *>>::emplace_back<std::pair<CMTime,void *> const&>(&v33, a3);
    v18 = v34;
    memcpy(v35, v3, a1[1] - v3);
    v19 = *a1;
    v20 = v34;
    *&v35 = v35 + a1[1] - v3;
    a1[1] = v3;
    v21 = v3 - v19;
    v22 = (v20 - (v3 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v35;
    *&v35 = v23;
    *(&v35 + 1) = v24;
    v33 = v23;
    v34 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else
  {
    v7 = a2 - v6;
    if (a2 == v6)
    {
      v17 = a3[1];
      *v6 = *a3;
      v6[1] = v17;
      a1[1] = v6 + 2;
    }

    else
    {
      v8 = v6 - 2;
      if (v6 < 0x20)
      {
        v9 = a1[1];
      }

      else
      {
        v9 = v6 + 2;
        v10 = *(v6 - 1);
        *v6 = *v8;
        v6[1] = v10;
      }

      a1[1] = v9;
      if (v6 != a2 + 2)
      {
        v25 = v6 - 4;
        v26 = v7 + 32;
        do
        {
          v27 = *v25;
          *(v8 + 2) = *(v25 + 2);
          *v8 = v27;
          *(v8 + 3) = *(v25 + 3);
          v25 -= 2;
          v8 -= 2;
          v26 += 32;
        }

        while (v26);
        v9 = a1[1];
      }

      v28 = v9 <= a3 || a2 > a3;
      v29 = 2;
      if (v28)
      {
        v29 = 0;
      }

      v30 = &a3[v29];
      v31 = *v30;
      *(a2 + 2) = *(v30 + 2);
      *a2 = v31;
      *(a2 + 3) = *(v30 + 3);
    }
  }

  return v3;
}

void sub_25FEFF1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelBlindData::isModified(OZChannelBlindData *this)
{
  if (*(this + 36))
  {
    return 1;
  }

  else
  {
    return OZChannel::isModified(this);
  }
}

BOOL OZChannelBlindData::hasKeypointAt(OZChannelBlindData *this, const CMTime *a2)
{
  v4 = (this + 176);
  v17 = this + 176;
  PCMutex::lock((this + 176));
  v18 = 1;
  v15 = 0uLL;
  v16 = 0;
  (*(*this + 328))(&v15, this, a2);
  v6 = *(this + 19);
  v5 = *(this + 20);
  *&v14.value = v15;
  v14.epoch = v16;
  if (v5 == v6)
  {
    goto LABEL_11;
  }

  v7 = (v5 - v6) >> 5;
  do
  {
    v8 = &v6[2 * (v7 >> 1)];
    v9 = *v8;
    time1.epoch = *(v8 + 2);
    *&time1.value = v9;
    time2 = v14;
    v10 = CMTimeCompare(&time1, &time2);
    if (v10 >= 0)
    {
      v7 >>= 1;
    }

    else
    {
      v7 += ~(v7 >> 1);
    }

    if (v10 < 0)
    {
      v6 = v8 + 2;
    }
  }

  while (v7);
  if (v6 == v5)
  {
LABEL_11:
    v12 = 0;
  }

  else
  {
    time1 = v14;
    v11 = *v6;
    time2.epoch = *(v6 + 2);
    *&time2.value = v11;
    v12 = CMTimeCompare(&time1, &time2) >= 0;
  }

  PCMutex::unlock(v4);
  return v12;
}

void sub_25FEFF384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::addKeypointAt(OZChannelBlindData *this, const CMTime *a2)
{
  result = (*(*this + 512))(this);
  if (result)
  {
    OZChannel::addKeypointAt(this, a2);
    memset(&v30, 0, sizeof(v30));
    (*(*this + 328))(&v30, this, a2);
    v28 = this + 176;
    PCMutex::lock((this + 176));
    v29 = 1;
    *(this + 336) = 1;
    Keyframe = OZChannelBlindData::findKeyframe(this, &v30, 1);
    v6 = Keyframe;
    v7 = *(this + 20);
    if (v7 != Keyframe)
    {
      v8 = *Keyframe;
      v22.epoch = *(Keyframe + 2);
      *&v22.value = v8;
      time2 = v30;
      if (CMTimeCompare(&v22, &time2))
      {
        if (*(this + 19) == v6)
        {
          v9 = *(this + 19);
        }

        else
        {
          v9 = (v6 - 2);
        }

        value = v9[1].value;
        OZChannelBlindData::decodeObjectFromData(this, value);
        if (objc_opt_respondsToSelector())
        {
          if (*(this + 19) == v6)
          {
            v16 = *(v6 + 3);
          }

          else
          {
            *&v27.value = *v6;
            v11 = *(v6 + 3);
            v27.epoch = *(v6 + 2);
            v26 = *v9;
            v22 = v30;
            time2 = v26;
            PC_CMTimeSaferSubtract(&v22, &time2, &v25);
            v22 = v27;
            time2 = v26;
            PC_CMTimeSaferSubtract(&v22, &time2, v24);
            operator/(&v25, v24, &v22);
            Seconds = CMTimeGetSeconds(&v22);
            v13 = OZChannelBlindData::decodeObjectFromData(this, v11);
            v14 = OZChannelBlindData::decodeObjectFromData(this, value);
            *&v15 = Seconds;
            v16 = OZChannelBlindData::encodeObjectToData(this, [(NSData *)v14 interpolateBetween:v13 withWeight:v15]);
          }

          v22 = v30;
          v23 = v16;
          std::vector<std::pair<CMTime,void *>>::insert(this + 19, v6, &v22.value);
        }

        else
        {
          *&v22.value = *&v30.value;
          v19 = *(v6 + 3);
          v22.epoch = v30.epoch;
          v23 = v19;
          v20 = v19;
          std::vector<std::pair<CMTime,void *>>::insert(this + 19, v6, &v22.value);
        }
      }

      return PCMutex::unlock((this + 176));
    }

    if (*(this + 19) == Keyframe)
    {
      v18 = *(this + 36);
      if (v18)
      {
        goto LABEL_15;
      }

      v17 = (this + 280);
    }

    else
    {
      v17 = v7 - 1;
    }

    v18 = *v17;
LABEL_15:
    v21 = v18;
    v22 = v30;
    v23 = v21;
    std::vector<std::pair<CMTime,void *>>::push_back[abi:ne200100](this + 152, &v22);
    return PCMutex::unlock((this + 176));
  }

  return result;
}

uint64_t OZChannelBlindData::deleteKeypointAt(OZChannelBlindData *this, const CMTime *a2)
{
  v4 = (this + 176);
  v13 = this + 176;
  PCMutex::lock((this + 176));
  v14 = 1;
  memset(&v12, 0, sizeof(v12));
  (*(*this + 328))(&v12, this, a2);
  *(this + 336) = 1;
  Keyframe = OZChannelBlindData::findKeyframe(this, &v12, 0);
  v6 = *(this + 20);
  if (v6 != Keyframe)
  {
    if ((v6 - *(this + 19)) == 32)
    {

      *(this + 36) = *(Keyframe + 3);
    }

    v7 = *(this + 20);
    if (Keyframe + 2 != v7)
    {
      do
      {
        v8 = Keyframe + 2;
        *Keyframe = Keyframe[2];
        v9 = *(Keyframe + 7);
        *(Keyframe + 2) = *(Keyframe + 6);
        *(Keyframe + 3) = v9;
        v10 = Keyframe + 4;
        Keyframe += 2;
      }

      while (v10 != v7);
      Keyframe = v8;
    }

    *(this + 20) = Keyframe;
    OZChannel::deleteKeypointAt(this, a2);
  }

  return PCMutex::unlock(v4);
}

void sub_25FEFF80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::previousKeypoint(OZChannelBlindData *this, CMTime *a2)
{
  v4 = (this + 176);
  v16 = (this + 176);
  PCMutex::lock((this + 176));
  v17 = 1;
  memset(&v15, 0, sizeof(v15));
  (*(*this + 328))(&v15, this, a2);
  v5 = *(this + 19);
  if (*(this + 20) == v5)
  {
    goto LABEL_16;
  }

  time1 = v15;
  v6 = *v5;
  time2.epoch = *(v5 + 2);
  *&time2.value = v6;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    goto LABEL_16;
  }

  v7 = *(this + 19);
  v8 = *(this + 20);
  if (v8 != v7)
  {
    v9 = (v8 - v7) >> 5;
    v8 = *(this + 19);
    do
    {
      v10 = &v8[2 * (v9 >> 1)];
      v11 = *v10;
      time1.epoch = *(v10 + 2);
      *&time1.value = v11;
      time2 = v15;
      v12 = CMTimeCompare(&time1, &time2);
      if (v12 >= 0)
      {
        v9 >>= 1;
      }

      else
      {
        v9 += ~(v9 >> 1);
      }

      if (v12 < 0)
      {
        v8 = v10 + 2;
      }
    }

    while (v9);
    v7 = *(this + 19);
  }

  if (v7 == v8)
  {
LABEL_16:
    v13 = 0;
  }

  else
  {
    (*(*this + 336))(&time1, this, v8 - 2);
    *a2 = time1;
    v4 = v16;
    if (!v16)
    {
      return 1;
    }

    v13 = 1;
    if ((v17 & 1) == 0)
    {
      return v13;
    }
  }

  PCMutex::unlock(v4);
  return v13;
}

void sub_25FEFF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::nextKeypoint(OZChannelBlindData *this, CMTime *a2)
{
  v4 = (this + 176);
  v13 = this + 176;
  PCMutex::lock((this + 176));
  v14 = 1;
  memset(&v12, 0, sizeof(v12));
  (*(*this + 328))(&v12, this, a2);
  v5 = *(this + 19);
  v6 = *(this + 20) - v5;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6 >> 5;
  do
  {
    v8 = &v5[2 * (v7 >> 1)];
    time1 = v12;
    v9 = *v8;
    time2.epoch = *(v8 + 2);
    *&time2.value = v9;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v7 >>= 1;
    }

    else
    {
      v5 = v8 + 2;
      v7 += ~(v7 >> 1);
    }
  }

  while (v7);
  if (v5 == *(this + 20))
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    (*(*this + 336))(&time1, this, v5);
    *a2 = time1;
    v10 = 1;
  }

  PCMutex::unlock(v4);
  return v10;
}

void sub_25FEFFB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::visibleKeypoints@<X0>(OZChannelBlindData *this@<X0>, CMTimeRange *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = (this + 176);
  v19 = this + 176;
  PCMutex::lock((this + 176));
  v20 = 1;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v9 = *&a2->start.epoch;
  *&v18.start.value = *&a2->start.value;
  *&v18.start.epoch = v9;
  *&v18.duration.timescale = *&a2->duration.timescale;
  (*(*this + 328))(&range, this, a2);
  *&v18.start.value = *&range.start.value;
  v18.start.epoch = range.start.epoch;
  std::vector<CMTime>::reserve(a4, (*(this + 20) - *(this + 19)) >> 5);
  memset(&v17, 0, sizeof(v17));
  range = v18;
  CMTimeRangeGetEnd(&v17, &range);
  v10 = *(this + 19);
  if (v10 != *(this + 20))
  {
    v11 = *(MEMORY[0x277CC0898] + 12);
    while (1)
    {
      v21 = *v10;
      v12 = *(v10 + 12);
      v22 = *(v10 + 8);
      v13 = *(v10 + 16);
      range.start.value = v21;
      range.start.timescale = v22;
      range.start.flags = v12;
      range.start.epoch = v13;
      v15 = v17;
      if (CMTimeCompare(&range.start, &v15) < 0)
      {
        LOBYTE(v11) = v12;
      }

      range = v18;
      v15.value = v21;
      v15.timescale = v22;
      v15.flags = v12;
      v15.epoch = v13;
      if (CMTimeRangeContainsTime(&range, &v15))
      {
        if (a3 && (v11 & 1) != 0)
        {
          range.start.value = v21;
          range.start.timescale = v22;
          range.start.flags = v12;
          range.start.epoch = v13;
          (*(*this + 336))(&v15, this, &range);
          std::vector<CMTime>::push_back[abi:ne200100](a4, &v15.value);
        }

        range.start.value = v21;
        range.start.timescale = v22;
        range.start.flags = v12;
        range.start.epoch = v13;
        (*(*this + 336))(&v15, this, &range);
        std::vector<CMTime>::push_back[abi:ne200100](a4, &v15.value);
      }

      range.start.value = v21;
      range.start.timescale = v22;
      range.start.flags = v12;
      range.start.epoch = v13;
      v15 = v17;
      if (CMTimeCompare(&range.start, &v15) >= 1)
      {
        break;
      }

      v10 += 32;
      if (v10 == *(this + 20))
      {
        return PCMutex::unlock(v8);
      }
    }

    if (a3 && (v12 & 1) != 0)
    {
      range.start.value = v21;
      range.start.timescale = v22;
      range.start.flags = v12;
      range.start.epoch = v13;
      (*(*this + 336))(&v15, this, &range);
      std::vector<CMTime>::push_back[abi:ne200100](a4, &v15.value);
    }
  }

  return PCMutex::unlock(v8);
}

void sub_25FEFFF08(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(v2 - 120);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::moveKeypointTo@<X0>(OZChannelBlindData *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = (this + 176);
  v23 = this + 176;
  PCMutex::lock((this + 176));
  v24 = 1;
  memset(&v22, 0, sizeof(v22));
  (*(*this + 328))(&v22, this, a2);
  *(this + 336) = 1;
  Keyframe = OZChannelBlindData::findKeyframe(this, &v22, 0);
  v14 = *(this + 20);
  if (v14 != Keyframe)
  {
    v15 = *(Keyframe + 3);
    if (Keyframe + 2 != v14)
    {
      do
      {
        v16 = Keyframe + 2;
        *Keyframe = Keyframe[2];
        v17 = *(Keyframe + 7);
        *(Keyframe + 2) = *(Keyframe + 6);
        *(Keyframe + 3) = v17;
        v18 = Keyframe + 4;
        Keyframe += 2;
      }

      while (v18 != v14);
      Keyframe = v16;
    }

    *(this + 20) = Keyframe;
    v19 = OZChannelBlindData::decodeObjectFromData(this, v15);
    OZChannelBlindData::setPluginDataPtr(this, a3, v19, 0, 0, 1);

    OZChannel::moveKeypointTo(this, a2, a3, a4, a5, &v21);
  }

  *a6 = *&a3->value;
  *(a6 + 16) = a3->epoch;
  return PCMutex::unlock(v12);
}

void sub_25FF000C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBlindData::moveKeyframe(OZChannelBlindData *this, void *a2, const CMTime *a3, BOOL a4, char a5)
{
  v9 = (this + 176);
  v21 = this + 176;
  PCMutex::lock((this + 176));
  v22 = 1;
  v20 = **&MEMORY[0x277CC08F0];
  v19 = *a3;
  if ((OZChannel::getKeyframe(this, a2, &v20, 0) & 1) == 0 || (*(this + 336) = 1, Keyframe = OZChannelBlindData::findKeyframe(this, &v20, 0), v11 = *(this + 20), v11 == Keyframe))
  {
    v17 = 0;
  }

  else
  {
    v12 = *(Keyframe + 3);
    if (Keyframe + 2 != v11)
    {
      do
      {
        v13 = Keyframe + 2;
        *Keyframe = Keyframe[2];
        v14 = *(Keyframe + 7);
        *(Keyframe + 2) = *(Keyframe + 6);
        *(Keyframe + 3) = v14;
        v15 = Keyframe + 4;
        Keyframe += 2;
      }

      while (v15 != v11);
      Keyframe = v13;
    }

    *(this + 20) = Keyframe;
    v16 = OZChannelBlindData::decodeObjectFromData(this, v12);
    OZChannelBlindData::setPluginDataPtr(this, &v19, v16, 0, 0, a5);

    OZChannel::moveKeyframe(this, a2, &v19);
    v17 = 1;
  }

  PCMutex::unlock(v9);
  return v17;
}

void sub_25FF00248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

id OZChannelBlindData::legacyEncodeObjectToData(OZChannelBlindData *this, void *a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:a2];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

void sub_25FF003F8(void *a1)
{
  __cxa_begin_catch(a1);

  if (*(v2 + 384) == 1)
  {
    v5 = [objc_alloc(*(v4 + 2736)) initRequiringSecureCoding:0];
    [v5 encodeObject:v1];
    [v5 finishEncoding];
    [v5 encodedData];
  }

  __cxa_end_catch();
  JUMPOUT(0x25FF003E0);
}

uint64_t OZChannelBlindData::legacyDecodeObjectFromData(OZChannelBlindData *this, NSData *a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingWithData:a2];
  v3 = [v2 decodeObject];

  return v3;
}

void sub_25FF004C0(void *a1)
{
  objc_begin_catch(a1);
  PCString::cf_str(v1 + 4);
  NSLog(&cfstr_UnableToUnarch_1.isa);
  objc_end_catch();
  JUMPOUT(0x25FF004A4);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBlindData::createOZChannelBlindDataInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelBlindData::_OZChannelBlindDataInfo)
  {
    operator new();
  }
}

void OZChannelBlindDataInfo::OZChannelBlindDataInfo(OZChannelBlindDataInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287256B78;
  *(this + 10) = &unk_287256B98;
}

void OZChannelBlindData::createOZChannelBlindDataImpl(void)::{lambda(void)#1}::operator()()
{
  if (!OZChannelBlindData::_OZChannelBlindDataImpl)
  {
    operator new();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,void *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<std::pair<CMTime,void *>>::emplace_back<std::pair<CMTime,void *> const&>(void *a1, __int128 *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v8 = v2 - *a1;
      v7 = v8 == 0;
      v9 = v8 >> 4;
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,void *>>>(a1[4], v10);
    }

    v5 = ((v4 - *a1) >> 5) + 1;
    v3 = &v4[-2 * (v5 / 2)];
    if (v4 != v2)
    {
      do
      {
        v6 = *v4;
        *(v3 + 2) = *(v4 + 2);
        *v3 = v6;
        *(v3 + 3) = *(v4 + 3);
        v4 += 2;
        v3 += 2;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[2 * (v5 / -2)];
    a1[2] = v3;
  }

  result = *a2;
  v12 = a2[1];
  *v3 = *a2;
  v3[1] = v12;
  a1[2] += 32;
  return result;
}

void OZChannelTransformSwitch::OZChannelTransformSwitch(OZChannelTransformSwitch *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_287256BF0;
  *(v6 + 2) = &unk_287256F38;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v12, @"Channel Position");
  OZChannelBool::OZChannelBool((this + 136), &v12, this, 1u, 2u, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v12, @"Channel Scale");
  OZChannelBool::OZChannelBool((this + 288), &v12, this, 2u, 2u, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v12, @"Channel Rotation");
  OZChannelBool::OZChannelBool((this + 440), &v12, this, 3u, 2u, 0, 0);
  PCString::~PCString(&v12);
}

void sub_25FF009A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + 288));
  OZChannelBool::~OZChannelBool((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelTransformSwitch::OZChannelTransformSwitch(OZChannelTransformSwitch *this, const OZChannelTransformSwitch *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_287256BF0;
  *(v5 + 16) = &unk_287256F38;
  OZChannelBool::OZChannelBool((v5 + 136), (a2 + 136), this);
  OZChannelBool::OZChannelBool((this + 288), (a2 + 288), this);
  OZChannelBool::OZChannelBool((this + 440), (a2 + 440), this);
}

void sub_25FF00AA0(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 288));
  OZChannelBool::~OZChannelBool((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelTransformSwitch::copy(OZChannelTransformSwitch *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);

  OZChannel::copy((this + 440), (v4 + 440), a3);
}

void OZChannelTransformSwitch::~OZChannelTransformSwitch(OZChannelTransformSwitch *this)
{
  OZChannelTransformSwitch::~OZChannelTransformSwitch(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287256BF0;
  *(this + 2) = &unk_287256F38;
  OZChannelBool::~OZChannelBool((this + 440));
  OZChannelBool::~OZChannelBool((this + 288));
  OZChannelBool::~OZChannelBool((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

void non-virtual thunk toOZChannelTransformSwitch::~OZChannelTransformSwitch(OZChannelTransformSwitch *this)
{
  OZChannelTransformSwitch::~OZChannelTransformSwitch((this - 16));
}

{
  OZChannelTransformSwitch::~OZChannelTransformSwitch((this - 16));

  JUMPOUT(0x2666E9F00);
}

void sub_25FF00E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FF010F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FF0160C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, CGColorSpace *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCCFRef<CGColorSpace *>::~PCCFRef(va1);
  _Unwind_Resume(a1);
}

void sub_25FF01CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void sub_25FF023EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZChannelVaryingFolder::OZChannelVaryingFolder(OZChannelVaryingFolder *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, 0);
  *v6 = &unk_287256FA8;
  *(v6 + 16) = &unk_287257280;
  *(v6 + 56) |= 0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v6);
}

void OZChannelVaryingFolder::OZChannelVaryingFolder(OZChannelVaryingFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v4 = &unk_287256FA8;
  *(v4 + 16) = &unk_287257280;
  *(v4 + 56) |= 0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v4);
}

void OZChannelVaryingFolder::OZChannelVaryingFolder(OZChannelVaryingFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelVaryingFolder_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_287256FA8;
  *(this + 2) = &unk_287257280;
  *(this + 7) |= 0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v11);
}

void OZChannelVaryingFolder::OZChannelVaryingFolder(OZChannelVaryingFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_287256FA8;
  v5[2] = &unk_287257280;
  var0 = a2[1].var0;
  if (var0)
  {
    v7 = *var0;
    v8 = var0[1];
    while (v7 != v8)
    {
      v9 = (*(**v7 + 248))();
      v9->var6 = this;
      OZChannelFolder::push_back(this, v9);
      v7 += 8;
    }
  }
}

void OZChannelVaryingFolder::~OZChannelVaryingFolder(OZChannelFolder *this)
{
  *this = &unk_287256FA8;
  *(this + 2) = &unk_287257280;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    while (v3 != v4)
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }
  }

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZChannelVaryingFolder::~OZChannelVaryingFolder(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelVaryingFolder::~OZChannelVaryingFolder(OZChannelVaryingFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));
}

{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *OZChannelVaryingFolder::resetToDefault(OZChannelVaryingFolder *this)
{
  (*(*this + 352))(this);
  result = (*(*this + 464))(this, 1);
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      do
      {
        OZChannelBase::unregisterParent(*v4, (*v4)->var6);
        result = *v4;
        if (*v4)
        {
          result = (*(result->var0 + 1))(result);
        }

        *v4++ = 0;
      }

      while (v4 != v5);
      v3 = *(this + 14);
      v4 = *v3;
    }

    v3[1] = v4;
  }

  return result;
}

void OZChannelVaryingFolder::copy(OZChannelFolder *this, const OZChannelBase *a2)
{
  OZChannelFolder::copy(this, a2);
  if (a2)
  {
  }

  else
  {
    v4 = 0;
  }

  OZChannelVaryingFolder::copyDescendants(this, v4);
}

void OZChannelVaryingFolder::copyDescendants(OZChannelFolder *this, const OZChannelVaryingFolder *a2)
{
  (*(*this + 288))(this, 0);
  v4 = *(a2 + 14);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    while (v5 != v6)
    {
      v7 = *v5++;
      v8 = (*(*v7 + 248))(v7);
      v8->var6 = this;
      OZChannelFolder::push_back(this, v8);
    }
  }

  else
  {
    v9 = *(this + 14);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        *(v9 + 8) = v10;
        operator delete(v10);
      }

      MEMORY[0x2666E9F00](v9, 0x80C40D6874129);
    }

    *(this + 14) = 0;
  }
}

void OZChannelVaryingFolder::assign(OZChannelBase *this, const OZChannelBase *a2)
{
  OZChannelBase::assign(this, a2);
  if (a2)
  {
  }

  else
  {
    v4 = 0;
  }

  OZChannelVaryingFolder::copyDescendants(this, v4);
}

uint64_t OZChannelVaryingFolder::allowsAssignment(OZChannelBase *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    v4 = result;
    result = OZChannelBase::allowsAssignment(this, result);
    if (result)
    {
      var0 = this[1].var0;
      if (var0 && (v6 = *(v4 + 112)) != 0)
      {
        v7 = *var0;
        v8 = var0[1];
        v9 = v6[1];
        if (*v6 == v9 || v7 == v8)
        {
          return 1;
        }

        else
        {
          v11 = v7 + 8;
          v12 = *v6 + 8;
          do
          {
            result = (*(**(v11 - 1) + 264))(*(v11 - 1), *(v12 - 8));
            if (result)
            {
              v13 = v12 == v9;
            }

            else
            {
              v13 = 1;
            }

            v14 = v13 || v11 == v8;
            v11 += 8;
            v12 += 8;
          }

          while (!v14);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

OZChannelFolder *OZChannelVaryingFolder::setValue(OZChannelFolder *this, const OZChannelBase *lpsrc)
{
  {

    return OZChannelFolder::operator=(this);
  }

  else
  {

    return OZChannelFolder::setValue(this, lpsrc);
  }
}

void *OZChannelVaryingFolder::undoWillReplace(OZChannelBase *this)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    v2 = *(*result + 768);

    return v2();
  }

  return result;
}

void *OZChannelVaryingFolder::undoDidReplace(OZChannelBase *this)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    v2 = *(*result + 760);

    return v2();
  }

  return result;
}

uint64_t OZChannelVaryingFolder::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  (*(*this + 352))(this);
  v4 = OZChannelFolder::parseBegin(this, a2);
  (*(*this + 288))(this, 0);
  return v4;
}

uint64_t non-virtual thunk toOZChannelVaryingFolder::parseBegin(OZChannelVaryingFolder *this, PCSerializerReadStream *a2)
{
  v3 = (this - 16);
  (*(*(this - 2) + 352))(this - 16);
  v4 = OZChannelFolder::parseBegin(v3, a2);
  (*(*v3 + 288))(v3, 0);
  return v4;
}

uint64_t OZChannelVaryingFolder::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  (*(*this + 360))(this);

  return OZChannelFolder::parseEnd(this, a2);
}

uint64_t non-virtual thunk toOZChannelVaryingFolder::parseEnd(OZChannelVaryingFolder *this, PCSerializerReadStream *a2)
{
  v3 = (this - 16);
  (*(*(this - 2) + 360))(this - 16);

  return OZChannelFolder::parseEnd(v3, a2);
}

void sub_25FF03B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12)
{
  PCString::~PCString(&a12);
  MEMORY[0x2666E9F00](v13, v12);
  _Unwind_Resume(a1);
}

void OZChannelVertexFolder::OZChannelVertexFolder(OZChannelVertexFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelVertexFolder_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_2872572F0;
  *(this + 2) = &unk_2872575C8;
  *(this + 7) |= 0x10000uLL;
  *(this + 16) = 0;
  OZChannelFolder::saveStateAsDefault(v11);
}

void OZChannelVertexFolder::OZChannelVertexFolder(OZChannelVertexFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v4 = &unk_2872572F0;
  *(v4 + 16) = &unk_2872575C8;
  *(v4 + 56) |= 0x10000uLL;
  *(v4 + 128) = 0;
  OZChannelFolder::saveStateAsDefault(v4);
}

void OZChannelVertexFolder::OZChannelVertexFolder(OZChannelVertexFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v3 = &unk_2872572F0;
  *(v3 + 16) = &unk_2872575C8;
  *(v3 + 56) |= 0x10000uLL;
  *(v3 + 128) = 0;
  OZChannelFolder::saveStateAsDefault(v3);
}

void OZChannelVertexFolder::~OZChannelVertexFolder(OZChannelVertexFolder *this)
{
  *this = &unk_2872572F0;
  *(this + 2) = &unk_2872575C8;
  *(this + 7) |= 0x10000uLL;
  *(this + 16) = 0;
  OZChannelFolder::~OZChannelFolder(this);
}

{
  *this = &unk_2872572F0;
  *(this + 2) = &unk_2872575C8;
  *(this + 7) |= 0x10000uLL;
  *(this + 16) = 0;
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelVertexFolder::~OZChannelVertexFolder(OZChannelVertexFolder *this)
{
  *(this - 2) = &unk_2872572F0;
  *this = &unk_2872575C8;
  *(this + 5) |= 0x10000uLL;
  *(this + 14) = 0;
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelVertexFolder::~OZChannelVertexFolder((this - 16));
}

uint64_t OZChannelVertexFolder::writeHeader(OZFactory **this, OZFactory *a2, int a3)
{
  v3 = a3;
  if (a3 && OZFactory::fileRefID(this[1], a2))
  {
    v6 = (*(*a2 + 232))(a2) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  PCSerializerWriteStream::pushScope(a2, &OZChannelVertexFolderScope);
  (*(*a2 + 16))(a2, 122);
  v7 = *a2;
  if (v6)
  {
    (*(v7 + 200))(a2, 110, this + 32);
  }

  else
  {
    (*(v7 + 216))(a2, 110, this + 32);
  }

  (*(*a2 + 144))(a2, 111, *(this + 6));
  if ((v3 & 1) == 0)
  {
    OZChannelBase::writeFlags(this, a2, 0);
  }

  if (v6 && ((*(*a2 + 232))(a2) & 1) == 0)
  {
    v9 = OZFactory::fileRefID(this[1], v8);
    (*(*a2 + 144))(a2, 113, v9);
  }

  return PCSerializerWriteStream::popScope(a2);
}

OZChannelBase *OZChannelVertexFolder::setVertexSaveWhenAtDefaultState(OZChannelFolder *this)
{
  Descendant = OZChannelFolder::getDescendant(this, 2);

  return OZChannelBase::setFlag(Descendant, 0x100000000, 0);
}

uint64_t OZChannelVertexFolder::isVertexSaveWhenAtDefaultState(OZChannelFolder *this)
{
  v1 = *(*OZChannelFolder::getDescendant(this, 2) + 144);

  return v1();
}

void sub_25FF0453C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FF047BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FF04944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FF04ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZCompoundChannel::OZCompoundChannel(OZCompoundChannel *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, BOOL a7, int a8)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, a6, a8);
  *v9 = &unk_287257638;
  *(v9 + 16) = &unk_287257980;
  OZChannelFolder::setFoldFlag(v9, 15);
  (*(*this + 128))(this);
}

void OZCompoundChannel::OZCompoundChannel(OZCompoundChannel *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5);
  *v5 = &unk_287257638;
  v5[2] = &unk_287257980;
}

void OZCompoundChannel::OZCompoundChannel(OZCompoundChannel *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v3 = &unk_287257638;
  v3[2] = &unk_287257980;
}

void non-virtual thunk toOZCompoundChannel::~OZCompoundChannel(OZCompoundChannel *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZCompoundChannel::~OZCompoundChannel(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

BOOL OZCompoundChannel::compare(OZChannelFolder *this, const OZChannelBase *lpsrc)
{
  result = 0;
  if (lpsrc)
  {
    if (v4)
    {
      v5 = v4;
      v6 = OZChannelFolder::testFoldFlag(this, 0x100000);
      if (v6 == OZChannelFolder::testFoldFlag(v5, 0x100000) && (OZChannelFolder::compare(this, lpsrc) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

void OZCompoundChannel::copy(OZChannelFolder *this, const OZChannelBase *a2)
{
  OZChannelFolder::copy(this, a2);
  if (a2)
  {
    if (v4)
    {
      if (OZChannelFolder::testFoldFlag(v4, 0x100000))
      {
        *(this + 30) |= 0x100000u;
      }
    }
  }
}

uint64_t OZCompoundChannel::setValue(OZCompoundChannel *this, unsigned int a2, const CMTime *a3, double a4)
{
  v8 = *(**(this + 14) + 8 * a2);
  if (v8)
  {
  }

  (*(*v8 + 712))(v8, a3, 0, a4);
  result = OZChannelFolder::testFoldFlag(this, 0x100000);
  if (result)
  {
    v10 = *(this + 14);
    v11 = *v10;
    if (v10[1] != *v10)
    {
      v12 = 1;
      v13 = a2;
      do
      {
        if (v13)
        {
          v14 = *(v11 + 8 * a2);
          if (v14)
          {
          }

          result = (*(*v14 + 736))(v14, a3);
          v10 = *(this + 14);
          v11 = *v10;
        }

        v15 = v12;
        --v13;
        ++v12;
      }

      while (v15 < (v10[1] - v11) >> 3);
    }
  }

  return result;
}

uint64_t OZCompoundChannel::setValue(OZChannelFolder *this, unsigned int a2, const CMTime *a3)
{
  result = OZChannelFolder::testFoldFlag(this, 0x100000);
  v7 = *(this + 14);
  if (result)
  {
    v8 = *v7;
    if (*(*(this + 14) + 8) != v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = *(v8 + 8 * v9);
        if (v11)
        {
        }

        result = (*(*v11 + 736))(v11, a3);
        v9 = v10;
        v8 = **(this + 14);
        ++v10;
      }

      while (v9 < (*(*(this + 14) + 8) - v8) >> 3);
    }
  }

  else
  {
    v12 = *(*v7 + 8 * a2);
    if (v12)
    {
    }

    v13 = *(*v12 + 736);

    return v13();
  }

  return result;
}

OZChannelFolder *OZCompoundChannel::setValue(OZChannelFolder *this, OZChannel *a2, const CMTime *a3, double a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000))
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v9 = **(this + 14);
    if (*(*(this + 14) + 8) != v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(v9 + 8 * v10);
        if (v12)
        {
        }

        var0 = v12->var0;
        if (v12 == a2)
        {
          (var0[89])(a4);
        }

        else
        {
          (var0[92])();
        }

        v10 = v11;
        v9 = **(this + 14);
        ++v11;
      }

      while (v10 < (*(*(this + 14) + 8) - v9) >> 3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v15 = *(a2->var0 + 89);
    v8.n128_f64[0] = a4;

    return v15(a2, a3, 0, v8);
  }
}

OZChannelFolder *OZCompoundChannel::compoundAddKeypointAt(OZChannelFolder *this, OZChannel *a2, const CMTime *a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v10 = **(this + 14);
    if (*(*(this + 14) + 8) != v10)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        (*(**(v10 + 8 * v11) + 600))(*(v10 + 8 * v11), a3);
        v11 = v12;
        v10 = **(this + 14);
        ++v12;
      }

      while (v11 < (*(*(this + 14) + 8) - v10) >> 3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 75);

    return v8(a2, a3);
  }
}

__n128 OZCompoundChannel::compoundMoveKeypointTo@<Q0>(OZChannelFolder *this@<X0>, OZChannel *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a7 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    memset(v24, 0, sizeof(v24));
    (*(a2->var0 + 77))(v24, a2, a3, a4, a5, a6);
    v18 = *(this + 14);
    v19 = *v18;
    if (v18[1] != *v18)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = *(v19 + 8 * v20);
        if (v22 != a2)
        {
          (*(v22->var0 + 77))(v23);
          v18 = *(this + 14);
          v19 = *v18;
        }

        v20 = v21++;
      }

      while (v20 < (v18[1] - v19) >> 3);
    }

    OZChannelFolder::setFoldFlag(this, 0x100000);
    result = *&a4->value;
    *a8 = *&a4->value;
    *(a8 + 16) = a4->epoch;
  }

  else
  {
    v16 = *(a2->var0 + 77);

    v16(a2, a3, a4, a5, 0);
  }

  return result;
}

OZChannelFolder *OZCompoundChannel::compoundDeleteKeypointAt(OZChannelFolder *this, OZChannel *a2, const CMTime *a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v10 = **(this + 14);
    if (*(*(this + 14) + 8) != v10)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        (*(**(v10 + 8 * v11) + 608))(*(v10 + 8 * v11), a3);
        v11 = v12;
        v10 = **(this + 14);
        ++v12;
      }

      while (v11 < (*(*(this + 14) + 8) - v10) >> 3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 76);

    return v8(a2, a3);
  }
}

OZChannelFolder *OZCompoundChannel::compoundReset(OZChannelFolder *this, OZChannel *a2, char a3)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a3 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v8 = **(this + 14);
    if (*(*(this + 14) + 8) != v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        (*(**(v8 + 8 * v9) + 288))(*(v8 + 8 * v9), 0);
        v9 = v10;
        v8 = **(this + 14);
        ++v10;
      }

      while (v9 < (*(*(this + 14) + 8) - v8) >> 3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v6 = *(a2->var0 + 36);

    return v6(a2, 0);
  }
}

OZChannelFolder *OZCompoundChannel::compoundSetIsSpline(OZChannelFolder *this, OZChannel *a2, uint64_t a3, char a4)
{
  if (OZChannelFolder::testFoldFlag(this, 0x100000) || (a4 & 1) != 0)
  {
    OZChannelFolder::resetFoldFlag(this, 0x100000);
    v10 = **(this + 14);
    if (*(*(this + 14) + 8) != v10)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        (*(**(v10 + 8 * v11) + 480))(*(v10 + 8 * v11), a3);
        v11 = v12;
        v10 = **(this + 14);
        ++v12;
      }

      while (v11 < (*(*(this + 14) + 8) - v10) >> 3);
    }

    return OZChannelFolder::setFoldFlag(this, 0x100000);
  }

  else
  {
    v8 = *(a2->var0 + 60);

    return v8(a2, a3);
  }
}

const void *OZCompoundChannel::removeValue(OZCompoundChannel *this, unsigned int a2, const CMTime *a3)
{
  v6 = *(**(this + 14) + 8 * a2);
  v7 = (*(*v6 + 120))(v6);
  v8 = *(**(this + 14) + 8 * a2);
  if (v7)
  {
    if (v8)
    {
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(*v9 + 800))(v9, a3);
LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (v8)
  {
    {
      v8 = 0;
      goto LABEL_10;
    }

    v11 = (*(v10 + 744))();
    goto LABEL_9;
  }

LABEL_10:
  if (OZChannelFolder::testFoldFlag(this, 0x100000))
  {
    v12 = **(this + 14);
    if (*(*(this + 14) + 8) != v12)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = (*(**(v12 + 8 * v13) + 120))(*(v12 + 8 * v13));
        v16 = *(**(this + 14) + 8 * v13);
        if (v15)
        {
          if (v16)
          {
          }

          else
          {
            v17 = 0;
          }

          (*(*v17 + 800))(v17, a3);
        }

        {
          (*(v18 + 744))();
        }

        v13 = v14;
        v12 = **(this + 14);
        ++v14;
      }

      while (v13 < (*(*(this + 14) + 8) - v12) >> 3);
    }
  }

  return v8;
}

uint64_t OZCompoundChannel::removeValue(OZCompoundChannel *this, const CMTime *a2)
{
  v2 = **(this + 14);
  if (*(*(this + 14) + 8) == v2)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = (*(**(v2 + 8 * v5) + 120))(*(v2 + 8 * v5));
      v9 = *(**(this + 14) + 8 * v5);
      if (v8)
      {
        if (v9)
        {
        }

        else
        {
          v10 = 0;
        }

        LOBYTE(v11) = (*(*v10 + 800))(v10, a2);
      }

      else if (v9)
      {
        if (v11)
        {
          LOBYTE(v11) = (*(v12 + 744))();
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      v6 |= v11;
      v5 = v7;
      v2 = **(this + 14);
      ++v7;
    }

    while (v5 < (*(*(this + 14) + 8) - v2) >> 3);
  }

  return v6 & 1;
}

uint64_t OZCompoundChannel::removeAllValues(OZChannelFolder *this, const CMTime *a2, unsigned int a3)
{
  result = OZChannelFolder::testFoldFlag(this, 0x100000);
  v7 = *(this + 14);
  if (result)
  {
    v8 = *v7;
    if (*(*(this + 14) + 8) != v8)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        result = (*(**(v8 + 8 * v9) + 120))(*(v8 + 8 * v9));
        v11 = *(**(this + 14) + 8 * v9);
        if (result)
        {
          if (v11)
          {
          }

          else
          {
            v12 = 0;
          }

          result = (*(*v12 + 816))(v12, a2);
        }

        else if (v11)
        {
          if (result)
          {
            result = (*(v13 + 752))();
          }
        }

        v9 = v10;
        v8 = **(this + 14);
        ++v10;
      }

      while (v9 < (*(*(this + 14) + 8) - v8) >> 3);
    }
  }

  else
  {
    v14 = *(*v7 + 8 * a3);
    result = (*(*v14 + 120))(v14);
    v15 = *(**(this + 14) + 8 * a3);
    if (result)
    {
      if (v15)
      {
      }

      else
      {
        v16 = 0;
      }

      v18 = *(*v16 + 816);

      return v18();
    }

    else if (v15)
    {
      if (result)
      {

        return v17();
      }
    }
  }

  return result;
}

void **OZCompoundChannel::removeAllValues(void **this, const CMTime *a2)
{
  v2 = *this[14];
  if (this[14][1] != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = 1;
    do
    {
      this = (*(**(v2 + 8 * v5) + 120))(*(v2 + 8 * v5));
      v7 = *(*v4[14] + 8 * v5);
      if (this)
      {
        if (v7)
        {
        }

        else
        {
          v8 = 0;
        }

        this = (*(*v8 + 816))(v8, a2);
      }

      else if (v7)
      {
        if (this)
        {
          this = (*(v9 + 752))();
        }
      }

      v5 = v6;
      v2 = *v4[14];
      ++v6;
    }

    while (v5 < (v4[14][1] - v2) >> 3);
  }

  return this;
}

const void *OZCompoundChannel::willBeModified(OZChannelBase *this, uint64_t a2)
{
  result = OZChannelBase::willBeModified(this, a2);
  var0 = this[1].var0;
  if (var0)
  {
    v6 = *var0;
    if (var0[1] != *var0)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        result = v6[v7];
        if (result)
        {
          if (result)
          {
            result = (*(*result + 704))(result, a2);
            var0 = this[1].var0;
            v6 = *var0;
          }
        }

        v7 = v8++;
      }

      while (v7 < (var0[1] - v6) >> 3);
    }
  }

  return result;
}

void sub_25FF06828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FF07684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZConvexInterpolator::~OZConvexInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

void OZConvexInterpolator::interpolate(OZConvexInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, _BYTE **a5, const CMTime *a6)
{
  time = *(a4 + 16);
  v19 = *(a5 + 2);
  Seconds = CMTimeGetSeconds(&time);
  time = v19;
  v13 = CMTimeGetSeconds(&time);
  if (Seconds > v13)
  {
    OZSpline::getSmallDeltaU(a2, &time);
    v13 = Seconds + CMTimeGetSeconds(&time);
  }

  memset(&time, 0, sizeof(time));
  (*(*this + 104))(&time, this, a2, a6, a4, a5);
  v14 = (*(*a4 + 24))(a4, a3);
  v15 = (*(*a5 + 3))(a5, a3);
  v17 = time;
  v16 = (CMTimeGetSeconds(&v17) - Seconds) / (v13 - Seconds) * 1.57079633;
  if (v14 >= v15)
  {
    cosf(v16);
  }

  else
  {
    sinf(v16);
  }
}

uint64_t OZConvexInterpolator::subDivide(OZConvexInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, _OWORD *a6)
{
  v12 = a6[1];
  v13 = *(a6 + 4);
  (*(*this + 104))(&v10);
  v12 = v10;
  v13 = v11;
  (*(*a2 + 240))(a2, &v12, a3, 0);
  return (*(*a6 + 32))(a6, a3);
}

void OZConcaveInterpolator::~OZConcaveInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

void OZConcaveInterpolator::interpolate(OZConcaveInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, _BYTE **a5, const CMTime *a6)
{
  time = *(a4 + 16);
  v19 = *(a5 + 2);
  Seconds = CMTimeGetSeconds(&time);
  time = v19;
  v13 = CMTimeGetSeconds(&time);
  if (Seconds > v13)
  {
    OZSpline::getSmallDeltaU(a2, &time);
    v13 = Seconds + CMTimeGetSeconds(&time);
  }

  memset(&time, 0, sizeof(time));
  (*(*this + 104))(&time, this, a2, a6, a4, a5);
  v14 = (*(*a4 + 24))(a4, a3);
  v15 = (*(*a5 + 3))(a5, a3);
  v17 = time;
  v16 = (CMTimeGetSeconds(&v17) - Seconds) / (v13 - Seconds) * 1.57079633;
  if (v14 >= v15)
  {
    sinf(v16);
  }

  else
  {
    cosf(v16);
  }
}

uint64_t OZConcaveInterpolator::subDivide(OZConcaveInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, _OWORD *a6)
{
  v12 = a6[1];
  v13 = *(a6 + 4);
  (*(*this + 104))(&v10);
  v12 = v10;
  v13 = v11;
  (*(*a2 + 240))(a2, &v12, a3, 0);
  return (*(*a6 + 32))(a6, a3);
}

void OZSCurveInterpolator::~OZSCurveInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

double OZSCurveInterpolator::interpolate(OZSCurveInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, _BYTE **a5, const CMTime *a6)
{
  time = *(a4 + 16);
  v20 = *(a5 + 2);
  Seconds = CMTimeGetSeconds(&time);
  time = v20;
  v13 = CMTimeGetSeconds(&time);
  if (Seconds > v13)
  {
    OZSpline::getSmallDeltaU(a2, &time);
    v13 = Seconds + CMTimeGetSeconds(&time);
  }

  memset(&time, 0, sizeof(time));
  (*(*this + 104))(&time, this, a2, a6, a4, a5);
  v18 = time;
  v14 = (CMTimeGetSeconds(&v18) - Seconds) / (v13 - Seconds) * 3.14159265;
  v15 = (1.0 - cosf(v14)) * 0.5;
  v16 = (*(*a4 + 24))(a4, a3) * (1.0 - v15);
  return v16 + v15 * (*(*a5 + 3))(a5, a3);
}

uint64_t OZSCurveInterpolator::subDivide(OZSCurveInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, _OWORD *a6)
{
  v12 = a6[1];
  v13 = *(a6 + 4);
  (*(*this + 104))(&v10);
  v12 = v10;
  v13 = v11;
  (*(*a2 + 240))(a2, &v12, a3, 0);
  return (*(*a6 + 32))(a6, a3);
}

void sub_25FF08EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void HGradientBlend::~HGradientBlend(HGNode *this)
{
  HgcGradientBlend::~HgcGradientBlend(this);

  HGObject::operator delete(v1);
}

uint64_t HGradientBlend::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  v11 = HGRenderer::GetInput(a2, this, 1u);
  v12 = HGRenderer::GetDOD(a2, v11);
  return HGRectIntersection(DOD, v10, v12, v13);
}

uint64_t HGradientBlend::GetROI(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  return HGRectIntersection(DOD, v10, v6, v5);
}

float createColorBalance@<S0>(void *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, char a5@<W4>, HgcColorBalance **a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v20 = HGObject::operator new(0x1F0uLL);
  HgcColorBalance::HgcColorBalance(v20);
  (*(*v20 + 120))(v20, 0, *a1);
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  (*(*v20 + 96))(v20, 0, v21, v22, v23, 0.0);
  v24 = *a3;
  v25 = a3[1];
  v26 = a3[2];
  (*(*v20 + 96))(v20, 1, v24, v25, v26, 0.0);
  v27 = *a4;
  v28 = a4[1];
  v29 = a4[2];
  (*(*v20 + 96))(v20, 2, v27, v28, v29, 0.0);
  v30 = a7;
  (*(*v20 + 96))(v20, 3, v30, v30, v30, v30);
  v31 = a8;
  v32 = a9;
  (*(*v20 + 96))(v20, 4, v31, v32, 0.0, 0.0);
  result = a10;
  *(v20 + 121) = result;
  *(v20 + 488) = a5;
  *a6 = v20;
  return result;
}

uint64_t HSampleTiledNoise::GetDOD(HSampleTiledNoise *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return HGRectMake4i(*(this + 104) / -2, *(this + 105) / -2, *(this + 104) - *(this + 104) / 2, *(this + 105) - *(this + 105) / 2);
  }
}