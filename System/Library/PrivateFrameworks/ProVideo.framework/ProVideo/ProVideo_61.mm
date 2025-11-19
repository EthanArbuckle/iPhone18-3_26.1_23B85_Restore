void OZChannel2D::OZChannel2D(OZChannel2D *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5, a6, 0, a7);
  *v11 = &unk_28724AE00;
  *(v11 + 2) = &unk_28724B158;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v15, @"Channel X");
  OZChannelDouble::OZChannelDouble((this + 136), &v15, this, 1u, 0, a8, a9);
  PCString::~PCString(&v15);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v15, @"Channel Y");
  OZChannelDouble::OZChannelDouble((this + 288), &v15, this, 2u, 0, a8, a9);
  PCString::~PCString(&v15);
}

void sub_25FEB13E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannel2D::OZChannel2D(OZChannel2D *this, double a2, double a3, OZFactory *a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9, OZChannelImpl *a10, OZChannelInfo *a11)
{
  OZCompoundChannel::OZCompoundChannel(this, a4, a5, a6, a7, a8, 0, a9);
  *v15 = &unk_28724AE00;
  *(v15 + 2) = &unk_28724B158;
  TXParagraphStyleFolder_Factory::createInstance(v15, v16);
  PCURL::PCURL(&v19, @"Channel X");
  OZChannelDouble::OZChannelDouble((this + 136), a2, &v19, this, 1u, 0, a10, a11);
  PCString::~PCString(&v19);
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v19, @"Channel Y");
  OZChannelDouble::OZChannelDouble((this + 288), a3, &v19, this, 2u, 0, a10, a11);
  PCString::~PCString(&v19);
}

void sub_25FEB1548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannel2D::OZChannel2D(OZChannel2D *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, int a8, OZChannelImpl *a9, OZChannelInfo *a10)
{
  Instance = OZChannel2D_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a4, a5, a6, a7, 0, a8);
  *this = &unk_28724AE00;
  *(this + 2) = &unk_28724B158;
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v25, @"Channel X");
  OZChannelDouble::OZChannelDouble((this + 136), a2, &v25, this, 1u, 0, a9, a10);
  PCString::~PCString(&v25);
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v25, @"Channel Y");
  OZChannelDouble::OZChannelDouble((this + 288), a3, &v25, this, 2u, 0, a9, a10);
  PCString::~PCString(&v25);
}

void sub_25FEB16F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannel2D::OZChannel2D(OZChannel2D *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannel2D_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_28724AE00;
  *(this + 2) = &unk_28724B158;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v21, @"Channel X");
  OZChannelDouble::OZChannelDouble((this + 136), &v21, this, 1u, 0, a7, a8);
  PCString::~PCString(&v21);
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v21, @"Channel Y");
  OZChannelDouble::OZChannelDouble((this + 288), &v21, this, 2u, 0, a7, a8);
  PCString::~PCString(&v21);
}

void sub_25FEB1884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannel2D::OZChannel2D(OZChannel2D *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v10 = &unk_28724AE00;
  *(v10 + 2) = &unk_28724B158;
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v14, @"Channel X");
  OZChannelDouble::OZChannelDouble((this + 136), &v14, this, 1u, 0, a6, a7);
  PCString::~PCString(&v14);
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v14, @"Channel Y");
  OZChannelDouble::OZChannelDouble((this + 288), &v14, this, 2u, 0, a6, a7);
  PCString::~PCString(&v14);
}

void sub_25FEB19D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannel2D::OZChannel2D(OZChannel2D *this, const OZChannel2D *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_28724AE00;
  *(v5 + 16) = &unk_28724B158;
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287245C60;
  *(this + 38) = &unk_287245FC0;
}

void sub_25FEB1B24(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannel2D::copy(OZChannel2D *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);

  OZChannel::copy((this + 288), (v4 + 288), a3);
}

uint64_t OZChannel2D::deriveChannel(OZChannel2D *this, const CMTime *a2)
{
  v32 = 0.0;
  CurveValue = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  v29 = 0.0;
  v28 = 0.0;
  v27 = **&MEMORY[0x277CC08F0];
  v26 = **&MEMORY[0x277CC08F0];
  v25 = **&MEMORY[0x277CC08F0];
  v24 = **&MEMORY[0x277CC08F0];
  v23 = 0.0;
  Keyframe = OZChannel::getKeyframe((this + 136), a2);
  v5 = OZChannel::getKeyframe((this + 288), a2);
  v6 = (this + 136);
  if (Keyframe)
  {
    OZChannel::getKeyframe(v6, Keyframe, 0, &CurveValue);
  }

  else
  {
    CurveValue = OZChannel::getCurveValue(v6, a2, 1);
    OZChannel::setKeyframe((this + 136), a2, CurveValue, 1);
    Keyframe = OZChannel::getKeyframe((this + 136), a2);
  }

  v7 = (this + 288);
  if (v5)
  {
    OZChannel::getKeyframe(v7, v5, 0, &v32);
  }

  else
  {
    v32 = OZChannel::getCurveValue(v7, a2, 1);
    OZChannel::setKeyframe((this + 288), a2, v32, 1);
    v5 = OZChannel::getKeyframe((this + 288), a2);
  }

  OZChannel::getPreviousKeyframe((this + 136), a2, &v27, &v31);
  v8 = OZChannel::getKeyframe((this + 136), &v27);
  OZChannel::getPreviousKeyframe((this + 288), a2, &v26, &v29);
  v9 = OZChannel::getKeyframe((this + 288), &v26);
  v10 = v9;
  if (v8 || !v9)
  {
    v11 = v8 != 0;
    if (!v9 && v8)
    {
      v11 = 1;
      v29 = OZChannel::getCurveValue((this + 288), &v27, 1);
    }
  }

  else
  {
    v11 = 0;
    v31 = OZChannel::getCurveValue((this + 136), &v26, 1);
  }

  OZChannel::getNextKeyframe((this + 136), a2, &v25, &v30);
  v12 = OZChannel::getKeyframe((this + 136), &v25);
  OZChannel::getNextKeyframe((this + 288), a2, &v24, &v28);
  v13 = OZChannel::getKeyframe((this + 288), &v24);
  v14 = v13;
  if (v12 || !v13)
  {
    v15 = v12 != 0;
    if (!v13 && v12)
    {
      v15 = 1;
      v28 = OZChannel::getCurveValue((this + 288), &v25, 1);
    }
  }

  else
  {
    v15 = 0;
    v30 = OZChannel::getCurveValue((this + 136), &v24, 1);
  }

  OZChannel::deriveKeyframe((this + 136), Keyframe);
  result = OZChannel::deriveKeyframe((this + 288), v5);
  if (v10)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  if (v14)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15;
  }

  if (v17)
  {
    if (v18)
    {
      v19 = 6.0;
      v20 = (v30 - v31) / 6.0;
      v21 = v28;
    }

    else
    {
      v19 = 3.0;
      v20 = (CurveValue - v31) / 3.0;
      v21 = v32;
    }

    v22 = (v21 - v29) / v19;
  }

  else
  {
    if (!v18)
    {
      return result;
    }

    v20 = (v30 - CurveValue) / 3.0;
    v22 = (v28 - v32) / 3.0;
  }

  OZChannel::getKeyframeOutputTangents((this + 136), Keyframe, &v23, 0, 1);
  OZChannel::setKeyframeOutputTangents((this + 136), Keyframe, v23, v20, 1);
  OZChannel::getKeyframeInputTangents((this + 136), Keyframe, &v23, 0, 1);
  OZChannel::setKeyframeInputTangents((this + 136), Keyframe, v23, -v20, 1);
  OZChannel::getKeyframeOutputTangents((this + 288), v5, &v23, 0, 1);
  OZChannel::setKeyframeOutputTangents((this + 288), v5, v23, v22, 1);
  OZChannel::getKeyframeInputTangents((this + 288), v5, &v23, 0, 1);
  return OZChannel::setKeyframeInputTangents((this + 288), v5, v23, -v22, 1);
}

uint64_t OZChannel2D::flattenAtTime(OZChannel2D *this, const CMTime *a2)
{
  Keyframe = OZChannel::getKeyframe((this + 136), a2);
  v5 = OZChannel::getKeyframe((this + 288), a2);
  OZChannel::setKeyframeOutputTangents((this + 136), Keyframe, 0.0, 0.0, 1);
  OZChannel::setKeyframeInputTangents((this + 136), Keyframe, 0.0, 0.0, 1);
  OZChannel::setKeyframeOutputTangents((this + 288), v5, 0.0, 0.0, 1);
  OZChannel::setKeyframeInputTangents((this + 288), v5, 0.0, 0.0, 1);
  OZChannel::setKeyframeTangentsBroken((this + 136), Keyframe);

  return OZChannel::setKeyframeTangentsBroken((this + 288), v5);
}

uint64_t OZChannel2D::setLinearAtTime(OZChannel2D *this, const CMTime *a2)
{
  Keyframe = OZChannel::getKeyframe((this + 136), a2);
  v5 = OZChannel::getKeyframe((this + 288), a2);
  OZChannel::setKeyframeInterpolation((this + 136), Keyframe);

  return OZChannel::setKeyframeInterpolation((this + 288), v5);
}

uint64_t OZChannel2D::setValue(OZChannel2D *this, const CMTime *a2, double a3, double a4, uint64_t a5)
{
  v8 = this + 136;
  (*(*(this + 17) + 712))(this + 136, a3);
  v9 = *(*(v8 + 19) + 712);
  v10.n128_f64[0] = a4;

  return v9(v8 + 152, a2, a5, v10);
}

uint64_t OZChannel2D::setValueOffsetByBehaviors(OZChannel2D *this, const CMTime *a2, double a3, double a4)
{
  OZChannel::getValueAsDouble((this + 136), a2, 0.0);
  v9 = a3 - v8;
  OZChannel::getValueAsDouble((this + 288), a2, 0.0);
  v11 = a4 - v10;
  OZChannelBase::globalToLocalTime((this + 136), a2, &v17);
  CurveValue = OZChannel::getCurveValue((this + 136), &v17, 0);
  OZChannelBase::globalToLocalTime((this + 288), a2, &v17);
  v13 = OZChannel::getCurveValue((this + 288), &v17, 0);
  v14 = v9 + CurveValue;
  v15 = v11 + v13;
  (*(*(this + 17) + 712))(this + 136, a2, 0, v14);
  return (*(*(this + 36) + 712))(this + 288, a2, 0, v15);
}

void OZChannel2D::simplify(OZChannelFolder *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 == 4)
  {
    memset(&v56, 0, sizeof(v56));
    v53 = 0;
    v54 = 0;
    v11 = MEMORY[0x277CC08F0];
    v55 = 0;
    v52 = **&MEMORY[0x277CC08F0];
    v12 = *(this + 14);
    if (v12)
    {
      v13 = *v12;
      if (v12[1] != *v12)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v13 + 8 * v14);
          if (v16)
          {
            if (v17)
            {
              v18 = v17;
              OZChannel::getKeyframes(v17, 0, &v51);
              value = v51.value;
              if (*&v51.timescale != v51.value)
              {
                v20 = 0;
                v21 = 0;
                do
                {
                  OZChannel::getKeyframe(v18, value[v20], &v52, 0);
                  v23 = v56.value;
                  v22 = *&v56.timescale;
                  if (v56.value != *&v56.timescale)
                  {
                    while (1)
                    {
                      v24 = *v23;
                      time1.epoch = *(v23 + 16);
                      *&time1.value = v24;
                      time2 = v52;
                      if (!CMTimeCompare(&time1, &time2))
                      {
                        break;
                      }

                      v23 += 24;
                      if (v23 == v22)
                      {
                        v23 = v22;
                        break;
                      }
                    }

                    v22 = *&v56.timescale;
                  }

                  if (v23 == v22)
                  {
                    std::vector<CMTime>::push_back[abi:ne200100](&v56, &v52.value);
                    if (v15)
                    {
                      std::vector<CMTime>::push_back[abi:ne200100](&v53, &v52.value);
                    }
                  }

                  value = v51.value;
                  v20 = ++v21;
                }

                while (v21 < ((*&v51.timescale - v51.value) >> 3));
              }

              if (value)
              {
                *&v51.timescale = value;
                operator delete(value);
              }

              v12 = *(this + 14);
              v13 = *v12;
            }
          }

          v14 = ++v15;
        }

        while (v15 < ((v12[1] - v13) >> 3));
        v25 = v53;
        v11 = MEMORY[0x277CC08F0];
        if (v54 != v53)
        {
          v26 = 0;
          v27 = 1;
          do
          {
            (*(*this + 600))(this, v25 + 24 * v26, a3, a4);
            v26 = v27;
            v25 = v53;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3) > v27++);
        }
      }

      v49 = 0.0;
      v50 = 0.0;
      v47 = 0.0;
      v48 = 0.0;
      v45 = 0.0;
      v46 = 0.0;
      v51 = *v11;
      OZChannel::getKeyframes((this + 136), 0, &v43);
      OZChannel::getKeyframes((this + 288), 0, __p);
      v29 = v43;
      if (v44 != v43)
      {
        OZChannel::getKeyframe((this + 136), *v43, 0, &v50);
        OZChannel::getKeyframe((this + 288), *__p[0], 0, &v49);
        v29 = v43;
        if ((((v44 - v43) >> 3) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v30 = *__p[0];
          v31 = *v43;
          v32 = 1;
          LODWORD(v33) = 1;
          do
          {
            OZChannel::getKeyframe((this + 136), v29[v32], &v51, &v46);
            OZChannel::getKeyframe((this + 288), *(__p[0] + v32), 0, &v45);
            time1 = v51;
            time2 = *a2;
            if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v51, time2 = *a3, CMTimeCompare(&time1, &time2) > 0))
            {
              v49 = v45;
              v50 = v46;
              v29 = v43;
              v31 = *(v43 + v32);
              v30 = *(__p[0] + v32);
              v33 = (v33 + 1);
            }

            else
            {
              v33 = (v33 + 1);
              OZChannel::getKeyframe((this + 136), *(v43 + v33), 0, &v48);
              OZChannel::getKeyframe((this + 288), *(__p[0] + v33), 0, &v47);
              v34 = (v45 - v49) / (v46 - v50);
              v35 = (v47 - v45) / (v48 - v46);
              if ((v34 <= 0.0 || v35 >= 0.0) && (v34 >= 0.0 || v35 <= 0.0))
              {
                OZChannel::willBeModified((this + 136), 1);
                OZChannel::deleteKeyframe((this + 136), *(v43 + v32));
                OZChannel::willBeModified((this + 288), 1);
                OZChannel::deleteKeyframe((this + 288), *(__p[0] + v32));
                OZChannel::deriveKeyframe((this + 136), v31);
                OZChannel::deriveKeyframe((this + 288), v30);
                OZChannel::deriveKeyframe((this + 136), *(v43 + v33));
                OZChannel::deriveKeyframe((this + 288), *(__p[0] + v33));
                v29 = v43;
              }

              else
              {
                v49 = v45;
                v50 = v46;
                v29 = v43;
                v31 = *(v43 + v32);
                v30 = *(__p[0] + v32);
              }
            }

            v32 = v33;
          }

          while (v44 - v29 - 1 > v33);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
        v29 = v43;
      }

      if (v29)
      {
        v44 = v29;
        operator delete(v29);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }
    }

    v41 = v56.value;
    if (v56.value)
    {
      *&v56.timescale = v56.value;
      goto LABEL_65;
    }
  }

  else
  {
    OZChannelFolder::simplify(this, a2, a3, a4, a5, a6, a7, a8);
    v56 = **&MEMORY[0x277CC08F0];
    OZChannel::getKeyframes((this + 136), 0, &v53);
    OZChannel::getKeyframes((this + 288), 0, &v52);
    if (v54 != v53)
    {
      v36 = 0;
      v37 = 1;
      do
      {
        time1 = v56;
        time2 = *a2;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          time1 = v56;
          time2 = *a3;
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            OZChannel::getKeyframe((this + 136), *(v53 + v36), &v56, 0);
            (*(*this + 336))(&time1, this, &v56);
            if ((OZChannel::hasKeypointAt((this + 288), &time1) & 1) == 0)
            {
              OZChannel::setKeyframe((this + 288), &v56);
            }
          }
        }

        v36 = v37++;
      }

      while (v36 < (v54 - v53) >> 3);
    }

    v38 = v52.value;
    if (*&v52.timescale != v52.value)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        time1 = v56;
        time2 = *a2;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          time1 = v56;
          time2 = *a3;
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            OZChannel::getKeyframe((this + 288), *(v52.value + 8 * v39), &v56, 0);
            (*(*this + 336))(&time1, this, &v56);
            if ((OZChannel::hasKeypointAt((this + 136), &time1) & 1) == 0)
            {
              OZChannel::setKeyframe((this + 136), &v56);
            }
          }
        }

        v39 = v40;
        v38 = v52.value;
        ++v40;
      }

      while (v39 < (*&v52.timescale - v52.value) >> 3);
    }

    if (v38)
    {
      *&v52.timescale = v38;
      operator delete(v38);
    }

    v41 = v53;
    if (v53)
    {
      v54 = v53;
LABEL_65:
      operator delete(v41);
    }
  }
}

void sub_25FEB2B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toOZChannel2D::~OZChannel2D(OZChannel2D *this)
{
  OZChannel2D::~OZChannel2D((this - 16));
}

{
  OZChannel2D::~OZChannel2D((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannel3D::OZChannel3D(OZChannel3D *this, double a2, double a3, double a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9, OZChannelImpl *a10, OZChannelInfo *a11)
{
  Instance = OZChannel3D_Factory::getInstance(this);
  OZChannel2D::OZChannel2D(this, a2, a3, Instance, a5, a6, a7, a8, a9, a10, a11);
  *this = &unk_28724B1C8;
  *(this + 2) = &unk_28724B528;
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v25, @"Channel Z");
  OZChannelDouble::OZChannelDouble((this + 440), a4, &v25, this, 3u, 0, a10, a11);
  PCString::~PCString(&v25);
}

void sub_25FEB2D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannel3D::OZChannel3D(OZChannel3D *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannel3D_Factory::getInstance(this);
  OZChannel2D::OZChannel2D(this, Instance, a2, a3, a4, a5, a6, a7, a8);
  *this = &unk_28724B1C8;
  *(this + 2) = &unk_28724B528;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v19, @"Channel Z");
  OZChannelDouble::OZChannelDouble((this + 440), &v19, this, 3u, 0, a7, a8);
  PCString::~PCString(&v19);
}

void sub_25FEB2EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannel3D::OZChannel3D(OZChannel3D *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannel2D::OZChannel2D(this, a2, a3, a4, a5, a6, a7);
  *v10 = &unk_28724B1C8;
  *(v10 + 2) = &unk_28724B528;
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v12, @"Channel Z");
  OZChannelDouble::OZChannelDouble((this + 440), &v12, this, 3u, 0, a6, a7);
  PCString::~PCString(&v12);
}

