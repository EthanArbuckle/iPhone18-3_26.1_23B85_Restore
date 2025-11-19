uint64_t OZFramingBehavior::targetSizeHasChanged(OZFramingBehavior *this)
{
  OZFramingBehavior::calcTargetSize(this, &v4);
  if (*&v4 == *(this + 637) && *(&v4 + 1) == *(this + 638) && *&v5 == *(this + 639) && *(&v5 + 1) == *(this + 640) && *&v6 == *(this + 641) && *(&v6 + 1) == *(this + 642))
  {
    return 0;
  }

  v2 = v5;
  *(this + 5096) = v4;
  *(this + 5112) = v2;
  *(this + 5128) = v6;
  return 1;
}

const void *OZFramingBehavior::getTargetTransform(uint64_t a1, double *a2, uint64_t a3)
{
  result = OZChanTransformNodeRef::getTransformNode((a1 + 864));
  if (result)
  {
    v6 = result;
    (*(*result + 1256))(result, a2, a3);
    if (v7)
    {
      v13 = 0.0;
      v14 = 0.0;
      __asm { FMOV            V0.2D, #-1.0 }

      v15 = _Q0;
      (*(*v7 + 1488))(v7, &v13, a3);
      PCMatrix44Tmpl<double>::rightTranslate(a2, v13 + *&v15 * 0.5, v14 + *(&v15 + 1) * 0.5, 0.0);
    }

    return PCMatrix44Tmpl<double>::orthoNormalize(a2);
  }

  return result;
}

const void *OZFramingBehavior::calculateFraming(OZFramingBehavior *this, const CMTime *a2, double *a3, double *a4, double *a5)
{
  *a3 = 0.0;
  *a4 = 0.0;
  *a5 = 0.0;
  result = OZChanTransformNodeRef::getTransformNode((this + 864));
  if (result && *(this + 605))
  {
    result = OZChannel::getValueAsInt((this + 1024), MEMORY[0x277CC08F0], 0.0);
    if (*(this + 605))
    {
      OZRenderState::OZRenderState(&v10);
      *&v10.var0.var0 = *&a2->value;
      v10.var0.var3 = a2->epoch;
      v8 = *(this + 605);
      v9 = *a2;
      OZCamera::cameraAtTime(v8, &v9);
    }
  }

  return result;
}

void sub_26025DEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

OZScene *OZFramingBehavior::calculateFramingOffset(OZFramingBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    memset(&v10, 0, sizeof(v10));
    OZScene::getCurrentTime(result, &v10);
    result = OZChannel::getValueAsInt((this + 1536), &v10, 0.0);
    if (result >= 3)
    {
      if (result != 3)
      {
        return result;
      }

      v5 = (this + 1792);
      v6 = 0.0;
    }

    else
    {
      v3 = result;
      v8 = 0.0;
      v9 = 0.0;
      v7 = 0;
      v4 = &v9;
      OZFramingBehavior::calculateFraming(this, &v10, &v9, &v8, &v7);
      if (v3)
      {
        if (v3 == 2)
        {
          v4 = &v7;
        }

        else
        {
          v4 = &v8;
        }
      }

      v6 = *v4;
      v5 = (this + 1792);
    }

    return OZChannelPosition3D::setPosition(v5, &v10, 0.0, 0.0, v6);
  }

  return result;
}

uint64_t OZFramingBehavior::checkFit(OZFramingBehavior *this, uint64_t a2)
{
  v4 = (*(*this + 336))(this);
  if (v4)
  {
    memset(&v19, 0, sizeof(v19));
    OZScene::getCurrentTime(v4, &v19);
    OZChannel::getValueAsDouble((this + 1928), &v19, 0.0);
    v6 = v5;
    OZChannel::getValueAsDouble((this + 2080), &v19, 0.0);
    v8 = v7;
    OZChannel::getValueAsDouble((this + 2528), &v19, 0.0);
    if (v6 != 0.0 || v8 != 0.0)
    {
      return 4;
    }

    v10 = v9;
    v17 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
    OZFramingBehavior::calculateFraming(this, &v19, &v18, &v17, &v16);
    v15[2] = v10 == v16;
    v15[0] = v10 == v18;
    v15[1] = v10 == v17;
    v15[3] = v10 == 0.0;
    v15[4] = 1;
    v11 = v15[a2];
    v12 = v11 | (v10 == v16) | (v10 == v18);
    if (!(v11 & 1 | (v10 == v16) | (v10 == v18)) && v10 != v17)
    {
      if (v10 == 0.0)
      {
        return 3;
      }

      return 4;
    }

    if (v15[a2])
    {
      v13 = a2;
    }

    else
    {
      v13 = 2 * (v10 == v16);
    }

    if (v12)
    {
      return v13;
    }

    else
    {
      return 1;
    }
  }

  return a2;
}

void OZChannelPosition3D::getPosition(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  OZChannel::getValueAsDouble((a1 + 136), a2, a4);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 288), a2, a4);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 736), a2, a4);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v12;
}

uint64_t OZFramingBehavior::performDragOperation(OZFramingBehavior *this, OZFactoryBase *a2, OZChannelBase *a3, unsigned int a4, int a5, int a6, unsigned int a7, const CMTime *a8)
{
  v9 = OZBehavior::performDragOperation(this, a2, a3, a4, a5, a6, a7, a8);
  OZFramingBehavior::calcTargetSize(this, v12);
  v10 = v12[1];
  *(this + 5096) = v12[0];
  *(this + 5112) = v10;
  *(this + 5128) = v12[2];
  OZFramingBehavior::calculateFramingOffset(this);
  return v9;
}

void OZFramingBehavior::notify(OZFramingBehavior *this, __int16 a2)
{
  v4 = (*(*this + 336))(this);
  if ((a2 & 0xC) != 0)
  {
    v5 = v4;
    v6 = *(v4 + 198);
    memset(&v19, 0, sizeof(v19));
    OZScene::getCurrentTime(v4, &v19);
    v7 = *(this + 605);
    if (v7)
    {
      v8 = *(v6 + 168);
      if (v8)
      {
        if (OZNotificationManager::wasChannelModified(v8, (v7 + 6808)))
        {
          v9 = *(v5 + 188);
          if (v9)
          {
            OZChannelBase::setRangeName(v9, 1);
          }

          OZFramingBehavior::calculateFramingOffset(this);
        }
      }
    }

    if (OZFramingBehavior::targetSizeHasChanged(this))
    {
      goto LABEL_13;
    }

    v10 = *(v6 + 168);
    if (!v10)
    {
      goto LABEL_16;
    }

    if (OZNotificationManager::wasChannelModified(v10, (this + 1536)))
    {
      goto LABEL_13;
    }

    v11 = *(v6 + 168);
    if (!v11)
    {
      goto LABEL_16;
    }

    if (OZNotificationManager::wasChannelModified(v11, (this + 864)))
    {
LABEL_13:
      v12 = *(v5 + 188);
      if (v12)
      {
        OZChannelBase::setRangeName(v12, 1);
      }

      OZFramingBehavior::calculateFramingOffset(this);
    }

    else
    {
      v13 = *(v6 + 168);
      if (v13)
      {
        if (OZNotificationManager::wasChannelModified(v13, (this + 1928)) || (v14 = *(v6 + 168)) != 0 && (OZNotificationManager::wasChannelModified(v14, (this + 2080)) || (v15 = *(v6 + 168)) != 0 && OZNotificationManager::wasChannelModified(v15, (this + 2528))))
        {
          v16 = *(v5 + 188);
          if (v16)
          {
            OZChannelBase::setRangeName(v16, 1);
          }

          ValueAsInt = OZChannel::getValueAsInt((this + 1536), &v19, 0.0);
          v18 = OZFramingBehavior::checkFit(this, ValueAsInt);
          OZChannel::setValue((this + 1536), &v19, v18, 0);
        }
      }
    }
  }

LABEL_16:
  if ((a2 & 0x981C) != 0)
  {
    PCMutex::lock((this + 5024));
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 5000, *(this + 626));
    *(this + 625) = this + 5008;
    *(this + 313) = 0u;
    PCMutex::unlock((this + 5024));
  }

  OZCameraBehavior::notify(this, a2);
}

BOOL OZFramingBehavior::velocityCached(uint64_t a1, CMTime *a2, uint64_t a3)
{
  PCMutex::lock((a1 + 5024));
  v6 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::find<CMTime>(a1 + 5000, a2);
  if (a1 + 5008 != v6)
  {
    v7 = *(v6 + 56);
    *(a3 + 16) = *(v6 + 72);
    *a3 = v7;
  }

  v8 = a1 + 5008 != v6;
  PCMutex::unlock((a1 + 5024));
  return v8;
}

uint64_t OZFramingBehavior::cacheVelocity(uint64_t a1, CMTime *a2, __int128 *a3)
{
  PCMutex::lock((a1 + 5024));
  v6 = std::__tree<std::__value_type<CMTime,PCVector3<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCVector3<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCVector3<double>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(a1 + 5000, a2);
  v7 = *a3;
  *(v6 + 72) = *(a3 + 2);
  *(v6 + 56) = v7;
  return PCMutex::unlock((a1 + 5024));
}

uint64_t OZFramingBehavior::accumTargetVelocity@<X0>(OZFramingBehavior *this@<X0>, Float64 a2@<D0>, double a3@<D1>, const CMTime *a4@<X1>, OZTransformNode *a5@<X2>, double *a6@<X8>)
{
  (*(*this + 608))(&v55);
  v53 = 0uLL;
  v54 = 0;
  v12 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v12 + 336), &v53);
  v52 = v56;
  v51 = v55;
  memset(&v50, 0, sizeof(v50));
  *&v43.var0.var0 = v57;
  v43.var0.var3 = v58;
  *&v34.value = v53;
  v34.epoch = v54;
  PC_CMTimeSaferSubtract(&v43, &v34, &v50);
  memset(&v49, 0, sizeof(v49));
  operator*(&v50, &time2, a2);
  v43.var0 = time2;
  *&v34.value = v53;
  v34.epoch = v54;
  PC_CMTimeFloorToSampleDuration(&v43, &v34, &time1);
  *&v43.var0.var0 = v51;
  v43.var0.var3 = v52;
  v34 = time1;
  PC_CMTimeSaferAdd(&v43, &v34, &v49);
  v48 = *a4;
  memset(&v47, 0, sizeof(v47));
  *&v43.var0.var0 = v51;
  v43.var0.var3 = v52;
  v34 = v50;
  PC_CMTimeSaferAdd(&v43, &v34, &v47);
  v45 = 0uLL;
  v46 = 0.0;
  memset(v44, 0, sizeof(v44));
  a6[1] = 0.0;
  a6[2] = 0.0;
  *a6 = 0.0;
  OZRenderState::OZRenderState(&v43);
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v34.value = 0x3FF0000000000000;
  *&v34.timescale = 0u;
  v35 = 0u;
  v37 = 0u;
  v38 = 0u;
  v40 = 0u;
  v41 = 0u;
  time1 = v49;
  *&time2.value = v53;
  time2.epoch = v54;
  PC_CMTimeSaferSubtract(&time1, &time2, &v59);
  v43.var0 = v59;
  (*(*a5 + 1256))(a5, &v34, &v43);
  PCMatrix44Tmpl<double>::transform<double>(&v34.value, v44, v45.f64);
  v32 = 0uLL;
  v33 = 0.0;
  v31 = v49;
  time1 = v49;
  time2 = v48;
  result = CMTimeCompare(&time1, &time2);
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (result <= 0)
  {
    if (a3 * 0.1 <= 10.0)
    {
      v17 = a3 * 0.1;
    }

    else
    {
      v17 = 10.0;
    }

    v18 = 1.0 / v17;
    if (a3 * 0.1 >= 0.1)
    {
      v19 = v18;
    }

    else
    {
      v19 = 10.0;
    }

    v20 = v19;
    do
    {
      if (OZFramingBehavior::velocityCached(this, &v31, &v32))
      {
        v45 = vaddq_f64(v32, v45);
        v21 = v33;
        v46 = v33 + v46;
        v22 = v32.f64[1];
        v29 = v32.f64[0];
      }

      else
      {
        v24 = v45.f64[1];
        v23 = v45.f64[0];
        v25 = v46;
        v43.var0 = v31;
        (*(*a5 + 1256))(a5, &v34, &v43);
        PCMatrix44Tmpl<double>::transform<double>(&v34.value, v44, v45.f64);
        v26 = v45.f64[0] - v23;
        v22 = v45.f64[1] - v24;
        v21 = v46 - v25;
        v29 = v26;
        v32.f64[0] = v26;
        v32.f64[1] = v22;
        v33 = v46 - v25;
        OZFramingBehavior::cacheVelocity(this, &v31, &v32);
      }

      time1 = v31;
      time2 = v49;
      PC_CMTimeSaferSubtract(&time1, &time2, &v59);
      time1 = v47;
      time2 = v49;
      PC_CMTimeSaferSubtract(&time1, &time2, v30);
      operator/(&v59.var0, v30, &time1);
      Seconds = CMTimeGetSeconds(&time1);
      v28 = 1.0 - powf(Seconds, v20);
      v16 = v29 * v28 + v16;
      v15 = v28 * v22 + v15;
      v14 = v28 * v21 + v14;
      time2 = v31;
      *&v59.var0 = v53;
      v59.var3 = v54;
      PC_CMTimeSaferAdd(&time2, &v59, &time1);
      v31 = time1;
      time2 = v48;
      result = CMTimeCompare(&time1, &time2);
    }

    while (result < 1);
  }

  *a6 = v16;
  a6[1] = v15;
  a6[2] = v14;
  return result;
}

double OZFramingBehavior::solveNode(OZFramingBehavior *this, uint64_t a2, const CMTime *a3, double a4, double a5)
{
  if (!(*(*this + 768))(this, a4))
  {
    return a5;
  }

  TransformNode = OZChanTransformNodeRef::getTransformNode((this + 864));
  if (!TransformNode || !*(this + 606))
  {
    return a5;
  }

  v10 = TransformNode;
  if (*(this + 605))
  {
    v11 = *(TransformNode + 120);
    if (v11)
    {
      if (v12)
      {
        do
        {
          v13 = v12;
          v14 = v12[120];
          if (!v14)
          {
            break;
          }
        }

        while (v12);
        if (!(*(*v13 + 1640))(v13))
        {
          return a5;
        }
      }
    }
  }

  memset(&v176, 0, sizeof(v176));
  (*(**(*(this + 47) + 32) + 336))(&v176);
  v174 = 0uLL;
  v175 = 0;
  v15 = (*(*this + 336))(this);
  FrameDuration = OZSceneSettings::getFrameDuration((v15 + 336), &v174);
  (*(*this + 608))(&v170, this, FrameDuration);
  v168 = v170;
  v169 = v171;
  memset(v167, 0, sizeof(v167));
  OZBehavior::getFrameDuration(this, v137);
  *&time1.var0.var0 = v170;
  time1.var0.var3 = v171;
  *&time2.var0.var0 = v172;
  time2.var0.var3 = v173;
  PC_CMTimeSaferAdd(&time1, &time2, &v133);
  *&time1.var0.var0 = *&v133.var0.var0;
  time1.var0.var3 = v133.var0.var3;
  *&time2.var0.var0 = *v137;
  time2.var0.var3 = *&v137[16];
  PC_CMTimeSaferSubtract(&time1, &time2, v167);
  memset(&v166, 0, sizeof(v166));
  *&time1.var0.var0 = v172;
  time1.var0.var3 = v173;
  *&time2.var0.var0 = v174;
  time2.var0.var3 = v175;
  PC_CMTimeSaferSubtract(&time1, &time2, &v166);
  time1.var0 = v176;
  *&time2.var0.var0 = v168;
  time2.var0.var3 = v169;
  PC_CMTimeSaferSubtract(&time1, &time2, &v133);
  *&time1.var0.var0 = v174;
  time1.var0.var3 = v175;
  time2.var0 = v166;
  v17 = CMTimeCompare(&time1, &time2) >= 0 ? &v174 : &v166;
  *&time2.var0.var0 = *v17;
  time2.var0.var3 = v17[1].n128_i64[0];
  operator/(&v133.var0.var0, &time2, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  OZChannel::getValueAsDouble((this + 3976), &v176, 0.0);
  v20 = v19;
  OZChannel::getValueAsDouble((this + 4128), &v176, 0.0);
  if (Seconds < 0.0)
  {
    return a5;
  }

  v22 = v21;
  if (Seconds == 0.0 && v20 > 0.0 && v21 > 0.0)
  {
    return a5;
  }

  v23 = Seconds <= 1.0;
  if (Seconds <= 1.0)
  {
    v24 = Seconds;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = 0.0;
  if (!v23)
  {
    *&time1.var0.var0 = v168;
    time1.var0.var3 = v169;
    time2.var0 = v166;
    PC_CMTimeSaferAdd(&time1, &time2, &v133);
    v25 = (*(*this + 776))(this, a2, &v133, a5);
  }

  v165[1] = 0xBFF0000000000000;
  v165[0] = &unk_2872BEEB8;
  if (!OZValueCache<OZFramingCacheItem>::find(this + 4856, v165, v24))
  {
    v27 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((this + 3720), MEMORY[0x277CC08F0], 0.0);
    v29 = OZChannel::getValueAsInt((this + 4280), v27, 0.0);
    v30 = v29;
    if (ValueAsInt)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    OZChannel::getValueAsDouble((this + 4536), &v176, 0.0);
    v33 = v32;
    OZChannel::getValueAsDouble((this + 4688), &v176, 0.0);
    v103 = v34;
    if (v20 >= v22)
    {
      v35 = v20;
    }

    else
    {
      v35 = v22;
    }

    v36 = 1.0;
    if (v33 <= 1.0)
    {
      v37 = v33;
    }

    else
    {
      v37 = 1.0;
    }

    if (v33 >= v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    v39 = 1.0;
    if (fabs(v20) >= 0.0000001)
    {
      v40 = 1.0;
      if (v24 / v20 <= 1.0)
      {
        v40 = v24 / v20;
      }

      if (v24 / v20 >= 0.0)
      {
        v39 = v40;
      }

      else
      {
        v39 = 0.0;
      }
    }

    v104 = v38;
    v102 = OZCameraBehavior::calcEaseInEaseOut(v30, v39);
    if (fabs(v22) >= 0.0000001)
    {
      v41 = 1.0;
      if (v24 / v22 <= 1.0)
      {
        v41 = v24 / v22;
      }

      if (v24 / v22 >= 0.0)
      {
        v36 = v41;
      }

      else
      {
        v36 = 0.0;
      }
    }

    v42 = OZCameraBehavior::calcEaseInEaseOut(v31, v36);
    std::vector<double>::vector[abi:ne200100](__p, 6uLL);
    (*(*this + 744))(this, a3, __p);
    v43 = *__p[0];
    v44 = *(__p[0] + 1);
    v107 = *(__p[0] + 2);
    v45 = *(__p[0] + 4);
    v46 = *(__p[0] + 5);
    v163[0] = *(__p[0] + 3);
    v163[1] = v45;
    v163[2] = v46;
    v160 = 0x3FF0000000000000;
    v161 = 0uLL;
    v162 = 0;
    PCQuat<double>::setEulerAngles(&v160, 4, v163[0], v45, v46);
    memset(&v159, 0, sizeof(v159));
    if (v24 == 1.0)
    {
      *&time1.var0.var0 = v168;
      time1.var0.var3 = v169;
      time2.var0 = v166;
      PC_CMTimeSaferAdd(&time1, &time2, &v159);
    }

    else
    {
      v159 = v176;
    }

    OZRenderState::OZRenderState(&time1);
    v47 = v167;
    if (!ValueAsInt)
    {
      v47 = &v159;
    }

    *&time1.var0.var0 = *&v47->value;
    time1.var0.var3 = v47->epoch;
    time1.var8 = 0;
    OZRenderState::OZRenderState(&time2);
    time2.var0 = v176;
    time2.var8 = 0;
    v109 = (*(**(this + 606) + 1328))(*(this + 606));
    v155 = 0;
    PCSharedCount::PCSharedCount(&v156);
    v48 = *(this + 605);
    if (v48)
    {
      *&v133.var0.var0 = *&time2.var0.var0;
      v133.var0.var3 = time2.var0.var3;
      OZCamera::cameraAtTime(v48, &v133);
    }

    v101 = ValueAsInt;
    v50 = *(this + 606);
    v105 = v44;
    if (v50)
    {
    }

    else
    {
      v51 = 0;
    }

    v106 = v43;
    v153 = xmmword_260342700;
    v154 = 0.0;
    v52 = 0.0;
    v53 = OZChannel::getValueAsInt((this + 1024), MEMORY[0x277CC08F0], 0.0);
    v54 = v53;
    v55 = 1.0;
    if (v53 > 2)
    {
      if (v53 == 3)
      {
        v153 = 0uLL;
        v154 = 1.0;
        v108 = xmmword_26034D970;
        v55 = 0.0;
        v52 = 1.0;
      }

      else
      {
        if (v53 == 4)
        {
          v108 = 0uLL;
          v56 = 1.0;
          goto LABEL_86;
        }

        v108 = 0uLL;
        if (v53 == 5)
        {
          v56 = -1.0;
          goto LABEL_86;
        }
      }
    }

    else
    {
      if (v53)
      {
        if (v53 != 1)
        {
          v108 = 0u;
          v56 = 0.0;
          if (v53 == 2)
          {
            v153 = 0uLL;
            v154 = -1.0;
            v55 = 0.0;
            v52 = -1.0;
            v108 = xmmword_260342700;
          }

LABEL_86:
          if (v49)
          {
            v58 = v51;
          }

          else
          {
            v58 = 0;
          }

          if (v58)
          {
            if (v53 == 2)
            {
              v52 = 1.0;
            }

            else
            {
              if (v53 != 3)
              {
                goto LABEL_95;
              }

              v52 = -1.0;
            }

            v153 = 0uLL;
            v55 = 0.0;
            v154 = v52;
          }

LABEL_95:
          v59 = 0.0;
          v60 = OZChannel::getValueAsInt((this + 1280), MEMORY[0x277CC08F0], 0.0);
          v61 = v60;
          if (v60 > 6)
          {
            if (v60 <= 9)
            {
              if (v60 != 7)
              {
                if (v60 != 8)
                {
LABEL_104:
                  v153 = xmmword_260342700;
                  v154 = 0.0;
                  v55 = 1.0;
LABEL_114:
                  v52 = 0.0;
                  goto LABEL_118;
                }

                goto LABEL_115;
              }

              goto LABEL_112;
            }

            if (v60 != 10)
            {
              if (v60 != 11)
              {
                if (v60 != 12)
                {
LABEL_118:
                  if (v155 && (*(*v155 + 632))(v155) == 1)
                  {
                    memset(v137, 0, sizeof(v137));
                    v133.var7.var0[1][2] = 1.0;
                    v133.var7.var0[0][1] = 1.0;
                    v133.var3 = 1.0;
                    v133.var0.var0 = 0x3FF0000000000000;
                    memset(&v133.var0.var1, 0, 32);
                    memset(&v133.var4, 0, 32);
                    memset(&v133.var7.var0[0][2], 0, 32);
                    PCMatrix44Tmpl<double>::leftRotate(&v133.var0.var0, &v160);
                    v62 = 1.0 / v109;
                    if (1.0 / v109 != 1.0)
                    {
                      *&v133.var0.var0 = vmulq_n_f64(*&v133.var0.var0, v62);
                      *&v133.var0.var3 = vmulq_n_f64(*&v133.var0.var3, v62);
                    }

                    PCMatrix44Tmpl<double>::transform<double>(&v133.var0.var0, v137, v137);
                    v105 = v105 + *&v137[8];
                    v106 = v106 + *v137;
                    v107 = v107 + *&v137[16];
                  }

                  v151 = 0uLL;
                  v152 = 0.0;
                  v149 = 0.0;
                  v148 = 0.0;
                  v150 = 0.0;
                  OZChannelPosition3D::getPosition(this + 1792, &v176, &v148, 0.0);
                  if (v54 <= 2)
                  {
                    if (v54)
                    {
                      if (v54 != 1)
                      {
                        if (v54 == 2)
                        {
                          v63 = v148;
                          v64 = -v149;
LABEL_134:
                          v151.f64[0] = v63;
                          v65 = 0.0;
LABEL_139:
                          v151.f64[1] = v65;
                          v152 = v64;
                        }

LABEL_140:
                        if (v49)
                        {
                          *&v133.var0.var0 = *&time1.var0.var0;
                          v133.var0.var3 = time1.var0.var3;
                          OZCamera::cameraAtTime(v49, &v133);
                        }

                        v100 = v42;
                        v67 = v150 + 0.0;
                        if (fabs(v150 + 0.0) < 0.0000001)
                        {
                          v67 = -1.0;
                        }

                        v146 = vaddq_f64(v151, vmulq_n_f64(v108, v67));
                        v147 = v152 + v56 * v67;
                        v145 = 0x3FF0000000000000;
                        v142 = 1.0;
                        v139 = 1.0;
                        *v137 = 0x3FF0000000000000;
                        *&v137[8] = 0u;
                        v138 = 0u;
                        v140 = 0u;
                        v141 = 0u;
                        v143 = 0u;
                        v144 = 0u;
                        OZFramingBehavior::getTargetTransform(this, v137, &time1);
                        if (fabs(v104 + -1.0) < 0.0000001 || v24 < v104)
                        {
                          PCMatrix44Tmpl<double>::transform<double>(v137, v151.f64, v151.f64);
                          PCMatrix44Tmpl<double>::transform<double>(v137, v146.f64, v146.f64);
                        }

                        else
                        {
                          memset(v125, 0, sizeof(v125));
                          operator*(&v166, &v120, v104);
                          v133.var0 = v120;
                          *v127 = v174;
                          *&v127[16] = v175;
                          PC_CMTimeFloorToSampleDuration(&v133, v127, v110);
                          *&v133.var0.var0 = v168;
                          v133.var0.var3 = v169;
                          *v127 = *v110;
                          *&v127[16] = *&v110[16];
                          PC_CMTimeSaferAdd(&v133, v127, v125);
                          memset(&v120, 0, sizeof(v120));
                          *&v133.var0.var0 = v168;
                          v133.var0.var3 = v169;
                          *v127 = v166;
                          PC_CMTimeSaferAdd(&v133, v127, &v120);
                          v133.var0 = v176;
                          *v127 = v120;
                          v68 = CMTimeCompare(&v133, v127);
                          v69 = &v120;
                          if (v68 < 0)
                          {
                            v69 = &v176;
                          }

                          v136 = *v69;
                          OZFramingBehavior::accumTargetVelocity(this, v104, v103, &v136, v10, v134.f64);
                          OZRenderState::OZRenderState(&v133, &time1);
                          *v127 = *v125;
                          *&v127[16] = *&v125[16];
                          *v110 = v174;
                          *&v110[16] = v175;
                          PC_CMTimeSaferSubtract(v127, v110, &v131);
                          *&v133.var0.var0 = v131;
                          v133.var0.var3 = epoch;
                          *&v130[40] = 0x3FF0000000000000;
                          *v130 = 0x3FF0000000000000;
                          *&v127[40] = 0x3FF0000000000000;
                          *v127 = 0x3FF0000000000000;
                          memset(&v127[8], 0, 32);
                          v128 = 0u;
                          v129 = 0u;
                          memset(&v130[8], 0, 32);
                          OZFramingBehavior::getTargetTransform(this, v127, &v133);
                          PCMatrix44Tmpl<double>::transform<double>(v127, v151.f64, v151.f64);
                          PCMatrix44Tmpl<double>::transform<double>(v127, v146.f64, v146.f64);
                          v151 = vaddq_f64(v134, v151);
                          v152 = v135 + v152;
                          v146 = vaddq_f64(v134, v146);
                          v147 = v135 + v147;
                        }

                        if (v61 <= 6)
                        {
                          v70 = v59 * *(&v138 + 1);
                          v71 = v59 * *&v141;
                          v59 = v59 * *v137 + v55 * *&v137[8] + v52 * *&v137[16];
                          v72 = v70 + v55 * v139;
                          v73 = v55 * *(&v141 + 1);
                          v55 = v72 + v52 * *&v140;
                          *&v153 = v59;
                          *(&v153 + 1) = v55;
                          v52 = v71 + v73 + v52 * v142;
                          v154 = v52;
                        }

                        v133.var7.var0[1][2] = 1.0;
                        v133.var7.var0[0][1] = 1.0;
                        v133.var3 = 1.0;
                        v133.var0.var0 = 0x3FF0000000000000;
                        memset(&v133.var0.var1, 0, 32);
                        memset(&v133.var4, 0, 32);
                        memset(&v133.var7.var0[0][2], 0, 32);
                        v74 = *(*(this + 606) + 960);
                        {
                          (*(*v75 + 1256))(v75, &v133, &time2);
                        }

                        else
                        {
                          *&v133.var0.var0 = v109;
                        }

                        v129 = *&v133.var6;
                        *v130 = *&v133.var7.var0[0][1];
                        *&v130[16] = *&v133.var7.var0[0][3];
                        *&v130[32] = *&v133.var7.var0[1][1];
                        *v127 = *&v133.var0.var0;
                        *&v127[16] = *&v133.var0.var3;
                        *&v127[32] = *&v133.var2;
                        v128 = *&v133.var4;
                        if (PCMatrix44Tmpl<double>::invert(v127, v127, 0.0))
                        {
                          v76 = &v146;
                          PCMatrix44Tmpl<double>::transform<double>(v127, v146.f64, v146.f64);
                          PCMatrix44Tmpl<double>::transform<double>(v127, v151.f64, v151.f64);
                          *&v153 = v59 * *v127 + v55 * *&v127[8] + v52 * *&v127[16];
                          *(&v153 + 1) = v59 * *&v127[32] + v55 * *&v127[40] + v52 * *&v128;
                          v154 = v59 * *&v129 + v55 * *(&v129 + 1) + v52 * *v130;
                          OZChannel::getValueAsDouble((this + 2680), &v176, 0.0);
                          v78 = v77;
                          *&v79 = v147;
                          if (v102 == 1.0)
                          {
                            v80 = v147 + 3.0e-12;
                          }

                          else
                          {
                            v80 = v107 + v102 * (v147 - v107);
                          }

                          v81 = v146.f64[1];
                          v82 = v102 * (v146.f64[1] - v105);
                          v83 = v106 + v102 * (v146.f64[0] - v106);
                          v84 = v105 + v82;
                          *&v136.value = v83;
                          v134 = 0uLL;
                          v85 = -1.0;
                          if (v51)
                          {
                            v85 = 1.0;
                          }

                          v135 = v85;
                          if (!v101)
                          {
                            v76 = &v136;
                            v81 = v105 + v82;
                          }

                          *&v131 = v76->value;
                          *(&v131 + 1) = v81;
                          if (!v101)
                          {
                            *&v79 = v80;
                          }

                          epoch = v79;
                          calcRotation(&v131, v151.f64, &v153, v134.f64, v125, v109);
                          v122 = 0.0;
                          v123 = 0.0;
                          v124 = 0.0;
                          OZChannelPosition3D::getPosition(this + 2832, &v176, &v122, 0.0);
                          v87.i64[0] = 0x3EE4F8B588E368F1;
                          if (v78 != 0.0)
                          {
                            *v87.i64 = v78;
                          }

                          if (v102 <= *v87.i64)
                          {
                            v91 = v102 / *v87.i64;
                            *v86.i64 = *v87.i64 * 3.0 * (v102 / *v87.i64) + v91 * v91 * ((*v87.i64 - *v87.i64) * 3.0 - *v87.i64 * 3.0) + v91 * (v91 * v91) * (*v87.i64 - *v87.i64 * 3.0 - ((*v87.i64 - *v87.i64) * 3.0 - *v87.i64 * 3.0)) + 0.0;
                            v90 = *v86.i64 / *v87.i64;
                          }

                          else
                          {
                            v88 = (v102 - *v87.i64) / (1.0 - *v87.i64);
                            v89 = (*v87.i64 - *v87.i64) * 3.0;
                            *v86.i64 = *v87.i64 + v89 * v88 + v88 * v88 * (v89 - v89) + v88 * (v88 * v88) * (1.0 - *v87.i64 - v89 - (v89 - v89));
                            *v87.i64 = (*v86.i64 - *v87.i64) / (1.0 - *v87.i64);
                            v90 = 1.0 - *v87.i64;
                          }

                          PCQuat<double>::transform<double>(v125, &v122, v87, v86);
                          v92 = v90 * v124;
                          v93 = v83 + v90 * v122;
                          v94 = v84 + v90 * v123;
                          *&v136.value = v93;
                          *&v136.timescale = v94;
                          v95 = v92 + v80;
                          *&v136.epoch = v95;
                          v131 = *&v76->value;
                          epoch = v76->epoch;
                          calcRotation(&v131, v151.f64, &v153, v134.f64, v110, v109);
                          *v125 = *v110;
                          *&v125[8] = *&v110[8];
                          v126 = *&v110[24];
                          v120 = *v110;
                          v121 = *&v110[24];
                          shortest_slerp(&v160, &v120, v110, v100);
                          v160 = *v110;
                          v161 = *&v110[8];
                          v162 = *&v110[24];
                          memset(&v120, 0, sizeof(v120));
                          EulerAngles = PCQuat<double>::getEulerAngles(&v160, &v120, &v120.var1, &v120.var3, 4);
                          if (v155 && (*(*v155 + 632))(v155, EulerAngles) == 1)
                          {
                            v117 = 0.0;
                            v118 = 0.0;
                            v119 = 0.0;
                            v116 = 0x3FF0000000000000;
                            v113 = 0x3FF0000000000000;
                            v111.var0 = 0x3FF0000000000000;
                            *v110 = 0x3FF0000000000000;
                            memset(&v110[8], 0, 32);
                            *&v111.var1 = 0u;
                            v112 = 0u;
                            v114 = 0u;
                            v115 = 0u;
                            PCMatrix44Tmpl<double>::leftRotate(v110, &v160);
                            v97 = 1.0 / v109;
                            if (1.0 / v109 != 1.0)
                            {
                              *v110 = vmulq_n_f64(*v110, v97);
                              *&v110[16] = vmulq_n_f64(*&v110[16], v97);
                            }

                            PCMatrix44Tmpl<double>::transform<double>(v110, &v117, &v117);
                            v93 = v93 - v117;
                            v94 = v94 - v118;
                            v95 = v95 - v119;
                          }

                          if ((a2 - 3) <= 2)
                          {
                            for (i = 0; i != 3; ++i)
                            {
                              *(&v120.var0 + i * 8) = *(&v120.var0 + i * 8) + vcvtmd_s64_f64((v163[i] - *(&v120.var0 + i * 8)) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
                            }
                          }

                          *&v110[8] = v24;
                          *&v110[16] = v93;
                          *v110 = &unk_2872BEEB8;
                          *&v110[24] = v94;
                          *&v110[32] = v95;
                          v111 = v120;
                          OZValueCache<OZFramingCacheItem>::add(this + 4856, v110);
                        }

                        PCSharedCount::~PCSharedCount(&v156);
                        if (__p[0])
                        {
                          __p[1] = __p[0];
                          operator delete(__p[0]);
                        }

                        return a5;
                      }

                      v65 = v149;
                      v64 = v148;
                    }

                    else
                    {
                      v65 = v149;
                      v64 = -v148;
                    }

                    v151.f64[0] = 0.0;
                    goto LABEL_139;
                  }

                  switch(v54)
                  {
                    case 3:
                      v63 = v148;
                      v64 = v149;
                      goto LABEL_134;
                    case 4:
                      v66 = v148;
                      v65 = v149;
                      break;
                    case 5:
                      v65 = v149;
                      v66 = -v148;
                      break;
                    default:
                      goto LABEL_140;
                  }

                  v151.f64[0] = v66;
                  v64 = 0.0;
                  goto LABEL_139;
                }

                goto LABEL_111;
              }

LABEL_116:
              v153 = 0uLL;
              v154 = 1.0;
              v52 = 1.0;
              goto LABEL_117;
            }
          }

          else
          {
            if (v60 <= 3)
            {
              if (v60 != 1)
              {
                if (v60 != 2)
                {
                  if (v60 != 3)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_104;
                }

LABEL_115:
                v153 = 0xBFF0000000000000;
                v154 = 0.0;
                v52 = 0.0;
                v59 = -1.0;
                goto LABEL_117;
              }

LABEL_112:
              v153 = 0x3FF0000000000000uLL;
              v154 = 0.0;
              v52 = 0.0;
              v59 = 1.0;
              goto LABEL_117;
            }

            if (v60 != 4)
            {
              if (v60 != 5)
              {
LABEL_111:
                v153 = 0uLL;
                v154 = -1.0;
                v52 = -1.0;
LABEL_117:
                v55 = 0.0;
                goto LABEL_118;
              }

              goto LABEL_116;
            }
          }

          v153 = xmmword_26034D970;
          v154 = 0.0;
          v55 = -1.0;
          goto LABEL_114;
        }

        v57 = xmmword_26034C200;
      }

      else
      {
        v57 = xmmword_2603426F0;
      }

      v108 = v57;
    }

    v56 = 0.0;
    goto LABEL_86;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v26 = *&v165[5];
        return v25 + v26;
      case 4:
        v26 = *&v165[6];
        return v25 + v26;
      case 5:
        v26 = *&v165[7];
        return v25 + v26;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v26 = *&v165[2];
        return v25 + v26;
      case 1:
        v26 = *&v165[3];
        return v25 + v26;
      case 2:
        v26 = *&v165[4];
        return v25 + v26;
    }
  }

  return a5;
}

void sub_2602601C8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(&STACK[0x468]);
  v2 = STACK[0x6E8];
  if (STACK[0x6E8])
  {
    STACK[0x6F0] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t OZValueCache<OZFramingCacheItem>::find(uint64_t a1, uint64_t a2, double a3)
{
  PCSharedMutex::lock_shared((a1 + 40));
  for (i = *(a1 + 16); ; i = *(i + 8))
  {
    if (i == a1 + 8)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = *(i + 24);
    if (v7 == a3)
    {
      break;
    }
  }

  *(a2 + 8) = v7;
  v9 = *(i + 32);
  v10 = *(i + 64);
  *(a2 + 32) = *(i + 48);
  *(a2 + 48) = v10;
  *(a2 + 16) = v9;
  v8 = 1;
LABEL_7:
  PCSharedMutex::unlock_shared((a1 + 40));
  return v8;
}

double PCQuat<double>::getEulerAngles(double *a1, void *a2, void *a3, void *a4, int a5)
{
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v16, a1);
  memset(v11, 0, sizeof(v11));
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v12 = a5;
  PCMatrix44Tmpl<double>::getTransformation(&v16, v11);
  v9 = *(&v13 + 1);
  *a2 = v13;
  *a3 = v9;
  result = *&v14;
  *a4 = v14;
  return result;
}

void OZValueCache<OZFramingCacheItem>::add(uint64_t a1, uint64_t a2)
{
  PCSharedMutex::lock((a1 + 40));
  std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(a1 + 8, *(a2 + 8));
  if (*(a1 + 24) >= *(a1 + 32))
  {
    std::list<OZProjectedBoundsCacheItem>::pop_front(a1 + 8);
  }

  operator new();
}

uint64_t OZValueCache<OZFramingCacheItem>::OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872BEEF0;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_260347AE0;
  PCSharedMutex::PCSharedMutex((a1 + 40));
  return a1;
}

void OZValueCache<OZFramingCacheItem>::~OZValueCache(uint64_t a1)
{
  OZValueCache<OZFramingCacheItem>::~OZValueCache(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZValueCache<OZFramingCacheItem>::~OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872BEEF0;
  OZValueCache<OZBoundsCacheItem>::flush(a1);
  PCSharedMutex::~PCSharedMutex((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  return a1;
}

uint64_t std::__tree<std::__value_type<CMTime,PCVector3<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCVector3<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,PCVector3<double>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(uint64_t a1, CMTime *a2)
{
  v2 = *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__find_equal<CMTime>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void BHOvershootBehavior::BHOvershootBehavior(BHOvershootBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BEF20;
  v5[2] = &unk_2872BF260;
  v5[6] = &unk_2872BF4B8;
  v5[42] = &unk_2872BF510;
  v5[67] = &unk_2872BF538;
  PCURL::PCURL(&v6, @"Overshoot Behavior Start Value");
  OZChannelDouble::OZChannelDouble((this + 864), &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior End Value");
  OZChannelDouble::OZChannelDouble((this + 1016), &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior Ramp Fraction");
  OZChannelPercent::OZChannelPercent((this + 1168), 0.35, &v6, (this + 56), 0xCDu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior Ring Cycles");
  OZChannelDouble::OZChannelDouble((this + 1320), 3.0, &v6, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior Acceleration");
  OZChannelPercent::OZChannelPercent((this + 1472), 0.0, &v6, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior Start Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1624), &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Overshoot Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1776), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 1624), 0);
  OZChannel::setKeyframable((this + 1776), 0);
  OZChannel::setKeyframable((this + 864), 0);
  OZChannel::setKeyframable((this + 1016), 0);
  OZChannel::setKeyframable((this + 1168), 0);
  OZChannel::setKeyframable((this + 1320), 0);
  OZChannel::setKeyframable((this + 1472), 0);
  OZChannel::setMin((this + 1168), 0.01);
  OZChannelBase::saveStateAsDefault((this + 1168));
  OZChannel::setMin((this + 1320), 0.01);
  OZChannel::setMax((this + 1320), 100.0);
  OZChannel::setSliderMax((this + 1320), 10.0);
  OZChannelBase::saveStateAsDefault((this + 1320));
  OZChannelBase::resetFlag((this + 1624), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1624));
  OZChannelBase::resetFlag((this + 1776), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1776));
}

void sub_260260A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1624));
  OZChannelPercent::~OZChannelPercent((v10 + 1472));
  OZChannel::~OZChannel((v10 + 1320));
  OZChannelPercent::~OZChannelPercent((v10 + 1168));
  OZChannel::~OZChannel((v10 + 1016));
  OZChannel::~OZChannel((v10 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void BHOvershootBehavior::BHOvershootBehavior(BHOvershootBehavior *this, const BHOvershootBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BEF20;
  *(v5 + 16) = &unk_2872BF260;
  *(v5 + 48) = &unk_2872BF4B8;
  *(v5 + 336) = &unk_2872BF510;
  *(v5 + 536) = &unk_2872BF538;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1016), (a2 + 1016), (this + 56));
  *(this + 127) = &unk_287245C60;
  *(this + 129) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 1168), (a2 + 1168), (this + 56));
  OZChannel::OZChannel((this + 1320), (a2 + 1320), (this + 56));
  *(this + 165) = &unk_287245C60;
  *(this + 167) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 1472), (a2 + 1472), (this + 56));
  OZChannel::OZChannel((this + 1624), (a2 + 1624), (this + 56));
  *(this + 203) = &unk_287245C60;
  *(this + 205) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1776), (a2 + 1776), (this + 56));
  *(this + 222) = &unk_287245C60;
  *(this + 224) = &unk_287245FC0;
}

