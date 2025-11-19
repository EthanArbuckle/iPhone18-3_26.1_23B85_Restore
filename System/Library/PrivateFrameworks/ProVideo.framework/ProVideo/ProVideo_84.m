void sub_2600E6314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZSceneSettings::parseBegin(OZSceneSettings *this, PCSerializerReadStream *a2)
{
  *(this + 140) = 0;
  *(this + 34) = 0;
  *(this + 264) = 1;
  PCSerializerReadStream::pushScope(a2, &OZSceneSettingsScope);
  return 1;
}

uint64_t OZSceneSettings::parseEnd(OZSceneSettings *this, PCSerializerReadStream *a2)
{
  if ((*(this + 140) & 1) == 0)
  {
    v11 = 0.0;
    v10 = 0.0;
    v9 = 0;
    PCColor::getColorSpace((this + 80), &v8);
    PCColor::getRGBA((this + 80), &v11, &v10, &v9 + 1, &v9, &v8);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
    if (*&v9 <= 0.0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
      if (v11 <= 0.0 && v10 <= 0.0)
      {
        v4 = 2 * (*(&v9 + 1) > 0.0);
      }
    }

    *(this + 34) = v4;
    *(this + 140) = 1;
    PCColor::setAlpha((this + 80), 1.0);
  }

  v5 = *(a2 + 26);
  if (v5 < 5 || (v5 == 5 ? (v6 = *(a2 + 27) > 0xAu) : (v6 = 1), !v6))
  {
    if (*(this + 15) == -1 && *(this + 14) == 1)
    {
      *(this + 15) = 3;
    }

    *(this + 16) = 0;
  }

  if (*(this + 14) != 1)
  {
    *(this + 16) = 0;
  }

  return 1;
}

void sub_2600E648C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t OZSceneSettings::parseElement(OZSceneSettings *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  switch(*(a3 + 2))
  {
    case 2:
      (*(*a3 + 24))(a3, this + 8);
      return 1;
    case 3:
      (*(*a3 + 24))(a3, this + 12);
      return 1;
    case 4:
      (*(*a3 + 32))(a3, this + 16);
      return 1;
    case 5:
      (*(*a3 + 64))(a3, this + 32);
      goto LABEL_28;
    case 6:
      (*(*a3 + 72))(a3, this + 40);
LABEL_28:
      if (*(a2 + 26) <= 4u)
      {
        OZSceneSettings::getFrameDuration(this, &v19);
        PCSerializerReadStream::setTimeScale(a2, &v19);
      }

      return 1;
    case 9:
      (*(*a3 + 64))(a3, this + 48);
      return 1;
    case 0xA:
      v22 = 0.0;
      v23 = 0.0;
      v21 = 0.0;
      v20 = 1.0;
      if (*(a2 + 26) > 3u)
      {
        v8 = PCColorSpaceCache::cgsRGB(*(this + 14));
      }

      else
      {
        v8 = PCColorSpaceCache::cgGenericRGB(this);
      }

      v9 = v8;
      (*(*a3 + 144))(a3, 1, &v23);
      (*(*a3 + 144))(a3, 2, &v22);
      (*(*a3 + 144))(a3, 3, &v21);
      (*(*a3 + 144))(a3, 4, &v20);
      v10 = v23;
      v11 = v22;
      v12 = v21;
      v13 = v20;
      PCColor::setRGBA((this + 80), v10, v11, v12, v13, v9);
      if (v9 != PCColorSpaceCache::cgsRGB(*(this + 14)))
      {
        v14 = PCColorSpaceCache::cgsRGB(*(this + 14));
        PCColor::PCColor(&v19, (this + 80), v14);
        v15 = *&v19.var0.var1[1];
        *(this + 5) = *&v19.var0.var0;
        *(this + 6) = v15;
        *(this + 7) = *&v19.var0.var1[3];
        v16 = *(this + 16);
        obj = v19.var1._obj;
        if (v16 && v16 != v19.var1._obj)
        {
          PCCFRefTraits<CGColorSpace *>::release(v16);
          obj = v19.var1._obj;
        }

        *(this + 16) = obj;
        v19.var1._obj = 0;
        PCCFRef<CGColorSpace *>::~PCCFRef(&v19.var1._obj);
      }

      return 1;
    case 0xB:
      (*(*a3 + 32))(a3, this + 192);
      return 1;
    case 0xC:
      if ((*(*a3 + 32))(a3, this + 196))
      {
        *(this + 49) >>= 3;
      }

      return 1;
    case 0xF:
      (*(*a3 + 32))(a3, this + 144);
      return 1;
    case 0x11:
      (*(*a3 + 32))(a3, this + 148);
      return 1;
    case 0x12:
      (*(*a3 + 64))(a3, this + 152);
      return 1;
    case 0x13:
      v19.var0.var0 = 0;
      (*(*a3 + 32))(a3, &v19);
      return 1;
    case 0x14:
      (*(*a3 + 32))(a3, this + 24);
      return 1;
    case 0x19:
      (*(*a3 + 16))(a3, this + 184);
      return 1;
    case 0x1D:
      LOBYTE(v19.var0.var0) = 0;
      (*(*a3 + 72))(a3, &v19);
      if (LOBYTE(v19.var0.var0) == 1)
      {
        if (*(this + 140))
        {
          v6 = *(this + 34);
          if (v6 <= 1)
          {
            v6 = 1;
          }
        }

        else
        {
          v6 = 1;
        }

LABEL_61:
        *(this + 34) = v6;
      }

      else if ((*(this + 140) & 1) == 0)
      {
        *(this + 34) = 0;
      }

LABEL_62:
      *(this + 140) = 1;
      return 1;
    case 0x1E:
      (*(*a3 + 32))(a3, this + 208);
      return 1;
    case 0x22:
      (*(*a3 + 32))(a3, this + 212);
      return 1;
    case 0x23:
      (*(*a3 + 24))(a3, this + 176);
      return 1;
    case 0x24:
      LOBYTE(v19.var0.var0) = 0;
      (*(*a3 + 72))(a3, &v19);
      if (LOBYTE(v19.var0.var0) != 1)
      {
        return 1;
      }

      v6 = 2;
      goto LABEL_61;
    case 0x25:
      (*(*a3 + 32))(a3, this + 216);
      return 1;
    case 0x26:
      (*(*a3 + 32))(a3, this + 136);
      goto LABEL_62;
    case 0x27:
      (*(*a3 + 72))(a3, this + 220);
      return 1;
    case 0x28:
      v19.var0.var0 = 0;
      (*(*a3 + 56))(a3, &v19);
      return 1;
    case 0x29:
      v19.var0.var0 = 0;
      (*(*a3 + 32))(a3, &v19);
      *(this + 57) = PCColorSpaceCache::intToColorSpaceID(v19.var0.var0, 3u);
      return 1;
    case 0x2A:
      (*(*a3 + 72))(a3, this + 20);
      return 1;
    case 0x2B:
      (*(*a3 + 72))(a3, this + 240);
      return 1;
    case 0x2C:
      (*(*a3 + 72))(a3, this + 264);
      return 1;
    case 0x2D:
      (*(*a3 + 72))(a3, this + 160);
      return 1;
    case 0x2E:
      v19.var0.var0 = 0;
      (*(*a3 + 24))(a3, &v19);
      var0 = v19.var0.var0 > 2;
      goto LABEL_40;
    case 0x2F:
      v19.var0.var0 = 0;
      (*(*a3 + 24))(a3, &v19);
      var0 = v19.var0.var0;
LABEL_40:
      *(this + 14) = var0;
      return 1;
    case 0x30:
      v19.var0.var0 = 0;
      (*(*a3 + 24))(a3, &v19);
      *(this + 15) = v19.var0.var0;
      return 1;
    case 0x31:
      v19.var0.var0 = 0;
      (*(*a3 + 32))(a3, &v19);
      *(this + 67) = v19.var0.var0;
      return 1;
    case 0x32:
      v19.var0.var0 = 0;
      (*(*a3 + 24))(a3, &v19);
      *(this + 16) = v19.var0.var0;
      return 1;
    case 0x33:
      (*(*a3 + 64))(a3, this + 248);
      return 1;
    case 0x34:
      (*(*a3 + 72))(a3, this + 68);
      return 1;
    case 0x35:
      (*(*a3 + 72))(a3, this + 69);
      return 1;
    default:
      return 1;
  }
}

OZImageElement *OZRetimingBehavior::didAddToNode(OZRetimingBehavior *this, OZSceneNode *a2)
{
  result = OZChannelBehavior::didAddToNode(this, a2);
  if ((*(this + 544) & 1) == 0)
  {
    result = (*(*a2 + 272))(a2);
    if (result)
    {
      OZRetimingBehavior::addRetimingNode(this, a2);
      if (result)
      {
        result = OZImageElement::updateRetimingState(result, v5);
      }

      *(this + 544) = 1;
    }
  }

  return result;
}

__n128 OZMaterialLayerSequenceFolder::getImageScale(uint64_t a1, uint64_t a2, __n128 *a3)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a3 = result;
  return result;
}

void OZMaterialLayerSequenceFolder::getImageRotation(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap(OZChannelMaterialLayerMap *this)
{
  *this = &unk_287288070;
  *(this + 2) = &unk_2872883C8;
  OZChannel::~OZChannel((this + 6304));
  OZChannel::~OZChannel((this + 6152));
  OZChannelEnum::~OZChannelEnum((this + 5896));
  OZChannelBool::~OZChannelBool((this + 5744));
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((this + 1840));
  OZChannelEnum::~OZChannelEnum((this + 1584));

  OZChannelImageWithOptions::~OZChannelImageWithOptions(this);
}

{
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap(this);

  JUMPOUT(0x2666E9F00);
}

void sub_2600E70BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCURL::~PCURL(va);
  _Unwind_Resume(a1);
}

PCURL **std::unique_ptr<PCURL>::~unique_ptr[abi:ne200100](PCURL **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    PCURL::~PCURL(v2);
    MEMORY[0x2666E9F00]();
  }

  return a1;
}

void METimeRemap::METimeRemap(METimeRemap *this)
{
  CMTimeMakeWithSeconds(this, 0.0, 30);
  CMTimeMakeWithSeconds(&this->_outroDuration, 0.0, 30);
  CMTimeMakeWithSeconds(&this->_scaleableDuration, 0.0, 30);
  *&this->_isEndTimeAligned = 0;
  *&this->_isIntroOptional = 0;
  this->_pBuildInEnableChan = 0;
  this->_pBuildOutEnableChan = 0;
}

__n128 METimeRemap::setIntroDuration(METimeRemap *this, const CMTime *a2)
{
  result = *&a2->value;
  this->_introDuration.epoch = a2->epoch;
  *&this->_introDuration.value = result;
  return result;
}

__n128 METimeRemap::setOutroDuration(METimeRemap *this, const CMTime *a2)
{
  result = *&a2->value;
  this->_outroDuration.epoch = a2->epoch;
  *&this->_outroDuration.value = result;
  return result;
}

__n128 METimeRemap::setScaleableDuration(METimeRemap *this, const CMTime *a2)
{
  result = *&a2->value;
  this->_scaleableDuration.epoch = a2->epoch;
  *&this->_scaleableDuration.value = result;
  return result;
}

METimeRemap *METimeRemap::setBuildEnableChannels(METimeRemap *this, OZChannelBool *a2, OZChannelBool *a3)
{
  this->_pBuildInEnableChan = a2;
  this->_pBuildOutEnableChan = a3;
  return this;
}

BOOL METimeRemap::shouldShowIntro(METimeRemap *this)
{
  if ((!this->_isIntroOptional || (pBuildInEnableChan = this->_pBuildInEnableChan) != 0 && (CMTimeMakeWithSeconds(&v6, 0.0, 30), OZChannel::getValueAsInt(pBuildInEnableChan, &v6, 0.0))) && (CMTimeMakeWithSeconds(&v5, 0.0, 30), time1 = this->_introDuration, time2 = v5, CMTimeCompare(&time1, &time2)))
  {
    return !this->_forceDisableBuildAnimation;
  }

  else
  {
    return 0;
  }
}

BOOL METimeRemap::shouldShowOutro(METimeRemap *this)
{
  if ((!this->_isOutroOptional || (pBuildOutEnableChan = this->_pBuildOutEnableChan) != 0 && (CMTimeMakeWithSeconds(&v6, 0.0, 30), OZChannel::getValueAsInt(pBuildOutEnableChan, &v6, 0.0))) && (CMTimeMakeWithSeconds(&v5, 0.0, 30), time1 = this->_outroDuration, time2 = v5, CMTimeCompare(&time1, &time2)))
  {
    return !this->_forceDisableBuildAnimation;
  }

  else
  {
    return 0;
  }
}

double METimeRemap::motionTimeFromComponentTime@<D0>(METimeRemap *this@<X0>, const CMTime *a2@<X1>, const CMTimeRange *a3@<X2>, CMTime *a4@<X3>, uint64_t a5@<X8>)
{
  shouldShowIntro = METimeRemap::shouldShowIntro(this);
  memset(&v21, 0, sizeof(v21));
  time1 = *a2;
  time2 = a3->start;
  PC_CMTimeSaferSubtract(&time1, &time2, &v21);
  if (this->_isLoop && !this->_forceDisableLoop)
  {
    if (a4)
    {
      CMTimeMake(&time1, 1, 1);
      *a4 = time1;
    }

    if (!shouldShowIntro)
    {
      memset(&v20, 0, sizeof(v20));
      operator/(&v21.value, &this->_scaleableDuration, &v20);
      CMTimeMake(&v15, 1, 1);
      time1 = v20;
      time2 = v15;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v16);
      time1 = v20;
      time2 = v16;
      PC_CMTimeSaferSubtract(&time1, &time2, &v17);
      operator*(&v17.value, &this->_scaleableDuration, &v18);
      time1 = this->_introDuration;
      time2 = v18;
      PC_CMTimeSaferAdd(&time1, &time2, &v19);
      epoch = v19.epoch;
      v21 = v19;
      result = *&v19.value;
      *a5 = *&v19.value;
LABEL_35:
      *(a5 + 16) = epoch;
      return result;
    }

    time1 = v21;
    time2 = this->_introDuration;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      memset(&v20, 0, sizeof(v20));
      time1 = v21;
      time2 = this->_introDuration;
      PC_CMTimeSaferSubtract(&time1, &time2, &v20);
      time1 = v20;
      time2 = this->_scaleableDuration;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        memset(&v19, 0, sizeof(v19));
        operator/(&v20.value, &this->_scaleableDuration, &v19);
        CMTimeMake(&v14, 1, 1);
        time1 = v19;
        time2 = v14;
        PC_CMTimeFloorToSampleDuration(&time1, &time2, &v15);
        time1 = v19;
        time2 = v15;
        PC_CMTimeSaferSubtract(&time1, &time2, &v16);
        operator*(&v16.value, &this->_scaleableDuration, &v17);
        time1 = this->_introDuration;
        time2 = v17;
        PC_CMTimeSaferAdd(&time1, &time2, &v18);
        v21 = v18;
      }
    }

LABEL_34:
    result = *&v21.value;
    *a5 = *&v21.value;
    epoch = v21.epoch;
    goto LABEL_35;
  }

  if (!METimeRemap::shouldShowIntro(this) && !METimeRemap::shouldShowOutro(this))
  {
    if (a4)
    {
      operator/(&a3->duration.value, &this->_scaleableDuration, &time1);
      *a4 = time1;
    }

    operator*(&this->_scaleableDuration.value, &v21, &v19);
    operator/(&v19.value, &a3->duration, &v20);
    time1 = this->_introDuration;
    *&time2.value = *&v20.value;
    v11 = v20.epoch;
    goto LABEL_39;
  }

  if (!METimeRemap::shouldShowIntro(this) && METimeRemap::shouldShowOutro(this))
  {
    memset(&v20, 0, sizeof(v20));
    time1 = a3->duration;
    time2 = this->_outroDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v20);
    time1 = v21;
    time2 = v20;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (a4)
      {
        operator/(&v20.value, &this->_scaleableDuration, &time1);
        *a4 = time1;
      }

      operator*(&this->_scaleableDuration.value, &v21, &v18);
      operator/(&v18.value, &v20, &v19);
      time1 = this->_introDuration;
      *&time2.value = *&v19.value;
      v11 = v19.epoch;
LABEL_39:
      time2.epoch = v11;
      return PC_CMTimeSaferAdd(&time1, &time2, a5);
    }

    goto LABEL_15;
  }

  if (METimeRemap::shouldShowIntro(this) && !METimeRemap::shouldShowOutro(this))
  {
    time1 = v21;
    time2 = this->_introDuration;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      memset(&v20, 0, sizeof(v20));
      time1 = a3->duration;
      time2 = this->_introDuration;
      PC_CMTimeSaferSubtract(&time1, &time2, &v20);
      memset(&v19, 0, sizeof(v19));
      time1 = v21;
      time2 = this->_introDuration;
      PC_CMTimeSaferSubtract(&time1, &time2, &v19);
      memset(&v18, 0, sizeof(v18));
      operator*(&this->_scaleableDuration.value, &v19, &time1);
      operator/(&time1.value, &v20, &v18);
      if (a4)
      {
        operator/(&v20.value, &this->_scaleableDuration, &time1);
        *a4 = time1;
      }

      time1 = this->_introDuration;
      *&time2.value = *&v18.value;
      v11 = v18.epoch;
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  time1 = v21;
  time2 = this->_introDuration;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
LABEL_32:
    if (a4)
    {
      CMTimeMake(&time1, 1, 1);
      *a4 = time1;
    }

    goto LABEL_34;
  }

  memset(&v20, 0, sizeof(v20));
  time1 = a3->duration;
  time2 = this->_outroDuration;
  PC_CMTimeSaferSubtract(&time1, &time2, &v20);
  time1 = v21;
  time2 = v20;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    memset(&v19, 0, sizeof(v19));
    time1 = a3->duration;
    time2 = this->_introDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v18);
    time1 = v18;
    time2 = this->_outroDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v19);
    memset(&v18, 0, sizeof(v18));
    time1 = v21;
    time2 = this->_introDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v18);
    if (a4)
    {
      operator/(&v19.value, &this->_scaleableDuration, &time1);
      *a4 = time1;
    }

    operator*(&this->_scaleableDuration.value, &v18, &v16);
    operator/(&v16.value, &v19, &v17);
    time1 = this->_introDuration;
    *&time2.value = *&v17.value;
    v11 = v17.epoch;
    goto LABEL_39;
  }

LABEL_15:
  if (a4)
  {
    CMTimeMake(&time1, 1, 1);
    *a4 = time1;
  }

  time1 = this->_introDuration;
  time2 = this->_scaleableDuration;
  PC_CMTimeSaferAdd(&time1, &time2, &v18);
  time1 = v18;
  time2 = v21;
  PC_CMTimeSaferAdd(&time1, &time2, &v19);
  time1 = v19;
  time2 = v20;
  return PC_CMTimeSaferSubtract(&time1, &time2, a5);
}

double METimeRemap::componentTimeFromMotionTime@<D0>(METimeRemap *this@<X0>, const CMTime *a2@<X1>, const CMTimeRange *a3@<X2>, uint64_t a4@<X8>)
{
  if (this->_isLoop && !this->_forceDisableLoop)
  {
    goto LABEL_18;
  }

  if (!METimeRemap::shouldShowIntro(this) && !METimeRemap::shouldShowOutro(this))
  {
    time1 = *a2;
    time2 = this->_introDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v17);
    p_value = &a3->duration.value;
    v9 = &v17;
    goto LABEL_15;
  }

  if (METimeRemap::shouldShowIntro(this) || !METimeRemap::shouldShowOutro(this))
  {
    if (METimeRemap::shouldShowIntro(this) && !METimeRemap::shouldShowOutro(this))
    {
      time1 = *a2;
      time2 = this->_introDuration;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        v17 = 0uLL;
        v18 = 0;
        time1 = a3->duration;
        time2 = this->_introDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, &v17);
        time1 = *a2;
        time2 = this->_introDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, &v14);
        operator*(&v17, &v14, &v15);
        operator/(&v15.value, &this->_scaleableDuration, &v16);
        *&time1.value = *&v16.value;
        epoch = v16.epoch;
        goto LABEL_20;
      }
    }

    else
    {
      time1 = *a2;
      time2 = this->_introDuration;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        v17 = 0uLL;
        v18 = 0;
        time1 = a3->duration;
        time2 = this->_outroDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, &v17);
        time1 = this->_introDuration;
        time2 = this->_scaleableDuration;
        PC_CMTimeSaferAdd(&time1, &time2, &v19);
        time1 = *a2;
        time2 = v19;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          goto LABEL_13;
        }

        memset(&v16, 0, sizeof(v16));
        time1 = a3->duration;
        time2 = this->_introDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, &v19);
        time1 = v19;
        time2 = this->_outroDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, &v16);
        time1 = *a2;
        time2 = this->_introDuration;
        PC_CMTimeSaferSubtract(&time1, &time2, v13);
        operator*(&v16.value, v13, &v14);
        operator/(&v14, &this->_scaleableDuration, &v15);
        *&time1.value = *&v15.value;
        epoch = v15.epoch;
LABEL_20:
        time1.epoch = epoch;
        *&time2.value = *&this->_introDuration.value;
        v10 = this->_introDuration.epoch;
        goto LABEL_21;
      }
    }

LABEL_18:
    v19 = *a2;
    goto LABEL_22;
  }

  v17 = 0uLL;
  v18 = 0;
  time1 = a3->duration;
  time2 = this->_outroDuration;
  PC_CMTimeSaferSubtract(&time1, &time2, &v17);
  time1 = this->_introDuration;
  time2 = this->_scaleableDuration;
  PC_CMTimeSaferAdd(&time1, &time2, &v19);
  time1 = *a2;
  time2 = v19;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
LABEL_13:
    time1 = *a2;
    time2 = this->_introDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v15);
    time1 = v15;
    time2 = this->_scaleableDuration;
    PC_CMTimeSaferSubtract(&time1, &time2, &v16);
    time1 = v16;
    *&time2.value = v17;
    v10 = v18;
LABEL_21:
    time2.epoch = v10;
    PC_CMTimeSaferAdd(&time1, &time2, &v19);
    goto LABEL_22;
  }

  time1 = *a2;
  time2 = this->_introDuration;
  PC_CMTimeSaferSubtract(&time1, &time2, &v16);
  p_value = &v17;
  v9 = &v16;
LABEL_15:
  operator*(p_value, v9, &time1);
  operator/(&time1.value, &this->_scaleableDuration, &v19);
LABEL_22:
  time1 = v19;
  time2 = a3->start;
  return PC_CMTimeSaferAdd(&time1, &time2, a4);
}

void OZApplication::OZApplication(OZApplication *this, void *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  PCSharedCount::PCSharedCount(this + 13);
  PCMutex::PCMutex((this + 112));
  v3 = PCMutex::PCMutex((this + 184));
  v4 = FxDeviceComputeActiveGPUsSet(v3);
  *(this + 32) = v4;
  if (OZChannelBase::isObjectRef(v4))
  {
    FxDeviceLogActiveSet(*(this + 32));
  }

  operator new();
}

void sub_2600E87D0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x80C40B8603338);
  PCMutex::~PCMutex((v1 + 184));
  PCMutex::~PCMutex((v1 + 112));
  PCString::~PCString(v3 + 8);
  var0 = v3->var0;
  if (v3->var0)
  {
    *(v1 + 48) = var0;
    operator delete(var0);
  }

  _Unwind_Resume(a1);
}

