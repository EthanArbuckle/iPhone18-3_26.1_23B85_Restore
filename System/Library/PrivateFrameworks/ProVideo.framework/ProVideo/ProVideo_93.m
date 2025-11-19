void *OZCloneGenerator::getSourceNode(OZCloneGenerator *this)
{
  ValueAsUint = OZChannel::getValueAsUint((this + 18904), MEMORY[0x277CC08F0], 0.0);
  v3 = *OZChannelBase::getObjectManipulator((this + 18904));
  v4 = (*(v3 + 264))();
  if (!v4)
  {
    return 0;
  }

  Node = OZScene::getNode(v4, ValueAsUint);
  if (!Node)
  {
    return 0;
  }
}

double OZCloneGenerator::getTimeRemappedParams@<D0>(OZCloneGenerator *this@<X0>, const OZRenderParams *a2@<X1>, OZRenderParams *a3@<X8>)
{
  OZRenderParams::OZRenderParams(a3, a2);
  v7 = *a2;
  OZCloneGenerator::getTimeRemappedFrame(this, &v7, &v8);
  result = *&v8;
  *a3 = v8;
  *(a3 + 2) = v9;
  *(a3 + 49) = 0;
  *(a3 + 50) = 0;
  return result;
}

void *OZCloneGenerator::buildRenderGraph(OZCloneGenerator *this, OZRenderState *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  result = OZCloneGenerator::getSourceNode(this);
  if (result)
  {
    OZRenderGraphState::OZRenderGraphState(v34, a4);
    LiGraphBuilder::getCurrentLocalToWorld(a3, &v23);
    for (i = 0; i != 128; i += 32)
    {
      v10 = &v34[i];
      v11 = *(&v23.var0.var3 + i);
      *(v10 + 6) = *(&v23.var0.var0 + i);
      *(v10 + 7) = v11;
    }

    v33 = 0x3FF0000000000000;
    v30 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v24 = 0x3FF0000000000000;
    v25 = 0u;
    v26 = 0u;
    v28 = 0u;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    OZRenderState::OZRenderState(&v23, a2);
    v23.var4 = 1;
    (*(*this + 1256))(this, &v24, &v23);
    PCMatrix44Tmpl<double>::operator*(&v36, &v24, v22);
    for (j = 0; j != 128; j += 32)
    {
      v13 = &v34[j];
      v14 = *&v22[j + 16];
      *(v13 + 6) = *&v22[j];
      *(v13 + 7) = v14;
    }

    SourceNode = OZCloneGenerator::getSourceNode(this);
    if (SourceNode)
    {
      if (v16)
      {
        v17 = v16;
        v18 = *v16;
        v20 = (*(v18 + 1608))(v17);
        if (v19)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        if (v21 == 1)
        {
          if (OZImageElement::isBackgroundDropZone(v19))
          {
            v37[32] = 0;
          }
        }
      }
    }

    OZElement::buildRenderGraph(this, a2, a3, v34);
    PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v37);
    return std::__list_imp<unsigned int>::clear(v35);
  }

  return result;
}

void sub_2601CC9D0(_Unwind_Exception *a1)
{
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&STACK[0x2F0]);
  std::__list_imp<unsigned int>::clear(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void OZCloneGenerator::makeRenderImageSource(OZCloneGenerator *this@<X0>, OZRenderParams *a2@<X1>, const OZRenderGraphState *a3@<X2>, PCSharedCount *a4@<X8>)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  {
    v10 = v9;
    OZCloneGenerator::getTimeRemappedParams(this, a2, &v29);
    Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v28, (v10 + 6528), &v29);
    OZRenderState::OZRenderState(&v27, &v29);
    if ((*(*v10 + 1600))(v10))
    {
      v27.var19 = 0;
    }

    OZRenderParams::setState(&v29, &v27);
    OZRenderGraphState::OZRenderGraphState(v20, a3);
    v18 = 0;
    *&v19 = 0;
    v17 = &unk_2871F25A8;
    BYTE8(v19) = 0;
    if (v23 < 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v23;
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v22, 0, v11);
    v24 = BYTE8(v19);
    PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v17);
    if ((*(*v10 + 1608))(v10))
    {
      v25 = 0;
    }

    v26 = 1;
    (*(*v10 + 1936))(v10, &v29, v20, 1);
    if (OZElement::isOwner360(this))
    {
      v17 = 0;
      v18 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v19 = _Q0;
      (*(*this + 1480))(this, &v17, &v27);
      operator new();
    }

    PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v22);
    std::__list_imp<unsigned int>::clear(v21);
    Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(v28);
    OZRenderParams::~OZRenderParams(&v29);
  }

  else
  {
    a4->var0 = 0;

    PCSharedCount::PCSharedCount(a4 + 1, 0);
  }
}

void sub_2601CCDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  PCSharedCount::~PCSharedCount((v19 - 72));
  PCSharedCount::~PCSharedCount(v17 + 1);
  PCSharedCount::~PCSharedCount(v16 + 1);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v18 + 224);
  std::__list_imp<unsigned int>::clear(va);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&STACK[0x270]);
  OZRenderParams::~OZRenderParams(&STACK[0x2B8]);
  _Unwind_Resume(a1);
}

uint64_t OZCloneGenerator::areEffectsAppliedInScreenSpace(OZCloneGenerator *this)
{
  v1 = *(*OZCloneGenerator::getSourceNode(this) + 144);

  return v1();
}

uint64_t non-virtual thunk toOZCloneGenerator::areEffectsAppliedInScreenSpace(OZCloneGenerator *this)
{
  v1 = *(*OZCloneGenerator::getSourceNode((this - 6528)) + 144);

  return v1();
}

uint64_t *OZCloneGenerator::getImageBounds(OZCloneGenerator *a1, uint64_t a2, const OZRenderState *a3)
{
  result = OZCloneGenerator::getSourceNode(a1);
  if (result)
  {
    v7 = result;
    OZRenderState::OZRenderState(&v19, a3);
    var0 = a3->var0;
    OZCloneGenerator::getTimeRemappedFrame(a1, &var0, &v17);
    *&v19.var0.var0 = v17;
    v19.var0.var3 = v18;
    if (v8)
    {
      v9 = v8;
      if ((*(*v8 + 1608))(v8))
      {
        v19.var18 = 0;
      }

      if ((*(*v9 + 1600))(v9))
      {
        v19.var19 = 0;
      }
    }

    v10 = *v7;
    {
      return (*(v10 + 16))(v7, a2, &v19);
    }

    else
    {
      return (*(v10 + 80))(v7, a2, &v19);
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(a2 + 16) = _Q0;
  }

  return result;
}

double OZCloneGenerator::getTimeRemappedFrame@<D0>(OZCloneGenerator *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = (*(*this + 640))(this);
  OZRetimingUtil::RemapTimeValue(v6, a2, a3);
  memset(&v16, 0, sizeof(v16));
  (*(*this + 2264))(&v16, this);
  v13[0] = *a3;
  v7 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(v13, &time2) < 0)
  {
    *a3 = *v7;
    epoch = *(v7 + 16);
  }

  else
  {
    v13[0] = *a3;
    time2 = v16;
    if (CMTimeCompare(v13, &time2) < 0)
    {
      goto LABEL_6;
    }

    v8 = (*(*this + 272))(this);
    OZSceneSettings::getFrameDuration((v8 + 336), &v14);
    v13[0] = v16;
    *&time2.value = v14;
    time2.epoch = v15;
    PC_CMTimeSaferSubtract(v13, &time2, &v17);
    *a3 = *&v17.value;
    epoch = v17.epoch;
  }

  *(a3 + 16) = epoch;
LABEL_6:
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (SourceNode)
  {
    if (v12)
    {
      (*(*v12 + 1128))(v13);
      v17 = v13[0];
      time2 = *a3;
      PC_CMTimeSaferAdd(&time2, &v17, v13);
      result = *&v13[0].value;
      *a3 = v13[0];
    }
  }

  return result;
}

uint64_t OZCloneGenerator::getImageBoundsWithEffects(OZCloneGenerator *a1, uint64_t a2, const OZRenderState *a3)
{
  if ((*(*a1 + 416))(a1))
  {
    OZRenderState::OZRenderState(&v15, a3);
    var0 = a3->var0;
    OZCloneGenerator::getTimeRemappedFrame(a1, &var0, &v13);
    *&v15.var0.var0 = v13;
    v15.var0.var3 = v14;
    SourceNode = OZCloneGenerator::getSourceNode(a1);
    if (SourceNode)
    {
      if (v7)
      {
        v8 = v7;
        v9 = *v7;
        {
          if ((*(v9 + 1608))(v8))
          {
            v15.var18 = 0;
          }

          if ((*(*v8 + 1600))(v8))
          {
            v15.var19 = 0;
          }
        }
      }
    }

    *(*(*(a1 + 122) + 16) + 24) = a1 + 6528;
    return (*(**(*(a1 + 123) + 16) + 80))(*(*(a1 + 123) + 16), a2, &v15);
  }

  else
  {
    v11 = *(*a1 + 1520);

    return v11(a1, a2, a3);
  }
}

uint64_t OZCloneGenerator::getOriginalBounds(uint64_t a1, uint64_t a2, OZRenderState *a3)
{
  OZRenderState::OZRenderState(&v6, a3);
  *&v6.var18 = 0;
  return (*(*a1 + 1488))(a1, a2, &v6);
}

void OZCloneGenerator::getDimensions(OZCloneGenerator *this, float *a2, float *a3, const OZRenderState *a4)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  *a3 = 0.0;
  *a2 = 0.0;
  OZRenderState::OZRenderState(&v12, a4);
  var0 = a4->var0;
  OZCloneGenerator::getTimeRemappedFrame(this, &var0, &v10);
  *&v12.var0.var0 = v10;
  v12.var0.var3 = v11;
  *&v12.var18 = 0;
  if (SourceNode)
  {
    (*(*SourceNode + 96))(SourceNode, a2, a3, &v12);
  }
}

uint64_t OZCloneGenerator::hasEnabledMasks(OZCloneGenerator *this)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (SourceNode)
  {
    if (v3)
    {
      if ((*(*v3 + 1864))(v3))
      {
        return 1;
      }
    }
  }

  return OZElement::hasEnabledMasks(this);
}

void *OZCloneGenerator::shouldWrapTexture(OZCloneGenerator *this)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (SourceNode)
  {
    if (result)
    {
      return ((*(*result + 1864))(result) ^ 1);
    }
  }

  result = OZCloneGenerator::getSourceNode(this);
  if (result)
  {
    if (result)
    {
      return ((*(*result + 1864))(result) ^ 1);
    }
  }

  return result;
}

uint64_t OZCloneGenerator::getMasks(OZCloneGenerator *a1, uint64_t a2)
{
  SourceNode = OZCloneGenerator::getSourceNode(a1);
  if (SourceNode)
  {
    if (v5)
    {
      (*(*v5 + 1904))(v5, a2);
    }
  }

  return OZElement::getMasks(a1);
}

void OZCloneGenerator::setName(OZCloneGenerator *this, const PCString *a2, int a3)
{
  OZChannelBase::setName((this + 18776), a2, 0);

  OZObjectManipulator::setName((this + 16), a2, a3);
}

void non-virtual thunk toOZCloneGenerator::setName(OZCloneGenerator *this, const PCString *a2, int a3)
{
  OZChannelBase::setName((this + 18760), a2, 0);

  OZObjectManipulator::setName(this, a2, a3);
}

void *OZCloneGenerator::getNaturalDuration@<X0>(OZCloneGenerator *this@<X0>, uint64_t a2@<X8>)
{
  result = OZCloneGenerator::getSourceNode(this);
  {
    result = (*(*result + 1128))(v6);
    *a2 = v7;
    v4 = v8;
  }

  else
  {
    v5 = MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    v4 = *(v5 + 16);
  }

  *(a2 + 16) = v4;
  return result;
}

double OZCloneGenerator::getPixelAspectRatio(OZCloneGenerator *this)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (!SourceNode)
  {
    return 1.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  v3 = *(*v2 + 1328);

  v3();
  return result;
}

double OZCloneGenerator::getPixelAspectRatioRN(OZCloneGenerator *this)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (!SourceNode)
  {
    return 1.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  v3 = v2;
  if (v4)
  {
    v6 = *(*v4 + 1328);

    v6(v4);
    return result;
  }

  if (!v5)
  {
    return 1.0;
  }

  v8 = *(*v5 + 1368);

  v8();
  return result;
}

uint64_t OZCloneGenerator::parseEnd(OZCloneGenerator *this, PCSerializerReadStream *a2)
{
  OZElement::parseEnd(this, a2);
  OZChannelBase::setFlag((this + 20032), 0x20000, 1);
  OZChannelBase::setFlag((this + 20440), 0x20000, 1);
  return 1;
}

uint64_t OZCloneGenerator::didFinishLoadingIntoScene(OZElement *this)
{
  OZElement::didFinishLoadingIntoScene(this);
  v2 = (*(*this + 640))(this);
  v3 = (*(*this + 272))(this);
  OZSceneSettings::getFrameDuration((v3 + 336), &v6);
  return OZRetimingUtil::FixLoadedRetimingState(v2, &v6, v4);
}

uint64_t OZCloneGenerator::openMedia(OZCloneGenerator *this)
{
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 104);

  return v3();
}

uint64_t OZCloneGenerator::prerollBegin(OZCloneGenerator *a1, const OZRenderParams *a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1, a2, a3, a4, a5);
  SourceNode = OZCloneGenerator::getSourceNode(a1);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  OZCloneGenerator::getTimeRemappedParams(a1, a2, v15);
  v13 = (*(*v12 + 112))(v12, v15, a3, a4, a5);
  OZRenderParams::~OZRenderParams(v15);
  return v13;
}

uint64_t OZCloneGenerator::prerollEnd(OZCloneGenerator *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this, a2, a3);
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  TimeRemappedParams = OZCloneGenerator::getTimeRemappedParams(this, a2, v12);
  v10 = (*(*v8 + 120))(v8, v12, a3, TimeRemappedParams);
  OZRenderParams::~OZRenderParams(v12);
  return v10;
}

uint64_t OZCloneGenerator::setRate(OZCloneGenerator *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this, a2, a3, a4);
  SourceNode = OZCloneGenerator::getSourceNode(this);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  OZCloneGenerator::getTimeRemappedParams(this, a2, v13);
  v11 = (*(*v10 + 128))(v10, v13, a3, a4);
  OZRenderParams::~OZRenderParams(v13);
  return v11;
}

uint64_t OZCloneGenerator::scheduleTokens(OZCloneGenerator *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  OZSceneNode::scheduleTokens(a1, a2, a3, a4, a5);
  SourceNode = OZCloneGenerator::getSourceNode(a1);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  OZCloneGenerator::getTimeRemappedParams(a1, a2, v16);
  memset(v15, 0, sizeof(v15));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v15, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v15, a4);
  v13 = (*(*v12 + 136))(v12, v16, v15, a4, a5);
  v17 = v15;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  OZRenderParams::~OZRenderParams(v16);
  return v13;
}

void sub_2601CE418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZCloneGenerator::hintTokensWillImage(OZCloneGenerator *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::hintTokensWillImage(a1, a2, a3, a4);
  SourceNode = OZCloneGenerator::getSourceNode(a1);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  OZCloneGenerator::getTimeRemappedParams(a1, a2, v14);
  memset(v13, 0, sizeof(v13));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v13, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v13, a4);
  v11 = (*(*v10 + 144))(v10, v14, v13, a4);
  v15 = v13;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v15);
  OZRenderParams::~OZRenderParams(v14);
  return v11;
}

void sub_2601CE5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZCloneGenerator::getTokensImage(OZCloneGenerator *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::getTokensImage(a1, a2, a3, a4);
  SourceNode = OZCloneGenerator::getSourceNode(a1);
  if (!SourceNode)
  {
    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  OZCloneGenerator::getTimeRemappedParams(a1, a2, v14);
  memset(v13, 0, sizeof(v13));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v13, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v13, a4);
  v11 = (*(*v10 + 152))(v10, v14, v13, a4);
  v15 = v13;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v15);
  OZRenderParams::~OZRenderParams(v14);
  return v11;
}

void sub_2601CE738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

void OZCloneGenerator::remapTokens(OZCloneGenerator *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::remapTokens(a1, a2, a3, a4);
  v7 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7 + 48 * v8;
      v11 = *(v10 + 24);
      v12 = *(v10 + 32);
      v13 = (v10 + 24);
      if (v12 != v11)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = 3 * v14;
          v23 = *(v11 + 24 * v14);
          v21 = 0uLL;
          v22 = 0;
          v20 = v23;
          OZCloneGenerator::getTimeRemappedFrame(a1, &v20, &v21);
          v17 = *(*a3 + 48 * v8 + 24) + 8 * v16;
          v18 = v21;
          *(v17 + 16) = v22;
          *v17 = v18;
          v14 = v15;
          v11 = *v13;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3) > v15++);
        v7 = *a3;
        v6 = a3[1];
      }

      v8 = ++v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) > v9);
  }
}

void *OZCloneGenerator::pruneTokensAtTime(OZCloneGenerator *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensAtTime(this, &v7, a3);
  result = OZCloneGenerator::getSourceNode(this);
  if (result)
  {
    if (result)
    {
      v7 = *a2;
      return (*(*result + 160))(result, &v7, a3);
    }
  }

  return result;
}

void *OZCloneGenerator::pruneTokensExceptAtTime(OZCloneGenerator *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this, &v7, a3);
  result = OZCloneGenerator::getSourceNode(this);
  if (result)
  {
    if (result)
    {
      v7 = *a2;
      return (*(*result + 168))(result, &v7, a3);
    }
  }

  return result;
}

void *OZCloneGenerator::pruneAllTokens(OZCloneGenerator *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this, a2);
  result = OZCloneGenerator::getSourceNode(this);
  if (result)
  {
    if (result)
    {
      v4 = *(*result + 176);

      return v4();
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getTimingGroupChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (v3)
    {
      return v3 + 18264;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getTimeScaleChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getTimeScale(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getTimeReverseChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getTimeReverse(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getTimeRemapChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getTimeRemap(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getRetimeFrameChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getRetimeFrame(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getRetimeFrameCacheChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getRetimeFrameCache(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getEndConditionChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getEndCondition(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getLoopDurationChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getLoopDuration(v3);
}

uint64_t OZRetimingUtil::RetimingExaminerTemplate<OZCloneGenerator>::getDurationCacheChannel(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 840))(a2);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return OZCloneGenerator::getDurationCache(v3);
}

uint64_t OZChan3DEngineSceneFileRefWithPicker_Factory::getInstance(OZChan3DEngineSceneFileRefWithPicker_Factory *this)
{
  if (atomic_load_explicit(&OZChan3DEngineSceneFileRefWithPicker_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChan3DEngineSceneFileRefWithPicker_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChan3DEngineSceneFileRefWithPicker_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChan3DEngineSceneFileRefWithPicker_Factory::_instance;
}

uint64_t OZChan3DEngineSceneFileRefWithPicker::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *((*(*a2 + 256))(a2) + 8);
  v6 = xmmword_260850900;
  result = OZFactory::isKindOfClass(v4, &v6);
  if (result)
  {
    return OZChanObjectRefWithPicker::canReferenceObject(this, a2);
  }

  return result;
}

void OZChan3DEngineSceneFileRefWithPicker_Factory::OZChan3DEngineSceneFileRefWithPicker_Factory(OZChan3DEngineSceneFileRefWithPicker_Factory *this)
{
  v3 = xmmword_260850EA0;
  v4 = xmmword_260850EB0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872A7030;
  *(this + 16) = &unk_2872A7100;
}

uint64_t *OZRenderParams::setFFInputPixelTransform(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v9 = a2;
  v4 = *(a1 + 1240);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  v10 = &v9;
  result = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 64, &v9);
  v6 = result + 5;
  if (result + 5 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v6[j] = a3[j];
      }

      v6 += 4;
      a3 += 4;
    }
  }

  return result;
}

uint64_t OZXGetFrameAsRenderGraph(void *a1, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, void *a9, HGRenderer *a10, CMTimeValue *a11)
{
  RenderEngineMutex = OZX_getRenderEngineMutex();
  v48 = RenderEngineMutex;
  PCMutex::lock(RenderEngineMutex);
  v74 = 1;
  PCAutoreleasePool::PCAutoreleasePool(&v72);
  OZRenderParams::OZRenderParams(v56);
  if (v65 != a8)
  {
    for (i = 0; i != 128; i += 32)
    {
      v20 = &v65[i];
      v21 = *&a8[i + 16];
      *v20 = *&a8[i];
      v20[1] = v21;
    }
  }

  v65[128] = 1;
  v22 = *(a7 + 64);
  v23 = *(a7 + 72);
  if (a1)
  {
    if (*a1)
    {
      v24 = *(*a1 + 24);
      if (v24)
      {
        OZScene::setRawWorkingGamut(v24, *(a7 + 80));
      }
    }
  }

  v54[0] = *a2;
  OZX_prepareForRender(a1, v54, *(a7 + 48), *(a7 + 56) != 0, *(a7 + 52), *a7, *(a7 + 4), v22, v23, *(a7 + 80), *(a7 + 84), 1, 1, 0, v56);
  OZPlaybackEngine::OZPlaybackEngine(&v55, 1);
  OZPlaybackEngine::operator=(v66, &v55);
  v60 = *(a7 + 56);
  v58 = 0u;
  v59 = 0u;
  LiRenderingTechnology::setRasterizeEdges(&v71, 0);
  OZRenderParams::setTextRenderQuality(v56, 0);
  v49 = a2;
  v50 = a1;
  *&v66[13] = a3;
  v53[0] = 0;
  if (*(a5 + 16))
  {
    v25 = 0;
    do
    {
      v54[0].value = v53;
      v26 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a5, v53);
      LODWORD(v52.value) = v25;
      v54[0].value = &v52;
      v27 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v67, &v52);
      v28 = *(v26 + 5);
      *(v27 + 7) = *(v26 + 7);
      *(v27 + 5) = v28;
      v25 = v53[0] + 1;
      v53[0] = v25;
    }

    while (v25 < *(a5 + 16));
  }

  v53[0] = 0;
  if (*(a4 + 16))
  {
    v29 = 0;
    do
    {
      v54[0].value = v53;
      v30 = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a4, v53) + 8);
      LODWORD(v52.value) = v29;
      v54[0].value = &v52;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v68, &v52) + 8) = v30;
      v54[0].value = v53;
      v31 = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a4, v53);
      v32 = v53[0];
      LODWORD(v52.value) = *(v31 + 8);
      v54[0].value = &v52;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v69, &v52) + 8) = v32;
      v29 = v53[0] + 1;
      v53[0] = v29;
    }

    while (v29 < *(a4 + 16));
  }

  LODWORD(v52.value) = 0;
  if (*(a6 + 16))
  {
    v33 = 0;
    do
    {
      v54[0].value = &v52;
      v34 = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a6, &v52);
      OZRenderParams::setFFInputPixelTransform(v56, v33, v34 + 5);
      v33 = LODWORD(v52.value) + 1;
      LODWORD(v52.value) = v33;
    }

    while (v33 < *(a6 + 16));
  }

  v69[3] = *(a7 + 8);
  if (CGRectIsEmpty(*(a7 + 16)))
  {
    OZRenderParams::getROI(v56, v54);
    v35 = 0.0;
    v36.f64[0] = 0.0;
    if (*a7 != 0.0)
    {
      v36.f64[0] = fabsf(*(a7 + 8) / *a7);
    }

    v37 = *(a7 + 4);
    if (v37 != 0.0)
    {
      v35 = fabsf(*(a7 + 8) / v37);
    }

    v63 = 0;
    v38.i64[0] = v54[0].timescale;
    v38.i64[1] = v54[0].flags;
    v36.f64[1] = v35;
    v64 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v36, vcvtq_f64_s64(v38))));
  }

  else
  {
    v39 = *(a7 + 16);
    v40 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v39, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    *&v39.f64[0] = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v39, *(a7 + 32))))), v40);
    v63 = v40;
    v64 = *&v39.f64[0];
  }

  OZProcessControl::OZProcessControl(v54);
  OZProcessControl::setHeliumRenderer(v54, a10);
  v57 = v54;
  if (v50)
  {
    v41 = v50[2];
    if (v41)
    {
      OZProcessControl::setProgressHandler(v54, v41);
    }

    if (*v50)
    {
      v42 = *(*v50 + 24);
      if (v42)
      {
        v43 = *(v42 + 43);
        v44.i64[0] = v43;
        v44.i64[1] = SHIDWORD(v43);
        v61 = 0u;
        v62 = vcvtq_f64_s64(v44);
        v58 = 0u;
        v59 = 0u;
        v70 = *(a7 + 88);
        if (OZScene::getActiveCamera(v42, v49))
        {
          operator new();
        }
      }
    }

    else
    {
      v42 = 0;
    }

    OZRenderParams::OZRenderParams(v51, v56);
    OZXGetRenderGraph(v42, v51, a9, v50[1], a10, &v52);
    v45 = *a11;
    value = v52.value;
    if (*a11 == v52.value)
    {
      if (v45)
      {
        (*(*v52.value + 24))(v52.value);
      }
    }

    else
    {
      if (v45)
      {
        (*(*v45 + 24))(v45);
        value = v52.value;
      }

      *a11 = value;
      v52.value = 0;
    }

    OZRenderParams::~OZRenderParams(v51);
  }

  OZProcessControl::~OZProcessControl(v54);
  OZRenderParams::~OZRenderParams(v56);
  PCAutoreleasePool::~PCAutoreleasePool(&v72);
  if (v74 == 1)
  {
    PCMutex::unlock(v48);
  }

  return 0;
}