void sub_25FEB2FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannel3D::OZChannel3D(OZChannel3D *this, const OZChannel3D *a2, OZChannelFolder *a3)
{
  OZChannel2D::OZChannel2D(this, a2, a3);
  *v5 = &unk_28724B1C8;
  *(v5 + 16) = &unk_28724B528;
  OZChannel::OZChannel((v5 + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
}

void OZChannel3D::copy(OZChannel3D *this, const OZChannelBase *a2, char a3)
{
  OZChannel2D::copy(this, a2, a3);

  OZChannel::copy((this + 440), (v6 + 440), a3);
}

uint64_t OZChannel3D::setValue(OZChannel3D *this, const CMTime *a2, double a3, double a4, double a5)
{
  v8 = this + 136;
  (*(*(this + 17) + 712))(this + 136, a2, 0, a3);
  (*(*(v8 + 19) + 712))(v8 + 152, a2, 0, a4);
  v9 = *(*(v8 + 38) + 712);
  v10.n128_f64[0] = a5;

  return v9(v8 + 304, a2, 0, v10);
}

void OZChannel3D::~OZChannel3D(OZChannel3D *this)
{
  *this = &unk_28724B1C8;
  *(this + 2) = &unk_28724B528;
  OZChannel::~OZChannel((this + 440));

  OZChannel2D::~OZChannel2D(this);
}

{
  OZChannel3D::~OZChannel3D(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannel3D::~OZChannel3D(OZChannel3D *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_28724B1C8;
  *this = &unk_28724B528;
  OZChannel::~OZChannel((this + 424));

  OZChannel2D::~OZChannel2D(v1);
}

{
  v1 = (this - 16);
  *(this - 2) = &unk_28724B1C8;
  *this = &unk_28724B528;
  OZChannel::~OZChannel((this + 424));
  OZChannel2D::~OZChannel2D(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelBase::OZChannelBase(OZChannelBase *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  this->var0 = &unk_28724B598;
  this->var1 = a2;
  this->var2 = &unk_28724B868;
  PCSharedCount::PCSharedCount(&this->var4);
  this->var3 = a5;
  this->var9 = 0;
  this->var6 = a4;
  this->var7 = a6 | 0x10u;
  if (a4)
  {
    OZChannelFolder::push_back(a4, this);
  }

  PCString::set(&this->var4, a3);
  this->var5 = 0;
  *&this->var10 = 0u;
  *&this->var12 = 0u;
  (*(this->var0 + 16))(this);
}

uint64_t OZChannelBase::registerParent(OZChannelBase *this, OZChannelFolder *a2)
{
  var6 = this->var6;
  if (var6)
  {
    v5 = var6 == a2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (!v5)
  {
    OZChannelFolder::removeDescendant(var6, this);
  }

  this->var6 = a2;
  return v6;
}

void OZChannelBase::OZChannelBase(OZChannelBase *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  this->var0 = &unk_28724B598;
  this->var1 = a2;
  this->var2 = &unk_28724B868;
  PCSharedCount::PCSharedCount(&this->var4);
  this->var3 = a4;
  this->var9 = 0;
  this->var6 = 0;
  this->var7 = 16;
  PCString::set(&this->var4, a3);
  this->var5 = 0;
  *&this->var10 = 0u;
  *&this->var12 = 0u;
  (*(this->var0 + 16))(this);
}

void OZChannelBase::OZChannelBase(OZChannelBase *this, const OZChannelBase *a2)
{
  var1 = a2->var1;
  this->var0 = &unk_28724B598;
  this->var1 = var1;
  this->var2 = &unk_28724B868;
  PCSharedCount::PCSharedCount(&this->var4);
  this->var3 = a2->var3;
  *&this->var7 = *&a2->var7;
  this->var9 = 0;
  this->var6 = 0;
  PCString::set(&this->var4, &a2->var4);
  this->var5 = 0;
  if (a2->var5)
  {
    operator new();
  }

  this->var10 = 0;
  this->var11 = 0;
  this->var12 = 0;
  OZChannelBase::setLabelCtlrClassName(this, a2->var10);
  OZChannelBase::setParameterCtlrClassName(this, a2->var11);
  OZChannelBase::setInspectorCtlrClassName(this, a2->var12);
  this->var13 = a2->var13;
}

void sub_25FEB3790(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x60C4044C4A2DFLL);
  PCString::~PCString(v1 + 4);
  _Unwind_Resume(a1);
}

void OZChannelBase::setLabelCtlrClassName(OZChannelBase *this, __CFString *cf)
{
  var10 = this->var10;
  if (var10 != cf)
  {
    if (var10)
    {
      CFRelease(var10);
    }

    this->var10 = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void OZChannelBase::setParameterCtlrClassName(OZChannelBase *this, __CFString *cf)
{
  var11 = this->var11;
  if (var11 != cf)
  {
    if (var11)
    {
      CFRelease(var11);
    }

    this->var11 = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void OZChannelBase::setInspectorCtlrClassName(OZChannelBase *this, __CFString *cf)
{
  var12 = this->var12;
  if (var12 != cf)
  {
    if (var12)
    {
      CFRelease(var12);
    }

    this->var12 = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void OZChannelBase::OZChannelBase(OZChannelBase *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  var1 = a2->var1;
  this->var0 = &unk_28724B598;
  this->var1 = var1;
  this->var2 = &unk_28724B868;
  PCSharedCount::PCSharedCount(&this->var4);
  this->var3 = a2->var3;
  *&this->var7 = *&a2->var7;
  this->var9 = 0;
  this->var6 = a3;
  if (a3)
  {
    OZChannelFolder::push_back(a3, this);
  }

  PCString::set(&this->var4, &a2->var4);
  this->var5 = 0;
  if (a2->var5)
  {
    operator new();
  }

  this->var10 = 0;
  this->var11 = 0;
  this->var12 = 0;
  OZChannelBase::setLabelCtlrClassName(this, a2->var10);
  OZChannelBase::setParameterCtlrClassName(this, a2->var11);
  OZChannelBase::setInspectorCtlrClassName(this, a2->var12);
  this->var13 = a2->var13;
}

void sub_25FEB39FC(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x60C4044C4A2DFLL);
  PCString::~PCString(v1 + 4);
  _Unwind_Resume(a1);
}

void OZChannelBase::~OZChannelBase(OZChannelBase *this)
{
  this->var0 = &unk_28724B598;
  this->var2 = &unk_28724B868;
  OZChannelBase::nofityObjCWrapperWillDelete(this);
  OZChannelBase::setResetCallback(this, 0, 0, 0);
  OZChannelBase::cleanup(this);
  if (this->var6)
  {
    this->var6 = 0;
  }

  PCString::~PCString(&this->var4);
}

{
  OZChannelBase::~OZChannelBase(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelBase::setResetCallback(OZChannelBase *this, void (*a2)(OZChannelBase *, void *), void *a3, char a4)
{
  if (OZChannelBase::getResetCallbackDataTable(void)::once != -1)
  {
    OZChannelBase::setResetCallback();
  }

  if (OZChannelBase::_pResetCallbackDataTable)
  {
    v8 = OZChannelBase::_pResetCallbackDataTable;

    OZChannelBase::ResetCallbackDataTable::setResetCallbackForChannel(v8, this, a2, a3, a4);
  }
}

void OZChannelBase::cleanup(OZChannelBase *this)
{
  var5 = this->var5;
  if (var5)
  {
    PCString::~PCString(var5);
    MEMORY[0x2666E9F00]();
    this->var5 = 0;
  }

  var10 = this->var10;
  if (var10)
  {
    CFRelease(var10);
  }

  var11 = this->var11;
  if (var11)
  {
    CFRelease(var11);
  }

  var12 = this->var12;
  if (var12)
  {

    CFRelease(var12);
  }
}

BOOL OZChannelBase::unregisterParent(OZChannelBase *this, OZChannelFolder *a2)
{
  v2 = this->var6 != 0;
  this->var6 = 0;
  return v2;
}

void non-virtual thunk toOZChannelBase::~OZChannelBase(OZChannelBase *this)
{
  OZChannelBase::~OZChannelBase((this - 16));
}

{
  OZChannelBase::~OZChannelBase((this - 16));

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *OZChannelBase::setFlag(OZChannelBase *this, uint64_t a2, char a3)
{
  v4 = this;
  if ((a2 & 0xFFFFFFFDECA4CF86) != 0 && (a3 & 1) == 0)
  {
    this = (*(this->var0 + 58))(this, 2);
  }

  v4->var7 |= a2;
  return this;
}

OZChannelBase *OZChannelBase::updateIDGenerator(OZChannelBase *this)
{
  if (this <= 0xD09DC2FF)
  {
    v1 = atomic_load(sIDGenerator);
    if (v1 <= this)
    {
      v2 = v1;
      do
      {
        atomic_compare_exchange_strong(sIDGenerator, &v2, this + 1);
        if (v2 == v1)
        {
          break;
        }

        v1 = v2;
      }

      while (v2 <= this);
    }
  }

  return this;
}

OZChannelBase *OZChannelBase::updateIDGenerator(OZChannelBase *this, const OZChannelFolder *a2)
{
  var0 = this[1].var0;
  if (var0)
  {
    v3 = *var0;
    if (*var0 != var0[1])
    {
      do
      {
        v4 = *v3;
        this = (*(**v3 + 696))(*v3, a2);
        if ((this & 1) == 0)
        {
          v5 = *(v4 + 24);
          if (v5 <= 0xD09DC2FF)
          {
            v6 = atomic_load(sIDGenerator);
            if (v6 <= v5)
            {
              v7 = v6;
              do
              {
                atomic_compare_exchange_strong(sIDGenerator, &v7, v5 + 1);
                if (v7 == v6)
                {
                  break;
                }

                v6 = v7;
              }

              while (v7 <= v5);
            }
          }

          if ((*(v4 + 57) & 0x10) != 0)
          {
            if (!v8)
            {
              __cxa_bad_cast();
            }

            this = OZChannelBase::updateIDGenerator(v8, v9);
          }
        }

        ++v3;
      }

      while (v3 != var0[1]);
    }
  }

  return this;
}

uint64_t OZChannelBase::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 264))(a1))
  {
    (*(*a1 + 256))(a1, a2);
  }

  return a1;
}

void OZChannelBase::copy(OZChannelBase *this, const OZChannelBase *a2)
{
  this->var3 = a2->var3;
  var8 = a2->var8;
  this->var7 = a2->var7 | 0x40;
  this->var8 = var8;
  PCString::set(&this->var4, &a2->var4);
  var5 = this->var5;
  v6 = a2->var5;
  if (var5)
  {
    if (v6)
    {
      PCString::set(var5, v6);
    }

    else
    {
      PCString::~PCString(var5);
      MEMORY[0x2666E9F00]();
      this->var5 = 0;
    }
  }

  else if (v6)
  {
    operator new();
  }

  OZChannelBase::setLabelCtlrClassName(this, a2->var10);
  OZChannelBase::setParameterCtlrClassName(this, a2->var11);
  var12 = a2->var12;

  OZChannelBase::setInspectorCtlrClassName(this, var12);
}

BOOL OZChannelBase::compare(OZChannelBase *this, const OZChannelBase *a2)
{
  v4 = PCString::caseInsensitiveCompare(&this->var4, &a2->var4);
  result = 0;
  if (this->var3 == a2->var3 && this->var7 == a2->var7 && v4 == 0)
  {
    return 1;
  }

  return result;
}

void OZChannelBase::getRangeName(OZChannelBase *this@<X0>, OZFactoryBase *a2@<X1>, PCURL *a3@<X8>)
{
  TXParagraphStyleFolder_Factory::createInstance(this, a2);

  PCURL::PCURL(a3, @"Channel Over Range Range Name");
}

void OZChannelBase::assign(OZChannelBase *this, const OZChannelBase *a2)
{
  this->var7 = a2->var7 & 0xFFFFFFFFFFFFFFBFLL | (((this->var7 >> 6) & 1) << 6);
  OZChannelBase::setLabelCtlrClassName(this, a2->var10);
  OZChannelBase::setParameterCtlrClassName(this, a2->var11);
  var12 = a2->var12;

  OZChannelBase::setInspectorCtlrClassName(this, var12);
}

OZChannelBase *OZChannelBase::resetFlag(OZChannelBase *this, uint64_t a2, char a3)
{
  v4 = this;
  if ((a2 & 0xFFFFFFFDECA4CF86) != 0 && (a3 & 1) == 0)
  {
    this = (*(this->var0 + 58))(this, 2);
  }

  v4->var7 &= ~a2;
  return this;
}

void OZChannelBase::ResetCallbackDataTable::~ResetCallbackDataTable(PCSpinLock *this)
{
  *&this->_lock._os_unfair_lock_opaque = &unk_28724B918;
  OZChannelBase::_pResetCallbackDataTable = 0;
  PCSpinLock::~PCSpinLock(this + 8);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&this[2], *&this[4]._lock._os_unfair_lock_opaque);

  PCSingleton::~PCSingleton(this);
}

{
  OZChannelBase::ResetCallbackDataTable::~ResetCallbackDataTable(this);

  JUMPOUT(0x2666E9F00);
}

os_unfair_lock_s *OZChannelBase::ResetCallbackDataTable::getResetCallbackDataForChannel(os_unfair_lock_s *this, OZChannelBase *a2)
{
  PCSpinLock::lock(this + 8);
  v4 = *&this[4]._os_unfair_lock_opaque;
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = this + 4;
  do
  {
    v6 = *&v4[8]._os_unfair_lock_opaque;
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[2 * v8]._os_unfair_lock_opaque;
  }

  while (v4);
  if (v5 == &this[4])
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v9 = *&v5[8]._os_unfair_lock_opaque;
    v10 = v5 + 10;
    if (v9 <= a2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  PCSpinLock::unlock(this + 8);
  return v11;
}

void OZChannelBase::ResetCallbackDataTable::setResetCallbackForChannel(os_unfair_lock_s *this, OZChannelBase *a2, void (*a3)(OZChannelBase *, void *), void *a4, char a5)
{
  v17[0] = a2;
  PCSpinLock::lock(this + 8);
  v10 = *&this[4]._os_unfair_lock_opaque;
  v11 = &this[2];
  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = this + 4;
  do
  {
    v13 = *(v10 + 4);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *&v10[8 * v15];
  }

  while (v10);
  if (v12 != &this[4] && *&v12[8]._os_unfair_lock_opaque <= a2)
  {
    if (a3)
    {
      *&v12[10]._os_unfair_lock_opaque = a3;
      *&v12[12]._os_unfair_lock_opaque = a4;
      LOBYTE(v12[14]._os_unfair_lock_opaque) = a5;
    }

    else
    {
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(v11, v12);
      operator delete(v12);
    }
  }

  else
  {
LABEL_9:
    if (a3)
    {
      v17[2] = v17;
      v16 = std::__tree<std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>,std::__map_value_compare<OZChannelBase *,std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>,std::less<OZChannelBase *>,true>,std::allocator<std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>>>::__emplace_unique_key_args<OZChannelBase *,std::piecewise_construct_t const&,std::tuple<OZChannelBase * const&>,std::tuple<>>(v11, v17);
      v16[5] = a3;
      v16[6] = a4;
      *(v16 + 56) = a5;
    }
  }

  PCSpinLock::unlock(this + 8);
}

void OZChannelBase::reset(OZChannelBase *this, uint64_t a2)
{
  if (OZChannelBase::getResetCallbackDataTable(void)::once != -1)
  {
    OZChannelBase::setResetCallback();
  }

  if (OZChannelBase::_pResetCallbackDataTable)
  {
    ResetCallbackDataForChannel = OZChannelBase::ResetCallbackDataTable::getResetCallbackDataForChannel(OZChannelBase::_pResetCallbackDataTable, this);
    if (ResetCallbackDataForChannel)
    {
      v11 = *&ResetCallbackDataForChannel->_os_unfair_lock_opaque;
      if (LOBYTE(ResetCallbackDataForChannel[4]._os_unfair_lock_opaque) == 1)
      {
        OZChannelBase::ensureObjCWrapperExists(this, v5, v11, v6, v7, v8, v9, v10);
      }

      v12 = *&ResetCallbackDataForChannel[2]._os_unfair_lock_opaque;
      v13 = this;
    }

    else
    {
      v11 = *(this->var0 + 35);
      v13 = this;
      v12 = a2;
    }

    v11(v13, v12);
  }
}

uint64_t OZChannelBase::getResetCallback(OZChannelBase *this, void (**a2)(OZChannelBase *, void *), void **a3, BOOL *a4)
{
  if (OZChannelBase::getResetCallbackDataTable(void)::once != -1)
  {
    OZChannelBase::setResetCallback();
  }

  if (!OZChannelBase::_pResetCallbackDataTable)
  {
    return 0;
  }

  result = OZChannelBase::ResetCallbackDataTable::getResetCallbackDataForChannel(OZChannelBase::_pResetCallbackDataTable, this);
  if (result)
  {
    if (a2)
    {
      *a2 = *result;
    }

    if (a3)
    {
      *a3 = *(result + 8);
    }

    if (a4)
    {
      *a4 = *(result + 16);
    }

    return 1;
  }

  return result;
}

void OZChannelBase::getFullDisplayName(OZChannelBase *this@<X0>, PCString *a2@<X8>)
{
  PCString::PCString(a2, &this->var4);
  PCString::PCString(&v8, ".");
  PCSharedCount::PCSharedCount(&v7);
  var6 = this->var6;
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    PCString::set(&v7, ChannelRootBase + 4);
  }

  if (var6)
  {
    if (!(*(*var6 + 120))(var6) || (PCString::insert(a2, 0, &v8), PCString::insert(a2, 0, var6 + 4), (var6 = *(var6 + 6)) != 0))
    {
      if ((PCString::find(a2, &v7) & 0x80000000) != 0 && (*(var6 + 7) & 0x4002000) != 0x2000)
      {
        v6 = *(var6 + 6);
        if (v6)
        {
          if ((*(v6 + 56) & 0x4002000) != 0x2000)
          {
            PCString::insert(a2, 0, &v8);
            PCString::insert(a2, 0, var6 + 4);
            if ((*(v6 + 59) & 4) != 0)
            {
              PCString::insert(a2, 0, &v8);
              PCString::insert(a2, 0, (v6 + 32));
            }
          }
        }
      }
    }
  }

  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
}

void sub_25FEB4834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCString::~PCString(v10);
  _Unwind_Resume(a1);
}

void *OZChannelBase::getChannelRootBase(OZChannelBase *this)
{
  if (!this)
  {
    return 0;
  }

  while ((this->var7 & 0x2000) == 0)
  {
    this = this->var6;
    if (!this)
    {
      return 0;
    }
  }
}

void OZChannelBase::setName(OZChannelBase *this, const PCString *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
  }

  PCString::set(&this->var4, a2);
}

void OZChannelBase::setInternalName(OZChannelBase *this, const PCString *a2)
{
  (*(this->var0 + 58))(this, 1);
  var5 = this->var5;
  if (!var5)
  {
    operator new();
  }

  PCString::set(var5, a2);
}

OZChannelBase *OZChannelBase::setFlags(OZChannelBase *this, unint64_t a2)
{
  v3 = this;
  if ((a2 & 0xFFFFFFFDECA4CF86) != 0)
  {
    this = (*(this->var0 + 58))(this, 2);
  }

  v3->var7 = a2;
  return this;
}

uint64_t OZChannelBase::getObjectManipulator(OZChannelBase *this)
{
  if (!this)
  {
    return 0;
  }

  while ((this->var7 & 0x2000) == 0)
  {
    this = this->var6;
    if (!this)
    {
      return 0;
    }
  }

  return v2();
}

void OZChannelBase::getRef(OZChannelBase *this, int a2)
{
  if (this && a2)
  {
    v2 = this;
    do
    {
      if ((v2->var7 & 0x2000) != 0)
      {
        operator new();
      }

      v2 = v2->var6;
    }

    while (v2);
  }

  operator new();
}

OZChannelBase *OZChannelBase::getAncestorRootBase(OZChannelBase *this)
{
  if (this)
  {
    v1 = this;
    this = 0;
    do
    {
      if ((v1->var7 & 0x2000) != 0)
      {
      }

      v1 = v1->var6;
    }

    while (v1);
  }

  return this;
}

__n128 OZChannelBase::getTimeOffset@<Q0>(OZChannelBase *this@<X0>, uint64_t a2@<X8>)
{
  var6 = this->var6;
  if (var6)
  {
    (*(*var6 + 320))();
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v4 + 16);
  }

  return result;
}

double OZChannelBase::globalToLocalTime@<D0>(OZChannelBase *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *&v6.value = *&this->var0;
  v6.epoch = this->var2;
  v5 = *a2;
  return PC_CMTimeSaferSubtract(&v6, &v5, a3);
}

double OZChannelBase::localToGlobalTime@<D0>(OZChannelBase *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *&v6.value = *&this->var0;
  v6.epoch = this->var2;
  v5 = *a2;
  return PC_CMTimeSaferAdd(&v6, &v5, a3);
}

__n128 OZChannelBase::globalToLocalTime@<Q0>(OZChannelBase *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  var13 = this->var13;
  if (var13)
  {
    (*(*var13 + 16))(var13, this, a2);
  }

  else
  {
    var6 = this->var6;
    if (var6)
    {
      (*(*var6 + 328))(var6, a2);
    }

    else
    {
      result = *&a2->value;
      *a3 = *&a2->value;
      *(a3 + 16) = a2->epoch;
    }
  }

  return result;
}

__n128 OZChannelBase::localToGlobalTime@<Q0>(OZChannelBase *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  var13 = this->var13;
  if (var13)
  {
    (*(*var13 + 24))(var13, this, a2);
  }

  else
  {
    var6 = this->var6;
    if (var6)
    {
      (*(*var6 + 336))(var6, a2);
    }

    else
    {
      result = *&a2->value;
      *a3 = *&a2->value;
      *(a3 + 16) = a2->epoch;
    }
  }

  return result;
}

CMTime *OZChannelBase::getFrameDuration@<X0>(OZChannelBase *this@<X0>, CMTime *a2@<X8>)
{
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    v4 = *(*ChannelRootBase + 880);

    return v4();
  }

  else
  {

    return CMTimeMake(a2, 1, 30);
  }
}

void OZChannelBase::keyframesWithChannelRef(OZChannelFolder *a1, _OWORD *a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = a2[1];
  *__p = *a2;
  v13 = v5;
  v14 = a2[2];
  (*(*a1 + 536))(a1, __p, &v15);
  v6 = v15;
  if (v16 != v15)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      OZChannelRef::OZChannelRef(__p, *(v6 + 32 * v7), a1);
      v9 = v15;
      v18 = __p;
      v10 = (std::__tree<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::__map_value_compare<OZChannelRef,std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::less<OZChannelRef>,true>,std::allocator<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>>>::__emplace_unique_key_args<OZChannelRef,std::piecewise_construct_t const&,std::tuple<OZChannelRef const&>,std::tuple<>>(a3, __p) + 56);
      v11 = (v9 + 32 * v7 + 8);
      if (v10 != v11)
      {
        std::vector<_OZKeyframeInfo>::__assign_with_size[abi:ne200100]<_OZKeyframeInfo*,_OZKeyframeInfo*>(v10, *v11, *(v9 + 32 * v7 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 32 * v7 + 16) - *v11) >> 5));
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v8;
      v6 = v15;
      ++v8;
    }

    while (v7 < (v16 - v15) >> 5);
  }

  __p[0] = &v15;
  std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_25FEB5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v18 - 72) = &a18;
  std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::__destroy_vector::operator()[abi:ne200100]((v18 - 72));
  _Unwind_Resume(a1);
}

void OZChannelRef::~OZChannelRef(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t OZChannelBase::setKeyframesWithChannelRef(uint64_t result, CMTime *a2, uint64_t a3, void *a4, int a5)
{
  v7 = result;
  v33 = **&MEMORY[0x277CC08A0];
  v32 = **&MEMORY[0x277CC08B0];
  v8 = (a4 + 1);
  v9 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      v11 = v9[7];
      if (v9[8] != v11)
      {
        v12 = 0;
        v13 = 1;
        do
        {
          v14 = &v11[6 * v12];
          v15 = *v14;
          time1.epoch = *(v14 + 2);
          *&time1.value = v15;
          time2 = v32;
          v16 = CMTimeCompare(&time1, &time2);
          v17 = v9[7];
          if (v16 < 0)
          {
            v32 = *&v17[6 * v12];
          }

          v18 = &v17[6 * v12];
          v19 = *v18;
          time1.epoch = *(v18 + 2);
          *&time1.value = v19;
          time2 = v33;
          result = CMTimeCompare(&time1, &time2);
          v11 = v9[7];
          if (result >= 1)
          {
            v33 = *&v11[6 * v12];
          }

          v12 = v13;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v9[8] - v11) >> 5) > v13++);
      }

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

    while (v22 != v8);
    v9 = *a4;
  }

  if (v9 != v8)
  {
    do
    {
      result = OZChannelRef::getChannel((v9 + 4), v7);
      if (result)
      {
        if (result)
        {
          v24 = result;
          if (a5)
          {
            time1 = v33;
            time2 = v32;
            PC_CMTimeSaferSubtract(&time1, &time2, &v30);
            time1 = *a2;
            time2 = v30;
            v25.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v31);
            (*(v24->var0 + 85))(v24, a2, &v31, v25);
          }

          memset(&v31, 0, sizeof(v31));
          v26 = v9[7];
          v27 = *v26;
          time1.epoch = *(v26 + 2);
          *&time1.value = v27;
          time2 = v32;
          PC_CMTimeSaferSubtract(&time1, &time2, &v30);
          time1 = *a2;
          time2 = v30;
          PC_CMTimeSaferAdd(&time1, &time2, &v31);
          result = OZChannel::setKeyframesWithInfo(v24, &v31, v9 + 7);
        }
      }

      v28 = v9[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v9[2];
          v23 = *v29 == v9;
          v9 = v29;
        }

        while (!v23);
      }

      v9 = v29;
    }

    while (v29 != v8);
  }

  return result;
}

OZChannelBase *OZChannelRef::getChannel(OZChannelRef *this, OZChannelBase *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = this;
  if (*(this + 23) < 0)
  {
    v3 = *this;
  }

  if (*v3 == 46)
  {
    v4 = *(v3 + 1);
    v3 = (v3 + 1);
    if (v4 == 47)
    {
      v3 = (v3 + 1);
    }

    result = a2;
  }

  else
  {
    result = 0;
  }

  while (1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (!*v3 || v7 == 47)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      v3 = (v3 + 1);
    }

    if (v7 == 47)
    {
      v3 = (v3 + 1);
    }

    if (!result)
    {
      break;
    }

    if ((result->var7 & 0x1000) == 0)
    {
      return 0;
    }

    if (!result)
    {
      return result;
    }

    result = OZChannelFolder::getDescendant(result, v6);
    if (!result)
    {
      return result;
    }

LABEL_22:
    if (!*v3)
    {
      return result;
    }
  }

  result = a2;
  if (a2->var3 == v6)
  {
    goto LABEL_22;
  }

  return 0;
}

void OZChannelBase::keypoints(OZChannelBase *this@<X0>, CMTimeRange *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((*(this->var0 + 71))(this, a2, a4))
  {
    std::vector<CMTime>::push_back[abi:ne200100](a5, &a2->start.value);
  }

  start = a2->start;
  if ((a3 & 1) != 0 && (*(this->var0 + 78))(this, &start, a4))
  {
    std::vector<CMTime>::push_back[abi:ne200100](a5, &start.value);
  }

  while ((*(this->var0 + 79))(this, &start, a4))
  {
    v10 = *&a2->start.epoch;
    *&v12.start.value = *&a2->start.value;
    *&v12.start.epoch = v10;
    *&v12.duration.timescale = *&a2->duration.timescale;
    CMTimeRangeGetEnd(&v13, &v12);
    v12.start = start;
    time2 = v13;
    if (CMTimeCompare(&v12.start, &time2) > 0)
    {
      break;
    }

    std::vector<CMTime>::push_back[abi:ne200100](a5, &start.value);
  }

  if (a3)
  {
    v11 = *&a2->start.epoch;
    *&v12.start.value = *&a2->start.value;
    *&v12.start.epoch = v11;
    *&v12.duration.timescale = *&a2->duration.timescale;
    CMTimeRangeGetEnd(&time2, &v12);
    start = time2;
    if ((*(this->var0 + 79))(this, &start, a4))
    {
      std::vector<CMTime>::push_back[abi:ne200100](a5, &start.value);
    }
  }
}

void sub_25FEB5750(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelBase::visibleKeypoints(OZChannelBase *this, CMTimeRange *a2)
{
  v2 = *&a2->start.epoch;
  v4[0] = *&a2->start.value;
  v4[1] = v2;
  v4[2] = *&a2->duration.timescale;
  return (*(this->var0 + 65))(this, v4);
}

void OZChannelBase::offsetKeyframesInRange(OZChannelBase *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, const CMTime *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = *a4;
  __p = 0;
  v39 = 0;
  v40 = 0;
  if ((*(this->var0 + 71))(this, a2, 0))
  {
    std::vector<CMTime>::push_back[abi:ne200100](&__p, &a2->value);
  }

  for (i = *a2; (*(this->var0 + 79))(this, &i, 0); std::vector<CMTime>::push_back[abi:ne200100](&__p, &i.value))
  {
    time1 = i;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      break;
    }
  }

  v15 = __p;
  if (__p == v39)
  {
    v18 = MEMORY[0x277CC08F0];
    *a8 = *MEMORY[0x277CC08F0];
    *(a8 + 16) = *(v18 + 16);
    if (!v15)
    {
      return;
    }

    goto LABEL_29;
  }

  v16 = MEMORY[0x277CC08F0];
  if (a7)
  {
    time1 = v41;
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      time1 = v41;
      time2 = *v16;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v19 = *(__p + 2);
        *&v36.value = *__p;
        v36.epoch = v19;
        v35 = *__p;
        if ((*(this->var0 + 78))(this, &v36, 0))
        {
          time1 = v35;
          time2 = v41;
          PC_CMTimeSaferAdd(&time1, &time2, &v34);
          time1 = v36;
          time2 = *a5;
          PC_CMTimeSaferAdd(&time1, &time2, &v33);
          time1 = v34;
          time2 = v33;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            time1 = v36;
            time2 = *a5;
            PC_CMTimeSaferAdd(&time1, &time2, &v33);
            time1 = v33;
            time2 = v35;
            PC_CMTimeSaferSubtract(&time1, &time2, &v34);
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v17 = *(v39 - 3);
      v36.epoch = *(v39 - 1);
      *&v36.value = v17;
      v35 = *(v39 - 1);
      if ((*(this->var0 + 79))(this, &v36, 0))
      {
        time1 = v35;
        time2 = v41;
        PC_CMTimeSaferAdd(&time1, &time2, &v34);
        time1 = v36;
        time2 = *a5;
        PC_CMTimeSaferSubtract(&time1, &time2, &v33);
        time1 = v34;
        time2 = v33;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          time1 = v36;
          time2 = *a5;
          PC_CMTimeSaferSubtract(&time1, &time2, &v33);
          time1 = v33;
          time2 = v35;
          PC_CMTimeSaferSubtract(&time1, &time2, &v34);
LABEL_13:
          v41 = v34;
        }
      }
    }
  }

  time1 = v41;
  time2 = *v16;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v27 = -1431655765 * ((v39 - __p) >> 3);
    if (v27)
    {
      v28 = 0;
      v29 = 24 * v27;
      do
      {
        v30 = __p + v28;
        v31 = *(__p + v28);
        time1.epoch = *(__p + v28 + 16);
        *&time1.value = v31;
        time2 = v41;
        v32 = PC_CMTimeSaferAdd(&time1, &time2, &v36);
        (*(this->var0 + 77))(&time1, this, v30, &v36, a6, a7, v32);
        v28 += 24;
      }

      while (v29 != v28);
    }
  }

  else
  {
    time1 = v41;
    time2 = *v16;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v39 - __p) >> 3);
      if (v20 >= 1)
      {
        v21 = v20 & 0x7FFFFFFF;
        v22 = v21 + 1;
        v23 = 24 * v21 - 24;
        do
        {
          v24 = __p + v23;
          v25 = *(__p + v23);
          time1.epoch = *(__p + v23 + 16);
          *&time1.value = v25;
          time2 = v41;
          v26 = PC_CMTimeSaferAdd(&time1, &time2, &v36);
          (*(this->var0 + 77))(&time1, this, v24, &v36, a6, a7, v26);
          --v22;
          v23 -= 24;
        }

        while (v22 > 1);
      }
    }
  }

  *a8 = v41;
  v15 = __p;
  if (__p)
  {
LABEL_29:
    v39 = v15;
    operator delete(v15);
  }
}

void sub_25FEB5E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

OZChannelBase *OZChannelBase::setNameUnset(OZChannelBase *this, int a2)
{
  v2 = 64;
  if (!a2)
  {
    v2 = 0;
  }

  this->var7 = this->var7 & 0xFFFFFFFFFFFFFFBFLL | v2;
  return this;
}

uint64_t OZChannelBase::lock(OZChannelBase *this, int a2)
{
  result = (*(this->var0 + 58))(this, 2);
  v5 = 4;
  if (!a2)
  {
    v5 = 0;
  }

  this->var7 = this->var7 & 0xFFFFFFFFFFFFFFFBLL | v5;
  return result;
}

uint64_t OZChannelBase::isLocked(OZChannelBase *this, char a2)
{
  v2 = a2 ^ 1;
  do
  {
    var7 = this->var7;
    v4 = (var7 >> 2) & 1;
    if (v2)
    {
      break;
    }

    if ((var7 & 4) != 0)
    {
      break;
    }

    v2 = 0;
    v4 = 0;
    this = this->var6;
  }

  while (this);
  return v4;
}

unint64_t OZChannelBase::isAnyAncestorLocked(OZChannelBase *this)
{
  var6 = this->var6;
  if (!var6)
  {
    return 0;
  }

  do
  {
    v2 = *(var6 + 7);
    result = (v2 >> 2) & 1;
    if ((v2 & 4) != 0)
    {
      break;
    }

    var6 = *(var6 + 6);
  }

  while (var6);
  return result;
}

OZChannelBase *OZChannelBase::enable(OZChannelBase *this, int a2, char a3)
{
  v3 = this;
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      this = (*(this->var0 + 58))(this, 2);
    }

    v4 = v3->var7 & 0xFFFFFFFFFFFF7FFFLL;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      this = (*(this->var0 + 58))(this, 2);
    }

    v4 = v3->var7 | 0x8000;
  }

  v3->var7 = v4;
  return this;
}

unint64_t OZChannelBase::isEnabled(OZChannelBase *this, int a2, int a3)
{
  v4 = this;
  if (a3 && (this->var7 & 0x80000) != 0 && (ChannelRootBase = OZChannelBase::getChannelRootBase(this)) != 0 && (*(*ChannelRootBase + 792))(ChannelRootBase))
  {
    v6 = v4;
    while (1)
    {
      v6 = v6->var6;
      if (!v6)
      {
        break;
      }

      if ((v6->var7 & 0x40000) != 0)
      {
        return (v4->var7 & 0x8000) == 0;
      }
    }

    var7 = v4->var7;
    if ((var7 & 0x40000) != 0)
    {
      return 1;
    }

    else
    {
      return (var7 >> 20) & 1;
    }
  }

  else
  {
    result = (v4->var7 & 0x8000) == 0;
    if ((v4->var7 & 0x8000) == 0 && a2)
    {
      do
      {
        v4 = v4->var6;
        result = v4 == 0;
      }

      while (v4 && (v4->var7 & 0x8000) == 0);
    }
  }

  return result;
}

uint64_t OZChannelBase::isDisabled(OZChannelBase *this, int a2)
{
  v2 = this;
  var7 = this->var7;
  result = (var7 >> 15) & 1;
  if ((var7 & 0x8000) == 0 && a2)
  {
    do
    {
      v2 = v2->var6;
      result = v2 != 0;
    }

    while (v2 && (v2->var7 & 0x8000) == 0);
  }

  return result;
}

OZChannelBase *OZChannelBase::solo(OZChannelBase *this, int a2)
{
  if ((this->var7 & 0x80000) != 0)
  {
    v3 = this;
    this = (*(this->var0 + 58))(this, 2);
    v4 = 0x40000;
    if (!a2)
    {
      v4 = 0;
    }

    v3->var7 = v3->var7 & 0xFFFFFFFFFFFBFFFFLL | v4;
  }

  return this;
}

OZChannelBase *OZChannelBase::setChildSolo(OZChannelBase *this, char a2)
{
  do
  {
    if ((a2 & 1) == 0)
    {
      var7 = this->var7;
      if ((var7 & 0x80000) != 0)
      {
        this->var7 = var7 | 0x100000;
      }
    }

    a2 = 0;
    this = this->var6;
  }

  while (this);
  return this;
}

BOOL OZChannelBase::isDescendantOf(OZChannelBase *this, OZChannelBase *a2)
{
  do
  {
    this = this->var6;
  }

  while (this != a2 && this != 0);
  return this != 0;
}

OZChannelBase *OZChannelBase::willBeModified(OZChannelBase *this, uint64_t a2)
{
  if (this)
  {
    v3 = this;
    while ((this->var7 & 0x2000) == 0)
    {
      this = this->var6;
      if (!this)
      {
        return this;
      }
    }

    v5 = *(*v4 + 776);

    return v5(v4, v3, a2);
  }

  return this;
}

void *OZChannelBase::hasBeenModified(OZChannelBase *this, BOOL *a2)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    v5 = *(*result + 784);

    return v5(result, this, a2);
  }

  return result;
}

void *OZChannelBase::addToUndo(OZChannelBase *this, const PCString *a2)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    v5 = *(*result + 752);

    return v5(result, this, a2);
  }

  return result;
}

uint64_t OZChannelBase::writeFlags(uint64_t result, void *a2, int a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    result = (*(*a2 + 232))(a2);
    v6 = -65;
    if (result)
    {
      v6 = 0xFFFFFFFDECA4CF86;
    }

    v7 = v6 & v3;
    if (v7)
    {
      if (a3)
      {
        PCSerializerWriteStream::pushScope(a2, &OZChannelBaseScope);
        (*(*a2 + 16))(a2, 112);
        (*(*a2 + 72))(a2, v7);
        (*(*a2 + 24))(a2);

        return PCSerializerWriteStream::popScope(a2);
      }

      else
      {
        v8 = *(*a2 + 160);

        return v8(a2, 112, v7);
      }
    }
  }

  return result;
}