void sub_260260DC4(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannelPercent::~OZChannelPercent((v1 + 1472));
  OZChannel::~OZChannel(v4);
  OZChannelPercent::~OZChannelPercent((v1 + 1168));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void BHOvershootBehavior::~BHOvershootBehavior(BHOvershootBehavior *this)
{
  *this = &unk_2872BEF20;
  *(this + 2) = &unk_2872BF260;
  *(this + 6) = &unk_2872BF4B8;
  *(this + 42) = &unk_2872BF510;
  *(this + 67) = &unk_2872BF538;
  OZChannel::~OZChannel((this + 1776));
  OZChannel::~OZChannel((this + 1624));
  OZChannelPercent::~OZChannelPercent((this + 1472));
  OZChannel::~OZChannel((this + 1320));
  OZChannelPercent::~OZChannelPercent((this + 1168));
  OZChannel::~OZChannel((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  BHOvershootBehavior::~BHOvershootBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toBHOvershootBehavior::~BHOvershootBehavior(BHOvershootBehavior *this)
{
  BHOvershootBehavior::~BHOvershootBehavior((this - 16));
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 48));
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 336));
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 536));
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  BHOvershootBehavior::~BHOvershootBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t BHOvershootBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1016, v5 + 1016);
  OZChannelBase::operator=(a1 + 1168, v5 + 1168);
  OZChannelBase::operator=(a1 + 1320, v5 + 1320);
  OZChannelBase::operator=(a1 + 1472, v5 + 1472);
  OZChannelBase::operator=(a1 + 1624, v5 + 1624);

  return OZChannelBase::operator=(a1 + 1776, v5 + 1776);
}

double BHOvershootBehavior::solveNode(BHOvershootBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v43, 0, sizeof(v43));
  (*(**(*(this + 47) + 32) + 336))(&v43, a4);
  v42[0] = v43;
  if ((*(*this + 296))(this, v42, 0, 1, 1) && (*(*this + 336))(this))
  {
    (*(*this + 608))(v42, this);
    memset(&v41, 0, sizeof(v41));
    v44 = *&v42[0].value;
    epoch = v42[0].epoch;
    v7 = (*(*this + 336))(this);
    v8 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 1624), MEMORY[0x277CC08F0], 0.0);
    OZScene::getTimeForFrame(v7, v9, &v39);
    *&time1.value = v44;
    time1.epoch = epoch;
    *&time2.value = v39;
    time2.epoch = v40;
    PC_CMTimeSaferAdd(&time1, &time2, &v41);
    v39 = 0uLL;
    v40 = 0;
    OZBehavior::getFrameDuration(this, &v36);
    time1 = v42[0];
    time2 = v42[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v44);
    *&time1.value = v44;
    time1.epoch = epoch;
    *&time2.value = v36;
    time2.epoch = v37;
    v10.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v38);
    v11 = (*(*this + 336))(this, v10);
    OZChannel::getValueAsDouble((this + 1776), v8, 0.0);
    OZScene::getTimeForFrame(v11, v12, &v44);
    time1 = v38;
    *&time2.value = v44;
    time2.epoch = epoch;
    PC_CMTimeSaferSubtract(&time1, &time2, &v39);
    time1 = v43;
    time2 = v41;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v13 = MEMORY[0x277CC08F0];
      v14 = (this + 864);
      goto LABEL_7;
    }

    time1 = v43;
    *&time2.value = v39;
    time2.epoch = v40;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v13 = MEMORY[0x277CC08F0];
      v14 = (this + 1016);
LABEL_7:
      OZChannel::getValueAsDouble(v14, v13, 0.0);
      return v15 + a5;
    }

    v44 = 0uLL;
    epoch = 0;
    *&time1.value = v39;
    time1.epoch = v40;
    time2 = v41;
    PC_CMTimeSaferSubtract(&time1, &time2, &v44);
    *&time1.value = v44;
    time1.epoch = epoch;
    time2 = *v8;
    if (CMTimeCompare(&time1, &time2))
    {
      OZChannel::getValueAsDouble((this + 864), v8, 0.0);
      v18 = v17;
      OZChannel::getValueAsDouble((this + 1016), v8, 0.0);
      v20 = v19;
      v21 = v19 - v18;
      OZChannel::getValueAsDouble((this + 1168), v8, 0.0);
      v23 = v22;
      OZChannel::getValueAsDouble((this + 1472), v8, 0.0);
      v25 = v24;
      time1 = v43;
      time2 = v41;
      PC_CMTimeSaferSubtract(&time1, &time2, &v38);
      operator/(&v38.value, &v44, &time1);
      Seconds = CMTimeGetSeconds(&time1);
      v28 = Seconds;
      if (Seconds <= v23)
      {
        v35 = Seconds / v23;
        *&time1.value = v28 / v23;
        if (v25 > 0.0 && v35 > 0.0 && v35 < 1.0)
        {
          PCMath::easeInOut(&time1.value, v35, v25, 0.0, 0.0, 1.0, 0, v26);
          v35 = *&time1.value;
        }

        return v18 + v21 * v35 + a5;
      }

      else
      {
        OZChannel::getValueAsDouble((this + 1320), MEMORY[0x277CC08F0], 0.0);
        v30 = v29 * 6.28318531;
        time1.value = 0;
        PCMath::easeInOut(0, 1.0, v25, 0.0, 0.0, 1.0, &time1.value, v31);
        v32 = (1.0 - v23) * (v21 * *&time1.value) / v23 / v30;
        v33 = (v28 - v23) / (1.0 - v23);
        v34 = v32 * sin(v30 * v33);
        return v20 + a5 + v34 * ((exp(v33 * -3.0) + -0.0497870684) * 1.0523957);
      }
    }

    else
    {
      return 0.0;
    }
  }

  return a5;
}

void BHOvershootBehavior::didSetChannelInfo(BHOvershootBehavior *this, const OZChannelInfo *a2, OZChannel *a3)
{
  OZChannel::setInfo((this + 864), a2);
  OZChannel::setInfo((this + 1016), a2);
  v6 = *(a2 + 2);
  if (v6 == -3.40282347e38 || (v7 = *(a2 + 1), v7 == 3.40282347e38))
  {
    if (fabs(*(*(this + 124) + 40) + -57.2957795) >= 0.0000001)
    {
      v8 = 100.0;
    }

    else
    {
      v8 = 6.28318531;
    }
  }

  else
  {
    v8 = v7 - v6;
    v9 = *(this + 79);
    if (v9 != 3.40282347e38)
    {
      v10 = v8 / v9;
      v11 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((this + 864), MEMORY[0x277CC08F0], 0.0);
      OZChannel::setValue((this + 864), v11, v10 * v12, 0);
      OZChannel::getValueAsDouble((this + 1016), v11, 0.0);
      OZChannel::setValue((this + 1016), v11, v10 * v13, 0);
    }
  }

  v17 = 0.0;
  (*(**(a3->var14 + 1) + 264))(*(a3->var14 + 1), &v17);
  v14 = v17;
  v17 = 0.0;
  (*(**(a3->var14 + 1) + 256))();
  if (v17 == 3.40282347e38 || v14 == -3.40282347e38)
  {
    v16 = 3.40282347e38;
  }

  else
  {
    v16 = v17 - v14;
  }

  OZChannel::setSliderMin((this + 864), 0.0);
  OZChannel::setSliderMax((this + 864), v8);
  OZChannel::setMin((this + 864), -v16);
  OZChannel::setMax((this + 864), v16);
  OZChannel::setSliderMin((this + 1016), 0.0);
  OZChannel::setSliderMax((this + 1016), v8);
  OZChannel::setMin((this + 1016), -v16);
  OZChannel::setMax((this + 1016), v16);
}

void OZGenericBehavior::OZGenericBehavior(OZGenericBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v4 = &unk_2872BF5B0;
  *(v4 + 16) = &unk_2872BF870;
  *(v4 + 48) = &unk_2872BFAC8;
  *(v4 + 336) = &unk_2872BFB20;
  *(v4 + 544) = 0u;
  *(v4 + 536) = v4 + 544;
  *(v4 + 560) = v4 + 560;
  *(v4 + 568) = v4 + 560;
  *(v4 + 576) = 0;
  *(v4 + 584) = 0;
}

void OZGenericBehavior::OZGenericBehavior(OZGenericBehavior *this, unint64_t ***a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BF5B0;
  *(v5 + 16) = &unk_2872BF870;
  *(v5 + 48) = &unk_2872BFAC8;
  *(v5 + 336) = &unk_2872BFB20;
  *(v5 + 544) = 0u;
  *(v5 + 536) = v5 + 544;
  *(v5 + 560) = v5 + 560;
  *(v5 + 568) = v5 + 560;
  *(v5 + 576) = 0;
  *(v5 + 584) = *(a2 + 584);
  v6 = a2[21];
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    v29[0] = 0;
    v29[1] = 0;
    v25 = a2;
    v28 = v29;
    v26 = v7;
    if (v8 != v7)
    {
      v9 = a2 + 68;
      do
      {
        v27 = *v8;
        v10 = (*(*v27 + 248))(v27);
        OZChannelFolder::push_back((this + 56), v10);
        v11 = *v9;
        if (*v9)
        {
          v12 = v9;
          do
          {
            v13 = v11[4];
            v14 = v13 >= v27;
            v15 = v13 < v27;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != v9 && v27 >= v12[4])
          {
            v16 = v12[5];
            OZChannelBase::getChannelRootBase(v16);
            ObjectManipulator = OZChannelBase::getObjectManipulator(v16);
            v18 = (*(*ObjectManipulator + 256))(ObjectManipulator);
            (*(*v18 + 56))(v18);
            operator new();
          }
        }

        v29[3] = &v27;
        std::__tree<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const* const&>,std::tuple<>>(&v28, &v27)[5] = v10;
        ++v8;
      }

      while (v8 != v26);
    }

    if (*(v25 + 72))
    {
      for (i = *(v25 + 71); i != (v25 + 560); i = i[1])
      {
        v20 = v29[0];
        if (v29[0])
        {
          v21 = i[5];
          v22 = v29;
          do
          {
            v23 = v20[4];
            v14 = v23 >= v21;
            v24 = v23 < v21;
            if (v14)
            {
              v22 = v20;
            }

            v20 = v20[v24];
          }

          while (v20);
          if (v22 != v29 && v21 >= v22[4])
          {
            operator new();
          }
        }
      }
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, v29[0]);
  }
}

void sub_260261E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  MEMORY[0x2666E9F00](v16, 0x1012C40EC159624);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a14, a15);
  std::__list_imp<unsigned int>::clear(a11);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v15 + 536, *(v15 + 68));
  OZChannelBehavior::~OZChannelBehavior(v15);
  _Unwind_Resume(a1);
}

void OZGenericBehavior::~OZGenericBehavior(OZGenericBehavior *this)
{
  *this = &unk_2872BF5B0;
  *(this + 2) = &unk_2872BF870;
  *(this + 6) = &unk_2872BFAC8;
  *(this + 42) = &unk_2872BFB20;
  v2 = *(this + 21);
  if (v2)
  {
    v6[0] = v6;
    v6[1] = v6;
    v6[2] = 0;
    if (*v2 != v2[1])
    {
      operator new();
    }

    std::__list_imp<unsigned int>::clear(v6);
  }

  while (*(this + 72))
  {
    v3 = *(this + 71);
    if (v3[4])
    {
      MEMORY[0x2666E9F00](v3[4], 0x1000C40451B5BE8);
      v3 = *(this + 71);
    }

    v3[4] = 0;
    if (v3[3])
    {
      OZChannelRef::~OZChannelRef(v3[3]);
      MEMORY[0x2666E9F00]();
      v3 = *(this + 71);
    }

    v3[3] = 0;
    v5 = *v3;
    v4 = v3[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    --*(this + 72);
    operator delete(v3);
  }

  std::__list_imp<unsigned int>::clear(this + 70);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 536, *(this + 68));
  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZGenericBehavior::~OZGenericBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGenericBehavior::~OZGenericBehavior(OZGenericBehavior *this)
{
  OZGenericBehavior::~OZGenericBehavior((this - 16));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 48));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 336));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZGenericBehavior::operator=(OZGenericBehavior *a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = *(a1 + 21);
  if (v6)
  {
    v26 = &v26;
    v27 = &v26;
    v28 = 0;
    if (*v6 != v6[1])
    {
      operator new();
    }

    std::__list_imp<unsigned int>::clear(&v26);
  }

  while (*(a1 + 72))
  {
    v7 = *(a1 + 71);
    if (v7[4])
    {
      MEMORY[0x2666E9F00](v7[4], 0x1000C40451B5BE8);
      v7 = *(a1 + 71);
    }

    v7[4] = 0;
    if (v7[3])
    {
      OZChannelRef::~OZChannelRef(v7[3]);
      MEMORY[0x2666E9F00]();
      v7 = *(a1 + 71);
    }

    v7[3] = 0;
    v9 = *v7;
    v8 = v7[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    --*(a1 + 72);
    operator delete(v7);
  }

  v10 = v5[21];
  if (v10)
  {
    v11 = (*(*a1 + 320))(a1);
    v12 = *v10;
    v13 = v10[1];
    v27 = 0;
    v28 = 0;
    v26 = &v27;
    if (v12 != v13)
    {
      v14 = v11;
      v15 = v5 + 68;
      do
      {
        v25 = *v12;
        v16 = (*(*v25 + 248))(v25);
        OZChannelFolder::push_back((a1 + 56), v16);
        if (v14 && (*(*v14 + 272))(v14))
        {
          (*(*v14 + 896))(v14, v25);
        }

        v17 = *v15;
        if (*v15)
        {
          v18 = v5 + 68;
          do
          {
            v19 = v17[4];
            v20 = v19 >= v25;
            v21 = v19 < v25;
            if (v20)
            {
              v18 = v17;
            }

            v17 = v17[v21];
          }

          while (v17);
          if (v18 != v15 && v25 >= v18[4])
          {
            v22 = v18[5];
            OZChannelBase::getChannelRootBase(v22);
            ObjectManipulator = OZChannelBase::getObjectManipulator(v22);
            v24 = (*(*ObjectManipulator + 256))(ObjectManipulator);
            (*(*v24 + 56))(v24);
            operator new();
          }
        }

        v29 = &v25;
        std::__tree<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const* const&>,std::tuple<>>(&v26, &v25)[5] = v16;
        ++v12;
      }

      while (v12 != v13);
    }

    if (v5[72] && v5[71] != v5 + 70)
    {
      operator new();
    }

    if ((*(*a1 + 336))(a1))
    {
      OZGenericBehavior::genericBehaviorDidLoad(a1, 1);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v26, v27);
  }
}

void OZGenericBehavior::removeChannel(uint64_t **this, OZChannelBase *a2)
{
  v5 = a2;
  v4 = ((*this)[40])(this);
  if (v4)
  {
    (*(*v4 + 888))(v4, a2);
  }

  OZChannelFolder::removeDescendant((this + 7), a2);
  std::__tree<OZLocking *>::__erase_unique<OZLocking *>(this + 67, &v5);
  OZGenericBehavior::removeGenericNodes(this, v5);
}

void *OZGenericBehavior::genericBehaviorDidLoad(OZGenericBehavior *this, int a2)
{
  result = (*(*this + 320))(this);
  if (*(this + 21))
  {
    v63 = a2;
    v5 = *(this + 71);
    v65 = &v65;
    v66 = &v65;
    v67 = 0;
    if (v5 != (this + 560))
    {
      v6 = result;
      v7 = (this + 544);
      v8 = result + 2;
      v9 = result + 122;
      v10 = result + 125;
      do
      {
        v11 = *v7;
        if (*v7)
        {
          v12 = *(v5 + 40);
          v13 = (this + 544);
          do
          {
            v14 = *(v11 + 4);
            v15 = v14 >= v12;
            v16 = v14 < v12;
            if (v15)
            {
              v13 = v11;
            }

            v11 = *&v11[8 * v16];
          }

          while (v11);
          if (v13 != v7 && v12 >= v13[4])
          {
            goto LABEL_74;
          }
        }

        v17 = *(v5 + 16);
        if (v17)
        {
          v18 = *(v6 + 80) == v17;
        }

        else
        {
          v18 = 1;
        }

        v19 = v8;
        if (!v18)
        {
          if (OZSceneNode::getEffect(v6, *(v5 + 16)))
          {
            Effect = OZSceneNode::getEffect(v6, v17);
            v21 = Effect + 48;
            goto LABEL_20;
          }

          if (OZSceneNode::getBehavior(v6, v17))
          {
            Effect = OZSceneNode::getBehavior(v6, v17);
            v21 = Effect + 16;
LABEL_20:
            if (Effect)
            {
              v19 = v21;
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_23;
          }

          v19 = 0;
        }

LABEL_23:
        v22 = *(v5 + 32);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        if (v24 | v23 | v25 | v26)
        {
          if (v19)
          {
            v27 = (*(*v19 + 256))(v19);
            v28 = *(v5 + 32);
            v29 = *v28;
            if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(*(v27 + 8) + 8), *v28)))) & 1) == 0)
            {
              goto LABEL_69;
            }

            v23 = *v28;
            v24 = HIDWORD(v28->i64[0]);
            v25 = v29.i32[2];
            v26 = v29.i32[3];
          }

          v30 = *(v6 + 8);
          v31 = v30[2];
          v32 = v30[3];
          v34 = v30[4];
          v33 = v30[5];
          v37 = v31 == v23 && v32 == v24 && v34 == v25 && v33 == v26;
          v19 = v8;
          if (!v37)
          {
            for (i = *(v6 + 984); i != v9; i = i[1])
            {
              v39 = i[2];
              v40 = *(v39 + 40);
              v41 = v40[2];
              v42 = v40[3];
              v44 = v40[4];
              v43 = v40[5];
              if (v41 == v23 && v42 == v24 && v44 == v25 && v43 == v26)
              {
                v19 = (v39 + 48);
                goto LABEL_69;
              }
            }

            for (j = *(v6 + 1008); j != v10; j = j[1])
            {
              v49 = j[2];
              v50 = *(v49 + 8);
              v51 = v50[2];
              v52 = v50[3];
              v54 = v50[4];
              v53 = v50[5];
              if (v51 == v23 && v52 == v24 && v54 == v25 && v53 == v26)
              {
                v19 = (v49 + 16);
                goto LABEL_69;
              }
            }

            v64 = *(v5 + 40);
LABEL_73:
            operator new();
          }

LABEL_69:
          v64 = *(v5 + 40);
        }

        else
        {
          v64 = *(v5 + 40);
          if (!v19)
          {
            goto LABEL_73;
          }
        }

        v58 = (*(*v19 + 224))(v19, *(v5 + 24), *(this + 74));
        if (!v58 || !(*(*this + 680))(this, v64, v58))
        {
          goto LABEL_73;
        }

        v68 = &v64;
        std::__tree<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const* const&>,std::tuple<>>(this + 536, &v64)[5] = v58;
        OZChannelBase::resetFlag(v64, 2, 0);
        OZGenericBehavior::addGenericNodes(this, v64, v58);
LABEL_74:
        v5 = *(v5 + 8);
      }

      while (v5 != (this + 560));
    }

    if (v63)
    {
      for (k = v66; k != &v65; k = k[1])
      {
        OZChannelFolder::removeDescendant((this + 56), k[2]);
      }

      while (*(this + 72))
      {
        v60 = *(this + 71);
        if (v60[4])
        {
          MEMORY[0x2666E9F00](v60[4], 0x1000C40451B5BE8);
          v60 = *(this + 71);
        }

        v60[4] = 0;
        if (v60[3])
        {
          OZChannelRef::~OZChannelRef(v60[3]);
          MEMORY[0x2666E9F00]();
          v60 = *(this + 71);
        }

        v60[3] = 0;
        v62 = *v60;
        v61 = v60[1];
        *(v62 + 8) = v61;
        *v61 = v62;
        --*(this + 72);
        operator delete(v60);
      }
    }

    return std::__list_imp<unsigned int>::clear(&v65);
  }

  return result;
}