void sub_2601CFE10(void *a1)
{
  PCSharedCount::~PCSharedCount((v3 - 96));
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCSharedCount::~PCSharedCount(v2 + 1);
  OZProcessControl::~OZProcessControl(&STACK[0x600]);
  OZRenderParams::~OZRenderParams(&STACK[0x648]);
  PCAutoreleasePool::~PCAutoreleasePool((v3 - 120));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!*(v3 - 112))
  {
    JUMPOUT(0x2601CFDE8);
  }

  JUMPOUT(0x2601CFDD4);
}

uint64_t *OZScene::begin_t<OZRigWidget,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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
      return OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZXSetRigValueWithName(void *a1, PCString *a2, double a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  OZScene::begin_t<OZRigWidget,false,true>(*(*a1 + 24), v11);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  while (v11[0] != v3 + 1200)
  {
    Name = OZObjectManipulator::getName((v6 + 2));
    if (!PCString::compare(Name, a2))
    {
      (*(*v6[136] + 712))(v6[136], MEMORY[0x277CC08F0], 0, a3);
      break;
    }

    OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::operator++(v11);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v9);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v12);
  return 0;
}

void sub_2601D0220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v14 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D0200);
}

CFComparisonResult OZXSetPublishedTextSize(void *a1, PCString *a2, float a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v9);
        if (ObjectManipulator)
        {
          if (v11)
          {
            if (v12)
            {
              (*(*v12 + 112))(v12, a3);
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_2601D03E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D03C4);
}

CFComparisonResult __OZXGetPublishedChannel(void *a1, const PCString *a2, OZChannel **a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v4 = *(v3 + 864);
  if (v4)
  {
    for (i = *v4; i != v4[1]; ++i)
    {
      v8 = *i;
      if (*i)
      {
        if (!OZChannelBase::testFlag(v8, 2))
        {
          if (v9)
          {
            result = PCString::compare(&v9->var4, a2);
            if (!result)
            {
              *a3 = v9;
              return result;
            }
          }
        }
      }

      else
      {
        OZChannelBase::testFlag(0, 2);
      }
    }
  }

  return 11;
}

CFComparisonResult OZXSetPublishedTextScale(void *a1, PCString *a2, float a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v9);
        if (ObjectManipulator)
        {
          if (v11)
          {
            if (v12)
            {
              (*(*v12 + 104))(v12, a3);
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_2601D06A0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D0684);
}

CFComparisonResult OZXSetPublishedTextLocale(void *a1, PCString *a2, NSString *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v9);
        if (ObjectManipulator)
        {
          if (v11)
          {
            if (v12)
            {
              (*(*v12 + 136))(v12, a3);
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_2601D0838(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D0820);
}

CFComparisonResult OZXSetPublishedTextFont(void *a1, PCString *a2, NSString *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v17 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v17);
  if (!v5)
  {
    v6 = v17;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v17);
    v8 = TargetChannelForProxy;
    if (TargetChannelForProxy && TargetChannelForProxy != v6)
    {
      if (v10)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v10);
        if (!ObjectManipulator)
        {
          return v5;
        }

        if (!v12)
        {
          return v5;
        }
      }

      else
      {
        if (!v15)
        {
          return v5;
        }

        v16 = OZChannelBase::getObjectManipulator(v15);
        if (v16)
        {
        }

        v13 = (*(*v16 + 280))(v16);
      }

      if (v13)
      {
        (*(*v13 + 96))(v13, a3);
      }
    }
  }

  return v5;
}

void sub_2601D0A78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D0998);
}

uint64_t OZXSetPublishedRGBColor(void *a1, PCString *a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  v6 = *(v5 + 864);
  if (!v6)
  {
    return 11;
  }

  v7 = *v6;
  if (*v6 == *(v6 + 8))
  {
    return 11;
  }

  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 11;
  do
  {
    v13 = *v7;
    if (*v7)
    {
    }

    else
    {
      v14 = 0;
    }

    v15 = OZChannelBase::testFlag(v13, 2);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0 && !PCString::compare(&v14->var4, a2))
    {
      TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v5 + 720), v14);
      if (TargetChannelForProxy)
      {
        if (TargetChannelForProxy != v13)
        {
          if (v18)
          {
            v19 = v18;
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            PCColor::PCColor(&v22, v9, v10, v11, 1.0, DeviceRGB);
            (*(*v19 + 840))(v19, MEMORY[0x277CC08F0], &v22, 0);
            CGColorSpaceRelease(DeviceRGB);
            PCCFRef<CGColorSpace *>::~PCCFRef(&v22.var1._obj);
            v12 = 0;
          }
        }
      }
    }

    ++v7;
  }

  while (v7 != *(v6 + 8));
  return v12;
}

uint64_t OZXSetPublishedPopup(void *a1, PCString *a2, unsigned int Tag)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v4 = *(v3 + 864);
  if (!v4)
  {
    return 11;
  }

  v5 = *v4;
  if (*v4 == *(v4 + 8))
  {
    return 11;
  }

  v8 = 11;
  do
  {
    v9 = *v5;
    if (*v5)
    {
    }

    else
    {
      v10 = 0;
    }

    v11 = OZChannelBase::testFlag(v9, 2);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0 && !PCString::compare(&v10->var4, a2))
    {
      TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v10);
      if (TargetChannelForProxy)
      {
        if (TargetChannelForProxy != v9)
        {
          if (v14)
          {
            v15 = v14;
            if (Tag < OZChannelEnum::getNumberOfStrings(v14))
            {
              if (*(v15 + 22) != *(v15 + 21))
              {
                Tag = OZChannelEnum::getTag(v15, Tag);
              }

              (*(*v15 + 712))(v15, MEMORY[0x277CC08F0], 0, Tag);
              v8 = 0;
            }
          }
        }
      }
    }

    ++v5;
  }

  while (v5 != *(v4 + 8));
  return v8;
}

uint64_t OZXSetPublishedPosition(void *a1, PCString *a2, double a3, double a4)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  v5 = *(v4 + 864);
  if (!v5)
  {
    return 11;
  }

  v6 = *v5;
  if (*v5 == *(v5 + 8))
  {
    return 11;
  }

  v10 = 11;
  do
  {
    v11 = *v6;
    if (*v6)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = OZChannelBase::testFlag(v11, 2);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0 && !PCString::compare(&v12->var4, a2))
    {
      TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v4 + 720), v12);
      if (TargetChannelForProxy)
      {
        if (TargetChannelForProxy != v11)
        {
          if (v16)
          {
            OZChannelPosition::setPosition(v16, MEMORY[0x277CC08F0], a3, a4, 0);
            v10 = 0;
          }
        }
      }
    }

    ++v6;
  }

  while (v6 != *(v5 + 8));
  return v10;
}

uint64_t OZXSetPublishedCheckBox(void *a1, PCString *a2, unsigned int a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v4 = *(v3 + 864);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      v7 = a3;
      v8 = 11;
      while (1)
      {
        v9 = *v5;
        if (*v5)
        {
        }

        else
        {
          v10 = 0;
        }

        v11 = OZChannelBase::testFlag(v9, 2);
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          goto LABEL_22;
        }

        if (PCString::compare(&v10->var4, a2))
        {
          goto LABEL_22;
        }

        TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v10);
        v14 = TargetChannelForProxy;
        if (!TargetChannelForProxy || TargetChannelForProxy == v9)
        {
          goto LABEL_22;
        }

        if (v15)
        {
          break;
        }

        if (v16)
        {
          (*(*v16 + 104))(v16, a3, 0);
          goto LABEL_21;
        }

LABEL_22:
        if (++v5 == v4[1])
        {
          return v8;
        }
      }

      (*(*v15 + 712))(v15, MEMORY[0x277CC08F0], 0, v7);
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }
  }

  return 11;
}

uint64_t OZXSetSeedValue(void *a1, unsigned int a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  OZScene::begin(*(*a1 + 24), v16);
  OZScene::end_sel(v2, v14);
  while (v16[0] != v14[0])
  {
    if (v16[0] != v16[2])
    {
      v4 = *(v16[0] + 16);
      if (v4)
      {
        v5 = v4 + 1000;
        for (i = *(v4 + 1008); i != v5; i = *(i + 8))
        {
          v7 = (*(**(i + 16) + 312))(*(i + 16));
          if (v7)
          {
            v8 = *(v7 + 112);
            if (v8)
            {
              for (j = *v8; j != v8[1]; ++j)
              {
                if (!OZChannelBase::testFlag(*j, 2))
                {
                  v10 = *j;
                  var1 = (*j)->var1;
                  v18 = xmmword_260848660;
                  if (OZFactory::isKindOfClass(var1, &v18))
                  {
                    (*(v12 + 712))(a2);
                  }
                }
              }
            }
          }
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v16);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v15);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v17);
  return 0;
}

void sub_2601D14E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D14C0);
}

uint64_t OZXSetBorderScaleAndTranslation(void *a1, double a2, double a3, double a4, double a5)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  OZScene::begin(*(*a1 + 24), v17);
  OZScene::end_sel(v5, v15);
  v10 = MEMORY[0x277CC08F0];
  while (v17[0] != v15[0])
  {
    if (v17[0] != v17[2])
    {
      v11 = *(v17[0] + 16);
      if (v11)
      {
        if (v12)
        {
          v13 = v12;
          OZTransformNode::setScale((v12 + 200), a2, a3, 1.0, v10);
          OZTransformNode::setTranslation((v13 + 200), a4, a5, 0.0, v10);
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v17);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
  return 0;
}

void sub_2601D1698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D1678);
}

uint64_t OZXSetCutawayFadeInOut(void *a1, const CMTime *a2, const CMTime *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  OZScene::begin(*(*a1 + 24), v20);
  OZScene::end_sel(v3, v18);
  while (v20[0] != v18[0])
  {
    if (v20[0] != v20[2])
    {
      v6 = *(v20[0] + 16);
      if (v6)
      {
        if (v7)
        {
          v8 = (v7 + 6680);
          if (OZChannel::isAnimated((v7 + 6680)))
          {
            time = *a2;
            if (CMTimeGetSeconds(&time) > 0.0)
            {
              FirstEnabledKeyframe = OZChannel::getFirstEnabledKeyframe(v8);
              OZChannel::setKeyframeValue(v8, FirstEnabledKeyframe, 0.0);
              NextEnabledKeyframe = OZChannel::getNextEnabledKeyframe(v8, FirstEnabledKeyframe);
              (*(v8->var0 + 105))(v8, NextEnabledKeyframe, a2, 0, 0);
            }

            time = *a3;
            if (CMTimeGetSeconds(&time) > 0.0)
            {
              v16 = 0.0;
              LastEnabledKeyframe = OZChannel::getLastEnabledKeyframe(v8);
              OZChannel::setKeyframeValue(v8, LastEnabledKeyframe, 0.0);
              OZChannel::getKeyframe(v8, LastEnabledKeyframe, &v17, &v16);
              PreviousEnabledKeyframe = OZChannel::getPreviousEnabledKeyframe(v8, LastEnabledKeyframe);
              time = v17;
              v22 = *a3;
              v13 = PC_CMTimeSaferSubtract(&time, &v22, v15);
              (*(v8->var0 + 105))(v8, PreviousEnabledKeyframe, v15, 0, 0, v13);
            }
          }
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v20);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v19);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v21);
  return 0;
}

void sub_2601D1974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a30);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D1950);
}

__n128 OZXGetPosterFrameTime(void *a1, CMTime *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*a1)
      {
        v3 = *(*a1 + 24);
        if (v3)
        {
          v4 = *(v3 + 1136);
          v7 = **&MEMORY[0x277CC08F0];
          for (i = OZTimeMarkerSet::findNextMarker(v4, &v7); v4 + 16 != i; i = OZTimeMarkerSet::findNextMarker(v4, &v7))
          {
            if (*(i + 27) == 8)
            {
              result = *(i + 40);
              a2->epoch = *(i + 7);
              *&a2->value = result;
              return result;
            }

            v7 = *(i + 40);
          }
        }
      }
    }
  }

  return result;
}

void sub_2601D1AA4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D1A8CLL);
}

uint64_t OZXGetTopLevelGroupID(void *a1, unsigned int *a2)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  v4 = (*(*v2 + 120))(*(*a1 + 24));
  v5 = (*(*v2 + 128))(v2);
  if (v4 == v5)
  {
LABEL_7:
    v8 = 13;
  }

  else
  {
    while (1)
    {
      v6 = *(v4 + 16);
      v7 = *(v6 + 8);
      v16 = xmmword_260850780;
      if (OZFactory::isKindOfClass(v7, &v16))
      {
        break;
      }

      v4 = *(v4 + 8);
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v8 = 0;
    *a2 = *(v6 + 80);
  }

  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  if (OZHostApplicationDelegateHandler::wantsToAssertThatTopLevelGroupSpansEntireScene(HostApplicationDelegate))
  {
    Node = OZScene::getNode(v2, *a2);
    v17 = *(v2 + 1368);
    v16 = *(v2 + 1352);
    v18 = *(v2 + 1376);
    v14 = 0uLL;
    v15 = 0;
    OZSceneSettings::getFrameDuration((v2 + 336), &v14);
    memset(&v13, 0, sizeof(v13));
    *&v21.value = v16;
    v21.epoch = v17;
    v20 = v18;
    PC_CMTimeSaferAdd(&v21, &v20, &v19);
    v21 = v19;
    *&v20.value = v14;
    v20.epoch = v15;
    PC_CMTimeSaferSubtract(&v21, &v20, &v13);
    v21.epoch = v17;
    v12 = Node[2];
    Node += 2;
    *&v21.value = v16;
    (*(v12 + 104))(Node, &v21, 1, 1, 1);
    v21 = v13;
    (*(*Node + 104))(Node, &v21, 1, 1, 1);
  }

  return v8;
}

void sub_2601D1D14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D1B8CLL);
}

uint64_t OZXGetObjectBounds(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  Node = OZScene::getNode(v5, a3);
  if (!Node)
  {
    return 11;
  }

  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  OZRenderState::OZRenderState(&v13);
  *&v13.var0.var0 = *a2;
  v13.var0.var3 = *(a2 + 16);
  v13.var20 = a4 & 1;
  v13.var26 = (a4 & 4) != 0;
  v13.var27 = (a4 & 2) != 0;
  (*(*v11 + 1488))(v11, a5, &v13);
  return 0;
}

uint64_t OZXGetWorldToFilmTransform(uint64_t *a1, const CMTime *a2, METimeRemap **a3)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 7;
  }

  if (OZScene::getActiveCamera(*(v3 + 24), a2))
  {
    operator new();
  }

  LiSimpleCamera::LiSimpleCamera(&v13);
  v12 = vcvtq_f64_f32(vcvt_f32_s32(*(v4 + 344)));
  LiSimpleCamera::setFilmback(&v13, &v12);
  LiSimpleCamera::setPixelAspectRatio(&v13, *(v4 + 384));
  OZScene::calcWorldToFilmSpaceMatrixForCamera(v4, &v13, v11);
  if (v11 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v9 = &a3[i / 8];
      v10 = v11[i / 0x10 + 1];
      *v9 = v11[i / 0x10];
      *(v9 + 1) = v10;
    }
  }

  LiSimpleCamera::~LiSimpleCamera(&v13, v7);
  return 0;
}

void sub_2601D2054(void *a1, const PCString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  LiSimpleCamera::~LiSimpleCamera(&a27, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D2038);
}

uint64_t OZXGetObjectTransform(uint64_t a1, uint64_t a2, char a3, unsigned int a4, uint64_t a5)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  Node = OZScene::getNode(v5, a4);
  if (!Node)
  {
    return 11;
  }

  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  OZRenderState::OZRenderState(&v13);
  *&v13.var0.var0 = *a2;
  v13.var0.var3 = *(a2 + 16);
  v13.var16 = (a3 & 2) != 0;
  v13.var8 = a3 & 1;
  v13.var4 = a3 & 4;
  (*(*v11 + 1256))(v11, a5, &v13);
  return 0;
}

uint64_t OZXSetObjectTransform(uint64_t a1, const CMTime *a2, unsigned int a3, __int128 *a4)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  Node = OZScene::getNode(v4, a3);
  if (!Node)
  {
    return 11;
  }

  if (!v8)
  {
    return 11;
  }

  v9 = v8;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v14 = 4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0.0;
  if (!PCMatrix44Tmpl<double>::getTransformation(a4, &v11))
  {
    return 11;
  }

  OZTransformNode::setTranslation(v9, *&v11, *(&v11 + 1), *&v12, a2);
  OZTransformNode::setRotation(v9, *&v15, *(&v15 + 1), *&v16, a2);
  OZTransformNode::setScale(v9, *(&v12 + 1), *&v13, *(&v13 + 1), a2);
  OZTransformNode::setShear(v9, *(&v16 + 1), v17, a2);
  return 0;
}

uint64_t OZXGetObjectOpacity(void *a1, const CMTime *a2, unsigned int a3, double *a4)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  Node = OZScene::getNode(v4, a3);
  if (!Node)
  {
    return 11;
  }

  if (!v8)
  {
    return 11;
  }

  OZElement::getOpacity(v8, a2, 0);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t OZXSetObjectOpacity(void *a1, const CMTime *a2, unsigned int a3, double a4)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  Node = OZScene::getNode(v4, a3);
  if (!Node)
  {
    return 11;
  }

  if (!v8)
  {
    return 11;
  }

  OZElement::setOpacity(v8, a4, a2);
  return 0;
}

uint64_t OZXDisableRenderingObject(uint64_t *a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 7;
  }

  Node = OZScene::getNode(*(v3 + 24), a2);
  if (!Node)
  {
    return 11;
  }

  v39 = v8;
  if (!v8)
  {
    return 11;
  }

  v9 = (v4 + 1248);
  v10 = *(v4 + 1248);
  if (a3)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = (v4 + 1248);
    do
    {
      v12 = v10[4];
      v13 = v12 >= v8;
      v14 = v12 < v8;
      if (v13)
      {
        v11 = v10;
      }

      v10 = v10[v14];
    }

    while (v10);
    if (v11 == v9 || (v15 = v11[4], v8 < v15) || v15 == *(v4 + 1280))
    {
LABEL_16:
      std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(v4 + 1240, &v39);
    }
  }

  else if (v10)
  {
    v17 = (v4 + 1248);
    do
    {
      v18 = v10[4];
      v13 = v18 >= v8;
      v19 = v18 < v8;
      if (v13)
      {
        v17 = v10;
      }

      v10 = v10[v19];
    }

    while (v10);
    if (v17 != v9)
    {
      v20 = v17[4];
      if (v8 >= v20 && v20 != *(v4 + 1280))
      {
        std::__tree<OZLocking *>::__erase_unique<OZLocking *>((v4 + 1240), &v39);
      }
    }
  }

  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  OZScene::getCloneNodes(v4, a2, &v37);
  v21 = v37;
  if (v37 != v38)
  {
    do
    {
      v22 = OZScene::getNode(v4, *(v21 + 7));
      if (v22)
      {
        v36 = v23;
        if (v23)
        {
          v24 = *v9;
          if (a3)
          {
            if (!v24)
            {
              goto LABEL_42;
            }

            v25 = (v4 + 1248);
            do
            {
              v26 = v24[4];
              v13 = v26 >= v23;
              v27 = v26 < v23;
              if (v13)
              {
                v25 = v24;
              }

              v24 = v24[v27];
            }

            while (v24);
            if (v25 == v9 || (v28 = v25[4], v23 < v28) || v28 == *(v4 + 1280))
            {
LABEL_42:
              std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(v4 + 1240, &v36);
            }
          }

          else if (v24)
          {
            v29 = (v4 + 1248);
            do
            {
              v30 = v24[4];
              v13 = v30 >= v23;
              v31 = v30 < v23;
              if (v13)
              {
                v29 = v24;
              }

              v24 = v24[v31];
            }

            while (v24);
            if (v29 != v9)
            {
              v32 = v29[4];
              if (v23 >= v32 && v32 != *(v4 + 1280))
              {
                std::__tree<OZLocking *>::__erase_unique<OZLocking *>((v4 + 1240), &v36);
              }
            }
          }
        }
      }

      v33 = v21[1];
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
          v34 = v21[2];
          v35 = *v34 == v21;
          v21 = v34;
        }

        while (!v35);
      }

      v21 = v34;
    }

    while (v34 != v38);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v37, v38[0]);
  return 0;
}

CFComparisonResult OZXDisableElementWithPublishedParam(void *a1, PCString *a2, int a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy && TargetChannelForProxy != v6)
    {
      ChannelRootBase = OZChannelBase::getChannelRootBase(TargetChannelForProxy);
      if (ChannelRootBase)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(ChannelRootBase);
        if (ObjectManipulator)
        {
          v11 = *ObjectManipulator;
          if (a3)
          {
            v12 = (v11 + 40);
          }

          else
          {
            v12 = (v11 + 32);
          }

          (*v12)();
        }
      }
    }
  }

  return v5;
}

void sub_2601D28C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D28A8);
}

CFComparisonResult OZXEnableTextDynamicLineSpacing(void *a1, PCString *a2, uint64_t a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v9);
        if (ObjectManipulator)
        {
          if (v11)
          {
            if (v12)
            {
              (*(*v12 + 80))(v12, a3);
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_2601D2A58(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D2A40);
}

CFComparisonResult OZXSetTextOneLineScaleThreshold(void *a1, PCString *a2, double a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v14 = 0;
  v5 = __OZXGetPublishedChannel(a1, a2, &v14);
  if (!v5)
  {
    v6 = v14;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v14);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(v9);
        if (ObjectManipulator)
        {
          if (v11)
          {
            if (v12)
            {
              (*(*v12 + 88))(v12, a3);
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_2601D2BF8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D2BDCLL);
}

uint64_t OZXGetTextAttributedString(void *a1, unsigned int a2, NSMutableAttributedString *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  Node = OZScene::getNode(v4, a2);
  if (Node)
  {
    if (v7)
    {
      if (v8)
      {
        v9 = v8;
        v14 = **&MEMORY[0x277CC0898];
        v10 = OZXGetPosterFrameTime(a1, &v14);
        if (v11)
        {
          NSLog(&cfstr_WarningCouldNo_0.isa, v10.n128_f64[0]);
        }

        else if (v14.flags)
        {
LABEL_13:
          v13 = (*(*v9 + 120))(v9, &v14, 0, v10);
          [(NSMutableAttributedString *)a3 setAttributedString:v13];

          return 0;
        }

        v10 = *MEMORY[0x277CC08F0];
        v14 = **&MEMORY[0x277CC08F0];
        goto LABEL_13;
      }
    }
  }

  return 11;
}

uint64_t OZXClearTranscription(uint64_t a1)
{
  v2 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v2);
  if (!result)
  {
    if (v2)
    {
      (**v2)(v2);
      return 0;
    }
  }

  return result;
}

void sub_2601D2E1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D2E10);
}

uint64_t __OZXGetTranscriptionDelegate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  if (!a2)
  {
    return 11;
  }

  v4 = v2 + 1200;
  v5 = *(v2 + 1208);
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v13[0] = v5;
  v13[1] = v5;
  v14 = v4;
  v15 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  v10 = v4;
  while (1)
  {
    if (v13[0] == v10)
    {
      v8 = 11;
      goto LABEL_15;
    }

    if (v13[0] != v14)
    {
      v6 = *(v13[0] + 16);
      if (v6)
      {
        if (v7)
        {
          break;
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v13);
  }

  v8 = 0;
  *a2 = v7;
LABEL_15:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v11);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
  return v8;
}

uint64_t OZXSetLoopMarkerFromTranscription(void *a1)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v1 = *(*a1 + 24);
  if (!v1)
  {
    return 7;
  }

  v2 = *(v1 + 1208);
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  v26[0] = v2;
  v26[1] = v2;
  v27 = v1 + 1200;
  v28 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  v20 = v1 + 1200;
  v21 = v2;
  v22 = v1 + 1200;
  v23 = 0;
  while (1)
  {
    if (v26[0] == v20)
    {
      goto LABEL_20;
    }

    if (v26[0] != v27)
    {
      v3 = *(v26[0] + 16);
      if (v3)
      {
        if (v4)
        {
          break;
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v26);
  }

  (*(*v4 + 48))(v4, 1);
  v7 = *(v1 + 1136);
  v10 = *(v7 + 8);
  v8 = (v7 + 8);
  v9 = v10;
  if (v10 == v8 + 1)
  {
LABEL_20:
    v5 = 11;
    goto LABEL_21;
  }

  v11 = v6;
  while (*(v9 + 27) != 7)
  {
    v12 = v9[1];
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
        v13 = v9[2];
        v14 = *v13 == v9;
        v9 = v13;
      }

      while (!v14);
    }

    v9 = v13;
    if (v13 == v8 + 1)
    {
      goto LABEL_20;
    }
  }

  OZTimeMarker::OZTimeMarker(&v18, (v9 + 4));
  OZFigTimeForChannelSeconds(&v17, v11, 0x40000);
  v19 = v17;
  v16 = std::__tree<OZTimeMarker>::find<OZTimeMarker>(v8, (v9 + 4));
  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(v8, v16);
  (**(v16 + 32))();
  operator delete(v16);
  std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(v8, &v18);
  OZTimeMarker::~OZTimeMarker(&v18);
  v5 = 0;
LABEL_21:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v29);
  return v5;
}

void sub_2601D31E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZTimeMarker::~OZTimeMarker(va);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v6 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v5 + 32);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D3128);
}