void OZApplication::initialize(OZChannelBase *this, const PCString *a2)
{
  v2 = this;
  if ((this->var10 & 1) == 0)
  {
    this = OZChannelBase::setRangeName(this, a2);
  }

  v3 = OZPreferenceManager::Instance(this);
  ContentPath = OZPreferenceManager::getContentPath(v3);
  Instance = OZFactories::getInstance(ContentPath);
  v2->var4.var0 = Instance;
  v6 = OZSceneNode_Factory::getInstance(Instance);
  v7 = OZFactories::addFactory(v2->var4.var0, v6);
  v8 = OZTransformNode_Factory::getInstance(v7);
  v9 = OZFactories::addFactory(v2->var4.var0, v8);
  v10 = OZElement_Factory::getInstance(v9);
  v11 = OZFactories::addFactory(v2->var4.var0, v10);
  v12 = OZRotoshape_Factory::getInstance(v11);
  v13 = OZFactories::addFactory(v2->var4.var0, v12);
  v14 = OZFootage_Factory::getInstance(v13);
  v15 = OZFactories::addFactory(v2->var4.var0, v14);
  v16 = OZLayer_Factory::getInstance(v15);
  v17 = OZFactories::addFactory(v2->var4.var0, v16);
  v18 = OZFootageLayer_Factory::getInstance(v17);
  v19 = OZFactories::addFactory(v2->var4.var0, v18);
  v20 = OZGroup_Factory::getInstance(v19);
  v21 = OZFactories::addFactory(v2->var4.var0, v20);
  v22 = OZImageElement_Factory::getInstance(v21);
  v23 = OZFactories::addFactory(v2->var4.var0, v22);
  v24 = OZImageMask_Factory::getInstance(v23);
  v25 = OZFactories::addFactory(v2->var4.var0, v24);
  v26 = OZCamera_Factory::getInstance(v25);
  v27 = OZFactories::addFactory(v2->var4.var0, v26);
  v28 = OZLight_Factory::getInstance(v27);
  v29 = OZFactories::addFactory(v2->var4.var0, v28);
  v30 = OZBehavior_Factory::getInstance(v29);
  v31 = OZFactories::addFactory(v2->var4.var0, v30);
  v32 = OZNULLBehavior_Factory::getInstance(v31);
  v33 = OZFactories::addFactory(v2->var4.var0, v32);
  v34 = OZSimulationBehavior_Factory::getInstance(v33);
  v35 = OZFactories::addFactory(v2->var4.var0, v34);
  v36 = OZShapeBehavior_Factory::getInstance(v35);
  v37 = OZFactories::addFactory(v2->var4.var0, v36);
  v38 = OZWriteOnBehavior_Factory::getInstance(v37);
  v39 = OZFactories::addFactory(v2->var4.var0, v38);
  v40 = OZReflexiveBehavior_Factory::getInstance(v39);
  v41 = OZFactories::addFactory(v2->var4.var0, v40);
  v42 = OZTransitiveBehavior_Factory::getInstance(v41);
  v43 = OZFactories::addFactory(v2->var4.var0, v42);
  v44 = OZChannelBehavior_Factory::getInstance(v43);
  v45 = OZFactories::addFactory(v2->var4.var0, v44);
  v46 = OZSingleChannelBehavior_Factory::getInstance(v45);
  v47 = OZFactories::addFactory(v2->var4.var0, v46);
  v48 = OZMotionToForcesBehavior_Factory::getInstance(v47);
  v49 = OZFactories::addFactory(v2->var4.var0, v48);
  v50 = OZSimSystemMoToFoBehavior_Factory::getInstance(v49);
  v51 = OZFactories::addFactory(v2->var4.var0, v50);
  v52 = OZCollisionBehavior_Factory::getInstance(v51);
  v53 = OZFactories::addFactory(v2->var4.var0, v52);
  v54 = OZRetimingBehavior_Factory::getInstance(v53);
  v55 = OZFactories::addFactory(v2->var4.var0, v54);
  v56 = OZRig_Factory::getInstance(v55);
  v57 = OZFactories::addFactory(v2->var4.var0, v56);
  v58 = OZRigWidget_Factory::getInstance(v57);
  v59 = OZFactories::addFactory(v2->var4.var0, v58);
  v60 = OZRigWidgetAspectRatio_Factory::getInstance(v59);
  v61 = OZFactories::addFactory(v2->var4.var0, v60);
  v62 = OZRigBehavior_Factory::getInstance(v61);
  v63 = OZFactories::addFactory(v2->var4.var0, v62);
  v64 = OZProjectNode_Factory::getInstance(v63);
  v65 = OZFactories::addFactory(v2->var4.var0, v64);
  v66 = OZLinkBehavior_Factory::getInstance(v65);
  v67 = OZFactories::addFactory(v2->var4.var0, v66);
  v68 = OZMotionPathBehavior_Factory::getInstance(v67);
  v69 = OZFactories::addFactory(v2->var4.var0, v68);
  v70 = OZFxGenerator_Factory::getInstance(v69);
  v71 = OZFactories::addFactory(v2->var4.var0, v70);
  v72 = OZGradientGenerator_Factory::getInstance(v71);
  v73 = OZFactories::addFactory(v2->var4.var0, v72);
  v74 = OZCloneGenerator_Factory::getInstance(v73);
  v75 = OZFactories::addFactory(v2->var4.var0, v74);
  v76 = OZEffect_Factory::getInstance(v75);
  v77 = OZFactories::addFactory(v2->var4.var0, v76);
  v78 = OZFxFilter_Factory::getInstance(v77);
  v79 = OZFactories::addFactory(v2->var4.var0, v78);
  v80 = OZChanElementOrFootageRef_Factory::getInstance(v79);
  v81 = OZFactories::addFactory(v2->var4.var0, v80);
  v82 = OZChanRotoshapeRef_Factory::getInstance(v81);
  v83 = OZFactories::addFactory(v2->var4.var0, v82);
  v84 = OZChannelImageWithOptions_Factory::getInstance(v83);
  v85 = OZFactories::addFactory(v2->var4.var0, v84);
  v86 = OZChanRotoshapeRefWithPicker_Factory::getInstance(v85);
  v87 = OZFactories::addFactory(v2->var4.var0, v86);
  v88 = OZ3DEngineSceneElement_Factory::getInstance(v87);
  v89 = OZFactories::addFactory(v2->var4.var0, v88);
  v90 = OZ3DEngineSceneFile_Factory::getInstance(v89);
  v91 = OZFactories::addFactory(v2->var4.var0, v90);
  v92 = OZARFaceAnchorElement_Factory::getInstance(v91);
  v93 = OZFactories::addFactory(v2->var4.var0, v92);
  v94 = OZ3DEnginePlaneElement_Factory::getInstance(v93);
  v95 = OZFactories::addFactory(v2->var4.var0, v94);
  v96 = OZARPlaneAnchorElement_Factory::getInstance(v95);
  v97 = OZFactories::addFactory(v2->var4.var0, v96);
  v98 = OZEnvironmentMeshSceneElement_Factory::getInstance(v97);
  v99 = OZFactories::addFactory(v2->var4.var0, v98);
  v100 = OZARPersonAnchorElement_Factory::getInstance(v99);
  v101 = OZFactories::addFactory(v2->var4.var0, v100);
  OZImageElement::registerRetiming(v101);
  OZ3DEngineSceneElement::registerRetiming(v102);

  OZCloneGenerator::registerRetiming(v103);
}