void sub_260262E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZGenericBehavior::willDeleteObject(OZGenericBehavior *this, OZObjectManipulator *a2)
{
  v4 = *(this + 67);
  v5 = this + 544;
  if (v4 != this + 544)
  {
    do
    {
      ChannelRootBase = OZChannelBase::getChannelRootBase(*(v4 + 5));
      ObjectManipulator = OZChannelBase::getObjectManipulator(ChannelRootBase);
      if (ObjectManipulator == a2)
      {
        v8 = (*(*ObjectManipulator + 256))(ObjectManipulator);
        (*(*v8 + 56))(v8);
        operator new();
      }

      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  OZChannelBehavior::willDeleteObject(this, a2);
}

void sub_260263074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZGenericBehavior::removeGenericNodes(uint64_t **this, OZChannelBase *a2)
{
  if ((a2->var7 & 0x1000) != 0)
  {
    if (v7)
    {
      for (i = *v7; i != v7[1]; ++i)
      {
        v9 = *i;
        OZGenericBehavior::removeGenericNodes(this, v9);
      }
    }
  }

  else
  {
    v4 = this[44];
    if (v4 != (this + 43))
    {
      v5 = v3;
      while (1)
      {
        if (v5 == *(v6 + 5))
        {
          break;
        }

        v4 = v4[1];
        if (v4 == (this + 43))
        {
          return;
        }
      }

      OZChannel::deleteCurveProcessingNode(*(v6 + 2), v6);
      v11 = *v4;
      v10 = v4[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      this[45] = (this[45] - 1);

      operator delete(v4);
    }
  }
}

void *OZGenericBehavior::didUndoDeleteOfObject(OZGenericBehavior *this, OZObjectManipulator *a2)
{
  v4 = this + 560;
  v5 = *(this + 71);
  v6 = (*(*a2 + 256))(a2);
  v7 = (*(*v6 + 56))(v6);
  result = (*(*a2 + 256))(a2);
  if (v5 != v4)
  {
    while (v7 != *(v5 + 16) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(result[1] + 8), **(v5 + 32))))) & 1) != 0)
    {
      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        return result;
      }
    }

    OZChannelBase::resetFlag(*(v5 + 40), 2, 0);

    return OZGenericBehavior::genericBehaviorDidLoad(this, 0);
  }

  return result;
}

void OZGenericBehavior::willDeleteChannel(OZGenericBehavior *this, OZChannelBase *a2)
{
  v2 = *(this + 67);
  if (v2 != (this + 544))
  {
    do
    {
      if (*(v2 + 5) == a2)
      {
        ChannelRootBase = OZChannelBase::getChannelRootBase(*(v2 + 5));
        ObjectManipulator = OZChannelBase::getObjectManipulator(ChannelRootBase);
        v5 = (*(*ObjectManipulator + 256))(ObjectManipulator);
        (*(*v5 + 56))(v5);
        operator new();
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != (this + 544));
  }

  OZChannelBehavior::willDeleteChannel(this, a2);
}

void sub_260263600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

OZChannelBase *OZGenericBehavior::didUndoDeleteChannel(OZGenericBehavior *this, OZChannelBase *a2)
{
  v4 = this + 560;
  v5 = *(this + 71);
  ChannelRootBase = OZChannelBase::getChannelRootBase(a2);
  ObjectManipulator = OZChannelBase::getObjectManipulator(ChannelRootBase);
  v8 = (*(*ObjectManipulator + 256))();
  v9 = (*(*v8 + 56))(v8);
  result = (*(*ObjectManipulator + 256))(ObjectManipulator);
  if (v5 != v4)
  {
    v11 = *(result->var1 + 8);
    v13 = v11;
    while (1)
    {
      if (v9 == *(v5 + 16) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v11, **(v5 + 32))))) & 1) == 0)
      {
        result = OZChannelRef::getChannel(*(v5 + 24), ChannelRootBase);
        v11 = v13;
        if (result == a2)
        {
          break;
        }
      }

      v5 = *(v5 + 8);
      if (v5 == v4)
      {
        return result;
      }
    }

    OZGenericBehavior::genericBehaviorDidLoad(this, 0);
    v12 = *(v5 + 40);

    return OZChannelBase::resetFlag(v12, 2, 0);
  }

  return result;
}

void *OZGenericBehavior::addGenericNodes(OZGenericBehavior *this, OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) == 0)
  {
    if (a3)
    {
    }

    v19 = 0.0;
    (*(**(a3[1].var0 + 1) + 264))(*(a3[1].var0 + 1), &v19);
    if (fabs(v19) < 0.0000001)
    {
      v19 = 0.0;
      (*(**(a3[1].var0 + 1) + 256))(*(a3[1].var0 + 1), &v19);
      OZChannel::setMin(v6, -v19);
    }

    v19 = 0.0;
    (*(**(a3[1].var0 + 1) + 256))(*(a3[1].var0 + 1), &v19);
    if (fabs(v19) < 0.0000001)
    {
      v19 = 0.0;
      (*(**(a3[1].var0 + 1) + 264))(*(a3[1].var0 + 1), &v19);
      OZChannel::setMax(v6, -v19);
    }

    if (fabs(*(a3[1].var2 + 2)) < 0.0000001)
    {
      v7 = (*(a3->var0 + 101))(a3);
      OZChannel::setSliderMin(v6, -v7);
    }

    if (fabs((*(a3->var0 + 101))(a3)) < 0.0000001)
    {
      OZChannel::setSliderMax(v6, -*(a3[1].var2 + 2));
    }

    (*(*this + 672))(this, a3);
    operator new();
  }

  if (v8)
  {
    v8[440] = 0;
  }

  v11 = v9[14];
  v12 = result[14];
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *v11;
    if (*v11 != v11[1])
    {
      v15 = *v12;
      do
      {
        if (v15 == v12[1])
        {
          break;
        }

        v17 = *v14++;
        v16 = v17;
        v18 = *v15++;
        result = OZGenericBehavior::addGenericNodes(this, v16, v18);
      }

      while (v14 != v11[1]);
    }
  }

  return result;
}

void OZGenericBehavior::didAddToNode(OZGenericBehavior *this, OZSceneNode *a2)
{
  OZChannelBehavior::didAddToNode(this, a2);
  v4 = (*(*a2 + 640))(a2);
  OZChannelBehavior::setAffectedChannel(this, v4);
  if ((*(this + 584) & 1) == 0)
  {

    OZGenericBehavior::genericBehaviorDidLoad(this, 0);
  }
}

void OZGenericBehavior::willRemove(OZGenericBehavior *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (*v2 != v3)
    {
      v5 = (this + 544);
      do
      {
        v6 = *v5;
        if (*v5)
        {
          v7 = *v4;
          v8 = (this + 544);
          do
          {
            v9 = *(v6 + 4);
            v10 = v9 >= v7;
            v11 = v9 < v7;
            if (v10)
            {
              v8 = v6;
            }

            v6 = *&v6[8 * v11];
          }

          while (v6);
          if (v8 != v5 && v7 >= v8[4])
          {
            v12 = v8[5];
            ObjectManipulator = OZChannelBase::getObjectManipulator(v12);
            v14 = (*(*ObjectManipulator + 256))(ObjectManipulator);
            (*(*v14 + 56))(v14);
            (*(*ObjectManipulator + 256))(ObjectManipulator);
            ChannelRootBase = OZChannelBase::getChannelRootBase(v12);
            OZChannelRef::OZChannelRef(v18, v12, ChannelRootBase);
            if (v19 >= 0)
            {
              v16 = v18;
            }

            else
            {
              v16 = v18[0];
            }

            PCString::PCString(&v17, v16);
            operator new();
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 536, *(this + 68));
  *(this + 67) = this + 544;
  *(this + 34) = 0u;
  OZChannelBehavior::willRemove(this);
}

void sub_260263F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9, void *a10)
{
  MEMORY[0x2666E9F00](v10, 0x1012C40EC159624);
  PCString::~PCString(&a9);
  OZChannelRef::~OZChannelRef(&a10);
  _Unwind_Resume(a1);
}

void *OZGenericBehavior::updateReferenceIDs(OZGenericBehavior *a1, void *a2)
{
  result = OZChannelObjectRoot::updateReferenceIDs(a1 + 7, a2);
  v5 = *(a1 + 71);
  if (v5 != (a1 + 560))
  {
    v8 = a2[1];
    v7 = a2 + 1;
    v6 = v8;
    do
    {
      if (v6)
      {
        v9 = *(v5 + 16);
        v10 = v7;
        v11 = v6;
        do
        {
          v12 = *(v11 + 28);
          v13 = v12 >= v9;
          v14 = v12 < v9;
          if (v13)
          {
            v10 = v11;
          }

          v11 = *(v11 + 8 * v14);
        }

        while (v11);
        if (v10 != v7 && v9 >= *(v10 + 7))
        {
          *(v5 + 16) = *(v10 + 8);
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != (a1 + 560));
  }

  if ((*(a1 + 584) & 1) != 0 || *(a1 + 72))
  {
    result = (*(*a1 + 320))(a1);
    if (result)
    {
      result = OZGenericBehavior::genericBehaviorDidLoad(a1, 1);
      *(a1 + 584) = 0;
    }
  }

  return result;
}

void *OZGenericBehavior::sceneNodeDidLoad(OZGenericBehavior *this)
{
  result = OZGenericBehavior::genericBehaviorDidLoad(this, 1);
  *(this + 584) = 0;
  return result;
}

uint64_t OZGenericBehavior::affectsBehavior(OZGenericBehavior *this, OZBehavior *a2)
{
  v2 = *(this + 21);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      v7 = 0;
      while (1)
      {
        v13[0] = *v3;
        v13[2] = v13;
        v8 = std::__tree<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,LiMaterialSamplerInfo *>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const* const&>,std::tuple<>>(this + 536, v13);
        ObjectManipulator = OZChannelBase::getObjectManipulator(v8[5]);
        if (ObjectManipulator)
        {
          if (v10 == a2)
          {
            goto LABEL_13;
          }

          if (v10)
          {
            if (v11)
            {
              v7 |= (*(*v11 + 624))(v11, a2);
            }
          }
        }

        else if (!a2)
        {
LABEL_13:
          LOBYTE(v7) = 1;
          return v7 & 1;
        }

        if (++v3 == v4)
        {
          return v7 & 1;
        }
      }
    }
  }

  LOBYTE(v7) = 0;
  return v7 & 1;
}

uint64_t OZGenericBehavior::markFactoriesForSerialization(OZGenericBehavior *this, PCSerializerWriteStream *a2)
{
  result = OZChannelBase::testFlag((this + 56), 8);
  if ((result & 1) == 0)
  {
    OZFactory::setNeedsSaving(*(this + 1), 1);

    return OZChannelFolder::markFactoriesForSerialization((this + 56), a2);
  }

  return result;
}

uint64_t OZGenericBehavior::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZGenericBehaviorScope);
  (*(*a2 + 16))(a2, 69);
  (*(*a2 + 200))(a2, 110, this + 88);
  (*(*a2 + 144))(a2, 111, *(this + 20));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[1], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZGenericBehavior::writeBody(OZGenericBehavior *this, PCSerializerWriteStream *a2, uint64_t a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZGenericBehaviorScope);
  OZChannelObjectRoot::serializeSelfOnly((this + 56), a2, a3);
  v6 = *(this + 21);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 != v7)
    {
      v9 = (this + 544);
      do
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = *v8;
          v12 = v9;
          do
          {
            v13 = v10[4];
            v14 = v13 >= v11;
            v15 = v13 < v11;
            if (v14)
            {
              v12 = v10;
            }

            v10 = v10[v15];
          }

          while (v10);
          if (v12 != v9 && v11 >= v12[4])
          {
            v16 = v12[5];
            ObjectManipulator = OZChannelBase::getObjectManipulator(v16);
            v18 = (*(*ObjectManipulator + 256))(ObjectManipulator);
            v19 = (*(*v18 + 56))(v18);
            v20 = *((*(*ObjectManipulator + 256))(ObjectManipulator) + 8);
            ChannelRootBase = OZChannelBase::getChannelRootBase(v16);
            OZChannelRef::OZChannelRef(v26, v16, ChannelRootBase);
            if (v27 >= 0)
            {
              v22 = v26;
            }

            else
            {
              v22 = v26[0];
            }

            PCString::PCString(&v25, v22);
            (*(*a2 + 16))(a2, 200);
            (*(*a2 + 144))(a2, 7, v19);
            (*(*a2 + 192))(a2, 8, v20 + 8);
            (*(*a2 + 200))(a2, 6, &v25);
            (*(*a2 + 24))(a2);
            v23 = *v8 + 16;
            (*(*v23 + 16))(v23, a2, 1);
            (*(*v23 + 24))(v23, a2, 1, 1, 1);
            (*(*a2 + 24))(a2);
            PCString::~PCString(&v25);
            OZChannelRef::~OZChannelRef(v26);
          }
        }

        ++v8;
      }

      while (v8 != v7);
    }
  }

  return PCSerializerWriteStream::popScope(a2);
}

void sub_26026472C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZGenericBehavior::parseBegin(OZGenericBehavior *this, PCSerializerReadStream *a2)
{
  *(this + 584) = 1;
  PCSerializerReadStream::pushScope(a2, &OZGenericBehaviorScope);
  OZChannelObjectRoot::parseBegin((this + 56), a2);
  LODWORD(v4) = *(a2 + 26);
  *(this + 74) = v4;
  return 1;
}

uint64_t non-virtual thunk toOZGenericBehavior::parseBegin(OZGenericBehavior *this, PCSerializerReadStream *a2)
{
  *(this + 536) = 1;
  PCSerializerReadStream::pushScope(a2, &OZGenericBehaviorScope);
  OZChannelObjectRoot::parseBegin((this + 8), a2);
  LODWORD(v4) = *(a2 + 26);
  *(this + 68) = v4;
  return 1;
}

uint64_t OZGenericBehavior::parseEnd(OZGenericBehavior *this, PCSerializerReadStream *a2)
{
  OZChannelObjectRoot::parseEnd((this + 56), a2);
  v4 = *(a2 + 26);
  v5 = *(this + 21);
  if (v4 > 4)
  {
    if (!v5)
    {
      return 1;
    }

    v17 = 0;
    v8 = v5[1];
  }

  else
  {
    if (!v5)
    {
      return 1;
    }

    v6 = v5[1] - *v5;
    if ((v6 & 0x7FFFFFFF8) != 0)
    {
      v7 = *(*v5 + 8 * ((v6 >> 3) - 1));
      if (v7)
      {
        OZChannelBase::setID(v7, v7->var3 + 10000);
        v5 = *(this + 21);
        if (!v5)
        {
          return 1;
        }
      }
    }

    v8 = v5[1];
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    v9 = *v5;
    if (*v5 == v8)
    {
      v11 = 0;
      v17 = 0;
    }

    else
    {
      while (1)
      {
        v10 = *(*v9 + 24);
        v27 = v10;
        v11 = v29[0];
        if (v29[0])
        {
          v12 = v29;
          v13 = v29[0];
          do
          {
            v14 = *(v13 + 28);
            v15 = v14 >= v10;
            v16 = v14 < v10;
            if (v15)
            {
              v12 = v13;
            }

            v13 = *(v13 + 8 * v16);
          }

          while (v13);
          if (v12 != v29 && v10 >= *(v12 + 7))
          {
            break;
          }
        }

        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v28, &v27);
        v9 += 8;
        if (v9 == v8)
        {
          v17 = 0;
          v11 = v29[0];
          goto LABEL_21;
        }
      }

      v17 = 1;
    }

LABEL_21:
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, v11);
  }

  v18 = this + 560;
  v19 = *v5;
  v20 = *(this + 71);
  if (v19 != v8 && v20 != v18)
  {
    v22 = v19 + 8;
    v23 = 1;
    do
    {
      v24 = *(v22 - 8);
      OZChannelBase::setFlag(v24, 2, 0);
      *(v20 + 5) = v24;
      if (v4 <= 4)
      {
        v25 = v23;
        if ((v17 & 1) == 0)
        {
          v25 = v24->var3 - 10000;
        }

        OZChannelBase::setID(v24, v25);
      }

      if (v22 == v8)
      {
        break;
      }

      v20 = *(v20 + 1);
      ++v23;
      v22 += 8;
    }

    while (v20 != v18);
  }

  return 1;
}

uint64_t OZGenericBehavior::parseElement(OZGenericBehavior *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v17);
  v6 = *(a3 + 2);
  if (v6 == 110)
  {
    v12 = *(this + 21);
    if (v12)
    {
      v13 = (((v12[1] - *v12) << 29) + 0x100000000) >> 32;
    }

    else
    {
      v13 = 1;
    }

    if (*(this + 72) != v13)
    {
      (*(*a2 + 40))(a2);
      goto LABEL_17;
    }
  }

  else if (v6 == 200)
  {
    v7 = *(this + 21);
    if (v7)
    {
      v8 = *v7;
      v9 = *(*(this + 21) + 8) - v8;
      if ((v9 & 0x7FFFFFFF8) != 0 && *(a2 + 26) <= 4u)
      {
        v10 = *(v8 + 8 * ((v9 >> 3) - 1));
        if (v10)
        {
          OZChannelBase::setID(v10, v10->var3 + 10000);
        }
      }
    }

    v16 = 0;
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 7, &v16);
    AttributeAsUUID = PCSerializerReadStream::getAttributeAsUUID(a2, a3, 8);
    PCSharedCount::PCSharedCount(&v15);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 6, &v15);
    if (!AttributeAsUUID)
    {
      operator new();
    }

    operator new();
  }

  OZChannelObjectRoot::parseElement(this + 7, a2, a3);
LABEL_17:
  PCString::~PCString(&v17);
  return 1;
}

void sub_260264C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, PCString a12)
{
  MEMORY[0x2666E9F00](v12, 0x1012C40EC159624);
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

BOOL OZGenericBehavior::shouldReplaceValueForChan(OZGenericBehavior *this, OZChannelBase *lpsrc)
{
  result = 1;
  {
    var6 = lpsrc->var6;
    {
      return 0;
    }
  }

  return result;
}

void OZGenericBehaviorV2::OZGenericBehaviorV2(OZGenericBehaviorV2 *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZGenericBehavior::OZGenericBehavior(this, a2, a3, a4);
  *v4 = &unk_2872BFB60;
  v4[2] = &unk_2872BFE20;
  v4[6] = &unk_2872C0078;
  v4[42] = &unk_2872C00D0;
}

void OZGenericBehaviorV2::OZGenericBehaviorV2(OZGenericBehaviorV2 *this, unint64_t ***a2, char a3)
{
  OZGenericBehavior::OZGenericBehavior(this, a2, a3);
  *v3 = &unk_2872BFB60;
  v3[2] = &unk_2872BFE20;
  v3[6] = &unk_2872C0078;
  v3[42] = &unk_2872C00D0;
}

uint64_t OZGenericBehaviorV2::areChannelsCompatible(OZGenericBehaviorV2 *this, OZChannelBase *a2, OZChannelBase *a3)
{
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(a3->var1 + 8), *(a2->var1 + 8))))) & 1) == 0)
  {
    return 1;
  }

  if (*(this + 584) != 1)
  {
    return 0;
  }

  result = (*(a2->var0 + 15))(a2);
  if (result)
  {
    v5 = *(a3->var0 + 15);

    return v5(a3);
  }

  return result;
}

void OZGenericBehaviorV1::OZGenericBehaviorV1(OZGenericBehaviorV1 *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZGenericBehavior::OZGenericBehavior(this, a2, a3, a4);
  *v4 = &unk_2872C00F8;
  v4[2] = &unk_2872C03B8;
  v4[6] = &unk_2872C0610;
  v4[42] = &unk_2872C0668;
}

void OZGenericBehaviorV1::OZGenericBehaviorV1(OZGenericBehaviorV1 *this, unint64_t ***a2, char a3)
{
  OZGenericBehavior::OZGenericBehavior(this, a2, a3);
  *v3 = &unk_2872C00F8;
  v3[2] = &unk_2872C03B8;
  v3[6] = &unk_2872C0610;
  v3[42] = &unk_2872C0668;
}

void OZGenericBehaviorV2::~OZGenericBehaviorV2(OZGenericBehaviorV2 *this)
{
  OZGenericBehavior::~OZGenericBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGenericBehaviorV2::~OZGenericBehaviorV2(OZGenericBehaviorV2 *this)
{
  OZGenericBehavior::~OZGenericBehavior((this - 16));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 48));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 336));
}

{
  OZGenericBehavior::~OZGenericBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZGenericCurveNode::OZGenericCurveNode(OZGenericCurveNode *this, OZBehavior *a2, OZChannel *a3, OZChannel *a4)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a4);
  *v7 = &unk_2872C06C0;
  v7[5] = a3;
  if (a2)
  {
  }

  else
  {
    v8 = 0;
  }

  *(this + 4) = v8;
}

void OZGenericCurveNode::~OZGenericCurveNode(OZGenericCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void OZGenericOffsetCurveNode::~OZGenericOffsetCurveNode(OZGenericOffsetCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZGenericOffsetCurveNode::solveNode(OZGenericOffsetCurveNode *this, const CMTime *a2, double a3, double a4)
{
  memset(&v11, 0, sizeof(v11));
  (*(**(this + 2) + 320))(&v10, a3);
  v13 = *a2;
  v12 = v10;
  PC_CMTimeSaferAdd(&v13, &v12, &v11);
  v7 = *(this + 4);
  v13 = v11;
  if ((*(*v7 + 296))())
  {
    OZChannel::getValueAsDouble(*(this + 5), &v11, 0.0);
    return v8 + a4;
  }

  return a4;
}

void OZGenericOffsetCurveNode::solveNode(OZGenericOffsetCurveNode *this, OZCurveNodeParam *a2)
{
  v4 = *(a2 + 19);
  v5 = *(a2 + 10);
  v24 = *(a2 + 5);
  v23 = *(a2 + 4);
  memset(&v22, 0, sizeof(v22));
  (*(**(this + 2) + 320))(&v22);
  v27 = v23;
  v26 = v22;
  PC_CMTimeSaferAdd(&v27, &v26, &v23);
  memset(&v21, 0, sizeof(v21));
  operator*(*(a2 + 36), &v24, &v25);
  v27 = v23;
  v26 = v25;
  PC_CMTimeSaferAdd(&v27, &v26, &v21);
  v20 = v23;
  v6 = *(this + 4);
  v27 = v23;
  if ((*(*v6 + 296))() && (v7 = *(this + 4), v27 = v21, (*(*v7 + 296))(v7, &v27, 0, 1, 1)))
  {
    if (*(a2 + 36))
    {
      v8 = 0;
      do
      {
        v9 = *&v5[v8];
        OZChannel::getValueAsDouble(*(this + 5), &v20, 0.0);
        *&v4[v8] = v9 + v10;
        v26 = v20;
        v25 = v24;
        PC_CMTimeSaferAdd(&v26, &v25, &v27);
        v20 = v27;
        ++v8;
      }

      while (v8 < *(a2 + 36));
    }
  }

  else
  {
    v11 = *(this + 4);
    v27 = v23;
    if ((*(*v11 + 296))(v11, &v27, 0, 1, 1) & 1) != 0 || (v12 = *(this + 4), v27 = v21, ((*(*v12 + 296))(v12, &v27, 0, 1, 1)))
    {
      if (*(a2 + 36))
      {
        v13 = 0;
        do
        {
          v14 = *(this + 4);
          v27 = v20;
          v15 = (*(*v14 + 296))(v14, &v27, 0, 1, 1);
          v16 = *&v5[v13];
          if (v15)
          {
            OZChannel::getValueAsDouble(*(this + 5), &v20, 0.0);
            v16 = v16 + v17;
          }

          *&v4[v13] = v16;
          v26 = v20;
          v25 = v24;
          PC_CMTimeSaferAdd(&v26, &v25, &v27);
          v20 = v27;
          ++v13;
        }

        while (v13 < *(a2 + 36));
      }
    }

    else
    {
      v18 = *(a2 + 36);
      if (v18)
      {
        do
        {
          v19 = *v5++;
          *v4++ = v19;
          --v18;
        }

        while (v18);
      }
    }
  }
}

__n128 OZGenericOffsetCurveNode::getNeededRange(OZGenericOffsetCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZGenericReplaceCurveNode::~OZGenericReplaceCurveNode(OZGenericReplaceCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZGenericReplaceCurveNode::solveNode(OZGenericReplaceCurveNode *this, const CMTime *a2, double a3, double a4)
{
  memset(&v11, 0, sizeof(v11));
  (*(**(this + 2) + 320))(&v10, a3);
  v13 = *a2;
  v12 = v10;
  PC_CMTimeSaferAdd(&v13, &v12, &v11);
  v7 = *(this + 4);
  v13 = v11;
  if ((*(*v7 + 296))())
  {
    OZChannel::getValueAsDouble(*(this + 5), a2, 0.0);
    return v8;
  }

  return a4;
}

double OZGenericReplaceCurveNode::solveNode(OZGenericReplaceCurveNode *this, OZCurveNodeParam *a2)
{
  v4 = *(a2 + 19);
  v5 = *(a2 + 10);
  v22 = *(a2 + 5);
  v21 = *(a2 + 4);
  memset(&v20, 0, sizeof(v20));
  (*(**(this + 2) + 320))(&v20);
  v25 = v21;
  v24 = v20;
  PC_CMTimeSaferAdd(&v25, &v24, &v21);
  memset(&v19, 0, sizeof(v19));
  operator*(*(a2 + 36), &v22, &v23);
  v25 = v21;
  v24 = v23;
  PC_CMTimeSaferAdd(&v25, &v24, &v19);
  v18 = v21;
  v6 = *(this + 4);
  v25 = v21;
  if ((*(*v6 + 296))() && (v7 = *(this + 4), v25 = v19, (*(*v7 + 296))(v7, &v25, 0, 1, 1)))
  {
    if (*(a2 + 36))
    {
      v9 = 0;
      do
      {
        OZChannel::getValueAsDouble(*(this + 5), &v18, 0.0);
        v4[v9] = v10;
        v24 = v18;
        v23 = v22;
        PC_CMTimeSaferAdd(&v24, &v23, &v25);
        result = *&v25.value;
        v18 = v25;
        ++v9;
      }

      while (v9 < *(a2 + 36));
    }
  }

  else
  {
    v11 = *(this + 4);
    v25 = v21;
    if ((*(*v11 + 296))(v11, &v25, 0, 1, 1) & 1) != 0 || (v12 = *(this + 4), v25 = v19, ((*(*v12 + 296))(v12, &v25, 0, 1, 1)))
    {
      if (*(a2 + 36))
      {
        v13 = 0;
        do
        {
          v14 = *(this + 4);
          v25 = v18;
          if ((*(*v14 + 296))(v14, &v25, 0, 1, 1))
          {
            OZChannel::getValueAsDouble(*(this + 5), &v18, 0.0);
          }

          else
          {
            v15 = v5[v13];
          }

          v4[v13] = v15;
          v24 = v18;
          v23 = v22;
          PC_CMTimeSaferAdd(&v24, &v23, &v25);
          result = *&v25.value;
          v18 = v25;
          ++v13;
        }

        while (v13 < *(a2 + 36));
      }
    }

    else
    {
      v16 = *(a2 + 36);
      if (v16)
      {
        do
        {
          v17 = *v5++;
          result = v17;
          *v4++ = v17;
          --v16;
        }

        while (v16);
      }
    }
  }

  return result;
}

__n128 OZGenericReplaceCurveNode::getNeededRange(OZGenericReplaceCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZGravityBehavior::OZGravityBehavior(OZGravityBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C09A8;
  v5[2] = &unk_2872C0C90;
  v5[6] = &unk_2872C0EE8;
  v5[42] = &unk_2872C0F40;
  PCURL::PCURL(&v6, @"Gravity Behavior Grav Acceleration");
  OZChannelDouble::OZChannelDouble((this + 504), 30.0, &v6, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setSliderMin((this + 504), 0.0);
  OZChannel::setSliderMax((this + 504), 100.0);
}

void sub_260266134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZGravityBehavior::OZGravityBehavior(OZGravityBehavior *this, OZGravityBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C09A8;
  *(v5 + 16) = &unk_2872C0C90;
  *(v5 + 48) = &unk_2872C0EE8;
  *(v5 + 336) = &unk_2872C0F40;
  OZChannel::OZChannel((v5 + 504), (a2 + 504), (this + 56));
  *(this + 63) = &unk_287245C60;
  *(this + 65) = &unk_287245FC0;
}

void OZGravityBehavior::~OZGravityBehavior(OZGravityBehavior *this)
{
  *this = &unk_2872C09A8;
  *(this + 2) = &unk_2872C0C90;
  *(this + 6) = &unk_2872C0EE8;
  *(this + 42) = &unk_2872C0F40;
  OZChannel::~OZChannel((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZGravityBehavior::~OZGravityBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGravityBehavior::~OZGravityBehavior(OZGravityBehavior *this)
{
  OZGravityBehavior::~OZGravityBehavior((this - 16));
}

{
  OZGravityBehavior::~OZGravityBehavior((this - 48));
}

{
  OZGravityBehavior::~OZGravityBehavior((this - 336));
}

{
  OZGravityBehavior::~OZGravityBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZGravityBehavior::~OZGravityBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZGravityBehavior::~OZGravityBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZGravityBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return OZChannelBase::operator=(a1 + 504, v4 + 504);
}

double OZGravityBehavior::accumForces(OZGravityBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v7 = *(a2 + 176);
  v4 = *(a2 + 17);
  OZChannel::getValueAsDouble((this + 504), &v7, 0.0);
  result = v4 - v5;
  *(a2 + 17) = result;
  return result;
}

void OZGrowShrinkBehavior::OZGrowShrinkBehavior(OZGrowShrinkBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C0F80;
  v5[2] = &unk_2872C1230;
  v5[6] = &unk_2872C1488;
  v5[42] = &unk_2872C14E0;
  PCURL::PCURL(&v21, @"Grow/Shrink Behavior Increment Type Enum");
  PCURL::PCURL(&v20, @"Grow/Shrink Behavior Increment Type");
  Instance = OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(v6);
  OZChannelEnum::OZChannelEnum((this + 536), 2u, &v21, &v20, (this + 56), 0xCAu, 0, Instance, 0);
  PCString::~PCString(&v20);
  PCString::~PCString(&v21);
  PCURL::PCURL(&v21, @"Grow/Shrink Behavior Scale Rate");
  v9 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(v8);
  v10 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(v9);
  OZChannel2D::OZChannel2D((this + 792), &v21, (this + 56), 0xC8u, 0, 2u, v9, v10);
  PCString::~PCString(&v21);
  PCURL::PCURL(&v21, @"Grow/Shrink Behavior Scale Dest");
  v12 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(v11);
  v13 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(v12);
  OZChannelScale::OZChannelScale((this + 1232), 0.0, 0.0, &v21, (this + 56), 0xCBu, 0, 2u, v12, v13);
  PCString::~PCString(&v21);
  PCURL::PCURL(&v21, @"Grow/Shrink Behavior Curvature");
  v15 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(v14);
  OZChannelPercent::OZChannelPercent(this + 11, 0.0, &v21, (this + 56), 0xC9u, 0, v15, 0);
  PCString::~PCString(&v21);
  PCURL::PCURL(&v21, @"Grow/Shrink Behavior End Frame Offset");
  v17 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 1824), &v21, (this + 56), 0xCCu, 0, v17, 0);
  PCString::~PCString(&v21);
  v18 = PCString::PCString(&v21, "HUD Scale (Hidden)");
  v19 = OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(v18);
  OZChannelDouble::OZChannelDouble((this + 1976), &v21, (this + 56), 0xCEu, 2, v19, 0);
  PCString::~PCString(&v21);
  *(this + 2128) = 0;
}

void sub_2602667D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannel::~OZChannel((v12 + 1824));
  OZChannelPercent::~OZChannelPercent((v12 + 1672));
  OZChannel2D::~OZChannel2D((v12 + 1232));
  OZChannel2D::~OZChannel2D((v12 + 792));
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZChannelBehavior::~OZChannelBehavior(v12);
  _Unwind_Resume(a1);
}

void OZGrowShrinkBehavior::OZGrowShrinkBehavior(OZGrowShrinkBehavior *this, const OZGrowShrinkBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_2872C0F80;
  v5[2] = &unk_2872C1230;
  v5[6] = &unk_2872C1488;
  v5[42] = &unk_2872C14E0;
  OZChannelEnum::OZChannelEnum((v5 + 67), (a2 + 536), (this + 56));
  OZChannel2D::OZChannel2D((this + 792), (a2 + 792), (this + 56));
  OZChannelScale::OZChannelScale((this + 1232), (a2 + 1232), (this + 56));
  OZChannelPercent::OZChannelPercent(this + 11, (a2 + 1672), (this + 56));
  OZChannel::OZChannel(this + 12, (a2 + 1824), (this + 56));
  *(this + 228) = &unk_287245C60;
  *(this + 230) = &unk_287245FC0;
  OZChannel::OZChannel(this + 13, (a2 + 1976), (this + 56));
  *(this + 247) = &unk_287245C60;
  *(this + 249) = &unk_287245FC0;
  *(this + 2128) = 0;
}

void sub_260266A40(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelPercent::~OZChannelPercent(v1 + 11);
  OZChannel2D::~OZChannel2D(&v1[8].var2);
  OZChannel2D::~OZChannel2D(&v1[5].var4);
  OZChannelEnum::~OZChannelEnum(&v1[3].var10);
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZGrowShrinkBehavior::~OZGrowShrinkBehavior(OZGrowShrinkBehavior *this)
{
  *this = &unk_2872C0F80;
  *(this + 2) = &unk_2872C1230;
  *(this + 6) = &unk_2872C1488;
  *(this + 42) = &unk_2872C14E0;
  OZChannel::~OZChannel(this + 13);
  OZChannel::~OZChannel(this + 12);
  OZChannelPercent::~OZChannelPercent(this + 11);
  OZChannel2D::~OZChannel2D((this + 1232));
  OZChannel2D::~OZChannel2D((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGrowShrinkBehavior::~OZGrowShrinkBehavior(OZGrowShrinkBehavior *this)
{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 16));
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 48));
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 336));
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZGrowShrinkBehavior::~OZGrowShrinkBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZGrowShrinkBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 536, v4 + 536);
  OZChannelFolder::operator=(a1 + 792);
  OZChannelBase::operator=(a1 + 928, v5 + 928);
  OZChannelBase::operator=(a1 + 1080, v5 + 1080);
  OZChannelFolder::operator=(a1 + 1232);
  OZChannelBase::operator=(a1 + 1368, v5 + 1368);
  OZChannelBase::operator=(a1 + 1520, v5 + 1520);
  OZChannelBase::operator=(a1 + 1672, v5 + 1672);
  OZChannelBase::operator=(a1 + 1824, v5 + 1824);
  result = OZChannelBase::operator=(a1 + 1976, v5 + 1976);
  *(a1 + 2128) = 0;
  return result;
}

void OZGrowShrinkBehavior::addGrowShrinkNodes(OZGrowShrinkBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
  }

  operator new();
}

uint64_t OZGrowShrinkBehavior::didAddToNode(OZGrowShrinkBehavior *this, OZSceneNode *a2)
{
  result = OZChannelBehavior::didAddToNode(this, a2);
  if ((*(this + 2128) & 1) == 0)
  {
    result = (*(*a2 + 272))(a2);
    if (result)
    {
      OZGrowShrinkBehavior::addGrowShrinkNodes(this, a2);
    }
  }

  return result;
}

uint64_t OZGrowShrinkBehavior::didAddSceneNodeToScene(OZGrowShrinkBehavior *this, OZScene *a2)
{
  result = OZChannelBehavior::didAddSceneNodeToScene(this, a2);
  if ((*(this + 2128) & 1) == 0)
  {
    v4 = (*(*this + 320))(this);
    OZGrowShrinkBehavior::addGrowShrinkNodes(this, v4);
  }

  return result;
}

OZChannelBase *OZGrowShrinkBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  result = OZChannel::getValueAsInt((a1 + 536), MEMORY[0x277CC08F0], 0.0);
  v4 = result;
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

      if (v4 == 1)
      {
        v10 = 1;
        OZChannelBase::setFlag((v9 + 792), 0x400000, 1);
        OZChannelBase::resetFlag(v9 + 11, 0x400000, 1);
      }

      else if (v4)
      {
        OZChannelBase::setFlag((v9 + 792), 0x400000, 1);
        OZChannelBase::resetFlag(v9 + 11, 0x400000, 1);
        v10 = 0;
      }

      else
      {
        v10 = 1;
        OZChannelBase::resetFlag((v9 + 792), 0x400000, 1);
        OZChannelBase::setFlag(v9 + 11, 0x400000, 1);
      }

      result = OZChannelBase::enable((v9 + 1672), v10, 0);
      v5 = *(v5 + 8);
    }
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      result = OZChannel::getValueAsInt((v7 + 536), v6, 0.0);
      if (v4 != result)
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

      OZChannelBase::resetFlag((v13 + 792), 0x400000, 1);
      OZChannelBase::resetFlag(v13 + 11, 0x400000, 1);
      result = OZChannelBase::enable((v13 + 1672), 0, 0);
    }
  }

  return result;
}