double OZXGetTranscriptionDuration(uint64_t a1, CMTime *a2)
{
  v6 = 0;
  if (!__OZXGetTranscriptionDelegate(a1, &v6))
  {
    if (v6)
    {
      v4 = (*(*v6 + 48))(v6, 0);
      OZFigTimeForChannelSeconds(&v5, v4, 0x40000);
      result = *&v5.value;
      *a2 = v5;
    }
  }

  return result;
}

void sub_2601D32B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D32A0);
}

uint64_t OZXResetToDefaultTranscription(uint64_t a1)
{
  v2 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v2);
  if (!result)
  {
    if (v2)
    {
      (*(*v2 + 8))(v2);
      return 0;
    }
  }

  return result;
}

void sub_2601D3324(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D3318);
}

uint64_t OZXSetTranscriptionLocale(uint64_t a1, NSString *a2)
{
  v4 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v4);
  if (!result)
  {
    if (v4)
    {
      (*(*v4 + 72))(v4, a2);
      return 0;
    }
  }

  return result;
}

void sub_2601D33A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D3394);
}

uint64_t OZXSetTranscriptionText(uint64_t a1, NSString *a2)
{
  v5 = 0;
  v3 = __OZXGetTranscriptionDelegate(a1, &v5);
  if (!v3 && v5)
  {
    (*(*v5 + 16))(v5, a2);
  }

  return v3;
}

uint64_t OZXAdjustTranscriptionLineSpacingForCurrentFont(void *a1, const PCString *a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = 0;
  v5 = 0;
  v2 = __OZXGetTranscriptionDelegateAndLineSpacingChannel(a1, a2, &v4, &v5);
  result = 11;
  if (!v2 && v5)
  {
    if (v4)
    {
      (*(*v4 + 56))(v4);
      return 0;
    }
  }

  return result;
}

CFComparisonResult __OZXGetTranscriptionDelegateAndLineSpacingChannel(void *a1, const PCString *a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v11 = 0;
  result = __OZXGetPublishedChannel(a1, a2, &v11);
  if (result)
  {
    return result;
  }

  v8 = *(*a1 + 24);
  if (!v8)
  {
    return 7;
  }

  if (v11)
  {
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v8 + 720), v11);
    if (TargetChannelForProxy)
    {
      if (a4)
      {
        if (v10)
        {
          *a4 = v10;
        }
      }
    }
  }

  return __OZXGetTranscriptionDelegate(a1, a3);
}

void sub_2601D3594(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D357CLL);
}

uint64_t OZXSetTranscriptionMediaOffset(uint64_t a1, const CMTime *a2)
{
  v5 = 0;
  v3 = __OZXGetTranscriptionDelegate(a1, &v5);
  if (!v3 && v5)
  {
    (*(*v5 + 24))(v5, a2);
  }

  return v3;
}

uint64_t OZXSetTranscription(uint64_t a1, void *a2, const __CFString *a3, const CMTime *a4, uint64_t a5)
{
  v10 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v10);
  if (!result)
  {
    if (v10)
    {
      (*(*v10 + 32))(v10, a2, a3, a4, a5);
      return 0;
    }
  }

  return result;
}

void sub_2601D36A8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D3694);
}

uint64_t OZXTranscriptionHitTest(void *a1, CGPoint a2, const CMTime *a3, BOOL *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  v6 = *(v5 + 1208);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  v18[0] = v6;
  v18[1] = v6;
  v19 = v5 + 1200;
  v20 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v12 = v5 + 1200;
  v13 = v6;
  v14 = v5 + 1200;
  v15 = 0;
  while (v18[0] != v12)
  {
    if (v18[0] != v19)
    {
      v7 = *(v18[0] + 16);
      if (v7)
      {
        {
          OZRenderState::OZRenderState(&v11);
          epoch = a3->epoch;
          *&v11.var0.var0 = *&a3->value;
          v11.var0.var3 = epoch;
          v11.var20 = 0;
          v11.var25 = 0;
          operator new();
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v18);
  }

  v8 = 11;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v16);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v21);
  return v8;
}

void sub_2601D3974(void *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D394CLL);
}

uint64_t OZXSetShapePoints(uint64_t a1, void *a2, int a3, unsigned __int8 *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  v8 = MEMORY[0x277CC08F0];
  v70 = **&MEMORY[0x277CC08F0];
  OZScene::begin(v4, v68);
  OZScene::end_sel(v4, v66);
  if (!a3 || (v9 = v68[0], v68[0] == v66[0]))
  {
LABEL_22:
    v20 = PCString::PCString(&__p, "Rotoshape");
    OZChannelBase::getNextUniqueID(v20);
    v62 = xmmword_26084F780;
    SceneNode = OZApplication::createSceneNode(theApp, &v62);
    v22 = SceneNode;
    v12 = SceneNode - 200;
    if (SceneNode)
    {
      v23 = (SceneNode - 200);
    }

    else
    {
      v23 = 0;
    }

    PCString::~PCString(&__p);
    OZRotoshape::setInterpolation(v23, 1u);
    if (*a4 == 1)
    {
      (*(*(v23 + 2372) + 344))(v23 + 2372);
    }

    v24 = PCString::PCString(&__p, "Group");
    OZChannelBase::getNextUniqueID(v24);
    v62 = xmmword_260850780;
    v25 = OZApplication::createSceneNode(theApp, &v62);
    PCString::~PCString(&__p);
    v64 = *(v4 + 1376);
    v26 = *(v4 + 1392);
    v62 = *v8;
    v27 = *(v8 + 2);
    v65 = v26;
    v63 = v27;
    (*(*v25 + 1136))(v25, &v62, 0);
    OZScene::addRootNode(v4, v25);
    v28 = (v23 + 200);
    if (v22)
    {
      v29 = (v23 + 200);
    }

    else
    {
      v29 = 0;
    }

    (*(*v25 + 984))(v25, v29, 0);
    v64 = *(v4 + 1376);
    v30 = *(v4 + 1392);
    v62 = *v8;
    v31 = *(v8 + 2);
    v65 = v30;
    v63 = v31;
    (*(*v23 + 336))(v23, &v62, 0);
    if (a4[8] == 1)
    {
      v62 = xmmword_2608507F0;
      Behavior = OZApplication::createBehavior(theApp, &v62);
      (*(*v28 + 1128))(&v62, v23 + 25);
      OZChannelObjectRootBase::setTimeExtent((Behavior + 56), &v62, 0);
      OZWriteOnBehavior::setDefaultSpeedType(Behavior, 0);
      (*(*v28 + 360))(v23 + 25, Behavior, 0);
    }
  }

  else
  {
    do
    {
      if (v9 == v68[2] || (v10 = *(v9 + 16)) == 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
        if (v11)
        {
          v13 = *a4;
          if (v13 == OZShape::isMask((v11 + 18976)))
          {
            goto LABEL_14;
          }
        }
      }

      OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v68);
      v9 = v68[0];
    }

    while (v68[0] != v66[0]);
    if (!v12)
    {
      goto LABEL_22;
    }

LABEL_14:
    OZRotoshape::deleteAll(v12);
    if (a4[8] == 1)
    {
      v15 = *(v12 + 1208);
      if (v15 != v12 + 1200)
      {
        while (1)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            if (v17)
            {
              v18 = v17;
              if (((*(*v17 + 480))(v17) & 1) == 0)
              {
                break;
              }
            }
          }

          v15 = *(v15 + 8);
          if (v15 == v12 + 1200)
          {
            goto LABEL_33;
          }
        }

        (*(*v18 + 488))(v18);
        v64 = *(v4 + 1376);
        v33 = *(v4 + 1392);
        v62 = *v8;
        v34 = *(v8 + 2);
        v65 = v33;
        v63 = v34;
        OZChannelObjectRootBase::setTimeExtent((v18 + 56), &v62, 0);
      }
    }
  }

LABEL_33:
  if ((*a4 & 1) == 0)
  {
    LODWORD(v14) = *(a4 + 4);
    (*(*(v12 + 27320) + 712))(v12 + 27320, MEMORY[0x277CC08F0], 0, v14);
    (*(*(v12 + 26160) + 840))(v12 + 26160, MEMORY[0x277CC08F0], a4 + 24, 1);
  }

  v62 = 0uLL;
  v63 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v35 = [a2 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v35)
  {
    v36 = *v59;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(a2);
        }

        [*(*(&v58 + 1) + 8 * i) CGPointValue];
        __p.value = v38;
        *&__p.timescale = v39;
        v40 = *(&v62 + 1);
        if (*(&v62 + 1) >= v63)
        {
          v41 = std::vector<PCVector2<double>>::__emplace_back_slow_path<PCVector2<double>>(&v62, &__p);
        }

        else
        {
          **(&v62 + 1) = v38;
          *(v40 + 8) = v39;
          v41 = v40 + 16;
        }

        *(&v62 + 1) = v41;
      }

      v35 = [a2 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v35);
  }

  if (*(&v62 + 1) != v62)
  {
    __p = v70;
    OZRotoshape::addVertices(v12, &__p, &v62);
  }

  if (*a4 == 1)
  {
    OZRotoshape::closeCurve(v12);
  }

  OZRotoshape::finishCurve(v12);
  OZShape::setInterpolation((v12 + 18976), *(a4 + 1));
  if (a4[2] == 1)
  {
    memset(&__p, 0, sizeof(__p));
    OZChannelCurve::getEnabledVerticesList((v12 + 19184), MEMORY[0x277CC08F0], &v55);
    v43 = v55;
    v42 = v56;
    v44 = (v56 - v55) >> 4;
    if (v56 != v55)
    {
      v45 = 0;
      v46 = MEMORY[0x277CC08F0];
      do
      {
        if (v45 && v44 - 1 != v45)
        {
          OZChannelCurve::setVertexInterpolation(v12 + 19184, *v43, v43[1], 4);
          v53 = 0;
          v54 = 0;
          v51 = 0;
          v52 = 0;
          OZChannelCurve::getVertexDerivatives(v12 + 19184, *v43, v43[1], v46, &v54, &v53, &v52, &v51);
          std::vector<double>::push_back[abi:ne200100](&__p, &v54);
          std::vector<double>::push_back[abi:ne200100](&__p, &v53);
          std::vector<double>::push_back[abi:ne200100](&__p, &v52);
          std::vector<double>::push_back[abi:ne200100](&__p, &v51);
          v42 = v56;
        }

        ++v45;
        v43 += 2;
      }

      while (v43 != v42);
      v43 = v55;
    }

    if (v43 != v42)
    {
      v47 = 0;
      v48 = 0;
      v49 = v44 - 1;
      v50 = MEMORY[0x277CC08F0];
      do
      {
        if (v48 && v49 != v48)
        {
          OZChannelCurve::setInputTangents((v12 + 19184), *v43, v43[1], v50, *(__p.value + 8 * v47), *(__p.value + 8 * (v47 + 1)));
          OZChannelCurve::setOutputTangents((v12 + 19184), *v43, v43[1], v50, *(__p.value + 8 * (v47 + 2)), *(__p.value + 8 * (v47 + 3)));
          v47 += 4;
          v42 = v56;
        }

        ++v48;
        v43 += 2;
      }

      while (v43 != v42);
      v43 = v55;
    }

    if (v43)
    {
      v56 = v43;
      operator delete(v43);
    }

    if (__p.value)
    {
      *&__p.timescale = __p.value;
      operator delete(__p.value);
    }
  }

  if (v62)
  {
    *(&v62 + 1) = v62;
    operator delete(v62);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v67);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v69);
  return 0;
}

void sub_2601D42B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a2)
  {
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a39);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a48);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2601D4274);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZXCreateFontWithName(const __CFString *a1, CGFloat a2, const CGAffineTransform *a3, const __CTFont **a4)
{
  if (!a4)
  {
    return 11;
  }

  v5 = OZCreateFontWithName(a1, a2, a3);
  if (!v5)
  {
    return 11;
  }

  result = 0;
  *a4 = v5;
  return result;
}

void *OZXSetValueForChannel(void *result, uint64_t a2, void *a3, _DWORD *a4)
{
  if (result)
  {
    v7 = result;
    if (v8)
    {
      v9 = v8;
      v10 = [objc_msgSend(a3 valueForKeyPath:{a2), "intValue"}];
      if ((*(*v9 + 840))(v9))
      {
        v11 = *(*(*v9 + 840))(v9);
        if (v10)
        {
          (*(v11 + 32))();
        }

        else
        {
          (*(v11 + 40))();
        }
      }

      *a4 = 0;
    }

    if (v12)
    {
      v13 = v12;
      v14.n128_f64[0] = [objc_msgSend(a3 valueForKeyPath:{a2), "intValue"}];
      (*(*v13 + 712))(v13, MEMORY[0x277CC08F0], 0, v14);
      *a4 = 0;
    }

    if (v15)
    {
      v16 = v15;
      Tag = [objc_msgSend(a3 valueForKeyPath:{a2), "unsignedIntValue"}];
      OZChannelEnum::getNumberOfStrings(v16);
      if (*(v16 + 22) != *(v16 + 21))
      {
        Tag = OZChannelEnum::getTag(v16, Tag);
      }

      (*(*v16 + 712))(v16, MEMORY[0x277CC08F0], 0, Tag);
      *a4 = 0;
    }

    if (v18)
    {
      v19 = v18;
      v20 = [a3 valueForKeyPath:a2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43.var0 = 0;
        PCString::set(&v43, v20);
        (*(*v19 + 864))(v19, &v43, 1, 1);
        PCString::~PCString(&v43);
      }

      *a4 = 0;
    }

    if (v21)
    {
      v22 = v21;
      v41 = 0.0;
      v42 = 0.0;
      v40 = 0.0;
      [objc_msgSend(a3 valueForKeyPath:{a2), "getRed:green:blue:alpha:", &v42, &v41, &v40, 0}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v24 = v42;
      v25 = v41;
      v26 = v40;
      PCColor::PCColor(&v39, v24, v25, v26, 1.0, DeviceRGB);
      (*(*v22 + 840))(v22, MEMORY[0x277CC08F0], &v39, 0);
      CGColorSpaceRelease(DeviceRGB);
      *a4 = 0;
      PCCFRef<CGColorSpace *>::~PCCFRef(&v39.var1._obj);
    }

    if (v27)
    {
      v28 = v27;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      (*(*v28 + 712))(v28, MEMORY[0x277CC08F0], 0);
      *a4 = 0;
    }

    if (v29)
    {
      v30 = v29;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      OZChannel2D::setValue(v30, MEMORY[0x277CC08F0], v31, v31, 0);
      *a4 = 0;
    }

    if (v32)
    {
      v33 = v32;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      (*(*v33 + 712))(v33, MEMORY[0x277CC08F0], 0);
      *a4 = 0;
    }

    if (v34)
    {
      v35 = v34;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      (*(*v35 + 712))(v35, MEMORY[0x277CC08F0], 0);
      *a4 = 0;
    }

    if (v36)
    {
      v37 = v36;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      (*(*v37 + 712))(v37, MEMORY[0x277CC08F0], 0);
      *a4 = 0;
    }

    if (result)
    {
      v38 = result;
      [objc_msgSend(a3 valueForKey:{a2), "doubleValue"}];
      result = (*(v38[55] + 712))(v38 + 55, MEMORY[0x277CC08F0], 0);
      *a4 = 0;
    }
  }

  return result;
}

void *__OZXGetPublishedSettingDictionary(NSString *a1, NSNumber *a2, NSString *a3, NSObject *a4, NSArray *a5, NSString *a6)
{
  v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  [v12 setObject:a2 forKeyedSubscript:@"PVEffectParam_ObjectIDKey"];
  [v12 setObject:a1 forKeyedSubscript:@"PVEffectParam_NameKey"];
  [v12 setObject:a3 forKeyedSubscript:@"PVEffectParam_TypeKey"];
  [v12 setObject:a4 forKeyedSubscript:@"PVEffectParam_ValueKey"];
  [v12 setObject:a5 forKeyedSubscript:@"PVEffectParam_ValuesArrayKey"];
  [v12 setObject:a6 forKeyedSubscript:@"PVEffectParam_ChanRefKey"];
  return v12;
}

void *__OZXGetPublishedSettingForOZChannelObjectRoot(void *result, uint64_t a2, NSString *a3, NSString *a4)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a2)
    {
      if (*v4)
      {
        result = (*(*a2 + 840))(a2);
        if (result)
        {
          if (*(*v4 + 24))
          {
            v7 = [MEMORY[0x277CCABB0] numberWithBool:{(*(*result + 24))(result, 1, 1)}];
            return __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamBoo.isa, v7, 0, a4);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *__OZXGetPublishedSettingForOZChannelBool(uint64_t *result, OZChannel *this, NSString *a3, NSString *a4, CMTime *a5)
{
  if (result)
  {
    v5 = result;
    result = 0;
    if (this)
    {
      v6 = *v5;
      if (v6)
      {
        if (a5->flags)
        {
          if (*(v6 + 24))
          {
            v9 = [MEMORY[0x277CCABB0] numberWithBool:{OZChannel::getValueAsInt(this, a5, 0.0) != 0}];
            return __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamBoo.isa, v9, 0, a4);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *__OZXGetPublishedSettingForOZChannelEnum(uint64_t a1, OZChannel *this, NSString *a3, NSString *a4, CMTime *a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  if (!this || !*a1)
  {
    return v6;
  }

  if ((a5->flags & 1) == 0 || !*(*a1 + 24))
  {
    return 0;
  }

  ValueAsInt = OZChannel::getValueAsInt(this, a5, 0.0);
  if (*&this[1].var3 == this[1].var2)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    NumberOfStrings = OZChannelEnum::getNumberOfStrings(this);
    if (NumberOfStrings >= 1)
    {
      v12 = 0;
      do
      {
        -[NSArray addObject:](v10, "addObject:", [MEMORY[0x277CCABB0] numberWithInt:{OZChannelEnum::getTag(this, v12++)}]);
      }

      while (NumberOfStrings != v12);
    }
  }

  v6 = __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamEnu.isa, [MEMORY[0x277CCABB0] numberWithInt:ValueAsInt], v10, a4);

  return v6;
}

void *__OZXGetPublishedSettingForOZChannelText(uint64_t a1, OZChannelBase *a2, NSString *a3, NSString *a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  if (a2 && *a1)
  {
    if ((*(a5 + 12) & 1) != 0 && *(*a1 + 24))
    {
      (*(a2->var0 + 106))(&v19, a2);
      ObjectManipulator = OZChannelBase::getObjectManipulator(a2);
      {
        v12 = v11;
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[70]];
        v14 = (*(*v12 + 120))(v12, a5, 0);
        v15 = v14;
        if (v14)
        {
          v16 = @"effect.param.attributedstring";
          v17 = v14;
LABEL_12:
          v6 = __OZXGetPublishedSettingDictionary(a3, v13, &v16->isa, v17, 0, a4);

          PCString::~PCString(&v19);
          return v6;
        }
      }

      else
      {
        v13 = 0;
      }

      v17 = PCString::ns_str(&v19);
      v15 = 0;
      v16 = @"effect.param.string";
      goto LABEL_12;
    }

    return 0;
  }

  return v6;
}

void *__OZXGetPublishedSettingForOZChannelColorNoAlpha(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  if (a2 && *a1)
  {
    if ((*(a5 + 12) & 1) != 0 && *(*a1 + 24))
    {
      PCColor::PCColor(&v14);
      (*(*a2 + 824))(a2, a5, &v14, 0.0);
      v13 = 0;
      v12 = 0.0;
      PCColor::getColorSpace(&v14, &v11);
      PCColor::getRGB(&v14, &v13 + 1, &v13, &v12, &v11);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
      v6 = __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamCol.isa, [MEMORY[0x277D75348] colorWithRed:*(&v13 + 1) green:*&v13 blue:v12 alpha:1.0], 0, a4);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v14.var1._obj);
      return v6;
    }

    return 0;
  }

  return v6;
}

uint64_t *__OZXGetPublishedSettingForOZChannelUint32(uint64_t *result, OZChannel *this, NSString *a3, NSString *a4, CMTime *a5)
{
  if (result)
  {
    v5 = result;
    result = 0;
    if (this)
    {
      v6 = *v5;
      if (v6)
      {
        if (a5->flags)
        {
          if (*(v6 + 24))
          {
            v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{OZChannel::getValueAsUint(this, a5, 0.0)}];
            return __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamUin.isa, v9, 0, a4);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *__OZXGetPublishedSettingForOZChannelDouble(uint64_t *result, OZChannel *this, NSString *a3, NSString *a4, CMTime *a5)
{
  if (result)
  {
    v5 = result;
    result = 0;
    if (this)
    {
      v6 = *v5;
      if (v6)
      {
        if (a5->flags)
        {
          if (*(v6 + 24))
          {
            OZChannel::getValueAsDouble(this, a5, 0.0);
            return __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamDou.isa, [MEMORY[0x277CCABB0] numberWithDouble:?], 0, a4);
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t *__OZXGetPublishedSettingForOZChannelScale(uint64_t *result, uint64_t a2, NSString *a3, NSString *a4, CMTime *a5)
{
  if (result)
  {
    v6 = result;
    result = 0;
    if (a2)
    {
      v7 = *v6;
      if (v7)
      {
        if ((a5->flags & 1) != 0 && *(v7 + 24))
        {
          OZChannel::getValueAsDouble((a2 + 136), a5, 0.0);
          v12 = v11;
          OZChannel::getValueAsDouble((a2 + 288), a5, 0.0);
          return __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamDou.isa, [MEMORY[0x277CCABB0] numberWithDouble:v12], 0, a4);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *__OZXGetPublishedSettingForOZChannelShape(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, __int128 *a5)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  if (!a2 || !*a1)
  {
    return v5;
  }

  if ((*(a5 + 12) & 1) == 0 || !*(*a1 + 24))
  {
    return 0;
  }

  v9 = *(a2 + 856);
  OZShapeRenderState::OZShapeRenderState(&v22);
  v22 = *a5;
  v23 = *(a5 + 2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  OZShape::getSamples(v9, &v22, &v19, &__p);
  v10 = __p;
  v11 = v20 - v19;
  if (v20 == v19 || v11 != v17 - __p)
  {
    v5 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11 >> 3];
    if (v20 != v19)
    {
      v13 = 0;
      if (((v20 - v19) >> 3) <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = (v20 - v19) >> 3;
      }

      do
      {
        if (v13 >= (v20 - v19) >> 3 || v13 >= (v17 - __p) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        -[NSArray addObject:](v12, "addObject:", [MEMORY[0x277CCAE60] valueWithCGPoint:{*(v19 + v13), *(__p + v13)}]);
        ++v13;
      }

      while (v14 != v13);
    }

    v5 = __OZXGetPublishedSettingDictionary(a3, 0, &cfstr_EffectParamPoi.isa, 0, v12, a4);
    v10 = __p;
  }

  if (v10)
  {
    v17 = v10;
    operator delete(v10);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v24);
  return v5;
}

uint64_t __OZXAddPublishedSettingsToArray(uint64_t result, void *a2, OZChannelBase *this, uint64_t a4, uint64_t a5)
{
  if (result && a2 && this && *a2 && (*(a5 + 12) & 1) != 0)
  {
    OZChannelBase::getRef(this, 1);
  }

  return result;
}

uint64_t __OZXGetPublishedSettings(void *a1, char a2, CMTime *a3, BOOL a4, CMTime *a5)
{
  if (a1)
  {
    if (*a1)
    {
      v6 = *(*a1 + 24);
      if (v6)
      {
        v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:21];
        v10 = *(v6 + 864);
        if (v10)
        {
          v11 = v9;
          for (i = *v10; ; ++i)
          {
            if (i == v10[1])
            {
              return v11;
            }

            v13 = *i;
            if (a2)
            {
              break;
            }

            v14 = OZChannelBase::testFlag(*i, 2);
            if (v13)
            {
              v15 = v14;
            }

            else
            {
              v15 = 1;
            }

            if ((v15 & 1) == 0)
            {
              goto LABEL_14;
            }

LABEL_18:
            ;
          }

          if (!v13)
          {
            goto LABEL_18;
          }

LABEL_14:
          if (v16)
          {
            v17 = v16;
            v18 = PCString::ns_str(v16 + 4);
            TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v6 + 720), v17);
            if (TargetChannelForProxy)
            {
              if (TargetChannelForProxy != v13)
              {
                v21 = *&a3->value;
                epoch = a3->epoch;
                __OZXAddPublishedSettingsToArray(v11, a1, TargetChannelForProxy, v18, &v21);
              }
            }
          }

          goto LABEL_18;
        }
      }
    }
  }

  return 0;
}

uint64_t OZXGetPublishedSettings(void *a1)
{
  v2 = MEMORY[0x277CC08F0];
  v7 = **&MEMORY[0x277CC08F0];
  v6 = **&MEMORY[0x277CC0898];
  OZXGetPosterFrameTime(a1, &v6);
  if (v3 || (v6.flags & 1) == 0)
  {
    v6 = *v2;
  }

  v5 = v6;
  return __OZXGetPublishedSettings(a1, 0, &v7, 1, &v5);
}

uint64_t OZXGetPublishedSetting(void *a1, PCString *a2, CMTime *a3, char a4)
{
  v13 = *a3;
  v9 = *a3;
  v5 = __OZXGetPublishedSettings(a1, a4, &v9, 0, &v13);
  v9.value = 0;
  *&v9.timescale = &v9;
  v9.epoch = 0x3052000000;
  v10 = __Block_byref_object_copy__17;
  v11 = __Block_byref_object_dispose__17;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = ___Z22OZXGetPublishedSettingPvR8PCString6CMTimeb_block_invoke;
  v8[3] = &unk_279AAA368;
  v8[4] = &v9;
  v8[5] = a2;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = *(*&v9.timescale + 40);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_2601D6088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___Z22OZXGetPublishedSettingPvR8PCString6CMTimeb_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = -[__CFString isEqualToString:](PCString::ns_str(*(a1 + 40)), "isEqualToString:", [a2 objectForKeyedSubscript:@"PVEffectParam_NameKey"]);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t OZXSetPublishedSettings(uint64_t *a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v67 = 11;
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 7;
  }

  v5 = *(*(v3 + 1584) + 168);
  if (v5)
  {
    OZNotificationManager::processNotifications(v5);
  }

  v6 = *(v3 + 864);
  if (!v6)
  {
    return 11;
  }

  v56 = v3;
  v7 = *v6;
  if (*v6 != *(v6 + 8))
  {
    v53 = v6;
    do
    {
      v8 = *v7;
      if (*v7)
      {
      }

      else
      {
        v9 = 0;
      }

      v54 = v7;
      v55 = v8;
      v10 = OZChannelBase::testFlag(v8, 2);
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v12 = [a2 countByEnumeratingWithState:&v63 objects:v68 count:16];
        if (v12)
        {
          v13 = *v64;
          do
          {
            v14 = 0;
            do
            {
              if (*v64 != v13)
              {
                objc_enumerationMutation(a2);
              }

              v15 = *(*(&v63 + 1) + 8 * v14);
              v62.var0 = 0;
              PCString::set(&v62, v15);
              if (!PCString::compare(&v9->var4, &v62))
              {
                TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v56 + 90), v9);
                v17 = TargetChannelForProxy;
                if (TargetChannelForProxy)
                {
                  if (TargetChannelForProxy != v55)
                  {
                    OZXSetValueForChannel(TargetChannelForProxy, v15, a2, &v67);
                    if (v18)
                    {
                      v19 = v18;
                      v20 = [objc_msgSend(a2 valueForKeyPath:{v15), "intValue"}];
                      (*(*v19 + 712))(v19, MEMORY[0x277CC08F0], 0, v20);
                      v67 = 0;
                    }

                    if (v21)
                    {
                      v22 = v21;
                      Tag = [objc_msgSend(a2 valueForKeyPath:{v15), "unsignedIntValue"}];
                      if (Tag < OZChannelEnum::getNumberOfStrings(v22))
                      {
                        if (*(v22 + 22) != *(v22 + 21))
                        {
                          Tag = OZChannelEnum::getTag(v22, Tag);
                        }

                        (*(*v22 + 712))(v22, MEMORY[0x277CC08F0], 0, Tag);
                        v67 = 0;
                      }
                    }

                    if (v24)
                    {
                      v25 = v24;
                      v26 = [a2 valueForKeyPath:v15];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v61.var0 = 0;
                        PCString::set(&v61, v26);
                        (*(*v25 + 864))(v25, &v61, 1, 1);
                        PCString::~PCString(&v61);
                      }

                      v67 = 0;
                    }

                    if (v27)
                    {
                      v28 = v27;
                      v59 = 0.0;
                      v60 = 0.0;
                      v58 = 0.0;
                      [objc_msgSend(a2 valueForKeyPath:{v15), "getRed:green:blue:alpha:", &v60, &v59, &v58, 0}];
                      DeviceRGB = CGColorSpaceCreateDeviceRGB();
                      v30 = v60;
                      v31 = v59;
                      v32 = v58;
                      PCColor::PCColor(&v57, v30, v31, v32, 1.0, DeviceRGB);
                      (*(*v28 + 840))(v28, MEMORY[0x277CC08F0], &v57, 0);
                      CGColorSpaceRelease(DeviceRGB);
                      v67 = 0;
                      PCCFRef<CGColorSpace *>::~PCCFRef(&v57.var1._obj);
                    }

                    if (v33)
                    {
                      v34 = v33;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      (*(*v34 + 712))(v34, MEMORY[0x277CC08F0], 0);
                      v67 = 0;
                    }

                    if (v35)
                    {
                      v36 = v35;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      OZChannel2D::setValue(v36, MEMORY[0x277CC08F0], v37, v37, 0);
                      v67 = 0;
                    }

                    if (v38)
                    {
                      v39 = v38;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      (*(*v39 + 712))(v39, MEMORY[0x277CC08F0], 0);
                      v67 = 0;
                    }

                    if (v40)
                    {
                      v41 = v40;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      (*(*v41 + 712))(v41, MEMORY[0x277CC08F0], 0);
                      v67 = 0;
                    }

                    if (v42)
                    {
                      v43 = v42;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      (*(*v43 + 712))(v43, MEMORY[0x277CC08F0], 0);
                      v67 = 0;
                    }

                    if (v44)
                    {
                      v45 = v44;
                      [objc_msgSend(a2 valueForKey:{v15), "doubleValue"}];
                      (*(v45[55] + 712))(v45 + 55, MEMORY[0x277CC08F0], 0);
                      v67 = 0;
                    }

                    ObjectManipulator = OZChannelBase::getObjectManipulator(v17);
                    if (ObjectManipulator)
                    {
                      if (v47)
                      {
                        v48 = v47;
                        if (*(v47 + 136) == v17)
                        {
                          CurrentSnapshot = OZRigWidget::getCurrentSnapshot(v47);
                          if (CurrentSnapshot)
                          {
                            OZRigWidget::setActiveSnapshot(v48, *(CurrentSnapshot + 32), 1);
                          }
                        }
                      }
                    }
                  }
                }
              }

              PCString::~PCString(&v62);
              ++v14;
            }

            while (v12 != v14);
            v50 = [a2 countByEnumeratingWithState:&v63 objects:v68 count:16];
            v12 = v50;
          }

          while (v50);
        }
      }

      v7 = v54 + 1;
    }

    while (v54 + 1 != *(v53 + 8));
  }

  OZDocument::postNotification(v56[198], 12);
  v51 = *(v56[198] + 21);
  if (v51)
  {
    OZNotificationManager::processNotifications(v51);
  }

  OZScene::dirty(v56);
  return v67;
}

uint64_t OZXSetDuration(void *a1, const CMTime *a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  memset(&v26, 0, sizeof(v26));
  OZSceneSettings::getFrameDuration((v2 + 336), &time1);
  v24 = *(v2 + 1352);
  v22 = *(v2 + 1376);
  PC_CMTimeSaferAdd(&v24, &v22, &v20);
  v24 = v20;
  v22 = time1;
  PC_CMTimeSaferSubtract(&v24, &v22, &v26);
  OZScene::begin(v2, &v24);
  v4.n128_f64[0] = OZScene::end_sel(v2, &v22);
  while (v24.value != v22.value)
  {
    if (v24.value != v24.epoch)
    {
      v5 = *(v24.value + 16);
      if (v5)
      {
        (*(*v5 + 1128))(&v20, *(v24.value + 16), v4);
        time1 = v20;
        time2 = v21;
        PC_CMTimeSaferAdd(&time1, &time2, &v27);
        time1 = v27;
        time2 = v26;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          time1 = v20;
          v19 = *a2;
          (*(*v5 + 1136))(v5, &time1, 0);
        }

        for (i = v5[126]; i != v5 + 125; i = i[1])
        {
          v7 = i[2];
          (*(*v7 + 608))(&time1, v7);
          time2 = time1;
          v27 = v19;
          PC_CMTimeSaferAdd(&time2, &v27, &v17);
          time2 = v17;
          v27 = v26;
          if ((CMTimeCompare(&time2, &v27) & 0x80000000) == 0)
          {
            time2 = time1;
            v15 = *&a2->value;
            epoch = a2->epoch;
            OZChannelObjectRootBase::setTimeExtent((v7 + 56), &time2, 0);
          }
        }

        v8 = v5 + 122;
        for (j = v5[123]; j != v8; j = j[1])
        {
          v10 = j[2];
          (*(*v10 + 592))(&time1, v10);
          time2 = time1;
          v27 = v19;
          PC_CMTimeSaferAdd(&time2, &v27, &v17);
          time2 = v17;
          v27 = v26;
          if ((CMTimeCompare(&time2, &v27) & 0x80000000) == 0)
          {
            time2 = time1;
            v15 = *&a2->value;
            epoch = a2->epoch;
            OZChannelObjectRootBase::setTimeExtent((v10 + 88), &time2, 0);
          }
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(&v24);
  }

  *&v20.value = *(v2 + 1352);
  v12 = *(v2 + 1368);
  *&v21.value = *&a2->value;
  v13 = a2->epoch;
  v20.epoch = v12;
  v21.epoch = v13;
  OZScene::setTimeRange(v2, &v20);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v25);
  return 0;
}

void sub_2601D6FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a37);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v37 - 192);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D6FA8);
}

uint64_t OZXSetCameraQuaternion(uint64_t *a1, const CMTime *a2, double *a3)
{
  if (!a1)
  {
    return 7;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 7;
  }

  ActiveCamera = OZScene::getActiveCamera(*(v3 + 24), a2);
  Node = OZScene::getNode(v4, ActiveCamera);
  if (!Node)
  {
    return 11;
  }

  if (!v8)
  {
    return 11;
  }

  v9 = v8;
  v10 = *(v4 + 188);
  if (v10)
  {
    OZChannelBase::setRangeName(v10, 1);
  }

  v28 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v26 = 0u;
  v27 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v19, a3);
  memset(v14, 0, sizeof(v14));
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v15 = 4;
  PCMatrix44Tmpl<double>::getTransformation(&v19, v14);
  v12 = v16;
  v13 = v17;
  OZTransformNode::setRotation(v9, &v12, MEMORY[0x277CC08F0]);
  return 0;
}

uint64_t OZXFindFilter(uint64_t a1, const PCString *a2, void *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  OZScene::begin(*(*a1 + 24), v16);
  OZScene::end_sel(v3, v14);
  v6 = 11;
  while (v16[0] != v14[0])
  {
    if (v16[0] != v16[2])
    {
      v7 = *(v16[0] + 16);
      if (v7)
      {
        v8 = v7 + 976;
        for (i = *(v7 + 984); i != v8; i = *(i + 8))
        {
          v10 = *(i + 16);
          InternalName = OZObjectManipulator::getInternalName((v10 + 48));
          if (!PCString::compare(InternalName, a2))
          {
            if (v10)
            {
            }

            else
            {
              v12 = 0;
            }

            v6 = 0;
            *a3 = v12;
          }
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v16);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v15);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v17);
  return v6;
}

void sub_2601D7300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D72E0);
}

uint64_t OZXEquirectProjectFilterSetFrontFacing(void *a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  v13 = 0;
  PCString::PCString(&v12, "SelfieEffectUsesCameraFacing");
  v6 = __OZXGetPublishedChannel(a1, &v12, &v13);
  PCString::~PCString(&v12);
  if (!v6)
  {
    v7 = v13;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v4 + 720), v13);
    if (TargetChannelForProxy)
    {
      v9 = TargetChannelForProxy == v7;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (v10)
      {
        (*(*v10 + 712))(v10, MEMORY[0x277CC08F0], 0, a3);
      }
    }
  }

  return v6;
}

void sub_2601D7468(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D7450);
}

uint64_t OZXEquirectProjectFilterSetQuaternion(void *a1, double a2, double a3, double a4, double a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v6 = *(*a1 + 24);
  if (!v6)
  {
    return 7;
  }

  v7 = 0;
  *v16 = a2;
  *&v16[1] = a3;
  *&v16[2] = a4;
  *&v16[3] = a5;
  v8 = MEMORY[0x277CC08F0];
  do
  {
    v15 = 0;
    PCString::PCString(&v14, off_279AAA388[v7]);
    v9 = __OZXGetPublishedChannel(a1, &v14, &v15);
    PCString::~PCString(&v14);
    if (!v9)
    {
      v10 = v15;
      TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v6 + 720), v15);
      if (TargetChannelForProxy)
      {
        if (TargetChannelForProxy != v10)
        {
          if (v12)
          {
            (*(*v12 + 712))(v12, v8, 0, *&v16[v7]);
          }
        }
      }
    }

    ++v7;
  }

  while (v7 != 4);
  return v9;
}