uint64_t OZChannelBase::writeHeader(OZChannelBase *this, OZFactory *a2, int a3)
{
  v3 = a3;
  if (a3 && OZFactory::fileRefID(this->var1, a2))
  {
    v6 = (*(*a2 + 232))(a2) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  PCSerializerWriteStream::pushScope(a2, &OZChannelBaseScope);
  (*(*a2 + 16))(a2, 110);
  v7 = *a2;
  if (v6)
  {
    (*(v7 + 200))(a2, 110, &this->var4);
  }

  else
  {
    (*(v7 + 216))(a2, 110, &this->var4);
  }

  if ((*(*a2 + 232))(a2) && (this->var7 & 0x80) != 0)
  {
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(*a2 + 144))(a2, 111, this->var3);
    if (v3)
    {
LABEL_11:
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  OZChannelBase::writeFlags(this, a2, 0);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v9 = OZFactory::fileRefID(this->var1, v8);
    (*(*a2 + 144))(a2, 113, v9);
  }

LABEL_17:

  return PCSerializerWriteStream::popScope(a2);
}

OZChannelBase *OZChannelBase::writeBody(OZChannelBase *this, PCSerializerWriteStream *a2, int a3)
{
  if (a3)
  {
    return OZChannelBase::writeFlags(this, a2, 1);
  }

  return this;
}

OZChannelBase *non-virtual thunk toOZChannelBase::writeBody(OZChannelBase *this, PCSerializerWriteStream *a2, int a3)
{
  if (a3)
  {
    return OZChannelBase::writeFlags(&this[-1].var12, a2, 1);
  }

  return this;
}

uint64_t OZChannelBase::parseElement(OZChannelBase *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 112)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = 0;
    if ((*(*a3 + 48))(a3, v8))
    {
      v6 = v8[0];
      if ((v8[0] & 0xFFFFFFFDECA4CF86) != 0)
      {
        (*(this->var0 + 58))(this, 2);
      }

      this->var7 = v6;
    }
  }

  return 1;
}

void OZChannelBase::getHash(OZChannelBase *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v5);
  v4 = v1[2];
  v1 += 2;
  (*(v4 + 16))(v1, v5, 0);
  (*(*v1 + 24))(v1, v5, 0, 1, 1);
  (*(*v5 + 24))(v5);
  *v3 = *PCHashWriteStream::getHash(v5)->i8;
  PCHashWriteStream::~PCHashWriteStream(v5);
}

uint64_t ChannelParser::parseBegin(ChannelParser *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZMLScope);
  (*(**(this + 1) + 464))();
  return 1;
}

uint64_t ChannelParser::parseElement(ChannelParser *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v22);
  v21 = 0;
  v20 = 0;
  v6 = *(a3 + 2);
  if ((v6 - 90) < 2)
  {
    PCSharedCount::PCSharedCount(&v19);
    v18 = 0;
    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 116, &v18);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 116, &v19);
    v17 = 0;
    CStr = PCString::createCStr(&v19);
    sscanf(CStr, "%d.%d", &v17 + 4, &v17);
    v9 = v17;
    *(a2 + 26) = HIDWORD(v17);
    *(a2 + 27) = v9;
    free(CStr);
    PCString::~PCString(&v19);
  }

  else if (v6 == 92)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v21);
    AttributeAsUUID = PCSerializerReadStream::getAttributeAsUUID(a2, a3, 117);
    v11 = AttributeAsUUID;
    if (AttributeAsUUID)
    {
      Instance = OZFactories::getInstance(AttributeAsUUID);
      Factory = OZFactories::findFactory(Instance, v11);
      v14 = Factory;
      if (Factory)
      {
        v15 = OZFactories::getInstance(Factory);
        OZFactories::setFactoryLoadID(v15, v21, v14);
      }

      MEMORY[0x2666E9F00](v11, 0x1000C40451B5BE8);
    }
  }

  else if (v6 == 110)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, &v20);
    LODWORD(v19.var0) = 0;
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v19);
    v7 = *(this + 1);
    *(v7 + 24) = v19.var0;
    *(this + 16) = 1;
    PCSerializerReadStream::pushHandler(a2, (v7 + 16));
  }

  PCString::~PCString(&v22);
  return 1;
}

void sub_25FEB6CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, PCString a14)
{
  PCString::~PCString(&a14);
  PCString::~PCString((v14 - 40));
  _Unwind_Resume(a1);
}

CFDataRef OZChannelBase::createChannelState(OZChannelBase *this, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  PCBufferWriteStream::PCBufferWriteStream(v11, 0x8000, 0x8000);
  PCXMLWriteStream::PCXMLWriteStream(&v12, v11, 5u, 0xDu);
  v6 = (*(this->var0 + 52))(this, &v12, 0);
  Instance = OZFactories::getInstance(v6);
  OZFactories::saveFactories(Instance, &v12);
  var2 = this->var2;
  this = (this + 16);
  (var2[2])(this, &v12, 1);
  (*(this->var0 + 3))(this, &v12, 1, a2, a3);
  v12[3](&v12);
  PCXMLWriteStream::close(&v12);
  v9 = PCBufferWriteStream::copyData(v11);
  v12 = &unk_2872091F0;
  PCURL::~PCURL(v16);
  std::deque<PCHash128>::~deque[abi:ne200100](v15);
  v12 = &unk_287208ED0;
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  PCBufferWriteStream::~PCBufferWriteStream(v11);
  return v9;
}

void sub_25FEB6EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  PCXMLWriteStream::~PCXMLWriteStream(&a15);
  PCBufferWriteStream::~PCBufferWriteStream(&a9);
  _Unwind_Resume(a1);
}

uint64_t OZChannelBase::configureWithState(OZChannelBase *this, const __CFData *a2)
{
  v6[0] = &unk_28724B950;
  v6[1] = this;
  v7 = 0;
  PCXMLReadStream::PCXMLReadStream(v5, a2);
  PCSerializerReadStream::pushHandler(v5, v6);
  v2 = PCXMLReadStream::parse(v5);
  v3 = v7;
  PCXMLReadStream::~PCXMLReadStream(v5);
  return v2 & v3;
}

void OZChannelRef::OZChannelRef(OZChannelRef *this, OZChannelFolder *a2, OZChannelFolder *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  memset(&v12, 0, sizeof(v12));
  MEMORY[0x2666E99D0]();
  if (a2 != a3)
  {
    while (1)
    {
      snprintf(__str, 0x20uLL, "%u", *(a2 + 6));
      if (*(this + 23) < 0)
      {
        break;
      }

      if (*(this + 23))
      {
        goto LABEL_4;
      }

LABEL_5:
      MEMORY[0x2666E99D0](&v12, __str);
      v6 = *(this + 23);
      if (v6 >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      if (v6 >= 0)
      {
        v8 = *(this + 23);
      }

      else
      {
        v8 = *(this + 1);
      }

      std::string::append(&v12, v7, v8);
      std::string::operator=(this, &v12);
      a2 = *(a2 + 6);
      if (a2 == a3)
      {
        if (a3)
        {
          strcpy(__str, ".");
          if (*(this + 23) < 0)
          {
            if (*(this + 1))
            {
LABEL_18:
              *&__str[strlen(__str)] = 47;
            }
          }

          else if (*(this + 23))
          {
            goto LABEL_18;
          }

LABEL_24:
          MEMORY[0x2666E99D0](&v12, __str);
          v9 = *(this + 23);
          if (v9 >= 0)
          {
            v10 = this;
          }

          else
          {
            v10 = *this;
          }

          if (v9 >= 0)
          {
            v11 = *(this + 23);
          }

          else
          {
            v11 = *(this + 1);
          }

          std::string::append(&v12, v10, v11);
          std::string::operator=(this, &v12);
        }

        goto LABEL_31;
      }
    }

    if (!*(this + 1))
    {
      goto LABEL_5;
    }

LABEL_4:
    *&__str[strlen(__str)] = 47;
    goto LABEL_5;
  }

  if (a3)
  {
    snprintf(__str, 0x20uLL, "%u", *(a2 + 6));
    if (*(this + 23) < 0)
    {
      if (!*(this + 1))
      {
        goto LABEL_24;
      }
    }

    else if (!*(this + 23))
    {
      goto LABEL_24;
    }

    *&__str[strlen(__str)] = 47;
    goto LABEL_24;
  }

LABEL_31:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_25FEB717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelRef::OZChannelRef(OZChannelRef *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void OZChannelRef::OZChannelRef(std::string *this, const OZChannelRef *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v2 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v2;
  }
}

uint64_t OZChannelRef::getID(OZChannelRef *this)
{
  v1 = *(this + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(this + 23))
    {
      return 0;
    }

    v2 = this;
    LODWORD(i) = *(this + 23);
LABEL_6:
    v4 = i + 1;
    while (1)
    {
      v5 = v4 - 2;
      if (v4 - 2 < 0)
      {
        break;
      }

      --v4;
      if ((*(v2 + (v5 & 0x7FFFFFFF)) & 0xFE) == 0x2E)
      {
        for (i = 0; ; i = (*(v2 + v4++) + 10 * i - 48))
        {
          v6 = *(this + 23);
          if ((v1 & 0x80000000) != 0)
          {
            v6 = *(this + 1);
          }

          if (v6 <= v4)
          {
            break;
          }
        }

        return i;
      }
    }

    return 0;
  }

  i = *(this + 1);
  if (i)
  {
    v2 = *this;
    goto LABEL_6;
  }

  return i;
}

void OZChannelRef::setID(std::string *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }

    v4 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return;
    }

    v4 = this;
  }

  v5 = size + 1;
  while (1)
  {
    v6 = v5 - 2;
    if (((v5 - 2) & 0x80000000) != 0)
    {
      break;
    }

    --v5;
    if ((v4->__r_.__value_.__s.__data_[v6 & 0x7FFFFFFF] & 0xFE) == 0x2E)
    {
      memset(&v7, 0, sizeof(v7));
      snprintf(__str, 0xBuLL, "%u", a2);
      std::string::append(&v7, this, 0, v5);
      std::string::append(&v7, __str);
      std::string::operator=(this, &v7);
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }

      return;
    }
  }
}

void sub_25FEB73E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL OZChannelRef::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL OZChannelRef::operator!=(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

BOOL OZChannelRef::operator<(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

OZChannelRef **OZChannelRef::getMotionOnlyPath(OZChannelRef **this)
{
  if (*(this + 23) < 0)
  {
    this = *this;
  }

  v1 = this;
  while (1)
  {
    v2 = 0;
    for (i = (v1 + 1); ; i = (i + 1))
    {
      v4 = *(i - 1);
      if (!*(i - 1) || v4 == 47)
      {
        break;
      }

      v2 = v4 + 10 * v2 - 48;
    }

    if (!v4 || v2 == 9999)
    {
      break;
    }

    v1 = i;
    if (!*i)
    {
      return this;
    }
  }

  return v1;
}

void *std::__tree<std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>,std::__map_value_compare<OZChannelBase *,std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>,std::less<OZChannelBase *>,true>,std::allocator<std::__value_type<OZChannelBase *,OZChannelBase::ResetCallbackDataTable::ResetCallbackData>>>::__emplace_unique_key_args<OZChannelBase *,std::piecewise_construct_t const&,std::tuple<OZChannelBase * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
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

uint64_t std::__tree<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::__map_value_compare<OZChannelRef,std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::less<OZChannelRef>,true>,std::allocator<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>>>::__emplace_unique_key_args<OZChannelRef,std::piecewise_construct_t const&,std::tuple<OZChannelRef const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::__map_value_compare<OZChannelRef,std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::less<OZChannelRef>,true>,std::allocator<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>>>::__find_equal<OZChannelRef>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::__map_value_compare<OZChannelRef,std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::less<OZChannelRef>,true>,std::allocator<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<OZChannelRef const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::__map_value_compare<OZChannelRef,std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,std::less<OZChannelRef>,true>,std::allocator<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>>>::__find_equal<OZChannelRef>(uint64_t a1, void *a2, void *a3)
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
        if (!OZChannelRef::operator<(a3, v4 + 4))
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

      if (!OZChannelRef::operator<(v7 + 4, a3))
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<OZChannelRef,std::vector<_OZKeyframeInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<OZChannelRef const,std::vector<_OZKeyframeInfo>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<OZChannelRef const,std::vector<_OZKeyframeInfo>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::vector<_OZKeyframeInfo>::__assign_with_size[abi:ne200100]<_OZKeyframeInfo*,_OZKeyframeInfo*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 5) < a4)
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

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<_OZKeyframeInfo>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 5) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_25FEB7CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t DeleteDescendants(OZChannelFolder *a1)
{
  result = (*(*a1 + 120))(a1);
  if ((result & 1) == 0)
  {
    if (!result)
    {
      while (1)
      {
        v4 = *(a1 + 14);
        if (!v4)
        {
          break;
        }

        v3 = *v4;
        if (((*(*(a1 + 14) + 8) - v3) >> 3) < 1)
        {
          break;
        }

        result = DeleteDescendant(a1, *v3);
      }
    }
  }

  return result;
}

uint64_t IterateDescendants(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(result + 112);
    if (v5 && ((v5[1] - *v5) >> 3))
    {
      v6 = 0;
      v7 = a2 & 1;
      v8 = 8 * ((v5[1] - *v5) >> 3);
      do
      {
        v9 = *(*v5 + v6);
        var7 = v9->var7;
        if ((a2 & 8) != 0 || (var7 & 2) == 0)
        {
          if ((*(v9->var0 + 15))(*(*v5 + v6)))
          {
            v11 = (*(v9->var0 + 11))(v9);
            v12 = CFStringCompare(v11, @"CHChannelImageWithOptions", 0) != kCFCompareEqualTo;
          }

          else
          {
            v12 = 0;
          }

          if ((a2 & 2) == 0 || ((var7 & 0x1000) != 0 ? (v13 = (a2 & 4) != 0 || !v12) : (v13 = 0), v14 = a2 & 1, !v13))
          {
            if ((a2 & 0x10) != 0)
            {
              v15 = CHPreexistingChannelWrapperForOZChannel(v9);
            }

            else
            {
              v15 = CHChannelWrapperForOZChannel(v9, 0);
            }

            if (v15)
            {
              result = (*(a3 + 16))(a3, v15);
              if (!result)
              {
                return result;
              }
            }

            if (v12)
            {
              v16 = 33;
            }

            else
            {
              v16 = 65;
            }

            v14 = v16 & a2;
            if ((var7 & 0x1000) == 0)
            {
              v14 = v7;
            }
          }

          if ((var7 & 0x1000) != 0 && !v14)
          {
            result = IterateDescendants(v17, a2, a3);
            if (!result)
            {
              return result;
            }
          }
        }

        v6 += 8;
      }

      while (v8 != v6);
    }

    return 1;
  }

  return result;
}

OZChannelBase *FixupNewChild(OZChannelFolder *a1, OZChannelBase *a2)
{
  result = OZChannelFolder::getDescendant(a1, a2->var3);
  if (result)
  {
    v5 = *(a1 + 14);
    if (v5 && (v6 = *v5, v7 = *(*(a1 + 14) + 8) - v6, (v7 & 0x7FFFFFFF8) != 0))
    {
      v8 = 0;
      v9 = (v7 >> 3);
      do
      {
        v10 = *v6++;
        v11 = *(v10 + 24);
        if (v11 > v8)
        {
          v8 = v11;
        }

        --v9;
      }

      while (v9);
      v12 = v8 + 1;
    }

    else
    {
      v12 = 1;
    }

    return OZChannelBase::setID(a2, v12);
  }

  return result;
}

uint64_t DeleteDescendant(OZChannelFolder *a1, OZChannelBase *a2)
{
  OZChannelFolder::removeDescendant(a1, a2);
  result = CHPreexistingChannelWrapperForOZChannel(a2);
  if (result)
  {
    *(result + 16) = 1;
  }

  else if (a2)
  {
    var0 = a2->var0;
    if (v5)
    {
      DeleteDescendants(v5);
      var0 = a2->var0;
    }

    v6 = var0[1];

    return v6(a2);
  }

  return result;
}

void sub_25FEB93B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void sub_25FEB9834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FEBC900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FEBCC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBDC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBDE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBDFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBE9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBFA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEBFEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FEC0350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZChannelShearAngle::OZChannelShearAngle(OZChannelShearAngle *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelShearAngle_FactoryBase = getOZChannelShearAngle_FactoryBase();
  OZChannel::OZChannel(this, OZChannelShearAngle_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287246BA0;
  this->var2 = &unk_287246F00;
  OZChannelShearAngleInfo = OZChannelShearAngle::createOZChannelShearAngleInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelShearAngle::_OZChannelShearAngleInfo;
    this->var17 = OZChannelShearAngle::_OZChannelShearAngleInfo;
  }

  this->var16 = var17;
  OZChannelShearAngle::createOZChannelShearAngleImpl(OZChannelShearAngleInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelShearAngle::_OZChannelShearAngleImpl;
    this->var15 = OZChannelShearAngle::_OZChannelShearAngleImpl;
  }

  this->var14 = var15;
}

void OZChannelAspectRatio::OZChannelAspectRatio(OZChannelAspectRatio *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelAspectRatio_FactoryBase = getOZChannelAspectRatio_FactoryBase();
  OZChannel::OZChannel(this, OZChannelAspectRatio_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287246F70;
  this->var2 = &unk_2872472D0;
  OZChannelAspectRatioInfo = OZChannelAspectRatio::createOZChannelAspectRatioInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAspectRatio::_OZChannelAspectRatioInfo;
    this->var17 = OZChannelAspectRatio::_OZChannelAspectRatioInfo;
  }

  this->var16 = var17;
  OZChannelAspectRatio::createOZChannelAspectRatioImpl(OZChannelAspectRatioInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAspectRatio::_OZChannelAspectRatioImpl;
    this->var15 = OZChannelAspectRatio::_OZChannelAspectRatioImpl;
  }

  this->var14 = var15;
}

void OZChannelAspectRatioFootage::OZChannelAspectRatioFootage(OZChannelAspectRatioFootage *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelAspectRatioFootage_FactoryBase = getOZChannelAspectRatioFootage_FactoryBase();
  OZChannel::OZChannel(this, OZChannelAspectRatioFootage_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287247340;
  this->var2 = &unk_2872476A0;
  OZChannelAspectRatioFootageInfo = OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageInfo;
    this->var17 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageInfo;
  }

  this->var16 = var17;
  OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(OZChannelAspectRatioFootageInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl;
    this->var15 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl;
  }

  this->var14 = var15;
}

void OZChannelGammaFootage::OZChannelGammaFootage(OZChannelGammaFootage *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelGammaFootage_FactoryBase = getOZChannelGammaFootage_FactoryBase();
  OZChannel::OZChannel(this, OZChannelGammaFootage_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287247710;
  this->var2 = &unk_287247A70;
  OZChannelGammaFootageInfo = OZChannelGammaFootage::createOZChannelGammaFootageInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelGammaFootage::_OZChannelGammaFootageInfo;
    this->var17 = OZChannelGammaFootage::_OZChannelGammaFootageInfo;
  }

  this->var16 = var17;
  OZChannelGammaFootage::createOZChannelGammaFootageImpl(OZChannelGammaFootageInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelGammaFootage::_OZChannelGammaFootageImpl;
    this->var15 = OZChannelGammaFootage::_OZChannelGammaFootageImpl;
  }

  this->var14 = var15;
}

void OZChannelFrame::OZChannelFrame(OZChannelFrame *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelFrame_FactoryBase = getOZChannelFrame_FactoryBase();
  OZChannel::OZChannel(this, OZChannelFrame_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287248280;
  this->var2 = &unk_2872485E0;
  OZChannelFrameInfo = OZChannelFrame::createOZChannelFrameInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelFrame::_OZChannelFrameInfo;
    this->var17 = OZChannelFrame::_OZChannelFrameInfo;
  }

  this->var16 = var17;
  OZChannelFrame::createOZChannelFrameImpl(OZChannelFrameInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelFrame::_OZChannelFrameImpl;
    this->var15 = OZChannelFrame::_OZChannelFrameImpl;
  }

  this->var14 = var15;
}

void OZChannelUint16::OZChannelUint16(OZChannelUint16 *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelUint16_FactoryBase = getOZChannelUint16_FactoryBase();
  OZChannel::OZChannel(this, OZChannelUint16_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_2872467D0;
  this->var2 = &unk_287246B30;
  OZChannelUint16Info = OZChannelUint16::createOZChannelUint16Info(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint16::_OZChannelUint16Info;
    this->var17 = OZChannelUint16::_OZChannelUint16Info;
  }

  this->var16 = var17;
  OZChannelUint16::createOZChannelUint16Impl(OZChannelUint16Info);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint16::_OZChannelUint16Impl;
    this->var15 = OZChannelUint16::_OZChannelUint16Impl;
  }

  this->var14 = var15;
}

uint64_t OZChannelBool::createOZChannelBoolInfo(OZChannelBool *this)
{
  if (atomic_load_explicit(&OZChannelBool::createOZChannelBoolInfo(void)::_OZChannelBoolInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBool::createOZChannelBoolInfo(void)::_OZChannelBoolInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBool::_OZChannelBoolInfo;
}

uint64_t OZChannelBool::createOZChannelBoolTrueImpl(OZChannelBool *this)
{
  if (atomic_load_explicit(&OZChannelBool::createOZChannelBoolTrueImpl(void)::_OZChannelBoolTrueImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBool::createOZChannelBoolTrueImpl(void)::_OZChannelBoolTrueImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolTrueImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBool::_OZChannelBoolTrueImpl;
}

uint64_t OZChannelBool::createOZChannelBoolFalseImpl(OZChannelBool *this)
{
  if (atomic_load_explicit(&OZChannelBool::createOZChannelBoolFalseImpl(void)::_OZChannelBoolFalseImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBool::createOZChannelBoolFalseImpl(void)::_OZChannelBoolFalseImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolFalseImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBool::_OZChannelBoolFalseImpl;
}

void OZChannelBool::OZChannelBool(OZChannelBool *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  Instance = OZChannelBool_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_28724B9C0;
  this->var2 = &unk_28724BD20;
  OZChannelBoolInfo = OZChannelBool::createOZChannelBoolInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelBool::_OZChannelBoolInfo;
    this->var17 = OZChannelBool::_OZChannelBoolInfo;
  }

  this->var16 = var17;
  OZChannelBoolTrueImpl = OZChannelBool::createOZChannelBoolTrueImpl(OZChannelBoolInfo);
  OZChannelBool::createOZChannelBoolFalseImpl(OZChannelBoolTrueImpl);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelBool::_OZChannelBoolFalseImpl;
    this->var15 = OZChannelBool::_OZChannelBoolFalseImpl;
  }

  this->var14 = var15;
}

void OZChannelBool::OZChannelBool(OZChannelBool *this, int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelBool_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_28724B9C0;
  this->var2 = &unk_28724BD20;
  OZChannelBoolInfo = OZChannelBool::createOZChannelBoolInfo(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelBool::_OZChannelBoolInfo;
    this->var17 = OZChannelBool::_OZChannelBoolInfo;
  }

  this->var16 = var17;
  OZChannelBoolTrueImpl = OZChannelBool::createOZChannelBoolTrueImpl(OZChannelBoolInfo);
  OZChannelBool::createOZChannelBoolFalseImpl(OZChannelBoolTrueImpl);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    if (a2)
    {
      var15 = OZChannelBool::_OZChannelBoolTrueImpl;
    }

    else
    {
      var15 = OZChannelBool::_OZChannelBoolFalseImpl;
    }

    this->var15 = var15;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void OZChannelBool::OZChannelBool(OZChannelBool *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6);
  v9->var0 = &unk_28724B9C0;
  v9->var2 = &unk_28724BD20;
  OZChannelBoolInfo = OZChannelBool::createOZChannelBoolInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelBool::_OZChannelBoolInfo;
    this->var17 = OZChannelBool::_OZChannelBoolInfo;
  }

  this->var16 = var17;
  OZChannelBoolTrueImpl = OZChannelBool::createOZChannelBoolTrueImpl(OZChannelBoolInfo);
  OZChannelBool::createOZChannelBoolFalseImpl(OZChannelBoolTrueImpl);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelBool::_OZChannelBoolFalseImpl;
    this->var15 = OZChannelBool::_OZChannelBoolFalseImpl;
  }

  this->var14 = var15;
}

void OZChannelBool::OZChannelBool(OZChannelBool *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v3 = &unk_28724B9C0;
  v3[2] = &unk_28724BD20;
}

void non-virtual thunk toOZChannelBool::~OZChannelBool(OZChannelBool *this)
{
  OZChannel::~OZChannel(&this[-1].var17);
}

{
  OZChannel::~OZChannel(&this[-1].var17);

  JUMPOUT(0x2666E9F00);
}

void OZChannelBool::~OZChannelBool(OZChannelBool *this)
{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelBool::_OZChannelBoolInfo)
  {
    operator new();
  }
}

void OZChannelBoolInfo::OZChannelBoolInfo(OZChannelBoolInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28724BD90;
  *(this + 10) = &unk_28724BDB0;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolTrueImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelBool::_OZChannelBoolTrueImpl)
  {
    operator new();
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBool::createOZChannelBoolFalseImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelBool::_OZChannelBoolFalseImpl)
  {
    operator new();
  }
}

void OZChannelBool3D::OZChannelBool3D(OZChannelBool3D *this, int a2, int a3, int a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, unsigned int a9)
{
  Instance = OZChannelBool3D_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a5, a6, a7, a8, 0, a9);
  *this = &unk_28724BE08;
  *(this + 2) = &unk_28724C150;
  TXParagraphStyleFolder_Factory::createInstance(v18, v19);
  PCURL::PCURL(&v24, @"Channel X");
  OZChannelBool::OZChannelBool((this + 136), a2, &v24, this, 1u, 0, 0, 0);
  PCString::~PCString(&v24);
  TXParagraphStyleFolder_Factory::createInstance(v20, v21);
  PCURL::PCURL(&v24, @"Channel Y");
  OZChannelBool::OZChannelBool((this + 288), a3, &v24, this, 2u, 0, 0, 0);
  PCString::~PCString(&v24);
  TXParagraphStyleFolder_Factory::createInstance(v22, v23);
  PCURL::PCURL(&v24, @"Channel Z");
  OZChannelBool::OZChannelBool((this + 440), a4, &v24, this, 3u, 0, 0, 0);
  PCString::~PCString(&v24);
}

{
  OZChannelBool3D::OZChannelBool3D(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_25FEC17AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + 288));
  OZChannelBool::~OZChannelBool((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelBool3D::OZChannelBool3D(OZChannelBool3D *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_28724BE08;
  *(v6 + 2) = &unk_28724C150;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v12, @"Channel X");
  OZChannelBool::OZChannelBool((this + 136), &v12, this, 1u, 0, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v12, @"Channel Y");
  OZChannelBool::OZChannelBool((this + 288), &v12, this, 2u, 0, 0, 0);
  PCString::~PCString(&v12);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v12, @"Channel Z");
  OZChannelBool::OZChannelBool((this + 440), &v12, this, 3u, 0, 0, 0);
  PCString::~PCString(&v12);
}