void OZGrowShrinkBehavior::getScaleRates(OZGrowShrinkBehavior *this, CMTime *a2, double *a3, double *a4)
{
  (*(**(*(this + 47) + 32) + 336))(v38);
  *&a2->value = *&v38[0].value;
  epoch = v38[0].epoch;
  a2->epoch = v38[0].epoch;
  *&v38[0].value = *&a2->value;
  v38[0].epoch = epoch;
  if (((*(*this + 296))(this, v38, 0, 1, 1) & 1) == 0)
  {
    *a3 = 0.0;
    *a4 = 0.0;
    return;
  }

  memset(&v39, 0, sizeof(v39));
  FrameDuration = OZBehavior::getFrameDuration(this, &v39);
  (*(*this + 608))(v38, this, FrameDuration);
  memset(&v37, 0, sizeof(v37));
  time1 = v38[0];
  time2 = v38[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v40);
  time1 = v40;
  time2 = v39;
  PC_CMTimeSaferSubtract(&time1, &time2, &v36);
  v10 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble(this + 12, MEMORY[0x277CC08F0], 0.0);
  operator*(&v39, &v40, v11);
  time1 = v36;
  time2 = v40;
  PC_CMTimeSaferSubtract(&time1, &time2, &v37);
  time1 = *a2;
  time2 = v37;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    *a2 = v37;
  }

  memset(&v36, 0, sizeof(v36));
  time2 = v38[0];
  time1 = v37;
  PC_CMTimeSaferSubtract(&time1, &time2, &v36);
  time1 = v36;
  time2 = *v10;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    *a3 = 0.0;
    *a4 = 0.0;
  }

  v40 = v38[0];
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time2, &v40, &time1);
  *&a2->value = *&time1.value;
  v12 = time1.epoch;
  a2->epoch = time1.epoch;
  *&time1.value = *&a2->value;
  time1.epoch = v12;
  Seconds = CMTimeGetSeconds(&time1);
  time1 = v36;
  v14 = Seconds / CMTimeGetSeconds(&time1);
  if (!OZChannel::getValueAsInt((this + 536), a2, 0.0))
  {
    OZChannel::getValueAsDouble(this + 11, a2, 0.0);
    v22 = (1.0 - cos(v14 * 3.14159265)) * 0.5 * v21 + v14 * (1.0 - v21);
    OZChannel::getValueAsDouble((this + 928), a2, 0.0);
    v24 = v23;
    OZChannel::getValueAsDouble((this + 1080), a2, 0.0);
    v26 = v25;
    time1 = v36;
    v27 = v24 * CMTimeGetSeconds(&time1);
    time1 = v36;
    v28 = CMTimeGetSeconds(&time1);
    *a3 = v22 * v27;
    v20 = v22 * (v26 * v28);
    goto LABEL_18;
  }

  if (OZChannel::getValueAsInt((this + 536), a2, 0.0) == 1)
  {
    OZChannel::getValueAsDouble(this + 11, a2, 0.0);
    v16 = (1.0 - cos(v14 * 3.14159265)) * 0.5 * v15 + v14 * (1.0 - v15);
    OZChannel::getValueAsDouble(this + 9, a2, 0.0);
    v18 = v17;
    OZChannel::getValueAsDouble(this + 10, a2, 0.0);
    *a3 = v18 * v16;
    v20 = v19 * v16;
    goto LABEL_18;
  }

  OZChannel::getValueAsDouble(this + 9, &v36, 0.0);
  v30 = v29;
  OZChannel::getValueAsDouble(this + 10, &v36, 0.0);
  v32 = v31;
  if (v30 <= -0.99)
  {
    v34 = -1.0;
    *a3 = exp2(v14 * -6.64385619) + -1.0;
    time1 = *a2;
    time2 = v36;
    if (CMTimeCompare(&time1, &time2))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v33 = log(v30 + 1.0);
    v34 = exp2(v14 * (v33 / 0.693147181)) + -1.0;
  }

  *a3 = v34;
LABEL_15:
  if (v32 <= -0.99)
  {
    v20 = -1.0;
    *a4 = exp2(v14 * -6.64385619) + -1.0;
    time1 = *a2;
    time2 = v36;
    if (CMTimeCompare(&time1, &time2))
    {
      return;
    }
  }

  else
  {
    v35 = log(v32 + 1.0);
    v20 = exp2(v14 * (v35 / 0.693147181)) + -1.0;
  }

LABEL_18:
  *a4 = v20;
}

double OZGrowShrinkBehavior::getXMultiplier(OZGrowShrinkBehavior *this, CMTime *a2)
{
  v5 = 0.0;
  v3 = *a2;
  OZGrowShrinkBehavior::getScaleRates(this, &v3, &v5, &v4);
  result = v5 + 1.0;
  if (v5 + 1.0 < 0.0)
  {
    return 0.0;
  }

  return result;
}

double OZGrowShrinkBehavior::getYMultiplier(OZGrowShrinkBehavior *this, CMTime *a2)
{
  v4 = 0.0;
  v3 = *a2;
  OZGrowShrinkBehavior::getScaleRates(this, &v3, &v5, &v4);
  result = v4 + 1.0;
  if (v4 + 1.0 < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(void)::OZGrowShrinkBehavior_incrementTypeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(void)::OZGrowShrinkBehavior_incrementTypeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::_OZGrowShrinkBehavior_incrementTypeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_incrementTypeChanImpl::_OZGrowShrinkBehavior_incrementTypeChan)
  {
    operator new();
  }
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(void)::OZGrowShrinkBehavior_scaleRateChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(void)::OZGrowShrinkBehavior_scaleRateChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::_OZGrowShrinkBehavior_scaleRateChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanImpl::_OZGrowShrinkBehavior_scaleRateChan)
  {
    operator new();
  }
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(void)::OZGrowShrinkBehavior_scaleRateChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(void)::OZGrowShrinkBehavior_scaleRateChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::_OZGrowShrinkBehavior_scaleRateChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::_OZGrowShrinkBehavior_scaleRateChanInfo)
  {
    operator new();
  }
}

OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo *OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo::OZGrowShrinkBehavior_scaleRateChanInfo(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleRateChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 1.0, 0.01, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872C1610;
  *(this + 10) = &unk_2872C1630;
  return this;
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(void)::OZGrowShrinkBehavior_scaleDestChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(void)::OZGrowShrinkBehavior_scaleDestChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::_OZGrowShrinkBehavior_scaleDestChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanImpl::_OZGrowShrinkBehavior_scaleDestChan)
  {
    operator new();
  }
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(void)::OZGrowShrinkBehavior_scaleDestChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(void)::OZGrowShrinkBehavior_scaleDestChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::_OZGrowShrinkBehavior_scaleDestChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::_OZGrowShrinkBehavior_scaleDestChanInfo)
  {
    operator new();
  }
}

OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo *OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo::OZGrowShrinkBehavior_scaleDestChanInfo(OZGrowShrinkBehavior::OZGrowShrinkBehavior_scaleDestChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872C1700;
  *(this + 10) = &unk_2872C1720;
  return this;
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(void)::OZGrowShrinkBehavior_curvatureFactorChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(void)::OZGrowShrinkBehavior_curvatureFactorChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::_OZGrowShrinkBehavior_curvatureFactorChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_curvatureFactorChanImpl::_OZGrowShrinkBehavior_curvatureFactorChan)
  {
    operator new();
  }
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(void)::OZGrowShrinkBehavior_endTimeOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(void)::OZGrowShrinkBehavior_endTimeOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::_OZGrowShrinkBehavior_endTimeOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_endTimeOffsetChanImpl::_OZGrowShrinkBehavior_endTimeOffsetChan)
  {
    operator new();
  }
}

uint64_t OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl *this)
{
  if (atomic_load_explicit(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(void)::OZGrowShrinkBehavior_hudValueScaleChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(void)::OZGrowShrinkBehavior_hudValueScaleChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::_OZGrowShrinkBehavior_hudValueScaleChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZGrowShrinkBehavior::OZGrowShrinkBehavior_hudValueScaleChanImpl::_OZGrowShrinkBehavior_hudValueScaleChan)
  {
    operator new();
  }
}

void OZGrowShrinkCurveNode::OZGrowShrinkCurveNode(OZGrowShrinkCurveNode *this, OZGrowShrinkBehavior *a2, OZChannel *a3, char a4)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v6 = &unk_2872C18E0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
}

void OZGrowShrinkCurveNode::~OZGrowShrinkCurveNode(OZGrowShrinkCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZGrowShrinkCurveNode::solveNode(OZGrowShrinkCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v5 = *(this + 40);
  v6 = *(this + 4);
  v9 = *a2;
  if (v5 == 1)
  {
    XMultiplier = OZGrowShrinkBehavior::getXMultiplier(v6, &v9);
  }

  else
  {
    XMultiplier = OZGrowShrinkBehavior::getYMultiplier(v6, &v9);
  }

  return XMultiplier * a4;
}

void OZGrowShrinkCurveNode::solveNode(OZGrowShrinkCurveNode *this, OZCurveNodeParam *a2)
{
  v4 = *(a2 + 19);
  v5 = *(a2 + 10);
  v14 = *(a2 + 5);
  v13 = *(a2 + 4);
  v6 = *(a2 + 36);
  if (*(this + 40))
  {
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = *(v5 + 8 * v7);
        v9 = *(this + 4);
        v16 = v13;
        *(v4 + 8 * v7) = v8 * OZGrowShrinkBehavior::getXMultiplier(v9, &v16);
        v16 = v13;
        v15 = v14;
        PC_CMTimeSaferAdd(&v16, &v15, &v13);
        ++v7;
      }

      while (v7 < *(a2 + 36));
    }
  }

  else if (v6)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 8 * v10);
      v12 = *(this + 4);
      v16 = v13;
      *(v4 + 8 * v10) = v11 * OZGrowShrinkBehavior::getYMultiplier(v12, &v16);
      v16 = v13;
      v15 = v14;
      PC_CMTimeSaferAdd(&v16, &v15, &v13);
      ++v10;
    }

    while (v10 < *(a2 + 36));
  }
}

__n128 OZGrowShrinkCurveNode::getNeededRange(OZGrowShrinkCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZLogarithmicBehavior::OZLogarithmicBehavior(OZLogarithmicBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZRampBehavior::OZRampBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C19D8;
  *(v5 + 16) = &unk_2872C1D18;
  *(v5 + 48) = &unk_2872C1F70;
  *(v5 + 336) = &unk_2872C1FC8;
  *(v5 + 536) = &unk_2872C1FF0;
  OZChannelBase::setFlag((v5 + 1168), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 1168));
}

void OZLogarithmicBehavior::OZLogarithmicBehavior(OZLogarithmicBehavior *this, const OZLogarithmicBehavior *a2, char a3)
{
  OZRampBehavior::OZRampBehavior(this, a2, a3);
  *v3 = &unk_2872C19D8;
  v3[2] = &unk_2872C1D18;
  v3[6] = &unk_2872C1F70;
  v3[42] = &unk_2872C1FC8;
  v3[67] = &unk_2872C1FF0;
}

void non-virtual thunk toOZLogarithmicBehavior::~OZLogarithmicBehavior(OZLogarithmicBehavior *this)
{
  OZRampBehavior::~OZRampBehavior((this - 16));
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));
}

{
  OZRampBehavior::~OZRampBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZLogarithmicBehavior::~OZLogarithmicBehavior(OZLogarithmicBehavior *this)
{
  OZRampBehavior::~OZRampBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZLogarithmicBehavior::createCurveNode(OZLogarithmicBehavior *this, OZChannel *a2)
{
  var16 = a2->var16;
  v5 = *(var16 + 5);
  if (v5 != *(this + 78))
  {
    *(this + 78) = v5;
    (*(*this + 752))(this);
    var16 = a2->var16;
  }

  if (!OZChannelInfo::operator==(this + 544, var16))
  {
    OZChannelInfo::operator=(this + 544, a2->var16);
    (*(*this + 760))(this, this + 544, a2);
  }

  v6 = *(a2->var16 + 2);
  (*(a2->var0 + 101))(a2);
  v8 = 3.40282347e38;
  if (v6 != -3.40282347e38 && v7.n128_f64[0] != 3.40282347e38)
  {
    v8 = (*(a2->var0 + 101))(a2, v7, 3.40282347e38) - *(a2->var16 + 2);
  }

  *(this + 79) = v8;
  operator new();
}

void OZLogarithmicCurveNode::OZLogarithmicCurveNode(OZLogarithmicCurveNode *this, OZBehavior *a2, OZChannel *a3)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v5 = &unk_2872C2068;
  if (a2)
  {
  }

  else
  {
    v6 = 0;
  }

  *(this + 4) = v6;
}

void OZLogarithmicCurveNode::~OZLogarithmicCurveNode(OZLogarithmicCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZLogarithmicCurveNode::solveNode(OZLogarithmicCurveNode *this, const CMTime *a2, __n128 a3, double a4)
{
  memset(&v31, 0, sizeof(v31));
  (*(**(*(*(this + 4) + 376) + 32) + 336))(&v31, a3);
  v6 = *(this + 4);
  v28[0] = v31;
  if ((*(*v6 + 296))())
  {
    v29 = 0uLL;
    v30 = 0;
    FrameDuration = OZBehavior::getFrameDuration(*(this + 4), &v29);
    (*(**(this + 4) + 608))(v28, FrameDuration);
    memset(&v27, 0, sizeof(v27));
    time = v28[0];
    v8 = *(this + 4);
    OZBehavior::getFrameDuration(v8, &time1);
    v9 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((v8 + 1320), MEMORY[0x277CC08F0], 0.0);
    operator*(&time1, &v26, v10);
    time1 = time;
    time2 = v26;
    PC_CMTimeSaferAdd(&time1, &time2, &v27);
    memset(&v26, 0, sizeof(v26));
    time1 = v28[0];
    time2 = v28[1];
    PC_CMTimeSaferAdd(&time1, &time2, &time);
    time1 = time;
    *&time2.value = v29;
    time2.epoch = v30;
    PC_CMTimeSaferSubtract(&time1, &time2, &v25);
    v11 = *(this + 4);
    OZBehavior::getFrameDuration(v11, &time1);
    OZChannel::getValueAsDouble((v11 + 1472), v9, 0.0);
    operator*(&time1, &time, v12);
    time1 = v25;
    time2 = time;
    PC_CMTimeSaferSubtract(&time1, &time2, &v26);
    OZChannel::getValueAsDouble((*(this + 4) + 864), v9, 0.0);
    v14 = v13;
    OZChannel::getValueAsDouble((*(this + 4) + 1016), v9, 0.0);
    v16 = v15;
    if (vabdd_f64(v15, v14) >= 0.0000001)
    {
      time1 = v26;
      time2 = v27;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      Seconds = CMTimeGetSeconds(&time);
      if (fabs(Seconds) >= 0.0000001)
      {
        time1 = v31;
        time2 = v27;
        PC_CMTimeSaferSubtract(&time1, &time2, &time);
        v18 = CMTimeGetSeconds(&time) / Seconds;
        time1 = v31;
        time2 = v27;
        v19 = (v16 - v14) / 6.90775528;
        v20 = CMTimeCompare(&time1, &time2);
        v21 = v18 * 999.0;
        time1 = v31;
        time2 = v26;
        v22 = CMTimeCompare(&time1, &time2);
        v23 = 1.0;
        if (v20 >= 0)
        {
          v23 = v21 + 1.0;
        }

        if (v22 > 0)
        {
          v23 = 1000.0;
        }

        v14 = v14 + v19 * log(v23);
      }
    }

    return v14 + a4;
  }

  return a4;
}

__n128 OZLogarithmicCurveNode::solveNode(OZLogarithmicCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v9 = *(a2 + 5);
  result = *(a2 + 6);
  *&v8.value = result;
  v8.epoch = *(a2 + 14);
  if (*(a2 + 36))
  {
    v7 = 0;
    do
    {
      *(v2 + 8 * v7) = (*(*this + 16))(this, &v8, 0.0, *(v3 + 8 * v7));
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v12);
      result = *&v12.value;
      v8 = v12;
      ++v7;
    }

    while (v7 < *(a2 + 36));
  }

  return result;
}

void OZMoveToBehavior::OZMoveToBehavior(OZMoveToBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C2160;
  v5[2] = &unk_2872C2480;
  v5[6] = &unk_2872C26D8;
  v5[42] = &unk_2872C2730;
  v5[67] = &unk_2872C2758;
  PCURL::PCURL(v6, @"Move To Behavior Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 864), v6, (this + 56), 0xC8u, 0, 3u);
  PCString::~PCString(v6);
  PCURL::PCURL(v6, @"Move To Behavior Influence");
  OZChannelDouble::OZChannelDouble((this + 1752), 1.0, v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v6);
  PCURL::PCURL(v6, @"Move To Behavior Direction Enum");
  PCURL::PCURL(&v8, @"Move To Behavior Direction Label");
  OZChannelEnum::OZChannelEnum((this + 1904), 0, v6, &v8, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(v6);
  PCURL::PCURL(v6, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v8, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 2160), 0, v6, &v8, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(v6);
  *(this + 302) = 0;
  OZChannelBase::resetFlag((this + 864), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 864));
  OZChannelBase::setFlag((this + 1000), 0x20000, 0);
  (*(*(this + 125) + 128))(this + 1000);
  OZChannelBase::setFlag((this + 1152), 0x20000, 0);
  (*(*(this + 144) + 128))(this + 1152);
  OZChannelBase::setFlag((this + 1600), 0x20000, 0);
  (*(*(this + 200) + 128))(this + 1600);
  OZChannel::setMin((this + 1752), 0.0);
  OZChannel::setMax((this + 1752), 1.0);
  OZChannel::setCoarseDelta((this + 1752), 0.01);
  v8.var0 = 0x100000000;
  OZChannelEnum::setTags((this + 1904), &v8, 2);
  v7 = 0x500000004;
  *&v6[0].var0 = xmmword_260855404;
  OZChannelEnum::setTags((this + 2160), v6, 6);
}

void sub_2602699AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  OZChannelEnum::~OZChannelEnum((v11 + 2160));
  OZChannelEnum::~OZChannelEnum((v11 + 1904));
  OZChannel::~OZChannel((v11 + 1752));
  OZChannelPosition3D::~OZChannelPosition3D((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZMoveToBehavior::OZMoveToBehavior(OZMoveToBehavior *this, const OZMoveToBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872C2160;
  v5[2] = &unk_2872C2480;
  v5[6] = &unk_2872C26D8;
  v5[42] = &unk_2872C2730;
  v5[67] = &unk_2872C2758;
  OZChannelPosition3D::OZChannelPosition3D((v5 + 108), (a2 + 864), (this + 56));
  OZChannel::OZChannel((this + 1752), (a2 + 1752), (this + 56));
  *(this + 219) = &unk_287245C60;
  *(this + 221) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1904), (a2 + 1904), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 2160), (a2 + 2160), (this + 56));
  *(this + 302) = 0;
}

void sub_260269BC0(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 1904));
  OZChannel::~OZChannel(v2);
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 864));
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZMoveToBehavior::~OZMoveToBehavior(OZMoveToBehavior *this)
{
  *this = &unk_2872C2160;
  *(this + 2) = &unk_2872C2480;
  *(this + 6) = &unk_2872C26D8;
  *(this + 42) = &unk_2872C2730;
  *(this + 67) = &unk_2872C2758;
  OZChannelEnum::~OZChannelEnum((this + 2160));
  OZChannelEnum::~OZChannelEnum((this + 1904));
  OZChannel::~OZChannel((this + 1752));
  OZChannelPosition3D::~OZChannelPosition3D((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZMoveToBehavior::~OZMoveToBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZMoveToBehavior::~OZMoveToBehavior(OZMoveToBehavior *this)
{
  OZMoveToBehavior::~OZMoveToBehavior((this - 16));
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 48));
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 336));
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 536));
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZMoveToBehavior::~OZMoveToBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZMoveToBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelPosition::operator=(a1 + 864, v4 + 864);

  return OZChannelBase::operator=(a1 + 2160, v5 + 2160);
}

unint64_t OZMoveToBehavior::addCurveNodesToChannels(OZMoveToBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 1, 0);
  if (a2)
  {
  }

  else
  {
    v5 = 0;
  }

  *(this + 302) = v5;
  return v4;
}

double OZMoveToBehavior::solveNode(OZMoveToBehavior *this, uint64_t a2, const CMTime *a3, double a4, double a5)
{
  v9 = (*(*this + 768))(this, a4);
  if (a2 <= 2 && v9)
  {
    memset(&v60, 0, sizeof(v60));
    (*(**(*(this + 47) + 32) + 336))(&v60);
    v58 = 0uLL;
    v59 = 0;
    v10 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v10 + 336), &v58);
    (*(*this + 608))(&v55, this, FrameDuration);
    v54 = v55;
    memset(&v53, 0, sizeof(v53));
    *&time1.var0.var0 = v56;
    time1.var0.var3 = v57;
    *&time2.value = v58;
    time2.epoch = v59;
    PC_CMTimeSaferSubtract(&time1, &time2, &v53);
    time1.var0 = v60;
    time2 = v54;
    PC_CMTimeSaferSubtract(&time1, &time2, &v51);
    *&time1.var0.var0 = v58;
    time1.var0.var3 = v59;
    time2 = v53;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v12 = &v58;
    }

    else
    {
      v12 = &v53;
    }

    time2 = *v12;
    operator/(&v51, &time2, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    v14 = Seconds;
    if (Seconds > 1.0)
    {
      Seconds = 1.0;
    }

    if (v14 >= 0.0)
    {
      v15 = Seconds;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((this + 2160), MEMORY[0x277CC08F0], 0.0);
    v18 = OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v15);
    OZChannel::getValueAsDouble((this + 1752), a3, 0.0);
    v36 = v18 * v19;
    v20 = OZChannel::getValueAsInt((this + 1904), v16, 0.0);
    if (v20 == 1)
    {
      v21 = 1.0 - v36;
      if (1.0 - v36 < 0.0000001)
      {
        v21 = 0.0;
      }
    }

    else
    {
      v21 = v36;
    }

    v22 = v21 < 0.0000001;
    if (v20 == 1)
    {
      v22 = v21 > 1.0;
    }

    if (!v22)
    {
      v37 = v21;
      if (v21 == v14)
      {
        v23 = 0.0;
      }

      else if (v14 < 0.0000001 && v20 == 1 || (v23 = 0.0, v14 > 1.0) && v20 != 1)
      {
        time1.var0 = v54;
        time2 = v53;
        PC_CMTimeSaferAdd(&time1, &time2, &v51);
        v23 = (*(*this + 776))(this, a2, &v51, a5);
      }

      OZRenderState::OZRenderState(&time1);
      time1.var0 = v60;
      *&time1.var8 = 256;
      time1.var6 = 0;
      v49 = 0x3FF0000000000000;
      v46 = 0x3FF0000000000000;
      v43 = 0x3FF0000000000000;
      time2.value = 0x3FF0000000000000;
      *&time2.timescale = 0u;
      v42 = 0u;
      v44 = 0u;
      v45 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = *(*(this + 302) + 960);
      if (v24)
      {
        if (v25)
        {
          (*(*v25 + 1256))(v25, &time2, &time1);
        }
      }

      OZChannel::getValueAsDouble((this + 1000), &v60, 0.0);
      v35 = v26;
      OZChannel::getValueAsDouble((this + 1152), &v60, 0.0);
      v34 = v27;
      OZChannel::getValueAsDouble((this + 1600), &v60, 0.0);
      v29 = v28;
      v51.f64[0] = v35;
      v51.f64[1] = v34;
      v52 = v28;
      if (v37 < 1.0)
      {
        std::vector<double>::vector[abi:ne200100](__p, 3uLL);
        (*(*this + 744))(this, a3, __p);
        v30 = *(__p[0] + 2);
        v38 = *__p[0];
        v39 = v30;
        PCMatrix44Tmpl<double>::transform<double>(&time2.value, v38.f64, v38.f64);
        v31.f64[0] = v35;
        v31.f64[1] = v34;
        v51 = vaddq_f64(v38, vmulq_n_f64(vsubq_f64(v31, v38), v37));
        v52 = v39 + v37 * (v29 - v39);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      PCMatrix44Tmpl<double>::invert(&time2, &time2, 0.0);
      PCMatrix44Tmpl<double>::transform<double>(&time2.value, v51.f64, v51.f64);
      if (a2 == 2)
      {
        v32 = v52;
      }

      else if (a2 == 1)
      {
        v32 = v51.f64[1];
      }

      else
      {
        v32 = v51.f64[0];
      }

      return v23 + v32;
    }
  }

  return a5;
}

void sub_26026A55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZNegateBehavior::OZNegateBehavior(OZNegateBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v4 = &unk_2872C27D0;
  v4[2] = &unk_2872C2B10;
  v4[6] = &unk_2872C2D68;
  v4[42] = &unk_2872C2DC0;
  v4[67] = &unk_2872C2DE8;
}

void OZNegateBehavior::OZNegateBehavior(OZNegateBehavior *this, const OZNegateBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v3 = &unk_2872C27D0;
  v3[2] = &unk_2872C2B10;
  v3[6] = &unk_2872C2D68;
  v3[42] = &unk_2872C2DC0;
  v3[67] = &unk_2872C2DE8;
}