void sub_2601D762C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2601D75ECLL);
  }

  _Unwind_Resume(exception_object);
}

CFComparisonResult OZXSetSelfieRollRadians(void *a1, double a2)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v12 = 0;
  PCString::PCString(&v11, "SelfieDeviceRollAngle");
  v5 = __OZXGetPublishedChannel(a1, &v11, &v12);
  PCString::~PCString(&v11);
  if (!v5)
  {
    v6 = v12;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v3 + 720), v12);
    if (TargetChannelForProxy)
    {
      v8 = TargetChannelForProxy == v6;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      if (v9)
      {
        (*(*v9 + 712))(v9, MEMORY[0x277CC08F0], 0, a2 / 6.28318531);
      }
    }
  }

  return v5;
}

void sub_2601D77A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D7788);
}

uint64_t OZXSetUseRenderCache(void *a1, unsigned int a2, int a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  Node = OZScene::getNode(v3, a2);
  if (!Node)
  {
    return 11;
  }

  if (!v6)
  {
    return 11;
  }

  OZElement::cacheRenders(v6, a3);
  return 0;
}

uint64_t OZXClearCachedRender(void *a1, unsigned int a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  Node = OZScene::getNode(v2, a2);
  if (!Node)
  {
    return 11;
  }

  if (!v4)
  {
    return 11;
  }

  OZElement::clearCachedRender(v4);
  return 0;
}

uint64_t OZXCreateGroupWithGroup(OZDocument **a1, int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  if (!a1)
  {
    return 7;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v7 = *(v6 + 3);
  if (!v7)
  {
    return 7;
  }

  Node = OZScene::getNode(*(v6 + 3), a3);
  if (!Node)
  {
    return 7;
  }

  if (!v11)
  {
    return 7;
  }

  v12 = v11;
  v13 = OZChannelBase::setRangeName(*(v7 + 1504), 1);
  *a5 = OZChannelBase::getNextUniqueID(v13);
  v18[0] = xmmword_260850780;
  SceneNode = OZApplication::createSceneNode(theApp, v18);
  if (OZGroup::is360Group(v12))
  {
    return 11;
  }

  OZScene::addRootNodeBefore(v7, SceneNode, v12);
  OZTransformNode::setTranslation(SceneNode, 0.0, 0.0, 0.0, MEMORY[0x277CC08F0]);
  OZGroup::setDimensionType(SceneNode, a4, 1);
  OZSceneNode::removeFromParent(v12);
  (*(*SceneNode + 992))(SceneNode, v12, 0);
  TimeOffset = OZChannelObjectRootBase::getTimeOffset((v12 + 56), v18);
  (*(*SceneNode + 1120))(SceneNode, v18, 0, TimeOffset);
  (*(*v12 + 1128))(v18, v12);
  (*(*SceneNode + 1136))(SceneNode, v18, 0);
  OZScene::setCurrentObject(v7, SceneNode);
  OZDocument::postNotification(*a1, 60);
  v17 = *(*a1 + 21);
  if (v17)
  {
    OZNotificationManager::processNotifications(v17);
  }

  OZScene::dirty(v7);
  return 0;
}

void sub_2601D7B9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D7A08);
}

uint64_t OZXCreateCamera(OZChannelBase *a1, PCString a2, unsigned int *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (a1->var0)
  {
    v3 = *(a1->var0 + 3);
    if (v3)
    {
      *a3 = OZChannelBase::getNextUniqueID(a1);
      *&v6.value = xmmword_26084FA40;
      SceneNode = OZApplication::createSceneNode(theApp, &v6);
      (*(*SceneNode + 1136))(SceneNode, v3 + 1352, 0);
      OZScene::addRootNode(v3, SceneNode);
      v6 = **&MEMORY[0x277CC08F0];
      OZCamera::cameraAtTime(SceneNode, &v6);
    }
  }

  return 7;
}

void sub_2601D7E20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCSharedCount::~PCSharedCount(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D7E00);
}

uint64_t OZXSetCameraTransform(uint64_t a1, int a2, __int128 *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v6 = *(v3 + 188);
  if (v6)
  {
    OZChannelBase::setRangeName(v6, 1);
  }

  memset(v11, 0, sizeof(v11));
  v12 = 4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  *&v9._isIntroOptional = 0x3FF0000000000000;
  v9._pBuildInEnableChan = 0;
  v9._pBuildOutEnableChan = 0;
  v10 = 0;
  if (!PCMatrix44Tmpl<double>::getTransformation(a3, v11, &v9._isIntroOptional))
  {
    return 11;
  }

  OZSceneCamera::OZSceneCamera(&v9, v3, a2);
  LiRenderingTechnology::setRasterizeEdges(&v9, 0);
  v8 = **&MEMORY[0x277CC08F0];
  METimeRemap::setOutroDuration(&v9, &v8);
  OZSceneCamera::setTranslation(&v9, v11);
  OZSceneCamera::setRotation(&v9, &v9._isIntroOptional);
  OZSceneCamera::~OZSceneCamera(&v9);
  return 0;
}

uint64_t OZXGetCameraTransform(uint64_t a1, int a2, CMTime *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v5 = *(*a1 + 24);
  if (!v5)
  {
    return 7;
  }

  OZSceneCamera::OZSceneCamera(&v25, v5, a2);
  LiRenderingTechnology::setRasterizeEdges(v6, 0);
  v12 = **&MEMORY[0x277CC08F0];
  METimeRemap::setOutroDuration(&v25, &v12);
  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  OZSceneCamera::getTranslation(&v25, &v22);
  v21[0] = 1.0;
  memset(&v21[1], 0, 24);
  OZSceneCamera::getRotation(&v25, v21);
  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v14 = 0x3FF0000000000000;
  v12.value = 0x3FF0000000000000;
  *&v12.timescale = 0u;
  v13 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = PCMatrix44Tmpl<double>::leftRotate(&v12.value, v21);
  v7.n128_u64[0] = v22;
  PCMatrix44Tmpl<double>::leftTranslate(&v12, v7, v23, v24);
  if (&v12 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v9 = (&a3->value + i);
      v10 = *(&v12.epoch + i);
      *v9 = *(&v12.value + i);
      v9[1] = v10;
    }
  }

  OZSceneCamera::~OZSceneCamera(&v25);
  return 0;
}

void sub_2601D80D8(void *a1)
{
  OZSceneCamera::~OZSceneCamera((v1 - 104));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D80C0);
}

uint64_t OZXSetCameraProjection(uint64_t a1, unsigned int a2, double *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v6 = *(v3 + 188);
  if (v6)
  {
    OZChannelBase::setRangeName(v6, 1);
  }

  Node = OZScene::getNode(v3, a2);
  if (!Node)
  {
    return 6;
  }

  if (!v8)
  {
    return 6;
  }

  v9 = v8;
  OZChannel::getValueAsInt((v8 + 6552), MEMORY[0x277CC08F0], 0.0);
  v10 = atan(1.0 / *a3);
  (*(v9[851] + 712))(v9 + 851, MEMORY[0x277CC08F0], 0, (v10 + v10) * 180.0 / 3.14159265);
  v11 = a3[10];
  v12 = a3[11];
  (*(v9[870] + 712))(v9 + 870, MEMORY[0x277CC08F0], 0, v12 / v11);
  (*(v9[889] + 712))(v9 + 889, MEMORY[0x277CC08F0], 0, -v12 / (-1.0 - v11));
  return 0;
}

void sub_2601D82F8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D82E0);
}

uint64_t OZXGetCameraLocalToClipMatrix(uint64_t a1, unsigned int a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 7;
  }

  Node = OZScene::getNode(v2, a2);
  if (Node)
  {
    if (v4)
    {
      v6 = **&MEMORY[0x277CC08F0];
      OZCamera::cameraAtTime(v4, &v6);
    }
  }

  return 6;
}

void sub_2601D8474(void *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D8460);
}

uint64_t getCameraWorldUnitScale(void *a1, unsigned int a2, double *a3)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  Node = OZScene::getNode(v3, a2);
  if (Node)
  {
    if (v5)
    {
      v8 = **&MEMORY[0x277CC08F0];
      OZCamera::cameraAtTime(v5, &v8);
    }
  }

  return 6;
}

void sub_2601D85E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PCSharedCount::~PCSharedCount(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D85B0);
}

uint64_t OZXEnableCamera(void *a1, unsigned int a2, int a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  v6 = *(v3 + 188);
  if (v6)
  {
    OZChannelBase::setRangeName(v6, 1);
  }

  Node = OZScene::getNode(v3, a2);
  if (!Node)
  {
    return 6;
  }

  if (!v8)
  {
    return 6;
  }

  if (a3)
  {
    OZCamera::enable(v8);
  }

  else
  {
    (*(*(v8 + 2) + 40))();
  }

  return 0;
}

void sub_2601D8720(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D870CLL);
}

uint64_t OZXGetIsCameraEnabled(void *a1, unsigned int a2, BOOL *a3)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  Node = OZScene::getNode(v3, a2);
  if (!Node)
  {
    return 6;
  }

  if (!v6)
  {
    return 6;
  }

  v7 = (*(v6[2] + 24))();
  result = 0;
  *a3 = v7;
  return result;
}

void sub_2601D8808(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D87F8);
}

uint64_t OZXSetImageElementFootage(uint64_t *a1, unsigned int a2, char *a3, OZChannelObjectRoot *a4, int a5)
{
  v49[3] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 7;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 7;
  }

  v7 = *(v6 + 24);
  if (!v7)
  {
    return 7;
  }

  Object = OZScene::getObject(*(v6 + 24), a2);
  if (!Object)
  {
    return 11;
  }

  v13 = 11;
  if (a3)
  {
    v14 = v12;
    if (v12)
    {
      if (*a3)
      {
        v15 = PCURL::PCURL(&v42, a3, 0);
        v41 = 0;
        Instance = PMMediaManager::getInstance(v15);
        if (PMMediaManager::open(Instance, &v42, &v41, 0))
        {
          goto LABEL_35;
        }

        PCSharedCount::PCSharedCount(v48);
        v49[0] = 0;
        if (PMClip::getVideoDescription(v41, __dst))
        {
          PMClip::close(v41);
          if (v41)
          {
            PMClip::~PMClip(v41);
            MEMORY[0x2666E9F00]();
          }

          v17 = 0;
        }

        else
        {
          PCURL::getShortFilename(&v42, &time);
          OZChannelBase::getNextUniqueID(v19);
          *&v39.value = xmmword_260850040;
          SceneNode = OZApplication::createSceneNode(theApp, &v39);
          PCString::~PCString(&time);
          if (SceneNode)
          {
            memset(&v40, 0, sizeof(v40));
            CMTimeMake(&v40, value, v47);
            LODWORD(v21) = value;
            CMTimeMakeWithSeconds(&v39, v21 / v47, 0x40000);
            v40 = v39;
            time = v39;
            CMTimeConvertScale(&v39, &time, v47, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v40 = v39;
            if (a5)
            {
              OZXSetDuration(a1, &v40);
            }

            PCSharedCount::PCSharedCount(&v39);
            OZScene::addNode(v7, SceneNode, &v39, 1, 0, 0);
            PCString::~PCString(&v39);
            OZFootage::setClip(SceneNode, v41, 1, 1, 0);
            (*(*SceneNode + 1128))(&v39, SceneNode);
            v22 = *(v14 + 120);
            memset(&v38, 0, sizeof(v38));
            v23 = (*(*v14 + 640))(v14);
            LoopOffset = OZRetimingUtil::GetLoopOffset(v23, &v38);
            memset(&v37, 0, sizeof(v37));
            v25 = (*(*v14 + 640))(v14, LoopOffset);
            OZRetimingUtil::GetMaxLoopOffset(v25, &v37);
            Footage = OZImageElement::getFootage(v14);
            v27 = Footage;
            if (Footage)
            {
              v28 = (*(*Footage + 1376))(Footage) == 1;
            }

            else
            {
              v28 = 0;
            }

            (*(*v14 + 1448))(v14, SceneNode, 0, 0);
            OZScene::recalcDependencies(v7);
            if (v27 && ((*(*v27 + 1336))(v27) & 1) == 0)
            {
              v29 = (*(*v27 + 640))(v27);
              (*(*v27 + 608))(v27, v29);
            }

            v30 = (*(*v14 + 640))(v14);
            OZRetimingUtil::SetEndCondition(v30, a4);
            v31 = (*(*v14 + 640))(v14);
            time = v39;
            OZSceneSettings::getFrameDuration((v7 + 42), &time2);
            OZRetimingUtil::SetTimeOffsetAndExtent(v31, &time, &v39, &time2, v32);
            if (v22)
            {
              v33 = (*(*v22 + 640))(v22);
              OZChannelObjectRoot::recomputeTimeRangeFromChildren(v33, 1, 1, 1, 1, 0);
            }

            if (a4)
            {
              if (v28 || (time = v38, time2 = v37, !CMTimeCompare(&time, &time2)))
              {
                v34 = (*(*v14 + 640))(v14);
                v35 = (*(*v14 + 640))(v14);
                OZRetimingUtil::GetMaxLoopOffset(v35, &time);
                OZRetimingUtil::SetLoopOffset(v34, &time, v36);
              }
            }

            v13 = 2;
            v17 = 1;
          }

          else
          {
            PMClip::close(v41);
            if (v41)
            {
              PMClip::~PMClip(v41);
              MEMORY[0x2666E9F00]();
            }

            v17 = 0;
            v13 = 2;
          }
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(v49);
        PCString::~PCString(v48);
        if (v17)
        {
LABEL_35:
          PCURL::~PCURL(&v42);
          return 0;
        }

        else
        {
          PCURL::~PCURL(&v42);
        }
      }
    }
  }

  return v13;
}

uint64_t OZXSetStickerPathWithPublishedParam(void *a1, PCString *a2, PCString *a3)
{
  PCAutoreleasePool::PCAutoreleasePool(&v32);
  if (!a1 || !*a1)
  {
    goto LABEL_23;
  }

  if (PCString::empty(a3))
  {
    v6 = 11;
    goto LABEL_24;
  }

  v7 = *(*a1 + 24);
  if (!v7)
  {
LABEL_23:
    v6 = 7;
    goto LABEL_24;
  }

  v31 = 0;
  v6 = __OZXGetPublishedChannel(a1, a2, &v31);
  if (!v6)
  {
    v8 = v31;
    TargetChannelForProxy = OZPublishSettings::getTargetChannelForProxy((v7 + 720), v31);
    v6 = 0;
    if (TargetChannelForProxy)
    {
      if (TargetChannelForProxy != v8)
      {
        {
          if (v6)
          {
            PCString::PCString(&v30, a3);
            PCURL::PCURL(v29, &v30, 0);
            v13 = *(v6 + 80);
            CStr = PCString::createCStr(a3);
            v6 = OZXSetImageElementFootage(a1, v13, CStr, 1, 1);
            if (!v6)
            {
              v27 = *(v7 + 1376);
              v28 = *(v7 + 1392);
              v15 = *(v7 + 1136);
              v18 = *(v15 + 8);
              v16 = (v15 + 8);
              v17 = v18;
              if (v18 != v16 + 1)
              {
                while (*(v17 + 27) != 7)
                {
                  v19 = v17[1];
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
                      v20 = v17[2];
                      v21 = *v20 == v17;
                      v17 = v20;
                    }

                    while (!v21);
                  }

                  v17 = v20;
                  if (v20 == v16 + 1)
                  {
                    goto LABEL_27;
                  }
                }

                OZTimeMarker::OZTimeMarker(&v24, (v17 + 4));
                v25 = v27;
                v26 = v28;
                v23 = std::__tree<OZTimeMarker>::find<OZTimeMarker>(v16, (v17 + 4));
                std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(v16, v23);
                (**(v23 + 32))();
                operator delete(v23);
                std::__tree<OZTimeMarker>::__emplace_unique_key_args<OZTimeMarker,OZTimeMarker const&>(v16, &v24);
                OZTimeMarker::~OZTimeMarker(&v24);
              }

LABEL_27:
              v6 = 0;
            }

            PCURL::~PCURL(v29);
            PCString::~PCString(&v30);
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

LABEL_24:
  PCAutoreleasePool::~PCAutoreleasePool(&v32);
  return v6;
}

void sub_2601D9240(void *a1)
{
  PCURL::~PCURL((v1 - 80));
  PCString::~PCString((v1 - 72));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D8F9CLL);
}

uint64_t OZXIsUsingSubstituteFont(uint64_t a1, BOOL *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v5);
  if (a2 && !result)
  {
    if (v5)
    {
      v4 = (*(*v5 + 80))(v5);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

void sub_2601D932C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D931CLL);
}

uint64_t OZXTranscriptionGetLineCount(uint64_t a1, unsigned int *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v5);
  if (a2 && !result)
  {
    if (v5)
    {
      v4 = (*(*v5 + 88))(v5);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

void sub_2601D93BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D93ACLL);
}

uint64_t OZXTranscriptionSetShouldDisableFadeOut(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = __OZXGetTranscriptionDelegate(a1, &v4);
  if (!result)
  {
    if (v4)
    {
      (*(*v4 + 96))(v4, a2);
      return 0;
    }
  }

  return result;
}

void sub_2601D943C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2601D942CLL);
}

void *OZObject::iterator_t<OZRigWidget,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

void sub_2601D9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_2601D9FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, PCString a11)
{
  PCString::~PCString(&a11);
  PCURL::~PCURL(&a10);
  _Unwind_Resume(a1);
}