void sub_25FEC1954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + 288));
  OZChannelBool::~OZChannelBool((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelBool3D::OZChannelBool3D(OZChannelBool3D *this, const OZChannelBool3D *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_28724BE08;
  *(v5 + 16) = &unk_28724C150;
  OZChannelBool::OZChannelBool((v5 + 136), (a2 + 136), this);
  OZChannelBool::OZChannelBool((this + 288), (a2 + 288), this);
  OZChannelBool::OZChannelBool((this + 440), (a2 + 440), this);
}

void sub_25FEC1A54(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 288));
  OZChannelBool::~OZChannelBool((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelBool3D::copy(OZChannelBool3D *this, const OZChannelBase *a2, char a3)
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

uint64_t OZChannelBool3D::getValue(uint64_t result, const CMTime *a2, double *a3, double a4)
{
  if (a3)
  {
    v7 = result;
    if (OZChannel::getValueAsInt((result + 136), a2, a4))
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (OZChannel::getValueAsInt((v7 + 288), a2, a4))
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    result = OZChannel::getValueAsInt((v7 + 440), a2, a4);
    if (result)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    *a3 = v8;
    a3[1] = v9;
    a3[2] = v10;
  }

  return result;
}

void OZChannelBool3D::~OZChannelBool3D(OZChannelBool3D *this)
{
  OZChannelBool3D::~OZChannelBool3D(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_28724BE08;
  *(this + 2) = &unk_28724C150;
  OZChannelBool::~OZChannelBool((this + 440));
  OZChannelBool::~OZChannelBool((this + 288));
  OZChannelBool::~OZChannelBool((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

void non-virtual thunk toOZChannelBool3D::~OZChannelBool3D(OZChannelBool3D *this)
{
  OZChannelBool3D::~OZChannelBool3D((this - 16));
}

{
  OZChannelBool3D::~OZChannelBool3D((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelButton::OZChannelButton(OZChannelButton *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelButton_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, 0, 0);
  this->var0 = &unk_28724C238;
  this->var2 = &unk_28724C598;
  PCSharedCount::PCSharedCount(&this->var20);
  PCSharedCount::PCSharedCount(&this->var22);
  this->var23 = 0;
  OZChannelButtonInfo = OZChannelButton::createOZChannelButtonInfo(v11);
  this->var16 = OZChannelButtonInfo;
  this->var17 = OZChannelButtonInfo;
  v13 = OZChannelButton::_OZChannelButtonImpl;
  if (!OZChannelButton::_OZChannelButtonImpl)
  {
    operator new();
  }

  this->var14 = OZChannelButton::_OZChannelButtonImpl;
  this->var15 = v13;
  OZChannelBase::setFlag(this, 8, 0);
  this->var19 = 0;
  this->var7 |= 0x10000uLL;
  (*(this->var0 + 16))(this);
}

void sub_25FEC1F5C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A1C407F0BD61ELL);
  PCString::~PCString((v1 + 176));
  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelButton::createOZChannelButtonInfo(OZChannelButton *this)
{
  if (atomic_load_explicit(&OZChannelButton::createOZChannelButtonInfo(void)::_OZChannelButtonInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelButton::createOZChannelButtonInfo(void)::_OZChannelButtonInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelButton::createOZChannelButtonInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelButton::_OZChannelButtonInfo;
}

void OZChannelButton::OZChannelButton(OZChannelButton *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, 0, 0);
  v7->var0 = &unk_28724C238;
  v7[2].var0 = &unk_28724C598;
  PCSharedCount::PCSharedCount(v7 + 20);
  PCSharedCount::PCSharedCount(&this->var22);
  this->var23 = 0;
  OZChannelButtonInfo = OZChannelButton::createOZChannelButtonInfo(v8);
  this->var16 = OZChannelButtonInfo;
  this->var17 = OZChannelButtonInfo;
  OZChannelButton::createOZChannelButtonImpl(OZChannelButtonInfo);
  v10 = OZChannelButton::_OZChannelButtonImpl;
  this->var14 = OZChannelButton::_OZChannelButtonImpl;
  this->var15 = v10;
  OZChannelBase::setFlag(this, 8, 0);
  this->var19 = 0;
  this->var7 |= 0x10000uLL;
  (*(this->var0 + 16))(this);
}

void sub_25FEC2124(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChannelButton::createOZChannelButtonImpl(OZChannelButton *this)
{
  if (atomic_load_explicit(&OZChannelButton::createOZChannelButtonImpl(void)::_OZChannelButtonImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelButton::createOZChannelButtonImpl(void)::_OZChannelButtonImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelButton::createOZChannelButtonImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelButton::_OZChannelButtonImpl;
}

void OZChannelButton::OZChannelButton(OZChannelButton *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  v5->var0 = &unk_28724C238;
  v5[2].var0 = &unk_28724C598;
  PCSharedCount::PCSharedCount(v5 + 20);
  PCSharedCount::PCSharedCount(&this->var22);
  this->var23 = 0;
  OZChannelButtonInfo = OZChannelButton::createOZChannelButtonInfo(v6);
  this->var16 = OZChannelButtonInfo;
  this->var17 = OZChannelButtonInfo;
  OZChannelButton::createOZChannelButtonImpl(OZChannelButtonInfo);
  v8 = OZChannelButton::_OZChannelButtonImpl;
  this->var14 = OZChannelButton::_OZChannelButtonImpl;
  this->var15 = v8;
  OZChannelBase::setFlag(this, 8, 0);
  this->var19 = 0;
  this->var7 |= 0x10000uLL;
  (*(this->var0 + 16))(this);
}

void sub_25FEC22A4(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelButton::OZChannelButton(OZChannelButton *this, void (*a2)(void *), void *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7)
{
  Instance = OZChannelButton_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a4, a5, a6, a7, 0, 0);
  this->var0 = &unk_28724C238;
  this->var2 = &unk_28724C598;
  PCSharedCount::PCSharedCount(&this->var20);
  PCSharedCount::PCSharedCount(&this->var22);
  this->var23 = 0;
  OZChannelButtonInfo = OZChannelButton::createOZChannelButtonInfo(v15);
  this->var16 = OZChannelButtonInfo;
  this->var17 = OZChannelButtonInfo;
  OZChannelButton::createOZChannelButtonImpl(OZChannelButtonInfo);
  v17 = OZChannelButton::_OZChannelButtonImpl;
  this->var14 = OZChannelButton::_OZChannelButtonImpl;
  this->var15 = v17;
  this->var19 = a2;
  this->var21 = a3;
  this->var7 |= 0x10000uLL;
  (*(this->var0 + 16))(this);
}

void sub_25FEC23FC(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelButton::OZChannelButton(OZChannelButton *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  v5->var0 = &unk_28724C238;
  v5[2].var0 = &unk_28724C598;
  PCSharedCount::PCSharedCount(v5 + 20);
  PCSharedCount::PCSharedCount(&this->var22);
  this->var23 = 0;
  this->var19 = a2[1].var5;
  PCString::set(&this->var20, &a2[1].var6);
  PCString::set(&this->var22, &a2[1].var8);
}

void sub_25FEC24D0(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelButton::copy(OZChannelButton *this, const OZChannelBase *a2)
{
  OZChannelBase::copy(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      this->var19 = v4[19].var0;
      PCString::set(&this->var20, v4 + 20);

      PCString::set(&this->var22, v5 + 22);
    }
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelButton::createOZChannelButtonInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelButton::_OZChannelButtonInfo)
  {
    operator new();
  }
}

void OZChannelButtonInfo::OZChannelButtonInfo(OZChannelButtonInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28724C1C0;
  *(this + 10) = &unk_28724C1E0;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelButton::createOZChannelButtonImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelButton::_OZChannelButtonImpl)
  {
    operator new();
  }
}

void sub_25FEC28F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FEC2D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_25FEC31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZChannelButton::~OZChannelButton(OZChannelButton *this)
{
  this->var0 = &unk_28724C238;
  this->var2 = &unk_28724C598;
  if (this->var19 == DummyCallback && PCString::empty(&this->var20) || this->var23)
  {
  }

  PCString::~PCString(&this->var22);
  PCString::~PCString(&this->var20);

  OZChannel::~OZChannel(this);
}

{
  OZChannelButton::~OZChannelButton(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelButton::~OZChannelButton(OZChannelButton *this)
{
  OZChannelButton::~OZChannelButton((this - 16));
}

{
  OZChannelButton::~OZChannelButton((this - 16));

  JUMPOUT(0x2666E9F00);
}

OZChannelButton *OZChannelButton::callCallback(OZChannelButton *this)
{
  var19 = this->var19;
  if (var19)
  {
    v2 = this;
    if (var19 == DummyCallback)
    {
      this = PCString::empty(&this->var20);
      if ((this & 1) == 0)
      {
        v4 = PCString::ns_str(&v2->var20);
        v5 = NSSelectorFromString(&v4->isa);
        v6 = [(__CFString *)PCString::ns_str(&v2->var20) hasSuffix:@":"];
        var21 = v2->var21;
        if (v6)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v2->var3];

          return [var21 performSelector:v5 withObject:v8];
        }

        else
        {
          v9 = v2->var21;

          return [v9 performSelector:v5];
        }
      }
    }

    else
    {
      v3 = this->var21;

      return var19(v3);
    }
  }

  return this;
}

void OZChannelButton::setPrivateData(OZChannelButton *this, void *a2)
{
  var21 = this->var21;
  this->var21 = a2;
  if (this->var23)
  {
  }

  this->var23 = 0;
}

void *OZChannelButton::getCallbackBlock(OZChannelButton *this)
{
  if (this->var19 != DummyCallback)
  {
    return 0;
  }

  if (PCString::empty(&this->var20))
  {
    return this->var21;
  }

  return 0;
}

void OZChannelButton::setCallbackBlock(OZChannelButton *this, void *a2)
{
  if (this->var19 == DummyCallback && PCString::empty(&this->var20))
  {
  }

  if (a2)
  {
    this->var19 = DummyCallback;
    v4 = [a2 copy];
    var21 = this->var21;
    this->var21 = v4;
    if (this->var23)
    {
    }

    this->var23 = 0;
    v6 = &v11;
    PCString::PCString(&v11, "");
    v7.var0 = &v11;
    OZChannelButton::setCallbackSelectorAsString(this, v7, 0);
  }

  else
  {
    this->var19 = 0;
    v8 = this->var21;
    this->var21 = 0;
    if (this->var23)
    {
    }

    this->var23 = 0;
    v6 = &v10;
    PCString::PCString(&v10, "");
    v9.var0 = &v10;
    OZChannelButton::setCallbackSelectorAsString(this, v9, 0);
  }

  PCString::~PCString(v6);
  this->var23 = 0;
}

void OZChannelButton::setCallbackSelectorAsString(OZChannelButton *this, PCString a2, void *a3)
{
  if (this->var19 == DummyCallback && PCString::empty(&this->var20))
  {
  }

  this->var19 = DummyCallback;
  var21 = this->var21;
  this->var21 = a3;
  if (this->var23)
  {
  }

  this->var23 = 0;

  PCString::set(&this->var20, a2.var0);
}

void OZChannelColor::OZChannelColor(OZChannelColor *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelColor_Factory::getInstance(this);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha(this, Instance, a2, a3, a4, a5, a6);
  *this = &unk_28724C608;
  *(this + 2) = &unk_28724C978;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v18, @"Channel Alpha");
  v16 = OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(v15);
  v17 = OZChannelColor::OZChannelColor_alphaInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 1008), &v18, this, 4u, 0, v16, v17);
  PCString::~PCString(&v18);
}

void OZChannelColor::OZChannelColor(OZChannelColor *this, double a2, double a3, double a4, double a5, const PCString *a6, OZChannelFolder *a7, unsigned int a8, int a9, int a10)
{
  OZChannelColorNoAlpha::OZChannelColorNoAlpha(this, a2, a3, a4, a6, a7, a8, a9, a10);
  *v12 = &unk_28724C608;
  *(v12 + 2) = &unk_28724C978;
  TXParagraphStyleFolder_Factory::createInstance(v12, v13);
  PCURL::PCURL(&v19, @"Channel Alpha");
  if (fabs(a5 + -1.0) >= 0.0000001)
  {
    Instance = OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(v14);
  }

  else
  {
    Instance = OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(v14);
  }

  v16 = Instance;
  v17 = OZChannelColor::OZChannelColor_alphaInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 1008), a5, &v19, this, 4u, 0, v16, v17);
  PCString::~PCString(&v19);
  *(this + 1) = OZChannelColor_Factory::getInstance(v18);
}

void sub_25FEC3A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 1008));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(v10);
  _Unwind_Resume(a1);
}

void OZChannelColor::OZChannelColor(OZChannelColor *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZChannelColorNoAlpha::OZChannelColorNoAlpha(this, a2, a3, a4, a5);
  *v6 = &unk_28724C608;
  *(v6 + 2) = &unk_28724C978;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v11, @"Channel Alpha");
  Instance = OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(v8);
  v10 = OZChannelColor::OZChannelColor_alphaInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 1008), &v11, this, 4u, 0, Instance, v10);
  PCString::~PCString(&v11);
}

void OZChannelColor::OZChannelColor(OZChannelColor *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelColorNoAlpha::OZChannelColorNoAlpha(this, a2, a3);
  *v5 = &unk_28724C608;
  *(v5 + 16) = &unk_28724C978;
  OZChannel::OZChannel((v5 + 1008), a2 + 9, this);
  *(this + 126) = &unk_287245C60;
  *(this + 128) = &unk_287245FC0;
}

void OZChannelColor::copy(OZChannelColor *this, const OZChannelBase *a2, char a3)
{
  OZChannelColorNoAlpha::copy(this, a2, a3);

  OZChannel::copy((this + 1008), v6 + 9, a3);
}

double OZChannelColor::getColor(OZChannelColor *this, const CMTime *a2, PCColor *a3, double a4)
{
  OZChannelColorNoAlpha::getColor(this, a2, a3, a4);
  OZChannel::getValueAsDouble((this + 1008), a2, a4);
  v9 = v8;

  return PCColor::setAlpha(a3, v9);
}

double OZChannelColor::getColor(OZChannelColor *this, const CMTime *a2, PCColor *a3)
{
  OZChannelColorNoAlpha::getColor(this, a2, a3);
  OZChannel::getValueAsDouble((this + 1008), a2, 0.0);
  v7 = v6;

  return PCColor::setAlpha(a3, v7);
}

uint64_t OZChannelColor::setColor(OZChannelColor *this, const CMTime *a2, PCColor *a3, uint64_t a4)
{
  OZChannelColorNoAlpha::setColor(this, a2, a3, a4);
  v8.n128_f64[0] = PCColor::getAlpha(a3);
  v9 = *(*(this + 126) + 712);

  return v9(this + 1008, a2, a4, v8);
}

uint64_t OZChannelColor::setDefaultColor(OZChannelColor *this, PCColor *a2)
{
  OZChannelColorNoAlpha::setDefaultColor(this, a2);
  Alpha = PCColor::getAlpha(a2);

  return OZChannel::setDefaultValue((this + 1008), Alpha);
}

double OZChannelColor::getDefaultColor(OZChannelColor *this, PCColor *a2)
{
  OZChannelColorNoAlpha::getDefaultColor(this, a2);
  DefaultValue = OZChannel::getDefaultValue((this + 1008));

  return PCColor::setAlpha(a2, DefaultValue);
}

void non-virtual thunk toOZChannelColor::~OZChannelColor(OZChannelColor *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_28724C608;
  *this = &unk_28724C978;
  OZChannel::~OZChannel((this + 992));

  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(v1);
}

{
  v1 = (this - 16);
  *(this - 2) = &unk_28724C608;
  *this = &unk_28724C978;
  OZChannel::~OZChannel((this + 992));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(v1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(OZChannelColor::OZChannelColor_alpha_zeroImpl *this)
{
  if (atomic_load_explicit(&OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(void)::OZChannelColor_alpha_zeroImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(void)::OZChannelColor_alpha_zeroImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColor::OZChannelColor_alpha_zeroImpl::_OZChannelColor_alpha_zero;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alpha_zeroImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColor::OZChannelColor_alpha_zeroImpl::_OZChannelColor_alpha_zero)
  {
    operator new();
  }
}

uint64_t OZChannelColor::OZChannelColor_alphaInfo::getInstance(OZChannelColor::OZChannelColor_alphaInfo *this)
{
  if (atomic_load_explicit(&OZChannelColor::OZChannelColor_alphaInfo::getInstance(void)::OZChannelColor_alphaInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColor::OZChannelColor_alphaInfo::getInstance(void)::OZChannelColor_alphaInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alphaInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColor::OZChannelColor_alphaInfo::_OZChannelColor_alphaInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alphaInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColor::OZChannelColor_alphaInfo::_OZChannelColor_alphaInfo)
  {
    operator new();
  }
}

OZChannelColor::OZChannelColor_alphaInfo *OZChannelColor::OZChannelColor_alphaInfo::OZChannelColor_alphaInfo(OZChannelColor::OZChannelColor_alphaInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 0.01, 0.001, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28724CA60;
  *(this + 10) = &unk_28724CA80;
  return this;
}

uint64_t OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(OZChannelColor::OZChannelColor_alpha_oneImpl *this)
{
  if (atomic_load_explicit(&OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(void)::OZChannelColor_alpha_oneImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(void)::OZChannelColor_alpha_oneImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColor::OZChannelColor_alpha_oneImpl::_OZChannelColor_alpha_one;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColor::OZChannelColor_alpha_oneImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColor::OZChannelColor_alpha_oneImpl::_OZChannelColor_alpha_one)
  {
    operator new();
  }
}

void sub_25FEC46A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

Class CHChannelWrapperClassForOZChannel(uint64_t a1)
{
  v1 = (*(*a1 + 88))(a1);

  return NSClassFromString(v1);
}

id GetWrapperForOZChannel(OZChannelBase *a1)
{
  objc_sync_enter(@"CHChannelWrapperLock");
  var9 = a1->var9;
  v3 = var9;
  objc_sync_exit(@"CHChannelWrapperLock");

  return var9;
}

uint64_t CHDescriptionForOZChannel(uint64_t a1)
{
  v2 = (*(*a1 + 88))(a1);
  if (!v2)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<unwrappable channel: oz=%p(%s), name='%@', ID=%u>", a1, *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL, PCString::ns_str((a1 + 32)), *(a1 + 24), v9];
  }

  v3 = v2;
  v4 = NSClassFromString(v2);
  v5 = MEMORY[0x277CCACA8];
  v6 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
  v7 = PCString::ns_str((a1 + 32));
  if (v4)
  {
    return [v5 stringWithFormat:@"<unwrapped %@: oz=%p(%s), name='%@', ID=%u>", v3, a1, v6, v7, *(a1 + 24)];
  }

  else
  {
    return [v5 stringWithFormat:@"<unimplemented %@: oz=%p(%s), name='%@', ID=%u>", v3, a1, v6, v7, *(a1 + 24)];
  }
}

uint64_t ChannelStateCopy(OZChannelBase *a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  v3 = (*(a1->var0 + 31))(a1);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = *(v3 + 112);
    if (v7)
    {
      v7 = ((v7[1] - *v7) >> 3);
    }

    v8 = v4[14];
    if (v8)
    {
      v8 = ((v8[1] - *v8) >> 3);
    }

    if (v7 != v8)
    {
      OZChannelFolder::setFoldFlag(v3, 0x80000000);
      v9 = v6[14];
      if (v9)
      {
        v10 = v9[1] - *v9;
        if (v10)
        {
          v11 = 0;
          v12 = v10 >> 3;
          while (1)
          {
            v13 = ChannelStateCopy(*(*v9 + 8 * v11), 0);
            if (!v13)
            {
              break;
            }

            OZChannelFolder::push_back(v3, v13);
            if (v12 == ++v11)
            {
              return v3;
            }
          }

          (*(*v3 + 8))(v3);
          return 0;
        }
      }
    }
  }

  return v3;
}

OZChannelBase *CHChannelWrapperForOZChannel(OZChannelBase *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = GetWrapperForOZChannel(result);
    if (!result)
    {
      v4 = (*(v3->var0 + 11))(v3);
      v5 = [objc_alloc(NSClassFromString(v4)) initWithOZChannel:v3 freeWhenDone:a2];

      return v5;
    }
  }

  return result;
}

void sub_25FEC5398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void sub_25FEC59B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ChannelStateDestroy(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    if (result)
    {
      v4 = result;
      result = OZChannelFolder::testFoldFlag(result, 0x80000000);
      v5 = *(v4 + 112);
      if (v5)
      {
        v6 = v5[1] - *v5;
        if (v6)
        {
          v7 = result;
          v8 = (v6 >> 3) - 1;
          do
          {
            result = ChannelStateDestroy(*(*v5 + 8 * v8--), v7);
          }

          while (v8 != -1);
        }
      }
    }

    if (a2)
    {
      v9 = *(*v3 + 8);

      return v9(v3);
    }
  }

  return result;
}

uint64_t OZChannelColorNoAlpha::selectRedPrototype(OZChannelColorNoAlpha *this, double a2)
{
  if (fabs(a2) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(this);
  }

  if (fabs(a2 + -1.0) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(this);
  }

  if (fabs(a2 + -0.64) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(this);
  }

  if (fabs(a2 + -0.21) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(this);
  }

  if (fabs(a2 + -0.5) >= 0.0000001)
  {
    return 0;
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(this);
}

uint64_t OZChannelColorNoAlpha::selectGreenPrototype(OZChannelColorNoAlpha *this, double a2)
{
  if (fabs(a2) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(this);
  }

  if (fabs(a2 + -1.0) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(this);
  }

  if (fabs(a2 + -0.68) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(this);
  }

  if (fabs(a2 + -0.43) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(this);
  }

  if (fabs(a2 + -0.5) >= 0.0000001)
  {
    return 0;
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(this);
}

uint64_t OZChannelColorNoAlpha::selectBluePrototype(OZChannelColorNoAlpha *this, double a2)
{
  if (fabs(a2) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(this);
  }

  if (fabs(a2 + -1.0) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(this);
  }

  if (fabs(a2 + -0.77) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(this);
  }

  if (fabs(a2 + -0.75) < 0.0000001)
  {
    return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(this);
  }

  if (fabs(a2 + -0.5) >= 0.0000001)
  {
    return 0;
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(this);
}

void OZChannelColorNoAlpha::OZChannelColorNoAlpha(OZChannelColorNoAlpha *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6)
{
  Instance = OZChannelColorNoAlpha_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_28724CB50;
  *(this + 2) = &unk_28724CEC0;
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v44, @"Channel Red");
  v16 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v15);
  v17 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 136), &v44, this, 1u, 0, v16, v17);
  PCString::~PCString(&v44);
  TXParagraphStyleFolder_Factory::createInstance(v18, v19);
  PCURL::PCURL(&v44, @"Channel Green");
  v21 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v20);
  v22 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v21);
  OZChannelDouble::OZChannelDouble((this + 288), &v44, this, 2u, 0, v21, v22);
  PCString::~PCString(&v44);
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v44, @"Channel Blue");
  v26 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v25);
  v27 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v26);
  OZChannelDouble::OZChannelDouble((this + 440), &v44, this, 3u, 0, v26, v27);
  PCString::~PCString(&v44);
  TXParagraphStyleFolder_Factory::createInstance(v28, v29);
  PCURL::PCURL(&v44, @"Channel Gamma");
  v31 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(v30);
  OZChannelDouble::OZChannelDouble((this + 592), &v44, this, 0xAu, 138, v31, 0);
  PCString::~PCString(&v44);
  v33 = OZChannelBase::setRangeName(3, v32);
  LODWORD(v26) = v33;
  TXParagraphStyleFolder_Factory::createInstance(v33, v34);
  PCURL::PCURL(&v44, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v35, v36);
  PCURL::PCURL(&v43, @"Channel Color Space");
  v38 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(v37);
  OZChannelEnum::OZChannelEnum((this + 744), v26, &v44, &v43, this, 0xBu, 130, v38, 0);
  PCString::~PCString(&v43);
  PCString::~PCString(&v44);
  *(this + 1000) = 1;
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMin((this + 440), 0.0);
  OZChannel::setSliderMax((this + 440), 1.0);
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    OZChannel::setMin((this + 744), -1.0);
    v40 = (*(*ChannelRootBase + 864))(ChannelRootBase);
    v42 = OZChannelBase::setRangeName(v40, v41);
    if (OZChannel::getValueAsInt((this + 744), MEMORY[0x277CC08F0], 0.0) != v42)
    {
      OZChannel::setValue((this + 744), MEMORY[0x277CC08F0], v42, 0);
      OZChannel::setDefaultValue((this + 744), v42);
    }

    if ((*(*ChannelRootBase + 872))(ChannelRootBase) == 1)
    {
      OZChannel::setSliderMin((this + 136), 0.0);
      OZChannel::setSliderMax((this + 136), 4.0);
      OZChannel::setSliderMin((this + 288), 0.0);
      OZChannel::setSliderMax((this + 288), 4.0);
      OZChannel::setSliderMin((this + 440), 0.0);
      OZChannel::setSliderMax((this + 440), 4.0);
    }
  }
}

void sub_25FEC63DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 744));
  OZChannel::~OZChannel((v12 + 592));
  OZChannel::~OZChannel((v12 + 440));
  OZChannel::~OZChannel((v12 + 288));
  OZChannel::~OZChannel((v12 + 136));
  OZCompoundChannel::~OZCompoundChannel(v12);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::OZChannelColorNoAlpha(OZChannelColorNoAlpha *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, int a7)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5, a6, 0, a7);
  *v8 = &unk_28724CB50;
  *(v8 + 2) = &unk_28724CEC0;
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v39, @"Channel Red");
  Instance = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v10);
  v12 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 136), &v39, this, 1u, 0, Instance, v12);
  PCString::~PCString(&v39);
  TXParagraphStyleFolder_Factory::createInstance(v13, v14);
  PCURL::PCURL(&v39, @"Channel Green");
  v16 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v15);
  v17 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 288), &v39, this, 2u, 0, v16, v17);
  PCString::~PCString(&v39);
  TXParagraphStyleFolder_Factory::createInstance(v18, v19);
  PCURL::PCURL(&v39, @"Channel Blue");
  v21 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v20);
  v22 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v21);
  OZChannelDouble::OZChannelDouble((this + 440), &v39, this, 3u, 0, v21, v22);
  PCString::~PCString(&v39);
  TXParagraphStyleFolder_Factory::createInstance(v23, v24);
  PCURL::PCURL(&v39, @"Channel Gamma");
  v26 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(v25);
  OZChannelDouble::OZChannelDouble((this + 592), &v39, this, 0xAu, 138, v26, 0);
  PCString::~PCString(&v39);
  v28 = OZChannelBase::setRangeName(3, v27);
  LODWORD(v21) = v28;
  TXParagraphStyleFolder_Factory::createInstance(v28, v29);
  PCURL::PCURL(&v39, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v30, v31);
  PCURL::PCURL(&v38, @"Channel Color Space");
  v33 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(v32);
  OZChannelEnum::OZChannelEnum((this + 744), v21, &v39, &v38, this, 0xBu, 130, v33, 0);
  PCString::~PCString(&v38);
  PCString::~PCString(&v39);
  *(this + 1000) = 1;
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMin((this + 440), 0.0);
  OZChannel::setSliderMax((this + 440), 1.0);
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    OZChannel::setMin((this + 744), -1.0);
    v35 = (*(*ChannelRootBase + 864))(ChannelRootBase);
    v37 = OZChannelBase::setRangeName(v35, v36);
    if (OZChannel::getValueAsInt((this + 744), MEMORY[0x277CC08F0], 0.0) != v37)
    {
      OZChannel::setValue((this + 744), MEMORY[0x277CC08F0], v37, 0);
      OZChannel::setDefaultValue((this + 744), v37);
    }

    if ((*(*ChannelRootBase + 872))(ChannelRootBase) == 1)
    {
      OZChannel::setSliderMin((this + 136), 0.0);
      OZChannel::setSliderMax((this + 136), 4.0);
      OZChannel::setSliderMin((this + 288), 0.0);
      OZChannel::setSliderMax((this + 288), 4.0);
      OZChannel::setSliderMin((this + 440), 0.0);
      OZChannel::setSliderMax((this + 440), 4.0);
    }
  }
}