void non-virtual thunk toOZNegateBehavior::~OZNegateBehavior(OZNegateBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZNegateBehavior::~OZNegateBehavior(OZNegateBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZNegateBehavior::solveNode(OZNegateBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  v9 = 0uLL;
  v10 = 0;
  (*(**(*(this + 47) + 32) + 336))(&v9, a4);
  v7 = v9;
  v8 = v10;
  return (*(*this + 296))(this, &v7, 0, 1, 1);
}

void OZOscillateBehavior::OZOscillateBehavior(OZOscillateBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C2E60;
  v5[2] = &unk_2872C31A0;
  v5[6] = &unk_2872C33F8;
  v5[42] = &unk_2872C3450;
  v5[67] = &unk_2872C3478;
  PCURL::PCURL(&v7, @"Oscillate Behavior Wave Shape Enum");
  PCURL::PCURL(&v6, @"Oscillate Behavior Wave Shape");
  OZChannelEnum::OZChannelEnum((this + 864), &v7, &v6, (this + 56), 0xCDu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior Phase");
  OZChannelDouble::OZChannelDouble((this + 1120), &v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior Amplitude");
  OZChannelDouble::OZChannelDouble((this + 1272), 100.0, &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior Speed");
  OZChannelDouble::OZChannelDouble((this + 1424), 10.0, &v7, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior Absolute");
  OZChannelBool::OZChannelBool((this + 1576), 0, &v7, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior Start Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1728), &v7, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1880), &v7, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 2032), 0, &v7, (this + 56), 0xCFu, 2u, 0, 0);
  PCString::~PCString(&v7);
  *(this + 1092) = 0;
  OZChannel::setKeyframable((this + 1728), 0);
  OZChannel::setKeyframable((this + 1880), 0);
  OZChannelBase::resetFlag((this + 1728), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1728));
  OZChannelBase::resetFlag((this + 1880), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1880));
}

void sub_26026ACB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1880));
  OZChannel::~OZChannel((v10 + 1728));
  OZChannelBool::~OZChannelBool((v10 + 1576));
  OZChannel::~OZChannel((v10 + 1424));
  OZChannel::~OZChannel((v10 + 1272));
  OZChannel::~OZChannel((v10 + 1120));
  OZChannelEnum::~OZChannelEnum((v10 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZOscillateBehavior::OZOscillateBehavior(OZOscillateBehavior *this, const OZOscillateBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872C2E60;
  v5[2] = &unk_2872C31A0;
  v5[6] = &unk_2872C33F8;
  v5[42] = &unk_2872C3450;
  v5[67] = &unk_2872C3478;
  OZChannelEnum::OZChannelEnum((v5 + 108), (a2 + 864), (this + 56));
  OZChannel::OZChannel((this + 1120), a2 + 10, (this + 56));
  *(this + 140) = &unk_287245C60;
  *(this + 142) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1272), (a2 + 1272), (this + 56));
  *(this + 159) = &unk_287245C60;
  *(this + 161) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1424), (a2 + 1424), (this + 56));
  *(this + 178) = &unk_287245C60;
  *(this + 180) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 1576), (a2 + 1576), (this + 56));
  OZChannel::OZChannel((this + 1728), (a2 + 1728), (this + 56));
  *(this + 216) = &unk_287245C60;
  *(this + 218) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1880), (a2 + 1880), (this + 56));
  *(this + 235) = &unk_287245C60;
  *(this + 237) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 2032), (a2 + 2032), (this + 56));
  *(this + 1092) = *(a2 + 1092);
}

void sub_26026B080(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v6);
  OZChannel::~OZChannel(v5);
  OZChannelBool::~OZChannelBool((v1 + 1576));
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZOscillateBehavior::~OZOscillateBehavior(OZOscillateBehavior *this)
{
  *this = &unk_2872C2E60;
  *(this + 2) = &unk_2872C31A0;
  *(this + 6) = &unk_2872C33F8;
  *(this + 42) = &unk_2872C3450;
  *(this + 67) = &unk_2872C3478;
  OZChannelBool::~OZChannelBool((this + 2032));
  OZChannel::~OZChannel((this + 1880));
  OZChannel::~OZChannel((this + 1728));
  OZChannelBool::~OZChannelBool((this + 1576));
  OZChannel::~OZChannel((this + 1424));
  OZChannel::~OZChannel((this + 1272));
  OZChannel::~OZChannel((this + 1120));
  OZChannelEnum::~OZChannelEnum((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZOscillateBehavior::~OZOscillateBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZOscillateBehavior::~OZOscillateBehavior(OZOscillateBehavior *this)
{
  OZOscillateBehavior::~OZOscillateBehavior((this - 16));
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 48));
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 336));
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 536));
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZOscillateBehavior::~OZOscillateBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZOscillateBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, (v4 + 432));
  OZChannelBase::operator=(a1 + 1120, (v5 + 560));
  OZChannelBase::operator=(a1 + 1272, (v5 + 636));
  OZChannelBase::operator=(a1 + 1424, (v5 + 712));
  OZChannelBase::operator=(a1 + 1728, (v5 + 864));
  OZChannelBase::operator=(a1 + 1880, (v5 + 940));
  result = OZChannelBase::operator=(a1 + 2032, (v5 + 1016));
  *(a1 + 2184) = v5[1092];
  return result;
}

uint64_t OZOscillateBehavior::sceneNodeDidLoad(OZOscillateBehavior *this)
{
  result = OZSingleChannelBehavior::sceneNodeDidLoad(this);
  *(this + 1092) = 0;
  return result;
}

long double OZOscillateBehavior::waveFunc(OZOscillateBehavior *this, double a2)
{
  v3 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 864), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 1)
  {
    if (ValueAsInt == 2)
    {
      v3 = a2 + a2;
    }

    else
    {
      if (ValueAsInt != 3)
      {
        return v3;
      }

      if (a2 <= 0.25 || a2 >= 0.75)
      {
        v3 = a2 * 4.0;
        if (a2 * 4.0 > 1.0)
        {
          v6 = -4.0;
          return v3 + v6;
        }

        return v3;
      }

      v3 = (a2 + -0.5) * -4.0;
    }

    if (v3 > 1.0)
    {
      v6 = -2.0;
      return v3 + v6;
    }

    return v3;
  }

  if (ValueAsInt)
  {
    if (ValueAsInt == 1)
    {
      if (a2 > 0.5)
      {
        return -1.0;
      }

      else
      {
        return 1.0;
      }
    }

    return v3;
  }

  return sin(a2 * 6.28318531);
}

double OZOscillateBehavior::solveNode(OZOscillateBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v36, 0, sizeof(v36));
  (*(**(*(this + 47) + 32) + 336))(&v36, a4);
  v35[0] = v36;
  if ((*(*this + 296))(this, v35, 0, 1, 1) && (*(*this + 336))(this))
  {
    (*(*this + 608))(v35, this);
    memset(&v34, 0, sizeof(v34));
    time = v35[0];
    v8 = (*(*this + 336))(this);
    OZChannel::getValueAsDouble((this + 1728), &v36, 0.0);
    OZScene::getTimeForFrame(v8, v9, &v38);
    time1 = time;
    time2 = v38;
    v10 = &v34;
    PC_CMTimeSaferAdd(&time1, &time2, &v34);
    memset(&v33, 0, sizeof(v33));
    OZBehavior::getFrameDuration(this, &v37);
    time1 = v35[0];
    time2 = v35[1];
    PC_CMTimeSaferAdd(&time1, &time2, &time);
    time1 = time;
    time2 = v37;
    v11.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v38);
    v12 = (*(*this + 336))(this, v11);
    OZChannel::getValueAsDouble((this + 1880), &v36, 0.0);
    OZScene::getTimeForFrame(v12, v13, &time);
    time1 = v38;
    time2 = time;
    PC_CMTimeSaferSubtract(&time1, &time2, &v33);
    time1 = v36;
    time2 = v34;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v36;
      time2 = v33;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v10 = &v36;
      }

      else
      {
        v10 = &v33;
      }
    }

    v32 = *v10;
    time1 = *v10;
    time2 = v34;
    PC_CMTimeSaferSubtract(&time1, &time2, &v32);
    memset(&v31, 0, sizeof(v31));
    if (OZChannel::getValueAsInt((this + 2032), MEMORY[0x277CC08F0], 0.0))
    {
      (*(**(*(this + 47) + 32) + 320))(&v38);
      time1 = *a3;
      time2 = v38;
      PC_CMTimeSaferAdd(&time1, &time2, &time);
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v37);
      time1 = time;
      time2 = v37;
      PC_CMTimeSaferSubtract(&time1, &time2, &v31);
    }

    else
    {
      v31 = v36;
    }

    OZChannel::getValueAsDouble((this + 1120), &v31, 0.0);
    v15 = v14;
    OZChannel::getValueAsDouble((this + 1272), &v31, 0.0);
    v17 = v16;
    if (OZChannel::hasMoreThanOneKeypoint((this + 1424)) || OZBehavior::IsChannelAffectedByBehaviors((this + 1424), 0))
    {
      v30 = v15;
      v38 = v34;
      v18 = 0;
      if (OZChannel::getValueAsInt((this + 864), MEMORY[0x277CC08F0], 0.0) == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = 4;
      }

      v20 = v19;
      while (1)
      {
        OZChannel::getValueAsDouble((this + 1424), &v38, 0.0);
        v22 = v21 / 60.0;
        v23 = 1.0 / (v21 / 60.0);
        v24 = v22 <= 0.0 ? 100000000.0 : v23;
        memset(&v37, 0, sizeof(v37));
        OZFigTimeForChannelSeconds(&v37, v24 / v20, 0x40000);
        time1 = v38;
        time2 = v37;
        PC_CMTimeSaferAdd(&time1, &time2, &time);
        time1 = time;
        time2 = v32;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          break;
        }

        time2 = v38;
        time = v37;
        PC_CMTimeSaferAdd(&time2, &time, &time1);
        v38 = time1;
        ++v18;
      }

      time1 = v32;
      time2 = v38;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      v25 = v30 / 6.28318531 + v22 * ((v18 & (v19 - 1)) / v20 * v24 + CMTimeGetSeconds(&time));
    }

    else
    {
      OZChannel::getValueAsDouble((this + 1424), &v31, 0.0);
      time1 = v32;
      v27 = v15 / 6.28318531 + v26 * (CMTimeGetSeconds(&time1) / 60.0);
      time1.value = 0;
      modf(v27, &time1.value);
      v25 = v27 - *&time1.value;
      if (v27 - *&time1.value < 0.0)
      {
        v25 = v25 + 1.0;
      }
    }

    v28 = v17 * OZOscillateBehavior::waveFunc(this, v25);
    if (OZChannel::getValueAsInt((this + 1576), MEMORY[0x277CC08F0], 0.0) && (v17 > 0.0 && v28 < 0.0 || v17 < 0.0 && v28 > 0.0))
    {
      v28 = -v28;
    }

    return v28 + a5;
  }

  return a5;
}

void OZOscillateBehavior::didSetChannelInfo(OZOscillateBehavior *this, const OZChannelInfo *a2, OZChannel *a3)
{
  v5 = *(*(this + 175) + 40);
  OZChannel::setInfo((this + 1272), a2);
  v6 = 1.0;
  if ((*(this + 2184) & 1) == 0)
  {
    v6 = v5 / *(a2 + 5);
  }

  v7 = *(a2 + 2);
  if (v7 == -3.40282347e38 || (v8 = *(a2 + 1), v8 == 3.40282347e38))
  {
    if (fabs(*(*(this + 175) + 40) + -57.2957795) >= 0.0000001)
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
    if (v10 != 3.40282347e38 && (*(this + 2184) & 1) == 0)
    {
      v6 = v6 * (v9 / v10);
    }
  }

  if (vabdd_f64(1.0, v6) >= 0.0000001)
  {
    OZChannel::scaleChannel((this + 1272), v6);
  }

  OZChannel::setSliderMin((this + 1272), 0.0);
  OZChannel::setSliderMax((this + 1272), v9);
  (*(**(*(this + 173) + 8) + 256))();
  if (v9 > 0.0)
  {
    OZChannel::setMax((this + 1272), v9);
  }
}

void OZOscillateBehavior::didSkipApplyingToNonkeyframableChannel(OZOscillateBehavior *this, OZChannel *a2, __n128 a3)
{
  if (*(this + 2185) == 1)
  {
    OZSingleChannelBehavior::conformToChannel(this, a2, 0, a3);
  }
}

uint64_t OZOscillateBehavior::parseBegin(OZOscillateBehavior *this, PCSerializerReadStream *a2)
{
  *(this + 2184) = 0;
  v4 = *(a2 + 26);
  if (v4 < 5 || (v4 == 5 ? (v5 = *(a2 + 27) > 6u) : (v5 = 1), !v5))
  {
    *(this + 2185) = 1;
    OZChannel::setValue((this + 2032), MEMORY[0x277CC08F0], 1.0, 0);
  }

  return OZSingleChannelBehavior::parseBegin(this, a2);
}

uint64_t OZOscillateBehavior::parseElement(OZOscillateBehavior *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 110)
  {
    v7 = 0;
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v7);
    if (v7 == *(this + 324))
    {
      *(this + 2184) = 1;
    }
  }

  return OZSingleChannelBehavior::parseElement(this, a2, a3);
}

void OZPanBehavior::OZPanBehavior(OZPanBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C34F0;
  v5[2] = &unk_2872C3810;
  v5[6] = &unk_2872C3A68;
  v5[42] = &unk_2872C3AC0;
  v5[67] = &unk_2872C3AE8;
  PCURL::PCURL(v7, @"Pan Behavior Angle Start");
  OZChannelAngle::OZChannelAngle((this + 864), 0.0, v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Pan Behavior Angle End");
  OZChannelAngle::OZChannelAngle((this + 1016), 0.523598776, v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 1168), 0, v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Pan Behavior Axis Enum");
  PCURL::PCURL(&v6, @"Pan Behavior Axis Label");
  OZChannelEnum::OZChannelEnum((this + 1424), 1u, v7, &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  *(this + 210) = 0;
  OZChannel::setSliderMin((this + 864), -3.14159265);
  OZChannel::setSliderMax((this + 864), 3.14159265);
  OZChannel::setSliderMin((this + 1016), -3.14159265);
  OZChannel::setSliderMax((this + 1016), 3.14159265);
  v8 = 0x500000004;
  *&v7[0].var0 = xmmword_260855470;
  OZChannelEnum::setTags((this + 1168), v7, 6);
}

void sub_26026C234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelEnum::~OZChannelEnum((v11 + 1424));
  OZChannelEnum::~OZChannelEnum((v11 + 1168));
  OZChannel::~OZChannel((v11 + 1016));
  OZChannel::~OZChannel((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZPanBehavior::OZPanBehavior(OZPanBehavior *this, const OZPanBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872C34F0;
  *(v5 + 16) = &unk_2872C3810;
  *(v5 + 48) = &unk_2872C3A68;
  *(v5 + 336) = &unk_2872C3AC0;
  *(v5 + 536) = &unk_2872C3AE8;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287246030;
  *(this + 110) = &unk_287246390;
  OZChannel::OZChannel((this + 1016), (a2 + 1016), (this + 56));
  *(this + 127) = &unk_287246030;
  *(this + 129) = &unk_287246390;
  OZChannelEnum::OZChannelEnum((this + 1168), (a2 + 1168), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1424), (a2 + 1424), (this + 56));
  *(this + 210) = 0;
}

void sub_26026C484(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 1168));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZPanBehavior::~OZPanBehavior(OZPanBehavior *this)
{
  *this = &unk_2872C34F0;
  *(this + 2) = &unk_2872C3810;
  *(this + 6) = &unk_2872C3A68;
  *(this + 42) = &unk_2872C3AC0;
  *(this + 67) = &unk_2872C3AE8;
  OZChannelEnum::~OZChannelEnum((this + 1424));
  OZChannelEnum::~OZChannelEnum((this + 1168));
  OZChannel::~OZChannel((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZPanBehavior::~OZPanBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZPanBehavior::~OZPanBehavior(OZPanBehavior *this)
{
  OZPanBehavior::~OZPanBehavior((this - 16));
}

{
  OZPanBehavior::~OZPanBehavior((this - 48));
}

{
  OZPanBehavior::~OZPanBehavior((this - 336));
}

{
  OZPanBehavior::~OZPanBehavior((this - 536));
}

{
  OZPanBehavior::~OZPanBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZPanBehavior::~OZPanBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZPanBehavior::~OZPanBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZPanBehavior::~OZPanBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZPanBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1016, v5 + 1016);
  OZChannelBase::operator=(a1 + 1168, v5 + 1168);

  return OZChannelBase::operator=(a1 + 1424, v5 + 1424);
}

unint64_t OZPanBehavior::addCurveNodesToChannels(OZPanBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 0, 1);
  if (a2)
  {
  }

  else
  {
    v5 = 0;
  }

  *(this + 210) = v5;
  return v4;
}

double OZPanBehavior::solveNode(OZPanBehavior *this, unsigned int a2, const CMTime *a3, double a4, double a5)
{
  v8 = (*(*this + 768))(this, a4);
  if (a2 <= 2 && v8)
  {
    memset(&v28, 0, sizeof(v28));
    (*(**(*(this + 47) + 32) + 336))(&v28);
    v26 = 0uLL;
    v27 = 0;
    v9 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v9 + 336), &v26);
    (*(*this + 608))(v25, this, FrameDuration);
    v24 = v25[0];
    memset(&v23, 0, sizeof(v23));
    time1 = v25[1];
    *&time2.value = v26;
    time2.epoch = v27;
    PC_CMTimeSaferSubtract(&time1, &time2, &v23);
    time1 = v28;
    time2 = v24;
    PC_CMTimeSaferSubtract(&time1, &time2, &v22);
    *&time1.value = v26;
    time1.epoch = v27;
    time2 = v23;
    v11 = CMTimeCompare(&time1, &time2) >= 0 ? &v26 : &v23;
    time2 = *v11;
    operator/(&v22, &time2, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    if (Seconds >= 0.0)
    {
      if (Seconds <= 1.0)
      {
        v13 = Seconds;
      }

      else
      {
        v13 = 1.0;
      }

      v14 = MEMORY[0x277CC08F0];
      ValueAsInt = OZChannel::getValueAsInt((this + 1168), MEMORY[0x277CC08F0], 0.0);
      v16 = OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v13);
      OZChannel::getValueAsDouble((this + 864), &v28, 0.0);
      v18 = v17;
      OZChannel::getValueAsDouble((this + 1016), &v28, 0.0);
      v20 = v19;
      if (OZChannel::getValueAsInt((this + 1424), v14, 0.0) == a2)
      {
        return a5 - (v16 * (v18 - v20) - v18);
      }
    }
  }

  return a5;
}

void OZPointAtBehavior::OZPointAtBehavior(OZPointAtBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C3B60;
  v5[2] = &unk_2872C3E80;
  v5[6] = &unk_2872C40D8;
  v5[42] = &unk_2872C4130;
  v5[67] = &unk_2872C4158;
  PCURL::PCURL(v7, @"Point At Behavior Object");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 864), v7, (this + 56), 0xC8u, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Point At Behavior Transition");
  OZChannelPercent::OZChannelPercent((this + 1024), 0.5, v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 1176), 0, v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Point At Behavior Axis Enum");
  PCURL::PCURL(&v6, @"Point At Behavior Axis Label");
  OZChannelEnum::OZChannelEnum((this + 1432), 2u, v7, &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Point At Behavior Invert Axis");
  OZChannelBool::OZChannelBool((this + 1688), 1, v7, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(v7);
  *(this + 230) = 0;
  OZValueCache<OZPointAtCacheItem>::OZValueCache(this + 1848);
  *(this + 2016) = 0;
  *(this + 251) = 0;
  *(this + 1992) = 0u;
  *&v7[0].var0 = xmmword_2608554A0;
  v8 = 0x500000004;
  OZChannelEnum::setTags((this + 1176), v7, 6);
  OZChanSceneNodeRef::setAllowsCyclicDependencies(this + 864, 1);
  *(this + 249) = 0;
  *(this + 250) = 0;
  *(this + 251) = 0;
}

void sub_26026CE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelBool::~OZChannelBool((v11 + 1688));
  OZChannelEnum::~OZChannelEnum((v11 + 1432));
  OZChannelEnum::~OZChannelEnum((v11 + 1176));
  OZChannelPercent::~OZChannelPercent((v11 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZPointAtBehavior::OZPointAtBehavior(OZPointAtBehavior *this, const OZPointAtBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872C3B60;
  v5[2] = &unk_2872C3E80;
  v5[6] = &unk_2872C40D8;
  v5[42] = &unk_2872C4130;
  v5[67] = &unk_2872C4158;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 108), (a2 + 864), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 1024), (a2 + 1024), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1176), (a2 + 1176), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1432), (a2 + 1432), (this + 56));
  OZChannelBool::OZChannelBool((this + 1688), (a2 + 1688), (this + 56));
  *(this + 230) = 0;
  OZValueCache<OZPointAtCacheItem>::OZValueCache(this + 1848);
  *(this + 251) = 0;
  *(this + 1992) = 0u;
  *(this + 2016) = *(a2 + 2016);
  *(this + 249) = 0;
  *(this + 251) = 0;
  *(this + 250) = 0;
}

void sub_26026D06C(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 1688));
  OZChannelEnum::~OZChannelEnum((v1 + 1432));
  OZChannelEnum::~OZChannelEnum((v1 + 1176));
  OZChannelPercent::~OZChannelPercent((v1 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 864));
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZPointAtBehavior::~OZPointAtBehavior(OZPointAtBehavior *this)
{
  *this = &unk_2872C3B60;
  *(this + 2) = &unk_2872C3E80;
  *(this + 6) = &unk_2872C40D8;
  *(this + 42) = &unk_2872C4130;
  *(this + 67) = &unk_2872C4158;
  OZValueCache<OZPointAtCacheItem>::~OZValueCache(this + 1848);
  OZChannelBool::~OZChannelBool((this + 1688));
  OZChannelEnum::~OZChannelEnum((this + 1432));
  OZChannelEnum::~OZChannelEnum((this + 1176));
  OZChannelPercent::~OZChannelPercent((this + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZPointAtBehavior::~OZPointAtBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZPointAtBehavior::~OZPointAtBehavior(OZPointAtBehavior *this)
{
  OZPointAtBehavior::~OZPointAtBehavior((this - 16));
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 48));
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 336));
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 536));
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZPointAtBehavior::~OZPointAtBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZPointAtBehavior::flushCache(OZPointAtBehavior *this)
{
  OZValueCache<OZBoundsCacheItem>::flush(this + 1848);

  OZCameraBehavior::flushCache(this);
}

uint64_t OZPointAtBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 864, (v4 + 864));
  OZChannelBase::operator=(a1 + 1024, (v5 + 1024));
  OZChannelBase::operator=(a1 + 1176, (v5 + 1176));
  OZChannelBase::operator=(a1 + 1432, (v5 + 1432));
  result = OZChannelBase::operator=(a1 + 1688, (v5 + 1688));
  *(a1 + 2016) = v5[2016];
  *(a1 + 2000) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1992) = 0;
  return result;
}

unint64_t OZPointAtBehavior::addCurveNodesToChannels(OZPointAtBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 0, 1);
  if (a2)
  {
  }

  else
  {
    v5 = 0;
  }

  if (v5 != *(this + 230))
  {
    if ((*(this + 2016) & 1) == 0)
    {
      OZChannel::setValue((this + 1432), MEMORY[0x277CC08F0], 2.0, 0);
      v6 = 0.0;
      {
        v6 = 1.0;
      }

      OZChannel::setValue((this + 1688), MEMORY[0x277CC08F0], v6, 0);
      OZChannel::setDefaultValue((this + 1688), v6);
    }

    *(this + 230) = v5;
    *(this + 2016) = 1;
  }

  return v4;
}

void OZPointAtBehavior::getEvalDepChansForRef(int a1, int a2, void *lpsrc)
{
  if (lpsrc)
  {
    {
      operator new();
    }
  }
}