uint64_t OZSceneNode_Factory::getInstance(OZSceneNode_Factory *this)
{
  if (atomic_load_explicit(&OZSceneNode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSceneNode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSceneNode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSceneNode_Factory::_instance;
}

uint64_t OZTransformNode_Factory::getInstance(OZTransformNode_Factory *this)
{
  if (atomic_load_explicit(&OZTransformNode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZTransformNode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZTransformNode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZTransformNode_Factory::_instance;
}

uint64_t OZElement_Factory::getInstance(OZElement_Factory *this)
{
  if (atomic_load_explicit(&OZElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZElement_Factory::_instance;
}

uint64_t OZRotoshape_Factory::getInstance(OZRotoshape_Factory *this)
{
  if (atomic_load_explicit(&OZRotoshape_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRotoshape_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRotoshape_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRotoshape_Factory::_instance;
}

uint64_t OZFootage_Factory::getInstance(OZFootage_Factory *this)
{
  if (atomic_load_explicit(&OZFootage_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage_Factory::_instance;
}

uint64_t OZLayer_Factory::getInstance(OZLayer_Factory *this)
{
  if (atomic_load_explicit(&OZLayer_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLayer_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLayer_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLayer_Factory::_instance;
}

uint64_t OZFootageLayer_Factory::getInstance(OZFootageLayer_Factory *this)
{
  if (atomic_load_explicit(&OZFootageLayer_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootageLayer_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootageLayer_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootageLayer_Factory::_instance;
}

uint64_t OZGroup_Factory::getInstance(OZGroup_Factory *this)
{
  if (atomic_load_explicit(&OZGroup_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGroup_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGroup_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGroup_Factory::_instance;
}

uint64_t OZImageElement_Factory::getInstance(OZImageElement_Factory *this)
{
  if (atomic_load_explicit(&OZImageElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement_Factory::_instance;
}

uint64_t OZImageMask_Factory::getInstance(OZImageMask_Factory *this)
{
  if (atomic_load_explicit(&OZImageMask_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageMask_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageMask_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageMask_Factory::_instance;
}

uint64_t OZCamera_Factory::getInstance(OZCamera_Factory *this)
{
  if (atomic_load_explicit(&OZCamera_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCamera_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCamera_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCamera_Factory::_instance;
}

uint64_t OZLight_Factory::getInstance(OZLight_Factory *this)
{
  if (atomic_load_explicit(&OZLight_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLight_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLight_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLight_Factory::_instance;
}

uint64_t OZBehavior_Factory::getInstance(OZBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBehavior_Factory::_instance;
}

uint64_t OZNULLBehavior_Factory::getInstance(OZNULLBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZNULLBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZNULLBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZNULLBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZNULLBehavior_Factory::_instance;
}

uint64_t OZSimulationBehavior_Factory::getInstance(OZSimulationBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSimulationBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSimulationBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSimulationBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSimulationBehavior_Factory::_instance;
}

uint64_t OZShapeBehavior_Factory::getInstance(OZShapeBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZShapeBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZShapeBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZShapeBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZShapeBehavior_Factory::_instance;
}

uint64_t OZWriteOnBehavior_Factory::getInstance(OZWriteOnBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZWriteOnBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZWriteOnBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZWriteOnBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZWriteOnBehavior_Factory::_instance;
}

uint64_t OZReflexiveBehavior_Factory::getInstance(OZReflexiveBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZReflexiveBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZReflexiveBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZReflexiveBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZReflexiveBehavior_Factory::_instance;
}

uint64_t OZTransitiveBehavior_Factory::getInstance(OZTransitiveBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZTransitiveBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZTransitiveBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZTransitiveBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZTransitiveBehavior_Factory::_instance;
}

uint64_t OZChannelBehavior_Factory::getInstance(OZChannelBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBehavior_Factory::_instance;
}

uint64_t OZSingleChannelBehavior_Factory::getInstance(OZSingleChannelBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSingleChannelBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSingleChannelBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSingleChannelBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSingleChannelBehavior_Factory::_instance;
}

uint64_t OZMotionToForcesBehavior_Factory::getInstance(OZMotionToForcesBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZMotionToForcesBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionToForcesBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionToForcesBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionToForcesBehavior_Factory::_instance;
}

uint64_t OZSimSystemMoToFoBehavior_Factory::getInstance(OZSimSystemMoToFoBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZSimSystemMoToFoBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZSimSystemMoToFoBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZSimSystemMoToFoBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZSimSystemMoToFoBehavior_Factory::_instance;
}

uint64_t OZCollisionBehavior_Factory::getInstance(OZCollisionBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZCollisionBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCollisionBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCollisionBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCollisionBehavior_Factory::_instance;
}

uint64_t OZRetimingBehavior_Factory::getInstance(OZRetimingBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRetimingBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRetimingBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRetimingBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRetimingBehavior_Factory::_instance;
}

uint64_t OZRig_Factory::getInstance(OZRig_Factory *this)
{
  if (atomic_load_explicit(&OZRig_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRig_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRig_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRig_Factory::_instance;
}

uint64_t OZRigWidget_Factory::getInstance(OZRigWidget_Factory *this)
{
  if (atomic_load_explicit(&OZRigWidget_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidget_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidget_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidget_Factory::_instance;
}

uint64_t OZRigWidgetAspectRatio_Factory::getInstance(OZRigWidgetAspectRatio_Factory *this)
{
  if (atomic_load_explicit(&OZRigWidgetAspectRatio_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigWidgetAspectRatio_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigWidgetAspectRatio_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigWidgetAspectRatio_Factory::_instance;
}

uint64_t OZRigBehavior_Factory::getInstance(OZRigBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZRigBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZRigBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZRigBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZRigBehavior_Factory::_instance;
}

uint64_t OZProjectNode_Factory::getInstance(OZProjectNode_Factory *this)
{
  if (atomic_load_explicit(&OZProjectNode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZProjectNode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZProjectNode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZProjectNode_Factory::_instance;
}

uint64_t OZLinkBehavior_Factory::getInstance(OZLinkBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZLinkBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLinkBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLinkBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLinkBehavior_Factory::_instance;
}

uint64_t OZMotionPathBehavior_Factory::getInstance(OZMotionPathBehavior_Factory *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior_Factory::_instance;
}

uint64_t OZFxGenerator_Factory::getInstance(OZFxGenerator_Factory *this)
{
  if (!OZFxGenerator_Factory::_instance)
  {
    operator new();
  }

  return OZFxGenerator_Factory::_instance;
}

uint64_t OZGradientGenerator_Factory::getInstance(OZGradientGenerator_Factory *this)
{
  if (atomic_load_explicit(&OZGradientGenerator_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZGradientGenerator_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZGradientGenerator_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZGradientGenerator_Factory::_instance;
}

uint64_t OZCloneGenerator_Factory::getInstance(OZCloneGenerator_Factory *this)
{
  if (atomic_load_explicit(&OZCloneGenerator_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCloneGenerator_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCloneGenerator_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCloneGenerator_Factory::_instance;
}

uint64_t OZEffect_Factory::getInstance(OZEffect_Factory *this)
{
  if (atomic_load_explicit(&OZEffect_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZEffect_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZEffect_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZEffect_Factory::_instance;
}

uint64_t OZFxFilter_Factory::getInstance(OZFxFilter_Factory *this)
{
  if (!OZFxFilter_Factory::_instance)
  {
    operator new();
  }

  return OZFxFilter_Factory::_instance;
}

uint64_t OZChanElementOrFootageRef_Factory::getInstance(OZChanElementOrFootageRef_Factory *this)
{
  if (atomic_load_explicit(&OZChanElementOrFootageRef_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanElementOrFootageRef_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanElementOrFootageRef_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanElementOrFootageRef_Factory::_instance;
}

uint64_t OZChanRotoshapeRef_Factory::getInstance(OZChanRotoshapeRef_Factory *this)
{
  if (atomic_load_explicit(&OZChanRotoshapeRef_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanRotoshapeRef_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanRotoshapeRef_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanRotoshapeRef_Factory::_instance;
}

uint64_t OZChannelImageWithOptions_Factory::getInstance(OZChannelImageWithOptions_Factory *this)
{
  if (atomic_load_explicit(&OZChannelImageWithOptions_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelImageWithOptions_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelImageWithOptions_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelImageWithOptions_Factory::_instance;
}

uint64_t OZ3DEngineSceneElement_Factory::getInstance(OZ3DEngineSceneElement_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEngineSceneElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEngineSceneElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEngineSceneElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEngineSceneElement_Factory::_instance;
}

uint64_t OZ3DEngineSceneFile_Factory::getInstance(OZ3DEngineSceneFile_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEngineSceneFile_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEngineSceneFile_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEngineSceneFile_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEngineSceneFile_Factory::_instance;
}

uint64_t OZARFaceAnchorElement_Factory::getInstance(OZARFaceAnchorElement_Factory *this)
{
  if (atomic_load_explicit(&OZARFaceAnchorElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZARFaceAnchorElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZARFaceAnchorElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZARFaceAnchorElement_Factory::_instance;
}

uint64_t OZ3DEnginePlaneElement_Factory::getInstance(OZ3DEnginePlaneElement_Factory *this)
{
  if (atomic_load_explicit(&OZ3DEnginePlaneElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZ3DEnginePlaneElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZ3DEnginePlaneElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZ3DEnginePlaneElement_Factory::_instance;
}

uint64_t OZARPlaneAnchorElement_Factory::getInstance(OZARPlaneAnchorElement_Factory *this)
{
  if (atomic_load_explicit(&OZARPlaneAnchorElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZARPlaneAnchorElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZARPlaneAnchorElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZARPlaneAnchorElement_Factory::_instance;
}

uint64_t OZEnvironmentMeshSceneElement_Factory::getInstance(OZEnvironmentMeshSceneElement_Factory *this)
{
  if (atomic_load_explicit(&OZEnvironmentMeshSceneElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZEnvironmentMeshSceneElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZEnvironmentMeshSceneElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZEnvironmentMeshSceneElement_Factory::_instance;
}

uint64_t OZARPersonAnchorElement_Factory::getInstance(OZARPersonAnchorElement_Factory *this)
{
  if (atomic_load_explicit(&OZARPersonAnchorElement_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZARPersonAnchorElement_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZARPersonAnchorElement_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZARPersonAnchorElement_Factory::_instance;
}

void OZApplication::setHostApplicationDelegate(OZApplication *this, void *a2)
{
  PCMutex::lock((this + 184));
  if (*this)
  {
    v4 = OZChannelBase::setRangeName(*this, v3);
    MEMORY[0x2666E9F00](v4, 0x80C40B8603338);
    *this = 0;
  }

  operator new();
}

void sub_2600EA0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2666E9F00](v9, 0x80C40B8603338);
  PCLockSentry<PCMutex>::~PCLockSentry(&a9);
  _Unwind_Resume(a1);
}

uint64_t OZApplication::getHostApplicationDelegate(OZApplication *this)
{
  PCMutex::lock((this + 184));
  v2 = *this;
  PCMutex::unlock((this + 184));
  return v2;
}

uint64_t OZApplication::createSceneNode(uint64_t a1, unsigned int *a2)
{
  Factory = OZFactories::findFactory(*(a1 + 32), a2);
  if (!Factory)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 168);

  return v4();
}

uint64_t OZApplication::createBehavior(uint64_t a1, unsigned int *a2)
{
  Factory = OZFactories::findFactory(*(a1 + 32), a2);
  if (!Factory)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 168);

  return v4();
}

{
  Factory = OZFactories::findFactory(*(a1 + 32), a2);
  if (!Factory)
  {
    return 0;
  }

  v4 = v3;
  if (v3)
  {
    v5 = (*(*v3 + 40))(&v8, v3);
    NextUniqueID = OZChannelBase::getNextUniqueID(v5);
    v4 = (*(*v4 + 168))(v4, &v8, NextUniqueID);
    PCString::~PCString(&v8);
  }

  return v4;
}

uint64_t OZApplication::createStyle(uint64_t a1, unsigned int *a2)
{
  Factory = OZFactories::findFactory(*(a1 + 32), a2);
  if (!Factory)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 168);

  return v4();
}

void OZSceneNode_Factory::OZSceneNode_Factory(OZSceneNode_Factory *this)
{
  v4 = xmmword_260850750;
  v3 = 0uLL;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_287283420;
  *(this + 16) = &unk_2872834D8;
}

void OZTransformNode_Factory::OZTransformNode_Factory(OZTransformNode_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_260348420;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_287283530;
  *(this + 16) = &unk_2872835E8;
}

void OZElement_Factory::OZElement_Factory(OZElement_Factory *this)
{
  v3 = xmmword_260348420;
  v4 = xmmword_260348380;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_287283640;
  *(this + 16) = &unk_2872836F8;
}

void OZRotoshape_Factory::OZRotoshape_Factory(OZRotoshape_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_26084F780;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283750;
  *(this + 16) = &unk_287283820;
  *(this + 17) = 0;
}

void OZRotoshape_Factory::~OZRotoshape_Factory(OZRotoshape_Factory *this)
{
  OZRotoshape_Factory::~OZRotoshape_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283750;
  v2 = (this + 128);
  *(this + 16) = &unk_287283820;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZRotoshape_Factory::create(OZRotoshape_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v14, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v13, @"Motion Effect");
  v6 = *(this + 17);
  if (v6)
  {
    v7 = v6 + 200;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*this + 24))(this, v7, 40);
  v9 = v8;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v8);
  }

  OZChannelBase::setID(&v9->var7, NextUniqueID);
  v10 = (*(v9->var0 + 80))(v9);
  OZChannelBase::setName(v10, a2, 0);
  (*(v9->var0 + 115))(v9);
  OZChannelBase::setRangeName(&v13, v11);
  return v9;
}

void sub_2600EAB70(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C408B2AE773, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZRotoshape_Factory::~OZRotoshape_Factory(OZRotoshape_Factory *this)
{
  OZRotoshape_Factory::~OZRotoshape_Factory((this - 128));
}

{
  OZRotoshape_Factory::~OZRotoshape_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZFootage_Factory::OZFootage_Factory(OZFootage_Factory *this)
{
  v3 = xmmword_260850760;
  v4 = xmmword_260850040;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283878;
  *(this + 16) = &unk_287283948;
  *(this + 17) = 0;
}

void OZFootage_Factory::~OZFootage_Factory(OZFootage_Factory *this)
{
  OZFootage_Factory::~OZFootage_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283878;
  v2 = (this + 128);
  *(this + 16) = &unk_287283948;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZFootage_Factory::create(OZFootage_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600EB208(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C405F7C6635, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZFootage_Factory::~OZFootage_Factory(OZFootage_Factory *this)
{
  OZFootage_Factory::~OZFootage_Factory((this - 128));
}

{
  OZFootage_Factory::~OZFootage_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZLayer_Factory::OZLayer_Factory(OZLayer_Factory *this)
{
  v3 = xmmword_260850780;
  v4 = xmmword_260850770;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872839A0;
  *(this + 16) = &unk_287283A70;
  *(this + 17) = 0;
}

void OZLayer_Factory::~OZLayer_Factory(OZLayer_Factory *this)
{
  OZLayer_Factory::~OZLayer_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872839A0;
  v2 = (this + 128);
  *(this + 16) = &unk_287283A70;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZLayer_Factory::create(OZLayer_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600EB868(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40017E444ALL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZLayer_Factory::~OZLayer_Factory(OZLayer_Factory *this)
{
  OZLayer_Factory::~OZLayer_Factory((this - 128));
}

{
  OZLayer_Factory::~OZLayer_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZFootageLayer_Factory::OZFootageLayer_Factory(OZFootageLayer_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_260850790;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283AC8;
  *(this + 16) = &unk_287283B98;
  *(this + 17) = 0;
}

void OZFootageLayer_Factory::~OZFootageLayer_Factory(OZFootageLayer_Factory *this)
{
  OZFootageLayer_Factory::~OZFootageLayer_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283AC8;
  v2 = (this + 128);
  *(this + 16) = &unk_287283B98;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZFootageLayer_Factory::create(OZFootageLayer_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600EBEE8(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40A27F4032, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZFootageLayer_Factory::~OZFootageLayer_Factory(OZFootageLayer_Factory *this)
{
  OZFootageLayer_Factory::~OZFootageLayer_Factory((this - 128));
}

{
  OZFootageLayer_Factory::~OZFootageLayer_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZGroup_Factory::OZGroup_Factory(OZGroup_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_260850780;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283BF0;
  *(this + 16) = &unk_287283CC0;
  *(this + 17) = 0;
}

void OZGroup_Factory::~OZGroup_Factory(OZGroup_Factory *this)
{
  OZGroup_Factory::~OZGroup_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283BF0;
  v2 = (this + 128);
  *(this + 16) = &unk_287283CC0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZGroup_Factory::create(OZGroup_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600EC548(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40017E444ALL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZGroup_Factory::~OZGroup_Factory(OZGroup_Factory *this)
{
  OZGroup_Factory::~OZGroup_Factory((this - 128));
}

{
  OZGroup_Factory::~OZGroup_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZImageElement_Factory::OZImageElement_Factory(OZImageElement_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_2608507A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283D18;
  *(this + 16) = &unk_287283DE8;
  *(this + 17) = 0;
}

void OZImageElement_Factory::~OZImageElement_Factory(OZImageElement_Factory *this)
{
  OZImageElement_Factory::~OZImageElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283D18;
  v2 = (this + 128);
  *(this + 16) = &unk_287283DE8;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZImageElement_Factory::create(OZImageElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600ECBA8(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40804CB178, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZImageElement_Factory::~OZImageElement_Factory(OZImageElement_Factory *this)
{
  OZImageElement_Factory::~OZImageElement_Factory((this - 128));
}

{
  OZImageElement_Factory::~OZImageElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZImageMask_Factory::OZImageMask_Factory(OZImageMask_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_2608507B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283E40;
  *(this + 16) = &unk_287283F10;
  *(this + 17) = 0;
}

void OZImageMask_Factory::~OZImageMask_Factory(OZImageMask_Factory *this)
{
  OZImageMask_Factory::~OZImageMask_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283E40;
  v2 = (this + 128);
  *(this + 16) = &unk_287283F10;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZImageMask_Factory::create(OZImageMask_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600ED228(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C402CA23E7BLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZImageMask_Factory::~OZImageMask_Factory(OZImageMask_Factory *this)
{
  OZImageMask_Factory::~OZImageMask_Factory((this - 128));
}

{
  OZImageMask_Factory::~OZImageMask_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZCamera_Factory::OZCamera_Factory(OZCamera_Factory *this)
{
  v3 = xmmword_260348420;
  v4 = xmmword_26084FA40;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287283F68;
  *(this + 16) = &unk_287284038;
  *(this + 17) = 0;
}

void OZCamera_Factory::~OZCamera_Factory(OZCamera_Factory *this)
{
  OZCamera_Factory::~OZCamera_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287283F68;
  v2 = (this + 128);
  *(this + 16) = &unk_287284038;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZCamera_Factory::create(OZCamera_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600ED8B0(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4059BDEAAALL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZCamera_Factory::~OZCamera_Factory(OZCamera_Factory *this)
{
  OZCamera_Factory::~OZCamera_Factory((this - 128));
}

{
  OZCamera_Factory::~OZCamera_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZLight_Factory::OZLight_Factory(OZLight_Factory *this)
{
  v3 = xmmword_260348420;
  v4 = xmmword_2608507C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287284090;
  *(this + 16) = &unk_287284160;
  *(this + 17) = 0;
}

void OZLight_Factory::~OZLight_Factory(OZLight_Factory *this)
{
  OZLight_Factory::~OZLight_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287284090;
  v2 = (this + 128);
  *(this + 16) = &unk_287284160;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZLight_Factory::create(OZLight_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600EDF38(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40CC0084FBLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZLight_Factory::~OZLight_Factory(OZLight_Factory *this)
{
  OZLight_Factory::~OZLight_Factory((this - 128));
}

{
  OZLight_Factory::~OZLight_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZBehavior_Factory::OZBehavior_Factory(OZBehavior_Factory *this)
{
  v4 = xmmword_26084FAE0;
  v3 = 0uLL;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_2872841B8;
  *(this + 16) = &unk_287284270;
}

void OZNULLBehavior_Factory::OZNULLBehavior_Factory(OZNULLBehavior_Factory *this)
{
  v4 = xmmword_26084FAE0;
  v5 = xmmword_26084FAC0;
  v3 = xmmword_260850750;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872842C8;
  *(this + 18) = &unk_2872843A8;
}

void OZSimulationBehavior_Factory::OZSimulationBehavior_Factory(OZSimulationBehavior_Factory *this)
{
  v4 = xmmword_26084FAE0;
  v5 = xmmword_2608507D0;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284400;
  *(this + 18) = &unk_2872844E0;
}

void OZShapeBehavior_Factory::OZShapeBehavior_Factory(OZShapeBehavior_Factory *this)
{
  v4 = xmmword_26084FAE0;
  v5 = xmmword_2608507E0;
  v3 = xmmword_26084F780;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284538;
  *(this + 18) = &unk_287284618;
}

void OZWriteOnBehavior_Factory::OZWriteOnBehavior_Factory(OZWriteOnBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_2608507F0;
  v3 = xmmword_26084F780;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284670;
  *(this + 18) = &unk_287284750;
}

void OZReflexiveBehavior_Factory::OZReflexiveBehavior_Factory(OZReflexiveBehavior_Factory *this)
{
  v4 = xmmword_2608507D0;
  v5 = xmmword_260850800;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872847A8;
  *(this + 18) = &unk_287284888;
}

void OZTransitiveBehavior_Factory::OZTransitiveBehavior_Factory(OZTransitiveBehavior_Factory *this)
{
  v4 = xmmword_2608507D0;
  v5 = xmmword_260850810;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872848E0;
  *(this + 18) = &unk_2872849C0;
}

void OZChannelBehavior_Factory::OZChannelBehavior_Factory(OZChannelBehavior_Factory *this)
{
  v4 = xmmword_26084FAE0;
  v5 = xmmword_2603483A0;
  v3 = xmmword_260348380;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284A18;
  *(this + 18) = &unk_287284AF8;
}

void OZSingleChannelBehavior_Factory::OZSingleChannelBehavior_Factory(OZSingleChannelBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_26084FAF0;
  v3 = xmmword_260348380;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284B50;
  *(this + 18) = &unk_287284C30;
}

void OZMotionToForcesBehavior_Factory::OZMotionToForcesBehavior_Factory(OZMotionToForcesBehavior_Factory *this)
{
  v4 = xmmword_2608507D0;
  v5 = xmmword_26084F810;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284C88;
  *(this + 18) = &unk_287284D68;
}

void OZSimSystemMoToFoBehavior_Factory::OZSimSystemMoToFoBehavior_Factory(OZSimSystemMoToFoBehavior_Factory *this)
{
  v4 = xmmword_2608507D0;
  v5 = xmmword_260850820;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284DC0;
  *(this + 18) = &unk_287284EA0;
}

void OZCollisionBehavior_Factory::OZCollisionBehavior_Factory(OZCollisionBehavior_Factory *this)
{
  v4 = xmmword_260850800;
  v5 = xmmword_260850830;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287284EF8;
  *(this + 18) = &unk_287284FD8;
}

void OZRetimingBehavior_Factory::OZRetimingBehavior_Factory(OZRetimingBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260850060;
  v3 = xmmword_260348380;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287285030;
  *(this + 18) = &unk_287285110;
}

void OZRig_Factory::OZRig_Factory(OZRig_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_26084FA30;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285168;
  *(this + 16) = &unk_287285238;
  *(this + 17) = 0;
}

void OZRig_Factory::~OZRig_Factory(OZRig_Factory *this)
{
  OZRig_Factory::~OZRig_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287285168;
  v2 = (this + 128);
  *(this + 16) = &unk_287285238;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZRig_Factory::create(OZRig_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F1140(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4029BB6CCDLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZRig_Factory::~OZRig_Factory(OZRig_Factory *this)
{
  OZRig_Factory::~OZRig_Factory((this - 128));
}

{
  OZRig_Factory::~OZRig_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZRigWidget_Factory::OZRigWidget_Factory(OZRigWidget_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_2603473B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285290;
  *(this + 16) = &unk_287285360;
  *(this + 17) = 0;
}

void OZRigWidget_Factory::~OZRigWidget_Factory(OZRigWidget_Factory *this)
{
  OZRigWidget_Factory::~OZRigWidget_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287285290;
  v2 = (this + 128);
  *(this + 16) = &unk_287285360;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZRigWidget_Factory::create(OZRigWidget_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F17C8(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40FCF65154, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZRigWidget_Factory::~OZRigWidget_Factory(OZRigWidget_Factory *this)
{
  OZRigWidget_Factory::~OZRigWidget_Factory((this - 128));
}

{
  OZRigWidget_Factory::~OZRigWidget_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZRigWidgetAspectRatio_Factory::OZRigWidgetAspectRatio_Factory(OZRigWidgetAspectRatio_Factory *this)
{
  v3 = xmmword_2603473B0;
  v4 = xmmword_260850840;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872853B8;
  *(this + 16) = &unk_287285488;
  *(this + 17) = 0;
}

void OZRigWidgetAspectRatio_Factory::~OZRigWidgetAspectRatio_Factory(OZRigWidgetAspectRatio_Factory *this)
{
  OZRigWidgetAspectRatio_Factory::~OZRigWidgetAspectRatio_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872853B8;
  v2 = (this + 128);
  *(this + 16) = &unk_287285488;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZRigWidgetAspectRatio_Factory::create(OZRigWidgetAspectRatio_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F1E50(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40FCF65154, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZRigWidgetAspectRatio_Factory::~OZRigWidgetAspectRatio_Factory(OZRigWidgetAspectRatio_Factory *this)
{
  OZRigWidgetAspectRatio_Factory::~OZRigWidgetAspectRatio_Factory((this - 128));
}

{
  OZRigWidgetAspectRatio_Factory::~OZRigWidgetAspectRatio_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZRigBehavior_Factory::OZRigBehavior_Factory(OZRigBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_2603473C0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2872854E0;
  *(this + 18) = &unk_2872855C0;
}

void OZProjectNode_Factory::OZProjectNode_Factory(OZProjectNode_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_26084FA20;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285618;
  *(this + 16) = &unk_2872856E8;
  *(this + 17) = 0;
}

void OZProjectNode_Factory::~OZProjectNode_Factory(OZProjectNode_Factory *this)
{
  OZProjectNode_Factory::~OZProjectNode_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287285618;
  v2 = (this + 128);
  *(this + 16) = &unk_2872856E8;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZProjectNode_Factory::create(OZProjectNode_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F2800(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40692255DDLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZProjectNode_Factory::~OZProjectNode_Factory(OZProjectNode_Factory *this)
{
  OZProjectNode_Factory::~OZProjectNode_Factory((this - 128));
}

{
  OZProjectNode_Factory::~OZProjectNode_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZLinkBehavior_Factory::OZLinkBehavior_Factory(OZLinkBehavior_Factory *this)
{
  v3 = xmmword_26084FAF0;
  v4 = xmmword_260850850;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287285740;
  *(this + 18) = &unk_287285820;
}

void OZMotionPathBehavior_Factory::OZMotionPathBehavior_Factory(OZMotionPathBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260850860;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_287285878;
  *(this + 18) = &unk_287285958;
}

void OZFxGenerator_Factory::OZFxGenerator_Factory(OZFxGenerator_Factory *this)
{
  v3 = xmmword_260850880;
  v4 = xmmword_260850870;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872859B0;
  *(this + 16) = &unk_287285A90;
}

void OZGradientGenerator_Factory::OZGradientGenerator_Factory(OZGradientGenerator_Factory *this)
{
  v3 = xmmword_260850870;
  v4 = xmmword_260850890;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285AE8;
  *(this + 16) = &unk_287285BB8;
  *(this + 17) = 0;
}

void OZGradientGenerator_Factory::~OZGradientGenerator_Factory(OZGradientGenerator_Factory *this)
{
  OZGradientGenerator_Factory::~OZGradientGenerator_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287285AE8;
  v2 = (this + 128);
  *(this + 16) = &unk_287285BB8;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZGradientGenerator_Factory::create(OZGradientGenerator_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F3910(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F3C40A32CEB6FLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZGradientGenerator_Factory::~OZGradientGenerator_Factory(OZGradientGenerator_Factory *this)
{
  OZGradientGenerator_Factory::~OZGradientGenerator_Factory((this - 128));
}

{
  OZGradientGenerator_Factory::~OZGradientGenerator_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZCloneGenerator_Factory::OZCloneGenerator_Factory(OZCloneGenerator_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_2608508A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285C10;
  *(this + 16) = &unk_287285CE0;
  *(this + 17) = 0;
}

void OZCloneGenerator_Factory::~OZCloneGenerator_Factory(OZCloneGenerator_Factory *this)
{
  OZCloneGenerator_Factory::~OZCloneGenerator_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287285C10;
  v2 = (this + 128);
  *(this + 16) = &unk_287285CE0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZCloneGenerator_Factory::create(OZCloneGenerator_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F3F60(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40EA6D2BFALL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZCloneGenerator_Factory::~OZCloneGenerator_Factory(OZCloneGenerator_Factory *this)
{
  OZCloneGenerator_Factory::~OZCloneGenerator_Factory((this - 128));
}

{
  OZCloneGenerator_Factory::~OZCloneGenerator_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZEffect_Factory::OZEffect_Factory(OZEffect_Factory *this)
{
  v4 = xmmword_26084FAD0;
  v3 = 0uLL;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_287285D38;
  *(this + 16) = &unk_287285DF0;
}

void OZFxFilter_Factory::OZFxFilter_Factory(OZFxFilter_Factory *this)
{
  v3 = xmmword_26084FAD0;
  v4 = xmmword_2608508B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_287285F48;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287285E48;
  *(this + 16) = &unk_287285F28;
}

void OZChanElementOrFootageRef_Factory::OZChanElementOrFootageRef_Factory(OZChanElementOrFootageRef_Factory *this)
{
  v3 = xmmword_2608508D0;
  v4 = xmmword_2608508C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286018;
  *(this + 16) = &unk_2872860E8;
}

void OZChanRotoshapeRef_Factory::OZChanRotoshapeRef_Factory(OZChanRotoshapeRef_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608508E0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286140;
  *(this + 16) = &unk_287286210;
}

void OZChannelImageWithOptions_Factory::OZChannelImageWithOptions_Factory(OZChannelImageWithOptions_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608508F0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286268;
  *(this + 16) = &unk_287286338;
}

void OZ3DEngineSceneElement_Factory::OZ3DEngineSceneElement_Factory(OZ3DEngineSceneElement_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_260850630;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286390;
  *(this + 16) = &unk_287286460;
  *(this + 17) = 0;
}

void OZ3DEngineSceneElement_Factory::~OZ3DEngineSceneElement_Factory(OZ3DEngineSceneElement_Factory *this)
{
  OZ3DEngineSceneElement_Factory::~OZ3DEngineSceneElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287286390;
  v2 = (this + 128);
  *(this + 16) = &unk_287286460;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZ3DEngineSceneElement_Factory::create(OZ3DEngineSceneElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F548C(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C408C1AE853, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZ3DEngineSceneElement_Factory::~OZ3DEngineSceneElement_Factory(OZ3DEngineSceneElement_Factory *this)
{
  OZ3DEngineSceneElement_Factory::~OZ3DEngineSceneElement_Factory((this - 128));
}

{
  OZ3DEngineSceneElement_Factory::~OZ3DEngineSceneElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZ3DEngineSceneFile_Factory::OZ3DEngineSceneFile_Factory(OZ3DEngineSceneFile_Factory *this)
{
  v3 = xmmword_260850750;
  v4 = xmmword_260850900;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872864B8;
  *(this + 16) = &unk_287286588;
  *(this + 17) = 0;
}

void OZ3DEngineSceneFile_Factory::~OZ3DEngineSceneFile_Factory(OZ3DEngineSceneFile_Factory *this)
{
  OZ3DEngineSceneFile_Factory::~OZ3DEngineSceneFile_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872864B8;
  v2 = (this + 128);
  *(this + 16) = &unk_287286588;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZ3DEngineSceneFile_Factory::create(OZ3DEngineSceneFile_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F5B1C(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C402CAECB46, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZ3DEngineSceneFile_Factory::~OZ3DEngineSceneFile_Factory(OZ3DEngineSceneFile_Factory *this)
{
  OZ3DEngineSceneFile_Factory::~OZ3DEngineSceneFile_Factory((this - 128));
}

{
  OZ3DEngineSceneFile_Factory::~OZ3DEngineSceneFile_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZARFaceAnchorElement_Factory::OZARFaceAnchorElement_Factory(OZARFaceAnchorElement_Factory *this)
{
  v3 = xmmword_260850630;
  v4 = xmmword_260850910;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872865E0;
  *(this + 16) = &unk_2872866B0;
  *(this + 17) = 0;
}

void OZARFaceAnchorElement_Factory::~OZARFaceAnchorElement_Factory(OZARFaceAnchorElement_Factory *this)
{
  OZARFaceAnchorElement_Factory::~OZARFaceAnchorElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872865E0;
  v2 = (this + 128);
  *(this + 16) = &unk_2872866B0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZARFaceAnchorElement_Factory::create(OZARFaceAnchorElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F617C(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40ED398990, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZARFaceAnchorElement_Factory::~OZARFaceAnchorElement_Factory(OZARFaceAnchorElement_Factory *this)
{
  OZARFaceAnchorElement_Factory::~OZARFaceAnchorElement_Factory((this - 128));
}

{
  OZARFaceAnchorElement_Factory::~OZARFaceAnchorElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZ3DEnginePlaneElement_Factory::OZ3DEnginePlaneElement_Factory(OZ3DEnginePlaneElement_Factory *this)
{
  v3 = xmmword_260850630;
  v4 = xmmword_260850920;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286708;
  *(this + 16) = &unk_2872867D8;
  *(this + 17) = 0;
}

void OZ3DEnginePlaneElement_Factory::~OZ3DEnginePlaneElement_Factory(OZ3DEnginePlaneElement_Factory *this)
{
  OZ3DEnginePlaneElement_Factory::~OZ3DEnginePlaneElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287286708;
  v2 = (this + 128);
  *(this + 16) = &unk_2872867D8;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZ3DEnginePlaneElement_Factory::create(OZ3DEnginePlaneElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F67E4(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4098A97AEELL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZ3DEnginePlaneElement_Factory::~OZ3DEnginePlaneElement_Factory(OZ3DEnginePlaneElement_Factory *this)
{
  OZ3DEnginePlaneElement_Factory::~OZ3DEnginePlaneElement_Factory((this - 128));
}

{
  OZ3DEnginePlaneElement_Factory::~OZ3DEnginePlaneElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZARPlaneAnchorElement_Factory::OZARPlaneAnchorElement_Factory(OZARPlaneAnchorElement_Factory *this)
{
  v3 = xmmword_260850630;
  v4 = xmmword_260850930;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286830;
  *(this + 16) = &unk_287286900;
  *(this + 17) = 0;
}

void OZARPlaneAnchorElement_Factory::~OZARPlaneAnchorElement_Factory(OZARPlaneAnchorElement_Factory *this)
{
  OZARPlaneAnchorElement_Factory::~OZARPlaneAnchorElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287286830;
  v2 = (this + 128);
  *(this + 16) = &unk_287286900;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZARPlaneAnchorElement_Factory::create(OZARPlaneAnchorElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F6E2C(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40245721ACLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZARPlaneAnchorElement_Factory::~OZARPlaneAnchorElement_Factory(OZARPlaneAnchorElement_Factory *this)
{
  OZARPlaneAnchorElement_Factory::~OZARPlaneAnchorElement_Factory((this - 128));
}

{
  OZARPlaneAnchorElement_Factory::~OZARPlaneAnchorElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZEnvironmentMeshSceneElement_Factory::OZEnvironmentMeshSceneElement_Factory(OZEnvironmentMeshSceneElement_Factory *this)
{
  v3 = xmmword_260850630;
  v4 = xmmword_260850940;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286958;
  *(this + 16) = &unk_287286A28;
  *(this + 17) = 0;
}

void OZEnvironmentMeshSceneElement_Factory::~OZEnvironmentMeshSceneElement_Factory(OZEnvironmentMeshSceneElement_Factory *this)
{
  OZEnvironmentMeshSceneElement_Factory::~OZEnvironmentMeshSceneElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287286958;
  v2 = (this + 128);
  *(this + 16) = &unk_287286A28;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZEnvironmentMeshSceneElement_Factory::create(OZEnvironmentMeshSceneElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F7474(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4079491FA7, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZEnvironmentMeshSceneElement_Factory::~OZEnvironmentMeshSceneElement_Factory(OZEnvironmentMeshSceneElement_Factory *this)
{
  OZEnvironmentMeshSceneElement_Factory::~OZEnvironmentMeshSceneElement_Factory((this - 128));
}

{
  OZEnvironmentMeshSceneElement_Factory::~OZEnvironmentMeshSceneElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZARPersonAnchorElement_Factory::OZARPersonAnchorElement_Factory(OZARPersonAnchorElement_Factory *this)
{
  v3 = xmmword_260850630;
  v4 = xmmword_260850950;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287286A80;
  *(this + 16) = &unk_287286B50;
  *(this + 17) = 0;
}

void OZARPersonAnchorElement_Factory::~OZARPersonAnchorElement_Factory(OZARPersonAnchorElement_Factory *this)
{
  OZARPersonAnchorElement_Factory::~OZARPersonAnchorElement_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287286A80;
  v2 = (this + 128);
  *(this + 16) = &unk_287286B50;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *OZARPersonAnchorElement_Factory::create(OZARPersonAnchorElement_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var7, NextUniqueID);
  v8 = (*(v7->var0 + 80))(v7);
  OZChannelBase::setName(v8, a2, 0);
  (*(v7->var0 + 115))(v7);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_2600F7ABC(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C40324BC503, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZARPersonAnchorElement_Factory::~OZARPersonAnchorElement_Factory(OZARPersonAnchorElement_Factory *this)
{
  OZARPersonAnchorElement_Factory::~OZARPersonAnchorElement_Factory((this - 128));
}

{
  OZARPersonAnchorElement_Factory::~OZARPersonAnchorElement_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void OZ3DEngineScenePlacementBehavior::OZ3DEngineScenePlacementBehavior(OZ3DEngineScenePlacementBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZBehavior::OZBehavior(this, a2, a3, a4);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_287286BA8;
  *(this + 2) = &unk_287286E40;
  *(this + 6) = &unk_287287098;
  *(this + 42) = &unk_2872870F0;
  PCString::PCString(&v7, "Relative To");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 536), &v7, (this + 56), 0xC8u, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Left;Center;Right");
  PCString::PCString(&v6, "Alignment");
  OZChannelEnum::OZChannelEnum((this + 696), 4u, &v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Distance");
  OZChannelDouble::OZChannelDouble((this + 952), 1000.0, &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Face Camera");
  OZChannelBool::OZChannelBool((this + 1104), 0, &v7, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Fix Y");
  OZChannelBool::OZChannelBool((this + 1256), 0, &v7, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannel::setSliderMin((this + 952), -2000.0);
  OZChannel::setSliderMax((this + 952), 2000.0);
  v8 = 2;
  v7.var0 = 0x400000001;
  OZChannelEnum::setTags((this + 696), &v7, 3);
}

void sub_2600F8054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelBool::~OZChannelBool((v12 + 1256));
  OZChannelBool::~OZChannelBool((v12 + 1104));
  OZChannel::~OZChannel((v12 + 952));
  OZChannelEnum::~OZChannelEnum((v12 + 696));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v12 + 536));
  OZLocking::~OZLocking(v13);
  OZBehavior::~OZBehavior(v12);
  _Unwind_Resume(a1);
}

void OZ3DEngineScenePlacementBehavior::OZ3DEngineScenePlacementBehavior(OZ3DEngineScenePlacementBehavior *this, const OZ3DEngineScenePlacementBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_287286BA8;
  *(this + 2) = &unk_287286E40;
  *(this + 6) = &unk_287287098;
  *(this + 42) = &unk_2872870F0;
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 536), (a2 + 536), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 696), (a2 + 696), (this + 56));
  OZChannel::OZChannel((this + 952), (a2 + 952), (this + 56));
  *(this + 119) = &unk_287245C60;
  *(this + 121) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 1104), (a2 + 1104), (this + 56));
  OZChannelBool::OZChannelBool((this + 1256), (a2 + 1256), (this + 56));
}

void sub_2600F8278(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 1104));
  OZChannel::~OZChannel(v3);
  OZChannelEnum::~OZChannelEnum((v1 + 696));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 536));
  OZLocking::~OZLocking(v2);
  OZBehavior::~OZBehavior(v1);
  _Unwind_Resume(a1);
}

void OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior(OZ3DEngineScenePlacementBehavior *this)
{
  *this = &unk_287286BA8;
  *(this + 2) = &unk_287286E40;
  *(this + 6) = &unk_287287098;
  *(this + 42) = &unk_2872870F0;
  OZChannelBool::~OZChannelBool((this + 1256));
  OZChannelBool::~OZChannelBool((this + 1104));
  OZChannel::~OZChannel((this + 952));
  OZChannelEnum::~OZChannelEnum((this + 696));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 536));
  *(this + 42) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 464));
  PCSharedMutex::~PCSharedMutex((this + 344));

  OZBehavior::~OZBehavior(this);
}

{
  OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior(OZ3DEngineScenePlacementBehavior *this)
{
  OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior((this - 16));
}

{
  OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior((this - 48));
}

{
  OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineScenePlacementBehavior::~OZ3DEngineScenePlacementBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEngineScenePlacementBehavior::operator=(uint64_t a1, const void *a2)
{
  OZBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 536, v4 + 536);

  return OZChannelBase::operator=(a1 + 952, v5 + 952);
}

void *OZ3DEngineScenePlacementBehavior::didAddToNode(void *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      *(v3 + 328) = lpsrc;
    }
  }

  return this;
}

uint64_t OZ3DEngineScenePlacementBehavior::getLockDependencies(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = (result + 336);
  for (i = *(a4 + 8); i; i = *i)
  {
    v9 = i[4];
    if (v7 >= v9)
    {
      if (v9 >= v7)
      {
        return result;
      }

      ++i;
    }
  }

  v11 = (result + 336);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v11);
  v10 = (*(*v6 + 336))(v6);
  OZLocking::addLockDependenciesForDependents(v7, v10, a3, a4);
  v11 = v7;
  return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v11);
}

uint64_t OZ3DEngineScenePlacementBehavior::getLockingGroups(OZ3DEngineScenePlacementBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toOZ3DEngineScenePlacementBehavior::getLockingGroups(OZ3DEngineScenePlacementBehavior *this)
{
  v1 = this - 336;
  result = (*(*(this - 42) + 336))(this - 336);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

void OZMaterialLayersFolder::OZMaterialLayersFolder(OZMaterialLayersFolder *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3, a4, a5, a6);
  *v6 = &unk_287287170;
  *(v6 + 16) = &unk_287287448;
  *(v6 + 56) &= ~0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v6);
}

void OZMaterialLayersFolder::OZMaterialLayersFolder(OZMaterialLayersFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3, a4);
  *v4 = &unk_287287170;
  *(v4 + 16) = &unk_287287448;
  *(v4 + 56) &= ~0x10000uLL;
  OZChannelFolder::saveStateAsDefault(v4);
}

void OZMaterialLayersFolder::OZMaterialLayersFolder(OZMaterialLayersFolder *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelVaryingFolder::OZChannelVaryingFolder(this, a2, a3);
  *v3 = &unk_287287170;
  v3[2] = &unk_287287448;
}

void non-virtual thunk toOZMaterialLayersFolder::~OZMaterialLayersFolder(OZMaterialLayersFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));
}

{
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZMaterialLayersFolder::~OZMaterialLayersFolder(OZChannelFolder *this)
{
  OZChannelVaryingFolder::~OZChannelVaryingFolder(this);

  JUMPOUT(0x2666E9F00);
}

void OZMaterialLayersFolder::copy(OZChannelFolder *this, const OZChannelBase *a2)
{
  OZChannelFolder::copy(this, a2);
  OZChannelVaryingFolder::resetToDefault(this);
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

void OZMaterialLayersFolder::assign(OZChannelBase *this, const OZChannelBase *a2)
{
  v2 = a2;
  OZChannelBase::assign(this, a2);
  if (v2)
  {
  }

  OZChannelVaryingFolder::resetToDefault(this);
  var0 = v2[1].var0;
  if (var0)
  {
    v5 = *var0;
    v6 = var0[1];
    while (v5 != v6)
    {
      v7 = (*(**v5 + 248))();
      v7->var6 = this;
      v5 += 8;
      (*(v7->var0 + 32))();
      OZChannelFolder::push_back(this, v7);
    }
  }

  else
  {
    v8 = this[1].var0;
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v8[1] = v9;
        operator delete(v9);
      }

      MEMORY[0x2666E9F00](v8, 0x80C40D6874129);
    }

    this[1].var0 = 0;
  }
}

char *OZMaterialLayersFolder::resetToDefault(OZMaterialLayersFolder *this)
{
  OZChannelVaryingFolder::resetToDefault(this);
  result = OZChannelBase::getObjectManipulator(this);
  if (result)
  {
    if (result)
    {

      return OZLayeredMaterial::addDefaultLayer(result);
    }
  }

  return result;
}

OZFactories *OZMaterialLayersFolder::markFactoriesForSerialization(OZChannelFolder *this, PCSerializerWriteStream *a2, int a3)
{
  result = OZChannelFolder::markFactoriesForSerialization(this, a2);
  if (a3)
  {
    Instance = OZFactories::getInstance(result);
    v7 = xmmword_26084FB60;
    Factory = OZFactories::findFactory(Instance, &v7);
    return OZFactory::setNeedsSaving(Factory, 1);
  }

  return result;
}

uint64_t OZMaterialLayersFolder::writeHeader(OZChannelBase *this, OZFactory *a2, int a3)
{
  if (a3)
  {
    Instance = OZFactories::getInstance(this);
    v11 = xmmword_26084FB60;
    Factory = OZFactories::findFactory(Instance, &v11);
    var1 = this->var1;
    v9 = OZFactory::fileRefID(Factory, v8);
    OZFactory::setFileRefID(var1, v9);
  }

  return OZChannelBase::writeHeader(this, a2, 1);
}

uint64_t OZMaterialLayersFolder::parseBegin(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelVaryingFolder::parseBegin(this, a2);
  if (v3)
  {
    OZChannelVaryingFolder::resetToDefault(this);
  }

  return v3;
}

uint64_t non-virtual thunk toOZMaterialLayersFolder::parseBegin(OZMaterialLayersFolder *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  v3 = OZChannelVaryingFolder::parseBegin((this - 16), a2);
  if (v3)
  {
    OZChannelVaryingFolder::resetToDefault(v2);
  }

  return v3;
}

uint64_t OZMaterialLayersFolder::parseEnd(OZChannelFolder *this, PCSerializerReadStream *a2)
{
  *(this + 7) &= ~0x10000uLL;
  v2 = *(this + 14);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v3 += 8;
  }

  return OZChannelVaryingFolder::parseEnd(this, a2);
}

unint64_t OZMaterialLayersFolder::indexOfDescendant(OZMaterialLayersFolder *this, OZChannelBase *a2)
{
  v2 = *(this + 14);
  v3 = *v2;
  v4 = v2[1];
  v5 = v3;
  if (v3 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        v5 = v4;
        return (v5 - v3) >> 3;
      }
    }
  }

  return (v5 - v3) >> 3;
}

void OZTimelineState::OZTimelineState(OZTimelineState *this)
{
  *this = &unk_2872874B8;
  v2 = MEMORY[0x277CC08F0];
  v3 = *MEMORY[0x277CC08F0];
  *(this + 2) = *MEMORY[0x277CC08F0];
  v4 = *(v2 + 16);
  *(this + 6) = v4;
  *(this + 56) = v3;
  *(this + 9) = v4;
  v5 = OZPreferenceManager::Instance(this);
  *(this + 8) = OZPreferenceManager::getTimelineDisplayVideo(v5);
  *(this + 9) = OZPreferenceManager::getTimelineDisplayAudio(v5);
  *(this + 10) = OZPreferenceManager::getTimelineDisplayKeyframes(v5);
  *(this + 11) = OZPreferenceManager::getTimelineDisplayMasks(v5);
  *(this + 12) = OZPreferenceManager::getTimelineDisplayBehaviors(v5);
  *(this + 13) = OZPreferenceManager::getTimelineDisplayEffects(v5);
  *(this + 2) = OZPreferenceManager::getTimelineVideoVerticalZoom(v5);
  *(this + 3) = OZPreferenceManager::getTimelineAudioVerticalZoom(v5);
}

__n128 OZTimelineState::OZTimelineState(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2872874B8;
  *(a1 + 8) = a2->n128_u32[2];
  *(a1 + 12) = a2->n128_u16[6];
  result = a2[1];
  v3 = MEMORY[0x277CC08F0];
  v4 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  v5 = *(v3 + 16);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t OZTimelineState::writeHeader(OZTimelineState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimelineStateScope);
  (*(*a2 + 16))(a2, 81);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimelineState::writeBody(OZTimelineState *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZTimelineStateScope);
  v4 = *(this + 8);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 48))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 9);
  (*(*a2 + 16))(a2, 2);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 10);
  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, v6);
  (*(*a2 + 24))(a2);
  v7 = *(this + 11);
  (*(*a2 + 16))(a2, 4);
  (*(*a2 + 48))(a2, v7);
  (*(*a2 + 24))(a2);
  v8 = *(this + 12);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 48))(a2, v8);
  (*(*a2 + 24))(a2);
  v9 = *(this + 13);
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 48))(a2, v9);
  (*(*a2 + 24))(a2);
  v10 = *(this + 2);
  (*(*a2 + 16))(a2, 7);
  (*(*a2 + 88))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 3);
  (*(*a2 + 16))(a2, 8);
  (*(*a2 + 88))(a2, v11);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 9);
  v16 = *(this + 32);
  (*(*a2 + 208))(a2, 1, &v16);
  v16 = *(this + 32);
  v15 = *(this + 56);
  v12 = PC_CMTimeSaferAdd(&v16, &v15, v14);
  (*(*a2 + 208))(a2, 2, v14, v12);
  (*(*a2 + 24))(a2);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZTimelineState::parseElement(OZTimelineState *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v5 = *(a3 + 2);
  if (v5 <= 4)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        (*(*a3 + 72))(a3, this + 10);
      }

      else
      {
        (*(*a3 + 72))(a3, this + 11);
      }
    }

    else if (v5 == 1)
    {
      (*(*a3 + 72))(a3, this + 8);
    }

    else if (v5 == 2)
    {
      (*(*a3 + 72))(a3, this + 9);
    }
  }

  else if (v5 <= 6)
  {
    if (v5 == 5)
    {
      (*(*a3 + 72))(a3, this + 12);
    }

    else
    {
      (*(*a3 + 72))(a3, this + 13);
    }
  }

  else
  {
    switch(v5)
    {
      case 7:
        (*(*a3 + 64))(a3, this + 16);
        break;
      case 8:
        (*(*a3 + 64))(a3, this + 24);
        break;
      case 9:
        if (*(a2 + 26) < 5u)
        {
          v12 = 0.0;
          if ((*(*a3 + 144))(a3, 1, &v12))
          {
            v15 = *(a2 + 112);
            operator*(&v15, &v16, v12);
            *(this + 32) = v16;
          }

          if ((*(*a3 + 144))(a3, 2, &v12))
          {
            v10 = *(a2 + 112);
            operator*(&v10, &v11, v12 + -1.0);
            *&v9.value = *(a2 + 7);
            v9.epoch = *(a2 + 16);
            v16 = v11;
            v15 = *(this + 32);
            PC_CMTimeSaferSubtract(&v16, &v15, &v13);
            v16 = v13;
            v15 = v9;
            PC_CMTimeSaferAdd(&v16, &v15, &v14);
            *(this + 56) = *&v14.value;
            epoch = v14.epoch;
            goto LABEL_29;
          }
        }

        else
        {
          if ((*(*a3 + 168))(a3, 1, &v14))
          {
            *(this + 32) = v14;
          }

          if ((*(*a3 + 168))(a3, 2, &v14))
          {
            v15 = *(this + 32);
            v16 = v14;
            PC_CMTimeSaferSubtract(&v16, &v15, &v13);
            *(this + 56) = *&v13.value;
            epoch = v13.epoch;
LABEL_29:
            *(this + 9) = epoch;
          }
        }

        break;
    }
  }

  return 0;
}

void OZScene::OZScene(OZScene *this, OZDocument *a2)
{
  *this = &unk_2871ECF48;
  *(this + 1) = &unk_287280E68;
  PCWorkingColorVector::PCWorkingColorVector((this + 16));
  *this = &unk_287287528;
  *(this + 1) = &unk_2872875D0;
  *(this + 8) = -1;
  PCSharedMutex::PCSharedMutex((this + 40));
  PCMutex::PCMutex((this + 160));
  PCSharedMutex::PCSharedMutex((this + 232));
  OZSceneSettings::OZSceneSettings((this + 336));
  OZExportSettings::OZExportSettings((this + 640));
  OZPublishSettings::OZPublishSettings((this + 720), this);
  PCURL::PCURL(&v16, @"Channel Scene Root");
  OZChannelObjectRoot::OZChannelObjectRoot((this + 920), &v16, 0, 0x270Fu, 0);
  PCString::~PCString(&v16);
  *(this + 150) = this + 1200;
  *(this + 151) = this + 1200;
  *(this + 152) = 0;
  *(this + 78) = 0u;
  *(this + 155) = this + 1248;
  *(this + 1272) = 0u;
  *(this + 158) = this + 1272;
  *(this + 322) = 0;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 332) = 1065353216;
  *(this + 334) = 0;
  *(this + 168) = 0;
  v4 = MEMORY[0x277CC08F0];
  *(this + 1352) = *MEMORY[0x277CC08F0];
  *(this + 171) = *(v4 + 2);
  v5 = *v4;
  *(this + 86) = *v4;
  v6 = *(v4 + 2);
  *(this + 174) = v6;
  *(this + 1400) = v5;
  *(this + 177) = v6;
  *(this + 89) = v5;
  *(this + 180) = v6;
  *(this + 1448) = v5;
  *(this + 183) = v6;
  *(this + 92) = v5;
  *(this + 186) = v6;
  *(this + 374) = 0;
  *(this + 1500) = 0;
  OZGuideSet::OZGuideSet((this + 1512));
  *(this + 196) = 0;
  *(this + 97) = 0u;
  *(this + 1577) = 256;
  *(this + 198) = a2;
  PCWorkingColorVector::PCWorkingColorVector((this + 1596));
  PCMutex::PCMutex((this + 1616));
  *(this + 106) = 0u;
  *(this + 211) = this + 1696;
  *(this + 428) = 0;
  *(this + 215) = this + 1720;
  *(this + 216) = this + 1720;
  *(this + 217) = 0;
  *(this + 1752) = 0u;
  *(this + 218) = this + 1752;
  *(this + 1776) = 0;
  *(this + 445) = 2;
  *(this + 223) = 0;
  *(this + 112) = 0u;
  *(this + 1809) = 0;
  v7 = PCRenderModel::PCRenderModel(this + 1816, 0);
  *(this + 924) = 0;
  *(this + 193) = 0;
  *(this + 1576) = 0;
  *(this + 789) = 0;
  *(this + 188) = 0;
  *(this + 1224) = 0u;
  *(this + 232) = 0;
  *(this + 234) = 0;
  *(this + 233) = 0;
  *(this + 1176) = *v4;
  *(this + 149) = *(v4 + 2);
  *(this + 398) = 0;
  *(this + 443) = 0;
  atomic_store(0, this + 1808);
  if ((*(theApp + 80) & 1) == 0)
  {
    v8 = OZPreferenceManager::Instance(v7);
    RecordWhilePlayback = OZPreferenceManager::getRecordWhilePlayback(v8);
    if (RecordWhilePlayback)
    {
      *(this + 398) |= 1u;
    }

    v10 = OZPreferenceManager::Instance(RecordWhilePlayback);
    RecordingOptions = OZPreferenceManager::getRecordingOptions(v10);
    if (RecordingOptions)
    {
      v12 = OZPreferenceManager::Instance(RecordingOptions);
      v13 = OZPreferenceManager::getRecordingOptions(v12);
      if (v13 == 1)
      {
        v14 = 2;
      }

      else
      {
        v15 = OZPreferenceManager::Instance(v13);
        if (OZPreferenceManager::getRecordingOptions(v15) != 2)
        {
          goto LABEL_10;
        }

        v14 = 4;
      }

      *(this + 398) = *(this + 398) & 0xFFFFFFF9 | v14;
    }
  }

LABEL_10:
  operator new();
}

void sub_2600F9E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v10 + 1832));
  PCCFRef<CGColorSpace *>::~PCCFRef((v10 + 1824));
  v18 = *(v10 + 1784);
  if (v18)
  {
    *(v10 + 1792) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1744, *v16);
  std::__list_imp<unsigned int>::clear(v12);
  PCSpinLock::~PCSpinLock((v10 + 1712));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v10 + 1688, *v15);
  PCMutex::~PCMutex((v10 + 1616));
  v19 = *(v10 + 1552);
  if (v19)
  {
    *(v10 + 1560) = v19;
    operator delete(v19);
  }

  std::__tree<OZGuide>::destroy(v10 + 1520, *(v10 + 1528));
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10 + 1296);
  PCSpinLock::~PCSpinLock((v10 + 1288));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1264, *v14);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1240, *v13);
  std::__list_imp<unsigned int>::clear(v11);
  OZChannelObjectRoot::~OZChannelObjectRoot((v10 + 920));
  OZPublishSettings::~OZPublishSettings((v10 + 720));
  OZExportSettings::~OZExportSettings((v10 + 640));
  OZSceneSettings::~OZSceneSettings((v10 + 336));
  PCSharedMutex::~PCSharedMutex((v10 + 232));
  PCMutex::~PCMutex((v10 + 160));
  PCSharedMutex::~PCSharedMutex((v10 + 40));
  _Unwind_Resume(a1);
}

void *OZScene::addRootNode(OZScene *this, OZSceneNode *a2)
{
  result = OZScene::getNode(this, *(a2 + 20));
  if (!result)
  {
    v5 = *(*(this + 151) + 16);
    if (!v5 || (v6 = *(v5 + 8), v7 = xmmword_26084FA20, !OZFactory::isKindOfClass(v6, &v7)))
    {
      operator new();
    }

    return OZScene::addRootNodeAfter(this, a2, *(*(this + 151) + 16));
  }

  return result;
}

uint64_t OZSceneList::instance(OZSceneList *this)
{
  {
    operator new();
  }
}

uint64_t OZSceneList::addScene(OZSceneList *this, OZScene *a2)
{
  v5 = a2;
  v3 = (this + 8);
  PCMutex::lock((this + 8));
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(this + 80, &v5);
  return PCMutex::unlock(v3);
}

void sub_2600FA1A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZScene::OZScene(OZScene *this, const OZScene *a2, OZDocument *a3)
{
  *this = &unk_2871ECF48;
  *(this + 1) = &unk_287280E68;
  PCWorkingColorVector::PCWorkingColorVector((this + 16));
  *this = &unk_287287528;
  *(this + 1) = &unk_2872875D0;
  *(this + 8) = -1;
  PCSharedMutex::PCSharedMutex((this + 40));
  PCMutex::PCMutex((this + 160));
  PCSharedMutex::PCSharedMutex((this + 232));
  OZSceneSettings::OZSceneSettings((this + 336), (a2 + 336));
  OZExportSettings::OZExportSettings((this + 640));
  OZPublishSettings::OZPublishSettings((this + 720), (a2 + 720), this);
  OZChannelObjectRoot::OZChannelObjectRoot((this + 920), (a2 + 920), 0);
  *(this + 150) = this + 1200;
  *(this + 151) = this + 1200;
  *(this + 152) = 0;
  *(this + 78) = 0u;
  *(this + 155) = this + 1248;
  *(this + 1272) = 0u;
  *(this + 158) = this + 1272;
  *(this + 322) = 0;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 332) = 1065353216;
  *(this + 334) = 0;
  *(this + 168) = 0;
  v6 = *(a2 + 1352);
  *(this + 171) = *(a2 + 171);
  *(this + 1352) = v6;
  v7 = *(a2 + 86);
  *(this + 174) = *(a2 + 174);
  *(this + 86) = v7;
  v8 = *(a2 + 1400);
  *(this + 177) = *(a2 + 177);
  *(this + 1400) = v8;
  v9 = *(a2 + 89);
  *(this + 180) = *(a2 + 180);
  *(this + 89) = v9;
  v10 = MEMORY[0x277CC08F0];
  *(this + 1448) = *MEMORY[0x277CC08F0];
  *(this + 183) = *(v10 + 16);
  *(this + 92) = *v10;
  *(this + 186) = *(v10 + 16);
  *(this + 374) = *(a2 + 374);
  *(this + 1500) = *(a2 + 1500);
  OZGuideSet::OZGuideSet((this + 1512));
  *(this + 196) = 0;
  *(this + 97) = 0u;
  *(this + 1577) = 256;
  *(this + 198) = a3;
  PCWorkingColorVector::PCWorkingColorVector((this + 1596));
  PCMutex::PCMutex((this + 1616));
  *(this + 106) = 0u;
  *(this + 211) = this + 1696;
  *(this + 428) = 0;
  *(this + 215) = this + 1720;
  *(this + 216) = this + 1720;
  *(this + 217) = 0;
  *(this + 1752) = 0u;
  *(this + 218) = this + 1752;
  v11 = atomic_load(a2 + 1776);
  *(this + 1776) = v11 & 1;
  *(this + 445) = *(a2 + 445);
  *(this + 224) = 0;
  *(this + 225) = 0;
  *(this + 223) = 0;
  *(this + 1809) = 0;
  PCRenderModel::PCRenderModel((this + 1816), (a2 + 1816));
  v13 = 0;
  *(this + 924) = 0;
  *(this + 193) = 0;
  *(this + 1576) = 0;
  *(this + 1579) = 0;
  *(this + 188) = 0;
  *(this + 1224) = 0u;
  *(this + 232) = 0;
  *(this + 234) = 0;
  *(this + 233) = 0;
  *(this + 1176) = *v10;
  *(this + 149) = *(v10 + 16);
  *(this + 398) = 0;
  *(this + 443) = *(a2 + 443);
  atomic_store(0, this + 1808);
  if ((*(theApp + 80) & 1) == 0)
  {
    v14 = OZPreferenceManager::Instance(v12);
    RecordWhilePlayback = OZPreferenceManager::getRecordWhilePlayback(v14);
    if (RecordWhilePlayback)
    {
      *(this + 398) |= 1u;
    }

    v16 = OZPreferenceManager::Instance(RecordWhilePlayback);
    RecordingOptions = OZPreferenceManager::getRecordingOptions(v16);
    if (RecordingOptions)
    {
      v18 = OZPreferenceManager::Instance(RecordingOptions);
      v19 = OZPreferenceManager::getRecordingOptions(v18);
      if (v19 == 1)
      {
        v13 = *(this + 398) & 0xFFFFFFF9 | 2;
LABEL_10:
        *(this + 398) = v13;
        goto LABEL_11;
      }

      v20 = OZPreferenceManager::Instance(v19);
      v21 = OZPreferenceManager::getRecordingOptions(v20);
      v13 = *(this + 398);
      if (v21 == 2)
      {
        v13 = v13 & 0xFFFFFFF9 | 4;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *(this + 398);
    }
  }

LABEL_11:
  *(this + 398) = v13 | *(a2 + 398) & 0xFFFFFE68;
  *(this + 1768) = 0;
  PCURL::PCURL(&v28, @"Project Node Name");
  NextUniqueID = OZChannelBase::getNextUniqueID(v22);
  v24 = OZProjectNode::create(&v28, NextUniqueID);
  PCString::~PCString(&v28);
  v25 = OZScene::addRootNode(this, v24);
  v26 = OZSceneList::instance(v25);
  OZSceneList::addScene(v26, this);
  *(this + 152) = 1;
  *(this + 36) = 0;
  OZChannelBase::setRangeName(this, v27);
}

void sub_2600FA5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v10 + 1832));
  PCCFRef<CGColorSpace *>::~PCCFRef((v10 + 1824));
  v18 = *(v10 + 1784);
  if (v18)
  {
    *(v10 + 1792) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1744, *v16);
  std::__list_imp<unsigned int>::clear(v12);
  PCSpinLock::~PCSpinLock((v10 + 1712));
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(v10 + 1688, *v15);
  PCMutex::~PCMutex((v10 + 1616));
  v19 = *(v10 + 1552);
  if (v19)
  {
    *(v10 + 1560) = v19;
    operator delete(v19);
  }

  std::__tree<OZGuide>::destroy(v10 + 1520, *(v10 + 1528));
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10 + 1296);
  PCSpinLock::~PCSpinLock((v10 + 1288));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1264, *v14);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + 1240, *v13);
  std::__list_imp<unsigned int>::clear(v11);
  OZChannelObjectRoot::~OZChannelObjectRoot((v10 + 920));
  OZPublishSettings::~OZPublishSettings((v10 + 720));
  OZExportSettings::~OZExportSettings((v10 + 640));
  OZSceneSettings::~OZSceneSettings((v10 + 336));
  PCSharedMutex::~PCSharedMutex((v10 + 232));
  PCMutex::~PCMutex((v10 + 160));
  PCSharedMutex::~PCSharedMutex((v10 + 40));
  _Unwind_Resume(a1);
}

void OZScene::~OZScene(OZScene *this)
{
  *this = &unk_287287528;
  *(this + 1) = &unk_2872875D0;
  *(this + 1848) = 1;
  *(this + 1578) = 0;
  v2 = OZSceneList::instance(this);
  OZSceneList::removeScene(v2, this);
  OZScene::clearLockingGroups(this);
  v3 = *(this + 188);
  if (v3)
  {
    OZRenderManager::~OZRenderManager(v3);
    MEMORY[0x2666E9F00]();
    *(this + 188) = 0;
  }

  while (1)
  {
    v8 = *(this + 152);
    if (!v8)
    {
      break;
    }

    v4 = *(this + 151);
    v5 = v4[1];
    v6 = v4[2];
    v7 = *v4;
    *(v7 + 8) = v5;
    *v5 = v7;
    *(this + 152) = v8 - 1;
    operator delete(v4);
    OZScene::unregisterNode(this, v6);
    OZScene::removeAllDependencies(this, v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v9 = (this + 1264);
  while (*(this + 160))
  {
    v10 = *v9;
    v11 = (*v9)[5];
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, *v9);
    operator delete(v10);
    if (v11)
    {
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v11, *(v11 + 8));
      MEMORY[0x2666E9F00](v11, 0x1020C4062D53EE8);
    }
  }

  OZScene::destroyObjectiveCClasses(this);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 229);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 228);
  v12 = *(this + 223);
  if (v12)
  {
    *(this + 224) = v12;
    operator delete(v12);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1744, *(this + 219));
  std::__list_imp<unsigned int>::clear(this + 215);
  PCSpinLock::~PCSpinLock(this + 428);
  std::__tree<std::__value_type<PCHash128,LiTextureStoreToken>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,LiTextureStoreToken>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,LiTextureStoreToken>>>::destroy(this + 1688, *(this + 212));
  PCMutex::~PCMutex((this + 1616));
  v13 = *(this + 194);
  if (v13)
  {
    *(this + 195) = v13;
    operator delete(v13);
  }

  std::__tree<OZGuide>::destroy(this + 1520, *(this + 191));
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(this + 1296);
  PCSpinLock::~PCSpinLock(this + 322);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1264, *(this + 159));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1240, *(this + 156));
  std::__list_imp<unsigned int>::clear(this + 150);
  OZChannelObjectRoot::~OZChannelObjectRoot((this + 920));
  OZPublishSettings::~OZPublishSettings((this + 720));
  OZExportSettings::~OZExportSettings((this + 640));
  *(this + 42) = &unk_287283398;
  PCString::~PCString(this + 65);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 58);
  PCSharedMutex::~PCSharedMutex((this + 232));
  PCMutex::~PCMutex((this + 160));
  PCSharedMutex::~PCSharedMutex((this + 40));
}

{
  OZScene::~OZScene(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSceneList::removeScene(uint64_t **this, OZScene *a2)
{
  v5 = a2;
  v3 = (this + 1);
  PCMutex::lock((this + 1));
  std::__tree<OZLocking *>::__erase_unique<OZLocking *>(this + 10, &v5);
  return PCMutex::unlock(v3);
}

void sub_2600FA9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZScene::clearLockingGroups(OZScene *this)
{
  PCSharedMutex::lock((this + 40));
  v2 = *(this + 223);
  v3 = *(this + 224);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        OZLockingGroup::~OZLockingGroup(*v2);
        MEMORY[0x2666E9F00]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 223);
  }

  *(this + 224) = v2;
  v4 = *(this + 151);
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v13[0] = v4;
  v13[1] = v4;
  v13[2] = this + 1200;
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  while (v13[0] != (this + 1200))
  {
    v5 = *(v13[0] + 16);
    if (v6)
    {
      OZLocking::reset(v6);
    }

    v7 = v5 + 125;
    for (i = v5[126]; i != v7; i = i[1])
    {
      v9 = i[2];
      if (v9)
      {
        if (v10)
        {
          OZLocking::reset(v10);
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v13);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v11);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
  PCSharedMutex::unlock((this + 40));
}

void sub_2600FABB8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  PCSharedMutex::unlock((v1 + 40));
  _Unwind_Resume(a1);
}

void *OZScene::unregisterNode(OZScene *this, OZSceneNode *a2)
{
  (*(*a2 + 872))(a2, this);
  if (OZScene::OZNodeMap::operator[](this + 1288, *(a2 + 20)))
  {
    v4 = *((*(*a2 + 664))(a2) + 8);
    v29 = xmmword_260347A50;
    if (OZFactory::isKindOfClass(v4, &v29))
    {
      if ((*(*a2 + 248))(a2) && (*(*a2 + 664))(a2))
      {
        --*(this + 443);
      }
    }
  }

  v5 = a2 + 16;
  OZScene::OZNodeMap::removeNode(this + 322, (a2 + 16));
  v6 = *(this + 159);
  if (v6)
  {
    v7 = *(a2 + 20);
    v8 = this + 1272;
    do
    {
      v9 = *(v6 + 8);
      v10 = v9 >= v7;
      v11 = v9 < v7;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *&v6[8 * v11];
    }

    while (v6);
    if (v8 != this + 1272 && v7 >= *(v8 + 8))
    {
      v12 = *(v8 + 5);
      std::__tree<unsigned int>::erase(v12, *v12, (v12 + 8));
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, v8);
      operator delete(v8);
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v12, *(v12 + 8));
      MEMORY[0x2666E9F00](v12, 0x1020C4062D53EE8);
    }
  }

  for (i = *(a2 + 123); i != (a2 + 976); i = i[1])
  {
    v14 = i[2];
    if (v14)
    {
      v15 = (v14 + 48);
    }

    else
    {
      v15 = 0;
    }

    OZScene::unregisterObject(this, v15);
  }

  for (j = *(a2 + 126); j != (a2 + 1000); j = j[1])
  {
    v17 = j[2];
    if (v17)
    {
      v18 = (v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    OZScene::unregisterObject(this, v18);
  }

  if ((*(*a2 + 1056))(a2))
  {
    v19 = (*(*a2 + 1104))(a2);
    for (k = (*(*a2 + 1112))(a2); v19 != k; k = (*(*a2 + 1112))(a2))
    {
      v21 = *(v19 + 16);
      OZScene::unregisterNode(this, v21);
      OZScene::removeAllDependencies(this, v21);
      v19 = *(v19 + 8);
    }
  }

  result = (*(*a2 + 960))(a2);
  if (result)
  {
    v23 = (*(*a2 + 1032))(a2);
    result = (*(*a2 + 1024))(a2);
    if (result != v23)
    {
      v24 = result;
      do
      {
        result = OZScene::unregisterNode(this, *(v24 + 16));
        v24 = *(v24 + 8);
      }

      while (v24 != v23);
    }
  }

  if (*(this + 1578) == 1)
  {
    atomic_store(1u, this + 1808);
  }

  if (*(this + 153) == a2)
  {
    result = OZScene::clearSelection(this);
    *(this + 153) = 0;
  }

  if (*(this + 154) == a2)
  {
    *(this + 154) = 0;
  }

  v25 = *(this + 194);
  v26 = *(this + 195);
  if (v25 != v26)
  {
    v27 = *(this + 194);
    while (*v27 != v5)
    {
      ++v27;
      ++v25;
      if (v27 == v26)
      {
        v25 = *(this + 195);
        break;
      }
    }
  }

  if (v26 != v25)
  {
    v28 = (v26 - (v25 + 1));
    if (v26 != v25 + 1)
    {
      result = memmove(v25, v25 + 1, v26 - (v25 + 1));
    }

    *(this + 195) = &v28[v25];
  }

  return result;
}

OZScene *OZScene::removeAllDependencies(OZScene *this, OZSceneNode *a2)
{
  if (a2)
  {
    v3 = this;
    OZScene::removeAllDependencies(this, *(a2 + 20));
    v4 = (*(*a2 + 640))(a2);
    v5 = *(a2 + 20);

    return OZScene::removeAllDependencies(v3, v4, v5);
  }

  return this;
}

void non-virtual thunk toOZScene::~OZScene(OZScene *this)
{
  OZScene::~OZScene((this - 8));
}

{
  OZScene::~OZScene((this - 8));

  JUMPOUT(0x2666E9F00);
}

double OZScene::getTimeForFrame@<D0>(OZScene *this@<X0>, double a2@<D0>, __n128 *a3@<X8>)
{
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  OZSceneSettings::getFrameDuration((this + 336), a3);
  result = a3->n128_i64[0] * a2;
  a3->n128_u64[0] = result;
  return result;
}

__n128 OZScene::getSceneSettings(OZScene *this, OZExportSettings *a2)
{
  v3 = *(*(this + 198) + 8 * *(*(*(this + 198) + 224) + 12) + 192);
  *(a2 + 4) = *(v3 + 32);
  *(a2 + 32) = 1;
  OZExportSettings::setRenderQuality(a2, *(v3 + 64));
  *(a2 + 10) = *(v3 + 68);
  *(a2 + 44) = *(v3 + 72);
  *(a2 + 45) = *(v3 + 73);
  *(a2 + 6) = 0x200000002;
  v4 = *(v3 + 240);
  *(a2 + 14) = 2;
  *(a2 + 15) = v4;
  result.n128_u64[0] = 0x200000002;
  result.n128_u64[1] = 0x200000002;
  *(a2 + 4) = result;
  return result;
}

void *OZScene::getNode(OZScene *this, unsigned int a2)
{
  result = OZScene::OZNodeMap::operator[](this + 1288, a2);
  if (result)
  {
  }

  return result;
}

float64x2_t OZScene::getSceneBounds(uint64_t a1, float64x2_t *a2)
{
  if (a2)
  {
    v2 = *(a1 + 344);
    v3.i64[0] = v2;
    v3.i64[1] = SHIDWORD(v2);
    result = vcvtq_f64_s64(v3);
    __asm { FMOV            V1.2D, #-0.5 }

    *a2 = vmulq_f64(result, _Q1);
    a2[1] = result;
  }

  return result;
}

void OZScene::setTimeRange(OZScene *this, const PCTimeRange *a2)
{
  if ((this + 1352) != a2)
  {
    v4 = *a2;
    *(this + 171) = *(a2 + 2);
    *(this + 1352) = v4;
    v5 = *(a2 + 24);
    *(this + 174) = *(a2 + 5);
    *(this + 86) = v5;
  }

  if (*(this + 46) <= 0.0)
  {
    goto LABEL_8;
  }

  if ((*(a2 + 9) & 0x1D) != 1 || (OZSceneSettings::getFrameDuration((this + 336), &time), (time.flags & 0x1D) != 1))
  {
    puts("OZScene::setTimeRange range is not numeric, setting num frames to 1.");
LABEL_8:
    Seconds = 1;
    goto LABEL_9;
  }

  v8 = *(a2 + 24);
  v9 = *(a2 + 5);
  OZSceneSettings::getFrameDuration((this + 336), &v7);
  operator/(&v8, &v7, &time);
  Seconds = CMTimeGetSeconds(&time);
LABEL_9:
  *(this + 88) = Seconds;
}

uint64_t OZScene::getPlayRange(OZScene *this)
{
  v1 = 1448;
  if (*(this + 8) == -1)
  {
    v1 = 1400;
  }

  return this + v1;
}

__n128 OZScene::setPlayRange(OZScene *this, const PCTimeRange *a2)
{
  if (*(this + 8) == -1)
  {
    v2 = this + 1400;
    if ((this + 1400) == a2)
    {
      return result;
    }

    v3 = 1424;
  }

  else
  {
    v2 = this + 1448;
    if ((this + 1448) == a2)
    {
      return result;
    }

    v3 = 1472;
  }

  v4 = *a2;
  *(v2 + 2) = *(a2 + 2);
  *v2 = v4;
  v5 = (this + v3);
  result = *(a2 + 24);
  v5[1].n128_u64[0] = *(a2 + 5);
  *v5 = result;
  return result;
}

__n128 OZScene::getCurrentTime@<Q0>(OZScene *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(this + 149);
  result = *(this + 1176);
  *a2 = result;
  return result;
}

uint64_t OZScene::setTargetDisplayAspectRatio(uint64_t this, double a2, int a3, BOOL *a4)
{
  v5 = *(this + 344);
  v6 = *(this + 384);
  v7 = *(this + 348);
  v8 = v6 * v5 / v7;
  if (vabdd_f64(a2, v8) >= 0.0000001)
  {
    v9 = vcvtmd_s64_f64(v7 * a2 / v6 + 0.5 + 0.0000001);
    if (v5 == v9)
    {
      if (a4)
      {
        goto LABEL_3;
      }

      return this;
    }

    if (a4)
    {
      *a4 = 1;
    }

    if (*(this + 568))
    {
      if (*(this + 572) != v9)
      {
LABEL_14:
        *(this + 344) = v9;
        return OZScene::targetDisplayAspectRatioHasChanged(this, v8, a2, a3);
      }

      v10 = 0;
    }

    else
    {
      *(this + 572) = v5;
      v10 = 1;
    }

    *(this + 568) = v10;
    goto LABEL_14;
  }

  if (a4)
  {
LABEL_3:
    *a4 = 0;
  }

  return this;
}

uint64_t OZScene::targetDisplayAspectRatioHasChanged(OZScene *this, double a2, double a3, int a4)
{
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, 24);
  v34 = 1065353216;
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, 24);
  v31 = 1065353216;
  OZScene::begin_t<OZImageElement,false,true>(this, v25);
  *v32 = *v25;
  *&v32[9] = *&v25[9];
  v34 = v28;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v33, v27, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v26);
  v8 = *(this + 151);
  v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  *v25 = this + 1200;
  *&v25[8] = v8;
  *&v25[16] = this + 1200;
  v25[24] = 0;
  *v29 = *v25;
  *&v29[9] = *&v25[9];
  v31 = 1065353216;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v30, 0, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v26);
  while (*v32 != *v29)
  {
    if (*v32 == *&v32[16] || (v9 = *(*v32 + 16)) == 0)
    {
      v10 = 0;
    }

    else
    {
    }

    if ((OZImageElement::isInputSource(v10) & 1) != 0 || OZImageElement::isPassthroughPlaceholder(v10) || OZImageElement::isBackgroundDropZone(v10) && OZImageElement::useDisplayAspect(v10) || OZImageElement::resizeToMatchInputSource(v10))
    {
      OZImageElement::resetFitModeToSceneDims(v10, a2, a3);
    }

    OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(v32);
  }

  v26 = 0u;
  v27 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, 24);
  v24 = 1065353216;
  v11 = *(this + 151);
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  *v18 = v11;
  *&v18[8] = v11;
  *&v18[16] = this + 1200;
  v18[24] = 0;
  *&v25[9] = *&v18[9];
  *v25 = *v18;
  v28 = 1065353216;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v26, 0, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
  v12 = *(this + 151);
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  *v18 = this + 1200;
  *&v18[8] = v12;
  *&v18[16] = this + 1200;
  v18[24] = 0;
  *v22 = *v18;
  *&v22[9] = *&v18[9];
  v24 = 1065353216;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v23, 0, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
  while (*v25 != *v22)
  {
    (*(**(*v25 + 16) + 912))(*(*v25 + 16));
    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v25);
  }

  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, 24);
  v21 = 1065353216;
  OZScene::begin_t<OZProjectNode,false,true>(this, v15);
  *v18 = v15[0];
  *&v18[9] = *(v15 + 9);
  v21 = v17;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v19, v16[2], 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
  OZRigWidgetAspectRatio::setTargetDisplayAspectRatio(v13[136], a3, a4);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v23);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v26);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v30);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v33);
}

void sub_2600FB8D0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v5 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v4 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZScene::setTargetDisplayAspectRatioWithNativeSize(uint64_t this, double a2, double a3, double a4, int a5)
{
  v6 = *(this + 344);
  v7 = *(this + 384);
  v8 = *(this + 348);
  if (a2 <= 1.0)
  {
    a3 = floor(a2 * a4 / v7 + 0.5 + 0.0000001);
  }

  else
  {
    a4 = floor(a3 / a2 / v7 + 0.5 + 0.0000001);
  }

  v9 = a4;
  if (v6 != a3 || v8 != v9)
  {
    *(this + 344) = a3;
    *(this + 348) = v9;
    return OZScene::targetDisplayAspectRatioHasChanged(this, v7 * v6 / v8, a2, a5);
  }

  return this;
}

uint64_t *OZScene::begin_t<OZImageElement,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZScene::begin_t<OZProjectNode,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZProjectNode,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

uint64_t OZScene::setCurrentObject(OZScene *this, OZSceneNode *a2)
{
  result = OZScene::clearSelection(this);
  if (a2)
  {
    result = (*(*a2 + 688))(a2);
  }

  *(this + 153) = a2;
  return result;
}

uint64_t OZScene::clearSelection(OZScene *this)
{
  OZScene::begin_sel(this, v6);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  while (v6[0] != (this + 1200))
  {
    (*(**(v6[0] + 16) + 696))(*(v6[0] + 16));
    OZObject::iterator_t<OZSceneNode,true,true,OZObject::defaultValidator>::operator++(v6);
  }

  v2 = *(*(this + 198) + 168);
  if (v2)
  {
    OZNotificationManager::clearLastModifiedChannels(v2);
  }

  *(this + 153) = 0;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v4);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v7);
}

void sub_2600FBD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *OZScene::begin_all_sel@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  v3 = this[151];
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = this + 150;
  *(a2 + 40) = 0;
  if (v3 == this + 150)
  {
    return this;
  }

  v4 = v3[2];
  if (v4)
  {
    this = (*(*(v4 + 16) + 216))(v4 + 16);
    if (this)
    {
      v5 = (*(*(v4 + 16) + 216))(v4 + 16);
      this = OZChannelBase::testFlag(v5, 1);
      if (!this)
      {
        return OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(a2);
      }
    }
  }

  v6 = *(a2 + 40);
  if (v6 < 2)
  {
    v8 = *a2;
    if (*a2 != *(a2 + 16))
    {
      goto LABEL_13;
    }

    return OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(a2);
  }

  if (v6 == 2)
  {
    v7 = 24;
    goto LABEL_12;
  }

  if (v6 != 3)
  {
    return OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(a2);
  }

  v7 = 32;
LABEL_12:
  v8 = *(a2 + v7);
LABEL_13:
  v9 = *(v8 + 16);
  if (v4)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(a2);
  }

  return this;
}

double OZScene::end_all_sel@<D0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 151);
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1065353216;
  *a2 = this + 1200;
  *(a2 + 8) = v2;
  *(a2 + 16) = this + 1200;
  *(a2 + 40) = 0;
  return result;
}

OZScene *OZScene::selectObject(OZScene *this, OZObjectManipulator *a2, char a3, char a4)
{
  if (!a2)
  {
    return this;
  }

  v7 = this;
  if ((a3 & 1) == 0)
  {
    OZScene::clearSelection(this);
  }

  (*(*a2 + 304))(a2);
  if (v8)
  {
    v9 = (*(*v8 + 320))(v8);
LABEL_8:
    v10 = (*(*v9 + 640))(v9);
    this = OZChannelFolder::setFoldFlag(v10, 0x2000);
    goto LABEL_9;
  }

  if (this)
  {
    v9 = (*(*this + 248))(this);
    goto LABEL_8;
  }

LABEL_9:
  *(v7 + 153) = 0;
  if ((a3 & 1) == 0)
  {
    this = (*(*a2 + 232))(a2);
    *(v7 + 153) = this;
    if ((a4 & 1) == 0)
    {
      v11 = this;
      {
LABEL_15:
        *(v7 + 154) = this;
      }

      else
      {
        while (1)
        {
          v11 = *(v11 + 120);
          if (!v11)
          {
            break;
          }

          if (this)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  return this;
}

void *OZScene::begin_sel@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = this + 150;
  *(a2 + 24) = 0;
  if (v3 != this + 150)
  {
    this = (*(**(v3 + 16) + 680))(*(v3 + 16));
    if (!this || !*(v3 + 16))
    {
      return OZObject::iterator_t<OZSceneNode,true,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return this;
}

double OZScene::end_sel@<D0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 151);
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = this + 1200;
  *(a2 + 8) = v2;
  *(a2 + 16) = this + 1200;
  *(a2 + 24) = 0;
  return result;
}

void *OZObject::iterator_t<OZSceneNode,true,true,OZObject::defaultValidator>::operator++(void *a1)
{
  for (i = a1; ; a1 = i)
  {
    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(a1);
    if (*i == i[2] || (*(**(*i + 16) + 680))(*(*i + 16)) && *i != i[2] && *(*i + 16))
    {
      break;
    }
  }

  return i;
}

uint64_t OZScene::updateSoloFlag(OZScene *this, OZSceneNode *a2)
{
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, 24);
  v29 = 1065353216;
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, 24);
  v26 = 1065353216;
  OZScene::begin_v<OZSceneNode,false,true,OZSoloChildNodeValidator>(this, a2, v20);
  *v27 = *v20;
  *&v27[9] = *&v20[9];
  v29 = v23;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v28, v22, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v21);
  v3 = *(this + 151);
  v21 = 0u;
  v22 = 0u;
  v23 = 1065353216;
  *v20 = this + 1200;
  *&v20[8] = v3;
  *&v20[16] = this + 1200;
  v20[24] = 0;
  *v24 = *v20;
  *&v24[9] = *&v20[9];
  v26 = 1065353216;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v25, 0, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v21);
  while (*v27 != *v24)
  {
    if (*v27 != *&v27[16])
    {
      v5 = *(*v27 + 16);
      if (v5)
      {
        v6 = (*(*v5 + 640))(v5);
        OZChannelBase::resetFlag(v6, 0x100000, 0);
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZSoloChildNodeValidator>::operator++(v27, v4);
  }

  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, 24);
  v23 = 1065353216;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 24);
  v19 = 1065353216;
  OZScene::begin_v<OZSceneNode,false,true,OZSoloNodeValidator>(this, v4, v13);
  *v20 = *v13;
  *&v20[9] = *&v13[9];
  v23 = v16;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(&v21, v15, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v14);
  v7 = *(this + 151);
  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  *v13 = this + 1200;
  *&v13[8] = v7;
  *&v13[16] = this + 1200;
  v13[24] = 0;
  *v17 = *v13;
  *&v17[9] = *&v13[9];
  v19 = 1065353216;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v18, 0, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v14);
  v9 = *(this + 398);
  if (*v20 == *v17)
  {
    *(this + 398) = v9 & 0xFFFFFFDF;
  }

  else
  {
    *(this + 398) = v9 | 0x20;
    while (*v20 != *v17)
    {
      if (*v20 != *&v20[16])
      {
        v10 = *(*v20 + 16);
        if (v10)
        {
          v11 = (*(*v10 + 640))(v10);
          OZChannelBase::setChildSolo(v11, 1);
        }
      }

      OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::operator++(v20, v8);
    }
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v18);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v21);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v25);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v28);
}

void sub_2600FC588(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v5 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v4 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZScene::begin_v<OZSceneNode,false,true,OZSoloNodeValidator>@<X0>(uint64_t result@<X0>, OZSceneNode *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 1208);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 1065353216;
  *a3 = v4;
  *(a3 + 8) = v4;
  *(a3 + 16) = result + 1200;
  *(a3 + 24) = 0;
  if (v4 != result + 1200)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::operator++(a3, a2);
    }

    v6 = (*(*v5 + 640))(v5);
    result = OZChannelBase::isSolo(v6);
    if ((result & 1) == 0)
    {
      return OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::operator++(a3, a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::operator++(void *a1, OZSceneNode *a2)
{
  for (i = a1; ; a1 = i)
  {
    OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::increment(a1, a2);
    if (*i == i[2])
    {
      break;
    }

    v3 = *(*i + 16);
    if (v3)
    {
      v4 = (*(*v3 + 640))(v3);
      if (OZChannelBase::isSolo(v4))
      {
        break;
      }
    }
  }

  return i;
}

void *OZScene::begin_v<OZSceneNode,false,true,OZSoloChildNodeValidator>@<X0>(void *result@<X0>, OZSceneNode *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[151];
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 1065353216;
  *a3 = v4;
  *(a3 + 8) = v4;
  *(a3 + 16) = result + 150;
  *(a3 + 24) = 0;
  if (v4 != result + 150)
  {
    v5 = v4[2];
    if (!v5)
    {
      return OZObject::iterator_t<OZSceneNode,false,true,OZSoloChildNodeValidator>::operator++(a3, a2);
    }

    v6 = (*(*v5 + 640))(v5);
    result = OZChannelBase::testFlag(v6, 0x100000);
    if ((result & 1) == 0)
    {
      return OZObject::iterator_t<OZSceneNode,false,true,OZSoloChildNodeValidator>::operator++(a3, a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZSceneNode,false,true,OZSoloChildNodeValidator>::operator++(void *a1, OZSceneNode *a2)
{
  for (i = a1; ; a1 = i)
  {
    OZObject::iterator_t<OZSceneNode,false,true,OZSoloNodeValidator>::increment(a1, a2);
    if (*i == i[2])
    {
      break;
    }

    v3 = *(*i + 16);
    if (v3)
    {
      v4 = (*(*v3 + 640))(v3);
      if (OZChannelBase::testFlag(v4, 0x100000))
      {
        break;
      }
    }
  }

  return i;
}

void *OZScene::addRootNodeAfter(OZScene *this, OZSceneNode *a2, OZSceneNode *a3)
{
  result = OZScene::getNode(this, *(a2 + 20));
  if (!result)
  {
    v7 = *(this + 151);
    if (!a3)
    {
      a3 = *(v7 + 16);
    }

    v8 = this + 1200;
    while (v7 != v8)
    {
      if (*(v7 + 16) == a3)
      {
        if (v7 != v8)
        {
          operator new();
        }

        break;
      }

      v7 = *(v7 + 8);
    }

    OZScene::registerNode(this, a2);

    return OZScene::addAllDependencies(this, a2);
  }

  return result;
}

void *OZScene::registerNode(OZScene *this, OZSceneNode *a2)
{
  v4 = OZScene::OZNodeMap::operator[](this + 1288, *(a2 + 20));
  v5 = v4;
  if (*(this + 1576) == 1 && v4 != 0)
  {
    *v31 = a2 + 16;
    if (v4 != (a2 + 16))
    {
      v7 = *(this + 195);
      for (i = *(this + 194); i != v7; ++i)
      {
        if (*i == (a2 + 16))
        {
          if (i != v7)
          {
            goto LABEL_12;
          }

          break;
        }
      }

      std::vector<TXTabStop *>::push_back[abi:ne200100](this + 1552, v31);
    }
  }

LABEL_12:
  {
    if (a2)
    {
      v10 = (a2 + 16);
    }

    else
    {
      v10 = 0;
    }

    OZScene::OZNodeMap::setNode(this + 322, v10);
    (*(*a2 + 280))(a2, this);
    (*(*a2 + 864))(a2, this);
    v11 = *((*(*a2 + 664))(a2) + 8);
    *v31 = xmmword_260347A50;
    if (OZFactory::isKindOfClass(v11, v31) && (*(*a2 + 248))(a2) && (*(*a2 + 664))(a2))
    {
      ++*(this + 443);
    }

    for (j = *(a2 + 123); j != (a2 + 976); j = j[1])
    {
      v13 = j[2];
      if (v13)
      {
        v14 = (v13 + 48);
      }

      else
      {
        v14 = 0;
      }

      OZScene::registerObject(this, v14);
    }

    for (k = *(a2 + 126); k != (a2 + 1000); k = k[1])
    {
      v16 = k[2];
      if (v16)
      {
        v17 = (v16 + 16);
      }

      else
      {
        v17 = 0;
      }

      OZScene::registerObject(this, v17);
    }

    if ((*(*a2 + 1056))(a2))
    {
      v18 = (*(*a2 + 1104))(a2);
      for (m = (*(*a2 + 1112))(a2); v18 != m; m = (*(*a2 + 1112))(a2))
      {
        v20 = *(v18 + 16);
        OZScene::registerNode(this, v20);
        OZScene::addAllDependencies(this, v20);
        v18 = *(v18 + 8);
      }
    }

    if ((*(*a2 + 960))(a2))
    {
      memset(v32, 0, sizeof(v32));
      memset(v31, 0, 24);
      v33 = 1065353216;
      OZSceneNode::end(a2, v29);
      OZSceneNode::begin(a2, v26);
      *v31 = v26[0];
      *&v31[9] = *(v26 + 9);
      v33 = v28;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v32, v27[2], 0);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27);
      while (*v31 != v29[0])
      {
        if (*v31 == *&v31[16])
        {
          v21 = 0;
        }

        else
        {
          v21 = *(*v31 + 16);
        }

        OZScene::registerNode(this, v21);
        OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v31);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v30);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v32);
    }

    if ((*((*(*a2 + 640))(a2) + 56) & 0x40) != 0)
    {
      if ((*(theApp + 80) & 1) == 0)
      {
        v22 = (*(*a2 + 640))(a2);
        ObjectManipulator = OZChannelBase::getObjectManipulator(v22);
        OZChannelBase::setRangeName(ObjectManipulator, v24);
      }

      v25 = (*(*a2 + 640))(a2);
      OZChannelBase::setNameUnset(v25, 0);
    }

    if (*(this + 1578) == 1)
    {
      atomic_store(1u, this + 1808);
    }

    return OZScene::sceneDidChange(this);
  }

  return result;
}

void sub_2600FCF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va1);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v5 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZScene::addAllDependencies(uint64_t this, OZSceneNode *a2)
{
  if (a2)
  {
    v2 = this;
    if ((*(this + 1592) & 0x10) == 0)
    {
      v4 = *(a2 + 120);
      if (v4)
      {
        OZScene::addNodeDependency(this, *(a2 + 20), *(v4 + 80));
      }

      v5 = (*(*a2 + 640))(a2);
      v6 = *(a2 + 20);

      return OZScene::addAllDependencies(v2, v5, v6);
    }
  }

  return this;
}

void *OZScene::addRootNodeBefore(OZScene **this, OZSceneNode *a2, OZSceneNode *a3)
{
  result = OZScene::getNode(this, *(a2 + 20));
  if (!result)
  {
    if (a3)
    {
      v6 = (this + 150);
      v7 = this[151];
      if (v7 == (this + 150))
      {
LABEL_7:
        v8 = (this + 150);
      }

      else
      {
        v8 = this[151];
        while (*(v8 + 2) != a3)
        {
          v8 = *(v8 + 1);
          if (v8 == v6)
          {
            goto LABEL_7;
          }
        }
      }

      if (v8 == v7)
      {
        v8 = *(v8 + 1);
      }

      if (v8 != v6)
      {
        operator new();
      }
    }

    operator new();
  }

  return result;
}

OZChannelFolder *OZScene::removeRootNode(OZScene *this, OZSceneNode *a2)
{
  v4 = (this + 1200);
  for (i = *(this + 151); i != v4; i = i[1])
  {
    if (i[2] == a2)
    {
      if (i != v4)
      {
        v7 = *i;
        v6 = i[1];
        *(v7 + 1) = v6;
        *v6 = v7;
        --*(this + 152);
        operator delete(i);
      }

      break;
    }
  }

  OZScene::unregisterNode(this, a2);
  v8 = (*(*a2 + 640))(a2);

  return OZChannelFolder::removeDescendant((this + 920), v8);
}

void OZScene::addNode(OZDocument **this, OZSceneNode *a2, PCString *a3, __int16 a4, int a5, OZSceneNode *a6)
{
  v50 = *MEMORY[0x277D85DE8];
  Node = OZScene::getNode(this, *(a2 + 20));
  if (v13)
  {
    v14 = v13;
    OZScene::begin_t<OZFootageLayer,false,true>(this, &v49.var1);
    {
    }

    else
    {
      PCURL::PCURL(&v49, @"Footage Layer Name");
      OZChannelBase::getNextUniqueID(v17);
      *&v49.var11 = xmmword_260850790;
      SceneNode = OZApplication::createSceneNode(theApp, &v49.var11);
      PCString::~PCString(&v49);
      if (!SceneNode)
      {
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v49.var5);
        return;
      }

      OZScene::addRootNodeAfter(this, SceneNode, *(this[150] + 2));
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var11, @"Undo Paste");
        }

        else
        {
          PCString::PCString(&v49.var11, a3);
        }

        (*(*(SceneNode + 2) + 176))(SceneNode + 2, &v49.var11, 1);
        PCString::~PCString(&v49.var11);
      }
    }

    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var11, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var11, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var11, 3);
        PCString::~PCString(&v49.var11);
      }

      OZSceneNode::removeFromParent(a2);
    }

    v21 = *SceneNode;
    if (a5)
    {
      v22 = (v21 + 992);
    }

    else
    {
      v22 = (v21 + 984);
    }

    (*v22)(SceneNode, v14, a6);
    if (v23)
    {
      v24 = v23;
      (*(*v23 + 1280))(&v49.var11);
      OZFootage::getFormatName(v24, &v49);
      (*(*v24 + 1288))(&v48, v24);
      OZFootage::getDisplayWidth(v24);
      OZFootage::getDisplayHeight(v24);
      OZChannelBase::setRangeName(&v49.var11, &v49);
      PCString::~PCString(&v48);
      PCString::~PCString(&v49);
      PCString::~PCString(&v49.var11);
    }

    if (v25)
    {
      v26 = v25;
      v27 = (*(v25[2] + 288))();
      snprintf(&v49.var11, 0x40uLL, "%d", v27 & 1);
      (*(*v26 + 1280))(&v49, v26);
      (*(*v26 + 1288))(&v48, v26);
      OZChannelBase::setRangeName(&v49, &v48);
      PCString::~PCString(&v48);
      PCString::~PCString(&v49);
    }

    goto LABEL_38;
  }

  {
    if ((a4 & 0x20) == 0 || (v18 = this[154]) == 0)
    {
      PCURL::PCURL(&v49.var11, @"Layer Name");
      OZChannelBase::getNextUniqueID(v19);
      *&v49.var1 = xmmword_260850770;
      v18 = OZApplication::createSceneNode(theApp, &v49.var1);
      PCString::~PCString(&v49.var11);
      if (!v18)
      {
        return;
      }

      if (a5)
      {
        OZScene::addRootNodeBefore(this, v18, a6);
      }

      else
      {
        OZScene::addRootNodeAfter(this, v18, a6);
      }

      if (!this[154])
      {
        this[154] = v18;
        OZScene::clearSelection(this);
        (*(*v18 + 688))(v18);
        this[153] = v18;
      }

      OZGroup::setToDefaultDimensionType(v18, 0);
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Paste");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(v18 + 2) + 176))(v18 + 2, &v49.var1, 1);
        PCString::~PCString(&v49.var1);
      }
    }

    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 3);
        PCString::~PCString(&v49.var1);
      }

      OZSceneNode::removeFromParent(a2);
    }

    v29 = *v18;
    if (a5)
    {
      (*(v29 + 992))(v18, a2, 0);
    }

    else
    {
      (*(v29 + 984))(v18, a2, 0);
    }

    v30 = (*(*v18 + 640))(v18);
    OZChannelObjectRoot::recomputeTimeRangeFromChildren(v30, 1, 1, 1, 1, 0);
    OZDocument::postNotification(this[198], 32);
    goto LABEL_61;
  }

  {
    OZScene::begin_t<OZAudioLayer,false,true>(this, &v49.var1);
    {
      OZScene::addRootNode(this, a2);
    }

LABEL_38:
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v49.var5);
LABEL_61:
    if ((a4 & 0x10) != 0 && !Node)
    {
      if (PCString::empty(a3))
      {
        PCURL::PCURL(&v49.var1, @"Undo Paste");
      }

      else
      {
        PCString::PCString(&v49.var1, a3);
      }

      (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 1);
      PCString::~PCString(&v49.var1);
    }

LABEL_67:
    OZScene::addAllDependencies(this, a2);
    return;
  }

  {
    if ((a4 & 0x20) != 0)
    {
      v28 = this[154];
    }

    else
    {
      v28 = 0;
    }

    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 3);
        PCString::~PCString(&v49.var1);
      }

      OZSceneNode::removeFromParent(a2);
    }

    if (v28)
    {
      v33 = *v28;
      if (a5)
      {
        goto LABEL_99;
      }

      goto LABEL_127;
    }

    goto LABEL_129;
  }

  v31 = *(a2 + 1);
  *&v49.var1 = xmmword_2608507C0;
  if ((OZFactory::isKindOfClass(v31, &v49.var1) & 1) != 0 || (v32 = *(a2 + 1), *&v49.var1 = xmmword_26084FA30, OZFactory::isKindOfClass(v32, &v49.var1)))
  {
    if ((a4 & 0x20) != 0)
    {
      v28 = this[154];
    }

    else
    {
      v28 = 0;
    }

    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 3);
        PCString::~PCString(&v49.var1);
      }

      OZSceneNode::removeFromParent(a2);
    }

    if (v28)
    {
      v33 = *v28;
      if (a5)
      {
LABEL_99:
        (*(v33 + 992))(v28, a2, a6);
LABEL_128:
        v40 = (*(*v28 + 640))(v28);
        OZChannelObjectRoot::recomputeTimeRangeFromChildren(v40, 1, 1, 1, 1, 0);
        goto LABEL_61;
      }

LABEL_127:
      (*(v33 + 984))(v28, a2, a6);
      goto LABEL_128;
    }

    if (!a5)
    {
LABEL_129:
      OZScene::addRootNodeAfter(this, a2, a6);
      goto LABEL_61;
    }

LABEL_101:
    OZScene::addRootNodeBefore(this, a2, a6);
    goto LABEL_61;
  }

  {
    if ((a4 & 0x20) != 0)
    {
      v28 = this[154];
    }

    else
    {
      v28 = 0;
    }

    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 3);
        PCString::~PCString(&v49.var1);
      }

      OZSceneNode::removeFromParent(a2);
    }

    if (v28)
    {
      v33 = *v28;
      if (a5)
      {
        goto LABEL_99;
      }

      goto LABEL_127;
    }

    if (!a5)
    {
      goto LABEL_129;
    }

    goto LABEL_101;
  }

  v34 = 0;
  if ((a4 & 0x20) != 0)
  {
    v37 = this[154];
    if ((a4 & 0x400) != 0 && v37)
    {
      v38 = this[154];
      v34 = OZGroup::is360Group(v37);
      v37 = v38;
    }

    v47 = v37;
    if (v37)
    {
      if (!v34)
      {
        v39 = 0;
        goto LABEL_141;
      }
    }
  }

  PCURL::PCURL(&v49.var11, @"Layer Name");
  OZChannelBase::getNextUniqueID(v35);
  *&v49.var1 = xmmword_260850770;
  v36 = OZApplication::createSceneNode(theApp, &v49.var1);
  PCString::~PCString(&v49.var11);
  v47 = v36;
  if (v36)
  {
    if (v34)
    {
      OZScene::addRootNode(this, v36);
    }

    else if (a5)
    {
      OZScene::addRootNodeBefore(this, v36, a6);
    }

    else
    {
      OZScene::addRootNodeAfter(this, v36, a6);
    }

    v41 = v36;
    this[154] = v36;
    if ((a4 & 0x140) == 0)
    {
      OZScene::clearSelection(this);
      (*(*v36 + 688))(v36);
      this[153] = v36;
      OZDocument::postNotification(this[198], 32);
      v41 = v36;
    }

    OZGroup::setToDefaultDimensionType(v41, 0);
    if ((a4 & 0x10) != 0)
    {
      if (PCString::empty(a3))
      {
        PCURL::PCURL(&v49.var1, @"Undo Paste");
      }

      else
      {
        PCString::PCString(&v49.var1, a3);
      }

      v39 = v36;
      (*(*(v36 + 2) + 176))(v36 + 2, &v49.var1, 1);
      PCString::~PCString(&v49.var1);
    }

    else
    {
      v39 = v36;
    }

LABEL_141:
    if (Node)
    {
      if ((a4 & 0x10) != 0)
      {
        if (PCString::empty(a3))
        {
          PCURL::PCURL(&v49.var1, @"Undo Reorder");
        }

        else
        {
          PCString::PCString(&v49.var1, a3);
        }

        (*(*(a2 + 2) + 176))(a2 + 16, &v49.var1, 3);
        PCString::~PCString(&v49.var1);
      }

      OZSceneNode::removeFromParent(a2);
    }

    if (!v39)
    {
      v42 = this[153];
      while (v42)
      {
        v43 = *(v42 + 120);
        if (!v43)
        {
          break;
        }

        v42 = v43;
        if (v39)
        {
          goto LABEL_155;
        }
      }

      v39 = 0;
    }

LABEL_155:
    if (v39)
    {
      v44 = v39;
    }

    else
    {
      v44 = v47;
    }

    v45 = *v44;
    if (a5)
    {
      (*(v45 + 992))(v44, a2, a6);
    }

    else
    {
      (*(v45 + 984))(v44, a2, a6);
    }

    v46 = (*(*v44 + 640))(v44);
    OZChannelObjectRoot::recomputeTimeRangeFromChildren(v46, 1, 1, 1, 1, 0);
    if (Node)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }
}

uint64_t OZScene::begin_t<OZAudioLayer,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZAudioLayer,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void OZScene::OZNodeMap::setNode(os_unfair_lock_s *this, OZObjectManipulator *a2)
{
  v4 = (*(*a2 + 256))(a2);
  v5 = (*(*v4 + 56))(v4);
  v6 = v5;
  PCSpinLock::lock(this);
  OZChannelBase::updateIDGenerator(v5);
  v7 = &v6;
  std::__hash_table<std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OZObjectManipulator *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&this[2]._os_unfair_lock_opaque, &v6)[3] = a2;
  this[12]._os_unfair_lock_opaque = v6;
  *&this[14]._os_unfair_lock_opaque = a2;
  PCSpinLock::unlock(this);
}

void sub_2600FE748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZScene::registerObject(OZScene *this, OZChannelBase *a2)
{
  v13 = a2;
  v4 = (*(a2->var0 + 32))(a2);
  v5 = (*(*v4 + 56))(v4);
  v6 = OZScene::OZNodeMap::operator[](this + 1288, v5);
  v7 = v6;
  if (*(this + 1576) == 1 && (*(theApp + 80) & 1) == 0 && v6 && v6 != a2)
  {
    v9 = *(this + 195);
    for (i = *(this + 194); i != v9; ++i)
    {
      if (*i == a2)
      {
        if (i != v9)
        {
          goto LABEL_13;
        }

        break;
      }
    }

    std::vector<TXTabStop *>::push_back[abi:ne200100](this + 1552, &v13);
  }

LABEL_13:
  if (!v7)
  {
    OZScene::OZNodeMap::setNode(this + 322, v13);
    if ((*((*(v13->var0 + 27))(v13) + 56) & 0x40) != 0)
    {
      OZChannelBase::setRangeName(v13, v11);
      v12 = (*(v13->var0 + 27))(v13);
      OZChannelBase::setNameUnset(v12, 0);
    }
  }
}

uint64_t OZScene::dirtyLockDependencies(uint64_t this)
{
  if (*(this + 1578) == 1)
  {
    atomic_store(1u, (this + 1808));
  }

  return this;
}

uint64_t OZScene::sceneDidChange(OZScene *this)
{
  v1 = *(this + 151);
  memset(v25, 0, sizeof(v25));
  v26 = 1065353216;
  v22[0] = v1;
  v22[1] = v1;
  v23 = this + 1200;
  v24 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  v16 = this + 1200;
  v17 = v1;
  v18 = this + 1200;
  v19 = 0;
  while (v22[0] != v16)
  {
    if (v22[0] == v23)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v22[0] + 16);
    }

    for (i = *(v2 + 123); i != (v2 + 976); i = i[1])
    {
      (*(*(i[2] + 48) + 376))();
    }

    for (j = *(v2 + 126); j != (v2 + 1000); j = j[1])
    {
      (*(*(j[2] + 16) + 376))();
    }

    if ((*(*v2 + 1056))(v2))
    {
      for (k = (*(*v2 + 1104))(v2); k != (*(*v2 + 1112))(v2); k = *(k + 8))
      {
        (*(*(*(k + 16) + 16) + 376))();
      }
    }

    if ((*(*v2 + 960))(v2))
    {
      memset(v14, 0, sizeof(v14));
      memset(v13, 0, 24);
      v15 = 1065353216;
      OZSceneNode::end(v2, v11);
      OZSceneNode::begin(v2, v8);
      *v13 = v8[0];
      *&v13[9] = *(v8 + 9);
      v15 = v10;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v14, v9[2], 0);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v9);
      while (*v13 != v11[0])
      {
        if (*v13 != *&v13[16])
        {
          v6 = *(*v13 + 16);
          if (v6)
          {
            (*(*(v6 + 16) + 376))();
          }
        }

        OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v13);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v12);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14);
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v22);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v25);
}

void sub_2600FEC3C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v3 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

void OZScene::OZNodeMap::removeNode(os_unfair_lock_s *this, OZObjectManipulator *a2)
{
  v3 = (*(*a2 + 256))(a2);
  v5 = (*(*v3 + 56))(v3);
  PCSpinLock::lock(this);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::find<unsigned int>(&this[2]._os_unfair_lock_opaque, &v5);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OZObjectManipulator *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OZObjectManipulator *>>>::erase(&this[2]._os_unfair_lock_opaque, v4);
    this[12]._os_unfair_lock_opaque = 0;
    *&this[14]._os_unfair_lock_opaque = 0;
  }

  else if (!this)
  {
    return;
  }

  PCSpinLock::unlock(this);
}

void OZScene::unregisterObject(OZScene *this, OZObjectManipulator *a2)
{
  v4 = (*(*a2 + 256))(a2);
  v5 = (*(*v4 + 56))(v4);
  v6 = *(this + 194);
  v7 = *(this + 195);
  if (v6 != v7)
  {
    v8 = *(this + 194);
    while (*v8 != a2)
    {
      ++v8;
      ++v6;
      if (v8 == v7)
      {
        v6 = *(this + 195);
        break;
      }
    }
  }

  if (v7 == v6)
  {
    OZScene::OZNodeMap::removeNode(this + 322, a2);
    v10 = *(this + 159);
    if (v10)
    {
      v11 = this + 1272;
      do
      {
        v12 = *(v10 + 8);
        v13 = v12 >= v5;
        v14 = v12 < v5;
        if (v13)
        {
          v11 = v10;
        }

        v10 = *&v10[8 * v14];
      }

      while (v10);
      if (v11 != this + 1272 && v5 >= *(v11 + 8))
      {
        v15 = *(v11 + 5);
        std::__tree<unsigned int>::erase(v15, *v15, (v15 + 8));
        std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, v11);
        operator delete(v11);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v15, *(v15 + 8));

        JUMPOUT(0x2666E9F00);
      }
    }
  }

  else
  {
    v9 = (v7 - (v6 + 1));
    if (v7 != v6 + 1)
    {
      memmove(v6, v6 + 1, v7 - (v6 + 1));
    }

    *(this + 195) = &v9[v6];
  }
}

OZObjectManipulator ***OZScene::removeObjectFromLoadObjectsWithDuplicateIDs(OZObjectManipulator ***this, OZObjectManipulator *a2)
{
  v2 = this;
  v3 = this[194];
  v4 = this[195];
  if (v3 != v4)
  {
    v5 = this[194];
    while (*v5 != a2)
    {
      ++v5;
      ++v3;
      if (v5 == v4)
      {
        v3 = this[195];
        break;
      }
    }
  }

  if (v4 != v3)
  {
    v6 = (v4 - (v3 + 1));
    if (v4 != v3 + 1)
    {
      this = memmove(v3, v3 + 1, v4 - (v3 + 1));
    }

    v2[195] = &v6[v3];
  }

  return this;
}

uint64_t OZScene::addNodeDependency(uint64_t this, unsigned int a2, unsigned int a3)
{
  v11 = a3;
  v12 = a2;
  if ((*(this + 1592) & 0x10) == 0)
  {
    v3 = this;
    v4 = *(this + 1272);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = this + 1272;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 == this + 1272 || *(v5 + 32) > a2)
    {
LABEL_10:
      operator new();
    }

    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*(v5 + 40), &v11);
    v9 = OZScene::OZNodeMap::operator[](v3 + 1288, v12);
    this = OZScene::OZNodeMap::operator[](v3 + 1288, v11);
    if (v9)
    {
      v10 = this;
      if (this)
      {
        if (this)
        {
          if (this)
          {
            if (*(v3 + 1578) == 1)
            {
              atomic_store(1u, (v3 + 1808));
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t OZScene::addAllDependencies(uint64_t this, OZChannelFolder *a2, unsigned int a3)
{
  if ((*(this + 1592) & 0x10) == 0)
  {
    v3 = *(a2 + 14);
    if (v3)
    {
      v4 = *v3;
      if (*v3 != v3[1])
      {
        v6 = this;
        do
        {
          v7 = *v4;
          v8 = *(*v4 + 56);
          if ((v8 & 0x1000) != 0)
          {
            if ((v8 & 0x2000) != 0)
            {
              OZScene::addNodeDependency(v6, *(v16 + 6), a3);
              v15 = *(v16 + 6);
              v14 = v6;
              v13 = v16;
            }

            else
            {
              v14 = v6;
              v15 = a3;
            }

            this = OZScene::addAllDependencies(v14, v13, v15);
            goto LABEL_14;
          }

          this = (*(*v7 + 112))(v7);
          if (this)
          {
            v9 = *(*v4 + 8);
            v23 = xmmword_2608508D0;
            isKindOfClass = OZFactory::isKindOfClass(v9, &v23);
            v11 = *v4;
            if (isKindOfClass)
            {
              if (v11)
              {
              }

              else
              {
                v12 = 0;
              }

              if (!OZChanObjectManipRef::getObjectID(v12) || !OZChanObjectManipRef::getObject(v12))
              {
                goto LABEL_29;
              }
            }

            else
            {
              v17 = v11[1];
              v23 = xmmword_260850EA0;
              v18 = OZFactory::isKindOfClass(v17, &v23);
              v19 = *v4;
              if (!v18)
              {
                v20 = v19[1];
                v23 = xmmword_260850EB0;
                this = OZFactory::isKindOfClass(v20, &v23);
                if (!this)
                {
                  goto LABEL_14;
                }

                v19 = *v4;
              }

              if (v19)
              {
              }

              else
              {
                v12 = 0;
              }

              if (!OZChanObjectManipRef::getObjectID(v12))
              {
LABEL_29:
                this = OZChanObjectManipRef::getObject(v12);
                if (this)
                {
                  this = (*(v12->var0 + 108))(v12, 0, 0);
                }

                goto LABEL_14;
              }
            }

            Object = OZChanObjectManipRef::getObject(v12);
            if (!(*(v12->var0 + 109))(v12, Object))
            {
              goto LABEL_29;
            }

            ObjectID = OZChanObjectManipRef::getObjectID(v12);
            this = OZScene::addNodeDependency(v6, ObjectID, a3);
          }

LABEL_14:
          v4 += 8;
        }

        while (v4 != v3[1]);
      }
    }
  }

  return this;
}

void OZScene::removeAllDependencies(OZScene *this, unsigned int a2)
{
  v16 = a2;
  v2 = (this + 1264);
  v3 = (this + 1272);
  v4 = *(this + 159);
  if (v4)
  {
    v5 = (this + 1272);
    do
    {
      v6 = *(v4 + 8);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *&v4[8 * v8];
    }

    while (v4);
    if (v5 != v3 && *(v5 + 8) <= a2)
    {
      v9 = v5[5];
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, v5);
      operator delete(v5);
      if (v9)
      {
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v9, *(v9 + 8));
        MEMORY[0x2666E9F00](v9, 0x1020C4062D53EE8);
      }
    }
  }

  v10 = *v2;
  if (*v2 != v3)
  {
    do
    {
      v11 = v10[5];
      std::__tree<unsigned int>::__erase_unique<unsigned int>(v11, &v16);
      v12 = v10[1];
      if (*(v11 + 16))
      {
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
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }
      }

      else
      {
        v15 = v10;
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
            v13 = v15[2];
            v14 = *v13 == v15;
            v15 = v13;
          }

          while (!v14);
        }

        std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(v2, v10);
        operator delete(v10);
        if (v11)
        {
          std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v11, *(v11 + 8));
          MEMORY[0x2666E9F00](v11, 0x1020C4062D53EE8);
        }
      }

      v10 = v13;
    }

    while (v13 != v3);
  }
}

OZScene *OZScene::removeAllDependencies(OZScene *this, OZChannelFolder *a2, unsigned int a3)
{
  v3 = *(a2 + 14);
  if (v3)
  {
    v4 = *v3;
    if (*v3 != v3[1])
    {
      v6 = this;
      do
      {
        v7 = *v4;
        v8 = *(*v4 + 56);
        if ((v8 & 0x1000) != 0)
        {
          if ((v8 & 0x2000) != 0)
          {
            OZScene::removeAllDependencies(v6, *(v16 + 6));
            v15 = *(v16 + 6);
            v14 = v6;
            v13 = v16;
          }

          else
          {
            v14 = v6;
            v15 = a3;
          }

          this = OZScene::removeAllDependencies(v14, v13, v15);
          goto LABEL_13;
        }

        this = (*(*v7 + 112))(v7);
        if (this)
        {
          v9 = *(*v4 + 8);
          v20 = xmmword_2608508D0;
          isKindOfClass = OZFactory::isKindOfClass(v9, &v20);
          v11 = *v4;
          if (isKindOfClass)
          {
            if (v11)
            {
              goto LABEL_18;
            }

            goto LABEL_19;
          }

          v17 = v11[1];
          v20 = xmmword_260850EC0;
          this = OZFactory::isKindOfClass(v17, &v20);
          if (this)
          {
            v11 = *v4;
            if (*v4)
            {
LABEL_18:
LABEL_20:
              this = OZChanObjectManipRef::getObjectID(v18);
              if (this)
              {
                ObjectID = OZChanObjectManipRef::getObjectID(v18);
                this = OZScene::removeNodeDependency(v6, ObjectID, a3);
              }

              goto LABEL_13;
            }

LABEL_19:
            v18 = 0;
            goto LABEL_20;
          }
        }

LABEL_13:
        v4 += 8;
      }

      while (v4 != v3[1]);
    }
  }

  return this;
}

const void *OZScene::removeNodeDependency(OZScene *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 159);
  if (v6)
  {
    v7 = this + 1272;
    do
    {
      v8 = *(v6 + 8);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[8 * v10];
    }

    while (v6);
    if (v7 != this + 1272 && *(v7 + 8) <= a2)
    {
      v11 = *(v7 + 5);
      v12 = *(v11 + 8);
      if (v12)
      {
        v13 = v11 + 8;
        do
        {
          v14 = *(v12 + 28);
          v9 = v14 >= a3;
          v15 = v14 < a3;
          if (v9)
          {
            v13 = v12;
          }

          v12 = *(v12 + 8 * v15);
        }

        while (v12);
        if (v13 != v11 + 8 && *(v13 + 28) <= a3)
        {
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(*(v7 + 5), v13);
          operator delete(v13);
        }
      }

      if (!*(v11 + 16))
      {
        std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, v7);
        operator delete(v7);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v11, *(v11 + 8));
        MEMORY[0x2666E9F00](v11, 0x1020C4062D53EE8);
      }
    }
  }

  v16 = OZScene::OZNodeMap::operator[](this + 1288, a2);
  result = OZScene::OZNodeMap::operator[](this + 1288, a3);
  if (v16)
  {
    v18 = result;
    if (result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      if (result)
      {
        if (*(this + 1578) == 1)
        {
          atomic_store(1u, this + 1808);
        }
      }
    }
  }

  return result;
}

uint64_t OZScene::recalcDependencies(OZScene *this)
{
  v2 = *(this + 1578);
  *(this + 1578) = 0;
  if (*(this + 160))
  {
    v3 = (this + 1264);
    do
    {
      v4 = *v3;
      v5 = (*v3)[5];
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 158, *v3);
      operator delete(v4);
      if (v5)
      {
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v5, *(v5 + 8));
        MEMORY[0x2666E9F00](v5, 0x1020C4062D53EE8);
      }
    }

    while (*(this + 160));
  }

  v6 = this + 1200;
  v7 = *(this + 151);
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v12 = v7;
  v13 = v7;
  v14 = this + 1200;
  v15 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  while (v7 != v6)
  {
    if (v7 == v14)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 16);
    }

    OZScene::addAllDependencies(this, v8);
    v7 = *(v12 + 8);
    v12 = v7;
    v6 = this + 1200;
  }

  *(this + 1578) = v2;
  if (atomic_exchange(this + 1808, 0))
  {
    OZScene::computeLockDependencies(this);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v10);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
}

void sub_2600FFB8C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZScene::getDependantNodes(OZScene *this, unsigned int a2)
{
  v2 = *(this + 159);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 1272;
  do
  {
    v4 = *(v2 + 8);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 != this + 1272 && *(v3 + 8) <= a2)
  {
    return *(v3 + 5);
  }

  else
  {
    return 0;
  }
}

const void *OZScene::getCloneNodes(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  result = OZScene::OZNodeMap::operator[]((a1 + 161), a2);
  if (result)
  {
    if (result)
    {
      v6 = result;
      OZScene::begin_t<OZCloneGenerator,false,true>(a1, v29);
      v7 = a1[151];
      memset(v27, 0, sizeof(v27));
      v28 = 1065353216;
      v23 = a1 + 150;
      v24 = v7;
      v25 = a1 + 150;
      v26 = 0;
      v8 = (a3 + 8);
      while (v29[0] != v23)
      {
        if (v29[0] != v29[2])
        {
          v9 = *(v29[0] + 16);
          if (v9)
          {
            if (v10)
            {
              v11 = v10;
              if (OZCloneGenerator::getSourceNode(v10) == v6)
              {
                v12 = *(v11 + 20);
                v13 = *v8;
                if (!*v8)
                {
                  goto LABEL_17;
                }

                v14 = a3 + 8;
                do
                {
                  v15 = *(v13 + 28);
                  v16 = v15 >= v12;
                  v17 = v15 < v12;
                  if (v16)
                  {
                    v14 = v13;
                  }

                  v13 = *(v13 + 8 * v17);
                }

                while (v13);
                if (v14 == v8 || v12 < *(v14 + 28))
                {
LABEL_17:
                  v22 = *(v11 + 20);
                  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a3, &v22);
                  OZScene::getCloneNodes(a1, *(v11 + 20), a3);
                }
              }
            }
          }
        }

        OZObject::iterator_t<OZCloneGenerator,false,true,OZObject::defaultValidator>::operator++(v29);
      }

      if (v18)
      {
        v19 = v18;
        v20 = (*(*v18 + 1024))(v18);
        v21 = (*(*v19 + 1032))(v19);
        while (v20 != v21)
        {
          OZScene::getCloneNodes(a1, *(*(v20 + 16) + 80), a3);
          v20 = *(v20 + 8);
        }
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27);
      return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v30);
    }
  }

  return result;
}

void sub_2600FFE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *OZScene::begin_t<OZCloneGenerator,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZCloneGenerator,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZCloneGenerator,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZCloneGenerator,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZScene::getReferencedNodes(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 1264);
  v4 = (result + 1272);
  if (v3 != (result + 1272))
  {
    v7 = result;
    v8 = (a3 + 8);
    do
    {
      v9 = v3[5];
      v12 = *v9;
      v10 = v9 + 1;
      v11 = v12;
      if (v12 != v10)
      {
        v13 = *(v3 + 8);
        while (1)
        {
          v24 = v13;
          if (*(v11 + 7) == a2)
          {
            v14 = *v8;
            if (!*v8)
            {
              break;
            }

            v15 = v8;
            do
            {
              v16 = *(v14 + 28);
              v17 = v16 >= v13;
              v18 = v16 < v13;
              if (v17)
              {
                v15 = v14;
              }

              v14 = *(v14 + 8 * v18);
            }

            while (v14);
            if (v15 == v8 || v13 < *(v15 + 7))
            {
              break;
            }
          }

          v19 = v11[1];
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
              v20 = v11[2];
              v21 = *v20 == v11;
              v11 = v20;
            }

            while (!v21);
          }

          v11 = v20;
          if (v20 == v10)
          {
            goto LABEL_22;
          }
        }

        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a3, &v24);
        result = OZScene::getReferencedNodes(v7, v24, a3);
      }

LABEL_22:
      v22 = v3[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v3[2];
          v21 = *v23 == v3;
          v3 = v23;
        }

        while (!v21);
      }

      v3 = v23;
    }

    while (v23 != v4);
  }

  return result;
}

uint64_t *OZScene::getImmediatelyReferencedNodes(uint64_t *result, int a2, uint64_t a3)
{
  v3 = result[158];
  v4 = result + 159;
  if (v3 != (result + 159))
  {
    do
    {
      v7 = *(v3 + 5);
      v10 = *v7;
      v8 = v7 + 1;
      v9 = v10;
      if (v10 != v8)
      {
        while (*(v9 + 7) != a2)
        {
          v11 = v9[1];
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = v9[2];
              v13 = *v12 == v9;
              v9 = v12;
            }

            while (!v13);
          }

          v9 = v12;
          if (v12 == v8)
          {
            goto LABEL_12;
          }
        }

        result = std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a3, v3 + 8);
      }

LABEL_12:
      v14 = *(v3 + 1);
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
          v15 = *(v3 + 2);
          v13 = *v15 == v3;
          v3 = v15;
        }

        while (!v13);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  return result;
}

void *OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator*(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  v1 = *(*a1 + 16);
  if (!v1)
  {
    return 0;
  }

  else
  {
  }
}

void *OZObject::reverse_iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (*a1 == v3)
  {
LABEL_6:
    *a1 = v2;
  }

  else
  {
    while (1)
    {
      v4 = *v4;
      *a1 = v4;
      if (v4 == v2)
      {
        break;
      }

      v5 = v4[2];
      if (v5)
      {
        {
          break;
        }
      }

      if (v4 == v3)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

float64x2_t OZScene::getBounds(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 344);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  result = vcvtq_f64_s64(v3);
  __asm { FMOV            V1.2D, #-0.5 }

  *a2 = vmulq_f64(result, _Q1);
  a2[1] = result;
  return result;
}

float64x2_t non-virtual thunk toOZScene::getBounds(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 336);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  result = vcvtq_f64_s64(v3);
  __asm { FMOV            V1.2D, #-0.5 }

  *a2 = vmulq_f64(result, _Q1);
  a2[1] = result;
  return result;
}

void OZScene::getHashForState(OZScene *this, PCSerializerWriteStream *a2, const OZRenderParams *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v21 = *MEMORY[0x277D85DE8];
  {
    Hash = OZRenderParams::getHash(v5);
    v10 = Hash[1];
    v18[0] = *Hash;
    v18[1] = v10;
    v11 = Hash[3];
    v19 = Hash[2];
    v20 = v11;
    v17[0] = v18[0];
    v17[1] = v10;
    v17[2] = v19;
    v17[3] = v11;
    StaticHash = OZScene::getStaticHash(v8, v7);
    PCHash128::operator+=(v17, StaticHash);
    PCWorkingColorVector::PCWorkingColorVector(v16);
    PCMutex::lock((v8 + 1616));
    v13 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(v8 + 1688, v18);
    if (v8 + 1696 == v13)
    {
      PCMutex::unlock((v8 + 1616));
    }

    else
    {
      v15 = *(v13 + 48);
      v14 = *(v13 + 56);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PCMutex::unlock((v8 + 1616));
      PCMutex::lock(v15);
      PCMutex::unlock(v15);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    operator new();
  }

  __cxa_bad_cast();
}

void sub_260100854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v34 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a28);
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  _Unwind_Resume(a1);
}

os_unfair_lock_s *OZScene::getStaticHash(OZScene *this, PCSerializerWriteStream *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v23[520] = *MEMORY[0x277D85DE8];
  v6 = v2 + 428;
  v22 = v2 + 428;
  PCSpinLock::lock(v2 + 428);
  if (!(v5[400]._os_unfair_lock_opaque | v5[399]._os_unfair_lock_opaque | v5[401]._os_unfair_lock_opaque | v5[402]._os_unfair_lock_opaque))
  {
    PCWorkingColorVector::PCWorkingColorVector(&v21);
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7;
    OZScene::begin_t<OZElement,false,false>(v5, v19);
    v9 = *&v5[302]._os_unfair_lock_opaque;
    memset(v17, 0, sizeof(v17));
    v18 = 1065353216;
    v13 = v5 + 300;
    v14 = v9;
    v15 = v5 + 300;
    v16 = 0;
    (*(v8->n128_u64[0] + 40))(v8);
    while (v19[0] != v13)
    {
      if (v19[0] != v19[2])
      {
        v10 = *(v19[0] + 16);
        if (v10)
        {
          {
            PCHashWriteStream::PCHashWriteStream(v23);
            v12[0] = v12;
            v12[1] = v12;
            v12[2] = 0;
            OZObjectManipulator::getStaticHash();
          }
        }
      }

      OZObject::iterator_t<OZElement,false,false,OZObject::defaultValidator>::operator++(v19);
    }

    OZScene::getStaticLightHash(v23, v5);
    PCHash128::operator+=(&v21, v23);
    OZScene::getStaticCameraHash(v23, v5);
    PCHash128::operator+=(&v21, v23);
    OZScene::getStaticProjectNodeHash(v23, v5);
    PCHash128::operator+=(&v21, v23);
    PCHashWriteStream::setHash(v8, &v21);
    *&v5[399]._os_unfair_lock_opaque = *PCHashWriteStream::getHash(v8)->i8;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v17);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v20);
  }

  PCSpinLock::unlock(v6);
  return v5 + 399;
}

uint64_t OZScene::hitCheckDepthOrdered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::resize(&v42, (a7[1] - *a7) >> 3);
  v13 = *a7;
  if (((a7[1] - *a7) >> 3) >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = v42;
    do
    {
      v17 = (*(**(v13 + 8 * v15) + 936))(*(v13 + 8 * v15), a2, a3, a4, &v16[v14 + 8], a6);
      v16 = v42;
      *&v42[v14] = v17;
      ++v15;
      v13 = *a7;
      v14 += 32;
    }

    while (v15 < ((a7[1] - *a7) >> 3));
  }

  *&v41[40] = 0x3FF0000000000000;
  *v41 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  v35 = 1.0;
  v36 = 0u;
  v37 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(&v41[8], 0, 32);
  (*(*a4 + 24))(v34, a4);
  for (i = 0; i != 128; i += 32)
  {
    v19 = (&v35 + i);
    v20 = *&v34[i + 16];
    *v19 = *&v34[i];
    v19[1] = v20;
  }

  if ((*(*a4 + 632))(a4) == 1 && fabs((*(*a4 + 504))(a4)) >= 0.0000001)
  {
    v21 = (*(*a4 + 320))(a4);
    if (v21 != 0.0)
    {
      v40 = vsubq_f64(v40, vmulq_n_f64(*&v41[16], v21));
      *v41 = vsubq_f64(*v41, vmulq_n_f64(*&v41[32], v21));
    }
  }

  v22 = v42;
  v23 = v43;
  if (((v43 - v42) >> 5) >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v27 = 3.40282347e38;
    do
    {
      if (*&v22[v24])
      {
        *v34 = *&v22[v24 + 8];
        *&v34[16] = *&v22[v24 + 24];
        PCMatrix44Tmpl<double>::transform<double>(&v35, v34, v34);
        v28 = vmulq_f64(*&v34[8], *&v34[8]);
        v29 = sqrt(*v34 * *v34 + v28.f64[0] + v28.f64[1]);
        if (v29 < v27)
        {
          v27 = v29;
          v26 = v25;
        }

        v22 = v42;
        v23 = v43;
      }

      ++v25;
      v24 += 32;
    }

    while (v25 < ((v23 - v22) >> 5));
    if (v26 != -1)
    {
      v30 = &v22[32 * v26];
      v31 = *(v30 + 8);
      *(a5 + 16) = *(v30 + 3);
      *a5 = v31;
      v32 = *v30;
      if (!v22)
      {
        return v32;
      }

      goto LABEL_21;
    }
  }

  v32 = 0;
  if (v22)
  {
LABEL_21:
    v43 = v22;
    operator delete(v22);
  }

  return v32;
}

void sub_260100F78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!*(v1 - 120))
  {
    JUMPOUT(0x260100F50);
  }

  JUMPOUT(0x260100F48);
}

void sub_260100F90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<std::pair<OZSceneNode *,PCVector3<double>>>::__append(a1, a2 - v2);
  }
}

uint64_t OZScene::OZNodeMap::operator[](uint64_t a1, unsigned int a2)
{
  v7 = a2;
  PCSpinLock::lock(a1);
  if (*(a1 + 48) == a2)
  {
    v4 = *(a1 + 56);
  }

  else
  {
    v5 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::find<unsigned int>((a1 + 8), &v7);
    if (v5)
    {
      v4 = v5[3];
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 48) = v7;
    *(a1 + 56) = v4;
  }

  PCSpinLock::unlock(a1);
  return v4;
}

uint64_t OZScene::getAllDropZones@<X0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  OZScene::begin_t<OZImageElement,false,true>(this, v15);
  v4 = *(this + 151);
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v9 = this + 1200;
  v10 = v4;
  v11 = this + 1200;
  v12 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  while (v15[0] != v9)
  {
    if (v15[0] == v15[2] || (v5 = *(v15[0] + 16)) == 0)
    {
      v6 = 0;
    }

    else
    {
    }

    if (OZImageElement::isDropZone(v6))
    {
      v8 = *(v6 + 20);
      std::vector<int>::push_back[abi:ne200100](a2, &v8);
    }

    OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(v15);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v13);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
}

void sub_2601011AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v17 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZScene::getAllDropZonesMap@<X0>(OZScene *this@<X0>, void *a2@<X8>)
{
  OZScene::begin_t<OZImageElement,false,true>(this, v23);
  v4 = *(this + 151);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  v17 = this + 1200;
  v18 = v4;
  v19 = this + 1200;
  v20 = 0;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v16 = 0;
  while (*v23 != v17)
  {
    if (*v23 == *&v23[16] || (v5 = *(*v23 + 16)) == 0)
    {
      v6 = 0;
    }

    else
    {
    }

    if (OZImageElement::isDropZone(v6))
    {
      v7 = *(v6 + 20);
      *&v13[0] = &v16;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a2, &v16) + 8) = v7;
      if (OZImageElement::getDropZoneInputID(v6))
      {
        OZScene::begin_t<OZImageElement,false,true>(this, v13);
        *v23 = v13[0];
        *&v23[9] = *(v13 + 9);
        v25 = v15;
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,void *> *>>(v24, v14[2], 0);
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14);
        while (*v23 != v17)
        {
          if (*v23 == *&v23[16] || (v8 = *(*v23 + 16)) == 0)
          {
            v9 = 0;
          }

          else
          {
          }

          if (OZImageElement::isDropZone(v9))
          {
            v10 = *(v9 + 20);
            DropZoneInputID = OZImageElement::getDropZoneInputID(v9);
            *&v13[0] = &DropZoneInputID;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a2, &DropZoneInputID) + 8) = v10;
          }

          OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(v23);
        }

        break;
      }

      ++v16;
    }

    OZObject::iterator_t<OZImageElement,false,true,OZObject::defaultValidator>::operator++(v23);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v21);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
}