void sub_2601DA7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, PCString a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a59, a60);
  if (__p)
  {
    a63 = __p;
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a69);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void sub_2601DB20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, PCString a12, PCString a13)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  PCURL::~PCURL(&a13);
  _Unwind_Resume(a1);
}

void OZImageMask::OZImageMask(OZImageMask *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 1088));
  *this = &unk_2872A7158;
  *(this + 2) = &unk_2872A76A0;
  *(this + 6) = &unk_2872A78F8;
  *(this + 136) = &unk_2872A7950;
  PCURL::PCURL(&v7, @"Channel Mask Source");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 1120), &v7, (this + 448), 0x64u, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Color Channel Choices");
  PCURL::PCURL(&v6, @"Channel Mask Color Channel");
  OZChannelEnum::OZChannelEnum((this + 2704), 3u, &v7, &v6, (this + 448), 0x65u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Mask Blend Mode Enum");
  PCURL::PCURL(&v6, @"Channel Mask Blend Mode");
  OZChannelEnum::OZChannelEnum((this + 2960), 0, &v7, &v6, (this + 448), 0x67u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Mask Invert");
  OZChannelBool::OZChannelBool((this + 3216), &v7, (this + 448), 0x66u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Mask Stencil Mode");
  OZChannelBool::OZChannelBool((this + 3368), 1, &v7, (this + 448), 0x68u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Mask Stretch");
  OZChannelBool::OZChannelBool((this + 3520), &v7, (this + 448), 0x69u, 0, 0, 0);
  PCString::~PCString(&v7);
  *(this + 3672) = 0;
  (*(*this + 1040))(this);
  OZChannelFolder::resetFoldFlag((this + 1120), 15);
  OZChannelFolder::saveStateAsDefault((this + 1120));
  PCURL::PCURL(&v7, @"Channel Mask Image");
  OZChannelBase::setName((this + 1256), &v7, 0);
  PCString::~PCString(&v7);
  *(this + 460) = 0;
}

void sub_2601DB650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannelBool::~OZChannelBool((v12 + 3520));
  OZChannelBool::~OZChannelBool((v12 + 3368));
  OZChannelBool::~OZChannelBool((v12 + 3216));
  OZChannelEnum::~OZChannelEnum((v12 + 2960));
  OZChannelEnum::~OZChannelEnum((v12 + 2704));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v12 + 1120));
  OZChannelBase::setRangeName(v13, v15);
  OZSceneNode::~OZSceneNode(v12);
  _Unwind_Resume(a1);
}

void OZImageMask::OZImageMask(OZImageMask *this, const OZImageMask *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 1088));
  *this = &unk_2872A7158;
  *(this + 2) = &unk_2872A76A0;
  *(this + 6) = &unk_2872A78F8;
  *(this + 136) = &unk_2872A7950;
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 1120), (a2 + 1120), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 2704), (a2 + 2704), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 2960), (a2 + 2960), (this + 448));
  OZChannelBool::OZChannelBool((this + 3216), (a2 + 3216), (this + 448));
  OZChannelBool::OZChannelBool((this + 3368), (a2 + 3368), (this + 448));
  OZChannelBool::OZChannelBool((this + 3520), (a2 + 3520), (this + 448));
  *(this + 3672) = *(a2 + 3672);
  *(this + 460) = 0;
}

void sub_2601DB890(_Unwind_Exception *a1)
{
  OZChannelBool::~OZChannelBool((v1 + 3368));
  OZChannelBool::~OZChannelBool((v1 + 3216));
  OZChannelEnum::~OZChannelEnum((v1 + 2960));
  OZChannelEnum::~OZChannelEnum((v1 + 2704));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + 1120));
  OZChannelBase::setRangeName(v2, v4);
  OZSceneNode::~OZSceneNode(v1);
  _Unwind_Resume(a1);
}

void OZImageMask::~OZImageMask(OZImageMask *this)
{
  *this = &unk_2872A7158;
  *(this + 2) = &unk_2872A76A0;
  *(this + 6) = &unk_2872A78F8;
  v2 = (this + 1088);
  *(this + 136) = &unk_2872A7950;
  OZChannelBool::~OZChannelBool((this + 3520));
  OZChannelBool::~OZChannelBool((this + 3368));
  OZChannelBool::~OZChannelBool((this + 3216));
  OZChannelEnum::~OZChannelEnum((this + 2960));
  OZChannelEnum::~OZChannelEnum((this + 2704));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 1120));
  OZChannelBase::setRangeName(v2, v3);

  OZSceneNode::~OZSceneNode(this);
}

{
  OZImageMask::~OZImageMask(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZImageMask::~OZImageMask(OZImageMask *this)
{
  OZImageMask::~OZImageMask((this - 16));
}

{
  OZImageMask::~OZImageMask((this - 48));
}

{
  OZImageMask::~OZImageMask((this - 1088));
}

{
  OZImageMask::~OZImageMask((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZImageMask::~OZImageMask((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZImageMask::~OZImageMask((this - 1088));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZImageMask::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 1120);
  OZChanSceneNodeRef::operator=(a1 + 1256, v5 + 1256);
  OZChannelBase::operator=(a1 + 1440, v5 + 1440);
  OZChannelBase::operator=(a1 + 1592, v5 + 1592);
  OZChannelPosition::operator=(a1 + 1744, v5 + 1744);
  OZChannelBase::operator=(a1 + 2448, v5 + 2448);
  OZChannelBase::operator=(a1 + 2704, v5 + 2704);
  OZChannelBase::operator=(a1 + 2960, v5 + 2960);
  OZChannelBase::operator=(a1 + 3216, v5 + 3216);
  result = OZChannelBase::operator=(a1 + 3368, v5 + 3368);
  *(a1 + 3680) = 0;
  return result;
}

uint64_t OZImageMask::eval(OZImageMask *this, OZRenderParams *a2)
{
  MaskSource = OZImageMask::getMaskSource(this);
  if (!MaskSource)
  {
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  OZRenderParams::OZRenderParams(&v12, a2);
  v9 = *a2;
  OZImageMask::getMaskSourceTime(this, &v9, &v10);
  v12 = v10;
  v14 = 0;
  v15 = 0;
  v13 = v11;
  v7 = (*(*v6 + 96))(v6, &v12);
  OZRenderParams::~OZRenderParams(&v12);
  return v7;
}

void sub_2601DBCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

const void *OZImageMask::getMaskSource(OZImageMask *this)
{
  result = *(this + 460);
  if (!result)
  {
    result = OZChanElementOrFootageRef::getImageNode((this + 1256));
    *(this + 460) = result;
    if (!result)
    {
      result = *(this + 120);
      if (result)
      {
      }

      *(this + 460) = result;
    }
  }

  return result;
}

double OZImageMask::getMaskSourceTime@<D0>(OZImageMask *this@<X0>, CMTime *a2@<X1>, __n128 *a3@<X8>)
{
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  OZChannelImageWithOptions::getFrame((this + 1120), a2, a3);
  (*(*this + 1128))(&v6, this);
  v7 = v6;
  v8 = *a3->n128_u8;
  PC_CMTimeSaferAdd(&v8, &v7, &v9);
  result = v9.n128_f64[0];
  *a3 = v9;
  a3[1].n128_u64[0] = v10;
  return result;
}

uint64_t *OZImageMask::getImageBounds(OZImageMask *a1, uint64_t a2, const OZRenderState *a3)
{
  result = OZImageMask::getMaskSource(a1);
  if (result)
  {
    v7 = result;
    OZRenderState::OZRenderState(&v17, a3);
    var0 = a3->var0;
    OZImageMask::getMaskSourceTime(a1, &var0, &v15);
    *&v17.var0.var0 = v15;
    v17.var0.var3 = v16;
    v8 = *v7;
    {
      return (*(v8 + 16))(v7, a2, &v17);
    }

    else
    {
      return (*(v8 + 80))(v7, a2, &v17);
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(a2 + 16) = _Q0;
  }

  return result;
}

uint64_t OZImageMask::getImageBoundsWithEffects(OZImageMask *a1, uint64_t a2, const OZRenderState *a3)
{
  if ((*(*a1 + 416))(a1))
  {
    OZRenderState::OZRenderState(&v11, a3);
    var0 = a3->var0;
    OZImageMask::getMaskSourceTime(a1, &var0, &v9);
    *&v11.var0.var0 = v9;
    v11.var0.var3 = v10;
    *(*(*(a1 + 122) + 16) + 24) = a1 + 1088;
    return (*(**(*(a1 + 123) + 16) + 80))(*(*(a1 + 123) + 16), a2, &v11);
  }

  else
  {
    v7 = *(*a1 + 1208);

    return v7(a1, a2, a3);
  }
}

void OZImageMask::getDimensions(OZImageMask *this, float *a2, float *a3, const OZRenderState *a4)
{
  MaskSource = OZImageMask::getMaskSource(this);
  *a3 = 0.0;
  *a2 = 0.0;
  OZRenderState::OZRenderState(&v12, a4);
  var0 = a4->var0;
  OZImageMask::getMaskSourceTime(this, &var0, &v10);
  *&v12.var0.var0 = v10;
  v12.var0.var3 = v11;
  if (MaskSource)
  {
    (*(*MaskSource + 96))(MaskSource, a2, a3, &v12);
  }
}

__n128 OZImageMask::getNaturalDuration@<Q0>(OZImageMask *this@<X0>, uint64_t a2@<X8>)
{
  MaskSource = OZImageMask::getMaskSource(this);
  {
    v5 = *(v4[2] + 280);

    v5();
  }

  else
  {
    v7 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v7 + 16);
  }

  return result;
}

double OZImageMask::getPixelAspectRatioRN(OZImageMask *this)
{
  MaskSource = OZImageMask::getMaskSource(this);
  if (!MaskSource)
  {
    return 1.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  v3 = v2;
  if (v4)
  {
    v6 = *(*v4 + 1328);

    v6(v4);
    return result;
  }

  if (!v5)
  {
    return 1.0;
  }

  v8 = *(*v5 + 1368);

  v8();
  return result;
}

uint64_t OZImageMask::getNaturalDurationFlags(OZImageMask *this)
{
  MaskSource = OZImageMask::getMaskSource(this);
  if (!MaskSource)
  {
    return 6;
  }

  if (!v2)
  {
    return 6;
  }

  v3 = *(v2[2] + 288);

  return v3();
}

unint64_t OZImageMask::isActiveAtTime(OZImageMask *this, CMTime *a2, int a3, int a4, int a5)
{
  MaskSource = OZImageMask::getMaskSource(this);
  {
    if ((*(*(this + 120) + 1024) & 4) != 0)
    {
      return 0;
    }
  }

  else
  {
    *(this + 3672) = 0;
    v11 = *(this + 120);
    if ((v11[1024] & 4) != 0)
    {
      return 0;
    }
  }

  v12 = (*(*v11 + 640))(v11);
  v13 = (*(*this + 272))(this);
  OZSceneSettings::getFrameDuration((v13 + 336), &v22);
  v19 = *a2;
  *&time1.value = v22;
  time1.epoch = v23;
  PC_CMTimeFloorToSampleDuration(&v19, &time1, &time2);
  *&a2->value = *&time2.value;
  epoch = time2.epoch;
  a2->epoch = time2.epoch;
  *&v19.value = *&a2->value;
  v19.epoch = epoch;
  result = OZObjectManipulator::isActiveAtTime((this + 16), &v19, a3, a4, a5);
  if (!result)
  {
    return result;
  }

  (*(*v12 + 712))(&v19, v12);
  v16 = (*(*this + 272))(this);
  OZSceneSettings::getFrameDuration((v16 + 336), &v17);
  time1 = v19;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    time1 = v19;
    time2 = v20;
    PC_CMTimeSaferAdd(&time1, &time2, &v22);
    *&time1.value = v22;
    time1.epoch = v23;
    *&time2.value = v17;
    time2.epoch = v18;
    PC_CMTimeSaferSubtract(&time1, &time2, &v21);
    time1 = *a2;
    time2 = v21;
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      return 1;
    }

    if (v20.flags)
    {
      return (v20.flags >> 4) & 1;
    }
  }

  return 0;
}

unint64_t OZImageMask::isActiveInTimeRange(OZImageMask *this, const PCTimeRange *a2, int a3, int a4, int a5)
{
  MaskSource = OZImageMask::getMaskSource(this);
  {
    if ((*(*(this + 120) + 1024) & 4) != 0)
    {
      return 0;
    }
  }

  else
  {
    *(this + 3672) = 0;
    v11 = *(this + 120);
    if ((v11[1024] & 4) != 0)
    {
      return 0;
    }
  }

  v12 = (*(*v11 + 640))(v11);
  memset(&v17, 0, sizeof(v17));
  v13 = (*(*this + 272))(this);
  OZSceneSettings::getFrameDuration((v13 + 336), &v17);
  PCTimeRange::getRangeEnclosingWholeFrames(a2, &v17, v16);
  result = OZObjectManipulator::isActiveInTimeRange((this + 16), v16, a3, a4, a5);
  if (!result)
  {
    return result;
  }

  (*(*v12 + 712))(v15, v12);
  v21 = v15[0];
  time1 = v15[0];
  time2 = v15[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v20);
  v19 = v16[0];
  time1 = v16[0];
  time2 = v16[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v18);
  time1 = v18;
  time2 = v21;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    time1 = v19;
    time2 = v20;
    return CMTimeCompare(&time1, &time2) < 1;
  }

  return 0;
}

void OZImageMask::allowDrag(OZImageMask *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, int a7)
{
  *a5 = 0;
  if (lpsrc)
  {
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v17 = (*(*this + 640))(this) != a3 || !v14 || v15 == 0;
  if (!v17 && (v18 = (*(*v15 + 272))(v15), v18 == (*(*this + 272))(this)))
  {
    *a6 = 1;
    *a5 = a4 & 8;
  }

  else
  {

    OZSceneNode::allowDrag(this, lpsrc, a3, a4, a5, a6, a7);
  }
}

uint64_t OZImageMask::performDragOperation(OZChannelBase *this, OZFactoryBase *lpsrc, OZChannelBase *a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7, const CMTime *a8)
{
  if (lpsrc)
  {
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v18 = (*(this->var0 + 80))(this) != a3 || v15 == 0 || v16 == 0;
  if (!v18 && (v20 = (*(*v16 + 272))(v16), v21 = (*(this->var0 + 34))(this), a5 == 1 && v20 == v21))
  {
    PCSharedCount::PCSharedCount(&v24);
    OZChannelBase::addToUndo(this + 10, &v24);
    PCString::~PCString(&v24);
    OZChanElementOrFootageRef::setImageNode(&this[11].var3, v15);
    (*(this->var0 + 62))(this);
    (*(v16[2] + 40))(v16 + 2, 0);
    var9 = this[8].var9;
    if (var9)
    {
      OZDocument::postNotification(var9[198], 8);
    }

    return 1;
  }

  else
  {

    return OZSceneNode::performDragOperation(this, lpsrc, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t OZImageMask::parseEnd(OZImageMask *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseEnd(this, a2);
  if (OZChannel::getValueAsUint((this + 1256), MEMORY[0x277CC08F0], 0.0))
  {
    *(this + 3672) = 1;
  }

  if (*(this + 124))
  {
    *(*(*(this + 122) + 16) + 24) = this + 1088;
  }

  return 1;
}

void OZImageMask::makeRender(OZImageMask *this, OZRenderParams *a2, const OZRenderGraphState *a3)
{
  v4 = *(this + 120);
  if (v4)
  {
    if (v5)
    {
      (*(*v5 + 2008))(v5, a2);
    }
  }

  operator new();
}

uint64_t OZImageMask::openMedia(OZImageMask *this)
{
  MaskSource = OZImageMask::getMaskSource(this);
  if (!MaskSource)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!v4)
  {
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(*v4 + 104);

  return v5();
}

uint64_t OZImageMask::prerollBegin(OZImageMask *a1, const OZRenderParams *a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1, a2, a3, a4, a5);
  MaskSource = OZImageMask::getMaskSource(a1);
  if (MaskSource)
  {
    v12 = v11;
    if (v11)
    {
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  OZRenderParams::OZRenderParams(&v19, a2);
  v17 = 0uLL;
  v18 = 0;
  v16 = *a2;
  OZImageMask::getMaskSourceTime(a1, &v16, &v17);
  v19 = v17;
  v21 = 0;
  v22 = 0;
  v20 = v18;
  if (v12 || (v12 = v13) != 0)
  {
    v14 = (*(*v12 + 112))(v12, &v19, a3, a4, a5);
  }

  else
  {
    v14 = 0;
  }

  OZRenderParams::~OZRenderParams(&v19);
  return v14;
}

void sub_2601DD3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageMask::prerollEnd(OZImageMask *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this, a2, a3);
  MaskSource = OZImageMask::getMaskSource(this);
  if (MaskSource)
  {
    v8 = v7;
    if (v7)
    {
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  OZRenderParams::OZRenderParams(&v15, a2);
  v13 = 0uLL;
  v14 = 0;
  v12 = *a2;
  OZImageMask::getMaskSourceTime(this, &v12, &v13);
  v15 = v13;
  v17 = 0;
  v18 = 0;
  v16 = v14;
  if (v8 || (v8 = v9) != 0)
  {
    v10 = (*(*v8 + 120))(v8, &v15, a3);
  }

  else
  {
    v10 = 0;
  }

  OZRenderParams::~OZRenderParams(&v15);
  return v10;
}

void sub_2601DD5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageMask::setRate(OZImageMask *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this, a2, a3, a4);
  MaskSource = OZImageMask::getMaskSource(this);
  if (MaskSource)
  {
    v10 = v9;
    if (v9)
    {
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  OZRenderParams::OZRenderParams(&v17, a2);
  v15 = 0uLL;
  v16 = 0;
  v14 = *a2;
  OZImageMask::getMaskSourceTime(this, &v14, &v15);
  v17 = v15;
  v19 = 0;
  v20 = 0;
  v18 = v16;
  if (v10 || (v10 = v11) != 0)
  {
    v12 = (*(*v10 + 128))(v10, &v17, a3, a4);
  }

  else
  {
    v12 = 0;
  }

  OZRenderParams::~OZRenderParams(&v17);
  return v12;
}

void sub_2601DD7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageMask::scheduleTokens(OZImageMask *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  OZSceneNode::scheduleTokens(a1, a2, a3, a4, a5);
  MaskSource = OZImageMask::getMaskSource(a1);
  if (MaskSource)
  {
    v12 = v11;
    if (v11)
    {
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  OZRenderParams::OZRenderParams(v17, a2);
  memset(v16, 0, sizeof(v16));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v16, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v16, a4);
  if (v12 || (v12 = v13) != 0)
  {
    v14 = (*(*v12 + 136))(v12, v17, v16, a4, a5);
  }

  else
  {
    v14 = 0;
  }

  v18 = v16;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  OZRenderParams::~OZRenderParams(v17);
  return v14;
}

void sub_2601DD9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageMask::hintTokensWillImage(OZImageMask *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::hintTokensWillImage(a1, a2, a3, a4);
  MaskSource = OZImageMask::getMaskSource(a1);
  if (MaskSource)
  {
    v10 = v9;
    if (v9)
    {
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  OZRenderParams::OZRenderParams(v15, a2);
  memset(v14, 0, sizeof(v14));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v14, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v14, a4);
  if (v10 || (v10 = v11) != 0)
  {
    v12 = (*(*v10 + 144))(v10, v15, v14, a4);
  }

  else
  {
    v12 = 0;
  }

  v16 = v14;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v16);
  OZRenderParams::~OZRenderParams(v15);
  return v12;
}

void sub_2601DDBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

uint64_t OZImageMask::getTokensImage(OZImageMask *a1, const OZRenderParams *a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::getTokensImage(a1, a2, a3, a4);
  MaskSource = OZImageMask::getMaskSource(a1);
  if (MaskSource)
  {
    v10 = v9;
    if (v9)
    {
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  OZRenderParams::OZRenderParams(v15, a2);
  memset(v14, 0, sizeof(v14));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v14, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*a1 + 184))(a1, a2, v14, a4);
  if (v10 || (v10 = v11) != 0)
  {
    v12 = (*(*v10 + 152))(v10, v15, v14, a4);
  }

  else
  {
    v12 = 0;
  }

  v16 = v14;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v16);
  OZRenderParams::~OZRenderParams(v15);
  return v12;
}

void sub_2601DDE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

void OZImageMask::remapTokens(OZImageMask *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  OZSceneNode::remapTokens(a1, a2, a3, a4);
  v7 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v7 + 48 * v8;
      v11 = *(v10 + 24);
      v12 = *(v10 + 32);
      v13 = (v10 + 24);
      if (v12 != v11)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          v16 = 3 * v14;
          v23 = *(v11 + 24 * v14);
          v21 = 0uLL;
          v22 = 0;
          v20 = v23;
          OZImageMask::getMaskSourceTime(a1, &v20, &v21);
          v17 = *(*a3 + 48 * v8 + 24) + 8 * v16;
          v18 = v21;
          *(v17 + 16) = v22;
          *v17 = v18;
          v14 = v15;
          v11 = *v13;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3) > v15++);
        v7 = *a3;
        v6 = a3[1];
      }

      v8 = ++v9;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) > v9);
  }
}

const void *OZImageMask::pruneTokensAtTime(OZImageMask *this, CMTime *a2, const char *a3)
{
  v8 = *a2;
  OZSceneNode::pruneTokensAtTime(this, &v8, a3);
  result = OZImageMask::getMaskSource(this);
  if (result)
  {
    if (result)
    {
      v7 = result;
      {
        v8 = *a2;
        return (*(*result + 160))(result, &v8, a3);
      }
    }
  }

  return result;
}

const void *OZImageMask::pruneTokensExceptAtTime(OZImageMask *this, CMTime *a2, const char *a3)
{
  v8 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this, &v8, a3);
  result = OZImageMask::getMaskSource(this);
  if (result)
  {
    if (result)
    {
      v7 = result;
      {
        v8 = *a2;
        return (*(*result + 168))(result, &v8, a3);
      }
    }
  }

  return result;
}

const void *OZImageMask::pruneAllTokens(OZImageMask *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this, a2);
  result = OZImageMask::getMaskSource(this);
  if (result)
  {
    if (result)
    {
      v4 = result;
      {
        v5 = *(*result + 176);

        return v5();
      }
    }
  }

  return result;
}

void OZNodeCamera::OZNodeCamera(OZNodeCamera *this, OZScene *a2, int a3, OZViewerState *a4)
{
  *(this + 66) = &unk_2872DEA38;
  *(this + 67) = 0;
  *(this + 544) = 1;
  LiSimpleCamera::LiSimpleCamera(this, &off_2872A7DE0);
  *this = &unk_2872A7A98;
  *(this + 66) = &unk_2872A7DC0;
  *(this + 58) = a2;
  *(this + 118) = a3;
  *(this + 60) = a4;
  *(this + 488) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 62) = 0;
  *(this + 520) = 0;
  LiSimpleCamera::setCameraModel(this, 1);
  (*(*this + 512))(this, 45.0);
  v8 = *(this + 58);
  v10 = vcvtq_f64_f32(vcvt_f32_s32(*(v8 + 344)));
  (*(*this + 288))(this, &v10);
  (*(*this + 696))(this, *(v8 + 384));
  v9 = (*(*this + 768))(this);
  if (v9)
  {
    if (v9)
    {
      LOBYTE(v9) = OZGroup::shouldLockToCamera(v9, *(a4 + 60) == 9);
    }
  }

  *(this + 520) = v9;
}

void sub_2601DE6A0(_Unwind_Exception *a1)
{
  LiSimpleCamera::~LiSimpleCamera(v1, &off_2872A7DE0);
  *(v1 + 528) = v2;
  *(v1 + 544) = 0;
  PCWeakCount::~PCWeakCount((v1 + 536));
  _Unwind_Resume(a1);
}

uint64_t OZNodeCamera::update(OZNodeCamera *this)
{
  v2 = (*(*this + 768))(this);
  if ((*(this + 520) & 1) == 0)
  {
    v3 = *(this + 58);
    if (*(this + 488) == 1)
    {
      v4 = v2;
      OZRenderState::OZRenderState(&v39);
      v37 = *(this + 31);
      v38 = *(this + 64);
      OZScene::getCurrentTime(*(this + 58), v28);
      *&v39.var0.var0 = *v28;
      v39.var0.var3 = *&v28[16];
      v39.var3 = *(v3 + 384);
      *&v39.var8 = 256;
      if (v4)
      {
      }

      v36 = 0x3FF0000000000000;
      v33 = 0x3FF0000000000000;
      v30 = 0x3FF0000000000000;
      *v28 = 0x3FF0000000000000;
      v5 = 0uLL;
      *&v28[8] = 0u;
      v29 = 0u;
      v31 = 0u;
      v32 = 0u;
      v34 = 0u;
      v35 = 0u;
      if (v4)
      {
        (*(*v4 + 1256))(v4, v28, &v39);
        v5 = 0uLL;
      }

      v22 = v5;
      v23 = v5;
      v21 = v5;
      v24 = 4;
      v25 = v5;
      v26 = v5;
      v27 = 0;
      PCMatrix44Tmpl<double>::getTransformation(v28, &v21);
      v19 = v25;
      v20 = v26;
      (*(*this + 400))(this, &v19);
      v39.var9 = 0;
      if (v4)
      {
        (*(*v4 + 1256))(v4, v28, &v39);
      }

      PCMatrix44Tmpl<double>::getTransformation(v28, &v21);
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
      *(&v23 + 1) = 0x3FF0000000000000;
      if (*(&v22 + 1) != 1.0)
      {
        v9 = *(&v22 + 1);
        *&v10 = *(&v22 + 1) * 0.0;
        *(&v10 + 1) = *(&v22 + 1) * 0.0;
        *&v11 = *(&v22 + 1) * 0.0;
      }

      if (*&v23 != 1.0)
      {
        *(&v11 + 1) = *&v23 * 0.0;
        v12 = v23;
        *&v13 = *&v23 * 0.0;
        *(&v13 + 1) = *&v23 * 0.0;
      }

      (*(*this + 432))(this, &v9, v23);
      PCMatrix44Tmpl<double>::transform<double>(v28, &v37, &v37);
      PCMatrix44Tmpl<double>::invert(&v9, &v9, 0.0);
      PCMatrix44Tmpl<double>::transform<double>(&v9, &v37, &v37);
      (*(*this + 448))(this, &v37);
    }

    else
    {
      v39.var7.var0[1][2] = 1.0;
      v39.var7.var0[0][1] = 1.0;
      v39.var3 = 1.0;
      v39.var0.var0 = 0x3FF0000000000000;
      memset(&v39.var0.var1, 0, 32);
      memset(&v39.var4, 0, 32);
      memset(&v39.var7.var0[0][2], 0, 32);
      (*(*this + 432))(this, &v39);
      (*(*this + 448))(this, this + 496);
      v39.var0.var0 = 0x3FF0000000000000;
      memset(&v39.var0.var1, 0, 24);
      (*(*this + 480))(this, &v39);
      v6 = *(v3 + 344);
      v7.i64[0] = v6;
      v7.i64[1] = SHIDWORD(v6);
      *&v39.var0.var0 = vcvtq_f64_s64(v7);
      (*(*this + 288))(this, &v39);
    }
  }

  return 1;
}

uint64_t OZNodeCamera::setAnimTime(uint64_t this, double a2)
{
  if (a2 != 1.0)
  {
    *(this + 488) = 1;
  }

  return this;
}

void OZNodeCamera::~OZNodeCamera(OZNodeCamera *this)
{
  LiSimpleCamera::~LiSimpleCamera(this, &off_2872A7DE0);
  *(v1 + 528) = &unk_2872DEA38;
  *(v1 + 544) = 0;
  PCWeakCount::~PCWeakCount((v1 + 536));
}

{
  OZNodeCamera::~OZNodeCamera(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZNodeCamera::~OZNodeCamera(OZNodeCamera *this)
{
  LiSimpleCamera::~LiSimpleCamera((this + *(*this - 24)), &off_2872A7DE0);
  *(v1 + 528) = &unk_2872DEA38;
  *(v1 + 544) = 0;
  v2 = (v1 + 536);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiSimpleCamera::~LiSimpleCamera(v1, &off_2872A7DE0);
  v1[66] = &unk_2872DEA38;
  *(v1 + 544) = 0;
  PCWeakCount::~PCWeakCount(v1 + 67);

  JUMPOUT(0x2666E9F00);
}

void sub_2601DEF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + 2728));
  OZChannelEnum::~OZChannelEnum((v12 + 2472));
  OZChannelGradientPositioned::~OZChannelGradientPositioned(v12);
  _Unwind_Resume(a1);
}

void OZChannelGradientWithTransform::OZChannelGradientWithTransform(OZChannelGradientWithTransform *this, const OZChannelGradientWithTransform *a2, OZChannelFolder *a3)
{
  OZChannelGradientPositioned::OZChannelGradientPositioned(this, a2, a3);
  *v5 = &unk_2872A8640;
  v5[2] = &unk_2872A8920;
  OZChannelEnum::OZChannelEnum((v5 + 309), (a2 + 2472), this);
  OZChannelEnum::OZChannelEnum((this + 2728), (a2 + 2728), this);
  OZChannelEnum::OZChannelEnum((this + 2984), (a2 + 2984), this);
  (*(*this + 232))(this, a2, 1);
}

void sub_2601DF064(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 2984));
  OZChannelEnum::~OZChannelEnum((v1 + 2728));
  OZChannelEnum::~OZChannelEnum((v1 + 2472));
  OZChannelGradientPositioned::~OZChannelGradientPositioned(v1);
  _Unwind_Resume(a1);
}