double OZPointAtBehavior::solveNode(OZPointAtBehavior *this, uint64_t a2, const CMTime *a3, double a4, double a5)
{
  v9 = (*(*this + 768))(this, a4);
  if (a2 <= 2)
  {
    if (v9)
    {
      TransformNode = OZChanTransformNodeRef::getTransformNode((this + 864));
      if (TransformNode)
      {
        v11 = TransformNode;
        v12 = *(this + 230);
        if (v12)
        {
          if (!v13)
          {
            goto LABEL_11;
          }

          v14 = v11[120];
          if (!v14)
          {
            goto LABEL_11;
          }

          if (!v15)
          {
            goto LABEL_11;
          }

          do
          {
            v16 = v15;
            v17 = v15[120];
            if (!v17)
            {
              break;
            }
          }

          while (v15);
          if ((*(*v16 + 1640))(v16))
          {
LABEL_11:
            memset(&v164, 0, sizeof(v164));
            (*(**(*(this + 47) + 32) + 336))(&v164);
            v162 = 0uLL;
            v163 = 0;
            v18 = (*(*this + 336))(this);
            FrameDuration = OZSceneSettings::getFrameDuration((v18 + 336), &v162);
            (*(*this + 608))(&v158, this, FrameDuration);
            v157 = v159;
            v156 = v158;
            v154 = 0uLL;
            v155 = 0;
            *&time1.var0.var0 = v160;
            time1.var0.var3 = v161;
            *&time2.var0.var0 = v162;
            time2.var0.var3 = v163;
            PC_CMTimeSaferSubtract(&time1, &time2, &v154);
            time1.var0 = v164;
            *&time2.var0.var0 = v156;
            time2.var0.var3 = v157;
            PC_CMTimeSaferSubtract(&time1, &time2, v172);
            *&time1.var0.var0 = v162;
            time1.var0.var3 = v163;
            *&time2.var0.var0 = v154;
            time2.var0.var3 = v155;
            v20 = CMTimeCompare(&time1, &time2) >= 0 ? &v162 : &v154;
            *&time2.var0.var0 = *v20;
            time2.var0.var3 = v20[1].n128_i64[0];
            operator/(v172, &time2, &time1);
            Seconds = CMTimeGetSeconds(&time1);
            if (Seconds >= 0.0)
            {
              if (Seconds <= 1.0)
              {
                v22 = Seconds;
              }

              else
              {
                v22 = 1.0;
              }

              v23 = 0.0;
              if (Seconds > 1.0)
              {
                *&time1.var0.var0 = v156;
                time1.var0.var3 = v157;
                *&time2.var0.var0 = v154;
                time2.var0.var3 = v155;
                PC_CMTimeSaferAdd(&time1, &time2, v172);
                v23 = (*(*this + 776))(this, a2, v172, a5);
              }

              v150[1] = 0xBFF0000000000000;
              v150[0] = &unk_2872C41D0;
              v151 = 0.0;
              v153 = 0.0;
              v152 = 0.0;
              if (OZValueCache<OZPointAtCacheItem>::find(this + 1848, v150, v22))
              {
                if (a2 == 2)
                {
                  v24 = v153;
                }

                else if (a2 == 1)
                {
                  v24 = v152;
                }

                else
                {
                  v24 = v151;
                }
              }

              else
              {
                OZChannel::getValueAsDouble((this + 1024), &v164, 0.0);
                v26 = 1.0;
                if (fabs(v25) >= 0.0000001)
                {
                  v27 = v22 / v25;
                  if (v27 <= 1.0)
                  {
                    v26 = v27;
                  }

                  if (v27 < 0.0)
                  {
                    v26 = 0.0;
                  }
                }

                v149 = v26;
                ValueAsInt = OZChannel::getValueAsInt((this + 1176), MEMORY[0x277CC08F0], 0.0);
                v149 = OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v149);
                OZCameraBehavior::getPositionBeforeThis(this, *(this + 230), a3, v148);
                std::vector<double>::vector[abi:ne200100](__p, 3uLL);
                (*(*this + 744))(this, a3, __p);
                v30 = *__p[0];
                v29 = *(__p[0] + 1);
                v31 = *(__p[0] + 2);
                v146[0] = *__p[0];
                *&v146[1] = v29;
                *&v146[2] = v31;
                memset(&v145, 0, sizeof(v145));
                if (v22 == 1.0)
                {
                  *&time1.var0.var0 = v156;
                  time1.var0.var3 = v157;
                  *&time2.var0.var0 = v154;
                  time2.var0.var3 = v155;
                  PC_CMTimeSaferAdd(&time1, &time2, &v145);
                }

                else
                {
                  v145 = v164;
                }

                OZRenderState::OZRenderState(&time1);
                time1.var0 = v145;
                OZRenderState::OZRenderState(&time2);
                time2.var0 = v164;
                time2.var8 = 0;
                v32 = (*(**(this + 230) + 1328))(*(this + 230));
                memset(v142, 0, 24);
                if (v33)
                {
                  *v172 = *&time1.var0.var0;
                  *&v172[16] = time1.var0.var3;
                  OZCamera::cameraAtTime(v33, v172);
                }

                *&v141[40] = 0x3FF0000000000000;
                *v141 = 0x3FF0000000000000;
                *&v138[40] = 0x3FF0000000000000;
                *v138 = 0x3FF0000000000000;
                memset(&v138[8], 0, 32);
                v139 = 0u;
                v140 = 0u;
                memset(&v141[8], 0, 32);
                (*(*v11 + 1256))(v11, v138, &time1);
                PCMatrix44Tmpl<double>::transform<double>(v138, v142[0].f64, v142[0].f64);
                *&v137[40] = 0x3FF0000000000000;
                *v137 = 0x3FF0000000000000;
                *&v134[40] = 0x3FF0000000000000;
                *v134 = 0x3FF0000000000000;
                memset(&v134[8], 0, 32);
                v135 = 0u;
                v136 = 0u;
                memset(&v137[8], 0, 32);
                v34 = *(*(this + 230) + 960);
                {
                  (*(*v35 + 1256))(v35, v134, &time2);
                  v36 = v148[0];
                }

                else
                {
                  v36 = v32 * v148[0];
                  v148[0] = v32 * v148[0];
                }

                v130 = v136;
                v131 = *v137;
                v132 = *&v137[16];
                v133 = *&v137[32];
                v126 = *v134;
                v127 = *&v134[16];
                v128 = *&v134[32];
                v129 = v135;
                PCMatrix44Tmpl<double>::rightTranslate(&v126, v36, v148[1], v148[2]);
                PCMatrix44Tmpl<double>::rightRotate(&v126, 4, v30, v29, v31);
                v125[4] = v130;
                v125[5] = v131;
                v125[6] = v132;
                v125[7] = v133;
                v125[0] = v126;
                v125[1] = v127;
                v125[2] = v128;
                v125[3] = v129;
                PCMatrix44Tmpl<double>::invert(v125, v125, 0.0);
                PCMatrix44Tmpl<double>::transform<double>(v125, v142[0].f64, v142[0].f64);
                v121 = v130;
                v122 = v131;
                v123 = v132;
                v124 = v133;
                v117 = v126;
                v118 = v127;
                v119 = v128;
                v120 = v129;
                if (!v13)
                {
                  v174 = v140;
                  *v175 = *v141;
                  *&v175[16] = *&v141[16];
                  *&v175[32] = *&v141[32];
                  *v172 = *v138;
                  *&v172[16] = *&v138[16];
                  *&v172[32] = *&v138[32];
                  v173 = v139;
                  PCMatrix44Tmpl<double>::invert(v172, v172, 0.0);
                  PCMatrix44Tmpl<double>::leftMult(&v117, v172);
                }

                memset(v116, 0, sizeof(v116));
                v37 = OZChannel::getValueAsInt((this + 1432), &v164, 0.0);
                v99 = v30;
                v100 = v29;
                if (OZChannel::getValueAsInt((this + 1688), &v164, 0.0))
                {
                  v38 = -1.0;
                }

                else
                {
                  v38 = 1.0;
                }

                v116[v37] = v38;
                v114 = v142[0];
                v115 = v142[1].f64[0];
                v39 = sqrt(vaddvq_f64(vmulq_f64(v114, v114)) + v115 * v115);
                if (fabs(v39) >= 0.000000100000001)
                {
                  v114 = vdivq_f64(v142[0], vdupq_lane_s64(*&v39, 0));
                  v115 = v142[1].f64[0] / v39;
                }

                v111 = 1.0;
                v112 = 0uLL;
                v113 = 0.0;
                v108 = 0x3FF0000000000000uLL;
                v109 = 0;
                v110 = 0;
                PCQuat<double>::setRotation(&v111, v116, v114.f64);
                v96 = v31;
                v97 = v22;
                v98 = v23;
                slerp<double>(&v108, &v111, &v149, v172);
                v40 = 0;
                v111 = *v172;
                v112 = *&v172[8];
                v113 = *&v172[24];
                v165 = 0uLL;
                *&v166 = 0;
                v41 = vdup_n_s32(v37 == 2);
                v42.i64[0] = v41.u32[0];
                v42.i64[1] = v41.u32[1];
                v101 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v42, 0x3FuLL)), xmmword_2603426F0, xmmword_260342700);
                *(&v165 + v37) = v38;
                v43 = sqrt(*&v165 * *&v165 + *(&v165 + 1) * *(&v165 + 1) + *&v166 * *&v166);
                if (fabs(v43) < 0.000000100000001)
                {
                  v43 = 1.0;
                }

                v44 = *&v165 / v43;
                v45 = *(&v165 + 1) / v43;
                v46 = *&v166 / v43;
                v47 = -3.40282347e38;
                v48 = 2880;
                v49 = -3.40282347e38;
                do
                {
                  v103 = 0.0;
                  v104 = v101;
                  v50 = __sincos_stret((v40 / 2880.0 + -1.0) * 3.14159265 * 0.5);
                  *v51.i64 = *&v112 * (v50.__sinval * v45) - *(&v112 + 1) * (v50.__sinval * v44) + v50.__cosval * v113 + v111 * (v50.__sinval * v46);
                  *&v172[16] = v50.__cosval * *(&v112 + 1) + v111 * (v50.__sinval * v45) + v113 * (v50.__sinval * v44) - *&v112 * (v50.__sinval * v46);
                  *&v172[24] = *v51.i64;
                  *v52.i64 = v50.__cosval * *&v112 + v111 * (v50.__sinval * v44) + *(&v112 + 1) * (v50.__sinval * v46) - v113 * (v50.__sinval * v45);
                  *&v172[8] = *v52.i64;
                  *v172 = v50.__cosval * v111 - (v113 * (v50.__sinval * v46) + *&v112 * (v50.__sinval * v44) + *(&v112 + 1) * (v50.__sinval * v45));
                  PCQuat<double>::transform<double>(v172, &v103, v52, v51);
                  v53 = *v104.i64;
                  v54 = v103 * *&v119 + *v104.i64 * *(&v119 + 1) + *&v104.i64[1] * *&v120;
                  v55 = v103 * *&v121;
                  v103 = v103 * *&v117 + *v104.i64 * *(&v117 + 1) + *&v104.i64[1] * *&v118;
                  *v104.i64 = v54;
                  v56 = v55 + v53 * *(&v121 + 1) + *&v104.i64[1] * *&v122;
                  *&v104.i64[1] = v56;
                  if (v37 == 2)
                  {
                    v56 = v54;
                  }

                  if (v56 > v49)
                  {
                    v49 = v56;
                    v47 = (v40 / 2880.0 + -1.0) * 3.14159265;
                  }

                  v40 += 2;
                  --v48;
                }

                while (v48);
                v57 = __sincos_stret(v47 * 0.5);
                v58 = v57.__sinval * v46;
                v94 = v57.__cosval * v111 - (v113 * (v57.__sinval * v46) + *&v112 * (v57.__sinval * v44) + *(&v112 + 1) * (v57.__sinval * v45));
                v95 = v57.__cosval * *&v112 + v111 * (v57.__sinval * v44) + *(&v112 + 1) * (v57.__sinval * v46) - v113 * (v57.__sinval * v45);
                v59 = *&v112 * (v57.__sinval * v45) - *(&v112 + 1) * (v57.__sinval * v44) + v57.__cosval * v113 + v111 * (v57.__sinval * v46);
                *(&v112 + 1) = v57.__cosval * *(&v112 + 1) + v111 * (v57.__sinval * v45) + v113 * (v57.__sinval * v44) - *&v112 * v58;
                v102 = *(&v112 + 1);
                v113 = v59;
                v111 = v94;
                *&v112 = v95;
                v106 = 0uLL;
                v107 = 0.0;
                v60 = __sincos_stret(v99 * 0.5);
                v61 = v60.__sinval * 0.0;
                v62 = __sincos_stret(v100 * 0.5);
                v63 = v62.__sinval * 0.0;
                v64 = __sincos_stret(v96 * 0.5);
                v65 = v60.__cosval * v62.__cosval - (v61 * v63 + v61 * v62.__sinval + v60.__sinval * v63);
                v66 = v60.__sinval * v62.__cosval + v60.__cosval * v63 + v61 * v62.__sinval - v61 * v63;
                v67 = v61 * v62.__cosval + v60.__cosval * v62.__sinval + v60.__sinval * v63 - v61 * v63;
                v68 = v61 * v63 - v60.__sinval * v62.__sinval + v61 * v62.__cosval + v60.__cosval * v63;
                v69 = v64.__sinval * 0.0 * v66;
                v70 = v64.__sinval * 0.0 * v67;
                v71 = v64.__cosval * v65 - (v64.__sinval * v68 + v69 + v70);
                v72 = v64.__sinval * 0.0 * v65;
                v73 = v64.__cosval * v68 + v64.__sinval * v65;
                v74 = v64.__sinval * 0.0 * v68;
                v75 = v64.__sinval * v67 - v74 + v64.__cosval * v66 + v72;
                v76 = v74 - v64.__sinval * v66 + v64.__cosval * v67 + v72;
                v77 = v69 - v70 + v73;
                v78 = v71 * v94 - (v77 * v59 + v75 * v95 + v76 * v102);
                v79 = v71 * v95 + v75 * v94;
                v80 = v71 * v102 + v76 * v94;
                v81 = v71 * v59 + v77 * v94;
                v82 = v76 * v59 - v77 * v102;
                v83 = v77 * v95 - v75 * v59;
                v84 = v75 * v102 - v76 * v95;
                v85 = v82 + v79;
                v86 = v83 + v80;
                v87 = v84 + v81;
                v88 = sqrt(v78 * v78 + v87 * v87 + v85 * v85 + v86 * v86);
                if (v88 == 0.0)
                {
                  v104 = 0uLL;
                  v105 = 0.0;
                  v89 = 1.0;
                }

                else
                {
                  *v104.i64 = v85 / v88;
                  *&v104.i64[1] = v86 / v88;
                  v105 = v87 / v88;
                  v89 = v78 / v88;
                }

                v23 = v98;
                v103 = v89;
                *&v175[40] = 0x3FF0000000000000;
                *v175 = 0x3FF0000000000000;
                *&v172[40] = 0x3FF0000000000000;
                *v172 = 0x3FF0000000000000;
                memset(&v172[8], 0, 32);
                v173 = 0u;
                v174 = 0u;
                memset(&v175[8], 0, 32);
                PCMatrix44Tmpl<double>::setRotationFromQuaternion(v172, &v103);
                v167 = 0u;
                v166 = 0u;
                v165 = 0u;
                v169 = 0u;
                v170 = 0u;
                v171 = 0;
                v168 = 4;
                PCMatrix44Tmpl<double>::getTransformation(v172, &v165);
                v90 = 0;
                v106 = v169;
                v107 = *&v170;
                do
                {
                  *(&v106 + v90 * 8) = *(&v106 + v90 * 8) + vcvtmd_s64_f64((*&v146[v90] - *(&v106 + v90 * 8)) / 6.28318531 + 0.5 + 0.0000001) * 6.28318531;
                  ++v90;
                }

                while (v90 != 3);
                v91 = *(&v106 + v37);
                if (fabs(v91) < 0.01)
                {
                  v91 = 0.0;
                }

                *(&v106 + v37) = v91;
                v92 = vmulq_f64(*(v142 + 8), *(v142 + 8));
                if (v142[0].f64[0] * v142[0].f64[0] + v92.f64[0] + v92.f64[1] >= 0.001)
                {
                  *&v172[8] = v97;
                  *v172 = &unk_2872C41D0;
                  *&v172[16] = v106;
                  *&v172[32] = v107;
                  OZValueCache<OZPointAtCacheItem>::add(this + 1848, v172);
                }

                v107 = *(this + 251);
                v106 = *(this + 1992);
                if (a2 == 1)
                {
                  v24 = *(&v106 + 1);
                }

                else if (a2)
                {
                  v24 = v107;
                }

                else
                {
                  v24 = *&v106;
                }

                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              return v23 + v24;
            }
          }
        }
      }
    }
  }

  return a5;
}

void sub_26026E7C0(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(&STACK[0x318]);
  v2 = STACK[0x608];
  if (STACK[0x608])
  {
    STACK[0x610] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t OZValueCache<OZPointAtCacheItem>::find(uint64_t a1, uint64_t a2, double a3)
{
  PCSharedMutex::lock_shared((a1 + 40));
  for (i = *(a1 + 16); ; i = *(i + 8))
  {
    if (i == a1 + 8)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = *(i + 24);
    if (v7 == a3)
    {
      break;
    }
  }

  *(a2 + 8) = v7;
  v9 = *(i + 32);
  *(a2 + 32) = *(i + 48);
  *(a2 + 16) = v9;
  v8 = 1;
LABEL_7:
  PCSharedMutex::unlock_shared((a1 + 40));
  return v8;
}

void OZValueCache<OZPointAtCacheItem>::add(uint64_t a1, uint64_t a2)
{
  PCSharedMutex::lock((a1 + 40));
  std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(a1 + 8, *(a2 + 8));
  if (*(a1 + 24) >= *(a1 + 32))
  {
    std::list<OZProjectedBoundsCacheItem>::pop_front(a1 + 8);
  }

  std::list<OZPointAtCacheItem>::push_back();
}

uint64_t OZValueCache<OZPointAtCacheItem>::OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872C4208;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_260347AE0;
  PCSharedMutex::PCSharedMutex((a1 + 40));
  return a1;
}

void OZValueCache<OZPointAtCacheItem>::~OZValueCache(uint64_t a1)
{
  OZValueCache<OZPointAtCacheItem>::~OZValueCache(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZValueCache<OZPointAtCacheItem>::~OZValueCache(uint64_t a1)
{
  *a1 = &unk_2872C4208;
  OZValueCache<OZBoundsCacheItem>::flush(a1);
  PCSharedMutex::~PCSharedMutex((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  return a1;
}

void OZRandomizeBehavior::OZRandomizeBehavior(OZRandomizeBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZWriggleBehavior::OZWriggleBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C4238;
  *(v5 + 16) = &unk_2872C4578;
  *(v5 + 48) = &unk_2872C47D0;
  *(v5 + 336) = &unk_2872C4828;
  *(v5 + 536) = &unk_2872C4850;
  OZChannelBase::setFlag((v5 + 1704), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 1704));
  OZChannel::setDefaultValue((this + 992), 10.0);
  OZChannelBase::reset((this + 992), 0);
  OZChannel::setDefaultValue((this + 1552), 10.0);
  OZChannelBase::reset((this + 1552), 0);
  OZChannel::setSliderMax((this + 1552), 20.0);
}

void OZRandomizeBehavior::OZRandomizeBehavior(OZRandomizeBehavior *this, const OZRandomizeBehavior *a2, char a3)
{
  OZWriggleBehavior::OZWriggleBehavior(this, a2, a3);
  *v3 = &unk_2872C4238;
  v3[2] = &unk_2872C4578;
  v3[6] = &unk_2872C47D0;
  v3[42] = &unk_2872C4828;
  v3[67] = &unk_2872C4850;
}

void non-virtual thunk toOZRandomizeBehavior::~OZRandomizeBehavior(OZRandomizeBehavior *this)
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

void OZRandomizeBehavior::~OZRandomizeBehavior(OZRandomizeBehavior *this)
{
  OZWriggleBehavior::~OZWriggleBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZRampBehavior::OZRampBehavior(OZRampBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C48C8;
  v5[2] = &unk_2872C4C08;
  v5[6] = &unk_2872C4E60;
  v5[42] = &unk_2872C4EB8;
  v5[67] = &unk_2872C4EE0;
  PCURL::PCURL(&v6, @"Ramp Behavior Start Value");
  OZChannelDouble::OZChannelDouble((this + 864), &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Ramp Behavior End Value");
  OZChannelDouble::OZChannelDouble((this + 1016), &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Ramp Behavior Curvature");
  OZChannelPercent::OZChannelPercent((this + 1168), 0.0, &v6, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Ramp Behavior Start Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1320), &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Ramp Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1472), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 1320), 0);
  OZChannel::setKeyframable((this + 1472), 0);
  OZChannel::setKeyframable((this + 864), 0);
  OZChannel::setKeyframable((this + 1016), 0);
  OZChannel::setKeyframable((this + 1168), 0);
  OZChannelBase::resetFlag((this + 1320), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1320));
  OZChannelBase::resetFlag((this + 1472), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1472));
}

void sub_26026F0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1320));
  OZChannelPercent::~OZChannelPercent((v10 + 1168));
  OZChannel::~OZChannel((v10 + 1016));
  OZChannel::~OZChannel((v10 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZRampBehavior::OZRampBehavior(OZRampBehavior *this, const OZRampBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872C48C8;
  *(v5 + 16) = &unk_2872C4C08;
  *(v5 + 48) = &unk_2872C4E60;
  *(v5 + 336) = &unk_2872C4EB8;
  *(v5 + 536) = &unk_2872C4EE0;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1016), (a2 + 1016), (this + 56));
  *(this + 127) = &unk_287245C60;
  *(this + 129) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 1168), (a2 + 1168), (this + 56));
  OZChannel::OZChannel((this + 1320), (a2 + 1320), (this + 56));
  *(this + 165) = &unk_287245C60;
  *(this + 167) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1472), (a2 + 1472), (this + 56));
  *(this + 184) = &unk_287245C60;
  *(this + 186) = &unk_287245FC0;
}

void sub_26026F3B0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v4);
  OZChannelPercent::~OZChannelPercent((v1 + 1168));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZRampBehavior::~OZRampBehavior(OZRampBehavior *this)
{
  *this = &unk_2872C48C8;
  *(this + 2) = &unk_2872C4C08;
  *(this + 6) = &unk_2872C4E60;
  *(this + 42) = &unk_2872C4EB8;
  *(this + 67) = &unk_2872C4EE0;
  OZChannel::~OZChannel((this + 1472));
  OZChannel::~OZChannel((this + 1320));
  OZChannelPercent::~OZChannelPercent((this + 1168));
  OZChannel::~OZChannel((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZRampBehavior::~OZRampBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRampBehavior::~OZRampBehavior(OZRampBehavior *this)
{
  OZRampBehavior::~OZRampBehavior((this - 16));
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));
}

{
  OZRampBehavior::~OZRampBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRampBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1016, v5 + 1016);
  OZChannelBase::operator=(a1 + 1168, v5 + 1168);
  OZChannelBase::operator=(a1 + 1320, v5 + 1320);

  return OZChannelBase::operator=(a1 + 1472, v5 + 1472);
}

double OZRampBehavior::solveNode(OZRampBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v30, 0, sizeof(v30));
  (*(**(*(this + 47) + 32) + 336))(&v30, a4);
  v29[0] = v30;
  if ((*(*this + 296))(this, v29, 0, 1, 1) && (*(*this + 336))(this))
  {
    (*(*this + 608))(v29, this);
    memset(&v28, 0, sizeof(v28));
    v31 = *&v29[0].value;
    epoch = v29[0].epoch;
    v7 = (*(*this + 336))(this);
    v8 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 1320), MEMORY[0x277CC08F0], 0.0);
    OZScene::getTimeForFrame(v7, v9, &v26);
    *&time1.value = v31;
    time1.epoch = epoch;
    *&time2.value = v26;
    time2.epoch = v27;
    PC_CMTimeSaferAdd(&time1, &time2, &v28);
    v26 = 0uLL;
    v27 = 0;
    OZBehavior::getFrameDuration(this, &v23);
    time1 = v29[0];
    time2 = v29[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v31);
    *&time1.value = v31;
    time1.epoch = epoch;
    *&time2.value = v23;
    time2.epoch = v24;
    v10.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v25);
    v11 = (*(*this + 336))(this, v10);
    OZChannel::getValueAsDouble((this + 1472), v8, 0.0);
    OZScene::getTimeForFrame(v11, v12, &v31);
    time1 = v25;
    *&time2.value = v31;
    time2.epoch = epoch;
    PC_CMTimeSaferSubtract(&time1, &time2, &v26);
    time1 = v30;
    time2 = v28;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v13 = MEMORY[0x277CC08F0];
      v14 = (this + 864);
      goto LABEL_7;
    }

    time1 = v30;
    *&time2.value = v26;
    time2.epoch = v27;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v13 = MEMORY[0x277CC08F0];
      v14 = (this + 1016);
LABEL_7:
      OZChannel::getValueAsDouble(v14, v13, 0.0);
      return v15 + a5;
    }

    v31 = 0uLL;
    epoch = 0;
    *&time1.value = v26;
    time1.epoch = v27;
    time2 = v28;
    PC_CMTimeSaferSubtract(&time1, &time2, &v31);
    *&time1.value = v31;
    time1.epoch = epoch;
    time2 = *v8;
    if (CMTimeCompare(&time1, &time2))
    {
      OZChannel::getValueAsDouble((this + 864), v8, 0.0);
      v18 = v17;
      OZChannel::getValueAsDouble((this + 1016), v8, 0.0);
      v20 = v19 - v18;
      time1 = v30;
      time2 = v28;
      PC_CMTimeSaferSubtract(&time1, &time2, &v25);
      operator/(&v25.value, &v31, &time1);
      Seconds = CMTimeGetSeconds(&time1);
      OZChannel::getValueAsDouble((this + 1168), v8, 0.0);
      return v18 + v20 * (v22 * ((1.0 - cos(Seconds * 3.14159265)) * 0.5) + Seconds * (1.0 - v22)) + a5;
    }

    else
    {
      return 0.0;
    }
  }

  return a5;
}

void OZRampBehavior::didSetChannelInfo(OZRampBehavior *this, const OZChannelInfo *a2, OZChannel *a3)
{
  OZChannel::setInfo((this + 864), a2);
  OZChannel::setInfo((this + 1016), a2);
  v6 = *(a2 + 2);
  if (v6 == -3.40282347e38 || (v7 = *(a2 + 1), v7 == 3.40282347e38))
  {
    if (fabs(*(*(this + 124) + 40) + -57.2957795) >= 0.0000001)
    {
      v8 = 100.0;
    }

    else
    {
      v8 = 6.28318531;
    }
  }

  else
  {
    v8 = v7 - v6;
    v9 = *(this + 79);
    if (v9 != 3.40282347e38)
    {
      v10 = v8 / v9;
      v11 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((this + 864), MEMORY[0x277CC08F0], 0.0);
      OZChannel::setValue((this + 864), v11, v10 * v12, 0);
      OZChannel::getValueAsDouble((this + 1016), v11, 0.0);
      OZChannel::setValue((this + 1016), v11, v10 * v13, 0);
    }
  }

  v17 = 0.0;
  (*(**(a3->var14 + 1) + 264))(*(a3->var14 + 1), &v17);
  v14 = v17;
  v17 = 0.0;
  (*(**(a3->var14 + 1) + 256))();
  if (v17 == 3.40282347e38 || v14 == -3.40282347e38)
  {
    v16 = 3.40282347e38;
  }

  else
  {
    v16 = v17 - v14;
  }

  OZChannel::setSliderMin((this + 864), 0.0);
  OZChannel::setSliderMax((this + 864), v8);
  OZChannel::setMin((this + 864), -v16);
  OZChannel::setMax((this + 864), v16);
  OZChannel::setSliderMin((this + 1016), 0.0);
  OZChannel::setSliderMax((this + 1016), v8);
  OZChannel::setMin((this + 1016), -v16);
  OZChannel::setMax((this + 1016), v16);
}

void OZRateBehavior::OZRateBehavior(OZRateBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C4F58;
  v5[2] = &unk_2872C5298;
  v5[6] = &unk_2872C54F0;
  v5[42] = &unk_2872C5548;
  v5[67] = &unk_2872C5570;
  PCURL::PCURL(&v6, @"Rate Behavior Rate");
  OZChannelDouble::OZChannelDouble((this + 864), &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Rate Behavior Curvature");
  OZChannelPercent::OZChannelPercent((this + 1016), 0.0, &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Rate Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1168), &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 864), 0);
  OZChannel::setKeyframable((this + 1016), 0);
  OZChannel::setKeyframable((this + 1168), 0);
  OZChannelBase::resetFlag((this + 1168), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1168));
}

void sub_26027000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPercent::~OZChannelPercent((v10 + 1016));
  OZChannel::~OZChannel((v10 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZRateBehavior::OZRateBehavior(OZRateBehavior *this, const OZRateBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872C4F58;
  *(v5 + 16) = &unk_2872C5298;
  *(v5 + 48) = &unk_2872C54F0;
  *(v5 + 336) = &unk_2872C5548;
  *(v5 + 536) = &unk_2872C5570;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 1016), (a2 + 1016), (this + 56));
  OZChannel::OZChannel((this + 1168), (a2 + 1168), (this + 56));
  *(this + 146) = &unk_287245C60;
  *(this + 148) = &unk_287245FC0;
}

void sub_260270200(_Unwind_Exception *a1)
{
  OZChannelPercent::~OZChannelPercent((v1 + 1016));
  OZChannel::~OZChannel(v2);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZRateBehavior::~OZRateBehavior(OZRateBehavior *this)
{
  *this = &unk_2872C4F58;
  *(this + 2) = &unk_2872C5298;
  *(this + 6) = &unk_2872C54F0;
  *(this + 42) = &unk_2872C5548;
  *(this + 67) = &unk_2872C5570;
  OZChannel::~OZChannel((this + 1168));
  OZChannelPercent::~OZChannelPercent((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZRateBehavior::~OZRateBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRateBehavior::~OZRateBehavior(OZRateBehavior *this)
{
  OZRateBehavior::~OZRateBehavior((this - 16));
}

{
  OZRateBehavior::~OZRateBehavior((this - 48));
}

{
  OZRateBehavior::~OZRateBehavior((this - 336));
}

{
  OZRateBehavior::~OZRateBehavior((this - 536));
}

{
  OZRateBehavior::~OZRateBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRateBehavior::~OZRateBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRateBehavior::~OZRateBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZRateBehavior::~OZRateBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRateBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1016, v5 + 1016);

  return OZChannelBase::operator=(a1 + 1168, v5 + 1168);
}

Float64 OZRateBehavior::solveNode(OZRateBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v20, 0, sizeof(v20));
  (*(**(*(this + 47) + 32) + 336))(&v20, a4);
  v18[0] = v20;
  if ((*(*this + 296))(this, v18, 0, 1, 1))
  {
    memset(&v19, 0, sizeof(v19));
    FrameDuration = OZBehavior::getFrameDuration(this, &v19);
    (*(*this + 608))(v18, this, FrameDuration);
    memset(&v17, 0, sizeof(v17));
    time2 = v18[0];
    time1 = v20;
    PC_CMTimeSaferSubtract(&time1, &time2, &v17);
    memset(&v16, 0, sizeof(v16));
    v15 = v18[1];
    OZChannel::getValueAsDouble((this + 1168), MEMORY[0x277CC08F0], 0.0);
    operator*(&v19, &v14, v8);
    time1 = v15;
    time2 = v14;
    PC_CMTimeSaferSubtract(&time1, &time2, &v16);
    time1 = v16;
    time2 = v19;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      time1 = v17;
      time2 = v16;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        v17 = v16;
      }

      OZBehavior::getFrameDuration(this, &v14);
      time1 = v16;
      time2 = v14;
      PC_CMTimeSaferSubtract(&time1, &time2, &v15);
      operator/(&v17.value, &v15, &time1);
      Seconds = CMTimeGetSeconds(&time1);
      OZChannel::getValueAsDouble((this + 1016), MEMORY[0x277CC08F0], 0.0);
      v11 = v10 * ((1.0 - cos(Seconds * 3.14159265)) * 0.5) + Seconds * (1.0 - v10);
      if ((~v16.flags & 0x11) == 0)
      {
        CMTimeMake(&time1, 10, 1);
        v16 = time1;
      }

      memset(&time1, 0, sizeof(time1));
      OZChannel::getValueAsDouble((this + 864), MEMORY[0x277CC08F0], 0.0);
      operator*(&v16, &time1, v12);
      operator*(&time1, &time2, v11);
      return CMTimeGetSeconds(&time2) + a5;
    }
  }

  return a5;
}

void OZRepelFromBehavior::OZRepelFromBehavior(OZRepelFromBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C55E8;
  *(v5 + 16) = &unk_2872C58D0;
  *(v5 + 48) = &unk_2872C5B28;
  *(v5 + 336) = &unk_2872C5B80;
  OZChannel::setScale((v5 + 664), -*(*(v5 + 792) + 40));
  v6 = *(this + 99);
  v7 = *(v6 + 16);
  OZChannel::setSliderMin((this + 664), -*(v6 + 8));
  OZChannel::setSliderMax((this + 664), -v7);
  OZChannel::getValueAsDouble((this + 664), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setDefaultValue((this + 664), -v8);
  OZChannelBase::reset((this + 664), 0);
  OZChannel::setDefaultValue((this + 1224), 100.0);
}

void OZRepelFromBehavior::OZRepelFromBehavior(OZRepelFromBehavior *this, OZRepelFromBehavior *a2, char a3)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3);
  *v3 = &unk_2872C55E8;
  v3[2] = &unk_2872C58D0;
  v3[6] = &unk_2872C5B28;
  v3[42] = &unk_2872C5B80;
}

void non-virtual thunk toOZRepelFromBehavior::~OZRepelFromBehavior(OZRepelFromBehavior *this)
{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZRepelFromBehavior::~OZRepelFromBehavior(OZRepelFromBehavior *this)
{
  OZAttractedToBehavior::~OZAttractedToBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZRepelorBehavior::OZRepelorBehavior(OZRepelorBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C5BA8;
  *(v5 + 16) = &unk_2872C5E98;
  *(v5 + 48) = &unk_2872C60F0;
  *(v5 + 336) = &unk_2872C6148;
  OZChannel::setScale((v5 + 792), -*(*(v5 + 920) + 40));
  v6 = *(this + 115);
  v7 = *(v6 + 16);
  OZChannel::setSliderMin((this + 792), -*(v6 + 8));
  OZChannel::setSliderMax((this + 792), -v7);
  OZChannel::getValueAsDouble((this + 792), MEMORY[0x277CC08F0], 0.0);
  OZChannel::setDefaultValue((this + 792), -v8);
  OZChannelBase::reset((this + 792), 0);
  OZChannel::setDefaultValue((this + 1352), 100.0);
}

void OZRepelorBehavior::OZRepelorBehavior(OZRepelorBehavior *this, OZRepelorBehavior *a2, char a3)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3);
  *v3 = &unk_2872C5BA8;
  v3[2] = &unk_2872C5E98;
  v3[6] = &unk_2872C60F0;
  v3[42] = &unk_2872C6148;
}