void sub_260101474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a14);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v33, *(v33 + 8));
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v34 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a33);
  _Unwind_Resume(a1);
}

uint64_t *OZObject::iterator_t<OZElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZScene::reloadResources(OZScene *this, PGContext *a2)
{
  OZScene::begin_t<OZElement,false,true>(this, v8);
  if (v8[0] != v8[2])
  {
    v3 = *(v8[0] + 16);
    if (v3)
    {
      {
        (*(*i + 1456))(i, a2);
        v5 = OZObject::iterator_t<OZElement,false,true,OZObject::defaultValidator>::operator++(v8);
        if (*v5 == v5[2])
        {
          break;
        }

        v6 = *(*v5 + 16);
        if (!v6)
        {
          break;
        }
      }
    }
  }

  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v9);
}

void sub_2601016B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t OZScene::markFactoriesForSerialization(OZScene *this, PCSerializerWriteStream *a2)
{
  v4 = *(this + 151);
  v5 = this + 1200;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v10 = v4;
  v11 = v4;
  v12 = this + 1200;
  v13 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  v7 = this + 1200;
  while (v4 != v5)
  {
    (*(**(v4 + 16) + 456))(*(v4 + 16), a2, 0);
    v4 = *(v10 + 8);
    v10 = v4;
    v5 = v7;
  }

  OZPublishSettings::markFactoriesForSerialization((this + 720), a2, 0);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v8);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14);
}