void OZChannelGradientWithTransform::~OZChannelGradientWithTransform(OZChannelGradientWithTransform *this)
{
  *this = &unk_2872A8640;
  *(this + 2) = &unk_2872A8920;
  OZChannelEnum::~OZChannelEnum((this + 2984));
  OZChannelEnum::~OZChannelEnum((this + 2728));
  OZChannelEnum::~OZChannelEnum((this + 2472));

  OZChannelGradientPositioned::~OZChannelGradientPositioned(this);
}

{
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelGradientWithTransform::~OZChannelGradientWithTransform(OZChannelGradientWithTransform *this)
{
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform((this - 16));
}

{
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelGradientWithTransform::copy(PCString *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannelGradientPositioned::copy(this, a2, a3);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 309, (v4 + 2472), a3);
  OZChannelEnum::copy(this + 341, (v4 + 2728), a3);

  OZChannelEnum::copy(this + 373, (v4 + 2984), a3);
}

uint64_t OZChannelGradientWithTransform::parseEnd(OZChannelGradientWithTransform *this, PCSerializerReadStream *a2)
{
  v3 = OZChannelGradient::parseEnd(this, a2);
  if ((*(this + 2528) & 2) == 0)
  {
    v4 = MEMORY[0x277CC08F0];
    ValueAsInt = OZChannel::getValueAsInt((this + 2472), MEMORY[0x277CC08F0], 0.0);
    v6 = 1.0;
    if (ValueAsInt != 2)
    {
      v6 = 0.0;
    }

    OZChannel::setValue((this + 2728), v4, v6, 0);
    OZChannelBase::setFlag((this + 2472), 2, 0);
  }

  return v3;
}

uint64_t OZMaterialRootChannelResetCallback(OZChannelBase *a1, void *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
  if (ObjectManipulator)
  {
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt(&v3[71], MEMORY[0x277CC08F0], 0.0);
  (v3->var0[11].data)(v3);
  (v3->var0[11].length)(v3);
  OZChannel::setValue(&v3[71], v4, ValueAsInt, 0);
  PCURL::PCURL(&v7, @"Material Default Name");
  PCString::set(v3 + 162, &v7);
  PCString::~PCString(&v7);
  return (v3->var0[12].isa)(v3);
}

void OZMaterialBase::OZMaterialBase(OZMaterialBase *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  *this = &unk_28727E108;
  *(this + 1) = a2;
  v7 = this + 16;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *(this + 6) = &unk_2871ECF48;
  OZImageNode::OZImageNode((this + 56));
  *this = &unk_2872A8990;
  *(this + 2) = &unk_2872A8B50;
  *(this + 6) = &unk_2872A8DA8;
  *(this + 7) = &unk_2872A8E00;
  PCMutex::PCMutex((this + 80));
  OZChannelMaterialRoot::OZChannelMaterialRoot((this + 152), a3, 0, a4, 8u);
  PCString::PCString(v9, "Material");
  OZChannelDouble::OZChannelDouble((this + 416), 0, v9, (this + 152), 3u, 10, 0, 0);
  PCString::~PCString(v9);
  PCURL::PCURL(v9, @"Material Facet Assignment");
  OZChannelUint16::OZChannelUint16((this + 568), 31, v9, (this + 152), 1u, 2, 0, 0);
  PCString::~PCString(v9);
  PCString::PCString(v9, "Sequence ID");
  OZChannelUint32::OZChannelUint32((this + 720), 0, v9, (this + 152), 2u, 130, 0, 0);
  PCString::~PCString(v9);
  PCURL::PCURL(v9, @"Material Wrap Around Enum");
  PCURL::PCURL(&v13, @"Material Wrap Around");
  OZChannelEnum::OZChannelEnum((this + 872), 0, v9, &v13, (this + 152), 4u, 2, 0, 0);
  PCString::~PCString(&v13);
  PCString::~PCString(v9);
  PCString::PCString(v9, "Is Edited");
  OZChannelBool::OZChannelBool((this + 1128), 0, v9, (this + 152), 5u, 0x82u, 0, 0);
  PCString::~PCString(v9);
  *(this + 160) = 0;
  *(this + 1288) = 0;
  PCURL::PCURL((this + 1296), @"Material Default Name");
  *(this + 1304) = 0;
  OZLiCachingDelegate::instance(v8);
  OZChannelSceneNode::setSceneNode(this + 152, this);
  OZChannelFolder::setFoldFlag((this + 152), 0x400000);
  *(this + 45) = v7;
  *&v9[0].var0 = *MEMORY[0x277CC08F0];
  v10 = *(MEMORY[0x277CC08F0] + 16);
  v11 = *&v9[0].var0;
  v12 = v10;
  OZChannelObjectRootBase::setTimeExtent((this + 152), v9, 0);
  OZChannelFolder::resetFoldFlag((this + 152), 0x20000);
  OZChannelFolder::setFoldFlag((this + 152), 0x80000);
  OZChannelFolder::saveStateAsDefault((this + 152));
  OZChannelBase::setResetCallback((this + 152), OZMaterialRootChannelResetCallback, 0, 0);
  OZChannel::setKeyframable((this + 568), 0);
  OZChannelBase::saveStateAsDefault((this + 568));
  OZChannel::setKeyframable((this + 720), 0);
  OZChannelBase::setFlag((this + 720), 0x100000000, 0);
}

void sub_2601DF8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11)
{
  PCString::~PCString((v11 + 1296));
  OZChannelBool::~OZChannelBool((v11 + 1128));
  OZChannelEnum::~OZChannelEnum((v11 + 872));
  OZChannel::~OZChannel((v11 + 720));
  OZChannel::~OZChannel((v11 + 568));
  OZChannel::~OZChannel((v11 + 416));
  OZChannelMaterialRoot::~OZChannelMaterialRoot((v11 + 152));
  PCMutex::~PCMutex((v11 + 80));
  OZChannelBase::setRangeName(v12, v14);
  *(v11 + 16) = &unk_28727CFF0;
  v15 = *(v11 + 24);
  if (v15)
  {
    *(v15 + 8) = 0;
    *(v11 + 24) = 0;
  }

  _Unwind_Resume(a1);
}

void OZMaterialBase::OZMaterialBase(OZMaterialBase *this, const OZMaterialBase *a2, char a3)
{
  v6 = *(a2 + 1);
  *this = &unk_28727E108;
  *(this + 1) = v6;
  v7 = this + 16;
  *(this + 2) = &unk_2872893D8;
  *(this + 3) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 32));
  *(this + 6) = &unk_2871ECF48;
  OZImageNode::OZImageNode((this + 56));
  *this = &unk_2872A8990;
  *(this + 2) = &unk_2872A8B50;
  *(this + 6) = &unk_2872A8DA8;
  *(this + 7) = &unk_2872A8E00;
  PCMutex::PCMutex((this + 80));
  OZChannelMaterialRoot::OZChannelMaterialRoot((this + 152), (a2 + 152), 0);
  OZChannel::OZChannel((this + 416), (a2 + 416), (this + 152));
  *(this + 52) = &unk_287245C60;
  *(this + 54) = &unk_287245FC0;
  OZChannel::OZChannel((this + 568), (a2 + 568), (this + 152));
  *(this + 71) = &unk_2872467D0;
  *(this + 73) = &unk_287246B30;
  OZChannel::OZChannel((this + 720), (a2 + 720), (this + 152));
  *(this + 90) = &unk_287246400;
  *(this + 92) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 872), (a2 + 872), (this + 152));
  OZChannelBool::OZChannelBool((this + 1128), (a2 + 1128), (this + 152));
  *(this + 160) = *(a2 + 160);
  *(this + 1288) = 0;
  PCString::PCString(this + 162, a2 + 162);
  *(this + 1304) = *(a2 + 1304);
  OZLiCachingDelegate::instance(v8);
  OZChannelSceneNode::setSceneNode(this + 152, this);
  *(this + 45) = v7;
  v11 = *MEMORY[0x277CC08F0];
  v12 = *(MEMORY[0x277CC08F0] + 16);
  v13 = v11;
  v14 = v12;
  OZChannelObjectRootBase::setTimeExtent((this + 152), &v11, 1);
  OZChannelBase::setResetCallback((this + 152), OZMaterialRootChannelResetCallback, 0, 0);
  if ((a3 & 2) != 0)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v9);
    OZChannelBase::setID((this + 152), NextUniqueID);
  }
}

void sub_2601DFCD8(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 1296));
  OZChannelBool::~OZChannelBool((v1 + 1128));
  OZChannelEnum::~OZChannelEnum((v1 + 872));
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannelMaterialRoot::~OZChannelMaterialRoot((v1 + 152));
  PCMutex::~PCMutex((v1 + 80));
  OZChannelBase::setRangeName(v2, v7);
  *(v1 + 16) = &unk_28727CFF0;
  v8 = *(v1 + 24);
  if (v8)
  {
    *(v8 + 8) = 0;
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(a1);
}

uint64_t OZMaterialBase::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  OZChannelBehaviorRoot::operator=(a1 + 152, a2 + 152);

  return OZChannelSceneNode::setSceneNode(a1 + 152, a1);
}

void OZMaterialBase::~OZMaterialBase(OZMaterialBase *this)
{
  *this = &unk_2872A8990;
  v2 = (this + 16);
  *(this + 2) = &unk_2872A8B50;
  *(this + 6) = &unk_2872A8DA8;
  v3 = (this + 56);
  *(this + 7) = &unk_2872A8E00;
  v4 = *(this + 160);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4);
    v6 = v5;
    if (v5)
    {
      OZScene::unregisterObject(v5, v2);
      OZScene::removeObjectFromLoadObjectsWithDuplicateIDs(v6, v2);
    }
  }

  PCString::~PCString(this + 162);
  OZChannelBool::~OZChannelBool((this + 1128));
  OZChannelEnum::~OZChannelEnum((this + 872));
  OZChannel::~OZChannel((this + 720));
  OZChannel::~OZChannel((this + 568));
  OZChannel::~OZChannel((this + 416));
  OZChannelMaterialRoot::~OZChannelMaterialRoot((this + 152));
  PCMutex::~PCMutex((this + 80));
  OZChannelBase::setRangeName(v3, v7);
  *(this + 2) = &unk_28727CFF0;
  v8 = *(this + 3);
  if (v8)
  {
    *(v8 + 8) = 0;
    *(this + 3) = 0;
  }
}

void *OZMaterialBase::removeThisFromBehaviors(void *this)
{
  v1 = this[160];
  if (v1)
  {
    v2 = this;
    {
      v3 = this + 125;
      for (i = this[126]; i != v3; i = *(i + 8))
      {
        this = (*(**(i + 16) + 152))(*(i + 16), v2 + 2);
      }
    }
  }

  return this;
}

uint64_t OZMaterialBase::getScene(OZMaterialBase *this)
{
  result = *(this + 160);
  if (result)
  {
    return (*(*result + 264))();
  }

  return result;
}

uint64_t non-virtual thunk toOZMaterialBase::getScene(OZMaterialBase *this)
{
  result = *(this + 158);
  if (result)
  {
    return (*(*result + 264))();
  }

  return result;
}

uint64_t OZMaterialBase::getSceneNode(OZMaterialBase *this)
{
  result = *(this + 160);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t non-virtual thunk toOZMaterialBase::getSceneNode(OZMaterialBase *this)
{
  result = *(this + 158);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t OZMaterialBase::getSceneNodeConst(OZMaterialBase *this)
{
  result = *(this + 160);
  if (result)
  {
    return (*(*result + 232))();
  }

  return result;
}

uint64_t OZMaterialBase::getWorkingColorDescription@<X0>(OZMaterialBase *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*this + 112))(this);
  if (v3)
  {
    v4 = *(*v3 + 288);

    return v4();
  }

  else
  {

    return FxGetDefaultWorkingColorDescription(a2);
  }
}

float OZMaterialBase::getBlendingGamma(OZMaterialBase *this)
{
  v1 = (*(*this + 112))(this);
  if (v1)
  {
    v2 = *(*v1 + 296);

    v2();
  }

  else
  {

    return PCRenderModel::getDefaultBlendingGamma(0);
  }

  return result;
}

uint64_t OZMaterialBase::updateReferenceIDs(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((a1 + 1128), MEMORY[0x277CC08F0], 0.0);
  OZChannelObjectRoot::updateReferenceIDs((a1 + 152), a2);
  v6 = 1.0;
  if (!ValueAsInt)
  {
    v6 = 0.0;
  }

  return OZChannel::setValue((a1 + 1128), v4, v6, 1);
}

uint64_t OZMaterialBase::setNewName(OZMaterialBase *this, const PCString *a2, uint64_t a3)
{
  result = *(this + 160);
  if (result)
  {
    return (*(*result + 488))(result, a2, this, a3, 0);
  }

  return result;
}

uint64_t non-virtual thunk toOZMaterialBase::setNewName(OZMaterialBase *this, const PCString *a2, uint64_t a3)
{
  result = *(this + 158);
  if (result)
  {
    return (*(*result + 488))(result, a2, this - 16, a3, 0);
  }

  return result;
}

BOOL OZMaterialBase::isSimilarToMaterial(OZMaterialBase *this, OZMaterialBase *a2)
{
  v3 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 568), MEMORY[0x277CC08F0], 0.0);
  return ValueAsInt == OZChannel::getValueAsInt((a2 + 568), v3, 0.0);
}

uint64_t OZMaterialBase::copyMaterial(OZMaterialBase *this, OZMaterialBase *a2)
{
  v3 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((a2 + 568), MEMORY[0x277CC08F0], 0.0);

  return OZChannel::setValue((this + 568), v3, ValueAsInt, 0);
}

uint64_t OZMaterialBase::deleteThis(OZMaterialBase *this, OZChannelBase *a2)
{
  if ((this + 152) == a2 && (v3 = *(this + 160)) != 0)
  {
    return (*(*v3 + 184))();
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toOZMaterialBase::deleteThis(OZMaterialBase *this, OZChannelBase *a2)
{
  if ((this + 136) == a2 && (v3 = *(this + 158)) != 0)
  {
    return (*(*v3 + 184))();
  }

  else
  {
    return 0;
  }
}

uint64_t OZMaterialBase::willResetMaterial(OZMaterialBase *this)
{
  (*(**(this + 160) + 520))(*(this + 160), this);
  v2 = *(**(this + 160) + 496);

  return v2();
}

uint64_t OZMaterialBase::doResetMaterial(OZMaterialBase *this)
{
  (*(**(this + 160) + 520))(*(this + 160), this);
  v2 = *(**(this + 160) + 504);

  return v2();
}

uint64_t OZMaterialBase::didResetMaterial(OZMaterialBase *this)
{
  (*(**(this + 160) + 520))(*(this + 160), this);
  v2 = *(**(this + 160) + 512);

  return v2();
}

uint64_t OZMaterialBase::writeHeader(OZFactory **this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZMaterialBaseScope);
  (*(*a2 + 16))(a2, 81);
  (*(*a2 + 200))(a2, 110, this + 184);
  (*(*a2 + 144))(a2, 111, *(this + 44));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v5 = OZFactory::fileRefID(this[1], v4);
    (*(*a2 + 144))(a2, 113, v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZMaterialBase::writeBody(OZMaterialBase *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  {
    PCMutex::PCMutex(&OZMaterialBase::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::lock);
    __cxa_atexit(PCMutex::~PCMutex, &OZMaterialBase::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::lock, &dword_25F8F0000);
  }

  PCMutex::lock(&OZMaterialBase::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::lock);
  PCSerializerWriteStream::pushScope(a2, &OZMaterialBaseScope);
  v8 = *(this + 1288);
  (*(*a2 + 16))(a2, 200);
  (*(*a2 + 48))(a2, v8);
  (*(*a2 + 24))(a2);
  OZChannelObjectRoot::writeBody((this + 152), a2, 0, 1, a5);
  PCSerializerWriteStream::popScope(a2);
  return PCMutex::unlock(&OZMaterialBase::writeBody(PCSerializerWriteStream &,BOOL,BOOL,BOOL)::lock);
}

uint64_t OZMaterialBase::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  OZFactory::setNeedsSaving(this[1], 1);

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 19), a2);
}

uint64_t non-virtual thunk toOZMaterialBase::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  OZFactory::setNeedsSaving(*(this - 5), 1);

  return OZChannelObjectRoot::markChannelFactoriesForSerialization((this + 13), a2);
}

uint64_t OZMaterialBase::parseBegin(OZMaterialBase *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZMaterialBaseScope);
  OZChannelObjectRoot::parseBegin((this + 152), a2);
  return 1;
}

uint64_t non-virtual thunk toOZMaterialBase::parseBegin(OZMaterialBase *this, PCSerializerReadStream *a2)
{
  PCSerializerReadStream::pushScope(a2, &OZMaterialBaseScope);
  OZChannelObjectRoot::parseBegin((this + 104), a2);
  return 1;
}

uint64_t OZMaterialBase::parseEnd(OZMaterialBase *this, PCSerializerReadStream *a2)
{
  v3 = (this + 152);
  (*(*this + 200))(this, a2);
  OZChannelBase::setFlag((this + 568), 2, 0);
  OZChannelBase::resetFlag((this + 568), 0x400000, 0);
  OZChannelBase::setFlag((this + 872), 2, 0);
  OZChannelBase::resetFlag((this + 872), 0x400000, 0);
  OZChannelBase::setFlags((this + 416), 2uLL);
  OZChannelBase::resetFlag((this + 416), 0x400000, 0);
  OZChannelFolder::setFoldFlag(v3, 0x400000);
  OZChannelBase::setFlag(v3, 8, 0);
  OZChannelBase::resetFlag(v3, 32, 0);
  OZChannelBase::setFlag((this + 720), 128, 0);
  OZChannelFolder::setFoldFlag(v3, 0x80000);
  OZChannelBase::resetFlag(v3, 1, 0);
  return 1;
}

uint64_t OZMaterialBase::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannelObjectRoot::parseElement(this + 19, a2, a3);
  if (*(a3 + 2) == 200)
  {
    v6 = 0;
    (*(*a3 + 72))(a3, &v6);
    *(this + 1288) = v6;
  }

  return 1;
}