void non-virtual thunk toOZRepelorBehavior::~OZRepelorBehavior(OZRepelorBehavior *this)
{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZRepelorBehavior::~OZRepelorBehavior(OZRepelorBehavior *this)
{
  OZAttractorBehavior::~OZAttractorBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZReverseBehavior::OZReverseBehavior(OZReverseBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v4 = &unk_2872C61A0;
  v4[2] = &unk_2872C64E0;
  v4[6] = &unk_2872C6738;
  v4[42] = &unk_2872C6790;
  v4[67] = &unk_2872C67B8;
}

void OZReverseBehavior::OZReverseBehavior(OZReverseBehavior *this, const OZReverseBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v3 = &unk_2872C61A0;
  v3[2] = &unk_2872C64E0;
  v3[6] = &unk_2872C6738;
  v3[42] = &unk_2872C6790;
  v3[67] = &unk_2872C67B8;
}

void non-virtual thunk toOZReverseBehavior::~OZReverseBehavior(OZReverseBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZReverseBehavior::~OZReverseBehavior(OZReverseBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZReverseBehavior::getNeededTime@<X0>(OZReverseBehavior *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  (*(**(*(this + 47) + 32) + 336))(v13);
  result = (*(*this + 296))(this, v13, 0, 1, 1);
  if (result)
  {
    (*(*this + 608))(v13, this);
    memset(&v12, 0, sizeof(v12));
    (*(**(*(this + 47) + 32) + 336))(&v10);
    time2 = v13[0];
    *&time1.value = v10;
    time1.epoch = v11;
    PC_CMTimeSaferSubtract(&time1, &time2, &v12);
    v10 = 0uLL;
    v11 = 0;
    OZBehavior::getFrameDuration(this, &v10);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    time1 = v13[1];
    *&time2.value = v10;
    time2.epoch = v11;
    PC_CMTimeSaferSubtract(&time1, &time2, &v8);
    time1 = v8;
    time2 = v12;
    PC_CMTimeSaferSubtract(&time1, &time2, &v9);
    time2 = v13[0];
    time1 = v9;
    PC_CMTimeSaferAdd(&time1, &time2, a3);
    time2 = v13[0];
    time1 = *a3;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *a3 = v13[0];
    }

    result = (*(**(*(this + 47) + 32) + 328))(&time1);
    *a3 = *&time1.value;
    epoch = time1.epoch;
  }

  else
  {
    *a3 = *&a2->value;
    epoch = a2->epoch;
  }

  *(a3 + 16) = epoch;
  return result;
}

void OZRotationalDragBehavior::OZRotationalDragBehavior(OZRotationalDragBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C6830;
  v5[2] = &unk_2872C6B18;
  v5[6] = &unk_2872C6D70;
  v5[42] = &unk_2872C6DC8;
  PCURL::PCURL(&v6, @"Rotational Drag Behavior Drag Coefficient");
  OZChannelDouble::OZChannelDouble((this + 504), 0.5, &v6, (this + 56), 0x190u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setMin((this + 504), 0.0);
  OZChannel::setSliderMax((this + 504), 2.0);
}

void sub_2602714F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZRotationalDragBehavior::OZRotationalDragBehavior(OZRotationalDragBehavior *this, OZRotationalDragBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C6830;
  *(v5 + 16) = &unk_2872C6B18;
  *(v5 + 48) = &unk_2872C6D70;
  *(v5 + 336) = &unk_2872C6DC8;
  OZChannel::OZChannel((v5 + 504), (a2 + 504), (this + 56));
  *(this + 63) = &unk_287245C60;
  *(this + 65) = &unk_287245FC0;
}

void OZRotationalDragBehavior::~OZRotationalDragBehavior(OZRotationalDragBehavior *this)
{
  *this = &unk_2872C6830;
  *(this + 2) = &unk_2872C6B18;
  *(this + 6) = &unk_2872C6D70;
  *(this + 42) = &unk_2872C6DC8;
  OZChannel::~OZChannel((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZRotationalDragBehavior::~OZRotationalDragBehavior(OZRotationalDragBehavior *this)
{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 16));
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 48));
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 336));
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRotationalDragBehavior::~OZRotationalDragBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZRotationalDragBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return OZChannelBase::operator=(a1 + 504, v4 + 504);
}

double OZRotationalDragBehavior::accumForces(OZRotationalDragBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  OZChannel::getValueAsDouble((this + 504), (a2 + 176), 0.0);
  v5 = v4 * *(a2 + 12);
  *(a2 + 152) = vsubq_f64(*(a2 + 152), vmulq_n_f64(*(a2 + 5), v4));
  result = *(a2 + 21) - v5;
  *(a2 + 21) = result;
  return result;
}

double OZRotationalDragBehavior::accumForces(OZRotationalDragBehavior *this, const CMTime *a2, OZTransformNode *a3)
{
  OZChannel::getValueAsDouble((this + 504), a2 + 1, 0.0);
  value = a2->value;
  v6 = *&a2->timescale;
  while (value != v6)
  {
    v7 = result * *(value + 96);
    *(value + 152) = vsubq_f64(*(value + 152), vmulq_n_f64(*(value + 80), result));
    *(value + 168) = *(value + 168) - v7;
    value += 248;
  }

  return result;
}

void OZSnapAlignBehavior::OZSnapAlignBehavior(OZSnapAlignBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C6E08;
  v5[2] = &unk_2872C70D0;
  v5[6] = &unk_2872C7328;
  v5[42] = &unk_2872C7380;
  v5[67] = &unk_2872C73A8;
  PCURL::PCURL(&v7, @"Snap Align Behavior Rotation Axis Enum");
  PCURL::PCURL(&v6, @"Snap Align Behavior Rotation Axis");
  OZChannelEnum::OZChannelEnum((this + 544), 2u, &v7, &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Snap Align Behavior Object Axis Enum");
  PCURL::PCURL(&v6, @"Snap Align Behavior Object Axis");
  OZChannelEnum::OZChannelEnum((this + 800), &v7, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Snap Align Behavior Invert Axis");
  OZChannelBool::OZChannelBool((this + 1056), &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Oscillate Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1208), &v7, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannel::setKeyframable((this + 544), 0);
  OZChannel::setKeyframable((this + 800), 0);
  OZChannel::setKeyframable((this + 1208), 0);
  OZChannelBase::resetFlag((this + 1208), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1208));
}

void sub_260271BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannelBool::~OZChannelBool((v12 + 1056));
  OZChannelEnum::~OZChannelEnum((v12 + 800));
  OZChannelEnum::~OZChannelEnum((v12 + 544));
  OZChannelBehavior::~OZChannelBehavior(v12);
  _Unwind_Resume(a1);
}

void OZSnapAlignBehavior::OZSnapAlignBehavior(OZSnapAlignBehavior *this, const OZSnapAlignBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_2872C6E08;
  v5[2] = &unk_2872C70D0;
  v5[6] = &unk_2872C7328;
  v5[42] = &unk_2872C7380;
  v5[67] = &unk_2872C73A8;
  OZChannelEnum::OZChannelEnum((v5 + 68), (a2 + 544), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 800), (a2 + 800), (this + 56));
  OZChannelBool::OZChannelBool((this + 1056), (a2 + 1056), (this + 56));
  OZChannel::OZChannel((this + 1208), (a2 + 1208), (this + 56));
  *(this + 151) = &unk_287245C60;
  *(this + 153) = &unk_287245FC0;
}

void sub_260271DCC(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 1056));
  OZChannelEnum::~OZChannelEnum((v1 + 800));
  OZChannelEnum::~OZChannelEnum((v1 + 544));
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZSnapAlignBehavior::~OZSnapAlignBehavior(OZSnapAlignBehavior *this)
{
  *this = &unk_2872C6E08;
  *(this + 2) = &unk_2872C70D0;
  *(this + 6) = &unk_2872C7328;
  *(this + 42) = &unk_2872C7380;
  *(this + 67) = &unk_2872C73A8;
  OZChannel::~OZChannel((this + 1208));
  OZChannelBool::~OZChannelBool((this + 1056));
  OZChannelEnum::~OZChannelEnum((this + 800));
  OZChannelEnum::~OZChannelEnum((this + 544));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZSnapAlignBehavior::~OZSnapAlignBehavior(OZSnapAlignBehavior *this)
{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 16));
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 48));
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 336));
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 536));
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZSnapAlignBehavior::~OZSnapAlignBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSnapAlignBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 544, v4 + 544);
  OZChannelBase::operator=(a1 + 800, v5 + 800);
  OZChannelBase::operator=(a1 + 1056, v5 + 1056);

  return OZChannelBase::operator=(a1 + 1208, v5 + 1208);
}

OZChannelBehavior *OZSnapAlignBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  v2 = this;
  if (lpsrc)
  {
    *(v2 + 170) = this;
    if (this)
    {
      OZChannelBehavior::didAddToNode(v2, lpsrc);
      OZChannelBehavior::setAffectedChannel(v2, (*(v2 + 170) + 2104));
      operator new();
    }
  }

  else
  {
    *(this + 170) = 0;
  }

  return this;
}

double OZSnapAlignBehavior::solveHelper(OZSnapAlignBehavior *this, int a2, CMTime *a3, double a4)
{
  v97 = 0.0;
  v98 = 0.0;
  v99 = 0.0;
  v94 = 0.0;
  v95 = 0.0;
  v96 = 0.0;
  v91 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  v90 = *a3;
  OZTransformNode::getTranslation(*(this + 170), &v97, &v90);
  OZBehavior::getFrameDuration(this, &v88);
  operator*(&v88, &v89, 0.5);
  v87.var0 = *a3;
  v79 = *&v89.var0;
  *&v80 = v89.var3;
  PC_CMTimeSaferAdd(&v87, &v79, &v100);
  v90 = v100;
  OZTransformNode::getTranslation(*(this + 170), &v94, &v90);
  OZBehavior::getFrameDuration(this, &v89);
  v87.var0 = *a3;
  v79 = *&v89.var0;
  *&v80 = v89.var3;
  PC_CMTimeSaferAdd(&v87, &v79, &v100);
  v90 = v100;
  OZTransformNode::getTranslation(*(this + 170), &v91, &v90);
  v8 = *(*(this + 170) + 960);
  if (v8)
  {
    if (v9)
    {
      v10 = v9;
      OZRenderState::OZRenderState(&v87);
      *&v87.var0.var0 = *&a3->value;
      epoch = a3->epoch;
      v87.var3 = 1.0;
      v87.var0.var3 = epoch;
      (*(*v10 + 1232))(v10, &v97, &v87);
      OZBehavior::getFrameDuration(this, &v86);
      operator*(&v86, &v88, 0.5);
      v79 = *&a3->value;
      *&v80 = a3->epoch;
      v100 = v88;
      PC_CMTimeSaferAdd(&v79, &v100, &v89);
      v87.var0 = v89;
      (*(*v10 + 1232))(v10, &v94, &v87);
      OZBehavior::getFrameDuration(this, &v88);
      v79 = *&a3->value;
      *&v80 = a3->epoch;
      v100 = v88;
      PC_CMTimeSaferAdd(&v79, &v100, &v89);
      v87.var0 = v89;
      (*(*v10 + 1232))(v10, &v91, &v87);
    }
  }

  v12 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 544), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt != 3)
  {
    v24 = ValueAsInt;
    v25 = OZChannel::getValueAsInt((this + 800), a3, 0.0);
    if (a2 != 3 && v24 == 2)
    {
      return v12;
    }

    if (v24)
    {
      if (v24 != 2)
      {
        if (v24 != 1)
        {
          v28 = 0;
          v26 = 0.0;
          v27 = 0.0;
          goto LABEL_54;
        }

        if (a2 == 1)
        {
          return -1.57079633;
        }

        if (a2 != 2)
        {
          v26 = v91 - v97;
          v27 = -(v93 - v99);
          v28 = 1;
LABEL_54:
          if (fabs(v26) < 0.01)
          {
            v12 = a4;
            if (fabs(v27) < 0.01)
            {
              return v12;
            }
          }

          v72 = atan2(v27, v26);
          if (OZChannel::getValueAsInt((this + 1056), a3, 0.0))
          {
            v73 = 3.14159265;
            if (v72 <= 3.14159265)
            {
              v73 = -3.14159265;
            }

            v72 = v72 + v73;
          }

          if (v24)
          {
            if (v28)
            {
              if (!v25)
              {
                goto LABEL_69;
              }

LABEL_66:
              v74 = -3.14159265;
LABEL_70:
              v72 = v72 + v74;
            }
          }

          else if (v25)
          {
            v72 = v72 + 4.71238898;
            if (v28)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v72 = v72 + 0.0;
            if (v28)
            {
LABEL_69:
              v74 = -1.57079633;
              goto LABEL_70;
            }
          }

          if (v25)
          {
            v75 = v24 == 2;
          }

          else
          {
            v75 = 0;
          }

          if (v75)
          {
            return v72 + -1.57079633;
          }

          else
          {
            return v72;
          }
        }

        return 1.57079633;
      }

      v28 = 0;
      v70 = v92;
      v71 = v98;
      v26 = v91 - v97;
    }

    else
    {
      if (a2 == 1)
      {
        return v12;
      }

      if (a2 == 2)
      {
        return 1.57079633;
      }

      v28 = 0;
      v70 = v92;
      v71 = v98;
      v26 = -(v93 - v99);
    }

    v27 = v70 - v71;
    goto LABEL_54;
  }

  v14 = v94 - v97;
  v15 = v95 - v98;
  v16 = v96 - v99;
  v17 = v91 - v94;
  v18 = v92 - v95;
  v19 = v93 - v96;
  v20 = v14 * v14 + v15 * v15 + v16 * v16;
  v21 = v94 - v97;
  v22 = v95 - v98;
  v23 = v96 - v99;
  if (fabs(v20) < 0.0000001)
  {
    v20 = v17 * v17 + v18 * v18 + v19 * v19;
    v21 = v91 - v94;
    v22 = v92 - v95;
    v23 = v93 - v96;
    if (fabs(v20) < 0.0000001)
    {
      return a4;
    }
  }

  v29 = v17 - v14;
  v30 = v18 - v15;
  v31 = v19 - v16;
  v32 = sqrt(v20);
  if (fabs(v32) >= 0.000000100000001)
  {
    v21 = v21 / v32;
    v22 = v22 / v32;
    v23 = v23 / v32;
  }

  v33 = v21;
  v34 = v33;
  v35 = v22;
  v36 = v35;
  v37 = v23;
  v38 = v37;
  v39 = v31 * v36 - v30 * v37;
  v40 = v29 * v38 - v31 * v34;
  v41 = v30 * v34 - v29 * v36;
  v42 = fabs(v41 * v41 + v39 * v39 + v40 * v40);
  v43 = v42 < 0.0000001;
  if (v42 >= 0.0000001)
  {
    v44 = v39;
  }

  else
  {
    v44 = 0.0;
  }

  if (v43)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = v40;
  }

  if (v43)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v41;
  }

  v47 = sqrt(v46 * v46 + v44 * v44 + v45 * v45);
  v77 = a4;
  if (fabs(v47) >= 0.000000100000001)
  {
    v44 = v44 / v47;
    v45 = v45 / v47;
    v46 = v46 / v47;
  }

  v48 = v45 * v38 - v46 * v36;
  v49 = v46 * v34 - v44 * v38;
  v50 = v44 * v36 - v45 * v34;
  v51 = sqrt(v50 * v50 + v48 * v48 + v49 * v49);
  v78 = *&v44;
  if (fabs(v51) >= 0.000000100000001)
  {
    v48 = v48 / v51;
    v49 = v49 / v51;
    v50 = v50 / v51;
  }

  v52 = OZChannel::getValueAsInt((this + 800), a3, 0.0);
  v53 = -v48;
  v54 = -v49;
  v55 = -v50;
  if (v52 == 1)
  {
    v48 = v34;
    v49 = v36;
    v50 = v38;
    v34 = v53;
    v36 = v54;
    v38 = v55;
  }

  v56 = OZChannel::getValueAsInt((this + 1056), a3, 0.0);
  v57 = -v34;
  v58 = -v48;
  if (!v56)
  {
    v58 = v48;
    v57 = v34;
  }

  *&v87.var0.var0 = v57;
  *&v87.var0.var1 = v58;
  v59 = -v36;
  v60 = -v49;
  if (!v56)
  {
    v60 = v49;
    v59 = v36;
  }

  v87.var2 = v59;
  v87.var3 = v60;
  v61 = -v38;
  v62 = -v50;
  if (!v56)
  {
    v62 = v50;
    v61 = v38;
  }

  *&v87.var6 = v61;
  v87.var7.var0[0][0] = v62;
  v87.var0.var3 = v78;
  *&v87.var4 = v45;
  v87.var7.var0[0][1] = v46;
  v87.var1 = 0.0;
  v87.var5 = 0;
  memset(&v87.var7.var0[0][2], 0, 32);
  v87.var7.var0[1][2] = 1.0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v82 = 4;
  Transformation = PCMatrix44Tmpl<double>::getTransformation(&v87.var0.var0, &v79);
  _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Behaviors/OZSnapAlignBehavior.cpp", 202, v64, v65, v66, v67, v68);
  switch(a2)
  {
    case 1:
      v69 = &v83;
      break;
    case 3:
      v69 = &v84;
      break;
    case 2:
      v69 = &v83 + 1;
      break;
    default:
      return v77;
  }

  return *v69;
}

double OZSnapAlignBehavior::solveNode(OZSnapAlignBehavior *this, int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v16, 0, sizeof(v16));
  (*(**(*(this + 47) + 32) + 336))(&v16, a4);
  v14[0] = v16;
  if ((*(*this + 296))(this, v14, 0, 1, 1))
  {
    memset(&v15, 0, sizeof(v15));
    FrameDuration = OZBehavior::getFrameDuration(this, &v15);
    (*(*this + 608))(v14, this, FrameDuration);
    memset(&v13, 0, sizeof(v13));
    time1 = v14[0];
    time2 = v14[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
    time1 = v17;
    time2 = v15;
    PC_CMTimeSaferSubtract(&time1, &time2, &v11);
    OZChannel::getValueAsDouble((this + 1208), &v16, 0.0);
    operator*(&v15, &v17, v9);
    *&time1.value = v11;
    time1.epoch = v12;
    time2 = v17;
    PC_CMTimeSaferSubtract(&time1, &time2, &v13);
    OZBehavior::getFrameDuration(this, &v11);
    time1 = v16;
    *&time2.value = v11;
    time2.epoch = v12;
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
    time1 = v17;
    time2 = v13;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v13;
      time2 = v15;
      PC_CMTimeSaferSubtract(&time1, &time2, &v17);
      v16 = v17;
    }

    time1 = v16;
    return OZSnapAlignBehavior::solveHelper(this, a2, &time1, a5);
  }

  return a5;
}

double OZSnapAlignBehavior::solveNode(OZSnapAlignBehavior *this, int a2, OZCurveNodeParam *a3)
{
  v6 = *(a3 + 19);
  v7 = *(a3 + 10);
  v20 = *(a3 + 5);
  memset(&v19, 0, sizeof(v19));
  (*(**(*(this + 47) + 32) + 336))(&v19);
  memset(&v18, 0, sizeof(v18));
  FrameDuration = OZBehavior::getFrameDuration(this, &v18);
  (*(*this + 608))(v17, this, FrameDuration);
  memset(&v16, 0, sizeof(v16));
  time1 = v17[0];
  time2 = v17[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v21);
  time1 = v21;
  time2 = v18;
  PC_CMTimeSaferSubtract(&time1, &time2, &v15);
  OZChannel::getValueAsDouble((this + 1208), MEMORY[0x277CC08F0], 0.0);
  operator*(&v18, &v21, v9);
  time1 = v15;
  time2 = v21;
  result = PC_CMTimeSaferSubtract(&time1, &time2, &v16);
  if (*(a3 + 36))
  {
    v11 = 0;
    do
    {
      time1 = v19;
      if ((*(*this + 296))(this, &time1, 0, 1, 1))
      {
        v21 = v19;
        OZBehavior::getFrameDuration(this, &v13);
        time1 = v21;
        *&time2.value = v13;
        time2.epoch = v14;
        PC_CMTimeSaferAdd(&time1, &time2, &v15);
        time1 = v15;
        time2 = v16;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          time1 = v16;
          time2 = v18;
          PC_CMTimeSaferSubtract(&time1, &time2, &v21);
        }

        time1 = v21;
        v12 = OZSnapAlignBehavior::solveHelper(this, a2, &time1, *(v7 + 8 * v11));
      }

      else
      {
        v12 = *(v7 + 8 * v11);
      }

      *(v6 + 8 * v11) = v12;
      time2 = v19;
      v21 = v20;
      PC_CMTimeSaferAdd(&time2, &v21, &time1);
      result = *&time1.value;
      v19 = time1;
      ++v11;
    }

    while (v11 < *(a3 + 36));
  }

  return result;
}

void OZSpinBehavior::OZSpinBehavior(OZSpinBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C7440;
  v5[2] = &unk_2872C7728;
  v5[6] = &unk_2872C7980;
  v5[42] = &unk_2872C79D8;
  PCURL::PCURL(&v7, @"Spin Behavior Increment Type Enum");
  PCURL::PCURL(&v6, @"Spin Behavior Increment Type");
  OZChannelEnum::OZChannelEnum((this + 504), &v7, &v6, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Spin Behavior Agular Velocity");
  OZChannelAngle::OZChannelAngle(this + 5, &v7, (this + 56), 0x190u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Spin Behavior Final Angle");
  OZChannelAngle::OZChannelAngle(this + 6, &v7, (this + 56), 0x192u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Sping Behavior Axis Preset Enum");
  PCURL::PCURL(&v6, @"Sping Behavior Axis Preset");
  OZChannelEnum::OZChannelEnum((this + 1064), 2u, &v7, &v6, (this + 56), 0x193u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Spin Behavior Axis Latitude");
  OZChannelAngle::OZChannelAngle((this + 1320), &v7, (this + 56), 0x194u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Spin Behavior Axis Longitude");
  OZChannelAngle::OZChannelAngle((this + 1472), &v7, (this + 56), 0x195u, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannel::setKeyframable(this + 5, 0);
  OZChannel::setKeyframable(this + 6, 0);
  OZChannel::setKeyframable((this + 1320), 0);
  OZChannel::setKeyframable((this + 1472), 0);
}

void sub_2602733A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1320));
  OZChannelEnum::~OZChannelEnum((v12 + 1064));
  OZChannel::~OZChannel((v12 + 912));
  OZChannel::~OZChannel((v12 + 760));
  OZChannelEnum::~OZChannelEnum((v12 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v12);
  _Unwind_Resume(a1);
}

void OZSpinBehavior::OZSpinBehavior(OZSpinBehavior *this, OZSpinBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C7440;
  v5[2] = &unk_2872C7728;
  v5[6] = &unk_2872C7980;
  v5[42] = &unk_2872C79D8;
  OZChannelEnum::OZChannelEnum((v5 + 63), (a2 + 504), (this + 56));
  OZChannel::OZChannel(this + 5, (a2 + 760), (this + 56));
  *(this + 95) = &unk_287246030;
  *(this + 97) = &unk_287246390;
  OZChannel::OZChannel(this + 6, (a2 + 912), (this + 56));
  *(this + 114) = &unk_287246030;
  *(this + 116) = &unk_287246390;
  OZChannelEnum::OZChannelEnum((this + 1064), (a2 + 1064), (this + 56));
  OZChannel::OZChannel((this + 1320), (a2 + 1320), (this + 56));
  *(this + 165) = &unk_287246030;
  *(this + 167) = &unk_287246390;
  OZChannel::OZChannel((this + 1472), (a2 + 1472), (this + 56));
  *(this + 184) = &unk_287246030;
  *(this + 186) = &unk_287246390;
}

void sub_2602736B0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v4);
  OZChannelEnum::~OZChannelEnum((v1 + 1064));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZSpinBehavior::~OZSpinBehavior(OZSpinBehavior *this)
{
  *this = &unk_2872C7440;
  *(this + 2) = &unk_2872C7728;
  *(this + 6) = &unk_2872C7980;
  *(this + 42) = &unk_2872C79D8;
  OZChannel::~OZChannel((this + 1472));
  OZChannel::~OZChannel((this + 1320));
  OZChannelEnum::~OZChannelEnum((this + 1064));
  OZChannel::~OZChannel(this + 6);
  OZChannel::~OZChannel(this + 5);
  OZChannelEnum::~OZChannelEnum((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZSpinBehavior::~OZSpinBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZSpinBehavior::~OZSpinBehavior(OZSpinBehavior *this)
{
  OZSpinBehavior::~OZSpinBehavior((this - 16));
}

{
  OZSpinBehavior::~OZSpinBehavior((this - 48));
}

{
  OZSpinBehavior::~OZSpinBehavior((this - 336));
}

{
  OZSpinBehavior::~OZSpinBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSpinBehavior::~OZSpinBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSpinBehavior::~OZSpinBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSpinBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 760, v5 + 760);
  OZChannelBase::operator=(a1 + 912, v5 + 912);
  OZChannelBase::operator=(a1 + 1064, v5 + 1064);
  OZChannelBase::operator=(a1 + 1320, v5 + 1320);

  return OZChannelBase::operator=(a1 + 1472, v5 + 1472);
}

OZChannelBase *OZSpinBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  result = OZChannel::getValueAsInt((a1 + 504), MEMORY[0x277CC08F0], 0.0);
  v4 = result;
  v5 = *(a2 + 8);
  if (v5 == a2)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = MEMORY[0x277CC08F0];
    do
    {
      v9 = *(v5 + 16);
      if (v9)
      {
      }

      else
      {
        v10 = 0;
      }

      v7 = (v4 == OZChannel::getValueAsInt((v10 + 504), v8, 0.0)) & v7;
      result = OZChannel::getValueAsInt(v10 + 7, v8, 0.0);
      v6 |= result == 3;
      v5 = *(v5 + 8);
    }

    while (v5 != a2);
    v5 = *(a2 + 8);
  }

  for (; v5 != a2; v5 = *(v5 + 8))
  {
    v11 = *(v5 + 16);
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = (v12 + 760);
    if (v7)
    {
      if (!v4)
      {
        OZChannelBase::resetFlag(v13, 0x400000, 1);
        OZChannelBase::setFlag((v12 + 912), 0x400000, 1);
        goto LABEL_18;
      }

      OZChannelBase::setFlag(v13, 0x400000, 1);
    }

    else
    {
      OZChannelBase::resetFlag(v13, 0x400000, 1);
    }

    OZChannelBase::resetFlag((v12 + 912), 0x400000, 1);
LABEL_18:
    v14 = (v12 + 1320);
    if (v6)
    {
      OZChannelBase::resetFlag(v14, 0x400000, 1);
      result = OZChannelBase::resetFlag((v12 + 1472), 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v14, 0x400000, 1);
      result = OZChannelBase::setFlag((v12 + 1472), 0x400000, 1);
    }
  }

  return result;
}

double OZSpinBehavior::calcRotSpeed(OZSpinBehavior *this)
{
  v2 = 0.0;
  OZChannel::getValueAsDouble((this + 504), MEMORY[0x277CC08F0], 0.0);
  if (v3 == 0.0)
  {
    v4 = MEMORY[0x277CC08F0];

    OZChannel::getValueAsDouble(this + 5, v4, 0.0);
  }

  else
  {
    v14 = 0uLL;
    v15 = 0;
    v6 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v6 + 336), &v14);
    (*(*this + 608))(v12, this, FrameDuration);
    v17 = v13;
    *&v16.value = v14;
    v16.epoch = v15;
    PC_CMTimeSaferSubtract(&v17, &v16, &v11);
    Seconds = CMTimeGetSeconds(&v11);
    if (Seconds > 0.0)
    {
      v9 = Seconds;
      OZChannel::getValueAsDouble(this + 6, MEMORY[0x277CC08F0], 0.0);
      return v10 / v9;
    }

    return v2;
  }

  return result;
}

void OZSpinBehavior::calcAxis(uint64_t a1, double *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 1064), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 1)
  {
    if (ValueAsInt == 2)
    {
      *a2 = 0.0;
      a2[1] = 0.0;
      a2[2] = 1.0;
    }

    else if (ValueAsInt == 3)
    {
      v5 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((a1 + 1320), MEMORY[0x277CC08F0], 0.0);
      v7 = __sincos_stret(v6);
      a2[1] = v7.__sinval;
      OZChannel::getValueAsDouble((a1 + 1472), v5, 0.0);
      v9 = __sincos_stret(v8);
      a2[2] = v7.__cosval * v9.__cosval;
      *a2 = v7.__cosval * v9.__sinval;
    }
  }

  else if (ValueAsInt)
  {
    if (ValueAsInt == 1)
    {
      *a2 = xmmword_260342700;
      a2[2] = 0.0;
    }
  }

  else
  {
    a2[1] = 0.0;
    a2[2] = 0.0;
    *a2 = 1.0;
  }
}

void OZSpinBehavior::accumForces(OZSpinBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  memset(&v20, 0, sizeof(v20));
  v5 = (*(*this + 336))(this, a2, a3);
  OZSceneSettings::getFrameDuration((v5 + 336), &v20);
  memset(&v19, 0, sizeof(v19));
  operator*(&v20, &v19, 0.001);
  (*(*this + 608))(&v16, this);
  *&time1.value = v16;
  *&time1.epoch = v17;
  time2 = *(a2 + 176);
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    *&time1.value = v16;
    *&time1.epoch = v17;
    time2 = v18;
    PC_CMTimeSaferAdd(&time1, &time2, &v23);
    time1 = v23;
    time2 = v20;
    PC_CMTimeSaferSubtract(&time1, &time2, &v22);
    time1 = *(a2 + 176);
    time2 = v22;
    if (CMTimeCompare(&time1, &time2) <= 0 || (v18.flags & 1) != 0 && (v18.flags & 0x10) != 0)
    {
      (*(*this + 608))(&time1, this);
      time2 = *(a2 + 176);
      v23 = v19;
      PC_CMTimeSaferAdd(&time2, &v23, &v13);
      time2 = time1;
      v23 = v13;
      if (CMTimeCompare(&time2, &v23) > 0 || (time2 = time1, v23 = v15, PC_CMTimeSaferAdd(&time2, &v23, &v22), time2 = v22, v23 = v20, PC_CMTimeSaferSubtract(&time2, &v23, &v21), time2 = v13, v23 = v21, CMTimeCompare(&time2, &v23) > 0) && ((v15.flags & 1) == 0 || (v15.flags & 0x10) == 0))
      {
        v16 = 0uLL;
        v17 = 0.0;
        OZSpinBehavior::calcAxis(this, v16.f64);
        v6 = OZSpinBehavior::calcRotSpeed(this);
        v7 = v6 * v17;
        v8 = vmulq_n_f64(v16, v6);
        v9 = vextq_s8(v8, v8, 8uLL);
        v10.f64[0] = v9.f64[0];
        v10.f64[1] = v7;
        v11 = vsubq_f64(*(a2 + 7), v10);
        v9.f64[0] = v7;
        v12 = vsubq_f64(*(a2 + 6), v9);
        *(a2 + 5) = vsubq_f64(*(a2 + 5), v8);
        *(a2 + 6) = v12;
        *(a2 + 7) = v11;
      }
    }
  }
}

float64x2_t OZSpinBehavior::accumInitialValues(OZSpinBehavior *this, float64x2_t *a2, OZTransformNode *a3)
{
  v13 = 0uLL;
  v14 = 0.0;
  OZSpinBehavior::calcAxis(this, v13.f64);
  v5 = OZSpinBehavior::calcRotSpeed(this);
  v6 = v5 * v14;
  v7 = vmulq_n_f64(v13, v5);
  v8 = vextq_s8(v7, v7, 8uLL);
  v9.f64[0] = v8.f64[0];
  v9.f64[1] = v6;
  v10 = vaddq_f64(v9, a2[7]);
  result = vaddq_f64(v7, a2[5]);
  v8.f64[0] = v6;
  v12 = vaddq_f64(v8, a2[6]);
  a2[5] = result;
  a2[6] = v12;
  a2[7] = v10;
  return result;
}

void OZSpringBehavior::OZSpringBehavior(OZSpringBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C7A18;
  v5[2] = &unk_2872C7D00;
  v5[6] = &unk_2872C7F58;
  v5[42] = &unk_2872C7FB0;
  PCURL::PCURL(&v6, @"Spring Behavior Attracted To Object");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 504), &v6, (this + 56), 0x190u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Spring Behavior Spring Constant");
  OZChannelDouble::OZChannelDouble((this + 664), 0.1, &v6, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Spring Behavior Relaxed Length");
  OZChannelDouble::OZChannelDouble((this + 816), 10.0, &v6, (this + 56), 0x192u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Spring Behavior Repel");
  OZChannelBool::OZChannelBool((this + 968), &v6, (this + 56), 0x193u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Spring Behavior Active Axes");
  OZChannelBool3D::OZChannelBool3D((this + 1120), 1, 1, 0, &v6, (this + 56), 0x194u, 0, 3u);
  PCString::~PCString(&v6);
  OZChanSceneNodeRef::setAllowsCyclicDependencies(this + 504, 1);
}

void sub_260274430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelBool3D::~OZChannelBool3D((v10 + 1120));
  OZChannelBool::~OZChannelBool((v10 + 968));
  OZChannel::~OZChannel((v10 + 816));
  OZChannel::~OZChannel((v10 + 664));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v10 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZSpringBehavior::OZSpringBehavior(OZSpringBehavior *this, OZSpringBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C7A18;
  v5[2] = &unk_2872C7D00;
  v5[6] = &unk_2872C7F58;
  v5[42] = &unk_2872C7FB0;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 63), (a2 + 504), (this + 56));
  OZChannel::OZChannel((this + 664), (a2 + 664), (this + 56));
  *(this + 83) = &unk_287245C60;
  *(this + 85) = &unk_287245FC0;
  OZChannel::OZChannel((this + 816), (a2 + 816), (this + 56));
  *(this + 102) = &unk_287245C60;
  *(this + 104) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 968), (a2 + 968), (this + 56));
  OZChannelBool3D::OZChannelBool3D((this + 1120), (a2 + 1120), (this + 56));
}