void sub_2601017B4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t OZScene::writeHeader(OZScene *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZSceneScope);
  (*(*a2 + 16))(a2, 60);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZScene::writeBody(OZScene *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  v60 = 0uLL;
  v61 = 0;
  v8 = this + 336;
  OZSceneSettings::getFrameDuration((this + 336), &v60);
  PCSerializerWriteStream::pushScope(a2, &OZSceneScope);
  Size = PVPerfStats::FrameStats::GetSize((this + 1816));
  v10 = PCGetDefaultRenderModel();
  if (Size != PVPerfStats::FrameStats::GetSize(v10))
  {
    v11 = PVPerfStats::FrameStats::GetSize((this + 1816));
    (*(*a2 + 16))(a2, 10);
    (*(*a2 + 48))(a2, v11);
    (*(*a2 + 24))(a2);
  }

  (*(*v8 + 16))(v8, a2, 0);
  (*(*v8 + 24))(v8, a2, 0, 1, a5);
  v12 = (*(*a2 + 24))(a2);
  v13 = OZPreferenceManager::Instance(v12);
  if (TXParagraphStyleFolder_Factory::version(v13))
  {
    {
      OZExportSettings::OZExportSettings(&OZScene::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::defaultExportSettings);
      __cxa_atexit(OZExportSettings::~OZExportSettings, &OZScene::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::defaultExportSettings, &dword_25F8F0000);
    }

    v14 = this + 640;
    if (OZExportSettings::operator!=(this + 640, &OZScene::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::defaultExportSettings))
    {
      (*(*v14 + 16))(this + 640, a2, 0);
      (*(*v14 + 24))(this + 640, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
    }
  }

  (*(*(this + 90) + 16))(this + 720, a2, 0);
  (*(*(this + 90) + 24))(this + 720, a2, 0, 1, a5);
  (*(*a2 + 24))(a2);
  v56 = *(this + 149);
  v55 = *(this + 1176);
  (*(*a2 + 16))(a2, 1);
  (*(*a2 + 112))(a2, &v55);
  (*(*a2 + 24))(a2);
  v15 = *(this + 153);
  if (v15)
  {
    v16 = *(v15 + 80);
    (*(*a2 + 16))(a2, 2);
    (*(*a2 + 56))(a2, v16);
    (*(*a2 + 24))(a2);
  }

  v17 = *(this + 154);
  if (v17)
  {
    v18 = *(v17 + 80);
    (*(*a2 + 16))(a2, 3);
    (*(*a2 + 56))(a2, v18);
    (*(*a2 + 24))(a2);
  }

  (*(*a2 + 16))(a2, 4);
  v55 = *(this + 1352);
  v56 = *(this + 171);
  (*(*a2 + 208))(a2, 1, &v55);
  v55 = *(this + 86);
  v56 = *(this + 174);
  (*(*a2 + 208))(a2, 2, &v55);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 5);
  v55 = *(this + 1400);
  v56 = *(this + 177);
  (*(*a2 + 208))(a2, 1, &v55);
  v55 = *(this + 89);
  v56 = *(this + 180);
  (*(*a2 + 208))(a2, 2, &v55);
  (*(*a2 + 24))(a2);
  v19 = *(this + 398);
  (*(*a2 + 16))(a2, 9);
  (*(*a2 + 56))(a2, v19);
  (*(*a2 + 24))(a2);
  v20 = *(this + 142);
  if (v20)
  {
    (*(*v20 + 16))(*(this + 142), a2, 0);
    (*(*v20 + 24))(v20, a2, 0, 1, 1);
    (*(*a2 + 24))(a2);
  }

  (*(*(this + 189) + 16))(this + 1512, a2, 0);
  (*(*(this + 189) + 24))(this + 1512, a2, 0, 1, 1);
  (*(*a2 + 24))(a2);
  v21 = *(this + 151);
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  *&v55 = v21;
  *(&v55 + 1) = v21;
  v56 = this + 1200;
  v57 = 0;
  memset(v53, 0, sizeof(v53));
  v54 = 1065353216;
  v49 = this + 1200;
  v50 = v21;
  v51 = this + 1200;
  v52 = 0;
  if (v21 != (this + 1200))
  {
    do
    {
      v22 = *(v21 + 16);
      {
        v24 = *(v22 + 48);
        v23 = v22 + 48;
        (*(v24 + 16))(v23, a2, 0);
        (*(*v23 + 24))(v23, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }

      v21 = *(v55 + 8);
      *&v55 = v21;
    }

    while (v21 != v49);
  }

  OZScene::begin_t<OZAudioLayer,false,false>(this, v47);
  v25 = 0;
  v26 = *(this + 151);
  memset(v45, 0, sizeof(v45));
  v46 = 1065353216;
  v41 = this + 1200;
  v42 = v26;
  v43 = this + 1200;
  v44 = 0;
  while (v47[0] != v41)
  {
    if (v47[0] == v47[2] || (v27 = *(v47[0] + 16)) == 0)
    {
      v28 = 0;
      if (v25)
      {
        goto LABEL_27;
      }

LABEL_26:
      (*(*a2 + 224))(a2);
      goto LABEL_27;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (!OZChannelBase::testFlag((v28 + 56), 8))
    {
      v30 = *(v28 + 6);
      v29 = v28 + 48;
      (*(v30 + 16))(v29, a2, 0);
      (*(*v29 + 24))(v29, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
    }

    v25 = 1;
    OZObject::iterator_t<OZAudioLayer,false,false,OZObject::defaultValidator>::operator++(v47);
  }

  OZScene::begin_t<OZFootageLayer,false,false>(this, v39);
  v31 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 1065353216;
  while (v39[0] != (this + 1200))
  {
    if (v39[0] == v39[2] || (v32 = *(v39[0] + 16)) == 0)
    {
      v33 = 0;
      if (v31)
      {
        goto LABEL_38;
      }

LABEL_37:
      (*(*a2 + 224))(a2);
      goto LABEL_38;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (!OZChannelBase::testFlag((v33 + 56), 8))
    {
      v35 = *(v33 + 6);
      v34 = v33 + 48;
      (*(v35 + 16))(v34, a2, 0);
      (*(*v34 + 24))(v34, a2, 0, 1, a5);
      (*(*a2 + 24))(a2);
    }

    v31 = 1;
    OZObject::iterator_t<OZFootageLayer,false,false,OZObject::defaultValidator>::operator++(v39);
  }

  PCSerializerWriteStream::popScope(a2);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v37);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v40);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v45);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v48);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v53);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v58);
}