void sub_25FEC685C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 744));
  OZChannel::~OZChannel((v12 + 592));
  OZChannel::~OZChannel((v12 + 440));
  OZChannel::~OZChannel((v12 + 288));
  OZChannel::~OZChannel((v12 + 136));
  OZCompoundChannel::~OZCompoundChannel(v12);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::OZChannelColorNoAlpha(OZChannelColorNoAlpha *this, double a2, double a3, double a4, const PCString *a5, OZChannelFolder *a6, unsigned int a7, int a8, int a9)
{
  Instance = OZChannelColorNoAlpha_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a5, a6, a7, a8, 0, a9);
  *this = &unk_28724CB50;
  *(this + 2) = &unk_28724CEC0;
  TXParagraphStyleFolder_Factory::createInstance(v19, v20);
  PCURL::PCURL(&v50, @"Channel Red");
  v22 = OZChannelColorNoAlpha::selectRedPrototype(v21, a2);
  v23 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v22);
  OZChannelDouble::OZChannelDouble((this + 136), a2, &v50, this, 1u, 0, v22, v23);
  PCString::~PCString(&v50);
  TXParagraphStyleFolder_Factory::createInstance(v24, v25);
  PCURL::PCURL(&v50, @"Channel Green");
  v27 = OZChannelColorNoAlpha::selectGreenPrototype(v26, a3);
  v28 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v27);
  OZChannelDouble::OZChannelDouble((this + 288), a3, &v50, this, 2u, 0, v27, v28);
  PCString::~PCString(&v50);
  TXParagraphStyleFolder_Factory::createInstance(v29, v30);
  PCURL::PCURL(&v50, @"Channel Blue");
  v32 = OZChannelColorNoAlpha::selectBluePrototype(v31, a4);
  v33 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v32);
  OZChannelDouble::OZChannelDouble((this + 440), a4, &v50, this, 3u, 0, v32, v33);
  PCString::~PCString(&v50);
  TXParagraphStyleFolder_Factory::createInstance(v34, v35);
  PCURL::PCURL(&v50, @"Channel Gamma");
  v37 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(v36);
  OZChannelDouble::OZChannelDouble((this + 592), 2.2, &v50, this, 0xAu, 138, v37, 0);
  PCString::~PCString(&v50);
  v39 = OZChannelBase::setRangeName(3, v38);
  LODWORD(v32) = v39;
  TXParagraphStyleFolder_Factory::createInstance(v39, v40);
  PCURL::PCURL(&v50, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v41, v42);
  PCURL::PCURL(&v49, @"Channel Color Space");
  v44 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(v43);
  OZChannelEnum::OZChannelEnum((this + 744), v32, &v50, &v49, this, 0xBu, 130, v44, 0);
  PCString::~PCString(&v49);
  PCString::~PCString(&v50);
  *(this + 1000) = 1;
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMin((this + 440), 0.0);
  OZChannel::setSliderMax((this + 440), 1.0);
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    OZChannel::setMin((this + 744), -1.0);
    v46 = (*(*ChannelRootBase + 864))(ChannelRootBase);
    v48 = OZChannelBase::setRangeName(v46, v47);
    if (OZChannel::getValueAsInt((this + 744), MEMORY[0x277CC08F0], 0.0) != v48)
    {
      OZChannel::setValue((this + 744), MEMORY[0x277CC08F0], v48, 0);
      OZChannel::setDefaultValue((this + 744), v48);
    }

    if ((*(*ChannelRootBase + 872))(ChannelRootBase) == 1)
    {
      OZChannel::setSliderMin((this + 136), 0.0);
      OZChannel::setSliderMax((this + 136), 4.0);
      OZChannel::setSliderMin((this + 288), 0.0);
      OZChannel::setSliderMax((this + 288), 4.0);
      OZChannel::setSliderMin((this + 440), 0.0);
      OZChannel::setSliderMax((this + 440), 4.0);
    }
  }

  OZChannel::setMin((this + 136), -6.0);
  OZChannel::setMax((this + 136), 8.0);
  OZChannel::setMin((this + 288), -6.0);
  OZChannel::setMax((this + 288), 8.0);
  OZChannel::setMin((this + 440), -6.0);
  OZChannel::setMax((this + 440), 8.0);
}

void sub_25FEC6D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v12 + 744));
  OZChannel::~OZChannel((v12 + 592));
  OZChannel::~OZChannel((v12 + 440));
  OZChannel::~OZChannel((v12 + 288));
  OZChannel::~OZChannel((v12 + 136));
  OZCompoundChannel::~OZCompoundChannel(v12);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::OZChannelColorNoAlpha(OZChannelColorNoAlpha *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_28724CB50;
  *(v6 + 2) = &unk_28724CEC0;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v32, @"Channel Red");
  Instance = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v8);
  v10 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 136), &v32, this, 1u, 0, Instance, v10);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v32, @"Channel Green");
  v14 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v13);
  v15 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 288), &v32, this, 2u, 0, v14, v15);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v16, v17);
  PCURL::PCURL(&v32, @"Channel Blue");
  v19 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(v18);
  v20 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(v19);
  OZChannelDouble::OZChannelDouble((this + 440), &v32, this, 3u, 0, v19, v20);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v32, @"Channel Gamma");
  v24 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(v23);
  OZChannelDouble::OZChannelDouble((this + 592), &v32, this, 0xAu, 138, v24, 0);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v25, v26);
  PCURL::PCURL(&v32, @"Channel Color Space Enum");
  TXParagraphStyleFolder_Factory::createInstance(v27, v28);
  PCURL::PCURL(&v31, @"Channel Color Space");
  v30 = OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(v29);
  OZChannelEnum::OZChannelEnum((this + 744), &v32, &v31, this, 0xBu, 0x82u, v30, 0);
  PCString::~PCString(&v31);
  PCString::~PCString(&v32);
  *(this + 1000) = 1;
  OZChannel::setSliderMin((this + 136), 0.0);
  OZChannel::setSliderMax((this + 136), 1.0);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMin((this + 440), 0.0);
  OZChannel::setSliderMax((this + 440), 1.0);
}

void sub_25FEC70CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 592));
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::OZChannelColorNoAlpha(OZChannelColorNoAlpha *this, const OZChannelColorNoAlpha *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_28724CB50;
  *(v5 + 16) = &unk_28724CEC0;
  v6 = (v5 + 136);
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287245C60;
  *(this + 38) = &unk_287245FC0;
  OZChannel::OZChannel((this + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
  OZChannel::OZChannel((this + 592), (a2 + 592), this);
  *(this + 74) = &unk_287245C60;
  *(this + 76) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 744), (a2 + 744), this);
  *(this + 1000) = *(a2 + 1000);
  OZChannel::setSliderMin(v6, 0.0);
  OZChannel::setSliderMax(v6, 1.0);
  OZChannel::setSliderMin((this + 288), 0.0);
  OZChannel::setSliderMax((this + 288), 1.0);
  OZChannel::setSliderMin((this + 440), 0.0);
  OZChannel::setSliderMax((this + 440), 1.0);
}

void sub_25FEC73AC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::copy(OZChannelColorNoAlpha *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);
  OZChannel::copy((this + 440), (v4 + 440), a3);
  OZChannel::copy((this + 592), (v4 + 592), a3);
  OZChannelEnum::copy(this + 93, (v4 + 744), a3);
  *(this + 1000) = v4[8].var13;
}

CGColorSpace **OZChannelColorNoAlpha::getColor(OZChannelColorNoAlpha *this, const CMTime *a2, PCColor *a3, double a4)
{
  OZChannel::getValueAsDouble((this + 136), a2, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 288), a2, a4);
  v11 = v10;
  OZChannel::getValueAsDouble((this + 440), a2, a4);
  v13 = v12;
  if (*(this + 1000) == 1)
  {
    OZChannelColorNoAlpha::getPCColorSpace(this, &v15);
  }

  else
  {
    PCColor::getColorSpace(a3, &v15);
  }

  PCColor::setRGBA(a3, v9, v11, v13, 1.0, &v15);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
}

void sub_25FEC7628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZChannelColorNoAlpha::getPCColorSpace(OZChannelColorNoAlpha *this@<X0>, CGColorSpace **a2@<X8>)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 744), MEMORY[0x277CC08F0], 0.0);
  v4 = PCColorSpaceCache::intToColorSpaceID(ValueAsInt, 3u);
  if (v4 == -1)
  {

    PCColorSpaceCache::sRGB(a2);
  }

  else
  {

    PCColorSpaceCache::getColorSpaceByID(v4, a2);
  }
}

CGColorSpace **OZChannelColorNoAlpha::getColor(OZChannelColorNoAlpha *this, const CMTime *a2, PCColor *a3)
{
  OZChannel::getValueAsDouble((this + 136), a2, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((this + 288), a2, 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 440), a2, 0.0);
  v11 = v10;
  if (*(this + 1000) == 1)
  {
    OZChannelColorNoAlpha::getPCColorSpace(this, &v16);
  }

  else
  {
    PCColor::getColorSpace(a3, &v16);
  }

  PCColor::PCColor(&v16.var1, v7, v9, v11, 1.0, &v16);
  v12 = *&v16.var3;
  *&a3->var0.var0 = *&v16.var1;
  *&a3->var0.var1[1] = v12;
  *&a3->var0.var1[3] = *&v16.var5;
  obj = a3->var1._obj;
  var7 = v16.var7;
  if (obj && obj != v16.var7)
  {
    PCCFRefTraits<CGColorSpace *>::release(obj);
    var7 = v16.var7;
  }

  a3->var1._obj = var7;
  v16.var7 = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v16.var7);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
}

void sub_25FEC77C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v9 + 48));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t OZChannelColorNoAlpha::setColor(OZChannelColorNoAlpha *this, const CMTime *a2, PCColor *a3, uint64_t a4)
{
  v15 = 0;
  v14 = 0.0;
  if (*(this + 1000) == 1)
  {
    OZChannelColorNoAlpha::getPCColorSpace(this, &v13);
  }

  else
  {
    PCColor::getColorSpace(a3, &v13);
  }

  PCColor::getRGB(a3, &v15 + 1, &v15, &v14, &v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  v9 = *(this + 17);
  v8 = this + 136;
  (*(v9 + 712))(v8, a2, a4, *(&v15 + 1));
  v10.n128_f64[0] = *&v15;
  (*(*(v8 + 19) + 712))(v8 + 152, a2, a4, v10);
  v11.n128_f64[0] = v14;
  return (*(*(v8 + 38) + 712))(v8 + 304, a2, a4, v11);
}

void sub_25FEC7950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

OZChannelBase *OZChannelColorNoAlpha::setDefaultColor(OZChannelColorNoAlpha *this, PCColor *a2)
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (*(this + 1000) == 1)
  {
    OZChannelColorNoAlpha::getPCColorSpace(this, &v5);
  }

  else
  {
    PCColor::getColorSpace(a2, &v5);
  }

  PCColor::getRGB(a2, &v8, &v7, &v6, &v5);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v5);
  OZChannel::setDefaultValue((this + 136), v8);
  OZChannel::setDefaultValue((this + 288), v7);
  OZChannel::setDefaultValue((this + 440), v6);
  result = OZChannelBase::testFlag(this, 0x200000000);
  if (result)
  {
    return OZChannelBase::setFlag(this, 0x100000000, 1);
  }

  return result;
}

void sub_25FEC7A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **OZChannelColorNoAlpha::getDefaultColor(OZChannelColorNoAlpha *this, PCColor *a2)
{
  DefaultValue = OZChannel::getDefaultValue((this + 136));
  v5 = OZChannel::getDefaultValue((this + 288));
  v6 = OZChannel::getDefaultValue((this + 440));
  if (*(this + 1000) == 1)
  {
    OZChannelColorNoAlpha::getPCColorSpace(this, &v8);
  }

  else
  {
    PCColor::getColorSpace(a2, &v8);
  }

  PCColor::setRGBA(a2, DefaultValue, v5, v6, 1.0, &v8);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
}

void sub_25FEC7AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZChannelColorNoAlpha::parseEnd(OZChannelBase *this, PCSerializerReadStream *a2)
{
  v16 = **&MEMORY[0x277CC08F0];
  v3 = *(a2 + 26);
  if (v3 <= 2)
  {
    if (OZChannelBase::getChannelRootBase(this))
    {
      ChannelRootBase = OZChannelBase::getChannelRootBase(this);
      (*(*ChannelRootBase + 848))(&v16);
    }

    OZChannel::getValueAsDouble(&this[1].var3, &v16, 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble(&this[2].var8, &v16, 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble(&this[3].var13, &v16, 0.0);
    v11 = v10;
    (*(*&this[1].var3 + 712))(&this[1].var3, &v16, 0, v7);
    (*(this[2].var8 + 712))(&this[2].var8, &v16, 0, v9);
    (*(this[3].var13 + 89))(&this[3].var13, &v16, 0, v11);
    v3 = *(a2 + 26);
  }

  if (v3 <= 3)
  {
    OZChannelColorNoAlpha::setColorSpaceIDNoConversion(this, 2, 0);
  }

  OZChannel::getValueAsDouble(&this[5].var4, MEMORY[0x277CC08F0], 0.0);
  if (v12 == 0.0 || v12 == 1.0)
  {
    OZChannelColorNoAlpha::setColorSpaceIDNoConversion(this, 3, 0);
  }

  ValueAsInt = OZChannel::getValueAsInt(&this[6].var9, MEMORY[0x277CC08F0], 0.0);
  if (!PCColorSpaceCache::intToColorSpaceID(ValueAsInt, 3u))
  {
    OZChannelColorNoAlpha::setColorSpaceIDNoConversion(this, 3, 0);
  }

  OZChannel::setMin(&this[1].var3, -6.0);
  OZChannel::setMax(&this[1].var3, 8.0);
  OZChannel::setMin(&this[2].var8, -6.0);
  OZChannel::setMax(&this[2].var8, 8.0);
  OZChannel::setMin(&this[3].var13, -6.0);
  OZChannel::setMax(&this[3].var13, 8.0);
  return 1;
}

uint64_t OZChannelColorNoAlpha::setColorSpaceIDNoConversion(uint64_t a1, OZChannelBase *a2, int a3)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 744), MEMORY[0x277CC08F0], 0.0);
  result = PCColorSpaceCache::intToColorSpaceID(ValueAsInt, 3u);
  if (result != a2)
  {
    v9 = result;
    v10 = OZChannelBase::setRangeName(a2, v8);
    result = OZChannel::setValue((a1 + 744), MEMORY[0x277CC08F0], v10, a3);
    if (a2 == -1 || v9 == -1)
    {

      return OZChannel::setDefaultValue((a1 + 744), v10);
    }
  }

  return result;
}

uint64_t OZChannelColorNoAlpha::getColorSpaceID(OZChannelColorNoAlpha *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 744), MEMORY[0x277CC08F0], 0.0);

  return PCColorSpaceCache::intToColorSpaceID(ValueAsInt, 3u);
}

void non-virtual thunk toOZChannelColorNoAlpha::~OZChannelColorNoAlpha(OZChannelColorNoAlpha *this)
{
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this - 16));
}

{
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(void)::OZChannelColorNoAlpha_blackImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(void)::OZChannelColorNoAlpha_blackImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::_OZChannelColorNoAlpha_black;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_blackImpl::_OZChannelColorNoAlpha_black)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(void)::OZChannelColorNoAlpha_whiteImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(void)::OZChannelColorNoAlpha_whiteImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::_OZChannelColorNoAlpha_white;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_whiteImpl::_OZChannelColorNoAlpha_white)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(void)::OZChannelColorNoAlpha_redSample1Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(void)::OZChannelColorNoAlpha_redSample1Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::_OZChannelColorNoAlpha_redSample1;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample1Impl::_OZChannelColorNoAlpha_redSample1)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(void)::OZChannelColorNoAlpha_redSample2Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(void)::OZChannelColorNoAlpha_redSample2Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::_OZChannelColorNoAlpha_redSample2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_redSample2Impl::_OZChannelColorNoAlpha_redSample2)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(void)::OZChannelColorNoAlpha_greyImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(void)::OZChannelColorNoAlpha_greyImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::_OZChannelColorNoAlpha_grey;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_greyImpl::_OZChannelColorNoAlpha_grey)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(void)::OZChannelColorNoAlpha_greenSample1Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(void)::OZChannelColorNoAlpha_greenSample1Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::_OZChannelColorNoAlpha_greenSample1;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample1Impl::_OZChannelColorNoAlpha_greenSample1)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(void)::OZChannelColorNoAlpha_greenSample2Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(void)::OZChannelColorNoAlpha_greenSample2Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::_OZChannelColorNoAlpha_greenSample2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_greenSample2Impl::_OZChannelColorNoAlpha_greenSample2)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(void)::OZChannelColorNoAlpha_blueSample1Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(void)::OZChannelColorNoAlpha_blueSample1Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::_OZChannelColorNoAlpha_blueSample1;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample1Impl::_OZChannelColorNoAlpha_blueSample1)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(void)::OZChannelColorNoAlpha_blueSample2Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(void)::OZChannelColorNoAlpha_blueSample2Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::_OZChannelColorNoAlpha_blueSample2;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_blueSample2Impl::_OZChannelColorNoAlpha_blueSample2)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(void)::OZChannelColorNoAlpha_colorInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(void)::OZChannelColorNoAlpha_colorInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::_OZChannelColorNoAlpha_colorInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::_OZChannelColorNoAlpha_colorInfo)
  {
    operator new();
  }
}

OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo *OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo::OZChannelColorNoAlpha_colorInfo(OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 0.01, 0.001, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28724D368;
  *(this + 10) = &unk_28724D388;
  return this;
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(void)::OZChannelColorNoAlpha_gammaImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(void)::OZChannelColorNoAlpha_gammaImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::_OZChannelColorNoAlpha_gamma;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_gammaImpl::_OZChannelColorNoAlpha_gamma)
  {
    operator new();
  }
}

uint64_t OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl *this)
{
  if (atomic_load_explicit(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(void)::OZChannelColorNoAlpha_colorSpaceIDImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(void)::OZChannelColorNoAlpha_colorSpaceIDImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::_OZChannelColorNoAlpha_colorSpaceID;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelColorNoAlpha::OZChannelColorNoAlpha_colorSpaceIDImpl::_OZChannelColorNoAlpha_colorSpaceID)
  {
    operator new();
  }
}

void sub_25FEC950C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25FECA550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZChannelCrop::OZChannelCrop(OZChannelCrop *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelCrop_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, a6);
  *this = &unk_28724D4D0;
  *(this + 2) = &unk_28724D818;
  TXParagraphStyleFolder_Factory::createInstance(v17, v18);
  PCURL::PCURL(&v32, @"Channel Left");
  v20 = a7;
  if (!a7)
  {
    v20 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v19);
  }

  OZChannelDouble::OZChannelDouble((this + 136), &v32, this, 1u, 0, v20, a8);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v21, v22);
  PCURL::PCURL(&v32, @"Channel Right");
  v24 = a7;
  if (!a7)
  {
    v24 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v23);
  }

  OZChannelDouble::OZChannelDouble((this + 288), &v32, this, 2u, 0, v24, a8);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v25, v26);
  PCURL::PCURL(&v32, @"Channel Bottom");
  v28 = a7;
  if (!a7)
  {
    v28 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v27);
  }

  OZChannelDouble::OZChannelDouble((this + 440), &v32, this, 3u, 0, v28, a8);
  PCString::~PCString(&v32);
  TXParagraphStyleFolder_Factory::createInstance(v29, v30);
  PCURL::PCURL(&v32, @"Channel Top");
  if (!a7)
  {
    a7 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v31);
  }

  OZChannelDouble::OZChannelDouble((this + 592), &v32, this, 4u, 0, a7, a8);
  PCString::~PCString(&v32);
}

void sub_25FECAA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelCrop::OZChannelCrop(OZChannelCrop *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5);
  *v6 = &unk_28724D4D0;
  *(v6 + 2) = &unk_28724D818;
  TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCURL::PCURL(&v22, @"Channel Left");
  Instance = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v8);
  OZChannelDouble::OZChannelDouble((this + 136), &v22, this, 1u, 0, Instance, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v22, @"Channel Right");
  v13 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v12);
  OZChannelDouble::OZChannelDouble((this + 288), &v22, this, 2u, 0, v13, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v14, v15);
  PCURL::PCURL(&v22, @"Channel Bottom");
  v17 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 440), &v22, this, 3u, 0, v17, 0);
  PCString::~PCString(&v22);
  TXParagraphStyleFolder_Factory::createInstance(v18, v19);
  PCURL::PCURL(&v22, @"Channel Top");
  v21 = OZChannelCrop::OZChannelCrop_valueImpl::getInstance(v20);
  OZChannelDouble::OZChannelDouble((this + 592), &v22, this, 4u, 0, v21, 0);
  PCString::~PCString(&v22);
}

void sub_25FECAC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 440));
  OZChannel::~OZChannel((v10 + 288));
  OZChannel::~OZChannel((v10 + 136));
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelCrop::OZChannelCrop(OZChannelCrop *this, const OZChannelCrop *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_28724D4D0;
  *(v5 + 16) = &unk_28724D818;
  OZChannel::OZChannel((v5 + 136), (a2 + 136), this);
  *(this + 17) = &unk_287245C60;
  *(this + 19) = &unk_287245FC0;
  OZChannel::OZChannel((this + 288), (a2 + 288), this);
  *(this + 36) = &unk_287245C60;
  *(this + 38) = &unk_287245FC0;
  OZChannel::OZChannel((this + 440), (a2 + 440), this);
  *(this + 55) = &unk_287245C60;
  *(this + 57) = &unk_287245FC0;
  OZChannel::OZChannel((this + 592), (a2 + 592), this);
  *(this + 74) = &unk_287245C60;
  *(this + 76) = &unk_287245FC0;
}