void OZMaterialBase::allowDrag(OZMaterialBase *this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6)
{
  *a5 = 0;
  if (lpsrc)
  {
    {
      *a5 = a4 & 1;
    }
  }
}

void non-virtual thunk toOZMaterialBase::allowDrag(OZMaterialBase *this, OZFactoryBase *lpsrc, OZChannelBase *a3, char a4, unsigned int *a5, unsigned int *a6)
{
  *a5 = 0;
  if (lpsrc)
  {
    {
      *a5 = a4 & 1;
    }
  }
}

uint64_t OZMaterialBase::performDragOperation(OZMaterialBase *this, OZFactoryBase *a2, OZChannelBase *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const CMTime *a8)
{
  v8 = a6;
  if (!(*(*this + 96))(this, a2, a3, a4, a5, a6, a7, a8))
  {
    v12 = *(OZApplication::getCurrentDoc(theApp) + 3);
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v12 = (*(*this + 96))(this);
  if (!a2)
  {
    return 0;
  }

LABEL_3:
  result = 0;
  if (v8 == 1 && v13)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(a3);
    if (ObjectManipulator)
    {
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v12 + 1584);
    PCURL::PCURL(&v23, @"Undo Material Change");
    OZDocument::startCaptureModifiedChannels(v17, &v23);
    PCString::~PCString(&v23);
    if (v16)
    {
      v19 = MEMORY[0x277CC08F0];
      ValueAsInt = OZChannel::getValueAsInt((v16 + 568), MEMORY[0x277CC08F0], 0.0);
      v21 = *((*(*v16 + 208))(v16) + 120);
      (*(*v16 + 80))(v16, v13);
      v22 = (*(*v16 + 208))(v16);
      OZChannelFolder::setFoldFlags(v22, v21);
      OZChannel::setValue((v16 + 568), v19, ValueAsInt, 0);
    }

    OZDocument::endCaptureModifiedChannels(*(v12 + 1584), v18);
    return 1;
  }

  return result;
}

void sub_2601E1480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  PCSharedCount::~PCSharedCount(v18 + 1);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&a16, a17);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v19 - 168);
  PCCFRef<CGColorSpace *>::~PCCFRef((v19 - 136));
  PCSharedCount::~PCSharedCount(v17 + 1);
  _Unwind_Resume(a1);
}

void LiVramLimitsExceededMaterial::LiVramLimitsExceededMaterial(LiVramLimitsExceededMaterial *this)
{
  *(this + 87) = &unk_2872DEA38;
  *(this + 88) = 0;
  *(this + 712) = 1;
  LiMaterial::LiMaterial(this, off_28726C000);
  *this = &unk_28726BEF8;
  *(this + 87) = &unk_28726BFE0;
  *(this + 83) = 0x3FF0000000000000;
  *(this + 42) = xmmword_2603426F0;
  *(this + 86) = 0x3FF0000000000000;
}

void sub_2601E1690(_Unwind_Exception *a1)
{
  *(v1 + 696) = v2;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount((v1 + 704));
  _Unwind_Resume(a1);
}

uint64_t OZMaterialBase::channelValueWillBeSet(OZMaterialBase *this, OZChannel *a2, const CMTime *a3, double a4)
{
  result = *(this + 160);
  if (result)
  {
    return (*(*result + 552))(result, a2, a3, a4 != 0.0);
  }

  return result;
}

void OZChannelUint16::OZChannelUint16(OZChannelUint16 *this, int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelUint16_FactoryBase = getOZChannelUint16_FactoryBase();
  OZChannel::OZChannel(this, OZChannelUint16_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_2872467D0;
  this->var2 = &unk_287246B30;
  OZChannelUint16Info = OZChannelUint16::createOZChannelUint16Info(v17);
  if (a8)
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
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint16::_OZChannelUint16Impl;
    this->var15 = OZChannelUint16::_OZChannelUint16Impl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void OZChanObjectRefWithPicker::OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChanObjectRefWithPicker_Factory::getInstance(this);
  OZChanObjectManipRef::OZChanObjectManipRef(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872A8F30;
  *(this + 2) = &unk_2872A92C0;
  *(this + 21) = this + 168;
  *(this + 22) = this + 168;
  *(this + 23) = 0;
  operator new();
}

void sub_2601E1910(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChanObjectManipRef::~OZChanObjectManipRef(v1);
  _Unwind_Resume(a1);
}

uint64_t OZChanObjectRefWithPicker_Factory::getInstance(OZChanObjectRefWithPicker_Factory *this)
{
  if (atomic_load_explicit(&OZChanObjectRefWithPicker_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanObjectRefWithPicker_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRefWithPicker_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChanObjectRefWithPicker_Factory::_instance;
}

void OZChanObjectRefWithPicker::OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3, a4, a5, a6);
  *v6 = &unk_2872A8F30;
  v6[2] = &unk_2872A92C0;
  v6[21] = v6 + 21;
  v6[22] = v6 + 21;
  v6[23] = 0;
  operator new();
}

void sub_2601E1A44(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChanObjectManipRef::~OZChanObjectManipRef(v1);
  _Unwind_Resume(a1);
}

void OZChanObjectRefWithPicker::OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3, a4);
  *v4 = &unk_2872A8F30;
  v4[2] = &unk_2872A92C0;
  v4[21] = v4 + 21;
  v4[22] = v4 + 21;
  v4[23] = 0;
  operator new();
}

void sub_2601E1B08(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v2);
  OZChanObjectManipRef::~OZChanObjectManipRef(v1);
  _Unwind_Resume(a1);
}

void OZChanObjectRefWithPicker::OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChanObjectManipRef::OZChanObjectManipRef(this, a2, a3);
  *v4 = &unk_2872A8F30;
  v4[2] = &unk_2872A92C0;
  std::list<PCUUID>::list(v4 + 21, &a2[1].var7);
  operator new();
}

void sub_2601E1C08(_Unwind_Exception *a1)
{
  std::__list_imp<unsigned int>::clear(v1 + 21);
  OZChanObjectManipRef::~OZChanObjectManipRef(v1);
  _Unwind_Resume(a1);
}

void OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this)
{
  *this = &unk_2872A8F30;
  *(this + 2) = &unk_2872A92C0;
  v2 = *(this + 20);
  if (v2)
  {
    std::__list_imp<unsigned int>::clear(*(this + 20));
    MEMORY[0x2666E9F00](v2, 0x1020C4062D53EE8);
  }

  *(this + 20) = 0;
  std::__list_imp<unsigned int>::clear(this + 21);

  OZChanObjectManipRef::~OZChanObjectManipRef(this);
}

{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChanObjectRefWithPicker::~OZChanObjectRefWithPicker(OZChanObjectRefWithPicker *this)
{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this - 16));
}

{
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChanObjectRefWithPicker::resetAcceptedObjects(uint64_t this)
{
  v1 = this;
  *(this + 194) = 0;
  v2 = (this + 194);
  *(this + 197) = 0;
  v3 = *(this + 160);
  for (i = *(v3 + 8); i != v3; i = i->i64[1])
  {
    v9 = i[1];
    this = OZFactories::findFactory(*(theApp + 32), &v9);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_260850750)))))
    {
      v5 = this;
      v8 = xmmword_260850040;
      this = OZFactory::isKindOfClass(this, &v8);
      if (this)
      {
        *(v1 + 195) = 1;
      }

      else
      {
        v8 = xmmword_2608514A0;
        this = OZFactory::isKindOfClass(v5, &v8);
        if (this)
        {
          *(v1 + 196) = 1;
        }

        else
        {
          v8 = xmmword_26084FAD0;
          this = OZFactory::isKindOfClass(v5, &v8);
          if (this)
          {
            *(v1 + 198) = 1;
          }

          else
          {
            v8 = xmmword_26084FAE0;
            this = OZFactory::isKindOfClass(v5, &v8);
            if (this)
            {
              *(v1 + 199) = 1;
            }

            else
            {
              v8 = xmmword_26084FA30;
              this = OZFactory::isKindOfClass(v5, &v8);
              if (this)
              {
                *(v1 + 200) = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      *v2 = 1;
    }
  }

  for (j = *(v1 + 176); j != (v1 + 168); j = j->i64[1])
  {
    v9 = j[1];
    this = OZFactories::findFactory(*(theApp + 32), &v9);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_260850750)))))
    {
      v7 = this;
      v8 = xmmword_260850040;
      this = OZFactory::isKindOfClass(this, &v8);
      if (this)
      {
        *(v1 + 195) = 0;
      }

      else
      {
        v8 = xmmword_2608514A0;
        this = OZFactory::isKindOfClass(v7, &v8);
        if (this)
        {
          *(v1 + 196) = 0;
        }

        else
        {
          v8 = xmmword_26084FAD0;
          this = OZFactory::isKindOfClass(v7, &v8);
          if (this)
          {
            *(v1 + 198) = 0;
          }

          else
          {
            v8 = xmmword_26084FAE0;
            this = OZFactory::isKindOfClass(v7, &v8);
            if (this)
            {
              *(v1 + 199) = 0;
            }

            else
            {
              v8 = xmmword_26084FA30;
              this = OZFactory::isKindOfClass(v7, &v8);
              if (this)
              {
                *(v1 + 200) = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      *(v1 + 195) = 0;
      *(v1 + 197) = 0;
    }
  }

  return this;
}

uint64_t OZChanObjectRefWithPicker::copy(OZChannelBase *this, const OZChannelBase *a2)
{
  OZChanSceneNodeRef::removeDependency(this);
  OZChannel::copy(this, a2, 0);
  std::__list_imp<unsigned int>::clear(this[1].var6);
  if (a2)
  {
  }

  if (*(a2[1].var6 + 1) != a2[1].var6)
  {
    std::list<PCUUID>::push_back();
  }

  if (a2 != this)
  {
    std::list<PCUUID>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<PCUUID,void *>,std::__list_const_iterator<PCUUID,void *>>(&this[1].var7, a2[1].var8, &a2[1].var7);
  }

  return OZChanSceneNodeRef::setDependency(this);
}

uint64_t OZChanObjectRefWithPicker::assign(OZChannelBase *this, const OZChannelBase *a2)
{
  OZChanSceneNodeRef::removeDependency(this);
  OZChannel::assign(this, a2);
  if (a2)
  {
    if (v4)
    {
      v5 = v4;
      std::__list_imp<unsigned int>::clear(this[1].var6);
      if (*(v5[1].var6 + 1) != v5[1].var6)
      {
        std::list<PCUUID>::push_back();
      }

      if (v5 != this)
      {
        std::list<PCUUID>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<PCUUID,void *>,std::__list_const_iterator<PCUUID,void *>>(&this[1].var7, v5[1].var8, &v5[1].var7);
      }
    }
  }

  return OZChanSceneNodeRef::setDependency(this);
}

uint64_t OZChanObjectRefWithPicker::setValue(OZChannelBase *this, double a2, double a3)
{
  OZChanSceneNodeRef::removeDependency(this);
  OZChannel::setValue(this, MEMORY[0x277CC08F0], a3, 0);

  return OZChanSceneNodeRef::setDependency(this);
}

unint64_t OZChanObjectRefWithPicker::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *a2)
{
  result = OZChanObjectManipRef::canReferenceObject(this, a2);
  if (result)
  {
    v5 = (*(*a2 + 232))(a2);
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    v7 = (*(*ObjectManipulator + 232))(ObjectManipulator);
    v8 = (*(*v7 + 272))();
    if (v5 == v7 && BYTE1(this[1].var11) != 1)
    {
      return 0;
    }

    if ((BYTE3(this[1].var5) & 1) == 0 && v8)
    {
      v20 = 0;
      v19 = &v19 + 8;
      v9 = v7[20];
      OZScene::getReferencedNodes(v8, *(v5 + 80), &v19);
      v10 = v19;
      if (v19 != (&v19 + 8))
      {
        while (*(v10 + 28) != v9)
        {
          v11 = *(v10 + 8);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = v11->i64[0];
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = *(v10 + 16);
              v17 = v12->i64[0] == v10;
              v10 = v12;
            }

            while (!v17);
          }

          v10 = v12;
          if (v12 == (&v19 + 8))
          {
            goto LABEL_14;
          }
        }

        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v19, *(&v19 + 1));
        return 0;
      }

LABEL_14:
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v19, *(&v19 + 1));
    }

    if (BYTE3(this[1].var10) == 1)
    {
      if (LOBYTE(this[1].var10) == 1)
      {
        if (!result)
        {
          return result;
        }

        v13 = (*(*result + 1352))(result);
LABEL_25:
        v17 = v13 == 0;
        return !v17;
      }

      if (BYTE1(this[1].var10) == 1)
      {
        if (!result)
        {
          return result;
        }

        v13 = (*(*result + 1360))(result);
        goto LABEL_25;
      }

LABEL_29:
      v17 = result == 0;
      return !v17;
    }

    if (BYTE2(this[1].var10) == 1)
    {
LABEL_21:
      v15 = a2;
      v16 = 16;
LABEL_28:
      goto LABEL_29;
    }

    if (BYTE6(this[1].var10) == 1)
    {
      v15 = a2;
      v16 = 48;
      goto LABEL_28;
    }

    if (HIBYTE(this[1].var10) == 1)
    {
      goto LABEL_21;
    }

    if (LOBYTE(this[1].var11) == 1)
    {
      v18 = *((*(*a2 + 256))(a2) + 8);
      v19 = xmmword_26084FA30;
      return OZFactory::isKindOfClass(v18, &v19);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t OZChanObjectRefWithPicker::removeAcceptedFactoryUUID(uint64_t a1, int32x4_t *a2)
{
  v3 = *(a1 + 160);
  v4 = v3;
  do
  {
    v4 = v4->i64[1];
    if (v4 == v3)
    {
      std::list<PCUUID>::push_back();
    }
  }

  while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v4[1], *a2)))) & 1) != 0);
  v6 = v4->i64[0];
  v5 = v4->i64[1];
  *(v6 + 8) = v5;
  *v5 = v6;
  --v3[1].i64[0];
  operator delete(v4);

  return OZChanObjectRefWithPicker::resetAcceptedObjects(a1);
}

uint64_t OZChanObjectRefWithPicker::parseBegin(OZChannelBase *this, PCSerializerReadStream *a2)
{
  OZChanSceneNodeRef::removeDependency(this);

  return OZChannel::parseBegin(this, a2);
}

uint64_t non-virtual thunk toOZChanObjectRefWithPicker::parseBegin(OZChanObjectRefWithPicker *this, PCSerializerReadStream *a2)
{
  v3 = (this - 16);
  OZChanSceneNodeRef::removeDependency((this - 16));

  return OZChannel::parseBegin(v3, a2);
}

uint64_t OZChanObjectRefWithPicker::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannel::parseEnd(this, a2);
  OZChanSceneNodeRef::setDependency(this);
  return 1;
}

uint64_t non-virtual thunk toOZChanObjectRefWithPicker::parseEnd(OZChanObjectRefWithPicker *this, PCSerializerReadStream *a2)
{
  v2 = (this - 16);
  OZChannel::parseEnd((this - 16), a2);
  OZChanSceneNodeRef::setDependency(v2);
  return 1;
}

void OZChanObjectRefWithPicker_Factory::OZChanObjectRefWithPicker_Factory(OZChanObjectRefWithPicker_Factory *this)
{
  v3 = xmmword_2608512C0;
  v4 = xmmword_260850EA0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872A9330;
  *(this + 16) = &unk_2872A9400;
}

void *std::list<PCUUID>::list(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    std::list<PCUUID>::push_back();
  }

  return result;
}

uint64_t *std::list<PCUUID>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<PCUUID,void *>,std::__list_const_iterator<PCUUID,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 1) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<PCUUID>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<PCUUID,void *>,std::__list_const_iterator<PCUUID,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<CMTime,double>>::erase(a1, i, a1);
  }
}

uint64_t std::list<PCUUID>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<PCUUID,void *>,std::__list_const_iterator<PCUUID,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_2601E2D38(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t OZChannelEnumRetime_Factory::getInstance(OZChannelEnumRetime_Factory *this)
{
  if (atomic_load_explicit(&OZChannelEnumRetime_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnumRetime_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnumRetime_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnumRetime_Factory::_instance;
}

void OZChannelEnumRetime::OZChannelEnumRetime(OZChannelEnumRetime *this, const PCString *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  Instance = OZChannelEnumRetime_Factory::getInstance(this);
  OZChannelEnum::OZChannelEnum(this, a2, Instance, a3, a4, a5, a6, 0, 0);
  *this = &unk_287282A58;
  *(this + 2) = &unk_287282DC8;
  *(this + 1) = OZChannelEnumRetime_Factory::getInstance(v13);
}

void OZChannelEnumRetime_Factory::OZChannelEnumRetime_Factory(OZChannelEnumRetime_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260853470;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872A9458;
  *(this + 16) = &unk_2872A9528;
}

void OZImageGenerator::OZImageGenerator(OZImageGenerator *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZElement::OZElement(this, a2, a3, a4);
  *v6 = &unk_2872A9580;
  *(v6 + 16) = &unk_2872A9E98;
  *(v6 + 48) = &unk_2872AA0F0;
  *(v6 + 6528) = &unk_2872AA148;
  OZChannelFolder::OZChannelFolder((v6 + 18776), a3, (this + 448), 1u, 0, 0);
  PCURL::PCURL(&v7, @"Channel Generator Width");
  OZChannelUint32::OZChannelUint32((this + 18904), &v7, (this + 18776), 0x12Cu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Generator Height");
  OZChannelUint32::OZChannelUint32((this + 19056), &v7, (this + 18776), 0x12Du, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Generator Pixel Aspect Ratio");
  OZChannelAspectRatio::OZChannelAspectRatio((this + 19208), &v7, (this + 18776), 0x12Eu, 0, 0, 0);
  PCString::~PCString(&v7);
  *(this + 19368) = 0u;
  *(this + 18396) = 0x100000002;
  OZChannelBase::resetFlag((this + 19208), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 19208));
  OZChannel::setMin((this + 18904), 1.0);
  OZChannel::setSliderMin((this + 18904), 1.0);
  OZChannelBase::setFlag((this + 18904), 0x100000000, 0);
  OZChannel::setMin((this + 19056), 1.0);
  OZChannel::setSliderMin((this + 19056), 1.0);
  OZChannelBase::setFlag((this + 19056), 0x100000000, 0);
  *(this + 19360) = 0;
}

void sub_2601E34D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + v13));
  OZChannel::~OZChannel((v10 + v12));
  OZChannelFolder::~OZChannelFolder((v10 + v11));
  OZElement::~OZElement(v10);
  _Unwind_Resume(a1);
}

void OZImageGenerator::OZImageGenerator(OZImageGenerator *this, const OZImageGenerator *a2, uint64_t a3)
{
  OZElement::OZElement(this, a2, a3);
  *v5 = &unk_2872A9580;
  *(v5 + 16) = &unk_2872A9E98;
  *(v5 + 48) = &unk_2872AA0F0;
  *(v5 + 6528) = &unk_2872AA148;
  OZChannelFolder::OZChannelFolder((v5 + 18776), (a2 + 18776), (this + 448));
  OZChannel::OZChannel((this + 18904), (a2 + 18904), (this + 18776));
  *(this + 2363) = &unk_287246400;
  *(this + 2365) = &unk_287246760;
  OZChannel::OZChannel((this + 19056), (a2 + 19056), (this + 18776));
  *(this + 2382) = &unk_287246400;
  *(this + 2384) = &unk_287246760;
  OZChannel::OZChannel((this + 19208), (a2 + 19208), (this + 18776));
  *(this + 2401) = &unk_287246F70;
  *(this + 19360) = *(a2 + 19360);
  *(this + 2403) = &unk_2872472D0;
  *(this + 19368) = 0u;
}

void sub_2601E3754(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelFolder::~OZChannelFolder((v1 + v4));
  OZElement::~OZElement(v1);
  _Unwind_Resume(a1);
}

void OZImageGenerator::~OZImageGenerator(OZImageGenerator *this)
{
  *this = &unk_2872A9580;
  *(this + 2) = &unk_2872A9E98;
  *(this + 6) = &unk_2872AA0F0;
  *(this + 816) = &unk_2872AA148;
  v2 = *(this + 2422);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZChannel::~OZChannel((this + 19208));
  OZChannel::~OZChannel((this + 19056));
  OZChannel::~OZChannel((this + 18904));
  OZChannelFolder::~OZChannelFolder((this + 18776));

  OZElement::~OZElement(this);
}

{
  OZImageGenerator::~OZImageGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZImageGenerator::~OZImageGenerator(OZImageGenerator *this)
{
  OZImageGenerator::~OZImageGenerator((this - 16));
}

{
  OZImageGenerator::~OZImageGenerator((this - 48));
}

{
  OZImageGenerator::~OZImageGenerator((this - 6528));
}

{
  OZImageGenerator::~OZImageGenerator((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZImageGenerator::~OZImageGenerator((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZImageGenerator::~OZImageGenerator((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZImageGenerator::operator=(uint64_t a1, const void *a2)
{
  OZElement::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 18904, v4 + 18904);

  return OZChannelBase::operator=(a1 + 19056, v5 + 19056);
}

void OZImageGenerator::setName(OZImageGenerator *this, const PCString *a2, int a3)
{
  OZChannelBase::setName((this + 18776), a2, 0);

  OZObjectManipulator::setName((this + 16), a2, a3);
}

void non-virtual thunk toOZImageGenerator::setName(OZImageGenerator *this, const PCString *a2, int a3)
{
  OZChannelBase::setName((this + 18760), a2, 0);

  OZObjectManipulator::setName(this, a2, a3);
}

__n128 OZImageGenerator::getNaturalDuration@<Q0>(OZImageGenerator *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(*this + 272))(this))
  {
    v4 = ((*(*this + 272))(this) + 1376);
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
  }

  result = *v4;
  *a2 = *v4;
  a2[1].n128_u64[0] = v4[1].n128_u64[0];
  return result;
}

__n128 non-virtual thunk toOZImageGenerator::getNaturalDuration@<Q0>(OZImageGenerator *this@<X0>, __n128 *a2@<X8>)
{
  v3 = this - 16;
  if ((*(*(this - 2) + 272))(this - 16))
  {
    v4 = ((*(*v3 + 272))(v3) + 1376);
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
  }

  result = *v4;
  *a2 = *v4;
  a2[1].n128_u64[0] = v4[1].n128_u64[0];
  return result;
}

void OZImageGenerator::getOriginalBounds(uint64_t a1, float64x2_t *a2, CMTime *a3)
{
  OZChannel::getValueAsDouble((a1 + 18904), a3, 0.0);
  v14 = v6;
  OZChannel::getValueAsDouble((a1 + 19056), a3, 0.0);
  v7.f64[0] = v14;
  v7.f64[1] = v8;
  __asm { FMOV            V2.2D, #-0.5 }

  *a2 = vmulq_f64(v7, _Q2);
  a2[1].f64[0] = v14;
  a2[1].f64[1] = v8;
}

OZChannelInfo *OZImageGenerator::didAddToScene(OZImageGenerator *this, CMTimeEpoch *a2)
{
  v4 = MEMORY[0x277CC08F0];
  v25 = **&MEMORY[0x277CC08F0];
  OZTransformNode::didAddToScene(this, a2);
  if (a2)
  {
    v5 = OZSceneSettings::OZSceneSettings(&v19, (a2 + 42));
    if ((*(theApp + 80) & 1) != 0 || (v6 = OZPreferenceManager::Instance(v5), UseProjectDurationForStills = OZPreferenceManager::getUseProjectDurationForStills(v6), UseProjectDurationForStills))
    {
      *&v25.value = *(a2 + 86);
      epoch = a2[174];
    }

    else
    {
      OZPreferenceManager::Instance(UseProjectDurationForStills);
      OZSceneSettings::getFrameDuration((a2 + 42), &time2);
      OZPreferenceManager::getDefaultStillDuration(&time2, &time1);
      *&v25.value = *&time1.value;
      epoch = time1.epoch;
    }

    v25.epoch = epoch;
    v11 = v22;
    v17 = vcvtq_f64_f32(vcvt_f32_s32(*(&v19 + 8)));
    *&v19 = &unk_287283398;
    PCString::~PCString(&v24);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v23);
    v9 = v17;
    v10 = v11;
  }

  else
  {
    v9 = xmmword_260850050;
    v10 = 1.0;
  }

  v18 = *&v9;
  v19 = *(this + 13);
  v20 = *(this + 28);
  v21 = *(this + 232);
  v12 = *(&v9 + 1);
  if (*(this + 19360) != 1 || (OZChannel::getValueAsDouble((this + 19208), MEMORY[0x277CC08F0], 0.0), v13 == 0.0))
  {
    v14 = v18;
    v15 = v12;
    OZImageGenerator::initializeGeneratorBounds(this, v14, v15, v10);
    v21 = v25;
    OZChannelObjectRootBase::setTimeExtent((this + 56), &v19, 0);
  }

  time2 = v21;
  time1 = *v4;
  if (!CMTimeCompare(&time1, &time2))
  {
    v21 = v25;
    OZChannelObjectRootBase::setTimeExtent((this + 56), &v19, 0);
  }

  OZChannel::setSliderMax((this + 18904), v18);
  return OZChannel::setSliderMax((this + 19056), v12);
}

void sub_2601E3F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZSceneSettings::~OZSceneSettings(va);
  _Unwind_Resume(a1);
}

void OZImageGenerator::initializeGeneratorBounds(OZImageGenerator *this, float a2, float a3, float a4)
{
  OZChannel::setDefaultValue((this + 18904), a2);
  OZChannelBase::reset((this + 18904), 0);
  OZChannel::setDefaultValue((this + 19056), a3);
  OZChannelBase::reset((this + 19056), 0);
  OZChannel::setDefaultValue((this + 19208), a4);
  OZChannelBase::reset((this + 19208), 0);
  *(this + 19360) = 1;
}

uint64_t OZImageGenerator::setTimeOffsetAndDuration(OZImageGenerator *this, CMTime *a2, CMTime *a3)
{
  v13 = *a3;
  time1 = *a3;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) <= 0 && (*(*this + 272))(this))
  {
    v5 = (*(*this + 272))(this);
    OZSceneSettings::OZSceneSettings(&time1, (v5 + 336));
    v6 = (*(*this + 272))(this);
    OZSceneSettings::getFrameDuration((v6 + 336), &v8);
    operator*(&v8, time1.epoch, &time2);
    v13 = time2;
    time1.value = &unk_287283398;
    PCString::~PCString(&v12);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  }

  time1 = *a2;
  v10 = v13;
  return OZChannelObjectRootBase::setTimeExtent((this + 56), &time1, 0);
}

void sub_2601E41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  OZSceneSettings::~OZSceneSettings(va);
  _Unwind_Resume(a1);
}

void OZImageGenerator::pixelTransformSupport(OZImageGenerator *this, const LiRenderParameters *a2, OZRenderParams *a3)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v5, "subclass must implement");
  PCString::PCString(&v4, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZImageGenerator.mm");
  PCException::PCException(exception, &v5, &v4, 226);
  *exception = &unk_2871F6178;
}

void sub_2601E4354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void OZImageGenerator::getHelium(OZImageGenerator *this, LiAgent *a2, const OZRenderParams *a3)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v5, "subclass must implement");
  PCString::PCString(&v4, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZImageGenerator.mm");
  PCException::PCException(exception, &v5, &v4, 231);
  *exception = &unk_2871F6178;
}