void *OZScene::begin_t<OZAudioLayer,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZAudioLayer,false,false,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZAudioLayer,false,false,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZAudioLayer,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

void *OZObject::iterator_t<OZFootageLayer,false,false,OZObject::defaultValidator>::operator++(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 8);
  for (*a1 = v3; v3 != v2; *a1 = v3)
  {
    v4 = *(v3 + 16);
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  return a1;
}

uint64_t OZScene::parseBegin(OZScene *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZSceneScope);
  *(this + 193) = 0;
  *(this + 1576) = 1;
  *(this + 443) = 0;
  OZScene::begin_t<OZProjectNode,false,false>(this, v6);
  if (v6[0] != v6[2])
  {
    v3 = *(v6[0] + 16);
    if (v3)
    {
      {
        OZScene::removeRootNode(this, v4);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }
      }
    }
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v7);
  return 1;
}

void sub_260102968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void OZScene::renumberObjectsWithDuplicateIDs(OZScene *this, const void ****a2)
{
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      var3 = v4->var3;
      v6 = OZScene::OZNodeMap::operator[](this + 1288, var3);
      ObjectManipulator = OZChannelBase::getObjectManipulator(v5);
      if (v6 != ObjectManipulator)
      {
        NextUniqueID = OZChannelBase::getNextUniqueID(ObjectManipulator);
        OZChannelBase::setID(v5, NextUniqueID);
        v15[0] = 0;
        v15[1] = 0;
        v14 = v15;
        p_var3 = &var3;
        *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v14, &var3) + 8) = NextUniqueID;
        v9 = OZChannelBase::getObjectManipulator(v5);
        (*(*v9 + 360))(v9, &v14);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v14, v15[0]);
      }
    }

    v10 = a2[14];
    if (v10)
    {
      v12 = *v10;
      v11 = v10[1];
      if (*v10 != v11)
      {
        do
        {
          if ((*(*v12 + 57) & 0x10) != 0)
          {
            OZScene::renumberObjectsWithDuplicateIDs(this, v13);
            v11 = v10[1];
          }

          ++v12;
        }

        while (v12 != v11);
      }
    }
  }
}