void sub_25FECAE70(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelCrop::copy(OZChannelCrop *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannel::copy((this + 136), (v4 + 136), a3);
  OZChannel::copy((this + 288), (v4 + 288), a3);
  OZChannel::copy((this + 440), (v4 + 440), a3);

  OZChannel::copy((this + 592), (v4 + 592), a3);
}

void OZChannelCrop::getValue(OZChannelCrop *this, const CMTime *a2, double *a3, double *a4, double *a5, double *a6, double a7)
{
  OZChannel::getValueAsDouble((this + 136), a2, a7);
  *a3 = v14;
  OZChannel::getValueAsDouble((this + 288), a2, a7);
  *a4 = v15;
  OZChannel::getValueAsDouble((this + 440), a2, a7);
  *a5 = v16;
  OZChannel::getValueAsDouble((this + 592), a2, a7);
  *a6 = v17;
}

uint64_t OZChannelCrop::setValue(OZChannelCrop *this, const CMTime *a2, double a3, double a4, double a5, double a6)
{
  OZChannel::setValue((this + 136), a2, a3, 0);
  OZChannel::setValue((this + 288), a2, a4, 0);
  OZChannel::setValue((this + 440), a2, a5, 0);

  return OZChannel::setValue((this + 592), a2, a6, 0);
}

void OZChannelCrop::~OZChannelCrop(OZChannelCrop *this)
{
  OZChannelCrop::~OZChannelCrop(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_28724D4D0;
  *(this + 2) = &unk_28724D818;
  OZChannel::~OZChannel((this + 592));
  OZChannel::~OZChannel((this + 440));
  OZChannel::~OZChannel((this + 288));
  OZChannel::~OZChannel((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

void non-virtual thunk toOZChannelCrop::~OZChannelCrop(OZChannelCrop *this)
{
  OZChannelCrop::~OZChannelCrop((this - 16));
}

{
  OZChannelCrop::~OZChannelCrop((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelCrop::OZChannelCrop_valueImpl::getInstance(OZChannelCrop::OZChannelCrop_valueImpl *this)
{
  if (atomic_load_explicit(&OZChannelCrop::OZChannelCrop_valueImpl::getInstance(void)::OZChannelCrop_valueImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelCrop::OZChannelCrop_valueImpl::getInstance(void)::OZChannelCrop_valueImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCrop::OZChannelCrop_valueImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelCrop::OZChannelCrop_valueImpl::_OZChannelCrop_value;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCrop::OZChannelCrop_valueImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelCrop::OZChannelCrop_valueImpl::_OZChannelCrop_value)
  {
    operator new();
  }
}

void OZChannelCurve::OZChannelCurve(OZChannelCurve *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, 0, 0);
  *v8 = &unk_28724D900;
  *(v8 + 2) = &unk_28724DCA8;
  TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCURL::PCURL(&v13, @"Channel Shape Animation");
  OZChannelVertexFolder::OZChannelVertexFolder((this + 152), &v13, a4, 1u, 0x1008Au);
  PCString::~PCString(&v13);
  OZDynamicCurve::OZDynamicCurve((this + 288));
  v10 = OZDynamicCurve::OZDynamicCurve((this + 520));
  OZChannelCurveInfo = OZChannelCurve::createOZChannelCurveInfo(v10);
  *(this + 16) = OZChannelCurveInfo;
  *(this + 17) = OZChannelCurveInfo;
  OZChannelCurveImpl = OZChannelCurve::createOZChannelCurveImpl(OZChannelCurveInfo);
  *(this + 14) = OZChannelCurveImpl;
  *(this + 15) = OZChannelCurveImpl;
  *(this + 35) = this;
  *(this + 396) = 0;
  *(this + 100) = 0;
}

void sub_25FECB4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZDynamicCurve::~OZDynamicCurve(&v10[1].var17);
  OZChannelVertexFolder::~OZChannelVertexFolder(&v10[1]);
  OZChannel::~OZChannel(v10);
  _Unwind_Resume(a1);
}

uint64_t OZChannelCurve::createOZChannelCurveInfo(OZChannelCurve *this)
{
  if (atomic_load_explicit(&OZChannelCurve::createOZChannelCurveInfo(void)::_OZChannelCurveInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelCurve::createOZChannelCurveInfo(void)::_OZChannelCurveInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCurve::createOZChannelCurveInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelCurve::_OZChannelCurveInfo;
}

uint64_t OZChannelCurve::createOZChannelCurveImpl(OZChannelCurve *this)
{
  if (atomic_load_explicit(&OZChannelCurve::createOZChannelCurveImpl(void)::_OZChannelCurveImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelCurve::createOZChannelCurveImpl(void)::_OZChannelCurveImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCurve::createOZChannelCurveImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelCurve::_OZChannelCurveImpl;
}

void OZChannelCurve::OZChannelCurve(OZChannelCurve *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelCurve_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, 0, 0);
  *this = &unk_28724D900;
  *(this + 2) = &unk_28724DCA8;
  TXParagraphStyleFolder_Factory::createInstance(v11, v12);
  PCURL::PCURL(&v16, @"Channel Shape Animation");
  OZChannelVertexFolder::OZChannelVertexFolder((this + 152), &v16, a3, 1u, 0x1008Au);
  PCString::~PCString(&v16);
  OZDynamicCurve::OZDynamicCurve((this + 288));
  v13 = OZDynamicCurve::OZDynamicCurve((this + 520));
  OZChannelCurveInfo = OZChannelCurve::createOZChannelCurveInfo(v13);
  *(this + 16) = OZChannelCurveInfo;
  *(this + 17) = OZChannelCurveInfo;
  OZChannelCurveImpl = OZChannelCurve::createOZChannelCurveImpl(OZChannelCurveInfo);
  *(this + 14) = OZChannelCurveImpl;
  *(this + 15) = OZChannelCurveImpl;
  *(this + 35) = this;
  *(this + 396) = 0;
  *(this + 100) = 0;
}

void sub_25FECB724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZDynamicCurve::~OZDynamicCurve(&v10[1].var17);
  OZChannelVertexFolder::~OZChannelVertexFolder(&v10[1]);
  OZChannel::~OZChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelCurve::OZChannelCurve(OZChannelCurve *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  *v5 = &unk_28724D900;
  *(v5 + 2) = &unk_28724DCA8;
  TXParagraphStyleFolder_Factory::createInstance(v5, v6);
  PCURL::PCURL(&v10, @"Channel Shape Animation");
  OZChannelVertexFolder::OZChannelVertexFolder((this + 152), &v10, 0, 1u, 0x1008Au);
  PCString::~PCString(&v10);
  OZDynamicCurve::OZDynamicCurve((this + 288));
  v7 = OZDynamicCurve::OZDynamicCurve((this + 520));
  OZChannelCurveInfo = OZChannelCurve::createOZChannelCurveInfo(v7);
  *(this + 16) = OZChannelCurveInfo;
  *(this + 17) = OZChannelCurveInfo;
  OZChannelCurveImpl = OZChannelCurve::createOZChannelCurveImpl(OZChannelCurveInfo);
  *(this + 14) = OZChannelCurveImpl;
  *(this + 15) = OZChannelCurveImpl;
  *(this + 25) = *(this + 6);
  *(this + 35) = this;
  *(this + 396) = 0;
  *(this + 100) = 0;
}

void sub_25FECB864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZDynamicCurve::~OZDynamicCurve(&v10[1].var17);
  OZChannelVertexFolder::~OZChannelVertexFolder(&v10[1]);
  OZChannel::~OZChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelCurve::OZChannelCurve(OZChannelCurve *this, const OZChannelCurve *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v6 = &unk_28724D900;
  v6[2] = &unk_28724DCA8;
  OZChannelVertexFolder::OZChannelVertexFolder((v6 + 19), (a2 + 152), a3);
  OZDynamicCurve::OZDynamicCurve((this + 288));
  OZDynamicCurve::OZDynamicCurve((this + 520));
  *(this + 47) = *(a2 + 47);
  *(this + 48) = *(a2 + 48);
  *(this + 98) = *(a2 + 98);
  OZDynamicCurve::operator=(this + 288, a2 + 72);
}

void sub_25FECB9BC(_Unwind_Exception *a1)
{
  OZDynamicCurve::~OZDynamicCurve(&v1[1].var17);
  OZChannelVertexFolder::~OZChannelVertexFolder(&v1[1]);
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelCurve::~OZChannelCurve(OZChannel *this)
{
  this->var0 = &unk_28724D900;
  this->var2 = &unk_28724DCA8;
  OZDynamicCurve::~OZDynamicCurve(&this[3].var8);
  OZDynamicCurve::~OZDynamicCurve(&this[1].var17);
  OZChannelVertexFolder::~OZChannelVertexFolder(&this[1]);

  OZChannel::~OZChannel(this);
}

{
  OZChannelCurve::~OZChannelCurve(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelCurve::~OZChannelCurve(OZChannelCurve *this)
{
  OZChannelCurve::~OZChannelCurve((this - 16));
}

{
  OZChannelCurve::~OZChannelCurve((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelCurve::copy(OZChannel *this, const OZChannelBase *a2, char a3)
{
  OZChannel::copy(this, a2, a3);
  if (a2)
  {
    if (v5)
    {
      *&this[4].var18 = *(v5 + 47);
      *&this[5].var1 = *(v5 + 48);
      *&this[5].var3 = *(v5 + 98);
      OZDynamicCurve::operator=(&this[1].var17, v5 + 72);
    }
  }

  this[1].var6 = this->var6;
  v6 = *(this->var0 + 107);

  return v6(this);
}

uint64_t OZChannelCurve::assign(OZChannel *this, const OZChannelBase *a2)
{
  OZChannel::assign(this, a2);
  if (a2)
  {
    if (v4)
    {
      *&this[4].var18 = *(v4 + 47);
      *&this[5].var1 = *(v4 + 48);
      *&this[5].var3 = *(v4 + 98);
      OZDynamicCurve::operator=(&this[1].var17, v4 + 72);
    }
  }

  this[1].var6 = this->var6;
  v5 = *(this->var0 + 107);

  return v5(this);
}

uint64_t OZChannelCurve::compare(OZChannel *this, const OZChannelBase *a2)
{
  result = OZChannel::compare(this, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (v5)
      {
        v6 = v5;
        if (OZDynamicCurve::operator==(&this[1].var17, v5 + 288) && OZDynamicCurve::operator==(&this[3].var8, v6 + 520))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void OZChannelCurve::copyKeyframesFromChannel(OZChannel *this, const CMTime *a2, OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    if (v5)
    {
      v6 = v5;
      memset(&v51, 0, sizeof(v51));
      (*(this->var0 + 41))(&v51, this, a2);
      OZChannel::getKeyframes(v6, 0, &v49);
      v7 = v49;
      if (v50 == v49)
      {
        (*(this->var0 + 36))(this, 0);
        OZChannel::getValueAsDouble(v6, MEMORY[0x277CC08F0], 0.0);
        OZChannel::setInitialValue(this, v23, 0);
      }

      else
      {
        v8 = 0;
        v24 = 0;
        p_var17 = &v6[1].var17;
        p_var8 = &v6[3].var8;
        v11 = &this[1].var17;
        v12 = &this[3].var8;
        do
        {
          v48 = **&MEMORY[0x277CC08F0];
          v46 = 0.0;
          v47 = 0.0;
          v44 = 0.0;
          v45 = 0.0;
          v42 = 0.0;
          v43 = 0.0;
          KeyframeEnabled = 0;
          OZChannel::getKeyframe(v6, v7[v8], &v48, &v46);
          OZChannel::getKeyframeInputTangents(v6, v49[v8], &v45, &v44, 0);
          OZChannel::getKeyframeOutputTangents(v6, v49[v8], &v43, &v42, 0);
          OZChannel::getKeyframeInterpolation(v6, v49[v8]);
          OZChannel::getKeyframeFlags(v6, v49[v8]);
          KeyframeEnabled = OZChannel::getKeyframeEnabled(v6, v49[v8]);
          if (!v24)
          {
            v53 = v51;
            v52 = v48;
            PC_CMTimeSaferSubtract(&v53, &v52, &v40);
            v51 = v40;
          }

          memset(&v40, 0, sizeof(v40));
          (*(this->var0 + 40))(&v40, this);
          v13 = *(this->var16 + 5);
          v53 = v51;
          v52 = v48;
          PC_CMTimeSaferAdd(&v53, &v52, &__p);
          v53 = __p;
          v52 = v40;
          PC_CMTimeSaferSubtract(&v53, &v52, &v39);
          OZChannel::setKeyframe(this, &v39, v46 / v13, 0);
          v53 = v51;
          v52 = v48;
          PC_CMTimeSaferAdd(&v53, &v52, &__p);
          v53 = __p;
          v52 = v40;
          PC_CMTimeSaferSubtract(&v53, &v52, &v39);
          Keyframe = OZChannel::getKeyframe(this, &v39);
          OZChannel::setKeyframeFlags(this, Keyframe);
          OZChannel::setKeyframeEnabled(this, Keyframe);
          OZChannel::setKeyframeInterpolation(this, Keyframe);
          OZChannel::setKeyframeInputTangents(this, Keyframe, v45, v44 / v13, 0);
          OZChannel::setKeyframeOutputTangents(this, Keyframe, v43, v42 / v13, 0);
          v36 = 0.0;
          v37 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          v32 = 0.0;
          v33 = 0.0;
          v31 = 0.0;
          v30 = 0;
          memset(&v39, 0, sizeof(v39));
          memset(&__p, 0, sizeof(__p));
          v28 = 0;
          v29 = 0;
          (*(*p_var17 + 36))(&v6[1].var17, &v39);
          (*(*p_var8 + 288))(&v6[3].var8, &__p);
          v27 = v48;
          v53 = v51;
          memset(v26, 0, sizeof(v26));
          v52 = v48;
          PC_CMTimeSaferAdd(&v53, &v52, &v25);
          v53 = v25;
          v52 = v40;
          v15.n128_f64[0] = PC_CMTimeSaferSubtract(&v53, &v52, v26);
          value = v39.value;
          if (*&v39.timescale != v39.value)
          {
            v17 = 0;
            v18 = 1;
            do
            {
              (*(*p_var17 + 55))(&v6[1].var17, value[v17], 1, v15);
              (*(*p_var8 + 440))(&v6[3].var8, *(__p.value + 8 * v17), 1);
              (*(*p_var17 + 79))(&v6[1].var17, *(v39.value + 8 * v17), &v27, &v35);
              (*(*p_var8 + 632))(&v6[3].var8, *(__p.value + 8 * v17), &v27, &v34);
              (*(*p_var17 + 80))(&v6[1].var17, *(v39.value + 8 * v17), &v27, &v33);
              (*(*p_var8 + 640))(&v6[3].var8, *(__p.value + 8 * v17), &v27, &v32);
              (*(*p_var17 + 42))(&v6[1].var17, *(v39.value + 8 * v17), &v27, &v47, &v37);
              (*(*p_var8 + 336))(&v6[3].var8, *(__p.value + 8 * v17), &v27, &v47, &v36);
              (*(*p_var8 + 368))(&v6[3].var8, *(__p.value + 8 * v17), &v27, &KeyframeEnabled);
              (*(*p_var8 + 400))(&v6[3].var8, *(__p.value + 8 * v17), &v30);
              v19 = (*(*p_var8 + 176))(&v6[3].var8, *(__p.value + 8 * v17), &v27, &v31);
              Instance = OZCoreGlobals::getInstance(v19);
              v21 = *(Instance + 8);
              *(OZCoreGlobals::getInstance(Instance) + 8) = 1;
              (*(*v11 + 27))(&this[1].var17, v26, &v29, v47);
              (*(*v12 + 216))(&this[3].var8, v26, &v28, v47);
              (*(*v11 + 20))(&this[1].var17, v29, v26, v47, v37);
              (*(*v12 + 160))(&this[3].var8, v28, v26, v47, v36);
              (*(*v11 + 77))(&this[1].var17, v29, v26, v35);
              (*(*v12 + 616))(&this[3].var8, v28, v26, v34);
              (*(*v11 + 78))(&this[1].var17, v29, v26, v33);
              (*(*v12 + 624))(&this[3].var8, v28, v26, v32);
              (*(*v11 + 55))(&this[1].var17, v29, 0);
              (*(*v12 + 440))(&this[3].var8, v28, 0);
              (*(*v11 + 45))(&this[1].var17, v29, KeyframeEnabled, v26);
              (*(*v11 + 49))(&this[1].var17, v29, v30);
              (*(*v11 + 21))(&this[1].var17, v29, v26, v31);
              (*(*v12 + 360))(&this[3].var8, v28, KeyframeEnabled, v26);
              (*(*v12 + 168))(&this[3].var8, v28, v26, v31);
              v22 = (*(*v12 + 392))(&this[3].var8, v28, v30);
              *(OZCoreGlobals::getInstance(v22) + 8) = v21;
              v17 = v18;
              value = v39.value;
              ++v18;
            }

            while (v17 < (*&v39.timescale - v39.value) >> 3);
          }

          if (__p.value)
          {
            *&__p.timescale = __p.value;
            operator delete(__p.value);
            value = v39.value;
          }

          if (value)
          {
            *&v39.timescale = value;
            operator delete(value);
          }

          v7 = v49;
          v8 = ++v24;
        }

        while (v24 < (v50 - v49));
      }

      (*(this->var0 + 107))(this, v15);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }
    }
  }
}

void sub_25FECCA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  v37 = *(v35 - 216);
  if (v37)
  {
    *(v35 - 208) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

OZChannelFolder *OZChannelCurve::setIsSpline(OZChannelCurve *this, uint64_t a2)
{
  OZChannel::setIsSpline(this, a2);

  return OZChannelFolder::setIsSpline((this + 152), a2);
}

OZChannelFolder *OZChannelCurve::setValueAndIgnoreRecordOption(OZChannelCurve *this, const CMTime *a2)
{
  OZChannel::setValueAndIgnoreRecordOption(this, a2);
  (*(*this + 656))(this, 1);

  return OZChannelFolder::addKeypointAt((this + 152), a2);
}

uint64_t OZChannelCurve::setValue(OZChannelCurve *this, const CMTime *a2)
{
  (*(*this + 464))(this, 1);
  if (OZChannel::isAnimated(this))
  {
    ChannelRootBase = OZChannelBase::getChannelRootBase(this);
    if (ChannelRootBase)
    {
      (*(*ChannelRootBase + 712))(v7);
      v8 = v7[0];
      time2 = *a2;
      if (CMTimeCompare(v7, &time2))
      {
        if (((*(*this + 552))(this, 0) & 1) == 0)
        {
          (*(*this + 328))(v7, this, &v8);
          OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);
          OZChannel::setKeyframe(this, v7, v5, 1);
          OZChannelFolder::addKeypointAt((this + 152), &v8);
        }
      }
    }

    OZChannel::addKeypointAt(this, a2);
    OZChannelFolder::addKeypointAt((this + 152), a2);
  }

  return (*(*this + 656))(this, 1);
}

BOOL OZChannelCurve::removeValue(OZChannelCurve *this, const CMTime *a2, uint64_t a3)
{
  v5 = OZChannel::removeValue(this, a2, a3);
  OZChannelFolder::deleteKeypointAt((this + 152), a2);
  return v5;
}

BOOL OZChannelCurve::moveValue(OZChannelCurve *this, const CMTime *a2, const CMTime *a3, uint64_t a4)
{
  v7 = OZChannel::moveValue(this, a2, a3, a4);
  OZChannelFolder::moveKeypointTo((this + 152), a2, a3, &v9);
  return v7;
}

uint64_t OZChannelCurve::setValue(OZChannelCurve *this, const CMTime *a2, double a3)
{
  if (OZChannel::isAnimated(this))
  {
    OZChannel::setValue(this, a2, a3, 0);
    OZChannelFolder::addKeypointAt((this + 152), a2);
  }

  v6 = *(*this + 656);

  return v6(this, 1);
}

OZChannelFolder *OZChannelCurve::addKeypointAt(OZChannelCurve *this, const CMTime *a2)
{
  (*(*this + 464))(this, 1);
  if (((*(*this + 488))(this) & 1) == 0)
  {
    (*(*this + 480))(this, 1);
  }

  OZChannel::addKeypointAt(this, a2);

  return OZChannelFolder::addKeypointAt((this + 152), a2);
}

uint64_t OZChannelCurve::moveKeypointTo@<X0>(OZChannelCurve *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  (*(*this + 464))(this, 1);
  if (((*(*this + 488))(this) & 1) == 0)
  {
    (*(*this + 480))(this, 1);
  }

  *&a6->value = *&a3->value;
  a6->epoch = a3->epoch;
  (*(*this + 328))(&v14, this, a2);
  result = OZChannel::getKeyframe(this, &v14);
  if (result)
  {
    v13 = result;
    OZChannelFolder::moveKeypointTo((this + 152), a2, a6, &v14);
    *a6 = v14;
    (*(*this + 328))(&v14, this, a6);
    return (*(*this + 840))(this, v13, &v14, a5, a4);
  }

  return result;
}

OZChannelFolder *OZChannelCurve::deleteKeypointAt(OZChannelCurve *this, const CMTime *a2)
{
  (*(*this + 464))(this, 1);
  (*(*this + 328))(&v5, this, a2);
  result = OZChannel::getKeyframe(this, &v5);
  if (result)
  {
    OZChannel::deleteKeyframe(this, result);
    return OZChannelFolder::deleteKeypointAt((this + 152), a2);
  }

  return result;
}

void OZChannelCurve::resetToDefault(OZChannelCurve *this, uint64_t a2)
{
  OZChannel::resetToDefault(this, a2);

  OZChannelBase::reset((this + 152), a2);
}

OZChannelFolder *OZChannelCurve::setExtrapolation(OZChannel *this, uint64_t a2, uint64_t a3)
{
  v6 = &this[1];
  (*(this->var0 + 58))(this, 1);
  OZChannel::setExtrapolation(this, a2, a3);

  return OZChannelFolder::setExtrapolation(v6, a2, a3);
}

OZChannelFolder *OZChannelCurve::generateKeys(OZChannel *this, uint64_t a2, uint64_t a3)
{
  v6 = &this[1];
  (*(this->var0 + 58))(this, 1);
  OZChannel::generateKeys(this);

  return OZChannelFolder::generateKeys(v6, a2, a3);
}

uint64_t OZChannelCurve::setValue(OZChannelCurve *this, const CMTime *a2, Float64 a3, double a4, double a5)
{
  (*(*this + 464))(this, 1);
  if (OZChannel::isAnimated(this))
  {
    OZChannelCurve::insertVertex(this, a2, a3, a4, a5);
  }

  v10 = *(*this + 656);

  return v10(this, 1);
}

void OZChannelCurve::insertVertex(OZChannelCurve *this, const CMTime *a2, Float64 a3, double a4, double a5)
{
  v9 = 0;
  v10 = 0;
  (*(*this + 464))(this, 1);
  if (OZChannel::isAnimated(this))
  {
    OZChannel::addKeypointAt(this, a2);
    OZChannelFolder::addKeypointAt((this + 152), a2);
  }

  OZDynamicCurve::setKeypoint((this + 288), a2, a3, a4, &v10);
}

uint64_t OZChannelCurve::setValue(OZChannelCurve *this, const CMTime *a2, Float64 a3, double a4)
{
  (*(*this + 464))(this, 1);
  if (OZChannel::isAnimated(this))
  {
    v9 = 0.0;
    OZDynamicCurve::getPoint((this + 520), a2, a3, &v9);
    OZChannelCurve::insertVertex(this, a2, a3, a4, v9);
  }

  return (*(*this + 656))(this, 1);
}

double OZChannelCurve::getValueXAsDouble(OZChannelCurve *this, const CMTime *a2, Float64 a3)
{
  v4 = 0.0;
  OZDynamicCurve::getPoint((this + 288), a2, a3, &v4);
  return v4;
}

double OZChannelCurve::getValueYAsDouble(OZChannelCurve *this, const CMTime *a2, Float64 a3)
{
  v4 = 0.0;
  OZDynamicCurve::getPoint((this + 520), a2, a3, &v4);
  return v4;
}

BOOL OZChannelCurve::removeValue(char **this, const CMTime *a2, Float64 a3)
{
  v9 = 0;
  (*(*this + 58))(this, 1);
  v8 = 0uLL;
  OZDynamicCurve::getKeypointHandle((this + 36), a2, a3, &v8 + 1);
  OZDynamicCurve::getKeypointHandle((this + 65), a2, a3, &v8);
  v6 = v8 != 0;
  if (v8 != 0)
  {
    OZChannelBase::willBeModified((this + 19), 1);
    OZDynamicCurve::getVertexChannel((this + 36), *(&v8 + 1), &v9);
    if (v9)
    {
      OZChannelFolder::removeDescendant((this + 19), v9);
    }

    OZDynamicCurve::getVertexChannel((this + 65), v8, &v9);
    if (v9)
    {
      OZChannelFolder::removeDescendant((this + 19), v9);
    }

    OZDynamicCurve::delKeypoint(this + 36, *(&v8 + 1), a2);
    OZDynamicCurve::delKeypoint(this + 65, v8, a2);
  }

  return v6;
}

void OZChannelCurve::addVertex(OZChannelCurve *this, const CMTime *a2, double a3, double a4)
{
  v8 = 0;
  v9 = 0.0;
  v7 = 0;
  (*(*this + 464))(this, 1);
  OZDynamicCurve::getCurrentMaxValueU((this + 288), a2, &v9);
  OZDynamicCurve::setKeypoint((this + 288), a2, v9 + 1.0, a3, &v8);
}

uint64_t OZChannelCurve::addVertices(uint64_t a1, const CMTime *a2, uint64_t a3)
{
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0;
  (*(*a1 + 464))(a1, 1);
  OZDynamicCurve::getCurrentMaxValueU((a1 + 288), a2, &v10);
  OZDynamicCurve::getCurrentMaxValueU((a1 + 520), a2, &v9);
  if (*a3 != *(a3 + 8))
  {
    v6 = **a3;
    v9 = v9 + 1.0;
    v10 = v10 + 1.0;
    OZDynamicCurve::setKeypoint((a1 + 288), a2, v10, v6, &v8);
  }

  OZDynamicCurve::setDefaultAtCurrentTime((a1 + 288), a2);
  OZDynamicCurve::setDefaultAtCurrentTime((a1 + 520), a2);
  return (*(*a1 + 856))(a1);
}

BOOL OZChannelCurve::deleteAllVertices(OZChannelCurve *this)
{
  v2 = (this + 152);
  (*(*this + 464))(this, 1);
  OZChannelFolder::removeAllDescendants(v2, 1);
  OZDynamicCurve::delAllKeypoints((this + 288));

  return OZDynamicCurve::delAllKeypoints((this + 520));
}

void *OZChannelCurve::getVertex(OZChannelCurve *this, const CMTime *a2, Float64 a3)
{
  v7 = 0;
  v8 = 0;
  OZDynamicCurve::getKeypointHandle((this + 288), a2, a3, &v8);
  OZDynamicCurve::getKeypointHandle((this + 520), a2, a3, &v7);
  return v8;
}

void *OZChannelCurve::getFirstVertex(OZChannelCurve *this, const CMTime *a2, int a3)
{
  v8 = 0;
  v9 = 0;
  if (a3)
  {
    OZDynamicCurve::getFirstValidKeypointHandle((this + 288), a2, &v9);
    OZDynamicCurve::getFirstValidKeypointHandle((this + 520), a2, &v8);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    OZDynamicCurve::getFirstKeypoint((this + 288), a2, &v7, 0);
    OZDynamicCurve::getFirstKeypoint((this + 520), a2, &v6, 0);
    OZDynamicCurve::getKeypointHandle((this + 288), a2, v7, &v9);
    OZDynamicCurve::getKeypointHandle((this + 520), a2, v6, &v8);
  }

  return v9;
}

void *OZChannelCurve::getLastVertex(OZChannelCurve *this, const CMTime *a2, int a3)
{
  v8 = 0;
  v9 = 0;
  if (a3)
  {
    OZDynamicCurve::getLastValidKeypointHandle((this + 288), a2, &v9);
    OZDynamicCurve::getLastValidKeypointHandle((this + 520), a2, &v8);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    OZDynamicCurve::getLastKeypoint((this + 288), a2, &v7, 0);
    OZDynamicCurve::getLastKeypoint((this + 520), a2, &v6, 0);
    OZDynamicCurve::getKeypointHandle((this + 288), a2, v7, &v9);
    OZDynamicCurve::getKeypointHandle((this + 520), a2, v6, &v8);
  }

  return v9;
}

void *OZChannelCurve::getNextVertex(uint64_t a1, const CMTime *a2, char *a3, char *a4, int a5)
{
  v10 = 0;
  v11 = 0;
  v8 = (a1 + 288);
  if (a5)
  {
    OZDynamicCurve::getNextValidKeypointHandle(v8, a2, a3, &v11);
    OZDynamicCurve::getNextValidKeypointHandle((a1 + 520), a2, a4, &v10);
  }

  else
  {
    OZDynamicCurve::getNextKeypointHandle(v8, a2, a3, &v11);
    OZDynamicCurve::getNextKeypointHandle((a1 + 520), a2, a4, &v10);
  }

  return v11;
}

void *OZChannelCurve::getPreviousVertex(uint64_t a1, const CMTime *a2, char *a3, char *a4, int a5)
{
  v10 = 0;
  v11 = 0;
  v8 = (a1 + 288);
  if (a5)
  {
    OZDynamicCurve::getPreviousValidKeypointHandle(v8, a2, a3, &v11);
    OZDynamicCurve::getPreviousValidKeypointHandle((a1 + 520), a2, a4, &v10);
  }

  else
  {
    OZDynamicCurve::getPreviousKeypointHandle(v8, a2, a3, &v11);
    OZDynamicCurve::getPreviousKeypointHandle((a1 + 520), a2, a4, &v10);
  }

  return v11;
}

void OZChannelCurve::getEnabledVerticesList(os_unfair_lock_s *this@<X0>, const CMTime *a2@<X1>, void *a3@<X8>)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  OZDynamicCurve::getKeypointValidHandleList(this + 72, a2, &v15);
  OZDynamicCurve::getKeypointValidHandleList(this + 130, a2, &__p);
  std::vector<OZVertex2D>::reserve(a3, (v16 - v15) >> 3);
  v6 = v15;
  if (v16 != v15)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v6[v7];
      v10 = *(__p + v7);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      std::vector<OZVertex2D>::push_back[abi:ne200100](a3, &v11);
      v7 = v8;
      v6 = v15;
      ++v8;
    }

    while (v7 < (v16 - v15) >> 3);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
    v6 = v15;
  }

  if (v6)
  {
    v16 = v6;
    operator delete(v6);
  }
}

void sub_25FECDF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<OZVertex2D>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OZVertex2D>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<OZVertex2D>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OZVertex2D>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void OZChannelCurve::getVerticesList(OZChannelCurve *this@<X0>, void *a2@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v11 = 0;
  v12 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  OZDynamicCurve::getKeypointHandleList(this + 288, &v13);
  OZDynamicCurve::getKeypointHandleList(this + 520, &__p);
  std::vector<OZVertex2D>::reserve(a2, (v14 - v13) >> 3);
  v4 = v13;
  if (v14 != v13)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v4[v5];
      v8 = *(__p + v5);
      *&v9 = v7;
      *(&v9 + 1) = v8;
      std::vector<OZVertex2D>::push_back[abi:ne200100](a2, &v9);
      v5 = v6;
      v4 = v13;
      ++v6;
    }

    while (v5 < (v14 - v13) >> 3);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
    v4 = v13;
  }

  if (v4)
  {
    v14 = v4;
    operator delete(v4);
  }
}

void sub_25FECE1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelCurve::setVertexValue(os_unfair_lock_s *a1, char *a2, char *a3, const CMTime *a4, double a5, double a6)
{
  (*(*&a1->_os_unfair_lock_opaque + 736))(a1, a4);
  v13 = 0.0;
  OZDynamicCurve::getKeypoint(&a1[72], a2, a4, &v13, 0);
  OZDynamicCurve::setKeypoint(a1 + 72, a2, a4, v13, a5);
  return OZDynamicCurve::setKeypoint(a1 + 130, a3, a4, v13, a6);
}

BOOL OZChannelCurve::getVertexValue(uint64_t a1, char *a2, char *a3, CMTime *a4, double *a5, double *a6)
{
  OZDynamicCurve::getKeypoint((a1 + 288), a2, a4, 0, a5);

  return OZDynamicCurve::getKeypoint((a1 + 520), a3, a4, 0, a6);
}

uint64_t OZChannelCurve::offsetVertex(uint64_t a1, char *a2, char *a3, const CMTime *a4, double a5, double a6)
{
  (*(*a1 + 736))(a1, a4);
  v13 = 0.0;
  v14 = 0.0;
  OZDynamicCurve::getKeypoint((a1 + 288), a2, a4, &v14, &v13);
  OZDynamicCurve::setKeypoint((a1 + 288), a2, a4, v14, v13 + a5);
  OZDynamicCurve::getKeypoint((a1 + 520), a3, a4, &v14, &v13);
  return OZDynamicCurve::setKeypoint((a1 + 520), a3, a4, v14, v13 + a6);
}

void OZChannelCurve::offsetCurve(OZChannelCurve *this, const CMTime *a2, double a3, double a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  OZDynamicCurve::getKeypointHandleList(this + 288, &v14);
  OZDynamicCurve::getKeypointHandleList(this + 520, &__p);
  v8 = v14;
  if (v15 != v14)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      OZChannelCurve::offsetVertex(this, v8[v9], *(__p + v9), a2, a3, a4);
      v9 = v10;
      v8 = v14;
      ++v10;
    }

    while (v9 != (v15 - v14) >> 3);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
    v8 = v14;
  }

  if (v8)
  {
    v15 = v8;
    operator delete(v8);
  }
}

void sub_25FECE4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelCurve::getCurveValueWithParameter(OZChannelCurve *this, const CMTime *a2, Float64 a3, double *a4, double *a5)
{
  OZDynamicCurve::getPoint((this + 288), a2, a3, a4);

  return OZDynamicCurve::getPoint((this + 520), a2, a3, a5);
}

uint64_t OZChannelCurve::setVertexInterpolation(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  OZDynamicCurve::setKeypointInterpolation((a1 + 288), a2, a4);

  return OZDynamicCurve::setKeypointInterpolation((a1 + 288), a3, a4);
}

uint64_t OZChannelCurve::isCurveFlattened(OZChannelCurve *this)
{
  result = OZDynamicCurve::isCurveFlattened((this + 288));
  if (result)
  {

    return OZDynamicCurve::isCurveFlattened((this + 520));
  }

  return result;
}

uint64_t OZChannelCurve::flattenCurve(OZChannelCurve *this)
{
  OZDynamicCurve::flattenCurve((this + 288));

  return OZDynamicCurve::flattenCurve((this + 520));
}

BOOL OZChannelCurve::isVertexFlattened(uint64_t a1, char *a2, char *a3)
{
  *v6 = 0;
  OZDynamicCurve::isKeypointFlattened((a1 + 288), a2, &v6[1]);
  OZDynamicCurve::isKeypointFlattened((a1 + 520), a3, v6);
  return v6[1] && v6[0];
}

uint64_t OZChannelCurve::getInputTangents(os_unfair_lock_s *a1, char *a2, char *a3, CMTime *a4, double *a5, double *a6)
{
  OZDynamicCurve::getKeypointInputHandles(a1 + 72, a2, a4, a5);

  return OZDynamicCurve::getKeypointInputHandles(a1 + 130, a3, a4, a6);
}

uint64_t OZChannelCurve::getOutputTangents(os_unfair_lock_s *a1, char *a2, char *a3, CMTime *a4, double *a5, double *a6)
{
  OZDynamicCurve::getKeypointOutputHandles(a1 + 72, a2, a4, a5);

  return OZDynamicCurve::getKeypointOutputHandles(a1 + 130, a3, a4, a6);
}

uint64_t OZChannelCurve::setInputTangents(os_unfair_lock_s *a1, char *a2, char *a3, const CMTime *a4, double a5, double a6)
{
  (*(*&a1->_os_unfair_lock_opaque + 736))(a1, a4);
  OZDynamicCurve::setKeypointInputHandles(a1 + 72, a2, a4, a5);

  return OZDynamicCurve::setKeypointInputHandles(a1 + 130, a3, a4, a6);
}

uint64_t OZChannelCurve::setOutputTangents(os_unfair_lock_s *a1, char *a2, char *a3, const CMTime *a4, double a5, double a6)
{
  (*(*&a1->_os_unfair_lock_opaque + 736))(a1, a4);
  OZDynamicCurve::setKeypointOutputHandles(a1 + 72, a2, a4, a5);

  return OZDynamicCurve::setKeypointOutputHandles(a1 + 130, a3, a4, a6);
}

double OZChannelCurve::getVertexDerivatives(uint64_t a1, char *a2, char *a3, CMTime *a4, double *a5, double *a6, double *a7, double *a8)
{
  v59 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v56 = 0.0;
  OZDynamicCurve::getKeypointInputHandles((a1 + 288), a2, a4, &v59);
  OZDynamicCurve::getKeypointInputHandles((a1 + 520), a3, a4, &v58);
  OZDynamicCurve::getKeypointOutputHandles((a1 + 288), a2, a4, &v57);
  OZDynamicCurve::getKeypointOutputHandles((a1 + 520), a3, a4, &v56);
  result = 0.0000001;
  if (fabs(v59) >= 0.0000001 || fabs(v58) >= 0.0000001 || fabs(v57) >= 0.0000001 || fabs(v56) >= 0.0000001)
  {
    goto LABEL_46;
  }

  PreviousVertex = OZChannelCurve::getPreviousVertex(a1, a4, a2, a3, 1);
  v19 = v18;
  NextVertex = OZChannelCurve::getNextVertex(a1, a4, a2, a3, 1);
  FirstVertex = NextVertex;
  v49 = v22;
  v23 = v19;
  v47 = PreviousVertex;
  if (!PreviousVertex || !v19)
  {
    v24 = NextVertex;
    LOBYTE(v55) = 0;
    OZDynamicCurve::isClosedCurve((a1 + 288), &v55);
    if (LOBYTE(v55) == 1 && (v25 = *(a1 + 264)) != 0)
    {
      v23 = v19;
      FirstVertex = v24;
      if (((v25[1] - *v25) >> 3) >= 6)
      {
        LastVertex = OZChannelCurve::getLastVertex(a1, a4, 1);
        FirstVertex = v24;
        v47 = LastVertex;
      }
    }

    else
    {
      v23 = v19;
      FirstVertex = v24;
    }
  }

  if (!FirstVertex || !v49)
  {
    v27 = FirstVertex;
    v28 = v23;
    LOBYTE(v55) = 0;
    OZDynamicCurve::isClosedCurve((a1 + 288), &v55);
    if (LOBYTE(v55) == 1)
    {
      v29 = *(a1 + 264);
      v23 = v28;
      if (v29)
      {
        FirstVertex = v27;
        if (((v29[1] - *v29) >> 3) >= 6)
        {
          FirstVertex = OZChannelCurve::getFirstVertex(a1, a4, 1);
          v49 = v30;
          v23 = v28;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v23 = v28;
    }

    FirstVertex = v27;
  }

LABEL_20:
  if (v47)
  {
    v31 = v23 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v48 = v32;
  if (!v31 || FirstVertex && v49)
  {
    v33 = FirstVertex;
    v46 = v23;
    v54 = 0.0;
    v55 = 0.0;
    v52 = 0.0;
    v53 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    OZDynamicCurve::getKeypoint((a1 + 288), a2, a4, 0, &v53);
    OZDynamicCurve::getKeypoint((a1 + 520), a3, a4, 0, &v52);
    if (v48)
    {
      OZDynamicCurve::getKeypoint((a1 + 288), v47, a4, 0, &v55);
      OZDynamicCurve::getKeypoint((a1 + 520), v46, a4, 0, &v54);
    }

    else
    {
      v54 = v52;
      v55 = v53;
    }

    if (v33)
    {
      v34 = v49 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = !v34;
    if (v34)
    {
      v38 = v52;
      v39 = v53;
      v36 = v52;
      v37 = v53;
    }

    else
    {
      OZDynamicCurve::getKeypoint((a1 + 288), v33, a4, 0, &v51);
      OZDynamicCurve::getKeypoint((a1 + 520), v49, a4, 0, &v50);
      v36 = v50;
      v37 = v51;
      v38 = v52;
      v39 = v53;
    }

    v40 = sqrt((v55 - v37) * (v55 - v37) + (v54 - v36) * (v54 - v36));
    v41 = sqrt((v39 - v37) * (v39 - v37) + (v38 - v36) * (v38 - v36));
    v42 = sqrt((v55 - v39) * (v55 - v39) + (v54 - v38) * (v54 - v38));
    v43 = (v55 - v37) / v40 * v42 / 3.0;
    v59 = v43;
    v44 = (v54 - v36) / v40 * v42 / 3.0;
    v45 = (v37 - v55) / v40 * v41 / 3.0;
    v57 = v45;
    v58 = v44;
    result = (v36 - v54) / v40 * v41 / 3.0;
    v56 = result;
    if ((v48 & 1) == 0)
    {
      v43 = -v45;
      v59 = -v45;
      v44 = -result;
      v58 = -result;
    }

    if ((v35 & 1) == 0)
    {
      result = -v44;
      v56 = -v44;
      v57 = -v43;
    }
  }

LABEL_46:
  if (a5)
  {
    result = v59;
    *a5 = v59;
  }

  if (a6)
  {
    result = v58;
    *a6 = v58;
  }

  if (a7)
  {
    result = v57;
    *a7 = v57;
  }

  if (a8)
  {
    result = v56;
    *a8 = v56;
  }

  return result;
}

uint64_t OZChannelCurve::setCurveInterpolation(OZChannelCurve *this, uint64_t a2)
{
  (*(*this + 464))(this, 1);
  OZDynamicCurve::setCurveInterpolation((this + 288), a2);

  return OZDynamicCurve::setCurveInterpolation((this + 520), a2);
}

uint64_t OZChannelCurve::closeCurve(OZChannelCurve *this)
{
  OZDynamicCurve::closeCurve((this + 288));

  return OZDynamicCurve::closeCurve((this + 520));
}

uint64_t OZChannelCurve::openCurve(uint64_t a1, void *a2, void *a3)
{
  OZDynamicCurve::openCurve((a1 + 288), a2);

  return OZDynamicCurve::openCurve((a1 + 520), a3);
}

uint64_t OZChannelCurve::openCurve(OZChannelCurve *this)
{
  OZDynamicCurve::openCurve((this + 288), 0);

  return OZDynamicCurve::openCurve((this + 520), 0);
}

uint64_t OZChannelCurve::reverseWindingOrder(OZChannelCurve *this)
{
  OZDynamicCurve::reverseWindingOrder((this + 288));

  return OZDynamicCurve::reverseWindingOrder((this + 520));
}

void OZChannelCurve::transformCurve(uint64_t a1, const CMTime *a2, double *a3, double *a4)
{
  v42 = 0.0;
  v43 = 0.0;
  v41 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v37 = 0;
  v38 = 0.0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0.0;
  OZDynamicCurve::getKeypointHandleList(a1 + 288, &v35);
  OZDynamicCurve::getKeypointHandleList(a1 + 520, &__p);
  v8 = v35;
  if (v36 != v35)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      OZDynamicCurve::breakKeypointHandles((a1 + 288), v8[v9], 1);
      OZDynamicCurve::breakKeypointHandles((a1 + 520), *(__p + v9), 1);
      OZDynamicCurve::getKeypoint((a1 + 288), *(v35 + v9), a2, &v31, &v39);
      OZDynamicCurve::getKeypoint((a1 + 520), *(__p + v9), a2, 0, &v38);
      OZDynamicCurve::getKeypointInputHandles((a1 + 288), *(v35 + v9), a2, &v43);
      OZDynamicCurve::getKeypointInputHandles((a1 + 520), *(__p + v9), a2, &v42);
      OZDynamicCurve::getKeypointOutputHandles((a1 + 288), *(v35 + v9), a2, &v41);
      OZDynamicCurve::getKeypointOutputHandles((a1 + 520), *(__p + v9), a2, &v40);
      v11 = v38;
      v12 = v39;
      if (a4)
      {
        v12 = v39 + *a4;
        v11 = v38 + a4[1];
      }

      v13 = v12 + v43;
      v14 = v11 + v42;
      v15 = v12 + v41;
      v16 = v11 + v40;
      v17 = a3[12];
      v18 = a3[13];
      v19 = a3[15];
      v20 = v19 + v12 * v17 + v11 * v18;
      v21 = *a3;
      v22 = a3[1];
      v23 = a3[3];
      v24 = a3[4];
      v25 = (v23 + v12 * *a3 + v11 * v22) / v20;
      v26 = a3[5];
      v27 = v12 * v24 + v11 * v26;
      v28 = a3[7];
      v38 = (v28 + v27) / v20;
      v39 = v25;
      v29 = v19 + v13 * v17 + v14 * v18;
      v42 = (v28 + v13 * v24 + v14 * v26) / v29;
      v43 = (v23 + v13 * v21 + v14 * v22) / v29;
      v30 = v19 + v15 * v17 + v16 * v18;
      v41 = (v23 + v15 * v21 + v16 * v22) / v30;
      v40 = (v28 + v15 * v24 + v16 * v26) / v30;
      OZDynamicCurve::setKeypoint((a1 + 288), *(v35 + v9), a2, v31, v25);
      OZDynamicCurve::setKeypoint((a1 + 520), *(__p + v9), a2, v31, v38);
      OZDynamicCurve::setKeypointInputHandles((a1 + 288), *(v35 + v9), a2, v43 - v39);
      OZDynamicCurve::setKeypointInputHandles((a1 + 520), *(__p + v9), a2, v42 - v38);
      OZDynamicCurve::setKeypointOutputHandles((a1 + 288), *(v35 + v9), a2, v41 - v39);
      OZDynamicCurve::setKeypointOutputHandles((a1 + 520), *(__p + v9), a2, v40 - v38);
      OZDynamicCurve::breakKeypointHandles((a1 + 288), *(v35 + v9), 0);
      OZDynamicCurve::breakKeypointHandles((a1 + 520), *(__p + v9), 0);
      v9 = v10;
      v8 = v35;
      ++v10;
    }

    while (v9 < (v36 - v35) >> 3);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
    v8 = v35;
  }

  if (v8)
  {
    v36 = v8;
    operator delete(v8);
  }
}

void sub_25FECF1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelCurve::getCurve(os_unfair_lock_s *a1, const CMTime *a2, uint64_t a3, const void **a4, const void **a5, const void **a6, double *a7)
{
  v11 = a2;
  v112.f64[0] = 0.0;
  OZDynamicCurve::getCurrentRangeU(&a1[72], a2, v112.f64);
  v13 = v112.f64[0];
  NumberOfValidKeypoints = OZDynamicCurve::getNumberOfValidKeypoints(a1 + 72, v11);
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  OZDynamicCurve::setCurveInterpolation(&a1[72], a3);
  OZDynamicCurve::setCurveInterpolation(&a1[130], a3);
  v15 = *&a1[66]._os_unfair_lock_opaque;
  if (!v15)
  {
    goto LABEL_6;
  }

  if (((v15[1] - *v15) >> 3) < 4 || NumberOfValidKeypoints < 2)
  {
    goto LABEL_6;
  }

  v112.f64[0] = 0.0;
  OZDynamicCurve::getCurrentMinValueU(&a1[72], v11, v112.f64);
  v28 = v112.f64[0];
  LODWORD(v112.f64[0]) = 0;
  OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0);
  if (LODWORD(v112.f64[0]) == 4)
  {
    v124 = 0.0;
    v125 = 0.0;
    FirstVertex = OZChannelCurve::getFirstVertex(a1, v11, 1);
    v31 = v30;
    NextVertex = OZChannelCurve::getNextVertex(a1, v11, FirstVertex, v30, 1);
    v34 = v33;
    LastVertex = OZChannelCurve::getLastVertex(a1, v11, 1);
    v104 = v36;
    v105 = LastVertex;
    v106 = v11;
    if (NextVertex && v34)
    {
      do
      {
        v123 = 0.0;
        v121 = 0.0;
        v122 = 0.0;
        v119 = 0.0;
        v120 = 0.0;
        v117 = 0.0;
        v118 = 0.0;
        v115 = 0.0;
        v116 = 0.0;
        v114 = 0.0;
        OZDynamicCurve::getKeypoint(&a1[72], FirstVertex, v106, 0, &v121);
        OZDynamicCurve::getKeypoint(&a1[130], v31, v106, 0, &v120);
        OZDynamicCurve::getKeypoint(&a1[72], NextVertex, v106, 0, &v115);
        OZDynamicCurve::getKeypoint(&a1[130], v34, v106, 0, &v114);
        OZDynamicCurve::getKeypoint(&a1[72], FirstVertex, v106, &v123, 0);
        OZDynamicCurve::getKeypoint(&a1[72], NextVertex, v106, &v122, 0);
        v37 = FirstVertex == v105 && v31 == v104;
        v38 = v37;
        if (v37)
        {
          LOBYTE(v112.f64[0]) = 0;
          OZDynamicCurve::isClosedCurve(&a1[72], &v112);
          if (LOBYTE(v112.f64[0]) == 1)
          {
            v122 = v13 + v122;
          }
        }

        OZDynamicCurve::getKeypointOutputHandles(a1 + 72, FirstVertex, v106, &v119);
        OZDynamicCurve::getKeypointOutputHandles(a1 + 130, v31, v106, &v118);
        OZDynamicCurve::getKeypointInputHandles(a1 + 72, NextVertex, v106, &v117);
        OZDynamicCurve::getKeypointInputHandles(a1 + 130, v34, v106, &v116);
        v40 = v114;
        v39 = v115;
        if (vabdd_f64(v121, v115) < 0.0000001 && vabdd_f64(v120, v114) < 0.0000001)
        {
          v39 = v115 + 0.000001;
          v40 = v114 + 0.000001;
          v114 = v114 + 0.000001;
          v115 = v115 + 0.000001;
        }

        v112.f64[0] = v121;
        v112.f64[1] = v120;
        v113 = xmmword_260342700;
        v41 = v121 + v119;
        v42 = v120 + v118;
        v110.f64[0] = v121 + v119;
        v110.f64[1] = v120 + v118;
        v111 = xmmword_260342700;
        v43 = v117 + v39;
        v108.f64[0] = v117 + v39;
        v108.f64[1] = v116 + v40;
        v109 = xmmword_260342700;
        v107[0].f64[0] = v39;
        v107[0].f64[1] = v40;
        v107[1] = xmmword_260342700;
        if (vabdd_f64(v121 + v119, v121) < 0.0000001 || vabdd_f64(v43, v41) < 0.0000001)
        {
          goto LABEL_44;
        }

        v44 = v41 - v121;
        v45 = v42 - v120;
        v46 = sqrt(v44 * v44 + v45 * v45);
        if (fabs(v46) >= 0.000000100000001)
        {
          v44 = v44 / v46;
          v45 = v45 / v46;
        }

        v47 = v43 - v41;
        v48 = v116 + v40 - v42;
        v49 = sqrt(v47 * v47 + v48 * v48);
        if (fabs(v49) >= 0.000000100000001)
        {
          v47 = v47 / v49;
          v48 = v48 / v49;
        }

        if (fabs(v44 * v47 + v45 * v48 + 1.0) >= 0.001)
        {
LABEL_44:
          PCAlgorithm::BezierSubdivide(&v112, &v110, &v108, v107, 6, a7, &v132, &v129, v123, v122 - v123, 0, &v126);
        }

        else
        {
          v50 = v123;
          *v135 = ((v122 - v123) / 0.05);
          OZDynamicCurve::getCurveSamples(&a1[72], v106, v135, &v126, &v132, v123, 0.05);
          OZDynamicCurve::getCurveSamples(&a1[130], v106, v135, 0, &v129, v50, 0.05);
        }

        v124 = v107[0].f64[1];
        v125 = v107[0].f64[0];
        if (v38)
        {
          break;
        }

        v51 = OZChannelCurve::getNextVertex(a1, v106, NextVertex, v34, 1);
        v52 = v51;
        v54 = v53;
        if (v53)
        {
          v55 = v51 == 0;
        }

        else
        {
          v55 = 1;
        }

        if (v55 && NextVertex == v105 && v34 == v104)
        {
          v135[0] = 0;
          OZDynamicCurve::isClosedCurve(&a1[72], v135);
          if (v135[0] == 1)
          {
            v52 = OZChannelCurve::getFirstVertex(a1, v106, 1);
            v54 = v56;
          }
        }

        if (!v52)
        {
          break;
        }

        v31 = v34;
        FirstVertex = NextVertex;
        v34 = v54;
        NextVertex = v52;
      }

      while (v54);
    }

    v11 = v106;
    if (v127 != v126)
    {
      LOBYTE(v112.f64[0]) = 0;
      OZDynamicCurve::isClosedCurve(&a1[72], &v112);
      if ((LOBYTE(v112.f64[0]) & 1) == 0)
      {
        v112.f64[0] = v13 + v28;
        std::vector<double>::push_back[abi:ne200100](&v126, &v112);
        std::vector<double>::push_back[abi:ne200100](&v132, &v125);
        std::vector<double>::push_back[abi:ne200100](&v129, &v124);
      }
    }

    goto LABEL_6;
  }

  LODWORD(v112.f64[0]) = 0;
  OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0);
  if (LODWORD(v112.f64[0]) == 1)
  {
    LOBYTE(v112.f64[0]) = 0;
    OZDynamicCurve::isClosedCurve(&a1[72], &v112);
    LODWORD(v112.f64[0]) = (LOBYTE(v112.f64[0]) ^ 1) + v13;
    OZDynamicCurve::getCurveSamples(&a1[72], v11, &v112, &v126, &v132, v28, 1.0);
    OZDynamicCurve::getCurveSamples(&a1[130], v11, &v112, 0, &v129, v28, 1.0);
    goto LABEL_6;
  }

  LODWORD(v112.f64[0]) = 0;
  OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0);
  if (LODWORD(v112.f64[0]) == 12 || (LODWORD(v112.f64[0]) = 0, OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0), LODWORD(v112.f64[0]) == 10))
  {
    LOBYTE(v112.f64[0]) = 0;
    OZDynamicCurve::isClosedCurve(&a1[72], &v112);
    LODWORD(v112.f64[0]) = (v13 / 0.025) + (LOBYTE(v112.f64[0]) ^ 1);
    OZDynamicCurve::getCurveSamples(&a1[72], v11, &v112, &v126, &v132, v28, 0.025);
    OZDynamicCurve::getCurveSamples(&a1[130], v11, &v112, 0, &v129, v28, 0.025);
    goto LABEL_6;
  }

  v107[0].f64[0] = 0.0;
  v125 = 0.0;
  v91 = v13 + v28;
  if (v28 < v13 + v28)
  {
    while (1)
    {
      v123 = 0.0;
      v124 = 0.0;
      v121 = 0.0;
      v122 = 0.0;
      v119 = 0.0;
      v120 = 0.0;
      v92 = v28 + 1.0;
      v93 = v28 + 1.0;
      if (v28 + 1.0 >= v91)
      {
        LOBYTE(v112.f64[0]) = 0;
        OZDynamicCurve::isClosedCurve(&a1[72], &v112);
        if (LOBYTE(v112.f64[0]))
        {
          v93 = 0.0;
        }

        else
        {
          v93 = v28 + 1.0;
        }
      }

      OZDynamicCurve::getPoint(&a1[72], v11, v28, &v124);
      OZDynamicCurve::getPoint(&a1[130], v11, v28, &v123);
      OZDynamicCurve::getPoint(&a1[72], v11, v28 + 0.25, &v122);
      OZDynamicCurve::getPoint(&a1[130], v11, v28 + 0.25, &v121);
      v94 = v28 + 0.5;
      OZDynamicCurve::getPoint(&a1[72], v11, v28 + 0.5, &v120);
      OZDynamicCurve::getPoint(&a1[130], v11, v28 + 0.5, &v119);
      if (vabdd_f64(v124, v122) >= 0.0000001)
      {
        break;
      }

      v95 = v120;
      v96 = v121;
      v97 = v123;
      if (vabdd_f64(v124, v120) >= 0.0000001 || vabdd_f64(v123, v121) >= 0.0000001 || vabdd_f64(v121, v119) >= 0.0000001)
      {
        goto LABEL_87;
      }

LABEL_88:
      OZDynamicCurve::getPoint(&a1[72], v11, v28 + 0.5, &v124);
      OZDynamicCurve::getPoint(&a1[130], v11, v28 + 0.5, &v123);
      v98 = v28 + 0.75;
      OZDynamicCurve::getPoint(&a1[72], v11, v98, &v122);
      OZDynamicCurve::getPoint(&a1[130], v11, v98, &v121);
      OZDynamicCurve::getPoint(&a1[72], v11, v93, &v120);
      OZDynamicCurve::getPoint(&a1[130], v11, v93, &v119);
      if (vabdd_f64(v124, v122) >= 0.0000001)
      {
        v101 = v123;
        v99 = v120;
        v100 = v121;
      }

      else
      {
        v99 = v120;
        v100 = v121;
        v101 = v123;
        if (vabdd_f64(v124, v120) < 0.0000001 && vabdd_f64(v123, v121) < 0.0000001)
        {
          v102 = v119;
          if (vabdd_f64(v121, v119) < 0.0000001)
          {
            goto LABEL_95;
          }
        }
      }

      v112.f64[0] = v124;
      v112.f64[1] = v101;
      *&v113 = v94;
      v110.f64[0] = v122;
      v110.f64[1] = v100;
      *&v111 = v98;
      v108.f64[0] = v99;
      v108.f64[1] = v119;
      *&v109 = v92;
      OZChannelCurve::XSplineSubdivide(a1, v112.f64, v110.f64, v108.f64, 50, v11, &v132, &v129, &v126);
      v102 = v119;
      v99 = v120;
LABEL_95:
      v107[0].f64[0] = v99;
      v125 = v102;
      v28 = v92;
      if (v92 >= v91)
      {
        goto LABEL_96;
      }
    }

    v97 = v123;
    v95 = v120;
    v96 = v121;
LABEL_87:
    v112.f64[0] = v124;
    v112.f64[1] = v97;
    *&v113 = v28;
    v110.f64[0] = v122;
    v110.f64[1] = v96;
    *&v111 = v28 + 0.25;
    v108.f64[0] = v95;
    v108.f64[1] = v119;
    *&v109 = v28 + 0.5;
    OZChannelCurve::XSplineSubdivide(a1, v112.f64, v110.f64, v108.f64, 50, v11, &v132, &v129, &v126);
    goto LABEL_88;
  }

LABEL_96:
  if (v127 != v126)
  {
    LOBYTE(v112.f64[0]) = 0;
    OZDynamicCurve::isClosedCurve(&a1[72], &v112);
    if ((LOBYTE(v112.f64[0]) & 1) == 0)
    {
      v112.f64[0] = v91;
      std::vector<double>::push_back[abi:ne200100](&v126, &v112);
      std::vector<double>::push_back[abi:ne200100](&v132, v107);
      std::vector<double>::push_back[abi:ne200100](&v129, &v125);
    }
  }

LABEL_6:
  v18 = v126;
  v17 = v127;
  if (v127 != v126)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v20 == 1 || vabdd_f64(*(a5[1] - 1), *&v132[v19]) >= 0.001 || vabdd_f64(*(a6[1] - 1), *&v129[v19]) >= 0.001)
      {
        std::vector<double>::push_back[abi:ne200100](a5, &v132[v19]);
        std::vector<double>::push_back[abi:ne200100](a6, &v129[v19]);
        std::vector<double>::push_back[abi:ne200100](a4, &v126[v19]);
        v18 = v126;
        v17 = v127;
      }

      v19 = v20++;
    }

    while (v19 < v17 - v18);
  }

  if ((a4[1] - *a4) > 0x10)
  {
    LOBYTE(v112.f64[0]) = 0;
    OZDynamicCurve::isClosedCurve(&a1[72], &v112);
    if (LOBYTE(v112.f64[0]) == 1)
    {
      v21 = a5[1];
      v22 = **a5;
      v24 = *(v21 - 1);
      v23 = v21 - 1;
      if (vabdd_f64(v22, v24) < 0.001)
      {
        v25 = **a6;
        do
        {
          if (vabdd_f64(v25, *(a6[1] - 1)) >= 0.001)
          {
            break;
          }

          a5[1] = v23;
          a6[1] = a6[1] - 8;
          a4[1] = a4[1] - 8;
          v26 = a5[1];
          v27 = *(v26 - 1);
          v23 = v26 - 1;
        }

        while (vabdd_f64(v22, v27) < 0.001);
      }
    }

    else
    {
      LODWORD(v112.f64[0]) = 0;
      OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0);
      if (LODWORD(v112.f64[0]) == 12 || (LODWORD(v112.f64[0]) = 0, OZDynamicCurve::getCurveInterpolation(&a1[72], &v112, 0, 0), LODWORD(v112.f64[0]) == 10))
      {
        v57 = **a4;
        v58 = *a4 + 8;
        v59 = **a5;
        v60 = *(*a5 + 1);
        v61 = **a6;
        v62 = *(*a6 + 1);
        v63 = *v58 - v57;
        v112.f64[0] = v57 + (v63 + v63) / 3.0;
        std::vector<double>::insert(a4, v58, v112.f64);
        v64 = *a5;
        v65 = v60 - v59;
        v112.f64[0] = v59 + (v65 + v65) / 3.0;
        std::vector<double>::insert(a5, v64 + 8, v112.f64);
        v66 = *a6;
        v67 = v62 - v61;
        v112.f64[0] = v61 + (v67 + v67) / 3.0;
        std::vector<double>::insert(a6, v66 + 8, v112.f64);
        v68 = *a4;
        v112.f64[0] = v57 + v63 / 3.0;
        std::vector<double>::insert(a4, v68 + 8, v112.f64);
        v69 = *a5;
        v112.f64[0] = v59 + v65 / 3.0;
        std::vector<double>::insert(a5, v69 + 8, v112.f64);
        v70 = *a6;
        v112.f64[0] = v61 + v67 / 3.0;
        std::vector<double>::insert(a6, v70 + 8, v112.f64);
        v71 = a4[1];
        v72 = (v71 - *a4) >> 3;
        v73 = v72 - 2;
        v74 = *(*a4 + (v72 - 2));
        LODWORD(v72) = v72 - 1;
        v75 = *(*a5 + v73);
        v76 = *(*a5 + v72);
        v77 = *(*a6 + v73);
        v78 = *(*a6 + v72);
        v79 = *(*a4 + v72) - v74;
        v112.f64[0] = v74 + v79 / 3.0;
        std::vector<double>::insert(a4, v71 - 8, v112.f64);
        v80 = a5[1] - 8;
        v81 = v76 - v75;
        v112.f64[0] = v75 + v81 / 3.0;
        std::vector<double>::insert(a5, v80, v112.f64);
        v82 = a6[1] - 8;
        v83 = v78 - v77;
        v112.f64[0] = v77 + v83 / 3.0;
        std::vector<double>::insert(a6, v82, v112.f64);
        v84 = a4[1] - 8;
        v112.f64[0] = v74 + (v79 + v79) / 3.0;
        std::vector<double>::insert(a4, v84, v112.f64);
        v85 = a5[1] - 8;
        v112.f64[0] = v75 + (v81 + v81) / 3.0;
        std::vector<double>::insert(a5, v85, v112.f64);
        v86 = a6[1] - 8;
        v112.f64[0] = v77 + (v83 + v83) / 3.0;
        std::vector<double>::insert(a6, v86, v112.f64);
      }

      else
      {
        v87 = **a4 + 0.0005;
        v112.f64[0] = v87;
        v110.f64[0] = 0.0;
        v108.f64[0] = 0.0;
        OZDynamicCurve::getPoint(&a1[72], v11, v87, v110.f64);
        OZDynamicCurve::getPoint(&a1[130], v11, v87, v108.f64);
        std::vector<double>::insert(a4, *a4 + 8, v112.f64);
        std::vector<double>::insert(a5, *a5 + 8, v110.f64);
        std::vector<double>::insert(a6, *a6 + 8, v108.f64);
        v88 = **a4 + 0.00025;
        v112.f64[0] = v88;
        OZDynamicCurve::getPoint(&a1[72], v11, v88, v110.f64);
        OZDynamicCurve::getPoint(&a1[130], v11, v88, v108.f64);
        std::vector<double>::insert(a4, *a4 + 8, v112.f64);
        std::vector<double>::insert(a5, *a5 + 8, v110.f64);
        std::vector<double>::insert(a6, *a6 + 8, v108.f64);
        v89 = *(a4[1] - 1) + -0.0005;
        v112.f64[0] = v89;
        OZDynamicCurve::getPoint(&a1[72], v11, v89, v110.f64);
        OZDynamicCurve::getPoint(&a1[130], v11, v89, v108.f64);
        std::vector<double>::insert(a4, a4[1] - 8, v112.f64);
        std::vector<double>::insert(a5, a5[1] - 8, v110.f64);
        std::vector<double>::insert(a6, a6[1] - 8, v108.f64);
        v90 = *(a4[1] - 1) + -0.00025;
        v112.f64[0] = v90;
        OZDynamicCurve::getPoint(&a1[72], v11, v90, v110.f64);
        OZDynamicCurve::getPoint(&a1[130], v11, v90, v108.f64);
        std::vector<double>::insert(a4, a4[1] - 8, v112.f64);
        std::vector<double>::insert(a5, a5[1] - 8, v110.f64);
        std::vector<double>::insert(a6, a6[1] - 8, v108.f64);
      }
    }
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }
}

void sub_25FED0180(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    *(v1 - 224) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 208);
  if (v4)
  {
    *(v1 - 200) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 184);
  if (v5)
  {
    *(v1 - 176) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

double OZChannelCurve::getParametricRange(OZChannelCurve *this, const CMTime *a2)
{
  v3 = 0.0;
  OZDynamicCurve::getCurrentRangeU((this + 288), a2, &v3);
  return v3;
}

double OZChannelCurve::getMinParametricValue(OZChannelCurve *this, const CMTime *a2)
{
  v3 = 0.0;
  OZDynamicCurve::getCurrentMinValueU((this + 288), a2, &v3);
  return v3;
}

void OZChannelCurve::XSplineSubdivide(uint64_t a1, double *a2, double *a3, double *a4, int a5, const CMTime *a6, const void **a7, const void **a8, const void **a9)
{
  v17 = *a4;
  v18 = a4[1];
  v19 = a2[1];
  v20 = *a4 - *a2;
  v21 = v18 - v19;
  v22 = *a3;
  v23 = a3[1];
  v36 = *a2;
  v24 = *a3 - *a2;
  *&v19 = v23 - v19;
  v25 = sqrtf((v20 * v20) + (v21 * v21));
  v26 = acosf(((v20 * v24) + (v21 * *&v19)) / (v25 * sqrtf((v24 * v24) + (*&v19 * *&v19))));
  v27 = tan(v26);
  v28 = v22 - v17;
  v29 = v23 - v18;
  v30 = acosf(((v20 * v28) + (v21 * v29)) / (v25 * sqrtf((v28 * v28) + (v29 * v29))));
  v31 = tan(v30);
  if (v27 >= v31)
  {
    v31 = v27;
  }

  if (a5 && fabs(v31) >= 0.0250000004)
  {
    v47 = 0.0;
    v48 = 0.0;
    v32 = a2[2] + (a3[2] - a2[2]) * 0.5;
    OZDynamicCurve::getPoint((a1 + 288), a6, v32, &v48);
    OZDynamicCurve::getPoint((a1 + 520), a6, v32, &v47);
    v45 = *a2;
    v46 = a2[2];
    v33 = a3[2];
    *v44 = v48;
    *&v44[1] = v47;
    *&v44[2] = v46 + (v33 - v46) * 0.5;
    v42 = *a3;
    v43 = v33;
    OZChannelCurve::XSplineSubdivide(a1, &v45, v44, &v42, (a5 - 1), a6, a7, a8, a9);
    v34 = a3[2] + (a4[2] - a3[2]) * 0.5;
    OZDynamicCurve::getPoint((a1 + 288), a6, v34, &v48);
    OZDynamicCurve::getPoint((a1 + 520), a6, v34, &v47);
    v40 = *a3;
    v41 = a3[2];
    v35 = a4[2];
    *v39 = v48;
    *&v39[1] = v47;
    *&v39[2] = v41 + (v35 - v41) * 0.5;
    v37 = *a4;
    v38 = v35;
    OZChannelCurve::XSplineSubdivide(a1, &v40, v39, &v37, (a5 - 1), a6, a7, a8, a9);
  }

  else
  {
    *&v45 = v36;
    std::vector<double>::push_back[abi:ne200100](a7, &v45);
    *&v45 = a2[1];
    std::vector<double>::push_back[abi:ne200100](a8, &v45);
    *&v45 = a2[2];
    std::vector<double>::push_back[abi:ne200100](a9, &v45);
  }
}

char *std::vector<double>::insert(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<double>::emplace_back<double>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_25FED06F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *std::vector<double>::insert(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<double>::emplace_back<double>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_25FED08C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelCurve::convertCurveBSplineBiasToXSplineBias(OZChannelCurve *this)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 464))(this, 1);
  OZDynamicCurve::getKeypointHandleList(this + 288, &v8);
  v2 = v8;
  if (v9 != v8)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      OZDynamicCurve::updateKeypointBias((this + 288), v2[v3]);
      v3 = v4;
      v2 = v8;
      ++v4;
    }

    while (v3 < v9 - v8);
  }

  v9 = v2;
  OZDynamicCurve::getKeypointHandleList(this + 520, &v8);
  v5 = v8;
  if (v9 != v8)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      OZDynamicCurve::updateKeypointBias((this + 520), v5[v6]);
      v6 = v7;
      v5 = v8;
      ++v7;
    }

    while (v6 < v9 - v8);
  }

  if (v5)
  {
    v9 = v5;
    operator delete(v5);
  }
}