void sub_260274668(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 968));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZSpringBehavior::~OZSpringBehavior(OZSpringBehavior *this)
{
  *this = &unk_2872C7A18;
  *(this + 2) = &unk_2872C7D00;
  *(this + 6) = &unk_2872C7F58;
  *(this + 42) = &unk_2872C7FB0;
  OZChannelBool3D::~OZChannelBool3D((this + 1120));
  OZChannelBool::~OZChannelBool((this + 968));
  OZChannel::~OZChannel((this + 816));
  OZChannel::~OZChannel((this + 664));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZSpringBehavior::~OZSpringBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZSpringBehavior::~OZSpringBehavior(OZSpringBehavior *this)
{
  OZSpringBehavior::~OZSpringBehavior((this - 16));
}

{
  OZSpringBehavior::~OZSpringBehavior((this - 48));
}

{
  OZSpringBehavior::~OZSpringBehavior((this - 336));
}

{
  OZSpringBehavior::~OZSpringBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSpringBehavior::~OZSpringBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSpringBehavior::~OZSpringBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSpringBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 664, v5 + 664);
  OZChannelBase::operator=(a1 + 816, v5 + 816);

  return OZChannelBase::operator=(a1 + 968, v5 + 968);
}

uint64_t OZSpringBehavior::accumForces(OZSpringBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  result = OZChanTransformNodeRef::getTransformNode((this + 504));
  if (result)
  {
    v22 = 0uLL;
    v23 = 0.0;
    OZSimulationState::getNodePosition(a2, (a2 + 176), result, a3, &v22);
    v7 = *(a2 + 2) - v23;
    v18 = vsubq_f64(*a2, v22);
    v8 = sqrt(vaddvq_f64(vmulq_f64(v18, v18)) + v7 * v7);
    OZChannel::getValueAsDouble((this + 816), (a2 + 176), 0.0);
    v10 = v8 - v9;
    v21 = *(a2 + 176);
    if (v8 - v9 >= 0.0 || (result = OZChannel::getValueAsInt((this + 968), &v21, 0.0), result))
    {
      OZChannel::getValueAsDouble((this + 664), &v21, 0.0);
      v12 = -(v11 * v10);
      v17 = v12;
      v13 = 1.0;
      if (fabs(v8) >= 0.000000100000001)
      {
        v13 = v8;
      }

      v16 = *&v13;
      v14 = v7 / v13 * v12;
      v19 = 0uLL;
      v20 = 0.0;
      result = OZChannelBool3D::getValue(this + 1120, (a2 + 176), v19.f64, 0.0);
      v15 = v14 * v20;
      *(a2 + 8) = vaddq_f64(vmulq_f64(vmulq_n_f64(vdivq_f64(v18, vdupq_lane_s64(v16, 0)), v17), v19), *(a2 + 8));
      *(a2 + 18) = v15 + *(a2 + 18);
    }
  }

  return result;
}

void OZStopBehavior::OZStopBehavior(OZStopBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v4 = &unk_2872C7FF0;
  v4[2] = &unk_2872C8330;
  v4[6] = &unk_2872C8588;
  v4[42] = &unk_2872C85E0;
  v4[67] = &unk_2872C8608;
}

void OZStopBehavior::OZStopBehavior(OZStopBehavior *this, const OZStopBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v3 = &unk_2872C7FF0;
  v3[2] = &unk_2872C8330;
  v3[6] = &unk_2872C8588;
  v3[42] = &unk_2872C85E0;
  v3[67] = &unk_2872C8608;
}

void non-virtual thunk toOZStopBehavior::~OZStopBehavior(OZStopBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZSingleChannelBehavior::~OZSingleChannelBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZStopBehavior::~OZStopBehavior(OZStopBehavior *this)
{
  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);

  JUMPOUT(0x2666E9F00);
}

double OZStopBehavior::solveNode(OZStopBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  v5 = *(a3 + 19);
  v6 = *(a3 + 10);
  v16 = *(a3 + 5);
  memset(&v15, 0, sizeof(v15));
  (*(**(*(this + 47) + 32) + 336))(&v15);
  (*(*this + 608))(&time1, this);
  v14 = time1;
  v7 = (*(*(this + 2) + 24))(this + 16, 0, 1);
  if (*(a3 + 36))
  {
    v9 = v7;
    v10 = 0;
    do
    {
      v11 = v10;
      if (v9)
      {
        time1 = v15;
        v12 = (*(*this + 296))(this, &time1, 1, 1, 1);
        v11 = v10;
        if (v12)
        {
          time1 = v15;
          time2 = v14;
          v13 = CMTimeCompare(&time1, &time2);
          v11 = v10;
          if (v13 >= 1)
          {
            v11 = (*(a3 + 18) - 1);
          }
        }
      }

      *(v5 + 8 * v10) = *(v6 + 8 * v11);
      time2 = v15;
      v18 = v16;
      PC_CMTimeSaferAdd(&time2, &v18, &time1);
      result = *&time1.value;
      v15 = time1;
      ++v10;
    }

    while (v10 < *(a3 + 36));
  }

  return result;
}

__n128 OZStopBehavior::getNeededTime@<Q0>(OZStopBehavior *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  (*(**(*(this + 47) + 32) + 336))(&v9);
  time1 = v9;
  if (((*(*this + 296))(this, &time1, 0, 1, 1) & 1) != 0 && ((*(*this + 608))(&time1, this), epoch = time1.epoch, v8 = time1, time1 = v9, *&time2.value = *&v8.value, time2.epoch = epoch, CMTimeCompare(&time1, &time2) > 0))
  {
    (*(**(*(this + 47) + 32) + 328))(*(*(this + 47) + 32), &v8);
  }

  else
  {
    result = *&a2->value;
    *a3 = *&a2->value;
    *(a3 + 16) = a2->epoch;
  }

  return result;
}

OZCurveNodeParam *OZStopBehavior::getNeededRange(OZStopBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  v5 = (*(*(this + 2) + 24))();
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  *(a3 + 3) = *(a3 + 120);
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  if (v5)
  {
    v14 = 0uLL;
    v15 = 0;
    FrameDuration = OZBehavior::getFrameDuration(this, &v14);
    memset(&v13, 0, sizeof(v13));
    (*(*this + 608))(v16, this, FrameDuration);
    time1 = v16[0];
    (*(**(*(this + 47) + 32) + 328))(&v13);
    (*(*this + 608))(v16, this);
    memset(&v12, 0, sizeof(v12));
    time1 = v16[0];
    time2 = v16[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
    time1 = v17;
    *&time2.value = v14;
    time2.epoch = v15;
    v7.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v11);
    (*(**(*(this + 47) + 32) + 328))(&v12, v7);
    memset(&v17, 0, sizeof(v17));
    operator*(*(a3 + 36) - 1, a3 + 5, &v11);
    time1 = *(a3 + 4);
    time2 = v11;
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
    time1 = v12;
    time2 = v17;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *(a3 + 24) = *(a3 + 6);
      *(a3 + 5) = *(a3 + 14);
      *(a3 + 3) = *(a3 + 120);
      *(a3 + 8) = *(a3 + 17);
      *(a3 + 18) = *(a3 + 36);
      *(a3 + 88) = 0;
      *(a3 + 10) = *(a3 + 19);
    }

    else
    {
      time1 = *(a3 + 4);
      time2 = v13;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        *(a3 + 1) = v13;
        *(a3 + 18) = 1;
        *(a3 + 3) = *(a3 + 120);
        *(a3 + 8) = *(a3 + 17);
        goto LABEL_8;
      }

      *(a3 + 24) = *(a3 + 6);
      *(a3 + 5) = *(a3 + 14);
      *(a3 + 3) = *(a3 + 120);
      *(a3 + 8) = *(a3 + 17);
      *(a3 + 18) = *(a3 + 36);
      *(a3 + 88) = 0;
      *(a3 + 10) = *(a3 + 19);
      time1 = v13;
      time2 = *(a3 + 4);
      PC_CMTimeSaferSubtract(&time1, &time2, &v10);
      time1 = v10;
      *&time2.value = v14;
      time2.epoch = v15;
      PC_CMTimeSaferAdd(&time1, &time2, &v11);
      operator/(&v11.value, a3 + 120, &time1);
      v8 = vcvtpd_u64_f64(CMTimeGetSeconds(&time1));
      if (*(a3 + 36) > v8)
      {
        *(a3 + 18) = v8;
LABEL_8:
        operator new[]();
      }
    }
  }

  return a3;
}

void OZThrowBehavior::OZThrowBehavior(OZThrowBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C8680;
  v5[2] = &unk_2872C8968;
  v5[6] = &unk_2872C8BC0;
  v5[42] = &unk_2872C8C18;
  PCURL::PCURL(&v7, @"Throw Behavior Increment Type Enum");
  PCURL::PCURL(&v6, @"Throw Behavior Increment Type");
  OZChannelEnum::OZChannelEnum((this + 504), &v7, &v6, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Throw Behavior Throw Velocity");
  OZChannel3D::OZChannel3D((this + 760), &v7, (this + 56), 0x190u, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Throw Behavior Throw Distance");
  OZChannel3D::OZChannel3D((this + 1352), &v7, (this + 56), 0x192u, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "HUD Scale (Hidden)");
  OZChannelDouble::OZChannelDouble((this + 1944), &v7, (this + 56), 0x193u, 2, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Throw Dimension Type Enum (Hidden)");
  PCString::PCString(&v6, "Throw Dimension Type Enum (Hidden)");
  OZChannelEnum::OZChannelEnum((this + 2096), &v7, &v6, (this + 56), 0x194u, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  OZChannelFolder::setKeyframable((this + 760), 0, 0);
  OZChannelFolder::setKeyframable((this + 1352), 0, 0);
  OZChannel::setKeyframable((this + 1944), 0);
  OZChannel::setKeyframable((this + 2096), 0);
}

void sub_260275850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 1944));
  OZChannel3D::~OZChannel3D((v10 + 1352));
  OZChannel3D::~OZChannel3D((v10 + 760));
  OZChannelEnum::~OZChannelEnum((v10 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZThrowBehavior::OZThrowBehavior(OZThrowBehavior *this, OZThrowBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C8680;
  v5[2] = &unk_2872C8968;
  v5[6] = &unk_2872C8BC0;
  v5[42] = &unk_2872C8C18;
  OZChannelEnum::OZChannelEnum((v5 + 63), (a2 + 504), (this + 56));
  OZChannel3D::OZChannel3D((this + 760), (a2 + 760), (this + 56));
  OZChannel3D::OZChannel3D((this + 1352), (a2 + 1352), (this + 56));
  OZChannel::OZChannel((this + 1944), (a2 + 1944), (this + 56));
  *(this + 243) = &unk_287245C60;
  *(this + 245) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 2096), (a2 + 2096), (this + 56));
}

void sub_260275A68(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannel3D::~OZChannel3D((v1 + 1352));
  OZChannel3D::~OZChannel3D((v1 + 760));
  OZChannelEnum::~OZChannelEnum((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZThrowBehavior::~OZThrowBehavior(OZThrowBehavior *this)
{
  *this = &unk_2872C8680;
  *(this + 2) = &unk_2872C8968;
  *(this + 6) = &unk_2872C8BC0;
  *(this + 42) = &unk_2872C8C18;
  OZChannelEnum::~OZChannelEnum((this + 2096));
  OZChannel::~OZChannel((this + 1944));
  *(this + 169) = &unk_28724B1C8;
  *(this + 171) = &unk_28724B528;
  OZChannel::~OZChannel((this + 1792));
  OZChannel2D::~OZChannel2D((this + 1352));
  *(this + 95) = &unk_28724B1C8;
  *(this + 97) = &unk_28724B528;
  OZChannel::~OZChannel((this + 1200));
  OZChannel2D::~OZChannel2D((this + 760));
  OZChannelEnum::~OZChannelEnum((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZThrowBehavior::~OZThrowBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZThrowBehavior::~OZThrowBehavior(OZThrowBehavior *this)
{
  OZThrowBehavior::~OZThrowBehavior((this - 16));
}

{
  OZThrowBehavior::~OZThrowBehavior((this - 48));
}

{
  OZThrowBehavior::~OZThrowBehavior((this - 336));
}

{
  OZThrowBehavior::~OZThrowBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZThrowBehavior::~OZThrowBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZThrowBehavior::~OZThrowBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZThrowBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 504, v4 + 504);
  OZChannelFolder::operator=(a1 + 760);
  OZChannelBase::operator=(a1 + 896, v5 + 896);
  OZChannelBase::operator=(a1 + 1048, v5 + 1048);
  OZChannelBase::operator=(a1 + 1200, v5 + 1200);
  OZChannelFolder::operator=(a1 + 1352);
  OZChannelBase::operator=(a1 + 1488, v5 + 1488);
  OZChannelBase::operator=(a1 + 1640, v5 + 1640);
  OZChannelBase::operator=(a1 + 1792, v5 + 1792);
  OZChannelBase::operator=(a1 + 1944, v5 + 1944);

  return OZChannelBase::operator=(a1 + 2096, v5 + 2096);
}

OZChannelBase *OZThrowBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  result = OZChannel::getValueAsInt((a1 + 504), MEMORY[0x277CC08F0], 0.0);
  v4 = result;
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

      v10 = (v9 + 760);
      if (v4)
      {
        OZChannelBase::setFlag(v10, 0x400000, 1);
        result = OZChannelBase::resetFlag((v9 + 1352), 0x400000, 1);
      }

      else
      {
        OZChannelBase::resetFlag(v10, 0x400000, 1);
        result = OZChannelBase::setFlag((v9 + 1352), 0x400000, 1);
      }

      v5 = *(v5 + 8);
    }
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      result = OZChannel::getValueAsInt((v7 + 504), v6, 0.0);
      if (v4 != result)
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

      OZChannelBase::resetFlag((v13 + 760), 0x400000, 1);
      result = OZChannelBase::resetFlag((v13 + 1352), 0x400000, 1);
    }
  }

  return result;
}

void OZThrowBehavior::calcThrowVelocity(uint64_t a1, double *a2)
{
  if (OZChannel::getValueAsInt((a1 + 504), MEMORY[0x277CC08F0], 0.0))
  {
    v12 = 0uLL;
    v13 = 0;
    v4 = (*(*a1 + 336))(a1);
    FrameDuration = OZSceneSettings::getFrameDuration((v4 + 336), &v12);
    (*(*a1 + 608))(v10, a1, FrameDuration);
    v15 = v11;
    *&v14.value = v12;
    v14.epoch = v13;
    PC_CMTimeSaferSubtract(&v15, &v14, &v9);
    Seconds = CMTimeGetSeconds(&v9);
    if (Seconds <= 0.0)
    {
      *a2 = 0.0;
      a2[1] = 0.0;
      a2[2] = 0.0;
    }

    else
    {
      v7 = Seconds;
      OZChannel3D::getValue(a1 + 1352, MEMORY[0x277CC08F0], a2, 0.0);
      *a2 = vmulq_n_f64(*a2, 1.0 / v7);
      a2[2] = 1.0 / v7 * a2[2];
    }
  }

  else
  {
    v8 = MEMORY[0x277CC08F0];

    OZChannel3D::getValue(a1 + 760, v8, a2, 0.0);
  }
}

void OZThrowBehavior::accumForces(OZThrowBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  memset(&v13, 0, sizeof(v13));
  v5 = (*(*this + 336))(this, a2, a3);
  OZSceneSettings::getFrameDuration((v5 + 336), &v13);
  memset(&v12, 0, sizeof(v12));
  operator*(&v13, &v12, 0.001);
  (*(*this + 608))(&v9, this);
  *&time1.value = v9;
  *&time1.epoch = v10;
  time2 = *(a2 + 176);
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    *&time1.value = v9;
    *&time1.epoch = v10;
    time2 = v11;
    PC_CMTimeSaferAdd(&time1, &time2, &v16);
    time1 = v16;
    time2 = v13;
    PC_CMTimeSaferSubtract(&time1, &time2, &v15);
    time1 = *(a2 + 176);
    time2 = v15;
    if (CMTimeCompare(&time1, &time2) <= 0 || (v11.flags & 1) != 0 && (v11.flags & 0x10) != 0)
    {
      (*(*this + 608))(&time1, this);
      time2 = *(a2 + 176);
      v16 = v12;
      PC_CMTimeSaferAdd(&time2, &v16, &v6);
      time2 = time1;
      v16 = v6;
      if (CMTimeCompare(&time2, &v16) > 0 || (time2 = time1, v16 = v8, PC_CMTimeSaferAdd(&time2, &v16, &v15), time2 = v15, v16 = v13, PC_CMTimeSaferSubtract(&time2, &v16, &v14), time2 = v6, v16 = v14, CMTimeCompare(&time2, &v16) > 0) && ((v8.flags & 1) == 0 || (v8.flags & 0x10) == 0))
      {
        v9 = 0uLL;
        v10 = 0.0;
        OZThrowBehavior::calcThrowVelocity(this, v9.f64);
        *(a2 + 56) = vsubq_f64(*(a2 + 56), v9);
        *(a2 + 9) = *(a2 + 9) - v10;
      }
    }
  }
}

double OZThrowBehavior::accumInitialValues(OZThrowBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v5 = 0uLL;
  v6 = 0.0;
  OZThrowBehavior::calcThrowVelocity(this, v5.f64);
  *(a2 + 56) = vaddq_f64(v5, *(a2 + 56));
  result = v6 + *(a2 + 9);
  *(a2 + 9) = result;
  return result;
}

void OZViscousDragBehavior::OZViscousDragBehavior(OZViscousDragBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C8C58;
  v5[2] = &unk_2872C8F40;
  v5[6] = &unk_2872C9198;
  v5[42] = &unk_2872C91F0;
  PCURL::PCURL(&v9, @"Viscous Drag Behavior Coefficient of Drag");
  Instance = OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(v6);
  v8 = OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(Instance);
  OZChannel3D::OZChannel3D((this + 504), 0.3, 0.3, 0.3, &v9, (this + 56), 0x190u, 0, 3u, Instance, v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Viscous Drag Behavior Active Axes");
  OZChannelBool3D::OZChannelBool3D((this + 1096), 1, 1, 0, &v9, (this + 56), 0x191u, 0, 3u);
  PCString::~PCString(&v9);
}

void sub_2602766CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel3D::~OZChannel3D((v10 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZViscousDragBehavior::OZViscousDragBehavior(OZViscousDragBehavior *this, OZViscousDragBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872C8C58;
  v5[2] = &unk_2872C8F40;
  v5[6] = &unk_2872C9198;
  v5[42] = &unk_2872C91F0;
  OZChannel3D::OZChannel3D((v5 + 63), (a2 + 504), (this + 56));
  OZChannelBool3D::OZChannelBool3D((this + 1096), (a2 + 1096), (this + 56));
}

void sub_2602767DC(_Unwind_Exception *a1)
{
  OZChannel3D::~OZChannel3D((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZViscousDragBehavior::~OZViscousDragBehavior(OZViscousDragBehavior *this)
{
  *this = &unk_2872C8C58;
  *(this + 2) = &unk_2872C8F40;
  *(this + 6) = &unk_2872C9198;
  *(this + 42) = &unk_2872C91F0;
  OZChannelBool3D::~OZChannelBool3D((this + 1096));
  *(this + 63) = &unk_28724B1C8;
  *(this + 65) = &unk_28724B528;
  OZChannel::~OZChannel((this + 944));
  OZChannel2D::~OZChannel2D((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZViscousDragBehavior::~OZViscousDragBehavior(OZViscousDragBehavior *this)
{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 16));
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 48));
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 336));
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZViscousDragBehavior::~OZViscousDragBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZViscousDragBehavior::operator=(uint64_t a1, const void *a2)
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

  return OZChannelBase::operator=(a1 + 944, v5 + 944);
}

double OZViscousDragBehavior::accumForces(OZViscousDragBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v13 = *(a2 + 176);
  v11 = 0uLL;
  v12 = 0.0;
  OZChannel3D::getValue(this + 504, &v13, &v11, 0.0);
  v5 = v12 * *(a2 + 9);
  v9 = 0uLL;
  v10 = 0.0;
  v8 = vmulq_f64(v11, *(a2 + 56));
  OZChannelBool3D::getValue(this + 1096, &v13, v9.f64, 0.0);
  v6 = v5 * v10;
  *(a2 + 8) = vsubq_f64(*(a2 + 8), vmulq_f64(v8, v9));
  result = *(a2 + 18) - v6;
  *(a2 + 18) = result;
  return result;
}

uint64_t OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl *this)
{
  if (atomic_load_explicit(&OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(void)::OZViscousDragBehavior_kChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(void)::OZViscousDragBehavior_kChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::_OZViscousDragBehavior_kChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZViscousDragBehavior::OZViscousDragBehavior_kChanImpl::_OZViscousDragBehavior_kChan)
  {
    operator new();
  }
}

uint64_t OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo *this)
{
  if (atomic_load_explicit(&OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(void)::OZViscousDragBehavior_kChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(void)::OZViscousDragBehavior_kChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::_OZViscousDragBehavior_kChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::_OZViscousDragBehavior_kChanInfo)
  {
    operator new();
  }
}

OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo *OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo::OZViscousDragBehavior_kChanInfo(OZViscousDragBehavior::OZViscousDragBehavior_kChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872C92A8;
  *(this + 10) = &unk_2872C92C8;
  return this;
}

void OZVortexAroundBehavior::OZVortexAroundBehavior(OZVortexAroundBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3, a4);
  *v5 = &unk_2872C9320;
  v5[2] = &unk_2872C9608;
  v5[6] = &unk_2872C9860;
  v5[42] = &unk_2872C98B8;
  PCURL::PCURL(&v8, @"Vortex Behavior Pole Axis Enum");
  PCURL::PCURL(&v7, @"Vortex Behavior Pole Axis");
  OZChannelEnum::OZChannelEnum((this + 2120), 1u, &v8, &v7, (this + 56), 0x1F6u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  v6 = *(this + 20);
  PCURL::PCURL(&v8, @"Vortex Behavior Seed");
  OZChannelSeed::OZChannelSeed((this + 2376), v6, &v8, (this + 56), 0x1F7u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Vortex Behavior Direction Enum");
  PCURL::PCURL(&v7, @"Vortex Behavior Direction");
  OZChannelEnum::OZChannelEnum((this + 2528), &v8, &v7, (this + 56), 0x1F4u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  OZChannelBase::resetFlag((this + 2376), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2376));
}

void sub_2602770F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 2376));
  OZChannelEnum::~OZChannelEnum((v12 + 2120));
  OZAttractedToBehavior::~OZAttractedToBehavior(v12);
  _Unwind_Resume(a1);
}

void OZVortexAroundBehavior::OZVortexAroundBehavior(OZVortexAroundBehavior *this, OZVortexAroundBehavior *a2, char a3)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3);
  *v5 = &unk_2872C9320;
  v5[2] = &unk_2872C9608;
  v5[6] = &unk_2872C9860;
  v5[42] = &unk_2872C98B8;
  OZChannelEnum::OZChannelEnum((v5 + 265), (a2 + 2120), (this + 56));
  OZChannel::OZChannel((this + 2376), (a2 + 2376), (this + 56));
  *(this + 297) = &unk_287247AE0;
  *(this + 299) = &unk_287247E40;
  OZChannelEnum::OZChannelEnum((this + 2528), (a2 + 2528), (this + 56));
}

void sub_2602772AC(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 2120));
  OZAttractedToBehavior::~OZAttractedToBehavior(v1);
  _Unwind_Resume(a1);
}

void OZVortexAroundBehavior::~OZVortexAroundBehavior(OZVortexAroundBehavior *this)
{
  *this = &unk_2872C9320;
  *(this + 2) = &unk_2872C9608;
  *(this + 6) = &unk_2872C9860;
  *(this + 42) = &unk_2872C98B8;
  OZChannelEnum::~OZChannelEnum((this + 2528));
  OZChannel::~OZChannel((this + 2376));
  OZChannelEnum::~OZChannelEnum((this + 2120));

  OZAttractedToBehavior::~OZAttractedToBehavior(this);
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZVortexAroundBehavior::~OZVortexAroundBehavior(OZVortexAroundBehavior *this)
{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 16));
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 48));
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 336));
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZVortexAroundBehavior::~OZVortexAroundBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZVortexAroundBehavior::operator=(uint64_t a1, const void *a2)
{
  OZAttractedToBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return OZChannelBase::operator=(a1 + 2528, v4 + 2528);
}

void OZVortexAroundBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
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

      v9 = OZChannelBool3D::getX((v8 + 1528), v6, 0.0);
      v10 = OZChannelBool3D::getY((v8 + 1528), v6, 0.0);
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

      v12 = OZChannelBool3D::getZ((v8 + 1528), v6, 0.0);
      v5 |= v9 + v12 == 3;
      if (v9 + v12 == 3 && OZChannel::getValueAsInt((v8 + 2120), v6, 0.0) == 3)
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

    v15 = (v14 + 2120);
    if (v5)
    {
      OZChannelBase::resetFlag(v15, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v15, 0x400000, 1);
    }

    OZChannelBase::enable((v14 + 2120), v5 & 1, 1);
    v16 = (v14 + 2376);
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

uint64_t OZVortexAroundBehavior::accumInitialValues(OZVortexAroundBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v41 = *(a2 + 176);
  OZChannel::getValueAsDouble((this + 664), &v41, 0.0);
  v7 = v6;
  OZChannel::getValueAsDouble((this + 1224), &v41, 0.0);
  v9 = v8;
  v39 = 0uLL;
  v40 = 0.0;
  v38 = 0;
  result = OZAttractedToBehavior::getMaskVector(this, v39.f64, &v38);
  if (v38 >= 2)
  {
    result = OZChanTransformNodeRef::getTransformNode((this + 504));
    if (result)
    {
      v36 = 0uLL;
      v37 = 0.0;
      result = OZSimulationState::getNodePosition(a2, (a2 + 176), result, a3, &v36);
      v11 = v37 - *(a2 + 2);
      v34 = vmulq_f64(vsubq_f64(v36, *a2), v39);
      v35 = v11 * v40;
      v12 = vaddvq_f64(vmulq_f64(v34, v34)) + v35 * v35;
      v13 = sqrt(v12);
      if (v13 >= 10.0 && v13 <= v9)
      {
        ValueAsInt = OZChannel::getValueAsInt((this + 816), &v41, 0.0);
        OZChannel::getValueAsDouble((this + 1072), &v41, 0.0);
        if (ValueAsInt)
        {
          v17 = v12;
        }

        else
        {
          v17 = v13;
        }

        v18 = v7 / (v17 * v16);
        v19 = OZChannel::getValueAsInt((this + 2120), &v41, 0.0);
        v20 = v38;
        v21 = OZChannel::getValueAsInt((this + 2376), MEMORY[0x277CC08F0], 0.0);
        OZVortexBehavior::CalcThrowDirection(v34.f64, v39.f64, v20, v19, 0, v21, v32.f64);
        v22 = v32;
        v23 = v33;
        v24 = sqrt(v13 * sqrt(v18 * v34.f64[0] * (v18 * v34.f64[0]) + v18 * v34.f64[1] * (v18 * v34.f64[1]) + v18 * v35 * (v18 * v35)));
        v25 = sqrt(vaddvq_f64(vmulq_f64(v22, v22)) + v23 * v23);
        if (fabs(v25) >= 0.000000100000001)
        {
          v22 = vdivq_f64(v32, vdupq_lane_s64(*&v25, 0));
          v23 = v33 / v25;
        }

        v31 = vmulq_n_f64(v22, v24);
        v26 = v24 * v23;
        v30 = v24;
        result = OZChannel::getValueAsInt((this + 2528), MEMORY[0x277CC08F0], 0.0);
        v27 = -(v30 * v23);
        if (result)
        {
          v27 = v26;
        }

        v28 = vdup_n_s32(result == 0);
        v29.i64[0] = v28.u32[0];
        v29.i64[1] = v28.u32[1];
        *(a2 + 56) = vaddq_f64(*(a2 + 56), vbslq_s8(vcltzq_s64(vshlq_n_s64(v29, 0x3FuLL)), vnegq_f64(v31), v31));
        *(a2 + 9) = v27 + *(a2 + 9);
      }
    }
  }

  return result;
}

uint64_t OZVortexAroundBehavior::accumInitialValues(OZVortexAroundBehavior *this, OZSimStateArray *a2, int a3, OZTransformNode *a4)
{
  v46 = *(a2 + 1);
  OZChannel::getValueAsDouble((this + 664), &v46, 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 1224), &v46, 0.0);
  v11 = v10;
  v44 = 0uLL;
  v45 = 0.0;
  v43 = 0;
  result = OZAttractedToBehavior::getMaskVector(this, v44.f64, &v43);
  if (v43 >= 2)
  {
    result = OZChanTransformNodeRef::getTransformNode((this + 504));
    if (result)
    {
      v41 = 0uLL;
      v42 = 0.0;
      OZSimulationState::GetNodePosition(&v46, result, a4, &v41);
      OZChannel::getValueAsDouble((this + 1072), &v46, 0.0);
      v14 = v13;
      result = OZChannel::getValueAsInt((this + 2376), MEMORY[0x277CC08F0], 0.0);
      v15 = *a2;
      v16 = *(a2 + 1);
      if (v16 != *a2 && a3 >= 1)
      {
        v17 = result;
        v18 = v16 - 248;
        v19 = 1;
        v20 = MEMORY[0x277CC08F0];
        do
        {
          v21 = v42 - *(v18 + 16);
          v39 = vmulq_f64(vsubq_f64(v41, *v18), v44);
          v40 = v21 * v45;
          v22 = vaddvq_f64(vmulq_f64(v39, v39)) + v40 * v40;
          v23 = sqrt(v22);
          v24 = v23 >= 10.0 && v23 <= v11;
          if (v24)
          {
            if (!OZChannel::getValueAsInt((this + 816), &v46, 0.0))
            {
              v22 = v23;
            }

            ValueAsInt = OZChannel::getValueAsInt((this + 2120), &v46, 0.0);
            v26 = v43;
            v27 = (*(**(v18 + 232) + 32))(*(v18 + 232));
            OZVortexBehavior::CalcThrowDirection(v39.f64, v44.f64, v26, ValueAsInt, v17, v27, v37.f64);
            v28 = v37;
            v29 = v38;
            v30 = sqrt(vaddvq_f64(vmulq_f64(v28, v28)) + v29 * v29);
            if (fabs(v30) >= 0.000000100000001)
            {
              v28 = vdivq_f64(v37, vdupq_lane_s64(*&v30, 0));
              v29 = v38 / v30;
            }

            v31 = v9 / (v14 * v22);
            v35 = sqrt(v23 * sqrt(v31 * v39.f64[0] * (v31 * v39.f64[0]) + v31 * v39.f64[1] * (v31 * v39.f64[1]) + v31 * v40 * (v31 * v40)));
            v36 = vmulq_n_f64(v28, v35);
            result = OZChannel::getValueAsInt((this + 2528), v20, 0.0);
            v32 = -(v35 * v29);
            if (result)
            {
              v32 = v35 * v29;
            }

            v33 = vdup_n_s32(result == 0);
            v34.i64[0] = v33.u32[0];
            v34.i64[1] = v33.u32[1];
            *(v18 + 56) = vaddq_f64(*(v18 + 56), vbslq_s8(vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL)), vnegq_f64(v36), v36));
            *(v18 + 72) = v32 + *(v18 + 72);
            v15 = *a2;
          }

          if (v18 == v15)
          {
            break;
          }

          v18 -= 248;
          v24 = v19++ < a3;
        }

        while (v24);
      }
    }
  }

  return result;
}