uint64_t OZScene::parseEnd(OZScene *this, const OZChannelFolder *a2)
{
  OZChannelBase::updateIDGenerator((this + 920), a2);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(&v20, *(this + 194), *(this + 195), (*(this + 195) - *(this + 194)) >> 3);
  *(this + 195) = *(this + 194);
  v3 = v20;
  for (i = v21; v3 != i; ++v3)
  {
    v5 = *v3;
    v6 = (*((*v3)->var0 + 27))(*v3);
    OZScene::renumberObjectsWithDuplicateIDs(this, v6);
    if (v7)
    {
      OZScene::registerNode(this, v7);
    }

    else
    {
      OZScene::registerObject(this, v5);
    }
  }

  *(this + 153) = OZScene::getNode(this, *(this + 386));
  Node = OZScene::getNode(this, *(this + 387));
  if (Node)
  {
  }

  *(this + 154) = Node;
  *(this + 1576) = 0;
  OZScene::begin_t<OZProjectNode,false,false>(this, v18);
  {
    PCURL::PCURL(&v17, @"Project Node Name");
    NextUniqueID = OZChannelBase::getNextUniqueID(v10);
    v12 = OZProjectNode::create(&v17, NextUniqueID);
    PCString::~PCString(&v17);
    OZScene::addRootNode(this, v12);
  }

  for (j = *(this + 151); j != (this + 1200); j = *(j + 8))
  {
    (*(**(j + 16) + 848))(*(j + 16));
  }

  OZPublishSettings::didFinishLoadingIntoScene((this + 720));
  OZScene::has3DObjects(this, 1);
  OZScene::recalcDependencies(this);
  ComputedWorkingGamut = OZScene::getComputedWorkingGamut(this);
  v15 = OZSceneSettings::dynamicRangeTrackingEnabled((this + 336));
  OZScene::updateColorChannelsForWorkingGamut(this, ComputedWorkingGamut, v15, this + 115);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return 1;
}