void sub_25FED09F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

OZChannelVertexFolder *OZChannelCurve::getVertexAssociatedChannelX(uint64_t a1, char *a2)
{
  v3 = 0;
  OZDynamicCurve::getVertexChannel((a1 + 288), a2, &v3);
  return v3;
}

OZChannelVertexFolder *OZChannelCurve::getVertexAssociatedChannelY(uint64_t a1, int a2, char *a3)
{
  v4 = 0;
  OZDynamicCurve::getVertexChannel((a1 + 520), a3, &v4);
  return v4;
}

uint64_t OZChannelCurve::refreshAnimation(OZChannelCurve *this)
{
  if (*(this + 33))
  {
    OZChannelFolder::removeAllDescendants((this + 152), 0);
  }

  result = OZDynamicCurve::getNumberOfKeypoints((this + 288));
  if (result)
  {
    v3 = 0;
    v4 = MEMORY[0x277CC08F0];
    do
    {
      v5 = 0;
      v6 = 0;
      OZDynamicCurve::getKeypointHandle((this + 288), v4, v3, &v5);
      OZDynamicCurve::getVertexChannel((this + 288), v5, &v6);
      if (v6)
      {
        OZChannelFolder::push_back((this + 152), v6);
        if ((OZChannelVertexFolder::isVertexSaveWhenAtDefaultState(v6) & 1) == 0)
        {
          OZChannelVertexFolder::setVertexSaveWhenAtDefaultState(v6);
        }
      }

      OZDynamicCurve::getKeypointHandle((this + 520), v4, v3, &v5);
      OZDynamicCurve::getVertexChannel((this + 520), v5, &v6);
      if (v6)
      {
        OZChannelFolder::push_back((this + 152), v6);
        if ((OZChannelVertexFolder::isVertexSaveWhenAtDefaultState(v6) & 1) == 0)
        {
          OZChannelVertexFolder::setVertexSaveWhenAtDefaultState(v6);
        }
      }

      ++v3;
      result = OZDynamicCurve::getNumberOfKeypoints((this + 288));
    }

    while (v3 < result);
  }

  return result;
}