void sub_2601E4434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void OZNULLBehavior::OZNULLBehavior(OZNULLBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  *v5 = &unk_2872AA238;
  v6 = v5 + 2;
  v5[2] = &unk_2872AA4B8;
  v5[6] = &unk_2872AA710;
  PCURL::PCURL(&v7, @"NULL Behavior Missing");
  PCString::append(&v7, a3);
  (*(*v6 + 120))(v6, &v7, 0);
  PCString::~PCString(&v7);
}

void OZNULLBehavior::OZNULLBehavior(OZNULLBehavior *this, const OZNULLBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  *v3 = &unk_2872AA238;
  v3[2] = &unk_2872AA4B8;
  v3[6] = &unk_2872AA710;
}

void non-virtual thunk toOZNULLBehavior::~OZNULLBehavior(OZNULLBehavior *this)
{
  OZBehavior::~OZBehavior((this - 16));
}

{
  OZBehavior::~OZBehavior((this - 48));
}

{
  OZBehavior::~OZBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZBehavior::~OZBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

void OZNULLBehavior::~OZNULLBehavior(OZNULLBehavior *this)
{
  OZBehavior::~OZBehavior(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannelBehaviorRoot_Factory::getInstance(OZChannelBehaviorRoot_Factory *this)
{
  if (atomic_load_explicit(&OZChannelBehaviorRoot_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelBehaviorRoot_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelBehaviorRoot_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelBehaviorRoot_Factory::_instance;
}

void OZChannelBehaviorRoot::OZChannelBehaviorRoot(OZChannelBehaviorRoot *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelBehaviorRoot_Factory::getInstance(this);
  OZChannelObjectRoot::OZChannelObjectRoot(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872AA780;
  *(this + 2) = &unk_2872AAB18;
  *(this + 32) = 0;
}

void OZChannelBehaviorRoot::OZChannelBehaviorRoot(OZChannelBehaviorRoot *this, const OZChannelBehaviorRoot *a2, OZChannelFolder *a3)
{
  OZChannelObjectRoot::OZChannelObjectRoot(this, a2, a3);
  *v3 = &unk_2872AA780;
  v3[2] = &unk_2872AAB18;
  v3[32] = 0;
}

void non-virtual thunk toOZChannelBehaviorRoot::~OZChannelBehaviorRoot(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);
}

{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);

  JUMPOUT(0x2666E9F00);
}

void OZChannelBehaviorRoot::~OZChannelBehaviorRoot(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this);

  JUMPOUT(0x2666E9F00);
}

__CFString *OZChannelBehaviorRoot::reset(OZChannelBase *this, uint64_t a2)
{
  var0 = this[2].var4.var0;
  if (var0)
  {
    (*(var0->isa + 59))(var0);
  }

  OZChannelBase::reset(this, a2);
  result = this[2].var4.var0;
  if (result)
  {
    v6 = *(result->isa + 58);

    return v6();
  }

  return result;
}

const OZChannelBase *OZChannelBehaviorRoot::compare(OZChannelBehaviorRoot *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    return (*(this + 32) == result[2].var4.var0 && (OZChannelFolder::compare(this, result) & 1) != 0);
  }

  return result;
}

void OZChannelBehaviorRoot_Factory::OZChannelBehaviorRoot_Factory(OZChannelBehaviorRoot_Factory *this)
{
  v3 = xmmword_260851370;
  v4 = xmmword_2608534D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872AAB88;
  *(this + 16) = &unk_2872AAC58;
}

void OZSingleChanCurveNode::OZSingleChanCurveNode(OZSingleChanCurveNode *this, OZSingleChanBehaviorIF *a2, OZChannel *a3)
{
  v6 = (*(*a2 + 72))(a2);
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, v6, a3);
  *this = &unk_2872AACB0;
  *(this + 4) = a2;
  *(this + 10) = a3->var3;
}

void OZSingleChanCurveNode::OZSingleChanCurveNode(OZSingleChanCurveNode *this, OZSingleChanBehaviorIF *a2, OZChannel *a3, int a4)
{
  v8 = (*(*a2 + 72))(a2);
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, v8, a3);
  *this = &unk_2872AACB0;
  *(this + 4) = a2;
  *(this + 10) = a4;
}

void OZSingleChanCurveNode::~OZSingleChanCurveNode(OZSingleChanCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSingleChanCurveNode::solveNode(OZSingleChanCurveNode *this, const CMTime *a2, double a3, double a4)
{
  result = (*(**(this + 4) + 64))(*(this + 4));
  if ((result & 1) == 0)
  {
    v10 = *(**(this + 4) + 16);
    v8.n128_f64[0] = a3;
    v9.n128_f64[0] = a4;

    return v10(v8, v9);
  }

  return result;
}

uint64_t OZSingleChanCurveNode::solveNode(OZSingleChanCurveNode *this, OZCurveNodeParam *a2)
{
  result = (*(**(this + 4) + 64))(*(this + 4));
  if ((result & 1) == 0)
  {
    v4 = *(**(this + 4) + 24);

    return v4();
  }

  return result;
}

void OZFontFace::OZFontFace(OZFontFace *this, const PCString *a2, const PCString *a3, OZFontFamily *a4)
{
  *this = &unk_2872AADA8;
  v7 = (this + 16);
  PCString::PCString(this + 1, a2);
  PCString::PCString(v7, a3);
  *(this + 3) = a4;
}

void OZFontFace::~OZFontFace(PCString *this)
{
  this->var0 = &unk_2872AADA8;
  v1 = this + 1;
  PCString::~PCString(this + 2);
  PCString::~PCString(v1);
}

{
  this->var0 = &unk_2872AADA8;
  v1 = this + 1;
  PCString::~PCString(this + 2);
  PCString::~PCString(v1);

  JUMPOUT(0x2666E9F00);
}

void OZCoreTextTypeface::OZCoreTextTypeface(OZCoreTextTypeface *this, const PCString *a2, const PCString *a3, int a4, OZFontFamily *a5)
{
  OZFontFace::OZFontFace(this, a2, a3, a5);
  *v6 = &unk_2872AADD0;
  *(v6 + 32) = a4;
}

void OZCoreTextTypeface::~OZCoreTextTypeface(PCString *this)
{
  this->var0 = &unk_2872AADA8;
  v1 = this + 1;
  PCString::~PCString(this + 2);
  PCString::~PCString(v1);
}

{
  this->var0 = &unk_2872AADA8;
  v1 = this + 1;
  PCString::~PCString(this + 2);
  PCString::~PCString(v1);
}

{
  this->var0 = &unk_2872AADA8;
  v1 = this + 1;
  PCString::~PCString(this + 2);
  PCString::~PCString(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChanTransformNodeRef::OZChanTransformNodeRef(OZChanTransformNodeRef *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3, a4, a5);
  *v5 = &unk_2872AAE20;
  v5[2] = &unk_2872AB1A0;
}

void OZChanTransformNodeRef::OZChanTransformNodeRef(OZChanTransformNodeRef *this, const OZChanSceneNodeRef *a2, OZChannelFolder *a3)
{
  OZChanSceneNodeRef::OZChanSceneNodeRef(this, a2, a3);
  *v3 = &unk_2872AAE20;
  v3[2] = &unk_2872AB1A0;
}

void non-virtual thunk toOZChanTransformNodeRef::~OZChanTransformNodeRef(OZChanTransformNodeRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));
}

{
  OZChanSceneNodeRef::~OZChanSceneNodeRef((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanTransformNodeRef::~OZChanTransformNodeRef(OZChanTransformNodeRef *this)
{
  OZChanSceneNodeRef::~OZChanSceneNodeRef(this);

  JUMPOUT(0x2666E9F00);
}

const void *OZChanTransformNodeRef::getTransformNode(OZChannelBase *this)
{
  result = OZChanSceneNodeRef::getNode(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZChanTransformNodeRef::canReferenceObject(OZChannelBase *this, const OZObjectManipulator *lpsrc)
{
  {
    return 0;
  }

  return OZChanSceneNodeRef::canReferenceObject(this, lpsrc);
}

void OZAlignSimBehavior::OZAlignSimBehavior(OZAlignSimBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872AB210;
  v5[2] = &unk_2872AB508;
  v5[6] = &unk_2872AB760;
  v5[42] = &unk_2872AB7B8;
  PCURL::PCURL(&v7, @"Align Sim Behavior Rotation Axis Enum");
  PCURL::PCURL(&v6, @"Align Sim Behavior Rotation Axis");
  OZChannelEnum::OZChannelEnum((this + 504), 2u, &v7, &v6, (this + 56), 0x195u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align Sim Behavior Axis Enum");
  PCURL::PCURL(&v6, @"Align Sim Behavior Axis");
  OZChannelEnum::OZChannelEnum((this + 760), &v7, &v6, (this + 56), 0x190u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align Sim Behavior Invert Axis");
  OZChannelBool::OZChannelBool((this + 1016), &v7, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align Sim Behavior Spring Coefficient");
  OZChannelDouble::OZChannelDouble((this + 1168), 100.0, &v7, (this + 56), 0x192u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align Sim Behavior Drag Coefficient");
  OZChannelDouble::OZChannelDouble((this + 1320), 15.0, &v7, (this + 56), 0x193u, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannel::setSliderMax((this + 1168), 500.0);
  OZChannel::setSliderMax((this + 1320), 40.0);
}

void sub_2601E5D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1168));
  OZChannelBool::~OZChannelBool((v12 + 1016));
  OZChannelEnum::~OZChannelEnum((v12 + 760));
  OZChannelEnum::~OZChannelEnum((v12 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v12);
  _Unwind_Resume(a1);
}

void OZAlignSimBehavior::OZAlignSimBehavior(OZAlignSimBehavior *this, OZAlignSimBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872AB210;
  v5[2] = &unk_2872AB508;
  v5[6] = &unk_2872AB760;
  v5[42] = &unk_2872AB7B8;
  OZChannelEnum::OZChannelEnum((v5 + 63), (a2 + 504), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 760), (a2 + 760), (this + 56));
  OZChannelBool::OZChannelBool((this + 1016), (a2 + 1016), (this + 56));
  OZChannel::OZChannel((this + 1168), (a2 + 1168), (this + 56));
  *(this + 146) = &unk_287245C60;
  *(this + 148) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1320), (a2 + 1320), (this + 56));
  *(this + 165) = &unk_287245C60;
  *(this + 167) = &unk_287245FC0;
}

void sub_2601E5FA0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 1016));
  OZChannelEnum::~OZChannelEnum((v1 + 760));
  OZChannelEnum::~OZChannelEnum((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZAlignSimBehavior::~OZAlignSimBehavior(OZAlignSimBehavior *this)
{
  *this = &unk_2872AB210;
  *(this + 2) = &unk_2872AB508;
  *(this + 6) = &unk_2872AB760;
  *(this + 42) = &unk_2872AB7B8;
  OZChannel::~OZChannel((this + 1320));
  OZChannel::~OZChannel((this + 1168));
  OZChannelBool::~OZChannelBool((this + 1016));
  OZChannelEnum::~OZChannelEnum((this + 760));
  OZChannelEnum::~OZChannelEnum((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZAlignSimBehavior::~OZAlignSimBehavior(OZAlignSimBehavior *this)
{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 16));
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 48));
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 336));
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAlignSimBehavior::~OZAlignSimBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZAlignSimBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 760, v5 + 760);
  OZChannelBase::operator=(a1 + 1016, v5 + 1016);
  OZChannelBase::operator=(a1 + 1168, v5 + 1168);

  return OZChannelBase::operator=(a1 + 1320, v5 + 1320);
}

void OZAlignSimBehavior::accumForces(OZAlignSimBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v76 = *(a2 + 176);
  v69 = *(a2 + 176);
  if ((*(*this + 296))(this, &v69, 0, 1, 1))
  {
    v5 = *(a2 + 7);
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    v69 = v76;
    v8 = 0.0;
    ValueAsInt = OZChannel::getValueAsInt((this + 504), &v69, 0.0);
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (ValueAsInt <= 2)
    {
      v8 = dbl_260853588[ValueAsInt];
      v10 = dbl_2608535A0[ValueAsInt];
      v11 = dbl_2608535B8[ValueAsInt];
      v12 = dbl_2608535D0[ValueAsInt];
      v13 = dbl_2608535E8[ValueAsInt];
      v14 = dbl_260853600[ValueAsInt];
    }

    v15 = v5 * v14;
    v16 = v6 * v13;
    v17 = v7 * v12;
    v18 = v17 * v17 + v16 * v16 + v15 * v15;
    if (fabs(v18) >= 0.0000001)
    {
      v19 = sqrt(v18);
      if (fabs(v19) >= 0.000000100000001)
      {
        v15 = v15 / v19;
        v16 = v16 / v19;
        v17 = v17 / v19;
      }

      v20 = 0.0;
      v21 = OZChannel::getValueAsInt((this + 1016), &v76, 0.0);
      v22 = -v15;
      v23 = -v16;
      v24 = -v17;
      if (!v21)
      {
        v22 = v15;
        v23 = v16;
        v24 = v17;
      }

      *&v69.value = v22;
      *&v69.timescale = v10 * v24 - v8 * v23;
      v73 = v24;
      v74 = v11 * v23 - v10 * v22;
      *&v69.epoch = v11;
      v70 = v23;
      v71 = v8 * v22 - v11 * v24;
      v72 = v10;
      v75 = v8;
      v64 = 0x3FF0000000000000uLL;
      v65 = 0uLL;
      v66 = 0x3FF0000000000000uLL;
      v67 = 0uLL;
      v68 = 0x3FF0000000000000;
      v63 = v76;
      v25 = OZChannel::getValueAsInt(this + 5, &v63, 0.0);
      if (v25 == 2)
      {
        v64 = 0uLL;
        v65 = xmmword_2603426F0;
        v66 = xmmword_2603426F0;
        v67 = xmmword_26034C200;
      }

      else
      {
        if (v25 != 1)
        {
LABEL_14:
          *v26.i64 = PCMatrix33Tmpl<double>::operator*(&v69, &v64, &v63);
          v59 = 1.0;
          v60 = 0.0;
          v61 = 0.0;
          v62 = 0.0;
          PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(&v63, &v59, v26, v27, v28, v29, v30);
          v32 = *(a2 + 3);
          v31 = *(a2 + 4);
          v33 = *(a2 + 5);
          v34 = *(a2 + 6);
          v35 = v32 * v32 + v31 * v31 + v33 * v33 + v34 * v34;
          if (v35 != 0.0)
          {
            v32 = v32 / v35;
            v31 = -v31 / v35;
            v33 = -v33 / v35;
            v34 = -v34 / v35;
          }

          v36 = v59 * v32 - (v62 * v34 + v61 * v33 + v60 * v31);
          v37 = v60 * v33 - v61 * v31;
          v38 = v61 * v34 - v62 * v33 + v59 * v31 + v60 * v32;
          v39 = v62 * v31 - v60 * v34 + v59 * v33 + v61 * v32;
          v40 = v37 + v59 * v34 + v62 * v32;
          v41 = sqrt(v36 * v36 + v38 * v38 + v39 * v39 + v40 * v40);
          v42 = 1.0;
          if (v41 == 0.0)
          {
            v44 = 0.0;
            v45 = 0.0;
            v46 = 0.0;
            v43 = 1.0;
          }

          else
          {
            v43 = v36 / v41;
            v44 = v38 / v41;
            v45 = v39 / v41;
            v46 = v40 / v41;
          }

          v47 = sqrt(v44 * v44 + v45 * v45 + v46 * v46);
          if (fabs(v47) >= 0.000000100000001)
          {
            v42 = v47;
          }

          v48 = v44 / v42;
          v49 = v45 / v42;
          v50 = v46 / v42;
          v51 = acos(v43);
          v52 = v51 + v51;
          if (v52 > 3.14159265)
          {
            v52 = v52 + -6.28318531;
          }

          if (v52 >= -3.14159265)
          {
            v53 = v52;
          }

          else
          {
            v53 = v52 + 6.28318531;
          }

          OZChannel::getValueAsDouble((this + 1168), &v76, 0.0);
          v55 = v54;
          OZChannel::getValueAsDouble((this + 1320), &v76, 0.0);
          v57 = *(a2 + 12);
          v58 = *(a2 + 20) + v55 * v53 * v49 - v56 * *(a2 + 11);
          *(a2 + 19) = *(a2 + 19) + v55 * v53 * v48 - v56 * *(a2 + 10);
          *(a2 + 20) = v58;
          *(a2 + 21) = v55 * v53 * v50 - v56 * v57 + *(a2 + 21);
          return;
        }

        v67 = 0uLL;
        v64 = xmmword_260342700;
        v65 = xmmword_26034D970;
        v66 = 0uLL;
        v20 = 1.0;
      }

      v68 = *&v20;
      goto LABEL_14;
    }
  }
}

double PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  a3.i64[0] = *a1;
  a4.i64[0] = *(a1 + 32);
  v7 = *(a1 + 64);
  *a7.i64 = *a1 + 1.0;
  *a2 = sqrt(fmax(*a7.i64 + *a4.i64 + v7, 0.0)) * 0.5;
  *a7.i64 = sqrt(fmax(*a7.i64 - *a4.i64 - v7, 0.0)) * 0.5;
  *a3.i64 = 1.0 - *a3.i64;
  *a6.i64 = sqrt(fmax(*a3.i64 + *a4.i64 - v7, 0.0)) * 0.5;
  *a3.i64 = sqrt(fmax(*a3.i64 - *a4.i64 + v7, 0.0)) * 0.5;
  *a4.i64 = *(a1 + 56) - *(a1 + 40);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  v10 = vbslq_s8(v9, a7, a4);
  *(a2 + 8) = v10.i64[0];
  *v10.i64 = *(a1 + 16) - *(a1 + 48);
  v11 = vbslq_s8(v9, a6, v10);
  *(a2 + 16) = v11.i64[0];
  *v11.i64 = *(a1 + 24) - *(a1 + 8);
  a3.i64[0] = vbslq_s8(v9, a3, v11).u64[0];
  *(a2 + 24) = a3.i64[0];
  return *a3.i64;
}

void OZAlignSimBehavior::accumForces(OZAlignSimBehavior *this, OZSimStateArray *a2)
{
  v73 = *(a2 + 1);
  v68 = *(a2 + 24);
  *&v69 = *(a2 + 5);
  if (!(*(*this + 296))(this, &v68, 0, 1, 1))
  {
    return;
  }

  v68 = *&v73.value;
  *&v69 = v73.epoch;
  v4 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 504), &v68, 0.0);
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if (ValueAsInt <= 2)
  {
    v4 = dbl_260853588[ValueAsInt];
    v6 = dbl_2608535A0[ValueAsInt];
    v7 = dbl_2608535B8[ValueAsInt];
    v8 = dbl_2608535D0[ValueAsInt];
    v9 = dbl_2608535E8[ValueAsInt];
    v10 = dbl_260853600[ValueAsInt];
  }

  v68 = 0x3FF0000000000000uLL;
  v69 = 0uLL;
  v70 = 0x3FF0000000000000uLL;
  v71 = 0uLL;
  v72 = 0x3FF0000000000000;
  v61 = v73;
  v11 = 0.0;
  v12 = OZChannel::getValueAsInt(this + 5, &v61, 0.0);
  if (v12 == 2)
  {
    v68 = 0uLL;
    v69 = xmmword_2603426F0;
    v70 = xmmword_2603426F0;
    v71 = xmmword_26034C200;
  }

  else
  {
    if (v12 != 1)
    {
      goto LABEL_9;
    }

    v71 = 0uLL;
    v68 = xmmword_260342700;
    v69 = xmmword_26034D970;
    v70 = 0uLL;
    v11 = 1.0;
  }

  v72 = *&v11;
LABEL_9:
  v13 = OZChannel::getValueAsInt((this + 1016), &v73, 0.0);
  OZChannel::getValueAsDouble((this + 1168), &v73, 0.0);
  v52 = v14;
  OZChannel::getValueAsDouble((this + 1320), &v73, 0.0);
  v51 = v15;
  v17 = *a2;
  v16 = *(a2 + 1);
  if (*a2 != v16)
  {
    v49 = v9;
    v50 = v8;
    do
    {
      v18 = v10 * *(v17 + 56);
      v19 = v9 * *(v17 + 64);
      v20 = v8 * *(v17 + 72);
      v21 = v18 * v18 + v19 * v19 + v20 * v20;
      if (fabs(v21) >= 0.0000001)
      {
        v22 = sqrt(v21);
        v23 = fabs(v22) < 0.000000100000001;
        v24 = v18 / v22;
        v25 = v19 / v22;
        v26 = v20 / v22;
        if (!v23)
        {
          v18 = v24;
          v19 = v25;
          v20 = v26;
        }

        if (v13)
        {
          v18 = -v18;
          v19 = -v19;
          v20 = -v20;
        }

        *&v61.value = v18;
        *&v61.timescale = v6 * v20 - v4 * v19;
        v65 = v20;
        v66 = v7 * v19 - v6 * v18;
        *&v61.epoch = v7;
        v62 = v19;
        v63 = v4 * v18 - v7 * v20;
        v64 = v6;
        v67 = v4;
        *v27.i64 = PCMatrix33Tmpl<double>::operator*(&v61, &v68, v60);
        v57 = 1.0;
        v59 = 0.0;
        v58 = 0uLL;
        PCMatrix33Tmpl<double>::getQuaternionFromRotationMatrix(v60, &v57, v27, v28, v29, v30, v31);
        v33 = *(v17 + 24);
        v34 = *(v17 + 32);
        v35 = *(v17 + 48);
        v36 = v33 * v33 + vaddvq_f64(vmulq_f64(v34, v34)) + v35 * v35;
        if (v36 != 0.0)
        {
          v33 = v33 / v36;
          v34 = vdivq_f64(vnegq_f64(v34), vdupq_lane_s64(*&v36, 0));
          v35 = -v35 / v36;
        }

        *v32.i64 = v59;
        *&v37.f64[0] = vdupq_laneq_s64(v34, 1).u64[0];
        v37.f64[1] = v35;
        v56 = vmulq_n_f64(v37, v57);
        *&v38.f64[0] = vdupq_laneq_s64(v58, 1).u64[0];
        v38.f64[1] = v59;
        v55 = vmulq_n_f64(v38, v33);
        v53 = vmulq_f64(v58, vextq_s8(v37, v34, 8uLL));
        v54 = vmulq_f64(vzip1q_s64(v32, v58), v34);
        v39 = vmuld_lane_f64(v35, v58, 1) - vmuld_lane_f64(v59, v34, 1) + v57 * v34.f64[0] + v33 * *v58.i64;
        v40 = acos(v57 * v33 - (v59 * v35 + vmuld_lane_f64(*&v58.i64[1], v34, 1) + vmulq_f64(v58, v34).f64[0]));
        v41 = v40 + v40;
        if (v41 > 3.14159265)
        {
          v41 = v41 + -6.28318531;
        }

        if (v41 < -3.14159265)
        {
          v41 = v41 + 6.28318531;
        }

        v42 = v52 * v41;
        v43 = vaddq_f64(vsubq_f64(v54, v53), vaddq_f64(v56, v55));
        v44 = vmulq_f64(v43, v43);
        v45 = sqrt(v39 * v39 + v44.f64[0] + v44.f64[1]);
        if (fabs(v45) < 0.000000100000001)
        {
          v45 = 1.0;
        }

        v46 = vdivq_f64(v43, vdupq_lane_s64(*&v45, 0));
        v47 = v39 / v45 * v42;
        v48 = vsubq_f64(vmulq_n_f64(v46, v42), vmulq_n_f64(*(v17 + 88), v51));
        *(v17 + 152) = *(v17 + 152) + v47 - v51 * *(v17 + 80);
        *(v17 + 160) = vaddq_f64(*(v17 + 160), v48);
        v16 = *(a2 + 1);
        v9 = v49;
        v8 = v50;
      }

      v17 += 248;
    }

    while (v17 != v16);
  }
}