void sub_260102E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a15);
  v17 = *(v15 - 72);
  if (v17)
  {
    *(v15 - 64) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t OZScene::has3DObjects(OZScene *this, int a2)
{
  if (a2)
  {
    OZScene::begin_t<OZCamera,false,true>(this, v22);
    v3 = *(this + 151);
    memset(v20, 0, sizeof(v20));
    v21 = 1065353216;
    v16 = this + 1200;
    v17 = v3;
    v18 = this + 1200;
    v19 = 0;
    while (1)
    {
      v4 = v22[0];
      v5 = v16;
      if (v22[0] == v16)
      {
        break;
      }

      if (v22[0] != v22[2])
      {
        v6 = *(v22[0] + 16);
        if (v6)
        {
          {
            break;
          }
        }
      }

      OZObject::iterator_t<OZCamera,false,true,OZObject::defaultValidator>::operator++(v22);
    }

    OZScene::begin_t<OZLight,false,true>(this, v14);
    memset(v12, 0, sizeof(v12));
    v13 = 1065353216;
    while (1)
    {
      v7 = v14[0];
      if (v14[0] == (this + 1200))
      {
        break;
      }

      if (v14[0] != v14[2])
      {
        v8 = *(v14[0] + 16);
        if (v8)
        {
          {
            break;
          }
        }
      }

      OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::operator++(v14);
    }

    v10 = v4 != v5 || v7 != this + 1200;
    *(this + 1768) = v10;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v12);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v15);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  }

  return *(this + 1768);
}

void sub_260103088(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 - 120);
  _Unwind_Resume(a1);
}

char *OZScene::updateColorChannelsForWorkingGamut(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v7 = result;
    if (result)
    {
      v8 = result;
      if (a2)
      {
        v9 = a3;
      }

      else
      {
        v9 = 1;
      }

      OZChannel::setSliderMin((result + 136), 0.0);
      if (v9)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 4.0;
      }

      OZChannel::setSliderMax((v8 + 136), v10);
      OZChannel::setSliderMin((v8 + 288), 0.0);
      OZChannel::setSliderMax((v8 + 288), v10);
      OZChannel::setSliderMin((v8 + 440), 0.0);
      result = OZChannel::setSliderMax((v8 + 440), v10);
    }

    v11 = a4[14];
    if (v11)
    {
      v13 = *v11;
      v12 = v11[1];
      if (*v11 != v12)
      {
        do
        {
          result = *v13;
          if (((*v13)[57] & 0x10) != 0)
          {
            result = OZScene::updateColorChannelsForWorkingGamut(v7, a2, a3, v14);
            v12 = v11[1];
          }

          ++v13;
        }

        while (v13 != v12);
      }
    }
  }

  return result;
}

uint64_t OZScene::getComputedWorkingGamut(OZScene *this)
{
  if (OZSceneSettings::dynamicRangeTrackingEnabled((this + 336)))
  {
    SanitizedViewGamut = OZScene::getSanitizedViewGamut(this);
    if (SanitizedViewGamut >= 6)
    {
      return 1;
    }

    else
    {
      return dword_260851050[SanitizedViewGamut];
    }
  }

  else
  {
    PCSharedMutex::lock_shared((this + 232));
    v3 = *(this + 98);
    PCSharedMutex::unlock_shared((this + 232));
  }

  return v3;
}

uint64_t OZScene::parseElement(OZScene *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v26);
  v24 = 0.0;
  v25 = 0;
  v6 = *(a3 + 2);
  if (v6 > 60)
  {
    if (v6 > 65)
    {
      if (v6 > 73)
      {
        if (v6 == 74)
        {
          v11 = (this + 336);
        }

        else
        {
          if (v6 != 75)
          {
            goto LABEL_51;
          }

          v11 = (this + 1512);
        }

        goto LABEL_50;
      }

      if (v6 != 66)
      {
        if (v6 != 72)
        {
          goto LABEL_51;
        }

        v11 = *(this + 142);
        if (!v11)
        {
          operator new();
        }

LABEL_50:
        PCSerializerReadStream::pushHandler(a2, v11);
        goto LABEL_51;
      }

      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v26);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v25 + 4);
      *&v21.value = xmmword_260850790;
      SceneNode = OZApplication::createSceneNode(theApp, &v21);
    }

    else if (v6 > 62)
    {
      if (v6 == 63)
      {
        PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v26);
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v25 + 4);
        *&v21.value = xmmword_260850780;
        SceneNode = OZApplication::createSceneNode(theApp, &v21);
      }

      else
      {
        if (v6 != 64)
        {
          goto LABEL_51;
        }

        PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v26);
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v25 + 4);
        *&v21.value = xmmword_260850ED0;
        SceneNode = OZApplication::createSceneNode(theApp, &v21);
      }
    }

    else if (v6 == 61)
    {
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v26);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v25 + 4);
      *&v21.value = xmmword_260850770;
      SceneNode = OZApplication::createSceneNode(theApp, &v21);
    }

    else
    {
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, &v25);
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v26);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v25 + 4);
      v8 = OZFactories::lookupFactory(*(theApp + 32), v25);
      if (!v8)
      {
        goto LABEL_51;
      }

      if (!v9)
      {
        goto LABEL_51;
      }

      SceneNode = (*(*v9 + 168))(v9, &v26, HIDWORD(v25));
    }

    if (SceneNode)
    {
      OZChannelBase::setID((SceneNode + 56), HIDWORD(v25));
      operator new();
    }

    goto LABEL_51;
  }

  if (v6 <= 4)
  {
    if (v6 <= 2)
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v7 = 1544;
LABEL_44:
          (*(*a3 + 32))(a3, this + v7);
          goto LABEL_51;
        }

        goto LABEL_51;
      }

      if (*(a2 + 26) < 5u)
      {
        if ((*(*a3 + 64))(a3, &v24))
        {
          v14 = v24;
          memset(&v21, 0, sizeof(v21));
          OZSceneSettings::getFrameDuration((this + 336), &v21);
          v21.value = (v14 * v21.value);
          v15 = (this + 1176);
          *(this + 149) = v21.epoch;
          v16 = *&v21.value;
          goto LABEL_70;
        }

        if (*(a2 + 26) < 5u)
        {
          goto LABEL_51;
        }
      }

      if (!(*(*a3 + 88))(a3, &v22))
      {
        goto LABEL_51;
      }

      v15 = (this + 1176);
      *(this + 149) = v23;
      v16 = v22;
LABEL_70:
      *v15 = v16;
      goto LABEL_51;
    }

    if (v6 == 3)
    {
      v7 = 1548;
      goto LABEL_44;
    }

    v12 = *a3;
    if (*(a2 + 26) < 5u)
    {
      if ((*(v12 + 144))(a3, 1, &v24))
      {
        v20 = *(a2 + 112);
        operator*(&v20, &v21, v24);
        *(this + 1352) = v21;
      }

      if ((*(*a3 + 144))(a3, 2, &v24))
      {
        v20 = *(a2 + 112);
        operator*(&v20, &v21, v24);
        *(this + 86) = *&v21.value;
        epoch = v21.epoch;
        goto LABEL_56;
      }
    }

    else
    {
      if ((*(v12 + 168))(a3, 1, &v22))
      {
        *(this + 171) = v23;
        *(this + 1352) = v22;
      }

      if ((*(*a3 + 168))(a3, 2, &v22))
      {
        *(this + 86) = v22;
        epoch = v23;
LABEL_56:
        *(this + 174) = epoch;
      }
    }

LABEL_57:
    v18 = *a3;
    if (*(a2 + 26) < 5u)
    {
      if ((*(v18 + 144))(a3, 1, &v24))
      {
        v20 = *(a2 + 112);
        operator*(&v20, &v21, v24);
        *(this + 1400) = v21;
      }

      if (!(*(*a3 + 144))(a3, 2, &v24))
      {
        goto LABEL_51;
      }

      v20 = *(a2 + 112);
      operator*(&v20, &v21, v24);
      *(this + 89) = *&v21.value;
      v19 = v21.epoch;
    }

    else
    {
      if ((*(v18 + 168))(a3, 1, &v22))
      {
        *(this + 177) = v23;
        *(this + 1400) = v22;
      }

      if (!(*(*a3 + 168))(a3, 2, &v22))
      {
        goto LABEL_51;
      }

      *(this + 89) = v22;
      v19 = v23;
    }

    *(this + 180) = v19;
    goto LABEL_51;
  }

  if (v6 > 32)
  {
    if (v6 == 33)
    {
      v11 = (this + 640);
    }

    else
    {
      if (v6 != 34)
      {
        goto LABEL_51;
      }

      v11 = (this + 720);
    }

    goto LABEL_50;
  }

  if (v6 == 5)
  {
    goto LABEL_57;
  }

  if (v6 == 9)
  {
    v7 = 1592;
    goto LABEL_44;
  }

LABEL_51:
  PCString::~PCString(&v26);
  return 1;
}

double OZScene::begin@<D0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 151);
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = this + 1200;
  *(a2 + 24) = 0;
  return result;
}

double OZScene::begin_all@<D0>(OZScene *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 151);
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 80) = 1065353216;
  *a2 = v2;
  *(a2 + 8) = v2;
  *(a2 + 16) = this + 1200;
  *(a2 + 40) = 0;
  return result;
}

uint64_t *OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(uint64_t *a1)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::increment(a1);
        v2 = *(a1 + 10);
        if (v2 < 2)
        {
          v3 = *a1;
          if (*a1 == a1[2])
          {
            return a1;
          }

          goto LABEL_6;
        }

        if (v2 != 2)
        {
          break;
        }

        v6 = *(a1[3] + 16);
        if (!v6)
        {
          goto LABEL_13;
        }

        v5 = v6 + 48;
LABEL_10:
        if (!(*(*v5 + 216))(v5))
        {
          v8 = 1;
          goto LABEL_16;
        }

        v7 = (*(*v5 + 216))(v5);
        v8 = 1;
        if (OZChannelBase::testFlag(v7, 1))
        {
          goto LABEL_16;
        }
      }

      if (v2 != 3)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v3 = a1[4];
LABEL_6:
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v4 + 16;
        goto LABEL_10;
      }

LABEL_13:
      v8 = 0;
LABEL_16:
      v2 = *(a1 + 10);
LABEL_17:
      if (v2 >= 2)
      {
        break;
      }

      v10 = *a1;
      if (*a1 != a1[2])
      {
        goto LABEL_25;
      }
    }

    if (v2 == 2)
    {
      v9 = 3;
      goto LABEL_24;
    }

    if (v2 == 3)
    {
      v9 = 4;
LABEL_24:
      v10 = a1[v9];
LABEL_25:
      v11 = *(v10 + 16) == 0;
      v12 = v8 ^ 1;
      if (v11)
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0)
      {
        return a1;
      }
    }
  }
}

uint64_t OZScene::deleteUnusedSceneNodeFilesForNodes(OZScene *this, void *a2, uint64_t a3)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      Node = OZScene::getNode(this, *(v6 + 7));
      if (Node)
      {
        if (v8)
        {
          v9 = v8;
          if (((*(*v8 + 1336))(v8) & 1) == 0)
          {
            v15 = v9[20];
            std::vector<int>::push_back[abi:ne200100](&__p, &v15);
          }
        }
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v5);
  }

  v13 = OZScene::deleteSceneNodeFiles(this, &__p, a3);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_260103E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZScene::duplicateSelected(OZScene *this)
{
  OZScene::begin_all_sel(this, v69);
  v2 = *(this + 151);
  memset(v67, 0, sizeof(v67));
  v64 = 0;
  v65 = 0;
  v68 = 1065353216;
  v63[0] = this + 1200;
  v63[1] = v2;
  v63[2] = this + 1200;
  v66 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v57 = 0;
  v58 = v59;
  __p = 0;
  v56 = 0;
  while (1)
  {
    if (v72 == v66)
    {
      if (v72 == 3)
      {
        v3 = &v71;
      }

      else
      {
        v3 = &v70;
      }

      if (v72 == 3)
      {
        v4 = &v65;
      }

      else
      {
        v4 = &v64;
      }

      if (v72 < 2)
      {
        v3 = v69;
        v4 = v63;
      }

      if (*v3 == *v4)
      {
        break;
      }
    }

    if (v72 >= 2)
    {
      if (v72 == 2)
      {
        v7 = &v70;
      }

      else
      {
        v7 = &v71;
      }

      if (v72 == 2)
      {
        v6 = 48;
      }

      else
      {
        v6 = 16;
      }

      v5 = *v7;
    }

    else
    {
      v5 = v69[0];
      v6 = 16;
    }

    v8 = *(v5 + 16);
    v9 = v8 + v6;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(*v10 + 256))(v10);
    LODWORD(v54.var0) = (*(*v11 + 56))(v11);
    std::vector<int>::push_back[abi:ne200100](&v60, &v54);
    OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::operator++(v69);
  }

  v12 = v61 - v60;
  if (v61 != v60)
  {
    OZChannelBase::setRangeName(*(this + 188), 1);
    v13 = 0;
    if ((v12 >> 2) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12 >> 2;
    }

    v53 = v12;
    do
    {
      v15 = OZScene::OZNodeMap::operator[](this + 1288, *(v60 + v13));
      if ((*(*v15 + 96))(v15))
      {
        if (v16)
        {
          v19 = v16[120];
          v20 = (*(*v16[1] + 24))(v16[1], v16, 0);
          if (v20)
          {
          }

          else
          {
            v21 = 0;
          }

          v25 = v21 + 16;
          OZObjectManipulator::appendCopyToName((v21 + 16));
          v26 = (*(*v21 + 640))(v21);
          OZChannelBase::setNameUnset(v26, 1);
          if ((*(v16[2] + 56))(v16 + 2, 1))
          {
            (*(*v21 + 776))(v21);
          }

          (*(*v21 + 824))(v21, &v58, 0);
          v27 = v56;
          if (v56 >= v57)
          {
            v29 = (v56 - __p) >> 3;
            if ((v29 + 1) >> 61)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v30 = (v57 - __p) >> 2;
            if (v30 <= v29 + 1)
            {
              v30 = v29 + 1;
            }

            if (v57 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(&__p, v31);
            }

            v36 = (8 * v29);
            *v36 = v25;
            v28 = 8 * v29 + 8;
            v37 = v36 - (v56 - __p);
            memcpy(v37, __p, v56 - __p);
            v38 = __p;
            __p = v37;
            v56 = v28;
            v57 = 0;
            if (v38)
            {
              operator delete(v38);
            }

            v12 = v53;
          }

          else
          {
            *v56 = v25;
            v28 = (v27 + 8);
          }

          v56 = v28;
          if (v19)
          {
            v39 = *v19;
            if ((v16[128] & 8) != 0)
            {
              v40 = (v39 + 1088);
            }

            else
            {
              v40 = (v39 + 992);
            }

            (*v40)(v19, v21, v16);
          }

          else
          {
            OZScene::addRootNodeBefore(this, v21, v16);
          }

          PCURL::PCURL(&v54, @"Undo Duplicate");
          (*(*v25 + 176))(v21 + 16, &v54, 1);
          PCString::~PCString(&v54);
          if (v12 == 4)
          {
            OZScene::selectObject(this, (v21 + 16), 0, 0);
          }

          (*(*v21 + 224))(v21, v16, 0, 1, 0);
          if (v41)
          {
            v42 = v41;
            if (OZImageElement::isBackgroundDropZone(v41))
            {
              OZChannelBase::resetFlag((v42 + 18904), 0x1000000000, 1);
              OZPublishSettings::addChannel((this + 720), (v42 + 18904));
              OZDocument::postNotification(*(this + 198), 0x8000000);
            }
          }
        }

        else if (v17)
        {
          v22 = ((*v17)[40])(v17);
          v23 = (*(*v17[1] + 24))(v17[1], v17, 2);
          if (v23)
          {
          }

          else
          {
            v24 = 0;
          }

          OZObjectManipulator::appendCopyToName((v24 + 2));
          v43 = (*(*v24 + 312))(v24);
          OZChannelBase::setNameUnset(v43, 1);
          if ((v17[2][7])(v17 + 2, 1))
          {
            (*(v24[2] + 80))(v24 + 2);
          }

          if (v22)
          {
            OZSceneNode::insertBehaviorBefore(v22, v24, v17);
          }

          OZRigBehavior::DuplicateAffectingRigBehaviors((v17 + 2), (v24 + 2), v44);
        }

        else
        {
          v32 = v18;
          if (v18)
          {
            v33 = ((*v18)[31])(v18);
            v34 = (*(*v32[5] + 24))(v32[5], v32 + 4, 2);
            if (v34)
            {
            }

            else
            {
              v35 = 0;
            }

            v45 = v35 + 48;
            OZObjectManipulator::appendCopyToName((v35 + 48));
            v46 = (*(*v35 + 240))(v35);
            OZChannelBase::setNameUnset(v46, 1);
            if ((v32[6][7])(v32 + 6, 1))
            {
              (*(*v45 + 80))(v35 + 48);
            }

            if (v33)
            {
              (*(*v33 + 344))(v33, v35, v32);
              PCURL::PCURL(&v54, @"Undo Duplicate");
              (*(*v45 + 176))(v35 + 48, &v54, 1);
              PCString::~PCString(&v54);
              if (v12 == 4)
              {
                OZScene::selectObject(this, (v35 + 48), 0, 0);
              }
            }

            OZRigBehavior::DuplicateAffectingRigBehaviors((v32 + 6), (v35 + 48), v47);
          }
        }
      }

      ++v13;
    }

    while (v14 != v13);
    v48 = 0;
    do
    {
      v49 = OZScene::OZNodeMap::operator[](this + 1288, *(v60 + v48));
      (*(*v49 + 312))(v49);
      ++v48;
    }

    while (v14 != v48);
    v50 = __p;
    if (v56 != __p)
    {
      v51 = 0;
      do
      {
        (*(*v50[v51] + 360))(v50[v51], &v58);
        ++v51;
        v50 = __p;
      }

      while (v51 < (v56 - __p) >> 3);
    }

    OZDocument::postNotification(*(this + 198), 48);
  }

  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v58, v59[0]);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v67);
  return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v73);
}