uint64_t OZChannelCurve::setDefaultAtCurrentTime(OZChannelCurve *this, const CMTime *a2)
{
  OZDynamicCurve::setDefaultAtCurrentTime((this + 288), a2);

  return OZDynamicCurve::setDefaultAtCurrentTime((this + 520), a2);
}

double OZChannelCurve::getMaxParametricValue(OZChannelCurve *this, const CMTime *a2)
{
  v3 = 0.0;
  OZDynamicCurve::getCurrentMaxValueU((this + 288), a2, &v3);
  return v3;
}

uint64_t OZChannelCurve::calcHashForAnimationOnly(OZChannel *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  OZChannel::calcHashForState(this, a2, a3);
  PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
  v7 = **&MEMORY[0x277CC08F0];
  if (OZChannel::getFirstKeyframe(this, &v7, 0))
  {
    v6 = v7;
    (*(*a2 + 16))(a2, 1000);
    (*(*a2 + 112))(a2, &v6);
    (*(*a2 + 24))(a2);
    if ((*(this->var0 + 79))(this, &v7, 0))
    {
      do
      {
        v6 = v7;
        (*(*a2 + 16))(a2, 1000);
        (*(*a2 + 112))(a2, &v6);
        (*(*a2 + 24))(a2);
      }

      while (((*(this->var0 + 79))(this, &v7, 0) & 1) != 0);
    }
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelCurve::calcHashForState(OZChannelCurve *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  OZChannel::calcHashForState(this, a2, a3);
  PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
  v8 = **&MEMORY[0x277CC08F0];
  if (OZChannel::getFirstKeyframe(this, &v8, 0))
  {
    v7 = v8;
    (*(*a2 + 16))(a2, 1000);
    (*(*a2 + 112))(a2, &v7);
    (*(*a2 + 24))(a2);
    if ((*(*this + 632))(this, &v8, 0))
    {
      do
      {
        v7 = v8;
        (*(*a2 + 16))(a2, 1000);
        (*(*a2 + 112))(a2, &v7);
        (*(*a2 + 24))(a2);
      }

      while (((*(*this + 632))(this, &v8, 0) & 1) != 0);
    }
  }

  OZChannelFolder::calcHashForState((this + 152), a2, a3);
  return PCSerializerWriteStream::popScope(a2);
}

void OZChannelCurve::writeBody(OZChannel *this, PCSerializerWriteStream *a2, int a3, BOOL a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  OZDynamicCurve::getKeypointHandleList(&this[1].var17, &v22);
  OZDynamicCurve::getKeypointHandleList(&this[3].var8, &__p);
  (*(*a2 + 16))(a2, 1);
  if (v23 != v22)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      (*(*a2 + 16))(a2, 123);
      OZDynamicCurve::getKeypointFlags(&this[1].var17, *(v22 + v9), &v18);
      OZDynamicCurve::getVertexChannel(&this[1].var17, *(v22 + v9), &v17);
      (*(*a2 + 144))(a2, 5, v10);
      (*(*a2 + 144))(a2, 7, *(v17 + 6));
      (*(*a2 + 144))(a2, 4, v18);
      v11 = v17 + 16;
      (*(*(v17 + 2) + 16))(v17 + 16, a2, 0);
      (*(*v11 + 24))(v11, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
      (*(*a2 + 24))(a2);
      v9 = (v10 + 1);
      v10 = v9;
    }

    while (v9 < (v23 - v22) >> 3);
  }

  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 2);
  if (v23 != v22)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      (*(*a2 + 16))(a2, 123);
      OZDynamicCurve::getKeypointFlags(&this[3].var8, *(__p + v12), &v18);
      OZDynamicCurve::getVertexChannel(&this[3].var8, *(__p + v12), &v17);
      (*(*a2 + 144))(a2, 5, v13);
      (*(*a2 + 144))(a2, 7, *(v17 + 6));
      (*(*a2 + 144))(a2, 4, v18);
      v14 = v17 + 16;
      (*(*(v17 + 2) + 16))(v17 + 16, a2, 0);
      (*(*v14 + 24))(v14, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
      (*(*a2 + 24))(a2);
      v12 = (v13 + 1);
      v13 = v12;
    }

    while (v12 < (v23 - v22) >> 3);
  }

  (*(*a2 + 24))(a2);
  v16 = 0;
  OZDynamicCurve::isClosedCurve(&this[1].var17, &v16);
  v15 = v16;
  (*(*a2 + 16))(a2, 8);
  (*(*a2 + 48))(a2, v15);
  (*(*a2 + 24))(a2);
  PCSerializerWriteStream::popScope(a2);
  OZChannel::writeBody(this, a2, a3);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_25FED161C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannelCurve::parseBegin(OZChannelCurve *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZChannelScope);
  OZChannel::parseBegin(this, a2);
  if (*(a2 + 26) >= 3u)
  {
    OZChannelFolder::removeAllDescendants((this + 152), 1);
    OZDynamicCurve::delAllKeypoints((this + 288));
    OZDynamicCurve::delAllKeypoints((this + 520));
  }

  return 1;
}

uint64_t OZChannelCurve::parseEnd(OZChannelCurve *this, PCSerializerReadStream *a2)
{
  OZChannel::parseEnd(this, a2);
  *(this + 396) = 0;
  OZChannelBase::setFlag((this + 152), 128, 0);
  (*(*this + 856))(this);
  return 1;
}

uint64_t OZChannelCurve::parseElement(OZChannel *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  *v16 = 0;
  v15 = 0;
  v14 = 0;
  v6 = *(a3 + 2);
  if (v6 <= 7)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      LOWORD(v6) = 256;
    }

    LOWORD(this[5].var4.var0) = v6;
    goto LABEL_11;
  }

  if (v6 == 123)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 5, &v16[1]);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 4, v16);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 7, &v15);
    LODWORD(v8) = v16[1];
    v9 = v8;
    if (LOBYTE(this[5].var4.var0) == 1)
    {
      OZDynamicCurve::setKeypoint(&this[1].var17, MEMORY[0x277CC08F0], v9, &this[5].var5);
    }

    OZDynamicCurve::setKeypoint(&this[3].var8, MEMORY[0x277CC08F0], v9, &this[5].var5);
  }

  if (v6 != 122)
  {
    if (v6 == 8)
    {
      (*(*a3 + 72))(a3, &v14);
      if (v14 == 1)
      {
        OZDynamicCurve::closeCurve(&this[1].var17);
        OZDynamicCurve::closeCurve(&this[3].var8);
      }
    }

    goto LABEL_11;
  }

  var5 = this[5].var5;
  if (!var5)
  {
LABEL_11:
    OZChannel::parseElement(this, a2, a3);
    return 1;
  }

  v13 = 0;
  v11 = 520;
  if (LOBYTE(this[5].var4.var0))
  {
    v11 = 288;
  }

  OZDynamicCurve::getVertexChannel((this + v11), var5, &v13);
  this[5].var5 = 0;
  if (v13)
  {
    v12 = (v13 + 16);
  }

  else
  {
    v12 = 0;
  }

  PCSerializerReadStream::pushHandler(a2, v12);
  return 1;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelCurve::createOZChannelCurveInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelCurve::_OZChannelCurveInfo)
  {
    operator new();
  }
}

void OZChannelCurveInfo::OZChannelCurveInfo(OZChannelCurveInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 0.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28724DD18;
  *(this + 10) = &unk_28724DD38;
}

void OZChannelCurve::createOZChannelCurveImpl(void)::{lambda(void)#1}::operator()()
{
  if (!OZChannelCurve::_OZChannelCurveImpl)
  {
    operator new();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZVertex2D>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::__split_buffer<double>::emplace_back<double>(void *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

void OZChannelDiscreteColor::OZChannelDiscreteColor(OZChannelDiscreteColor *this, PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  TXParagraphStyleFolder_Factory::createInstance(this, a2);
  PCURL::PCURL(&v13, @"Channel Discrete Color");
  Instance = OZChannelDiscreteColor_Factory::getInstance(v10);
  OZChannelEnum::OZChannelEnum(this, &v13, Instance, a2, a3, a4, a5, 0, 0);
  PCString::~PCString(&v13);
  *this = &unk_28724DD90;
  *(this + 2) = &unk_28724E100;
  *(this + 1) = OZChannelDiscreteColor_Factory::getInstance(v12);
}

void OZChannelDiscreteColor::OZChannelDiscreteColor(OZChannelDiscreteColor *this, double a2, PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  v11 = a2;
  TXParagraphStyleFolder_Factory::createInstance(this, a3);
  PCURL::PCURL(&v13, @"Channel Discrete Color");
  OZChannelEnum::OZChannelEnum(this, v11, &v13, a3, a4, a5, a6, 0, 0);
  PCString::~PCString(&v13);
  *this = &unk_28724DD90;
  *(this + 2) = &unk_28724E100;
  *(this + 1) = OZChannelDiscreteColor_Factory::getInstance(v12);
}

uint64_t OZChannelDiscreteColor::setDefaultColorIndex(OZChannel *this, unsigned int a2)
{
  OZChannel::setDefaultValue(this, a2);
  v3 = *(this->var0 + 36);

  return v3(this, 0);
}

CGColorSpace **OZChannelDiscreteColor::getPCColorForIndex@<X0>(OZChannelDiscreteColor *this@<X0>, PCColor *a2@<X8>)
{
  v3 = (&gColorTable + 24 * this);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  PCColorSpaceCache::sRGB(&v8);
  PCColor::PCColor(a2, v4, v5, v6, 1.0, &v8);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
}

void sub_25FED20F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZChannelDiscreteColor::~OZChannelDiscreteColor(PCString *this)
{
  OZChannelEnum::~OZChannelEnum(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelDiscreteColor::~OZChannelDiscreteColor(PCString *this)
{
  OZChannelEnum::~OZChannelEnum(this - 2);
}

{
  OZChannelEnum::~OZChannelEnum(this - 2);

  JUMPOUT(0x2666E9F00);
}

void OZChannelPercent::OZChannelPercent(OZChannelPercent *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, a7, a8);
  v11->var0 = &unk_28724E170;
  v11->var2 = &unk_28724E4D0;
  OZChannelPercentInfo = OZChannelPercent::createOZChannelPercentInfo(v11);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelPercent::_OZChannelPercentInfo;
    this->var17 = OZChannelPercent::_OZChannelPercentInfo;
  }

  this->var16 = var17;
  OZChannelPercent100Impl = OZChannelPercent::createOZChannelPercent100Impl(OZChannelPercentInfo);
  OZChannelPercent50Impl = OZChannelPercent::createOZChannelPercent50Impl(OZChannelPercent100Impl);
  OZChannelPercent::createOZChannelPercent0Impl(OZChannelPercent50Impl);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelPercent::_OZChannelPercent100Impl;
    this->var15 = OZChannelPercent::_OZChannelPercent100Impl;
  }

  this->var14 = var15;
}

uint64_t OZChannelPercent::createOZChannelPercentInfo(OZChannelPercent *this)
{
  if (atomic_load_explicit(&OZChannelPercent::createOZChannelPercentInfo(void)::_OZChannelPercentInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercent::createOZChannelPercentInfo(void)::_OZChannelPercentInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercentInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercent::_OZChannelPercentInfo;
}

uint64_t OZChannelPercent::createOZChannelPercent100Impl(OZChannelPercent *this)
{
  if (atomic_load_explicit(&OZChannelPercent::createOZChannelPercent100Impl(void)::_OZChannelPercent100Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercent::createOZChannelPercent100Impl(void)::_OZChannelPercent100Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent100Impl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercent::_OZChannelPercent100Impl;
}

uint64_t OZChannelPercent::createOZChannelPercent50Impl(OZChannelPercent *this)
{
  if (atomic_load_explicit(&OZChannelPercent::createOZChannelPercent50Impl(void)::_OZChannelPercent50Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercent::createOZChannelPercent50Impl(void)::_OZChannelPercent50Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent50Impl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercent::_OZChannelPercent50Impl;
}

uint64_t OZChannelPercent::createOZChannelPercent0Impl(OZChannelPercent *this)
{
  if (atomic_load_explicit(&OZChannelPercent::createOZChannelPercent0Impl(void)::_OZChannelPercent0Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelPercent::createOZChannelPercent0Impl(void)::_OZChannelPercent0Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent0Impl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelPercent::_OZChannelPercent0Impl;
}

void OZChannelPercent::OZChannelPercent(OZChannelPercent *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  Instance = OZChannelPercent_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_28724E170;
  this->var2 = &unk_28724E4D0;
  OZChannelPercentInfo = OZChannelPercent::createOZChannelPercentInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelPercent::_OZChannelPercentInfo;
    this->var17 = OZChannelPercent::_OZChannelPercentInfo;
  }

  this->var16 = var17;
  OZChannelPercent100Impl = OZChannelPercent::createOZChannelPercent100Impl(OZChannelPercentInfo);
  OZChannelPercent50Impl = OZChannelPercent::createOZChannelPercent50Impl(OZChannelPercent100Impl);
  OZChannelPercent::createOZChannelPercent0Impl(OZChannelPercent50Impl);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelPercent::_OZChannelPercent100Impl;
    this->var15 = OZChannelPercent::_OZChannelPercent100Impl;
  }

  this->var14 = var15;
}

void OZChannelPercent::OZChannelPercent(OZChannelPercent *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelPercent_Factory::getInstance(this);
  OZChannel::OZChannel(this, Instance, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_28724E170;
  this->var2 = &unk_28724E4D0;
  OZChannelPercentInfo = OZChannelPercent::createOZChannelPercentInfo(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelPercent::_OZChannelPercentInfo;
    this->var17 = OZChannelPercent::_OZChannelPercentInfo;
  }

  this->var16 = var17;
  OZChannelPercent100Impl = OZChannelPercent::createOZChannelPercent100Impl(OZChannelPercentInfo);
  OZChannelPercent50Impl = OZChannelPercent::createOZChannelPercent50Impl(OZChannelPercent100Impl);
  OZChannelPercent::createOZChannelPercent0Impl(OZChannelPercent50Impl);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    if (fabs(a2 + -1.0) >= 0.0000001)
    {
      if (fabs(a2) >= 0.0000001)
      {
        var15 = OZChannelPercent::_OZChannelPercent50Impl;
      }

      else
      {
        var15 = OZChannelPercent::_OZChannelPercent0Impl;
      }
    }

    else
    {
      var15 = OZChannelPercent::_OZChannelPercent100Impl;
    }

    this->var15 = var15;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void OZChannelPercent::OZChannelPercent(OZChannelPercent *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6);
  v9->var0 = &unk_28724E170;
  v9->var2 = &unk_28724E4D0;
  OZChannelPercentInfo = OZChannelPercent::createOZChannelPercentInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelPercent::_OZChannelPercentInfo;
    this->var17 = OZChannelPercent::_OZChannelPercentInfo;
  }

  this->var16 = var17;
  OZChannelPercent100Impl = OZChannelPercent::createOZChannelPercent100Impl(OZChannelPercentInfo);
  OZChannelPercent50Impl = OZChannelPercent::createOZChannelPercent50Impl(OZChannelPercent100Impl);
  OZChannelPercent::createOZChannelPercent0Impl(OZChannelPercent50Impl);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelPercent::_OZChannelPercent0Impl;
    this->var15 = OZChannelPercent::_OZChannelPercent0Impl;
  }

  this->var14 = var15;
}

void OZChannelPercent::OZChannelPercent(OZChannelPercent *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v3 = &unk_28724E170;
  v3[2] = &unk_28724E4D0;
}

void non-virtual thunk toOZChannelPercent::~OZChannelPercent(OZChannelPercent *this)
{
  OZChannel::~OZChannel(&this[-1].var17);
}

{
  OZChannel::~OZChannel(&this[-1].var17);

  JUMPOUT(0x2666E9F00);
}

void OZChannelPercent::~OZChannelPercent(OZChannelPercent *this)
{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercentInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPercent::_OZChannelPercentInfo)
  {
    operator new();
  }
}

void OZChannelPercentInfo::OZChannelPercentInfo(OZChannelPercentInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 0.01, 0.0001, 100.0, "%");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28724E540;
  *(this + 10) = &unk_28724E560;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent100Impl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPercent::_OZChannelPercent100Impl)
  {
    operator new();
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent50Impl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPercent::_OZChannelPercent50Impl)
  {
    operator new();
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelPercent::createOZChannelPercent0Impl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelPercent::_OZChannelPercent0Impl)
  {
    operator new();
  }
}

void OZChannelEnum::OZChannelEnum(OZChannel *this, const PCString *a2, OZFactory *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  v9 = a8;
  v15 = this;
  Instance = a9;
  this->var0 = &unk_28724E5B8;
  this->var2 = &unk_28724E928;
  if (!a8)
  {
    this = OZChannelEnum::OZChannelEnum_valueImpl::getInstance(this);
    v9 = this;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    Instance = OZChannelEnum::OZChannelEnum_valueInfo::getInstance(this);
    goto LABEL_3;
  }

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  OZChannel::OZChannel(v15, a3, a4, a5, a6, a7, v9, Instance);
  v15->var0 = &unk_28724E5B8;
  v15->var2 = &unk_28724E928;
  v15[1].var0 = 0;
  PCString::PCString(&v15[1].var1, a2);
  *&v15[1].var2 = 0u;
  LODWORD(v15[1].var8) = 0;
  *&v15[1].var4.var0 = 0u;
  *&v15[1].var6 = 0u;
  PCSharedCount::PCSharedCount(&v15[1].var9);
  v15[1].var10 = 0;
  v15[1].var11 = 0;
  v15[1].var12 = 0;
  (*(v15->var0 + 106))(v15, a2, 0);
  v15->var7 |= 0x10000uLL;
  (*(v15->var0 + 16))(v15);
}

void sub_25FED2DD4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 192);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelEnum::OZChannelEnum(OZChannelEnum *this, const PCString *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  *this = &unk_28724E5B8;
  *(this + 2) = &unk_28724E928;
  Instance = OZChannelEnum_Factory::getInstance(this);
  v16 = Instance;
  if (!a7)
  {
    Instance = OZChannelEnum::OZChannelEnum_valueImpl::getInstance(Instance);
    a7 = Instance;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    a8 = OZChannelEnum::OZChannelEnum_valueInfo::getInstance(Instance);
    goto LABEL_3;
  }

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  OZChannel::OZChannel(this, v16, a3, a4, a5, a6, a7, a8);
  *this = &unk_28724E5B8;
  *(this + 2) = &unk_28724E928;
  *(this + 19) = 0;
  PCString::PCString(this + 20, a2);
  *(this + 168) = 0u;
  *(this + 54) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  PCSharedCount::PCSharedCount(this + 28);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  (*(*this + 848))(this, a2, 0);
  *(this + 7) |= 0x10000uLL;
  (*(*this + 128))(this);
}

void sub_25FED2FD8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 192);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelEnum::OZChannelEnum(OZChannelEnum *this, unsigned int a2, const PCString *a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7, OZChannelImpl *a8, OZChannelInfo *a9)
{
  v15 = a9;
  *this = &unk_28724E5B8;
  *(this + 2) = &unk_28724E928;
  Instance = OZChannelEnum_Factory::getInstance(this);
  v17 = Instance;
  if (!a8)
  {
    Instance = OZChannelEnum::OZChannelEnum_valueImpl::getInstance(Instance);
    a8 = Instance;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = OZChannelEnum::OZChannelEnum_valueInfo::getInstance(Instance);
    goto LABEL_3;
  }

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  OZChannel::OZChannel(this, v17, a4, a5, a6, a7, a8, v15);
  *this = &unk_28724E5B8;
  *(this + 2) = &unk_28724E928;
  *(this + 19) = 0;
  PCString::PCString(this + 20, a3);
  *(this + 168) = 0u;
  *(this + 54) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  PCSharedCount::PCSharedCount(this + 28);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
  (*(*this + 848))(this, a3, 0);
  *(this + 7) |= 0x10000uLL;
  (*(*this + 128))(this);
}

{
  OZChannelEnum::OZChannelEnum(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_25FED3210(_Unwind_Exception *a1)
{
  v4 = *(v1 + 192);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v5;
    operator delete(v5);
  }

  PCString::~PCString((v1 + 160));
  OZChannel::~OZChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelEnum::OZChannelEnum(OZChannel *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  Instance = a6;
  v7 = a5;
  v11 = this;
  this->var0 = &unk_28724E5B8;
  this->var2 = &unk_28724E928;
  if (!a5)
  {
    this = OZChannelEnum::OZChannelEnum_valueImpl::getInstance(this);
    v7 = this;
    if (Instance)
    {
      goto LABEL_3;
    }

LABEL_5:
    Instance = OZChannelEnum::OZChannelEnum_valueInfo::getInstance(this);
    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  OZChannel::OZChannel(v11, a2, a3, a4, v7, Instance);
  v11->var0 = &unk_28724E5B8;
  v11->var2 = &unk_28724E928;
  v11[1].var0 = 0;
  PCSharedCount::PCSharedCount(&v11[1].var1);
  *&v11[1].var2 = 0u;
  LODWORD(v11[1].var8) = 0;
  *&v11[1].var4.var0 = 0u;
  *&v11[1].var6 = 0u;
  PCSharedCount::PCSharedCount(&v11[1].var9);
  v11[1].var10 = 0;
  v11[1].var11 = 0;
  v11[1].var12 = 0;
  (*(v11->var0 + 106))(v11, &v11[1].var1, 0);
  v11->var7 |= 0x10000uLL;
  (*(v11->var0 + 16))(v11);
}