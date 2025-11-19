uint64_t OZFootageLayer::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  {
    __cxa_bad_cast();
  }

  return OZChannelFolder::operator=(a1 + 1112);
}

uint64_t OZFootageLayer::getDescendantAtIndex(OZFootageLayer *this, int a2)
{
  v2 = this + 1088;
  v3 = *(this + 137);
  v4 = v3 != this + 1088;
  if (v3 != this + 1088 && a2 != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(v3 + 2);
      {
        ++v7;
      }

      v3 = *(v3 + 1);
      v4 = v3 != v2;
    }

    while (v3 != v2 && v7 != a2);
  }

  if (!v4)
  {
    return 0;
  }

  v10 = *(v3 + 2);
  if (v10)
  {
    return v10 + 16;
  }

  else
  {
    return 0;
  }
}

void OZFootageLayer::addDescendantAfter(OZFootageLayer *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
    v3 = this + 1088;
    for (i = *(this + 137); ; i = *(i + 8))
    {
      if (i == v3)
      {
        goto LABEL_8;
      }

      if (*(i + 16) == a3)
      {
        break;
      }
    }

    if (i != v3)
    {
      operator new();
    }
  }

LABEL_8:
  operator new();
}

void OZFootageLayer::addDescendantBefore(OZFootageLayer *this, OZSceneNode *a2, OZSceneNode *a3)
{
  if (a3)
  {
      ;
    }
  }

  operator new();
}

OZChannelFolder *OZFootageLayer::removeDescendant(OZFootageLayer *this, OZSceneNode *a2)
{
  v4 = (this + 1088);
  for (i = *(this + 137); i != v4; i = i[1])
  {
    if (i[2] == a2)
    {
      if (i != v4)
      {
        (*(*a2 + 256))(a2, 0);
        v7 = *i;
        v6 = i[1];
        *(v7 + 1) = v6;
        *v6 = v7;
        --*(this + 138);
        operator delete(i);
        (*(*this + 496))(this);
        v8 = *(this + 121);
        if (v8)
        {
          OZScene::unregisterNode(v8, a2);
          OZScene::removeAllDependencies(*(this + 121), a2);
        }
      }

      break;
    }
  }

  v9 = (*(*a2 + 640))(a2);

  return OZChannelFolder::removeDescendant((this + 56), v9);
}

uint64_t OZFootageLayer::writeBody(unsigned int **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
    PCSerializerWriteStream::pushScope(a2, &OZFootageLayerScope);
    v10 = (*(*this + 128))(this);
    v11 = (*(*this + 129))(this);
    v29 = 1065353216;
    memset(v28, 0, sizeof(v28));
    v24 = v10;
    v25 = v10;
    v26 = v11;
    v27 = 0;
    (*(*this + 128))(this);
    v12 = (*(*this + 129))(this);
    memset(v22, 0, sizeof(v22));
    v23 = 1065353216;
    v21 = v12;
    v13 = v10;
    if (v10 != v12)
    {
      v14 = MEMORY[0x277D85DF8];
      do
      {
        v15 = *(v13 + 16);
        if (OZChannelBase::testFlag((v15 + 56), 8))
        {
          Name = OZObjectManipulator::getName((v15 + 16));
          CStr = PCString::createCStr(Name);
          fprintf(*v14, "\nBOGUS: Footage marked as don't save for '%s'\n\n", CStr);
          if (CStr)
          {
            MEMORY[0x2666E9F00](CStr, 0x1000C4077774924);
          }
        }

        v19 = *(v15 + 48);
        v18 = v15 + 48;
        (*(v19 + 16))(v18, a2, 0);
        (*(*v18 + 24))(v18, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
        v13 = *(v24 + 8);
        v24 = v13;
      }

      while (v13 != v21);
    }

    PCSerializerWriteStream::popScope(a2);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v22);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v28);
  }

  return OZSceneNode::writeBody(this, a2, a3, a4, a5);
}

void sub_26017E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
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
  _Unwind_Resume(a1);
}

uint64_t OZFootageLayer::parseBegin(OZFootageLayer *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZFootageLayerScope);
  return 1;
}

uint64_t non-virtual thunk toOZFootageLayer::parseBegin(OZFootageLayer *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZFootageLayerScope);
  return 1;
}

uint64_t OZFootageLayer::parseElement(OZFootageLayer *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v13);
  *v12 = 0;
  OZSceneNode::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 == 62)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v12);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v13);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v12[1]);
    v8 = OZFactories::lookupFactory(*(theApp + 32), v12[0]);
    if (!v8)
    {
      goto LABEL_9;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

    SceneNode = (*(*v9 + 168))(v9, &v13, v12[1]);
  }

  else
  {
    if (v6 != 67)
    {
      goto LABEL_9;
    }

    PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v13);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v12[1]);
    v14 = xmmword_260850040;
    SceneNode = OZApplication::createSceneNode(theApp, &v14);
  }

  v10 = SceneNode;
  if (SceneNode)
  {
    OZChannelBase::setID((SceneNode + 56), v12[1]);
    (*(*v10 + 256))(v10, this);
    operator new();
  }

LABEL_9:
  PCString::~PCString(&v13);
  return 1;
}

__n128 OZFootageLayer::getNaturalDuration@<Q0>(OZFootageLayer *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 232);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 31);
  return result;
}

__n128 non-virtual thunk toOZFootageLayer::getNaturalDuration@<Q0>(OZFootageLayer *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 216);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 29);
  return result;
}

void OZLiCachingImageSource::OZLiCachingImageSource(OZLiCachingImageSource *this, const OZRenderParams *a2, OZElement *a3)
{
  *(this + 183) = &unk_2872DEA38;
  *(this + 184) = 0;
  *(this + 1480) = 1;
  LiImageSource::LiImageSource(this, &off_2872963D0);
  *this = &unk_2872962E8;
  *(this + 183) = &unk_2872963B0;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  OZRenderParams::OZRenderParams((this + 32), a2);
  *(this + 182) = a3;
}

void sub_26017E784(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 24));
  OZChannelBase::setRangeName(v1, &off_2872963D0);
  *(v1 + 1464) = v2;
  *(v1 + 1480) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1472));
  _Unwind_Resume(a1);
}

HGNode *OZLiCachingImageSource::getHelium@<X0>(OZLiCachingImageSource *this@<X0>, LiRenderParameters **a2@<X1>, HGBitmapLoader **a3@<X8>)
{
  v57 = 0;
  HeliumRenderer = LiAgent::getHeliumRenderer(a2);
  v7 = (*(*HeliumRenderer + 128))(HeliumRenderer, 43);
  v8 = *(this + 2);
  if (!v8)
  {
    goto LABEL_38;
  }

  LiAgent::getHelium(a2, v8, a3);
  v9 = *a3;
  if (v57 != *a3)
  {
    v57 = *a3;
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }
  }

  LiAgent::getROI(a2, &v56);
  v10 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v10);
  (*(*v10 + 96))(v10, 0, v56, SDWORD1(v56), (DWORD2(v56) + v56), (HIDWORD(v56) + DWORD1(v56)));
  (*(*v10 + 120))(v10, 0, v57);
  v11 = v57;
  if (v57 != v10)
  {
    if (v57)
    {
      (*(*v57 + 24))(v57);
    }

    v57 = v10;
    (*(*v10 + 16))(v10);
    v11 = v57;
  }

  *&v55.var0 = HGRenderer::GetDOD(HeliumRenderer, v11);
  *&v55.var2 = v12;
  HGRect::Init(&v54, -1, -1, 1, 1);
  HGRect::Grow(&v55, v54);
  v52 = 0;
  if (HGRectIsNull(*&v55.var0, *&v55.var2))
  {
    v13 = -1;
  }

  else
  {
    v52 = vmax_s32(*&v55.var0, vdup_n_s32(0xC0000001));
    v13 = vsub_s32(vmin_s32(*&v55.var2, vdup_n_s32(0x3FFFFFFEu)), v52);
  }

  v53 = v13;
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(this + 1);
  if (v7 != 1)
  {
    PGHelium::renderNodeToTexture(HeliumRenderer, &v57, &v52, *(this + 93), WorkingColorSpace, (this + 1348));
  }

  v48 = a3;
  v16 = HGRectMake4i(v52.u32[0], v52.u32[1], v53.i32[0] + v52.i32[0], v53.i32[1] + v52.i32[1]);
  v18 = v17;
  Format = PGHelium::makeFormat(*(this + 93));
  isRenderForHDR_Deprecated = OZRenderParams::isRenderForHDR_Deprecated((this + 32));
  v21 = HGObject::operator new(0x80uLL);
  v22 = v21;
  if (isRenderForHDR_Deprecated)
  {
    v23 = 27;
  }

  else
  {
    v23 = 24;
  }

  HGBitmap::HGBitmap(v21, v16, v18, v23);
  v24 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v24);
  HGColorConform::SetOutputPixelFormat(v24, Format, 0);
  (*(*v24 + 120))(v24, 0, v57);
  if (v57 != v24)
  {
    if (v57)
    {
      (*(*v57 + 24))(v57);
    }

    v57 = v24;
    (*(*v24 + 16))(v24);
  }

  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor((this + 1348));
  BitsPerChannel = PCBitDepth::getBitsPerChannel(DstAlphaFactor);
  v27 = PGHelium::convertBitsPerChannel(4, BitsPerChannel, 0);
  RendererMutexLocker::RendererMutexLocker(&v50, v15);
  LiHelium::setUpGLRenderer(v15, v27);
  (*(*v15 + 64))(v15, v22, v57);
  RendererMutexLocker::~RendererMutexLocker(&v50);
  if ((*(*v15 + 128))(v15, 13))
  {
    (*(*v24 + 24))(v24);
    a3 = v48;
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }

    v29 = 0;
    LOBYTE(v22) = 1;
  }

  else
  {
    MetalTexture = HGGPURenderer::GetMetalTexture(v15, v22, v28);
    v31 = MetalTexture;
    v32 = *(this + 182);
    v49 = MetalTexture;
    if (MetalTexture)
    {
      (*(*MetalTexture + 16))(MetalTexture);
    }

    OZElement::setCachedMetalTexture(v32, &v49);
    if (v49)
    {
      (*(*v49 + 24))(v49);
    }

    if (v31)
    {
      (*(*v31 + 24))(v31);
    }

    (*(*v24 + 24))(v24);
    a3 = v48;
    if (v22)
    {
      (*(*v22 + 24))(v22);
      LOBYTE(v22) = 0;
    }

    v29 = 1;
  }

  (*(*v10 + 24))(v10);
  if ((v22 & 1) == 0 && *a3)
  {
    (*(**a3 + 24))(*a3);
  }

  if (v29)
  {
LABEL_38:
    if (v7 == 1)
    {
      OZElement::cachedMetalTexture(*(this + 182), &v50);
      v33 = v50;
      v34 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v34, v33);
      *a3 = v34;
      if (v50)
      {
        (*(*v50 + 24))(v50);
      }
    }

    else
    {
      OZElement::cachedTexture(*(this + 182), &v50);
      if (v50)
      {
        v35 = PGHelium::convertBitsPerChannel(*(v50 + 40), *(v50 + 36), 0);
        v56 = xmmword_26084A5D0;
        PGTexture::getTexCoords(v50, &v56);
        v36 = a3;
        v37 = HGRectMake4i(*&v56, *(&v56 + 1), *(&v56 + 2) + *&v56, *(&v56 + 3) + *(&v56 + 1));
        v39 = v38;
        Name = ProGL::TextureHandle::getName((v50 + 64));
        v41 = HGObject::operator new(0xC8uLL);
        HGGLTexture::HGGLTexture(v41, v37, v39, v35, HeliumRenderer, Name, 1);
        v42 = HGObject::operator new(0x20uLL);
        v43 = v42;
        a3 = v36;
        v44 = v50;
        v45 = v51;
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HGObject::HGObject(v42);
        *v43 = &unk_287296578;
        *(v43 + 2) = v44;
        *(v43 + 3) = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        HGBitmap::SetStorage(v41, v43);
        v46 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v46, v41);
        if (v57 == v46)
        {
          if (v46)
          {
            (*(*v46 + 24))(v46);
          }
        }

        else
        {
          if (v57)
          {
            (*(*v57 + 24))(v57);
          }

          v57 = v46;
        }

        (*(*v43 + 24))(v43);
        if (v41)
        {
          (*(*v41 + 24))(v41);
        }
      }

      *a3 = v57;
      v57 = 0;
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }
    }
  }

  result = v57;
  if (v57)
  {
    return (*(*v57 + 24))(v57);
  }

  return result;
}

void sub_26017F144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  (*(*v13 + 24))(v13);
  (*(*v12 + 24))(v12);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  (*(*v10 + 24))(v10);
  if (*a10)
  {
    (*(**a10 + 24))(*a10);
  }

  v16 = *(v14 - 96);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t OZLiCachingImageSource::pixelTransformSupport(OZLiCachingImageSource *this, const LiRenderParameters *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    return (*(*v2 + 56))(v2, a2);
  }

  else
  {
    return 6;
  }
}

uint64_t OZLiCachingImageSource::estimateRenderMemory(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(*v3 + 112);

    return v4();
  }

  else
  {
    OZElement::cachedMetalTexture(*(a1 + 1456), &v8);
    if (v8)
    {
      (*(*v8 + 24))(v8);
      OZElement::cachedMetalTexture(*(a1 + 1456), &v8);
      v6 = v8[9];
      (*(*v8 + 24))(v8);
    }

    else
    {
      OZElement::cachedTexture(*(a1 + 1456), &v8);
      v7 = v8;
      if (v8)
      {
        v1 = (*(*v8 + 40))(v8);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v7)
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }

    return v6;
  }
}

void sub_26017F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void OZLiCachingImageSource::~OZLiCachingImageSource(PCSharedCount *this)
{
  this->var0 = &unk_2872962E8;
  this[183].var0 = &unk_2872963B0;
  OZRenderParams::~OZRenderParams(&this[4]);
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872963D0);
  this[183].var0 = &unk_2872DEA38;
  LOBYTE(this[185].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[184].var0);
}

{
  this->var0 = &unk_2872962E8;
  this[183].var0 = &unk_2872963B0;
  OZRenderParams::~OZRenderParams(&this[4]);
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872963D0);
  this[183].var0 = &unk_2872DEA38;
  LOBYTE(this[185].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[184].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZLiCachingImageSource::~OZLiCachingImageSource(OZLiCachingImageSource *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872962E8;
  v1[183].var0 = &unk_2872963B0;
  OZRenderParams::~OZRenderParams(&v1[4]);
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2872963D0);
  v1[183].var0 = &unk_2872DEA38;
  LOBYTE(v1[185].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[184].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872962E8;
  v1[183].var0 = &unk_2872963B0;
  OZRenderParams::~OZRenderParams(&v1[4]);
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2872963D0);
  v1[183].var0 = &unk_2872DEA38;
  LOBYTE(v1[185].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[184].var0);

  JUMPOUT(0x2666E9F00);
}

void PGHGImageRef::~PGHGImageRef(PGHGImageRef *this)
{
  *this = &unk_287296578;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_287296578;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t OZChannelSceneNode_Factory::getInstance(OZChannelSceneNode_Factory *this)
{
  if (atomic_load_explicit(&OZChannelSceneNode_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelSceneNode_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSceneNode_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelSceneNode_Factory::_instance;
}

void OZChannelSceneNode::OZChannelSceneNode(OZChannelSceneNode *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelSceneNode_Factory::getInstance(this);
  OZChannelObjectRoot::OZChannelObjectRoot(this, Instance, a2, a3, a4, a5);
  *this = &unk_2872965C8;
  *(this + 2) = &unk_287296960;
  *(this + 32) = 0;
}

void OZChannelSceneNode::OZChannelSceneNode(OZChannelSceneNode *this, const OZChannelSceneNode *a2, OZChannelFolder *a3)
{
  OZChannelObjectRoot::OZChannelObjectRoot(this, a2, a3);
  *v3 = &unk_2872965C8;
  v3[2] = &unk_287296960;
  v3[32] = 0;
}

void non-virtual thunk toOZChannelSceneNode::~OZChannelSceneNode(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);
}

{
  OZChannelObjectRoot::~OZChannelObjectRoot(this - 2);

  JUMPOUT(0x2666E9F00);
}

void OZChannelSceneNode::~OZChannelSceneNode(PCString *this)
{
  OZChannelObjectRoot::~OZChannelObjectRoot(this);

  JUMPOUT(0x2666E9F00);
}

const OZChannelBase *OZChannelSceneNode::compare(OZChannelSceneNode *this, const OZChannelBase *lpsrc)
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

uint64_t OZChannelSceneNode::channelValueWillBeSet(OZChannelSceneNode *this, OZChannel *a2, const CMTime *a3, double a4)
{
  result = *(this + 32);
  if (result)
  {
    v5 = *a3;
    return (*(*result + 304))(result, a2, &v5, a4);
  }

  return result;
}

uint64_t OZChannelSceneNode::reset(uint64_t this, uint64_t a2)
{
  v2 = *(this + 256);
  if (v2)
  {
    v4 = this;
    (*(*(v2 + 320) + 288))(v2 + 320);
    (*(*(*(v4 + 256) + 832) + 288))(*(v4 + 256) + 832, a2);
    v5 = *(v4 + 256);
    v6 = *(*(v5 + 448) + 288);

    return v6(v5 + 448, a2);
  }

  return this;
}

uint64_t OZChannelSceneNode::setSceneNode(uint64_t this, OZSceneNode *a2)
{
  *(this + 256) = a2;
  v2 = a2 + 16;
  if (!a2)
  {
    v2 = 0;
  }

  *(this + 208) = v2;
  return this;
}

void OZChannelSceneNode_Factory::OZChannelSceneNode_Factory(OZChannelSceneNode_Factory *this)
{
  v3 = xmmword_260851370;
  v4 = xmmword_260852330;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872969D0;
  *(this + 16) = &unk_287296AA0;
}

void OZMsgTracerLogFxPlugUsage(OZObjectManipulator *this)
{
  {
    v3 = v2;
    if (*(v2 + 216) == 1)
    {
      MainBundle = CFBundleGetMainBundle();
      if ((*(*v3 + 440))(v3))
      {
        if (OZFxPlugSharedBase::getPluginSessionID(v3))
        {
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v5];
      Identifier = CFBundleGetIdentifier(MainBundle);
      OZFxPlugSharedBase::getPluginUUID(v3, &v13);
      v12.var0 = 0;
      PCString::set(&v12, v9);
      PCURL::PCURL(&v11, Identifier);
      PCString::~PCString(&v11);
      PCString::~PCString(&v12);
      PCString::~PCString(&v13);
    }

    else
    {
      OZFxPlugSharedBase::getDisplayName(v2, &v13);
      v8 = PCString::createCStr(&v13);
      PCString::~PCString(&v13);
      free(v8);
    }
  }

  else
  {
    Name = OZObjectManipulator::getName(this);
    CStr = PCString::createCStr(Name);

    free(CStr);
  }
}

void sub_2601804A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

void OZSimulationCurveNode::OZSimulationCurveNode(OZCurveNode *a1, uint64_t a2, int a3)
{
  OZCurveNode::OZCurveNode(a1);
  *v5 = &unk_287296AF8;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
}

void OZSimulationCurveNode::~OZSimulationCurveNode(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

double OZSimulationCurveNode::solveNode(OZSimulationCurveNode *this, OZCurveNodeParam *a2)
{
  v3 = *(a2 + 19);
  v4 = *(a2 + 10);
  v13 = *(a2 + 5);
  v5 = *(a2 + 6);
  *&v12.value = v5;
  v12.epoch = *(a2 + 14);
  v6 = *(this + 1);
  if ((*(v6 + 208) & 1) != 0 && (*(v6 + 372) & 1) == 0)
  {
    if (*(a2 + 36))
    {
      v10 = 0;
      do
      {
        *&v3[v10] = OZObjectSimulator::getStateElement(*(this + 1), &v12, *(this + 4));
        v15 = v12;
        v14 = v13;
        PC_CMTimeSaferAdd(&v15, &v14, &v16);
        *&v5 = v16.value;
        v12 = v16;
        ++v10;
      }

      while (v10 < *(a2 + 36));
    }
  }

  else
  {
    v7 = *(a2 + 36);
    if (v7)
    {
      do
      {
        v8 = *v4++;
        *&v5 = v8;
        *v3++ = v8;
        --v7;
      }

      while (v7);
    }
  }

  return *&v5;
}

double OZSimulationCurveNode::solveNode(OZSimulationCurveNode *this, const CMTime *a2, double a3, double a4)
{
  if ((a2->flags & 1) != 0 && (v4 = *(this + 1), *(v4 + 208) == 1) && (*(v4 + 372) & 1) == 0)
  {
    return OZObjectSimulator::getStateElement(*(this + 1), a2, *(this + 4));
  }

  else
  {
    return a4;
  }
}

__n128 OZSimulationCurveNode::getNeededRange(OZSimulationCurveNode *this, OZCurveNodeParam *a2)
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

uint64_t OZSimulationCurveNode::isPassThrough(OZSimulationCurveNode *this)
{
  v1 = *(this + 1);
  if (*(v1 + 208) == 1)
  {
    v2 = *(v1 + 372);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void OZObjectSimulator::OZObjectSimulator(OZObjectSimulator *this, OZTransformNode *a2)
{
  *this = &unk_287296BF0;
  *(this + 1) = a2;
  *(this + 2) = this + 16;
  *(this + 3) = this + 16;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  PCMutex::PCMutex((this + 64));
  PCMutex::PCMutex((this + 136));
  *(this + 208) = 0;
  *(this + 30) = this + 240;
  *(this + 31) = this + 240;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 266) = 1;
  PCMutex::PCMutex((this + 272));
  *(this + 43) = this + 344;
  *(this + 44) = this + 344;
  *(this + 45) = 0;
  *(this + 92) = 0;
  *(this + 372) = 0;
}

void sub_260180888(_Unwind_Exception *a1)
{
  v6 = v4;
  std::__list_imp<unsigned int>::clear(v6);
  PCMutex::~PCMutex((v2 + 136));
  PCMutex::~PCMutex((v2 + 64));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v3, *v5);
  std::__list_imp<unsigned int>::clear(v1);
  _Unwind_Resume(a1);
}

void OZObjectSimulator::~OZObjectSimulator(OZObjectSimulator *this)
{
  *this = &unk_287296BF0;
  if (*(this + 264) == 1)
  {
    v2 = (*(**(this + 1) + 272))(*(this + 1));
    OZDocument::removeCPPObserver(*(v2 + 1584));
    *(this + 264) = 0;
    OZScene::removeSimulator(v2, this);
  }

  OZObjectSimulator::flushCache(this, 0);
  std::__list_imp<unsigned int>::clear(this + 43);
  PCMutex::~PCMutex((this + 272));
  std::__list_imp<unsigned int>::clear(this + 30);
  PCMutex::~PCMutex((this + 136));
  PCMutex::~PCMutex((this + 64));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 40, *(this + 6));
  std::__list_imp<unsigned int>::clear(this + 2);
}

{
  OZObjectSimulator::~OZObjectSimulator(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZObjectSimulator::flushCache(OZObjectSimulator *this, int a2)
{
  PCMutex::lock((this + 136));
  while (1)
  {
    v4 = *(this + 4);
    if (!v4)
    {
      break;
    }

    v5 = *(this + 3);
    if (v5[2])
    {
      MEMORY[0x2666E9F00](v5[2], 0x1000C405DF52C91);
      v5 = *(this + 3);
      v4 = *(this + 4);
    }

    v7 = *v5;
    v6 = v5[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 4) = v4 - 1;
    operator delete(v5);
  }

  while (*(this + 7))
  {
    v8 = *(this + 5);
    v9 = v8[7];
    if (v9)
    {
      MEMORY[0x2666E9F00](v9, 0x1000C405DF52C91);
    }

    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 5, v8);
    operator delete(v8);
  }

  if (a2)
  {
    v10 = *(this + 1);
    if (v10)
    {
      v11 = (*(*v10 + 640))(v10);
      std::list<OZSimulationBehavior *>::list(&v14, v11 + 224);
      for (i = *(&v14 + 1); i != &v14; i = *(i + 8))
      {
        (*(**(i + 16) + 712))(*(i + 16));
      }

      *(this + 92) = *(*(this + 1) + 6368);
      std::__list_imp<unsigned int>::clear(&v14);
    }

    *(this + 208) = OZObjectSimulator::calcAnythingToSimulate(this);
    OZObjectSimulator::getFirstSimTime(this, &v14);
    *(this + 212) = v14;
    *(this + 228) = v15;
    *(this + 372) = 0;
  }

  return PCMutex::unlock((this + 136));
}

void sub_260180B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZObjectSimulator::notify(OZObjectSimulator *this, __int16 a2)
{
  if ((a2 & 0x9810) != 0)
  {
    doesDependOnSceneNodes = 1;
    OZObjectSimulator::flushCache(this, 1);
    goto LABEL_3;
  }

  if ((a2 & 0xC) == 0)
  {
    doesDependOnSceneNodes = 0;
LABEL_3:
    if ((a2 & 0x801C) != 0 && ((doesDependOnSceneNodes | !OZObjectSimulator::updateBehaviorList(this)) & 1) == 0)
    {
      OZObjectSimulator::flushCache(this, 1);
    }

    return;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    v6 = (*(*v5 + 272))(v5);
    v7 = *(v6 + 1584);
    v8 = (v6 + 920);
    do
    {
      v9 = v8;
      v8 = v8->var6;
    }

    while (v8);
    v10 = *(v7 + 168);
    v11 = (v7 + 296);
    if (v10)
    {
      v12 = (v10 + 48);
    }

    else
    {
      v12 = v11;
    }

    for (i = *v12; i != v12[1]; i = (i + 24))
    {
      Channel = OZChannelRef::getChannel(i, v9);
      if (Channel)
      {
        ObjectManipulator = OZChannelBase::getObjectManipulator(Channel);
        if (ObjectManipulator)
        {
          v16 = (*(*ObjectManipulator + 232))(ObjectManipulator);
          v17 = v16;
          if (v16)
          {
            LODWORD(v20) = *(v16 + 80);
            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v22, &v20);
            v18 = *((*(*v17 + 664))(v17) + 8);
            v20 = xmmword_2603473B0;
            if (OZFactory::isKindOfClass(v18, &v20))
            {
              *(&v20 + 1) = 0;
              v21 = 0;
              *&v20 = &v20 + 8;
              OZRigWidget::getRiggedNodeIDs(v19, &v20);
              std::set<unsigned int>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v22, v20, &v20 + 2);
              std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v20, *(&v20 + 1));
            }
          }
        }
      }
    }

    doesDependOnSceneNodes = OZObjectSimulator::doesDependOnSceneNodes(this, &v22);
    if (doesDependOnSceneNodes)
    {
      OZObjectSimulator::flushCache(this, 1);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v22, v23[0]);
    goto LABEL_3;
  }

  OZObjectSimulator::flushCache(this, 1);
}

uint64_t OZObjectSimulator::doesDependOnSceneNodes(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (a2 + 8);
    v5 = v3;
    while (1)
    {
      if (*(a2 + 8))
      {
        v6 = *(v5 + 80);
        v7 = a2 + 8;
        v8 = *(a2 + 8);
        do
        {
          v9 = *(v8 + 28);
          v10 = v9 >= v6;
          v11 = v9 < v6;
          if (v10)
          {
            v7 = v8;
          }

          v8 = *(v8 + 8 * v11);
        }

        while (v8);
        if (v7 != v4 && v6 >= *(v7 + 28))
        {
          break;
        }
      }

      v5 = *(v5 + 960);
      if (!v5)
      {
        v12 = (*(*v3 + 640))(v3);
        v13 = (*(**(a1 + 8) + 1008))();
        std::list<OZSimulationBehavior *>::list(v41, v12 + 224);
        for (i = v41[1]; i != v41; i = i[1])
        {
          v15 = i[2];
          if (OZBehavior::isEnabledAndUseBehaviors(v15) && (!v13 || (*(*v15 + 656))(v15)) && *(v15 + 20) >= *(a1 + 368))
          {
            v16 = (*(*v15 + 664))(v15);
            if (v16 && v16 != *(a1 + 8))
            {
              do
              {
                if (*v4)
                {
                  v18 = *(v16 + 80);
                  v19 = v4;
                  v20 = *v4;
                  do
                  {
                    v21 = *(v20 + 28);
                    v10 = v21 >= v18;
                    v22 = v21 < v18;
                    if (v10)
                    {
                      v19 = v20;
                    }

                    v20 = *(v20 + 8 * v22);
                  }

                  while (v20);
                  if (v19 != v4 && v18 >= *(v19 + 7))
                  {
                    goto LABEL_65;
                  }
                }

                v16 = *(v16 + 960);
              }

              while (v16);
            }
          }
        }

        if ((v13 & 1) != 0 || (*(*(a1 + 8) + 1024) & 8) != 0 || (v24 = *(v12 + 48)) == 0)
        {
LABEL_63:
          v23 = 0;
          goto LABEL_66;
        }

        while (1)
        {
          if ((*(v24 + 57) & 0x20) != 0)
          {
            if (v25)
            {
              break;
            }
          }

LABEL_62:
          v24 = *(v24 + 48);
          if (!v24)
          {
            goto LABEL_63;
          }
        }

        v26 = v25;
        v27 = (*(*v25 + 840))(v25);
        if (v27)
        {
        }

        else
        {
          v28 = 0;
        }

        std::list<OZSimulationBehavior *>::list(v40, v26 + 224);
        for (j = v40[1]; ; j = j[1])
        {
          if (j == v40)
          {
            std::__list_imp<unsigned int>::clear(v40);
            goto LABEL_62;
          }

          v30 = j[2];
          v31 = *(a1 + 8);
          if (v31 != OZSimulationBehavior::getTransformNode(v30) && OZBehavior::isEnabledAndUseBehaviors(v30) && ((*(*v30 + 656))(v30) & 1) == 0 && *(v30 + 20) >= *(a1 + 368))
          {
            v32 = (*(*v30 + 664))(v30);
            if (v32 != v28 && v32 != 0)
            {
              break;
            }
          }

LABEL_60:
          ;
        }

        while (1)
        {
          if (*v4)
          {
            v34 = *(v32 + 80);
            v35 = v4;
            v36 = *v4;
            do
            {
              v37 = *(v36 + 28);
              v10 = v37 >= v34;
              v38 = v37 < v34;
              if (v10)
              {
                v35 = v36;
              }

              v36 = *(v36 + 8 * v38);
            }

            while (v36);
            if (v35 != v4 && v34 >= *(v35 + 7))
            {
              break;
            }
          }

          v32 = *(v32 + 960);
          if (!v32)
          {
            goto LABEL_60;
          }
        }

        std::__list_imp<unsigned int>::clear(v40);
LABEL_65:
        v23 = 1;
LABEL_66:
        std::__list_imp<unsigned int>::clear(v41);
        return v23;
      }
    }
  }

  return 1;
}

void sub_2601812F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

BOOL OZObjectSimulator::updateBehaviorList(OZObjectSimulator *this)
{
  v2 = *(this + 64);
  v20 = &v20;
  v21 = &v20;
  v22 = 0;
  v3 = (*(**(this + 1) + 640))(*(this + 1));
  v4 = (*(**(this + 1) + 1008))(*(this + 1));
  std::list<OZSimulationBehavior *>::list(&v18, v3 + 224);
  v16 = v2;
  v5 = (this + 240);
  v6 = v19;
  if (v19 == &v18)
  {
    if (v4)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  do
  {
    v7 = v6[2];
    if (OZBehavior::isEnabledAndUseBehaviors(v7) && (!v4 || (*(*v7 + 656))(v7)) && *(v7 + 20) >= *(this + 92))
    {
      if (*(this + 31) != v5)
      {
        v8 = *(this + 31);
        do
        {
          if (*(v8 + 16) == v7)
          {
            break;
          }

          v8 = *(v8 + 8);
        }

        while (v8 != v5);
      }

      operator new();
    }

    v6 = v6[1];
  }

  while (v6 != &v18);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    for (i = *(v3 + 48); i; i = *(i + 48))
    {
      if ((*(i + 57) & 0x20) != 0)
      {
        if (v10)
        {
          std::list<OZSimulationBehavior *>::list(v17, v10 + 224);
          for (j = v17[1]; j != v17; j = j[1])
          {
            v12 = j[2];
            v13 = *(this + 1);
            if (v13 != OZSimulationBehavior::getTransformNode(v12) && OZBehavior::isEnabledAndUseBehaviors(v12) && ((*(*v12 + 656))(v12) & 1) == 0 && *(v12 + 20) >= *(this + 92))
            {
              if (*(this + 31) != v5)
              {
                v14 = *(this + 31);
                do
                {
                  if (*(v14 + 16) == v12)
                  {
                    break;
                  }

                  v14 = *(v14 + 8);
                }

                while (v14 != v5);
              }

              operator new();
            }
          }

          std::__list_imp<unsigned int>::clear(v17);
        }
      }
    }
  }

LABEL_32:
  if (v5 != &v20 && v16)
  {
    std::list<OZSimulationBehavior *>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZSimulationBehavior *,void *>,std::__list_const_iterator<OZSimulationBehavior *,void *>>(v5, v21, &v20);
  }

  std::__list_imp<unsigned int>::clear(&v18);
  std::__list_imp<unsigned int>::clear(&v20);
  return v16 != 0;
}

void sub_2601816E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__list_imp<unsigned int>::clear(va);
  std::__list_imp<unsigned int>::clear(va1);
  _Unwind_Resume(a1);
}

uint64_t OZObjectSimulator::didAddToScene(uint64_t this, OZScene *a2)
{
  if ((*(this + 264) & 1) == 0)
  {
    v3 = this;
    OZDocument::addCPPObserver(*(a2 + 198), this, 1000);
    *(v3 + 264) = 1;

    OZScene::addSimulator();
  }

  return this;
}

void *OZObjectSimulator::willRemoveFromScene(void *this, OZScene *a2)
{
  if (*(this + 264) == 1)
  {
    v4 = this;
    OZDocument::removeCPPObserver(*(a2 + 198));
    *(v4 + 264) = 0;

    return OZScene::removeSimulator(a2, v4);
  }

  return this;
}

void *OZObjectSimulator::getFirstSimTime@<X0>(OZObjectSimulator *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(this + 1) + 1008))(*(this + 1));
  v5 = (*(**(this + 1) + 640))();
  std::list<OZSimulationBehavior *>::list(&v18, v5 + 224);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(**(this + 1) + 1128))(&v16);
  *a2 = v16;
  v6 = v19;
  if (v19 != &v18)
  {
    v7 = MEMORY[0x277CC08F0];
    do
    {
      v8 = v6[2];
      if (!v4 || (*(*v8 + 656))(v6[2]))
      {
        if (OZBehavior::isEnabledAndUseBehaviors(v8))
        {
          if ((*(*v8 + 672))(v8))
          {
            if (*(v8 + 20) >= *(this + 92))
            {
              (*(*v8 + 608))(&v16, v8);
              time1 = v16;
              time2 = *a2;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                time1 = v17;
                time2 = *v7;
                if (CMTimeCompare(&time1, &time2) >= 1)
                {
                  *a2 = v16;
                }
              }
            }
          }
        }
      }

      v6 = v6[1];
    }

    while (v6 != &v18);
  }

  if ((v4 & 1) == 0 && (*(*(this + 1) + 1024) & 8) == 0)
  {
    v9 = *(v5 + 48);
    if (v9)
    {
      v10 = MEMORY[0x277CC08F0];
      do
      {
        if ((*(v9 + 57) & 0x20) != 0)
        {
          if (v11)
          {
            v12 = (v11 + 28);
            for (i = v11[29]; i != v12; i = *(i + 8))
            {
              v14 = *(i + 16);
              if (OZBehavior::isEnabledAndUseBehaviors(v14))
              {
                if (((*(*v14 + 656))(v14) & 1) == 0)
                {
                  if ((*(*v14 + 672))(v14))
                  {
                    if (*(v14 + 20) >= *(this + 92))
                    {
                      (*(*v14 + 608))(&v16, v14);
                      time1 = v16;
                      time2 = *a2;
                      if (CMTimeCompare(&time1, &time2) < 0)
                      {
                        time1 = v17;
                        time2 = *v10;
                        if (CMTimeCompare(&time1, &time2) >= 1)
                        {
                          *a2 = v16;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v9 = *(v9 + 48);
      }

      while (v9);
    }
  }

  return std::__list_imp<unsigned int>::clear(&v18);
}

void sub_260181C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZObjectSimulator::calcAnythingToSimulate(OZObjectSimulator *this)
{
  v2 = *(this + 1);
  if ((v2[1024] & 2) == 0 && (*(*v2 + 272))(v2) && (OZSceneNode::isDescendantOf360Group(*(this + 1)) & 1) == 0)
  {
    v5 = (*(**(this + 1) + 640))(*(this + 1));
    v6 = (*(**(this + 1) + 1008))();
    std::list<OZSimulationBehavior *>::list(&v16, v5 + 224);
    v7 = v17;
    if (v17 == &v16)
    {
LABEL_13:
      if ((v6 & 1) != 0 || (*(*(this + 1) + 1024) & 8) != 0 || (v10 = *(v5 + 48)) == 0)
      {
LABEL_27:
        v3 = 0;
LABEL_28:
        std::__list_imp<unsigned int>::clear(&v16);
        return v3;
      }

      while (1)
      {
        if ((*(v10 + 57) & 0x20) != 0)
        {
          if (v11)
          {
            break;
          }
        }

LABEL_26:
        v10 = *(v10 + 48);
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      std::list<OZSimulationBehavior *>::list(v15, v11 + 224);
      for (i = v15[1]; ; i = i[1])
      {
        if (i == v15)
        {
          std::__list_imp<unsigned int>::clear(v15);
          goto LABEL_26;
        }

        v13 = i[2];
        v14 = *(this + 1);
        if (v14 != OZSimulationBehavior::getTransformNode(v13) && ((*(*v13 + 656))(v13) & 1) == 0 && OZBehavior::isEnabledAndUseBehaviors(v13) && *(v13 + 20) >= *(this + 92))
        {
          break;
        }
      }

      std::__list_imp<unsigned int>::clear(v15);
    }

    else
    {
      while (1)
      {
        v8 = v7[2];
        if (OZBehavior::isEnabledAndUseBehaviors(v8) && *(v8 + 20) >= *(this + 92) && ((v6 & 1) == 0 || (((*(*v8 + 656))(v8) | v6 ^ 1) & 1) != 0))
        {
          v9 = (*(*v8 + 312))(v8);
          if (!OZChannelBase::testFlag(v9, 2))
          {
            break;
          }
        }

        v7 = v7[1];
        if (v7 == &v16)
        {
          goto LABEL_13;
        }
      }
    }

    v3 = 1;
    goto LABEL_28;
  }

  return 0;
}

void sub_260181F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZObjectSimulator::anythingToSimulate(OZObjectSimulator *this, int a2)
{
  v4 = (*(**(this + 1) + 640))(*(this + 1));
  v5 = (*(**(this + 1) + 1008))();
  std::list<OZSimulationBehavior *>::list(&v19, v4 + 224);
  v6 = v20;
  if (v20 != &v19)
  {
    v7 = 0;
    do
    {
      v8 = v6[2];
      if (OZBehavior::isEnabledAndUseBehaviors(v8) && *(v8 + 20) >= *(this + 92) && (!v5 || (((*(*v8 + 656))(v8) | v5 ^ 1) & 1) != 0))
      {
        if (a2 > 6)
        {
          if ((a2 - 7) >= 3 || (*(*v8 + 704))(v8))
          {
            goto LABEL_18;
          }
        }

        else
        {
          switch(a2)
          {
            case 1:
              v9 = (*(*v8 + 680))(v8);
              break;
            case 2:
              v9 = (*(*v8 + 688))(v8);
              break;
            case 3:
              v9 = (*(*v8 + 696))(v8);
              break;
            default:
              goto LABEL_18;
          }

          if (v9)
          {
LABEL_18:
            if (v7 > 0)
            {
              goto LABEL_48;
            }

            ++v7;
          }
        }
      }

      v6 = v6[1];
    }

    while (v6 != &v19);
  }

  if ((v5 & 1) != 0 || (*(*(this + 1) + 1024) & 8) != 0 || (v10 = *(v4 + 48)) == 0)
  {
LABEL_45:
    v16 = 0;
  }

  else
  {
    while (1)
    {
      if ((*(v10 + 57) & 0x20) != 0)
      {
        if (v11)
        {
          break;
        }
      }

LABEL_44:
      v10 = *(v10 + 48);
      if (!v10)
      {
        goto LABEL_45;
      }
    }

    std::list<OZSimulationBehavior *>::list(v18, v11 + 224);
    for (i = v18[1]; ; i = i[1])
    {
      if (i == v18)
      {
        std::__list_imp<unsigned int>::clear(v18);
        goto LABEL_44;
      }

      v13 = i[2];
      v14 = *(this + 1);
      if (v14 != OZSimulationBehavior::getTransformNode(v13) && ((*(*v13 + 656))(v13) & 1) == 0 && OZBehavior::isEnabledAndUseBehaviors(v13) && *(v13 + 20) >= *(this + 92))
      {
        if (a2 > 6)
        {
          if ((a2 - 7) >= 3)
          {
            break;
          }

          v15 = (*(*v13 + 704))(v13);
        }

        else
        {
          switch(a2)
          {
            case 1:
              v15 = (*(*v13 + 680))(v13);
              break;
            case 2:
              v15 = (*(*v13 + 688))(v13);
              break;
            case 3:
              v15 = (*(*v13 + 696))(v13);
              break;
            default:
              goto LABEL_47;
          }
        }

        if (v15)
        {
          break;
        }
      }
    }

LABEL_47:
    std::__list_imp<unsigned int>::clear(v18);
LABEL_48:
    v16 = 1;
  }

  std::__list_imp<unsigned int>::clear(&v19);
  return v16;
}

void sub_260182410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void SimRecursionSentry::SimRecursionSentry(SimRecursionSentry *this, OZObjectSimulator *a2, const CMTime *a3)
{
  {
    pthread_key_create(&SimRecursionSentry::SimRecursionSentry(OZObjectSimulator *,CMTime const&)::sPerThreadRecursionInfo, PCThreadSpecific<SimRecursionInfo>::destroy);
  }

  v6 = pthread_getspecific(SimRecursionSentry::SimRecursionSentry(OZObjectSimulator *,CMTime const&)::sPerThreadRecursionInfo);
  *this = v6;
  if (!v6)
  {
    operator new();
  }

  ++*v6;
  v25 = a2;
  v26 = *&a3->value;
  epoch = a3->epoch;
  std::deque<std::pair<OZObjectSimulator *,CMTime>>::push_back(v6 + 1, &v25);
  v7 = *this;
  if ((*(*this + 4) & 1) == 0 && *v7 >= 0x24u)
  {
    *(v7 + 4) = 1;
    v8 = *(v7 + 48);
    if (v8 >= 2)
    {
      v26 = 0uLL;
      v25 = &v26;
      v29[0] = 0;
      v29[1] = 0;
      v28 = v29;
      v9 = *(v7 + 40);
      v10 = v9 + v8;
      v11 = (v9 + v8) >> 7;
      v12 = *(v7 + 16);
      v13 = (v12 + 8 * v11);
      if (*(v7 + 24) == v12)
      {
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v14 = *v13 + 32 * (v10 & 0x7F);
        v15 = *(v12 + ((*(v7 + 40) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v7 + 40) & 0x7FLL);
      }

      if (v15 == v14)
      {
        v16 = 0;
LABEL_27:
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, v16);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v25, v26);
      }

      else
      {
        v17 = *v13;
        while (1)
        {
          v18 = v14;
          if (v14 == v17)
          {
            v18 = *(v13 - 1) + 4096;
          }

          v19 = std::__tree<std::pair<OZObjectSimulator *,CMTime>>::find<std::pair<OZObjectSimulator *,CMTime>>(&v28, v18 - 32);
          v20 = *v13;
          if (v29 != v19)
          {
            break;
          }

          v21 = v14;
          if (v14 == v20)
          {
            v21 = *(v13 - 1) + 4096;
          }

          if (&v26 == std::__tree<std::pair<OZObjectSimulator *,CMTime>>::find<std::pair<OZObjectSimulator *,CMTime>>(&v25, v21 - 32))
          {
            v22 = &v25;
          }

          else
          {
            v22 = &v28;
          }

          v23 = v14;
          if (v14 == *v13)
          {
            v23 = *(v13 - 1) + 4096;
          }

          std::__tree<std::pair<OZObjectSimulator *,CMTime>>::__emplace_unique_key_args<std::pair<OZObjectSimulator *,CMTime>,std::pair<OZObjectSimulator *,CMTime> const&>(v22, v23 - 32);
          v17 = *v13;
          if (v14 == *v13)
          {
            v24 = *--v13;
            v17 = v24;
            v14 = v24 + 4096;
          }

          v14 -= 32;
          if (v15 == v14)
          {
            v16 = v29[0];
            goto LABEL_27;
          }
        }

        if (v14 == v20)
        {
          v14 = *(v13 - 1) + 4096;
        }

        *(*(v14 - 32) + 372) = 1;
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v28, v29[0]);
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v25, v26);
        *(*this + 5) = 1;
      }
    }
  }
}

__n128 std::deque<std::pair<OZObjectSimulator *,CMTime>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::pair<OZObjectSimulator *,CMTime>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  ++a1[5];
  return result;
}

void SimRecursionSentry::~SimRecursionSentry(SimRecursionSentry *this)
{
  v1 = *this;
  v2 = **this - 1;
  **this = v2;
  if (!v2)
  {
    *(v1 + 2) = 0;
  }

  --*(v1 + 6);
  std::deque<std::pair<OZObjectSimulator *,CMTime>>::__maybe_remove_back_spare[abi:ne200100](v1 + 1, 1);
}

void OZObjectSimulator::getState(OZObjectSimulator *this, CMTime *a2, OZSimulationState *a3)
{
  v6 = (*(**(this + 1) + 272))(*(this + 1));
  memset(&v17, 0, sizeof(v17));
  OZSceneSettings::getFrameDuration((v6 + 336), &v17);
  SimRecursionSentry::SimRecursionSentry(&v16, this, a2);
  if (*(v16 + 5) == 1)
  {
    OZSimulationState::initializeState(a3, (this + 212));
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
    v11 = 0x3FF0000000000000;
    v15 = 0;
    v14 = 0uLL;
    v12 = 0u;
    memset(v13, 0, 128);
    OZObjectSimulator::getCachedState(this, a2, &v17, &v9, *v16 > 0x23u);
    time1 = *&v13[128];
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2))
    {
      v8 = 1;
      PCMutex::lock((this + 272));
      operator new();
    }

    *a3 = v9;
    *(a3 + 2) = v10;
    if (&v9 != a3)
    {
      *(a3 + 3) = v11;
      *(a3 + 2) = v12;
      *(a3 + 6) = *v13;
    }

    *(a3 + 168) = *&v13[120];
    *(a3 + 184) = *&v13[136];
    *(a3 + 200) = v14;
    *(a3 + 27) = v15;
    *(a3 + 104) = *&v13[56];
    *(a3 + 120) = *&v13[72];
    *(a3 + 136) = *&v13[88];
    *(a3 + 152) = *&v13[104];
    *(a3 + 56) = *&v13[8];
    *(a3 + 72) = *&v13[24];
    *(a3 + 88) = *&v13[40];
  }

  SimRecursionSentry::~SimRecursionSentry(&v16);
}

double OZObjectSimulator::getCachedState(OZObjectSimulator *this, CMTime *a2, CMTime *a3, OZSimulationState *a4, char a5)
{
  PCMutex::lock((this + 136));
  if (*(this + 266) == 1)
  {
    *(this + 208) = OZObjectSimulator::calcAnythingToSimulate(this);
    *(this + 372) = 0;
    OZObjectSimulator::getFirstSimTime(this, &time1);
    *(this + 212) = time1;
    *(this + 266) = 0;
  }

  v10 = *(this + 3);
  if (v10 == (this + 16))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v10[2];
      time1 = *(v12 + 11);
      time2 = *a2;
      if (!CMTimeCompare(&time1, &time2))
      {
        v14 = *v10;
        v13 = v10[1];
        *(v14 + 8) = v13;
        *v13 = v14;
        --*(this + 4);
        operator delete(v10);
        operator new();
      }

      time1 = *(v12 + 11);
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) < 0 && (a5 & 1) == 0)
      {
        if (!v11 || (time1 = *(v11 + 176), time2 = *(v12 + 11), CMTimeCompare(&time1, &time2) < 0))
        {
          v11 = v12;
        }
      }

      v10 = v10[1];
    }

    while (v10 != (this + 16));
    if (v11 && (a5 & 1) == 0)
    {
      time1 = *a2;
      time2 = *(v11 + 176);
      PC_CMTimeSaferSubtract(&time1, &time2, &v35);
      if (*(this + 265))
      {
        v34 = *a3;
      }

      else
      {
        operator*(a3, &v34, 10.0);
      }

      time1 = v35;
      time2 = v34;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        goto LABEL_39;
      }
    }
  }

  v15 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__lower_bound<CMTime>(this + 40, a2, *(this + 6), this + 48);
  v16 = v15;
  if ((this + 48) == v15)
  {
    if (*(this + 7) && (a5 & 1) == 0)
    {
      v18 = *v15;
      if (*v15)
      {
        do
        {
          v16 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        v21 = v15;
        do
        {
          v16 = v21[2];
          v20 = *v16 == v21;
          v21 = v16;
        }

        while (v20);
      }

      goto LABEL_37;
    }
  }

  else
  {
    time1 = *(v15 + 32);
    time2 = *a2;
    if (!CMTimeCompare(&time1, &time2))
    {
LABEL_37:
      v11 = v16[7];
      goto LABEL_38;
    }

    if (*(this + 5) != v16 && (a5 & 1) == 0)
    {
      v17 = *v16;
      if (*v16)
      {
        do
        {
          v16 = v17;
          v17 = v17[1];
        }

        while (v17);
      }

      else
      {
        v19 = v16;
        do
        {
          v16 = v19[2];
          v20 = *v16 == v19;
          v19 = v16;
        }

        while (v20);
      }

      goto LABEL_37;
    }
  }

LABEL_38:
  if (v11)
  {
LABEL_39:
    v22 = *v11;
    *(a4 + 2) = *(v11 + 2);
    *a4 = v22;
    if (v11 != a4)
    {
      *(a4 + 3) = *(v11 + 3);
      v23 = *(v11 + 2);
      *(a4 + 6) = *(v11 + 6);
      *(a4 + 2) = v23;
    }

    v24 = *(v11 + 56);
    v25 = *(v11 + 72);
    *(a4 + 88) = *(v11 + 88);
    *(a4 + 72) = v25;
    *(a4 + 56) = v24;
    v26 = *(v11 + 104);
    v27 = *(v11 + 120);
    v28 = *(v11 + 136);
    *(a4 + 152) = *(v11 + 152);
    *(a4 + 136) = v28;
    *(a4 + 120) = v27;
    *(a4 + 104) = v26;
    v29 = *(v11 + 168);
    v30 = *(v11 + 184);
    v31 = *(v11 + 200);
    *(a4 + 27) = *(v11 + 27);
    *(a4 + 200) = v31;
    *(a4 + 184) = v30;
    *(a4 + 168) = v29;
    PCMutex::unlock((this + 136));
    return result;
  }

  PCMutex::unlock((this + 136));
  OZSimulationState::initializeState(a4, (this + 212));
  time1 = *a2;
  time2 = *(a4 + 176);
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    OZObjectSimulator::accumInitialValues(this, a4);
    OZObjectSimulator::cacheState(this, a4, a3);
  }

  v33 = *&a2->value;
  *(a4 + 24) = a2->epoch;
  *(a4 + 11) = v33;
  OZObjectSimulator::getInitialPosition(this, a4);
  *(a4 + 21) = 0;
  result = 0.0;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  return result;
}

void *OZObjectSimulator::handleCollisions(OZObjectSimulator *this, OZSimulationState *a2, OZSimulationState *a3, unsigned int a4, BOOL *a5)
{
  *a5 = 0;
  v8 = (*(**(this + 1) + 1008))(*(this + 1));
  v20 = (*(**(this + 1) + 640))();
  std::list<OZSimulationBehavior *>::list(&v27, v20 + 224);
  v9 = v28;
  if (v28 == &v27)
  {
LABEL_10:
    if ((v8 & 1) == 0 && (*(*(this + 1) + 1024) & 8) == 0)
    {
      v13 = *(v20 + 48);
      if (v13)
      {
        while (1)
        {
          if ((*(v13 + 57) & 0x20) != 0)
          {
            if (v14)
            {
              break;
            }
          }

LABEL_25:
          v13 = *(v13 + 48);
          if (!v13)
          {
            return std::__list_imp<unsigned int>::clear(&v27);
          }
        }

        std::list<OZSimulationBehavior *>::list(&v25, v14 + 224);
        for (i = *(&v25 + 1); ; i = *(i + 8))
        {
          if (i == &v25)
          {
            std::__list_imp<unsigned int>::clear(&v25);
            goto LABEL_25;
          }

          v16 = *(i + 16);
          if (v16)
          {
            if (v17)
            {
              v18 = v17;
              if (((*(*v17 + 656))(v17) & 1) == 0)
              {
                v23 = *(a3 + 11);
                v24 = *(a3 + 24);
                if ((*(*v18 + 296))(v18, &v23, 0, 1, 1))
                {
                  if (v18[20] >= *(this + 92))
                  {
                    (*(*v18 + 728))(v18, *(this + 1), a2, a3, a4, a5);
                    if (*a5)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }

        std::__list_imp<unsigned int>::clear(&v25);
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9[2];
      if (v10)
      {
        if (v11)
        {
          v12 = v11;
          if ((v8 & 1) == 0 || (*(*v11 + 656))(v11))
          {
            v25 = *(a3 + 11);
            v26 = *(a3 + 24);
            if ((*(*v12 + 296))(v12, &v25, 0, 1, 1))
            {
              if (v12[20] >= *(this + 92))
              {
                (*(*v12 + 728))(v12, *(this + 1), a2, a3, a4, a5);
                if (*a5)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v9 = v9[1];
      if (v9 == &v27)
      {
        goto LABEL_10;
      }
    }
  }

  return std::__list_imp<unsigned int>::clear(&v27);
}

void sub_260183654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZObjectSimulator::cacheState(OZObjectSimulator *this, OZSimulationState *a2, const CMTime *a3)
{
  PCMutex::lock((this + 136));
  v5 = this + 16;
  for (i = *(this + 3); i != v5; i = i[1])
  {
    v13 = *(i[2] + 176);
    time2 = *(a2 + 176);
    if (!CMTimeCompare(&v13, &time2))
    {
      v11 = i[1];
      v12 = *i;
      *(v12 + 8) = v11;
      *v11 = v12;
      --*(this + 4);
      operator delete(i);
      operator new();
    }
  }

  v7 = *(this + 4);
  if (v7 >= 9)
  {
    v8 = *v5;
    if (*(*v5 + 16))
    {
      MEMORY[0x2666E9F00](*(*v5 + 16), 0x1000C405DF52C91);
      v8 = *(this + 2);
      v7 = *(this + 4);
    }

    v10 = *v8;
    v9 = v8[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    *(this + 4) = v7 - 1;
    operator delete(v8);
  }

  operator new();
}

void *std::list<BOOL *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<unsigned int>::clear(v10);
}

void sub_260183CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

double OZObjectSimulator::getStateElement(OZObjectSimulator *this, const CMTime *a2, int a3)
{
  memset(&v23, 0, sizeof(v23));
  OZChannelObjectRootBase::getTimeOffset((*(this + 1) + 56), &v21);
  v7 = *a2;
  *&v24.value = v21;
  v24.epoch = v22;
  PC_CMTimeSaferAdd(&v7, &v24, &v23);
  memset(&v7, 0, sizeof(v7));
  v8 = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  OZObjectSimulator::getState(this, &v23, &v7);
  return OZObjectSimulator::getProperyFromState(this, &v23, a3, &v7);
}

double OZObjectSimulator::getProperyFromState(OZObjectSimulator *this, const CMTime *a2, int a3, OZSimulationState *a4)
{
  result = 0.0;
  if (a3 > 6)
  {
    if (a3 >= 10)
    {
      switch(a3)
      {
        case 10:
          return *(a4 + 10);
        case 11:
          return *(a4 + 11);
        case 12:
          return *(a4 + 12);
      }
    }

    else
    {
      v23.var7.var0[1][2] = 1.0;
      v23.var7.var0[0][1] = 1.0;
      v23.var3 = 1.0;
      v23.var0.var0 = 0x3FF0000000000000;
      memset(&v23.var0.var1, 0, 32);
      memset(&v23.var4, 0, 32);
      memset(&v23.var7.var0[0][2], 0, 32);
      PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v23, a4 + 3);
      memset(v18, 0, sizeof(v18));
      v19 = 4;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
      Transformation = PCMatrix44Tmpl<double>::getTransformation(&v23.var0.var0, v18);
      _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/Behaviors/OZObjectSimulator.cpp", 705, v12, v13, v14, v15, v16);
      if (a3 == 7)
      {
        v17 = &v20;
      }

      else if (a3 == 9)
      {
        v17 = &v21;
      }

      else
      {
        v17 = (&v20 + 8);
      }

      return *v17;
    }
  }

  else if (a3 > 3)
  {
    if (a3 == 4)
    {
      return *(a4 + 7);
    }

    else if (a3 == 5)
    {
      return *(a4 + 8);
    }

    else
    {
      return *(a4 + 9);
    }
  }

  else if ((a3 - 1) < 3)
  {
    *(a4 + 200) = *a4;
    *(a4 + 27) = *(a4 + 2);
    v7 = *(*(this + 1) + 960);
    if (v7)
    {
      if (v9)
      {
        v10 = v9;
        OZRenderState::OZRenderState(&v23);
        *&v23.var0.var0 = *&a2->value;
        v23.var0.var3 = a2->epoch;
        v23.var8 = 0;
        (*(*v10 + 1248))(v10, a4 + 200, &v23);
      }
    }

    if (a3 == 3)
    {
      return *(a4 + 27);
    }

    else if (a3 == 2)
    {
      return *(a4 + 26);
    }

    else
    {
      return *(a4 + 25);
    }
  }

  return result;
}

void *OZObjectSimulator::getInitialPosition(OZObjectSimulator *this, OZSimulationState *a2)
{
  v4 = (*(**(this + 1) + 640))(*(this + 1));
  v5 = (*(**(this + 1) + 1008))();
  v6 = (*(**(this + 1) + 272))();
  memset(&v20, 0, sizeof(v20));
  OZSceneSettings::getFrameDuration((v6 + 336), &v20);
  memset(&v19, 0, sizeof(v19));
  operator*(&v20, &v19, 0.001);
  std::list<OZSimulationBehavior *>::list(&v17, v4 + 224);
  v7 = *(this + 1);
  v22 = *(a2 + 176);
  v15 = (*(*(v7 + 16) + 104))();
  v8 = *(this + 1);
  v22 = *(a2 + 176);
  v21 = v19;
  v9 = PC_CMTimeSaferSubtract(&v22, &v21, v16);
  v14 = (*(*(v8 + 16) + 104))(v8 + 16, v16, 0, 1, 1, v9);
  for (i = v18; i != &v17; i = i[1])
  {
    v11 = i[2];
    {
      if ((v5 & 1) == 0 || (*(*v11 + 656))(v11))
      {
        v22 = *(a2 + 176);
        if ((*(*v11 + 296))(v11, &v22, 0, 1, 1))
        {
          if (v11[20] >= *(this + 92) && OZObjectSimulator::shouldAccumInitialValue(this, v11, v15, v14, (a2 + 176)))
          {
            (*(*v11 + 640))(v11, a2, *(this + 1));
          }
        }
      }

      if (v12)
      {
        OZMotionToForcesBehavior::getInitialPosition(v12, a2, *(this + 1));
      }
    }
  }

  return std::__list_imp<unsigned int>::clear(&v17);
}

void sub_260184384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *OZObjectSimulator::accumInitialValues(OZObjectSimulator *this, OZSimulationState *a2)
{
  v4 = (*(**(this + 1) + 640))(*(this + 1));
  v5 = (*(**(this + 1) + 1008))();
  v6 = (*(**(this + 1) + 272))();
  memset(&v28, 0, sizeof(v28));
  OZSceneSettings::getFrameDuration((v6 + 336), &v28);
  memset(&v27, 0, sizeof(v27));
  operator*(&v28, &v27, 0.001);
  std::list<OZSimulationBehavior *>::list(&v25, v4 + 224);
  v7 = *(this + 1);
  v30 = *(a2 + 176);
  v22 = (*(*(v7 + 16) + 104))();
  v8 = *(this + 1);
  v30 = *(a2 + 176);
  v29 = v27;
  v9 = PC_CMTimeSaferSubtract(&v30, &v29, &v23);
  v21 = (*(*(v8 + 16) + 104))(v8 + 16, &v23, 0, 1, 1, v9);
  v30.value = &v30;
  *&v30.timescale = &v30;
  v30.epoch = 0;
  v10 = v26;
  if (v26 != &v25)
  {
    while (1)
    {
      v11 = v10[2];
      {
        v29 = *(a2 + 176);
        if ((*(*v11 + 296))(v11, &v29, 0, 1, 1))
        {
          v12 = *v11;
          {
            goto LABEL_11;
          }

          if (OZObjectSimulator::shouldAccumInitialValue(this, v11, v22, v21, (a2 + 176)))
          {
            break;
          }
        }
      }

LABEL_14:
      v10 = v10[1];
      if (v10 == &v25)
      {
        goto LABEL_15;
      }
    }

    v12 = *v11;
LABEL_11:
    {
      operator new();
    }

    (*(v12 + 640))(v11, a2, *(this + 1));
    goto LABEL_14;
  }

LABEL_15:
  if ((v5 & 1) == 0)
  {
    for (i = *(v4 + 48); i; i = *(i + 48))
    {
      if ((*(i + 57) & 0x20) != 0)
      {
        if (v14)
        {
          std::list<OZSimulationBehavior *>::list(&v29, v14 + 224);
          for (j = *&v29.timescale; j != &v29; j = *(j + 8))
          {
            v16 = *(j + 16);
            {
              v17 = *(this + 1);
              if (v17 != OZSimulationBehavior::getTransformNode(v16))
              {
                v23 = *(a2 + 11);
                v24 = *(a2 + 24);
                if ((*(*v16 + 296))(v16, &v23, 0, 1, 1))
                {
                  if (v16[20] >= *(this + 92) && OZObjectSimulator::shouldAccumInitialValue(this, v16, v22, v21, (a2 + 176)))
                  {
                    v18 = *v16;
                    {
                      operator new();
                    }

                    (*(v18 + 640))(v16, a2, *(this + 1));
                  }
                }
              }
            }
          }

          std::__list_imp<unsigned int>::clear(&v29);
        }
      }
    }
  }

  for (k = *&v30.timescale; k != &v30; k = *(k + 8))
  {
    (*(**(k + 16) + 640))(*(k + 16), a2, *(this + 1));
  }

  std::__list_imp<unsigned int>::clear(&v30);
  return std::__list_imp<unsigned int>::clear(&v25);
}

void sub_260184A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZObjectSimulator::midPointSolve(OZObjectSimulator *this, OZSimulationState *a2, OZSimulationState *a3, CMTime *a4, double a5)
{
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 8) = 0u;
  OZObjectSimulator::accumForces(this, a2);
  memset(v12, 0, 24);
  v12[3] = 0x3FF0000000000000;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = *a4;
  PC_CMTimeHalve(&v10, &v11);
  OZSimulationState::stepFrom(v12, a2, &v11, a5 * 0.5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  OZObjectSimulator::accumForces(this, v12);
  OZSimulationState::stepFrom(a3, a2, v12, a4, a5);
}

void *OZObjectSimulator::getBehaviors(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  v6 = (*(**(a1 + 8) + 640))(*(a1 + 8));
  v7 = (*(**(a1 + 8) + 1008))();
  v16 = v6;
  std::list<OZSimulationBehavior *>::list(&v19, v6 + 224);
  for (i = v20; i != &v19; i = i[1])
  {
    v9 = i[2];
    {
      operator new();
    }
  }

  if ((v7 & 1) == 0 && (*(*(a1 + 8) + 1024) & 8) == 0)
  {
    for (j = *(v16 + 48); j; j = *(j + 48))
    {
      if ((*(j + 57) & 0x20) != 0)
      {
        if (v11)
        {
          std::list<OZSimulationBehavior *>::list(v18, v11 + 224);
          for (k = v18[1]; k != v18; k = k[1])
          {
            v13 = k[2];
            v14 = *(a1 + 8);
            {
              operator new();
            }
          }

          std::__list_imp<unsigned int>::clear(v18);
        }
      }
    }
  }

  return std::__list_imp<unsigned int>::clear(&v19);
}

void sub_260184EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *OZObjectSimulator::getAllVisibleBehaviors(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(**(a1 + 8) + 640))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 1008))();
  std::list<OZSimulationBehavior *>::list(&v19, v5 + 224);
  for (i = v20; i != &v19; i = i[1])
  {
    v8 = i[2];
    if ((v6 & 1) == 0 || (*(*v8 + 656))(i[2]))
    {
      v9 = (*(*v8 + 312))(v8);
      if (!OZChannelBase::testFlag(v9, 2) && v8[20] >= *(a1 + 368))
      {
        if (a3 > 6)
        {
          if ((a3 - 7) >= 3 || (*(*v8 + 704))(v8))
          {
            goto LABEL_17;
          }
        }

        else
        {
          switch(a3)
          {
            case 1:
              v10 = (*(*v8 + 680))(v8);
              break;
            case 2:
              v10 = (*(*v8 + 688))(v8);
              break;
            case 3:
              v10 = (*(*v8 + 696))(v8);
              break;
            default:
              goto LABEL_17;
          }

          if (v10)
          {
LABEL_17:
            operator new();
          }
        }
      }
    }
  }

  if ((v6 & 1) == 0 && (*(*(a1 + 8) + 1024) & 8) == 0)
  {
    for (j = *(v5 + 48); j; j = *(j + 48))
    {
      if ((*(j + 57) & 0x20) != 0)
      {
        if (v12)
        {
          std::list<OZSimulationBehavior *>::list(v18, v12 + 224);
          for (k = v18[1]; k != v18; k = k[1])
          {
            v14 = k[2];
            v15 = *(a1 + 8);
            if (v15 != OZSimulationBehavior::getTransformNode(v14) && ((*(*v14 + 656))(v14) & 1) == 0 && *(v14 + 20) >= *(a1 + 368))
            {
              if (a3 > 6)
              {
                if ((a3 - 7) >= 3 || (*(*v14 + 704))(v14))
                {
                  goto LABEL_40;
                }
              }

              else
              {
                switch(a3)
                {
                  case 1:
                    v16 = (*(*v14 + 680))(v14);
                    break;
                  case 2:
                    v16 = (*(*v14 + 688))(v14);
                    break;
                  case 3:
                    v16 = (*(*v14 + 696))(v14);
                    break;
                  default:
                    goto LABEL_40;
                }

                if (v16)
                {
LABEL_40:
                  operator new();
                }
              }
            }
          }

          std::__list_imp<unsigned int>::clear(v18);
        }
      }
    }
  }

  return std::__list_imp<unsigned int>::clear(&v19);
}

void sub_2601853E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZObjectSimulator::dirty(OZObjectSimulator *this)
{
  PCMutex::lock((this + 272));
  for (i = *(this + 44); i != (this + 344); i = *(i + 8))
  {
    **(i + 16) = 0;
  }

  return PCMutex::unlock((this + 272));
}

void *OZObjectSimulator::calcStaticHash(uint64_t a1, void *lpsrc, uint64_t a3)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v16 = *PCHashWriteStream::getHash(v5)->i8;
  (*(*v6 + 40))(v6);
  v13 = &v13;
  v14 = &v13;
  v15 = 0;
  OZObjectSimulator::getBehaviors(a1, &v13, 1u, 1);
  v7 = v14;
  if (v14 != &v13)
  {
    while (1)
    {
      v8 = v7[2];
      v9 = (*(*v8 + 320))(v8);
      if ((*(*v8 + 672))(v8))
      {
        break;
      }

      if (v9)
      {
        v10 = OZObjectManipulator::isInObjectList(v9 + 16, a3);
LABEL_7:
        if (!v10)
        {
          OZObjectManipulator::getStaticHash();
        }
      }

      v7 = v7[1];
      if (v7 == &v13)
      {
        goto LABEL_10;
      }
    }

    v10 = OZObjectManipulator::isInObjectList(v8 + 16, a3);
    goto LABEL_7;
  }

LABEL_10:
  Hash = PCHashWriteStream::getHash(v6);
  PCHash128::operator+=(&v16, Hash);
  PCHashWriteStream::setHash(v6, &v16);
  return std::__list_imp<unsigned int>::clear(&v13);
}

void sub_260185660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t OZObjectSimulator::shouldAccumInitialValue(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CMTime *a5)
{
  v9 = (*(**(a1 + 8) + 272))(*(a1 + 8));
  memset(&v14, 0, sizeof(v14));
  OZSceneSettings::getFrameDuration((v9 + 336), &v14);
  memset(&v13, 0, sizeof(v13));
  operator*(&v14, &v13, 0.001);
  if ((*(*a2 + 672))(a2) || a3 && a4)
  {
    v16 = *a5;
    v15 = v13;
    v10.n128_f64[0] = PC_CMTimeSaferSubtract(&v16, &v15, v12);
    return (*(*a2 + 296))(a2, v12, 0, 1, 1, v10) ^ 1;
  }

  return a3;
}

void *OZObjectSimulator::getAccumForcesList(uint64_t a1, CMTime *a2)
{
  v4 = (*(**(a1 + 8) + 1008))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 272))();
  memset(&v27, 0, sizeof(v27));
  OZSceneSettings::getFrameDuration((v5 + 336), &v27);
  memset(&v26, 0, sizeof(v26));
  operator*(&v27, &v26, 0.001);
  v20 = (*(**(a1 + 8) + 640))();
  std::list<OZSimulationBehavior *>::list(&v24, v20 + 224);
  v6 = *(a1 + 8);
  time1 = *a2;
  v7 = (*(*(v6 + 16) + 104))();
  v8 = *(a1 + 8);
  time1 = *a2;
  time2 = v26;
  v9 = PC_CMTimeSaferSubtract(&time1, &time2, v23);
  v21 = (*(*(v8 + 16) + 104))(v8 + 16, v23, 0, 1, 1, v9);
  for (i = v25; i != &v24; i = i[1])
  {
    v11 = i[2];
    {
      time1 = *a2;
      if ((*(*v11 + 296))(v11, &time1, 0, 1, 1))
      {
        time1 = *a2;
        time2 = *(a1 + 212);
        if (CMTimeCompare(&time1, &time2) >= 1 && OZObjectSimulator::shouldAccumInitialValue(a1, v11, v7, v21, a2))
        {
          operator new();
        }

        if ((v7 & 1) != 0 || (*(*v11 + 672))(v11))
        {
          operator new();
        }
      }
    }
  }

  v22 = v7;
  if ((v4 & 1) == 0 && (*(*(a1 + 8) + 1024) & 8) == 0)
  {
    for (j = *(v20 + 48); j; j = *(j + 48))
    {
      if ((*(j + 57) & 0x20) != 0)
      {
        if (v13)
        {
          v14 = (v13 + 28);
          for (k = v13[29]; k != v14; k = *(k + 8))
          {
            v16 = *(k + 16);
            {
              v17 = *(a1 + 8);
              if (v17 != OZSimulationBehavior::getTransformNode(v16) && ((*(*v16 + 656))(v16) & 1) == 0)
              {
                time1 = *a2;
                if ((*(*v16 + 296))(v16, &time1, 0, 1, 1))
                {
                  if (*(v16 + 20) >= *(a1 + 368))
                  {
                    time1 = *a2;
                    time2 = *(a1 + 212);
                    v18 = v22;
                    if (CMTimeCompare(&time1, &time2) >= 1)
                    {
                      v18 = v22;
                      if (OZObjectSimulator::shouldAccumInitialValue(a1, v16, v22, v21, a2))
                      {
                        operator new();
                      }
                    }

                    if ((v18 & 1) != 0 || (*(*v16 + 672))(v16))
                    {
                      operator new();
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

  return std::__list_imp<unsigned int>::clear(&v24);
}

void sub_260185EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *OZObjectSimulator::accumForces(OZObjectSimulator *this, OZSimulationState *a2)
{
  v6 = &v6;
  v7 = &v6;
  v8 = 0;
  OZObjectSimulator::getAccumForcesList(this, (a2 + 176));
  for (i = v7; i != &v6; i = i[1])
  {
    v3 = *i[2];
    if (*(i + 6) == 1)
    {
      v4 = (v3 + 640);
    }

    else
    {
      v4 = (v3 + 624);
    }

    (*v4)();
  }

  return std::__list_imp<unsigned int>::clear(&v6);
}

void sub_260185F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::pair<OZObjectSimulator *,CMTime>>::find<std::pair<OZObjectSimulator *,CMTime>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::pair<OZObjectSimulator *,CMTime>>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::pair<OZObjectSimulator *,CMTime>>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t std::less<std::pair<OZObjectSimulator *,CMTime>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  time1 = *(a2 + 8);
  v6 = *(a3 + 8);
  return CMTimeCompare(&time1, &v6) >> 31;
}

uint64_t std::__tree<std::pair<OZObjectSimulator *,CMTime>>::__emplace_unique_key_args<std::pair<OZObjectSimulator *,CMTime>,std::pair<OZObjectSimulator *,CMTime> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::pair<OZObjectSimulator *,CMTime>>::__find_equal<std::pair<OZObjectSimulator *,CMTime>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::pair<OZObjectSimulator *,CMTime>>::__find_equal<std::pair<OZObjectSimulator *,CMTime>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::pair<OZObjectSimulator *,CMTime>>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::pair<OZObjectSimulator *,CMTime>>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t PCThreadSpecific<SimRecursionInfo>::destroy(uint64_t result)
{
  if (result)
  {
    std::deque<std::pair<OZObjectSimulator *,CMTime>>::~deque[abi:ne200100]((result + 8));

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::deque<std::pair<OZObjectSimulator *,CMTime>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void *std::deque<std::pair<OZObjectSimulator *,CMTime>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(a1, &v10);
}

void sub_260186470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<OZObjectSimulator *,CMTime>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x80)
  {
    a2 = 1;
  }

  if (v5 < 0x100)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t *std::list<OZSimulationBehavior *>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZSimulationBehavior *,void *>,std::__list_const_iterator<OZSimulationBehavior *,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    i[2] = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<OZSimulationBehavior *>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZSimulationBehavior *,void *>,std::__list_const_iterator<OZSimulationBehavior *,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<CMTime,double>>::erase(a1, i, a1);
  }
}

uint64_t std::list<OZSimulationBehavior *>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<OZSimulationBehavior *,void *>,std::__list_const_iterator<OZSimulationBehavior *,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_260186674(void *a1)
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

void OZLight::OZLight(OZLight *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZTransformNode::OZTransformNode(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 6528));
  *this = &unk_287296C30;
  *(this + 2) = &unk_287297208;
  *(this + 6) = &unk_287297460;
  *(this + 816) = &unk_2872974B8;
  *(this + 819) = 0x4024000000000000;
  *(this + 410) = xmmword_2608523A0;
  *(this + 411) = 0u;
  *(this + 824) = 0x3FF0000000000000;
  *(this + 825) = 0;
  *(this + 827) = 0;
  *(this + 826) = 0;
  PCURL::PCURL(&v7, @"Channel Light Model Parameter");
  PCURL::PCURL(&v6, @"Channel Light Model");
  OZChannelEnum::OZChannelEnum((this + 6624), 2u, &v7, &v6, (this + 448), 0x64u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Light Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 6880), 1.0, 1.0, 1.0, &v7, (this + 448), 0x65u, 0, 5u);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Light Intensity");
  OZChannelDouble::OZChannelDouble((this + 7888), 1.0, &v7, (this + 448), 0x66u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Light Attenuation Distance To");
  OZChannelDouble::OZChannelDouble((this + 8040), 0.0, &v7, (this + 448), 0x67u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Light Attenuation Value");
  OZChannelPercent::OZChannelPercent((this + 0x2000), 0.03, &v7, (this + 448), 0x68u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Spotlight Properties");
  OZChannelFolder::OZChannelFolder((this + 8344), &v7, (this + 448), 0x69u, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Spotlight Angle");
  OZChannelAngle::OZChannelAngle((this + 8472), 0.785398163, &v7, (this + 8344), 0x6Au, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Spotlight Penumbra Angle");
  OZChannelAngle::OZChannelAngle((this + 8624), 0.0174532925, &v7, (this + 8344), 0x6Bu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Folder Lighting Shadow");
  OZFolderLightShadow::OZFolderLightShadow((this + 8776), &v7, (this + 448), 0x6Du, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Channel Light Diameter");
  OZChannelDouble::OZChannelDouble((this + 10368), 10, &v7, (this + 448), 0x6Eu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Hidden Channel");
  OZChannelDouble::OZChannelDouble((this + 10520), 1, &v7, (this + 448), 0x6Fu, 2, 0, 0);
  PCString::~PCString(&v7);
  PCColorDescription::PCColorDescription((this + 10672));
  *(this + 10696) = 1;
  OZLight::initChannels(this);
  OZLight::refreshChannels(this, 2);
  OZChannelBase::resetFlag((this + 56), 0x80000, 0);
  OZChannelFolder::saveStateAsDefault((this + 56));
}

void sub_260186B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, PCString a11, PCString a12)
{
  OZChannel::~OZChannel((v12 + v16));
  OZChannel::~OZChannel((v12 + v14));
  OZFolderLightShadow::~OZFolderLightShadow((v12 + v15));
  OZChannel::~OZChannel((v12 + v17));
  OZChannel::~OZChannel((v12 + v20));
  OZChannelFolder::~OZChannelFolder((v12 + v18));
  OZChannelPercent::~OZChannelPercent((v12 + 0x2000));
  OZChannel::~OZChannel((v12 + v19));
  OZChannel::~OZChannel((v12 + 7888));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v12 + 6880));
  OZChannelEnum::~OZChannelEnum((v12 + 6624));
  OZChannelBase::setRangeName(v13, v21);
  OZTransformNode::~OZTransformNode(v12);
  _Unwind_Resume(a1);
}

uint64_t OZLight::initChannels(OZLight *this)
{
  OZChannelBase::setFlag((this + 10520), 0x100000000, 0);
  OZChannel::setScale((this + 7888), 100.0);
  OZChannel::setSuffix((this + 7888), "%");
  OZChannel::setCoarseDelta((this + 7888), *(*(this + 1002) + 32) / 100.0);
  OZChannel::setFineDelta((this + 7888), *(*(this + 1002) + 24) / 100.0);
  OZChannel::setSliderMax((this + 7888), 4.0);
  OZChannel::setSliderMin((this + 7888), 0.0);
  OZChannel::setMax((this + 7888), 3.40282347e38);
  OZChannel::setMin((this + 7888), 0.0);
  OZChannel::setMax((this + 8472), 1.57079633);
  OZChannel::setMin((this + 8472), 0.0);
  OZChannel::setSliderMax((this + 8472), 1.57079633);
  OZChannel::setSliderMin((this + 8472), 0.0);
  OZChannel::setMax((this + 8624), 1.57079633);
  OZChannel::setMin((this + 8624), 0.0);
  OZChannel::setSliderMax((this + 8624), 1.57079633);
  OZChannel::setSliderMin((this + 8624), 0.0);
  OZChannel::setSliderMax((this + 0x2000), 2.0);
  OZChannel::setSliderMin((this + 0x2000), 0.0);
  OZChannel::setMin((this + 8040), 0.0);
  OZChannel::setSliderMax((this + 8040), 1000.0);
  OZChannel::setSliderMin((this + 8040), 0.0);
  OZChannel::setMax((this + 10368), 1000000.0);
  OZChannel::setMin((this + 10368), 0.0);
  OZChannel::setSliderMax((this + 10368), 90.0);
  OZChannel::setSliderMin((this + 10368), 0.0);
  OZChannel::setDefaultValue((this + 1352), 0.0);
  OZChannel::setDefaultValue((this + 1504), 0.0);
  OZChannel::setDefaultValue((this + 1952), 100.0);
  (*(*(this + 152) + 288))(this + 1216, 0);
  OZChannelBase::setFlag((this + 4440), 32770, 0);
  (*(*(this + 555) + 128))(this + 4440);
  OZChannelBase::setFlag((this + 5032), 32770, 0);
  (*(*(this + 629) + 128))(this + 5032);
  OZChannelBase::setFlag((this + 5472), 32770, 0);
  v2 = *(*(this + 684) + 128);

  return v2(this + 5472);
}

OZChannelBase *OZLight::refreshChannels(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_12;
      }

      OZChannelBase::resetFlag((a1 + 1088), 4194306, 0);
      OZChannelBase::resetFlag((a1 + 1216), 4194306, 0);
      OZChannelBase::resetFlag((a1 + 2104), 4194306, 0);
      OZChannelBase::resetFlag((a1 + 8040), 4194306, 0);
      OZChannelBase::resetFlag((a1 + 0x2000), 4194306, 0);
      OZChannelBase::resetFlag((a1 + 8344), 4194306, 0);
      goto LABEL_11;
    }

    OZChannelBase::resetFlag((a1 + 1088), 4194306, 0);
    OZChannelBase::resetFlag((a1 + 1216), 4194306, 0);
    OZChannelBase::setFlag((a1 + 2104), 4194306, 0);
    OZChannelBase::resetFlag((a1 + 8040), 4194306, 0);
    OZChannelBase::resetFlag((a1 + 0x2000), 4194306, 0);
  }

  else
  {
    if (!a2)
    {
      OZChannelBase::setFlag((a1 + 1088), 4194306, 0);
      OZChannelBase::setFlag((a1 + 8040), 4194306, 0);
      OZChannelBase::setFlag((a1 + 0x2000), 4194306, 0);
      OZChannelBase::setFlag((a1 + 8344), 4194306, 0);
      OZChannelBase::setFlag((a1 + 10368), 4194306, 0);
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      goto LABEL_12;
    }

    OZChannelBase::resetFlag((a1 + 1088), 4194306, 0);
    OZChannelBase::resetFlag((a1 + 1216), 4194306, 0);
    OZChannelBase::resetFlag((a1 + 2104), 4194306, 0);
    OZChannelBase::setFlag((a1 + 8040), 4194306, 0);
    OZChannelBase::setFlag((a1 + 0x2000), 4194306, 0);
  }

  OZChannelBase::setFlag((a1 + 8344), 4194306, 0);
LABEL_11:
  OZChannelBase::resetFlag((a1 + 10368), 4194306, 0);
LABEL_12:

  return OZChannelBase::setFlag((a1 + 8776), 4194306, 0);
}

void OZLight::OZLight(OZLight *this, const OZLight *a2, char a3)
{
  OZTransformNode::OZTransformNode(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 6528));
  *this = &unk_287296C30;
  *(this + 2) = &unk_287297208;
  *(this + 6) = &unk_287297460;
  *(this + 816) = &unk_2872974B8;
  *(this + 819) = 0x4024000000000000;
  *(this + 410) = xmmword_2608523A0;
  *(this + 411) = *(a2 + 411);
  *(this + 412) = *(a2 + 412);
  *(this + 413) = *(a2 + 413);
  OZChannelEnum::OZChannelEnum((this + 6624), (a2 + 6624), (this + 448));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 6880), (a2 + 6880), (this + 448));
  OZChannel::OZChannel((this + 7888), (a2 + 7888), (this + 448));
  *(this + 986) = &unk_287245C60;
  *(this + 988) = &unk_287245FC0;
  OZChannel::OZChannel((this + 8040), (a2 + 8040), (this + 448));
  *(this + 1005) = &unk_287245C60;
  *(this + 1007) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 0x2000), (a2 + 0x2000), (this + 448));
  OZChannelFolder::OZChannelFolder((this + 8344), (a2 + 8344), (this + 448));
  OZChannel::OZChannel((this + 8472), (a2 + 8472), (this + 8344));
  *(this + 1059) = &unk_287246030;
  *(this + 1061) = &unk_287246390;
  OZChannel::OZChannel((this + 8624), a2 + 77, (this + 8344));
  *(this + 1078) = &unk_287246030;
  *(this + 1080) = &unk_287246390;
  OZFolderLightShadow::OZFolderLightShadow((this + 8776), (a2 + 8776), (this + 448));
  OZChannel::OZChannel((this + 10368), (a2 + 10368), (this + 448));
  *(this + 1296) = &unk_287245C60;
  *(this + 1298) = &unk_287245FC0;
  OZChannel::OZChannel((this + 10520), (a2 + 10520), (this + 448));
  *(this + 1315) = &unk_287245C60;
  *(this + 1317) = &unk_287245FC0;
  PCColorDescription::PCColorDescription((this + 10672));
  *(this + 10696) = 1;
}

void sub_260187644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannelBase *a10)
{
  OZChannel::~OZChannel(v17);
  OZChannel::~OZChannel(v16);
  OZFolderLightShadow::~OZFolderLightShadow((v10 + v11));
  OZChannel::~OZChannel(v15);
  OZChannel::~OZChannel(v14);
  OZChannelFolder::~OZChannelFolder((v10 + v18));
  OZChannelPercent::~OZChannelPercent((v10 + 0x2000));
  OZChannel::~OZChannel(v13);
  OZChannel::~OZChannel(v12);
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v10 + 6880));
  OZChannelEnum::~OZChannelEnum((v10 + 6624));
  OZChannelBase::setRangeName(a10, v20);
  OZTransformNode::~OZTransformNode(v10);
  _Unwind_Resume(a1);
}

OZLight *OZLight::operator=(OZLight *this, uint64_t a2)
{
  if (a2 != this)
  {
    OZLight::initChannels(this);
    OZTransformNode::operator=(this, a2);
    *(this + 6536) = *(a2 + 6536);
    v4 = *(a2 + 6576);
    *(this + 824) = *(a2 + 6592);
    *(this + 411) = v4;
    v5 = *(a2 + 6616);
    *(this + 6600) = *(a2 + 6600);
    *(this + 827) = v5;
    OZChannelBase::operator=(this + 6624, a2 + 6624);
    OZChannelFolder::operator=(this + 6880);
    OZChannelBase::operator=(this + 7016, a2 + 7016);
    OZChannelBase::operator=(this + 7168, a2 + 7168);
    OZChannelBase::operator=(this + 7320, a2 + 7320);
    OZChannelBase::operator=(this + 7472, a2 + 7472);
    OZChannelBase::operator=(this + 7624, a2 + 7624);
    *(this + 7880) = *(a2 + 7880);
    OZChannelBase::operator=(this + 7888, a2 + 7888);
    OZChannelBase::operator=(this + 8040, a2 + 8040);
    OZChannelBase::operator=(this + 0x2000, a2 + 0x2000);
    OZChannelFolder::operator=(this + 8344);
    OZChannelBase::operator=(this + 8472, a2 + 8472);
    OZChannelBase::operator=(this + 8624, a2 + 8624);
    OZFolderLightShadow::operator=(this + 8776, a2 + 8776);
    OZChannelBase::operator=(this + 10368, a2 + 10368);
    OZChannelBase::operator=(this + 10520, a2 + 10520);
  }

  return this;
}

uint64_t OZTransformNode::operator=(uint64_t a1, uint64_t a2)
{
  OZSceneNode::operator=(a1, a2);
  OZChannelFolder::operator=(a1 + 1088);
  OZChannelPosition::operator=(a1 + 1216, a2 + 1216);
  OZChannelPosition::operator=(a1 + 2104, a2 + 2104);
  OZChannelPosition::operator=(a1 + 2960, a2 + 2960);
  OZChannelFolder::operator=(a1 + 3848);
  OZChannelBase::operator=(a1 + 3984, a2 + 3984);
  OZChannelBase::operator=(a1 + 4136, a2 + 4136);
  OZChannelBase::operator=(a1 + 4288, a2 + 4288);
  OZChannelFolder::operator=(a1 + 4440);
  OZChannelBase::operator=(a1 + 4576, a2 + 4576);
  OZChannelBase::operator=(a1 + 4728, a2 + 4728);
  OZChannelBase::operator=(a1 + 4880, a2 + 4880);
  OZChannelFolder::operator=(a1 + 5032);
  OZChannelBase::operator=(a1 + 5168, a2 + 5168);
  OZChannelBase::operator=(a1 + 5320, a2 + 5320);
  OZChannelPosition::operator=(a1 + 5472, a2 + 5472);
  v4 = *(a2 + 6368);
  *(a1 + 6360) = *(a2 + 6360);
  *(a1 + 6368) = v4;
  OZChannelBase::operator=(a1 + 6376, a2 + 6376);
  return a1;
}

uint64_t OZFolderLightShadow::operator=(uint64_t a1, uint64_t a2)
{
  OZChannelFolder::operator=(a1);
  OZChannelBase::operator=(a1 + 128, a2 + 128);
  OZChannelBase::operator=(a1 + 280, a2 + 280);
  OZChannelBase::operator=(a1 + 432, a2 + 432);
  OZChannelFolder::operator=(a1 + 584);
  OZChannelBase::operator=(a1 + 720, a2 + 720);
  OZChannelBase::operator=(a1 + 872, a2 + 872);
  OZChannelBase::operator=(a1 + 1024, a2 + 1024);
  OZChannelBase::operator=(a1 + 1176, a2 + 1176);
  OZChannelBase::operator=(a1 + 1328, a2 + 1328);
  *(a1 + 1584) = *(a2 + 1584);
  return a1;
}

uint64_t OZLight::operator=(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return (*(*a1 + 1440))(a1, v3);
}

uint64_t OZLight::parseBegin(OZLight *this, PCSerializerReadStream *a2)
{
  v3 = OZTransformNode::parseBegin(this, a2);
  if (v3)
  {
    OZChannel::setValue((this + 10520), MEMORY[0x277CC08F0], 0.0, 0);
  }

  return v3;
}

uint64_t OZLight::parseEnd(OZLight *this, PCSerializerReadStream *a2)
{
  v4 = OZTransformNode::parseEnd(this, a2);
  if (v4)
  {
    if (*(a2 + 26) <= 4u)
    {
      if (OZChannel::hasKeypoints((this + 7888)))
      {
        OZChannel::getKeyframes((this + 7888), 0, &v16);
        v5 = v16;
        if (v17 != v16)
        {
          v6 = 0;
          v7 = 1;
          do
          {
            v14 = 0.0;
            OZChannel::getKeyframe((this + 7888), v5[v6], &v15, &v14);
            v8 = v14;
            if (v14 >= 1.0)
            {
              v9 = v8 + (v8 + -1.0) * exp(-(v14 * v14)) * 2.71828183;
            }

            else
            {
              v9 = pow(v14, 2.2);
            }

            v14 = v9;
            OZChannel::setKeyframe((this + 7888), v16[v6], &v15, v9);
            v6 = v7;
            v5 = v16;
            ++v7;
          }

          while (v6 < v17 - v16);
        }

        if (v5)
        {
          v17 = v5;
          operator delete(v5);
        }
      }

      else
      {
        OZChannel::getValueAsDouble((this + 7888), MEMORY[0x277CC08F0], 0.0);
        if (v10 >= 1.0)
        {
          v11 = v10 + (v10 + -1.0) * exp(-(v10 * v10)) * 2.71828183;
        }

        else
        {
          v11 = pow(v10, 2.2);
        }

        OZChannel::setValue((this + 7888), MEMORY[0x277CC08F0], v11, 1);
      }
    }

    if (OZChannel::getValueAsInt((this + 10520), MEMORY[0x277CC08F0], 0.0) <= 0)
    {
      v12 = MEMORY[0x277CC08F0];
      OZChannel::setValue((this + 10368), MEMORY[0x277CC08F0], 0.0, 0);
      OZChannel::setValue((this + 10520), v12, 1.0, 0);
    }
  }

  return v4;
}

void sub_260187DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGColorSpace **OZLight::buildLiLight@<X0>(OZLight *this@<X0>, const OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
  LiLight::LiLight(a3);
  OZRenderState::OZRenderState(&v65, a2);
  var0 = v65.var0;
  v6 = *(this + 822);
  v7 = *(this + 823);
  v8 = *(this + 824);
  v62 = *(this + 6600);
  v63 = *(this + 827);
  v61 = 0x3FF0000000000000;
  *&v58 = 1.0;
  *&v55 = 1.0;
  v52 = 1.0;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v59 = 0u;
  v60 = 0u;
  PCColor::PCColor(&v51);
  v65.var8 = 0;
  (*(*(this + 860) + 824))(this + 6880, &var0, &v51, 0.0);
  (*(*this + 1256))(this, &v52, &v65);
  PCMatrix44Tmpl<double>::transform<double>(&v52, &v62, &v62);
  v9 = *&v53;
  v10 = *(&v54 + 1);
  v11 = *&v55;
  v44 = *&v56;
  v45 = *(&v53 + 1);
  v12 = v57;
  v42 = v52;
  v43 = *&v58;
  *(a3 + 568) = *(this + 20);
  (*(*this + 288))(&v50, this);
  CGColorSpace = FxColorDescription::getCGColorSpace(&v50);
  if ((a3 + 760) != &v52)
  {
    for (i = 0; i != 128; i += 32)
    {
      v15 = (a3 + 760 + i);
      v16 = *(&v53 + i + 8);
      *v15 = *(&v52 + i);
      v15[1] = v16;
    }
  }

  PCWorkingColor::PCWorkingColor(&v48, &v51, CGColorSpace);
  PCWorkingColor::operator=(&v47, &v48);
  v17 = v8 * v44;
  v18 = v6 * *&v12 + v7 * *(&v12 + 1);
  v19 = v8 * v43;
  v20 = v6 * v42 + v7 * v9 + v8 * v45;
  v21 = v6 * v10 + v7 * v11 + v17;
  v22 = v18 + v19;
  *(a3 + 608) = *&v47.value;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v48.var0.var1[1]);
  *(a3 + 624) = v20;
  *(a3 + 632) = v21;
  *(a3 + 640) = v22;
  memset(v49, 0, sizeof(v49));
  (*(*this + 1320))(this, v49, &v65, 1);
  ValueAsInt = OZChannel::getValueAsInt((this + 6624), &var0, 0.0);
  OZChannel::getValueAsDouble((this + 10368), &var0, 0.0);
  v25 = v24 * 0.5;
  if (ValueAsInt == 1)
  {
    v26 = 360.0;
    if (v25 <= 360.0)
    {
      v26 = v25;
    }

    v27 = v26 * 3.14159265 / 180.0;
    v28 = v25 < 0.0;
    v25 = 0.0;
    if (!v28)
    {
      v25 = v27;
    }
  }

  *(a3 + 688) = v25;
  *(a3 + 656) = ValueAsInt;
  OZChannel::getValueAsDouble((this + 7888), &var0, 0.0);
  *(a3 + 648) = v29;
  *(a3 + 680) = v63;
  *(a3 + 664) = v62;
  OZChannel::getValueAsDouble((this + 8472), &var0, 0.0);
  *(a3 + 696) = v30;
  OZChannel::getValueAsDouble((this + 8624), &var0, 0.0);
  *(a3 + 704) = v31;
  *(a3 + 712) = 0;
  OZChannel::getValueAsDouble((this + 8040), &var0, 0.0);
  *(a3 + 600) = v32;
  v47 = var0;
  OZLight::buildAttenuation(this, &v47, &v48);
  *(a3 + 576) = *&v48.var0.var0;
  *(a3 + 592) = v48.var0.var1[1];
  *&v48.var0.var0 = *&var0.value;
  *&v48.var0.var1[1] = var0.epoch;
  *(a3 + 720) = (*(*(this + 2) + 104))(this + 16, &v48, 1, 1, 1);
  v33 = OZFolderLightShadow::opacity((this + 8776));
  OZChannel::getValueAsDouble(v33, &var0, 0.0);
  v35 = v34;
  *(a3 + 721) = OZFolderLightShadow::hasShadows((this + 8776), &var0);
  v36 = OZFolderLightShadow::softness((this + 8776));
  OZChannel::getValueAsDouble(v36, &var0, 0.0);
  *(a3 + 744) = v37;
  v38 = OZFolderLightShadow::uniformSoftness((this + 8776));
  *(a3 + 752) = OZChannel::getValueAsInt(v38, &var0, 0.0) != 0;
  PCColor::PCColor(&v48);
  v39 = OZFolderLightShadow::color((this + 8776));
  (*(*v39 + 824))(v39, &var0, &v48, 0.0);
  PCWorkingColor::PCWorkingColor(&v47, &v48, CGColorSpace);
  *&v40 = v35;
  v47.flags = v40;
  PCWorkingColor::operator=(&v46, &v47);
  *(a3 + 724) = v46;
  PCCFRef<CGColorSpace *>::~PCCFRef(&v47.epoch);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v48.var1._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v50._pcColorDesc._colorSpaceRef._obj);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v51.var1._obj);
}

void sub_26018835C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CGColorSpace *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, CGColorSpace *a42)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v43 + 16));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a27);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a42);
  LiLight::~LiLight(v42);
  _Unwind_Resume(a1);
}

void OZLight::buildAttenuation(OZLight *this@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  OZChannel::getValueAsDouble((this + 0x2000), a2, 0.0);
  v6 = v5 * *(this + 820);
  if (v5 <= 0.2)
  {
    v7 = v6 * (v6 * 0.125);
  }

  else
  {
    v7 = v6 * (v6 * 0.125) + (v5 + -0.2) * *(this + 821) * 0.5;
  }

  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = v6 * 0.5;
  *(a3 + 16) = v7;
}

uint64_t OZLight::render(OZLight *this, OZRenderParams *a2)
{
  v3 = (*(*this + 1456))(this);
  v4 = *(a2 + 34);
  if (v4 && ((*(*v4 + 16))(v4) & 1) != 0)
  {
    return 1;
  }

  return v3;
}

int64x2_t OZLight::getBounds(uint64_t a1, int64x2_t *a2)
{
  result = vdupq_n_s64(0xC049000000000000);
  *a2 = result;
  a2[1] = vdupq_n_s64(0x4059000000000000uLL);
  return result;
}

int64x2_t non-virtual thunk toOZLight::getBounds(uint64_t a1, int64x2_t *a2)
{
  result = vdupq_n_s64(0xC049000000000000);
  *a2 = result;
  a2[1] = vdupq_n_s64(0x4059000000000000uLL);
  return result;
}

void OZLight::drawGeometry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PCPrint("File %s, line %d should not have been reached:\n\t", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZLight.cpp");

  pcAbortImpl();
}

double OZLight::calcTranslationRelativeToCamera(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6)
{
  v56 = 0u;
  v57 = 0u;
  v58 = 0x3FF0000000000000;
  v55 = 0x3FF0000000000000;
  v52 = 0x3FF0000000000000;
  v49 = 0x3FF0000000000000;
  v50 = 0u;
  v51 = 0u;
  v53 = 0u;
  v54 = 0u;
  v48 = 0x3FF0000000000000;
  v45 = 0x3FF0000000000000;
  v42 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v40 = 0u;
  v41 = 0u;
  v43 = 0u;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  (*(*a1 + 1256))();
  v12 = a1[120];
  if (v12)
  {
    if (v13)
    {
      (*(*v13 + 1264))(v13, &v39, a5);
    }
  }

  v37 = 0uLL;
  v38 = 0.0;
  (*(*a1 + 1384))(&v35, a1, a2, a4, a5, 0);
  v30 = 0uLL;
  v31 = 0;
  v14.f64[0] = 20.0;
  PCCalcRaySphereIntersection<double>(&v35, &v36[8], &v30, &v37, v14);
  if ((v15 & 1) == 0)
  {
    v16 = vmuld_lane_f64(-v35.f64[1], *&v36[8], 1) - vmulq_f64(v35, *&v36[8]).f64[0] - *v36 * *&v36[24];
    v37 = vaddq_f64(v35, vmulq_n_f64(*&v36[8], v16));
    v38 = *v36 + *&v36[24] * v16;
  }

  PCMatrix44Tmpl<double>::transform<double>(&v49, v37.f64, v37.f64);
  v32 = 0.0;
  v33 = 0.0;
  v34 = 1.0;
  (*(*a4 + 24))(&v30, a4);
  PCMatrix44Tmpl<double>::transform_row<double>(v30.f64, &v32, &v32);
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = sqrt(v17 * v17 + v18 * v18 + v19 * v19);
  if (fabs(v20) >= 0.000000100000001)
  {
    v17 = v32 / v20;
    v18 = v33 / v20;
    v32 = v32 / v20;
    v33 = v33 / v20;
    v19 = v34 / v20;
    v34 = v34 / v20;
  }

  v28 = 0uLL;
  v29 = 0.0;
  v23 = v37;
  v24 = v38;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  (*(*a4 + 80))(v22, a4, a3);
  v35 = v22[0];
  *v36 = v22[1];
  *&v36[16] = v22[2];
  PCIntersectRayWithPlane(&v35, &v23, &v28);
  PCMatrix44Tmpl<double>::transform<double>(&v39, v37.f64, v37.f64);
  PCMatrix44Tmpl<double>::transform<double>(&v39, v28.f64, v28.f64);
  result = v29 - v38;
  *a6 = vsubq_f64(v28, v37);
  a6[1].f64[0] = result;
  return result;
}

CGColorSpace **OZLight::setLightWorkingColorDescription(CGColorSpace **this, const FxColorDescription *a2)
{
  result = PCCFRef<CGColorSpace *>::operator=(this + 1334, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  *(this + 2672) = LODWORD(a2->_pcColorDesc._toneMapMethod._gain);
  this[1335] = v5;
  *(this + 10696) = a2->_isPremultiplied;
  return result;
}

CGColorSpace *OZLight::getWorkingColorDescription@<X0>(OZLight *this@<X0>, uint64_t a2@<X8>)
{
  if (FxColorDescription::getCGColorSpace((this + 10672)))
  {
    result = *(this + 1334);
    *a2 = result;
    if (result)
    {
      result = PCCFRefTraits<CGColorSpace *>::retain(result);
    }

    *(a2 + 8) = *(this + 1335);
    *(a2 + 16) = *(this + 2672);
    *(a2 + 24) = *(this + 10696);
  }

  else
  {

    return OZSceneNode::getWorkingColorDescription(this, a2);
  }

  return result;
}

uint64_t OZLight::getLocalVolume(uint64_t a1, _OWORD *a2, CMTime *a3)
{
  result = OZChannel::getValueAsInt((a1 + 6624), a3, 0.0);
  if (result > 1)
  {
    if (result == 2)
    {
      v5 = xmmword_2608523D0;
      *a2 = xmmword_2608523D0;
      a2[1] = xmmword_2608523D0;
      goto LABEL_9;
    }

    if (result == 3)
    {
      *a2 = xmmword_2608523B0;
      a2[1] = xmmword_2608523B0;
      v5 = xmmword_2608523C0;
      goto LABEL_9;
    }

LABEL_7:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  if (result != 1)
  {
    goto LABEL_7;
  }

  *a2 = xmmword_2608523D0;
  a2[1] = xmmword_2608523D0;
  v5 = xmmword_2608523E0;
LABEL_9:
  a2[2] = v5;
  return result;
}

void OZLight::~OZLight(OZLight *this)
{
  OZLight::~OZLight(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_287296C30;
  *(this + 2) = &unk_287297208;
  *(this + 6) = &unk_287297460;
  v2 = (this + 6528);
  *(this + 816) = &unk_2872974B8;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 1334);
  OZChannel::~OZChannel((this + 10520));
  OZChannel::~OZChannel((this + 10368));
  OZFolderLightShadow::~OZFolderLightShadow((this + 8776));
  OZChannel::~OZChannel((this + 8624));
  OZChannel::~OZChannel((this + 8472));
  OZChannelFolder::~OZChannelFolder((this + 8344));
  OZChannelPercent::~OZChannelPercent((this + 0x2000));
  OZChannel::~OZChannel((this + 8040));
  OZChannel::~OZChannel((this + 7888));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 6880));
  OZChannelEnum::~OZChannelEnum((this + 6624));
  OZChannelBase::setRangeName(v2, v3);

  OZTransformNode::~OZTransformNode(this);
}

void non-virtual thunk toOZLight::~OZLight(OZLight *this)
{
  OZLight::~OZLight((this - 16));
}

{
  OZLight::~OZLight((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZLight::~OZLight((this - 48));
}

{
  OZLight::~OZLight((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZLight::~OZLight((this - 6528));
}

{
  OZLight::~OZLight((this - 6528));

  JUMPOUT(0x2666E9F00);
}

void *OUTLINED_FUNCTION_0_15(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return __cxa_begin_catch(v10);
}

void OZLight::operator=(void *a1)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  OUTLINED_FUNCTION_0_15(exception_ptr, v2, v3, v4, v5, v6, v7, v8, v9, v10.__vftable);
  std::exception::~exception(&v10);
  __cxa_end_catch();
}

void OZSimulationBehavior::OZSimulationBehavior(OZSimulationBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  *v4 = &unk_2872975C8;
  v4[2] = &unk_2872978A8;
  v4[6] = &unk_287297B00;
}

void OZSimulationBehavior::OZSimulationBehavior(OZSimulationBehavior *this, OZSimulationBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  *v3 = &unk_2872975C8;
  v3[2] = &unk_2872978A8;
  v3[6] = &unk_287297B00;
}

void non-virtual thunk toOZSimulationBehavior::~OZSimulationBehavior(OZSimulationBehavior *this)
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

void OZSimulationBehavior::~OZSimulationBehavior(OZSimulationBehavior *this)
{
  OZBehavior::~OZBehavior(this);

  JUMPOUT(0x2666E9F00);
}

unint64_t OZSimulationBehavior::canAddToSceneNode(OZSimulationBehavior *this, OZSceneNode *a2)
{
  if (OZBehavior::canAddToSceneNode(this, a2))
  {
    return 1;
  }

  v4 = *(a2 + 1);
  v5 = xmmword_260850EE0;
  return OZFactory::isKindOfClass(v4, &v5);
}

BOOL OZSimulationBehavior::canBake(OZSimulationBehavior *this)
{
  result = 1;
  if (((*(*this + 656))(this) & 1) == 0)
  {
    if ((*(*this + 328))(this))
    {
      v2 = (*(*this + 328))(this);
      if ((*(*v2 + 1008))(v2))
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 OZSimulationBehavior::accumForces(OZSimulationBehavior *this, OZSimStateArray *a2, OZTransformNode *a3)
{
  v5 = *a2;
  if (*a2 != *(a2 + 1))
  {
    v45 = v3;
    v46 = v4;
    v9 = (v5 + 32);
    do
    {
      v10 = v9 - 2;
      v28 = 0x3FF0000000000000;
      v30 = 0;
      v29 = 0uLL;
      v11 = *(v9 - 2);
      v27 = *(v9 - 2);
      v26 = v11;
      if (v9 - 2 != &v26)
      {
        v28 = *(v9 - 1);
        v12 = *v9;
        v30 = *(v9 + 2);
        v29 = v12;
      }

      v13 = *(v9 + 24);
      v32 = *(v9 + 5);
      v31 = v13;
      v14 = v9[3];
      v34 = *(v9 + 8);
      v33 = v14;
      v15 = *(v9 + 72);
      v36 = *(v9 + 11);
      v35 = v15;
      v16 = v9[6];
      v38 = *(v9 + 14);
      v37 = v16;
      v17 = *(v9 + 120);
      v40 = *(v9 + 17);
      v39 = v17;
      v41 = *(a2 + 24);
      v42 = *(a2 + 5);
      v18 = *(v9 + 20);
      v43 = v9[9];
      v44 = v18;
      (*(*this + 624))(this, &v26, a3);
      v19 = v26;
      *(v9 - 2) = v27;
      *v10 = v19;
      if (v10 != &v26)
      {
        *(v9 - 1) = v28;
        v20 = v29;
        *(v9 + 2) = v30;
        *v9 = v20;
      }

      v21 = v31;
      *(v9 + 5) = v32;
      *(v9 + 24) = v21;
      v22 = v33;
      *(v9 + 8) = v34;
      v9[3] = v22;
      v23 = v35;
      *(v9 + 11) = v36;
      *(v9 + 72) = v23;
      v24 = v37;
      *(v9 + 14) = v38;
      v9[6] = v24;
      result = v39;
      *(v9 + 17) = v40;
      *(v9 + 120) = result;
      v9 = (v9 + 248);
    }

    while ((v10 + 248) != *(a2 + 1));
  }

  return result;
}

uint64_t OZSimulationBehavior::accumInitialValues(uint64_t this, OZSimStateArray *a2, int a3, OZTransformNode *a4)
{
  v6 = *(a2 + 1);
  v7 = v6 == *a2 || a3 < 1;
  if (!v7)
  {
    v48 = v4;
    v49 = v5;
    v11 = this;
    v12 = (v6 - 248);
    v13 = 1;
    do
    {
      v31 = 0x3FF0000000000000;
      v33 = 0;
      v32 = 0uLL;
      v14 = *v12;
      v30 = *(v12 + 2);
      v29 = v14;
      if ((v12 + 24) != &v31)
      {
        v31 = *(v12 + 3);
        v15 = v12[2];
        v33 = *(v12 + 6);
        v32 = v15;
      }

      v16 = *(v12 + 56);
      v35 = *(v12 + 9);
      v34 = v16;
      v17 = v12[5];
      v37 = *(v12 + 12);
      v36 = v17;
      v18 = *(v12 + 104);
      v39 = *(v12 + 15);
      v38 = v18;
      v19 = v12[8];
      v41 = *(v12 + 18);
      v40 = v19;
      v20 = *(v12 + 152);
      v43 = *(v12 + 21);
      v42 = v20;
      v44 = *(a2 + 24);
      v45 = *(a2 + 5);
      v21 = *(v12 + 24);
      v46 = v12[11];
      v47 = v21;
      this = (*(*v11 + 640))(v11, &v29, a4);
      v22 = v29;
      *(v12 + 2) = v30;
      *v12 = v22;
      if ((v12 + 24) != &v31)
      {
        *(v12 + 3) = v31;
        v23 = v32;
        *(v12 + 6) = v33;
        v12[2] = v23;
      }

      v24 = v34;
      *(v12 + 9) = v35;
      *(v12 + 56) = v24;
      v25 = v36;
      *(v12 + 12) = v37;
      v12[5] = v25;
      v26 = v38;
      *(v12 + 15) = v39;
      *(v12 + 104) = v26;
      v27 = v40;
      *(v12 + 18) = v41;
      v12[8] = v27;
      v28 = v42;
      *(v12 + 21) = v43;
      *(v12 + 152) = v28;
      if (v12 == *a2)
      {
        break;
      }

      v12 = (v12 - 248);
      v7 = v13++ < a3;
    }

    while (v7);
  }

  return this;
}

void *OZSimulationBehavior::getTransformNode(OZSimulationBehavior *this)
{
  result = (*(*this + 320))(this);
  if (result)
  {
  }

  return result;
}

uint64_t OZChannelMaterialMapScale_Factory::getInstance(OZChannelMaterialMapScale_Factory *this)
{
  if (atomic_load_explicit(&OZChannelMaterialMapScale_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelMaterialMapScale_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelMaterialMapScale_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelMaterialMapScale_Factory::_instance;
}

void OZChannelMaterialMapScale::OZChannelMaterialMapScale(OZChannelMaterialMapScale *this, double a2, double a3, const PCString *a4, OZChannelFolder *a5, unsigned int a6, int a7)
{
  Instance = OZChannelMaterialMapScale_Factory::getInstance(this);
  OZChannelScale::OZChannelScale(this, a2, a3, Instance, a4, a5, a6, a7, 2, 0, 0);
  *this = &unk_287297B70;
  *(this + 2) = &unk_287297EC8;
  PCURL::PCURL(&v15, @"Material Map Scale Scale With Font Size");
  OZChannelBool::OZChannelBool((this + 440), 1, &v15, this, 0xAu, 0, 0, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Material Map Scale Basis Font Size");
  OZChannelDouble::OZChannelDouble((this + 592), 72.0, &v15, this, 0xBu, 2, 0, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Material Map Scale Basis Scale");
  OZChannelScale::OZChannelScale((this + 744), 1.0, 1.0, &v15, this, 0xCu, 2u, 2u, 0, 0);
  PCString::~PCString(&v15);
}

void sub_26018984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 592));
  OZChannelBool::~OZChannelBool((v10 + 440));
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelMaterialMapScale::OZChannelMaterialMapScale(OZChannelMaterialMapScale *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelScale::OZChannelScale(this, a2, a3, a4);
  *v5 = &unk_287297B70;
  v5[2] = &unk_287297EC8;
  PCURL::PCURL(&v6, @"Material Map Scale Scale With Font Size");
  OZChannelBool::OZChannelBool((this + 440), 1, &v6, this, 0xAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Material Map Scale Basis Font Size");
  OZChannelDouble::OZChannelDouble((this + 592), 72.0, &v6, this, 0xBu, 2, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Material Map Scale Basis Scale");
  OZChannelScale::OZChannelScale((this + 744), 1.0, 1.0, &v6, this, 0xCu, 2u, 2u, 0, 0);
  PCString::~PCString(&v6);
}

void sub_260189A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 592));
  OZChannelBool::~OZChannelBool((v10 + 440));
  OZChannel2D::~OZChannel2D(v10);
  _Unwind_Resume(a1);
}

void OZChannelMaterialMapScale::OZChannelMaterialMapScale(OZChannelMaterialMapScale *this, const OZChannelMaterialMapScale *a2, OZChannelFolder *a3)
{
  OZChannelScale::OZChannelScale(this, a2, a3);
  *v5 = &unk_287297B70;
  *(v5 + 16) = &unk_287297EC8;
  OZChannelBool::OZChannelBool((v5 + 440), (a2 + 440), this);
  OZChannel::OZChannel((this + 592), (a2 + 592), this);
  *(this + 74) = &unk_287245C60;
  *(this + 76) = &unk_287245FC0;
  OZChannelScale::OZChannelScale((this + 744), (a2 + 744), this);
}

void sub_260189B50(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 440));
  OZChannel2D::~OZChannel2D(v1);
  _Unwind_Resume(a1);
}

void OZChannelMaterialMapScale::copy(OZChannelMaterialMapScale *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZChannel2D::copy(this, a2, a3);
  if (v4)
  {
  }

  OZChannel::copy((this + 440), (v4 + 440), a3);
  OZChannel::copy((this + 592), (v4 + 592), a3);

  OZChannel2D::copy((this + 744), (v4 + 744), a3);
}

uint64_t OZChannelMaterialMapScale::setBasisScale(OZChannelMaterialMapScale *this, double a2, double a3)
{
  OZChannelBase::reset((this + 744), 0);
  v6 = MEMORY[0x277CC08F0];

  return OZChannel2D::setValue((this + 744), v6, a2, a3, 0);
}

void non-virtual thunk toOZChannelMaterialMapScale::~OZChannelMaterialMapScale(OZChannelMaterialMapScale *this)
{
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((this - 16));
}

{
  OZChannelMaterialMapScale::~OZChannelMaterialMapScale((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChannelMaterialMapScale_Factory::OZChannelMaterialMapScale_Factory(OZChannelMaterialMapScale_Factory *this)
{
  v3 = xmmword_260848460;
  v4 = xmmword_260852420;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287297F38;
  *(this + 16) = &unk_287298008;
}

void OZRenderManager::~OZRenderManager(OZRenderManager *this, const PCString *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = OZChannelBase::setRangeName(v3, a2);
    MEMORY[0x2666E9F00](v4, 0xC400A2AC0F1);
  }

  *(this + 1) = 0;
}

void sub_26018A454(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFootage::openByReplacingSubPath(PCString *a1, PCString *this, PCString *a3, uint64_t a4)
{
  v8 = PCString::find(this, a3);
  if (v8 != -1)
  {
    v9 = v8;
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v11 = CFBundleCopyBundleURL(MainBundle);
      v12 = CFURLCopyPath(v11);
      v13 = CFURLCreateStringByReplacingPercentEscapes(0, v12, &stru_2872E16E0);
      v14 = PCString::size(a3);
      PCURL::PCURL(&v16, v13);
      PCString::replace(this, 0, v14 + v9, &v16);
      PCString::~PCString(&v16);
      PCURL::PCURL(&v16, this, 0);
      a4 = OZFootage::openURL(a1, &v16, 0, 0);
      CFRelease(v11);
      CFRelease(v12);
      CFRelease(v13);
      PCURL::~PCURL(&v16);
    }
  }

  return a4;
}

uint64_t OZFootage::openURL(PCString *this, const __CFURL **a2, int a3, int a4)
{
  Instance = PMMediaManager::getInstance(this);
  v13 = 0;
  v9 = PMMediaManager::open(Instance, a2, &v13, 0);
  if (!v9)
  {
    OZFootage::setClip(this, v13, a3, a4, 1);
  }

  OZSceneNodeFile::setIsFileMissing(this, v9 != 0);
  if (v13)
  {
    PMClip::getAsFileSystemString(v13, &v12);
  }

  else
  {
    PCURL::getAsFileSystemString(a2, &v12);
  }

  PCString::set(this + 196, &v12);
  v10 = this + 1024;
  PCString::~PCString(&v12);
  if (v9 == 2)
  {
    *(&v10[15].var0 + 5) = 257;
  }

  else if (v9 == 1)
  {
    BYTE5(v10[15].var0) = 1;
  }

  return v9;
}

void OZFootage::getCacheHashKey(OZFootage *this, PMClip *a2, const CMTime *a3, const CMTime *a4, const PMFrameRequest *a5, const OZRenderParams *a6, const PMLayerDescription *a7)
{
  v7 = MEMORY[0x28223BE20](this);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v7;
  v20 = v19;
  v45[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v45);
  if (v18[1009] && (((*v18)[179].var0)(v18) & 1) == 0)
  {
    PMClip::getAsFileSystemString(v18[1009], &v37);
    PCHashWriteStream::writeValue(v45, &v37);
    PCString::~PCString(&v37);
  }

  __src = *v15;
  memset(&v42, 0, sizeof(v42));
  OZFootage::getFrameDuration(v18, &v42);
  if (*(v13 + 108))
  {
    operator*(&__src, 2, &v39);
    v37 = v39;
    v44 = v42;
    PC_CMTimeFloorToSampleDuration(&v37, &v44, &v40);
    operator*(&v40, &v41, 0.5);
  }

  else
  {
    v37 = __src;
    v44 = v42;
    PC_CMTimeFloorToSampleDuration(&v37, &v44, &v41);
  }

  __src = v41;
  PCHashWriteStream::writeValue(v45, *(v18 + 384));
  PCHashWriteStream::writeValue(v45, &__src);
  PCHashWriteStream::writeValue(v45, *(v13 + 92));
  PCHashWriteStream::writeValue(v45, *(v13 + 96));
  AlphaType = PMFrameRequest::getAlphaType(v13);
  PCHashWriteStream::writeValue(v45, AlphaType);
  AlphaInvert = PMFrameRequest::getAlphaInvert(v13);
  PCHashWriteStream::writeValue(v45, AlphaInvert);
  PCHashWriteStream::writeValue(v45, *(v13 + 104));
  PCHashWriteStream::writeValue(v45, *(v13 + 108));
  PCHashWriteStream::writeValue(v45, *(v13 + 136));
  if ((((*v18)[179].var0)(v18) & 1) == 0)
  {
    v23 = v18[1009];
    if (v23)
    {
      if (LOBYTE(v23[51].var0) == 1)
      {
        v24 = 0;
        v25 = v13 + 16;
        do
        {
          for (i = 0; i != 24; i += 8)
          {
            PCHashWriteStream::writeValue(v45, *(v25 + i));
          }

          ++v24;
          v25 += 24;
        }

        while (v24 != 3);
      }
    }
  }

  OZRenderParams::getResolution(v11, &v37);
  v27 = *&v37.timescale;
  PCHashWriteStream::writeValue(v45, *&v37.value);
  PCHashWriteStream::writeValue(v45, v27);
  if ((((*v18)[179].var0)(v18) & 1) == 0)
  {
    v28 = v18[1009];
    if (v28)
    {
      if (LOBYTE(v28[51].var0) == 1)
      {
        PCHashWriteStream::writeValue(v45, *v13);
        PCHashWriteStream::writeValue(v45, *(v13 + 4));
        PCHashWriteStream::writeValue(v45, *(v13 + 8));
        PCHashWriteStream::writeValue(v45, *(v13 + 12));
      }
    }
  }

  v38 = *(v18 + 29);
  v44 = *(v18 + 26);
  PCHashWriteStream::writeValue(v45, &v44);
  v44 = v38;
  PCHashWriteStream::writeValue(v45, &v44);
  v29 = ((*v18)[179].var0)(v18);
  PCHashWriteStream::writeValue(v45, v29);
  OZChannel::getValueAsDouble((v18 + 765), &__src, 0.0);
  PCHashWriteStream::writeValue(v45, v30);
  OZChannel::getValueAsDouble((v18 + 784), &__src, 0.0);
  PCHashWriteStream::writeValue(v45, v31);
  OZChannel::getValueAsDouble((v18 + 822), &__src, 0.0);
  PCHashWriteStream::writeValue(v45, v32);
  OZChannel::getValueAsDouble((v18 + 803), &__src, 0.0);
  PCHashWriteStream::writeValue(v45, v33);
  v34 = v18[1009];
  v35 = LODWORD(v34[36].var0) <= 0x1000 && HIDWORD(v34[36].var0) <= 0x1000;
  if (*(v17 + 451) == 1)
  {
    v36 = PCPixelFormat::isFloat(*(v9 + 20)) & v35;
  }

  else
  {
    v36 = 0;
  }

  PCHashWriteStream::writeValue(v45, v36);
  PCHashWriteStream::close(v45);
  *v20 = *PCHashWriteStream::getHash(v45)->i8;
  PCHashWriteStream::~PCHashWriteStream(v45);
}

void sub_26018ABA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  PCString::~PCString(&a9);
  PCHashWriteStream::~PCHashWriteStream(&a34);
  _Unwind_Resume(a1);
}

void OZFootage::getFrameDuration(OZFootage *this@<X0>, CMTime *a2@<X8>)
{
  PCSharedMutex::lock_shared((this + 8080));
  if (((*(*this + 1432))(this) & 1) != 0 || (v4 = *(this + 1009)) == 0)
  {
    CMTimeMake(a2, 1, 30);
  }

  else
  {
    v5 = *(v4 + 320);
    a2->epoch = *(v4 + 336);
    *&a2->value = v5;
  }

  PCSharedMutex::unlock_shared((this + 8080));
}

uint64_t OZFootage::isResolutionIndependent(OZFootage *this)
{
  if ((*(*this + 1432))(this))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = *(this + 1009);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 408);
    }
  }

  return v2 & 1;
}

void OZFootage::OZFootage(OZFootage *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNodeFile::OZSceneNodeFile(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 1576));
  *this = &unk_287298060;
  *(this + 2) = &unk_2872986F0;
  *(this + 6) = &unk_287298948;
  *(this + 197) = &unk_2872989A0;
  PCURL::PCURL(v28, @"Channel Alpha Type");
  OZChannelFolder::OZChannelFolder((this + 1600), v28, (this + 448), 0x64u, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Alpha Type Enum");
  PCURL::PCURL(&v30, @"Channel Alpha Type");
  OZChannelEnum::OZChannelEnum((this + 1728), v28, &v30, (this + 1600), 0x65u, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Alpha Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 1984), v28, (this + 1600), 0x66u, 0, 5u);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Invert Alpha");
  OZChannelBool::OZChannelBool((this + 2992), v28, (this + 448), 0x67u, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Pixel Aspect Ratio");
  OZChannelAspectRatioFootage::OZChannelAspectRatioFootage((this + 3144), 1.0, v28, (this + 448), 0x68u, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Field Dominance Enum");
  PCURL::PCURL(&v30, @"Channel Field Dominance");
  OZChannelEnum::OZChannelEnum((this + 3296), v28, &v30, (this + 448), 0x69u, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel ThreeTwo Pulldown Enum");
  PCURL::PCURL(&v30, @"Channel ThreeTwo Pulldown");
  OZChannelEnum::OZChannelEnum((this + 3552), v28, &v30, (this + 448), 0x6Au, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Frame Rate");
  OZChannelDouble::OZChannelDouble((this + 3808), v28, (this + 448), 0x6Bu, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel End Condition Enum");
  PCURL::PCURL(&v30, @"Channel End Condition Label");
  OZChannelEnum::OZChannelEnum((this + 3960), v28, &v30, (this + 448), 0x6Eu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Reverse");
  OZChannelBool::OZChannelBool((this + 4216), v28, (this + 448), 0x6Fu, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel PDF Fixed Resolution");
  OZChannelBool::OZChannelBool((this + 4368), 1, v28, (this + 448), 0x71u, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel PDF Width");
  Instance = OZFootage::OZFootage_fixedWidthInfo::getInstance(v6);
  OZChannelUint32::OZChannelUint32((this + 4520), v28, (this + 448), 0x72u, 0, 0, Instance);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel PDF Height");
  v9 = OZFootage::OZFootage_fixedHeightInfo::getInstance(v8);
  OZChannelUint32::OZChannelUint32((this + 4672), v28, (this + 448), 0x73u, 0, 0, v9);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel PDF Enable BG Color");
  OZChannelBool::OZChannelBool((this + 4824), v28, (this + 448), 0x74u, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel PDF BG Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 4976), 1.0, 1.0, 1.0, v28, (this + 448), 0x75u, 0, 5u);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Crop");
  OZChannelCrop::OZChannelCrop((this + 5984), v28, (this + 448), 0x70u, 0, 4u, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel OpenEXR");
  OZChannelFolder::OZChannelFolder((this + 6728), v28, (this + 448), 0x77u, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel EXR Exposure");
  v11 = OZFootage::OZFootage_exposureInfo::getInstance(v10);
  OZChannelDouble::OZChannelDouble((this + 6856), v28, (this + 6728), 0x78u, 0, 0, v11);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel EXR Defog");
  v13 = OZFootage::OZFootage_defogInfo::getInstance(v12);
  OZChannelDouble::OZChannelDouble((this + 7008), v28, (this + 6728), 0x79u, 0, 0, v13);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel EXR KneeLow");
  v15 = OZFootage::OZFootage_kneeLowInfo::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 7160), v28, (this + 6728), 0x7Au, 0, 0, v15);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel EXR KneeHigh");
  v17 = OZFootage::OZFootage_kneeHighInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 7312), 5.0, v28, (this + 6728), 0x7Bu, 0, 0, v17);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel EXR ToneMap");
  OZChannelDouble::OZChannelDouble((this + 7464), 0.0, v28, (this + 448), 0x7Du, 0, 0, 0);
  PCString::~PCString(v28);
  PCURL::PCURL(v28, @"Channel Gamma");
  OZChannelGammaFootage::OZChannelGammaFootage((this + 7616), v28, (this + 448), 0x7Cu, 0, 0, 0);
  PCString::~PCString(v28);
  PCString::PCString(v28, "Missing Is Still");
  OZChannelBool::OZChannelBool((this + 7768), v28, (this + 448), 0x80u, 0, 0, 0);
  PCString::~PCString(v28);
  PCString::PCString(v28, "Did Check Missing API");
  OZChannelBool::OZChannelBool((this + 7920), 0, v28, (this + 448), 0x81u, 2u, 0, 0);
  PCString::~PCString(v28);
  *(this + 1009) = 0;
  PCSharedMutex::PCSharedMutex((this + 8080));
  PCMutex::PCMutex((this + 8184));
  *(this + 8280) = 0;
  PCSharedCount::PCSharedCount(this + 1036);
  *(this + 1037) = 0x10000000100;
  *(this + 8328) = 0u;
  *(this + 8360) = 0;
  *(this + 519) = 0u;
  *(this + 8320) = 0;
  v28[0].var0 = 0;
  PGMetalTexture::PGMetalTexture((this + 8368), v28);
  if (v28[0].var0)
  {
    (*(v28[0].var0->isa + 3))(v28[0].var0);
  }

  *(this + 1056) = 0xBFF0000000000000;
  *(this + 8456) = 0u;
  *(this + 531) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  v27 = _Q0;
  *(this + 532) = _Q0;
  OZChannelBase::resetFlag((this + 3552), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 3552));
  OZChannelBase::resetFlag((this + 5984), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 5984));
  OZChannelBase::setFlag((this + 3960), 10, 0);
  OZChannelBase::saveStateAsDefault((this + 3960));
  OZChannelBase::setFlag((this + 4216), 10, 0);
  OZChannelBase::saveStateAsDefault((this + 4216));
  OZChannelBase::resetFlag(this + 39, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 39);
  OZChannelBase::resetFlag((this + 4520), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 4520));
  OZChannelBase::resetFlag((this + 4672), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 4672));
  OZChannelBase::setFlag(this + 39, 2, 0);
  OZChannelBase::saveStateAsDefault(this + 39);
  OZChannel::setMax((this + 4520), 8192.0);
  OZChannel::setMax((this + 4672), 8192.0);
  OZChannel::setKeyframable((this + 4520), 0);
  OZChannel::setKeyframable((this + 4672), 0);
  OZChannelBase::resetFlag((this + 4824), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 4824));
  OZChannelBase::resetFlag((this + 4976), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 4976));
  OZChannelBase::enable((this + 4976), 0, 0);
  (*(*(this + 639) + 104))(this + 5112, 0, 0);
  (*(*(this + 658) + 104))(this + 5264, 0, 0);
  (*(*(this + 677) + 104))(this + 5416, 0, 0);
  OZChannelFolder::setKeyframable((this + 4976), 0, 0);
  OZChannelFolder::setKeyframable((this + 1984), 0, 0);
  OZChannel::setKeyframable((this + 3144), 0);
  OZChannelBase::setFlag((this + 3144), 0x100000000, 0);
  OZChannelBase::resetFlag((this + 1728), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1728));
  OZChannelBase::resetFlag((this + 1984), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1984));
  OZChannelBase::resetFlag((this + 2992), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2992));
  OZChannelBase::resetFlag((this + 3144), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 3144));
  OZChannelBase::resetFlag((this + 3296), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 3296));
  OZChannelBase::resetFlag(this + 34, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 34);
  OZChannel::setKeyframable((this + 7616), 0);
  OZChannelBase::resetFlag(this + 68, 16, 0);
  v23 = OZChannelBase::saveStateAsDefault(this + 68);
  WorkingGamma = PCInfo::getWorkingGamma(v23);
  v25 = OZChannel::setDefaultValue((this + 7616), WorkingGamma);
  v26 = PCInfo::getWorkingGamma(v25);
  OZChannel::setValue((this + 7616), MEMORY[0x277CC08F0], v26, 0);
  (*(*this + 1648))(v28, this);
  *(this + 516) = *&v28[0].var0;
  *(this + 1034) = v29;
  OZChannelBase::setFlag((this + 6856), 134283274, 0);
  OZChannelBase::setFlag((this + 7008), 134283274, 0);
  OZChannelBase::setFlag((this + 7160), 134283274, 0);
  OZChannelBase::setFlag((this + 7312), 134283274, 0);
  OZChannelBase::setFlag((this + 6728), 134283274, 0);
  OZChannel::setKeyframable((this + 7464), 0);
  OZChannelBase::setFlag((this + 7464), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 7464));
  *(this + 2120) = 0;
  *(this + 8484) = 0;
  *(this + 1061) = 0;
  *(this + 2118) = 0;
  *(this + 8475) = 0;
  *(this + 532) = v27;
}

void sub_26018BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannelBase *a10, uint64_t a11, uint64_t a12, PCString a13, uint64_t a14, uint64_t a15, PCString a16)
{
  v26 = *(v16 + 8464);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  PGMetalTexture::~PGMetalTexture((v16 + 8368));
  v27 = *(v16 + 8336);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  PCString::~PCString((v16 + 8288));
  PCMutex::~PCMutex((v16 + 8184));
  PCSharedMutex::~PCSharedMutex((v16 + 8080));
  OZChannelBool::~OZChannelBool((v16 + 7920));
  OZChannelBool::~OZChannelBool((v16 + 7768));
  OZChannel::~OZChannel((v16 + v22));
  OZChannel::~OZChannel((v16 + v17));
  OZChannel::~OZChannel((v16 + 7312));
  OZChannel::~OZChannel((v16 + 7160));
  OZChannel::~OZChannel((v16 + 7008));
  OZChannel::~OZChannel((v16 + 6856));
  OZChannelFolder::~OZChannelFolder((v16 + v18));
  OZChannelCrop::~OZChannelCrop((v16 + v24));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v16 + v23));
  OZChannelBool::~OZChannelBool((v16 + 4824));
  OZChannel::~OZChannel((v16 + v21));
  OZChannel::~OZChannel((v16 + v20));
  OZChannelBool::~OZChannelBool((v16 + v19));
  OZChannelBool::~OZChannelBool((v16 + 4216));
  OZChannelEnum::~OZChannelEnum((v16 + 3960));
  OZChannel::~OZChannel((v16 + 3808));
  OZChannelEnum::~OZChannelEnum((v16 + 3552));
  OZChannelEnum::~OZChannelEnum((v16 + 3296));
  OZChannel::~OZChannel((v16 + 3144));
  OZChannelBool::~OZChannelBool((v16 + 2992));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v16 + 1984));
  OZChannelEnum::~OZChannelEnum((v16 + 1728));
  OZChannelFolder::~OZChannelFolder((v16 + 1600));
  OZChannelBase::setRangeName(a10, v28);
  OZSceneNodeFile::~OZSceneNodeFile(v16);
  _Unwind_Resume(a1);
}

void OZFootage::OZFootage(OZFootage *this, OZFootage *a2, char a3)
{
  OZSceneNodeFile::OZSceneNodeFile(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 1576));
  *this = &unk_287298060;
  *(this + 2) = &unk_2872986F0;
  *(this + 6) = &unk_287298948;
  *(this + 197) = &unk_2872989A0;
  OZChannelFolder::OZChannelFolder((this + 1600), (a2 + 1600), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 1728), (a2 + 1728), (this + 1600));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 1984), (a2 + 1984), (this + 1600));
  OZChannelBool::OZChannelBool((this + 2992), (a2 + 2992), (this + 448));
  OZChannel::OZChannel((this + 3144), (a2 + 3144), (this + 448));
  *(this + 393) = &unk_287247340;
  *(this + 395) = &unk_2872476A0;
  OZChannelEnum::OZChannelEnum((this + 3296), (a2 + 3296), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 3552), (a2 + 3552), (this + 448));
  OZChannel::OZChannel((this + 3808), a2 + 34, (this + 448));
  *(this + 476) = &unk_287245C60;
  *(this + 478) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 3960), (a2 + 3960), (this + 448));
  OZChannelBool::OZChannelBool((this + 4216), (a2 + 4216), (this + 448));
  OZChannelBool::OZChannelBool((this + 4368), a2 + 39, (this + 448));
  OZChannel::OZChannel((this + 4520), (a2 + 4520), (this + 448));
  *(this + 565) = &unk_287246400;
  *(this + 567) = &unk_287246760;
  OZChannel::OZChannel((this + 4672), (a2 + 4672), (this + 448));
  *(this + 584) = &unk_287246400;
  *(this + 586) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 4824), (a2 + 4824), (this + 448));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 4976), (a2 + 4976), (this + 448));
  OZChannelCrop::OZChannelCrop((this + 5984), (a2 + 5984), (this + 448));
  OZChannelFolder::OZChannelFolder((this + 6728), (a2 + 6728), (this + 448));
  OZChannel::OZChannel((this + 6856), (a2 + 6856), (this + 6728));
  *(this + 857) = &unk_287245C60;
  *(this + 859) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7008), (a2 + 7008), (this + 6728));
  *(this + 876) = &unk_287245C60;
  *(this + 878) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7160), (a2 + 7160), (this + 6728));
  *(this + 895) = &unk_287245C60;
  *(this + 897) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7312), (a2 + 7312), (this + 6728));
  *(this + 914) = &unk_287245C60;
  *(this + 916) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7464), (a2 + 7464), (this + 448));
  *(this + 933) = &unk_287245C60;
  *(this + 935) = &unk_287245FC0;
  OZChannel::OZChannel((this + 7616), a2 + 68, (this + 448));
  *(this + 952) = &unk_287247710;
  *(this + 954) = &unk_287247A70;
  OZChannelBool::OZChannelBool((this + 7768), (a2 + 7768), (this + 448));
  OZChannelBool::OZChannelBool((this + 7920), (a2 + 7920), (this + 448));
  *(this + 1009) = 0;
  PCSharedMutex::PCSharedMutex((this + 8080));
  PCMutex::PCMutex((this + 8184));
  v6 = *(a2 + 516);
  *(this + 1034) = *(a2 + 1034);
  *(this + 516) = v6;
  *(this + 8280) = *(a2 + 8280);
  PCSharedCount::PCSharedCount(this + 1036);
  *(this + 1037) = *(a2 + 1037);
  *(this + 1038) = *(a2 + 1038);
  *(this + 2078) = *(a2 + 2078);
  *(this + 2079) = *(a2 + 2079);
  *(this + 8320) = *(a2 + 8320);
  *(this + 1041) = *(a2 + 1041);
  v7 = *(a2 + 1042);
  *(this + 1042) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 8344) = 0u;
  *(this + 8360) = *(a2 + 8360);
  PCImage::PCImage(this + 8368, a2 + 8368);
  *(this + 1046) = &unk_2872788B0;
  v8 = *(a2 + 1054);
  *(this + 1054) = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  *(this + 1055) = *(a2 + 1055);
  *(this + 1056) = 0xBFF0000000000000;
  *(this + 8456) = 0u;
  *(this + 531) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 532) = _Q0;
  if (*(a2 + 1009))
  {
    operator new();
  }

  *(this + 2120) = 0;
  *(this + 8484) = 0;
  *(this + 1061) = 0;
  *(this + 2118) = 0;
  *(this + 8475) = 0;
  *(this + 532) = _Q0;
}

void sub_26018C594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannelBase *a16)
{
  MEMORY[0x2666E9F00](v21, 0x10F0C40713A2EEALL);
  v25 = *(v16 + 8464);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  PGMetalTexture::~PGMetalTexture(v20);
  v26 = *(v16 + 8336);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  PCString::~PCString((v16 + 8288));
  PCMutex::~PCMutex((v16 + 8184));
  PCSharedMutex::~PCSharedMutex((v16 + 8080));
  OZChannelBool::~OZChannelBool((v16 + 7920));
  OZChannelBool::~OZChannelBool((v16 + 7768));
  OZChannel::~OZChannel(v19);
  OZChannel::~OZChannel(v18);
  OZChannel::~OZChannel(v17);
  OZChannel::~OZChannel(v23);
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(a11);
  OZChannelFolder::~OZChannelFolder((v16 + v22));
  OZChannelCrop::~OZChannelCrop((v16 + 5984));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v16 + 4976));
  OZChannelBool::~OZChannelBool((v16 + 4824));
  OZChannel::~OZChannel(a12);
  OZChannel::~OZChannel(a13);
  OZChannelBool::~OZChannelBool((v16 + 4368));
  OZChannelBool::~OZChannelBool((v16 + 4216));
  OZChannelEnum::~OZChannelEnum((v16 + 3960));
  OZChannel::~OZChannel(a14);
  OZChannelEnum::~OZChannelEnum((v16 + 3552));
  OZChannelEnum::~OZChannelEnum((v16 + 3296));
  OZChannel::~OZChannel(a15);
  OZChannelBool::~OZChannelBool((v16 + 2992));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v16 + 1984));
  OZChannelEnum::~OZChannelEnum((v16 + 1728));
  OZChannelFolder::~OZChannelFolder((v16 + 1600));
  OZChannelBase::setRangeName(a16, v27);
  OZSceneNodeFile::~OZSceneNodeFile(v16);
  _Unwind_Resume(a1);
}

void OZFootage::~OZFootage(OZFootage *this)
{
  *this = &unk_287298060;
  *(this + 2) = &unk_2872986F0;
  *(this + 6) = &unk_287298948;
  v2 = (this + 1576);
  *(this + 197) = &unk_2872989A0;
  v3 = *(this + 1009);
  if (v3)
  {
    PMClip::~PMClip(v3);
    MEMORY[0x2666E9F00]();
  }

  *(this + 1009) = 0;
  v4 = *(this + 1058);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(this + 1046) = &unk_2872788B0;
  v5 = *(this + 1054);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  PCImage::~PCImage(this + 1046);
  v6 = *(this + 1042);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PCString::~PCString(this + 1036);
  PCMutex::~PCMutex((this + 8184));
  PCSharedMutex::~PCSharedMutex((this + 8080));
  OZChannelBool::~OZChannelBool((this + 7920));
  OZChannelBool::~OZChannelBool((this + 7768));
  OZChannel::~OZChannel((this + 7616));
  OZChannel::~OZChannel((this + 7464));
  OZChannel::~OZChannel((this + 7312));
  OZChannel::~OZChannel((this + 7160));
  OZChannel::~OZChannel((this + 7008));
  OZChannel::~OZChannel((this + 6856));
  OZChannelFolder::~OZChannelFolder((this + 6728));
  OZChannelCrop::~OZChannelCrop((this + 5984));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 4976));
  OZChannelBool::~OZChannelBool((this + 4824));
  OZChannel::~OZChannel((this + 4672));
  OZChannel::~OZChannel((this + 4520));
  OZChannelBool::~OZChannelBool((this + 4368));
  OZChannelBool::~OZChannelBool((this + 4216));
  OZChannelEnum::~OZChannelEnum((this + 3960));
  OZChannel::~OZChannel((this + 3808));
  OZChannelEnum::~OZChannelEnum((this + 3552));
  OZChannelEnum::~OZChannelEnum((this + 3296));
  OZChannel::~OZChannel((this + 3144));
  OZChannelBool::~OZChannelBool((this + 2992));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 1984));
  OZChannelEnum::~OZChannelEnum((this + 1728));
  OZChannelFolder::~OZChannelFolder((this + 1600));
  OZChannelBase::setRangeName(v2, v7);

  OZSceneNodeFile::~OZSceneNodeFile(this);
}

{
  OZFootage::~OZFootage(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFootage::~OZFootage(OZFootage *this)
{
  OZFootage::~OZFootage((this - 16));
}

{
  OZFootage::~OZFootage((this - 48));
}

{
  OZFootage::~OZFootage((this - 1576));
}

{
  OZFootage::~OZFootage((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFootage::~OZFootage((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFootage::~OZFootage((this - 1576));

  JUMPOUT(0x2666E9F00);
}

void OZFootage::operator=(uint64_t a1, uint64_t a2)
{
  OZSceneNode::operator=(a1, a2);
  OZChannelFolder::operator=(a1 + 1088);
  OZChannelBase::operator=(a1 + 1216, a2 + 1216);
  *(a1 + 1368) = *(a2 + 1368);
  PCString::set((a1 + 1376), (a2 + 1376));
  *(a1 + 1384) = *(a2 + 1384);
  PCString::set((a1 + 1392), (a2 + 1392));
  *(a1 + 1400) = *(a2 + 1400);
  OZChannelFolder::operator=(a1 + 1408);
  v4 = *(a2 + 1536);
  *(a1 + 1546) = *(a2 + 1546);
  *(a1 + 1536) = v4;
  PCString::set((a1 + 1568), (a2 + 1568));
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v7 = v5 + 5976;
  OZChannelFolder::operator=(a1 + 1600);
  OZChannelBase::operator=(a1 + 1728, (v6 + 1728));
  OZChannelFolder::operator=(a1 + 1984);
  OZChannelBase::operator=(a1 + 2120, (v6 + 2120));
  OZChannelBase::operator=(a1 + 2272, (v6 + 2272));
  OZChannelBase::operator=(a1 + 2424, (v6 + 2424));
  OZChannelBase::operator=(a1 + 2576, (v6 + 2576));
  OZChannelBase::operator=(a1 + 2728, (v6 + 2728));
  *(a1 + 2984) = v6[2984];
  OZChannelBase::operator=(a1 + 2992, (v6 + 2992));
  OZChannelBase::operator=(a1 + 3144, (v6 + 3144));
  OZChannelBase::operator=(a1 + 3296, (v6 + 3296));
  OZChannelBase::operator=(a1 + 3552, (v6 + 3552));
  OZChannelBase::operator=(a1 + 3808, (v6 + 3808));
  OZChannelBase::operator=(a1 + 4368, (v6 + 4368));
  OZChannelBase::operator=(a1 + 4520, (v6 + 4520));
  OZChannelBase::operator=(a1 + 4672, (v6 + 4672));
  OZChannelBase::operator=(a1 + 4824, (v6 + 4824));
  OZChannelFolder::operator=(a1 + 4976);
  OZChannelBase::operator=(a1 + 5112, (v6 + 5112));
  OZChannelBase::operator=(a1 + 5264, (v6 + 5264));
  OZChannelBase::operator=(a1 + 5416, (v6 + 5416));
  OZChannelBase::operator=(a1 + 5568, (v6 + 5568));
  OZChannelBase::operator=(a1 + 5720, (v6 + 5720));
  *(a1 + 5976) = *v7;
  OZChannelBase::operator=(a1 + 7464, (v6 + 7464));
  OZChannelBase::operator=(a1 + 7616, (v6 + 7616));
  OZChannelBase::operator=(a1 + 7768, (v6 + 7768));
  OZChannelBase::operator=(a1 + 7920, (v6 + 7920));
  v8 = *(v6 + 1034);
  *(a1 + 8256) = *(v6 + 516);
  *(a1 + 8272) = v8;
  *(a1 + 8280) = v7[2304];
  *(a1 + 8296) = *(v6 + 1037);
  *(a1 + 8304) = *(v6 + 1038);
  *(a1 + 8312) = *(v6 + 2078);
  *(a1 + 8316) = *(v6 + 2079);
  *(a1 + 8320) = v7[2344];
  v9 = *(v6 + 1041);
  v10 = *(v6 + 1042);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 8328) = v9;
  v11 = *(a1 + 8336);
  *(a1 + 8336) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  *(a1 + 8360) = v7[2384];
  v12 = *(v6 + 1054);
  v15 = v12;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  PGMetalTexture::setTexture(a1 + 8368, &v15, 0);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  PCImage::getColorSpace((v6 + 8368), &v15);
  PCImage::setColorSpace(a1 + 8368, &v15);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
  *(a1 + 8448) = 0xBFF0000000000000;
  v13 = *(a1 + 8464);
  *(a1 + 8456) = 0u;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  PCSharedMutex::lock((a1 + 8080));
  v14 = *(a1 + 8072);
  if (v14)
  {
    PMClip::~PMClip(v14);
    MEMORY[0x2666E9F00]();
  }

  *(a1 + 8072) = 0;
  if (*(v6 + 1009))
  {
    operator new();
  }

  PCSharedMutex::unlock((a1 + 8080));
}

void sub_26018CFA8(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10F0C40713A2EEALL);
  PCSharedMutex::unlock((v1 + v3));
  _Unwind_Resume(a1);
}

OZScene *OZFootage::canDelete(OZFootage *this)
{
  result = *(this + 121);
  if (result)
  {
    DependantNodes = OZScene::getDependantNodes(result, *(this + 20));
    if (!DependantNodes)
    {
      return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
    }

    v4 = DependantNodes + 1;
    v5 = *DependantNodes;
    if (*DependantNodes == DependantNodes + 1)
    {
      return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
    }

    else
    {
      while (1)
      {
        Node = OZScene::getNode(*(this + 121), *(v5 + 7));
        if (Node)
        {
          if (v7)
          {
            v8 = v7;
            if ((*(*(v7 + 2) + 56))() & 1) != 0 || (OZImageElement::isLockedDropZone(v8))
            {
              break;
            }
          }
        }

        v9 = v5[1];
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
            v10 = v5[2];
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
        if (v10 == v4)
        {
          return ((*(*(this + 2) + 56))(this + 16, 1) ^ 1);
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t OZFootage::hasVideo(uint64_t a1, void *a2)
{
  result = *(a1 + 8072);
  if (result)
  {
    return PMClip::getVideoDescription(result, a2) == 0;
  }

  return result;
}

uint64_t OZFootage::numAudioTracks(OZFootage *this)
{
  v1 = *(this + 1009);
  if (v1)
  {
    return *(v1 + 516);
  }

  else
  {
    return 0;
  }
}

PCURL *OZFootage::getURL@<X0>(const PCString *this@<X0>, PCURL *a2@<X8>)
{
  if (BYTE1(this[195].var0) == 1)
  {
    return PCURL::PCURL(a2, this + 196, 0);
  }

  else
  {
    return PCURL::PCURL(a2, &this[1009].var0[38].info);
  }
}

void OZFootage::getFilename(const __CFURL ***this@<X0>, PCSharedCount *a2@<X8>)
{
  if (((*this)[179])(this))
  {

    OZSceneNodeFile::getFilename(this, a2);
  }

  else
  {
    v4 = this[1009];

    PMClip::getFilename(v4, a2);
  }
}

void OZFootage::getShortFilename(CFURLRef **this@<X0>, PCSharedCount *a2@<X8>)
{
  if (((*this)[179])(this))
  {

    OZSceneNodeFile::getShortFilename(this, a2);
  }

  else
  {
    v4 = this[1009];

    PMClip::getShortFilename(v4, a2);
  }
}

void OZFootage::getExtension(const __CFURL ***this@<X0>, PCSharedCount *a2@<X8>)
{
  if (((*this)[179])(this))
  {

    OZSceneNodeFile::getExtension(this, a2);
  }

  else
  {
    v4 = this[1009];

    PMClip::getExtension(v4, a2);
  }
}

void OZFootage::getAsFileSystemString(const PCString **this@<X0>, PCSharedCount *a2@<X8>)
{
  if (((*this)[179].var0)(this))
  {

    OZSceneNodeFile::getAsFileSystemString(this, a2);
  }

  else
  {
    v4 = this[1009];

    PMClip::getAsFileSystemString(v4, a2);
  }
}

void OZFootage::getAsURLString(const PCString *this@<X0>, PCString *a2@<X8>)
{
  if ((this->var0[44].length)(this))
  {

    OZSceneNodeFile::getAsURLString(this, a2);
  }

  else
  {
    var0 = this[1009].var0;

    PMClip::getAsURLString(var0, a2);
  }
}

uint64_t OZFootage::setPixelAspectRatioFromFile(OZFootage *this, int a2)
{
  result = (*(*this + 1432))(this);
  if ((result & 1) == 0)
  {
    v5 = *(*(this + 1009) + 416);
    if (v5 > 0.0)
    {
      v6 = MEMORY[0x277CC08F0];

      return OZChannel::setValue((this + 3144), v6, v5, a2);
    }
  }

  return result;
}

uint64_t OZFootage::setGammaFromFile(OZFootage *this)
{
  result = (*(*this + 1432))(this);
  if ((result & 1) == 0)
  {
    v3 = *(this + 1009);
    if (v3 && (WorkingGamma = *(v3 + 424), WorkingGamma > 0.0))
    {
      v5 = MEMORY[0x277CC08F0];
      v6 = (this + 7616);
    }

    else
    {
      WorkingGamma = PCInfo::getWorkingGamma(result);
      v5 = MEMORY[0x277CC08F0];
      v6 = (this + 7616);
    }

    return OZChannel::setValue(v6, v5, WorkingGamma, 0);
  }

  return result;
}

void OZFootage::setClip(OZFootage *this, PMClip *a2, int a3, int a4, uint64_t a5)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v10 = this + 0x2000;
  PCSharedMutex::lock((this + 8080));
  v11 = *(this + 1009);
  if (v11)
  {
    PMClip::~PMClip(v11);
    MEMORY[0x2666E9F00]();
  }

  *(this + 1009) = a2;
  *(this + 2120) = 0;
  v10[292] = 0;
  *(this + 1061) = 0;
  *(this + 2118) = 0;
  *(this + 8475) = 0;
  v12 = (*(*this + 1432))(this);
  v13 = *(this + 1009);
  v14 = v13[36];
  *(this + 1037) = v14;
  *(this + 1038) = PMClip::getSeconds(v13, v14);
  *(this + 2078) = PMClip::getDynamicRangeType(*(this + 1009));
  OZSceneNodeFile::setIsFileMissing(this, 0);
  *(v10 + 125) = 0;
  if ((*(*this + 1296))(this) == 0.0)
  {
    v10[124] = 0;
  }

  if (*(this + 121))
  {
    PMClip::getMediaID(*(this + 1009), &__dst);
    PCString::set(this + 1036, &__dst);
    PCString::~PCString(&__dst);
  }

  v15 = *(this + 1009);
  DisplayFrameRate = *(v15 + 360);
  PCURL::PCURL(&__dst, (v15 + 1224));
  isSequence = PCURL::isSequence(&__dst);
  PCURL::~PCURL(&__dst);
  if (isSequence)
  {
    if ((*(*this + 272))(this))
    {
      v19 = (*(*this + 272))(this);
      DisplayFrameRate = OZSceneSettings::getDisplayFrameRate((v19 + 336));
      v18 = PMClip::setFrameRate(*(this + 1009), DisplayFrameRate);
    }

    else
    {
      v20 = *(OZApplication::getCurrentDoc(theApp) + 3);
      if (v20)
      {
        DisplayFrameRate = OZSceneSettings::getDisplayFrameRate((v20 + 336));
        v18 = PMClip::setFrameRate(*(this + 1009), DisplayFrameRate);
      }
    }
  }

  if (!v12 || (v10[124] & 1) == 0)
  {
    LODWORD(v18) = *(*(this + 1009) + 400);
    OZChannel::setValue((this + 3296), MEMORY[0x277CC08F0], *&v18, a5);
    (*(*this + 1304))(this, a5, DisplayFrameRate);
    OZFootage::setPixelAspectRatioFromFile(this, a5);
    if (a4)
    {
      OZFootage::setGammaFromFile(this);
    }

    if (a3)
    {
      OZFootage::guessAlphaFormat(this, a5);
    }
  }

  OZChannelBase::resetFlag((this + 1600), 2, a5);
  OZChannelBase::resetFlag((this + 1728), 2, a5);
  OZChannelBase::resetFlag((this + 1984), 2, a5);
  OZChannelBase::resetFlag((this + 2992), 2, a5);
  OZChannelBase::resetFlag((this + 3144), 2, a5);
  OZChannelBase::resetFlag((this + 3296), 2, a5);
  OZChannelBase::resetFlag((this + 3552), 2, a5);
  OZChannelBase::resetFlag(this + 34, 2, a5);
  OZChannelBase::resetFlag((this + 5984), 2, a5);
  OZChannelBase::setFlag(this + 39, 2, a5);
  OZChannelBase::setFlag((this + 4520), 2, a5);
  OZChannelBase::setFlag((this + 4672), 2, a5);
  OZChannelBase::setFlag((this + 4824), 2, a5);
  OZChannelBase::setFlag((this + 4976), 2, a5);
  OZChannelBase::setFlag(this + 68, 2, a5);
  v21 = OZChannelBase::setFlag((this + 7768), 2, a5);
  v22 = **(this + 1009);
  if (v22)
  {
    v23 = (*(v22 + 336))(v21);
  }

  else
  {
    v23 = 1;
  }

  OZChannel::setValue((this + 7768), MEMORY[0x277CC08F0], v23, a5);
  PCSharedCount::PCSharedCount(v44);
  v45[0] = 0;
  v24 = *(this + 1009);
  if (v24 && !PMClip::getVideoDescription(v24, &__dst))
  {
    v29 = 1;
  }

  else
  {
    OZChannelBase::setFlag((this + 1600), 2, a5);
    OZChannelBase::setFlag((this + 1728), 2, a5);
    OZChannelBase::setFlag((this + 1984), 2, a5);
    OZChannelBase::setFlag((this + 2992), 2, a5);
    OZChannelBase::setFlag((this + 3144), 2, a5);
    OZChannelBase::setFlag((this + 3296), 2, a5);
    OZChannelBase::setFlag((this + 3552), 2, a5);
    OZChannelBase::setFlag(this + 34, 2, a5);
    OZChannelBase::setFlag((this + 5984), 2, a5);
    v25 = OZChannelBase::setFlag(this + 68, 2, a5);
    v26 = PCColor::BLACK(v25);
    OZChannelColorNoAlpha::setColor((this + 1984), MEMORY[0x277CC08F0], v26, a5);
    OZChannel::setValue((this + 2992), MEMORY[0x277CC08F0], 0.0, a5);
    OZChannel::setValue((this + 1728), MEMORY[0x277CC08F0], 0.0, a5);
    OZChannel::setValue((this + 3144), MEMORY[0x277CC08F0], 1.0, a5);
    v27 = OZChannel::setValue((this + 3296), MEMORY[0x277CC08F0], 0.0, a5);
    WorkingGamma = PCInfo::getWorkingGamma(v27);
    OZChannel::setValue((this + 7616), MEMORY[0x277CC08F0], WorkingGamma, a5);
    v29 = 0;
  }

  v30 = (*(*this + 1432))(this);
  v31 = *(this + 1009);
  if (v30)
  {
LABEL_29:
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_30;
  }

  if (!v31)
  {
    goto LABEL_49;
  }

  if (*(v31 + 408) == 1)
  {
    OZChannelBase::setFlag((this + 1600), 2, a5);
    OZChannelBase::setFlag((this + 1728), 2, a5);
    OZChannelBase::setFlag((this + 1984), 2, a5);
    OZChannelBase::setFlag((this + 2992), 2, a5);
    OZChannelBase::setFlag((this + 3296), 2, a5);
    OZChannelBase::setFlag((this + 3552), 2, a5);
    OZChannelBase::setFlag(this + 34, 2, a5);
    OZChannelBase::resetFlag(this + 39, 2, a5);
    OZChannelBase::resetFlag((this + 4520), 2, a5);
    OZChannelBase::resetFlag((this + 4672), 2, a5);
    OZChannelBase::resetFlag((this + 4824), 2, a5);
    OZChannelBase::resetFlag((this + 4976), 2, a5);
    OZChannel::setValue((this + 3296), MEMORY[0x277CC08F0], 0.0, a5);
    v31 = *(this + 1009);
    goto LABEL_29;
  }

LABEL_30:
  if (*(v31 + 344) != 1 || (OZChannelBase::resetFlag((this + 4520), 2, a5), OZChannelBase::resetFlag((this + 4672), 2, a5), *(this + 1009)))
  {
    if (v29)
    {
      if (((*(*this + 1432))(this) & 1) != 0 || (v32 = *(this + 1009)) == 0 || (*(v32 + 408) & 1) == 0)
      {
        v33 = (*(*this + 1432))(this);
        v34 = *(this + 1009);
        v35 = v34 ? v33 : 1;
        if (((v35 & 1) != 0 || (*(v34 + 1241) & 1) == 0) && (*(v34 + 452) & 1) == 0)
        {
          OZChannelBase::resetFlag(this + 68, 2, a5);
        }
      }
    }

    if (!v12 || (v10[124] & 1) == 0)
    {
      v36 = *(this + 1009);
      v37 = *(v36 + 288);
      v38 = *(v36 + 292);
      v42 = 0.0;
      if (v37 <= v38)
      {
        (*(**(*(this + 598) + 8) + 256))(*(*(this + 598) + 8), &v42);
        v41 = v38 / v42;
        OZChannel::setMax((this + 4520), (v37 / v41));
        v39 = v37;
      }

      else
      {
        (*(**(*(this + 579) + 8) + 256))(*(*(this + 579) + 8), &v42);
        v39 = v37;
        v40 = v37 / v42;
        OZChannel::setMax((this + 4672), (v38 / v40));
      }

      OZChannel::setValue((this + 4520), MEMORY[0x277CC08F0], v39, a5);
      OZChannel::setValue((this + 4672), MEMORY[0x277CC08F0], v38, a5);
      OZChannel::setDefaultValue((this + 4520), v39);
      OZChannel::setDefaultValue((this + 4672), v38);
    }
  }

LABEL_49:
  v10[124] = 1;
  (*(*this + 1464))(this);
  PCCFRef<CGColorSpace *>::~PCCFRef(v45);
  PCString::~PCString(v44);
  PCSharedMutex::unlock((this + 8080));
}

void sub_26018DFB0(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v2 + 472));
  PCString::~PCString((v2 + 448));
  PCSharedMutex::unlock((v1 + 8080));
  _Unwind_Resume(a1);
}

BOOL OZFootage::openMedia(OZFootage *this)
{
  if ((*(this + 1560) & 1) != 0 || *(this + 1009))
  {
    return 0;
  }

  v3 = *(this + 193);
  if (!v3)
  {
    LODWORD(v6) = 0;
    goto LABEL_25;
  }

  PCURL::PCURL(v40, v3);
  PCURL::PCURL(&v39, 0);
  v4 = PCURL::PCURL(v38, v40);
  isDefaultDropZoneFootageForType = OZImageElement::isDefaultDropZoneFootageForType(v4, 0);
  PCURL::~PCURL(v38);
  if (isDefaultDropZoneFootageForType)
  {
    OZImageElement::defaultDropZoneFootageForType(0, &v37);
    PCURL::operator=(&v39, &v37);
  }

  else
  {
    v7 = PCURL::PCURL(v36, v40);
    v8 = OZImageElement::isDefaultDropZoneFootageForType(v7, 3u);
    PCURL::~PCURL(v36);
    if (v8)
    {
      OZImageElement::defaultDropZoneFootageForType(3u, &v37);
      PCURL::operator=(&v39, &v37);
    }

    else
    {
      v9 = PCURL::PCURL(v35, v40);
      v10 = OZImageElement::isDefaultDropZoneFootageForType(v9, 3u);
      PCURL::~PCURL(v35);
      if (v10)
      {
        OZImageElement::defaultDropZoneFootageForType(3u, &v37);
        PCURL::operator=(&v39, &v37);
      }

      else
      {
        PCURL::PCURL(&v34, v40);
        v11 = OZImageElement::isDefaultDropZoneFootageForType(&v34, 1u);
        PCURL::~PCURL(&v34);
        if (v11)
        {
          OZImageElement::defaultDropZoneFootageForType(1u, &v37);
          PCURL::operator=(&v39, &v37);
        }

        else
        {
          PCURL::PCURL(&v33, v40);
          v12 = OZImageElement::isDefaultDropZoneFootageForType(&v33, 2u);
          PCURL::~PCURL(&v33);
          if (!v12)
          {
            v6 = OZFootage::openURL(this, *(this + 193), 0, 0);
            if (!v6)
            {
              goto LABEL_24;
            }

            OZSceneNodeFile::setIsFileMissing(this, 1);
            PCString::PCString(&v37, "Users/Shared/Motion");
            PCURL::getAsFileSystemString(*(this + 193), &v32);
            v15 = PCString::find(&v32, &v37);
            v16 = PCString::size(&v32);
            if ((v15 & 0x80000000) == 0)
            {
              v17 = v16;
              PCSharedCount::PCSharedCount(&v31);
              v19 = OZPreferenceManager::Instance(v18);
              OZPreferenceManager::getContentPath(v19, &v31);
              v20 = PCString::size(&v37);
              PCString::substr(&v32, (v20 + v15), v17 - (v20 + v15), &v29.var0);
              PCString::PCString(&v30, &v31);
              PCString::append(&v30, &v29);
              PCString::set(&v32, &v30);
              PCString::~PCString(&v30);
              PCString::~PCString(&v29);
              PCURL::PCURL(&v30, &v32, 0);
              v6 = OZFootage::openURL(this, &v30, 0, 1);
              if (v6)
              {
                PCString::PCString(&v29, "Content.localized");
                v21 = PCString::find(&v32, &v29);
                v22 = PCString::size(&v29);
                if ((v21 & 0x80000000) == 0)
                {
                  v23 = v22;
                  PCString::PCString(&v28, "Content.localized/Template Media.localized");
                  PCString::replace(&v32, v21, v23, &v28);
                  PCString::~PCString(&v28);
                  PCURL::PCURL(&v28, &v32, 0);
                  v6 = OZFootage::openURL(this, &v28, 0, 1);
                  PCURL::~PCURL(&v28);
                }

                PCString::~PCString(&v29);
              }

              PCURL::~PCURL(&v30);
              PCString::~PCString(&v31);
            }

            PCString::~PCString(&v32);
            PCString::~PCString(&v37);
            if (!v6)
            {
              goto LABEL_24;
            }

            goto LABEL_20;
          }

          OZImageElement::defaultDropZoneFootageForType(2u, &v37);
          PCURL::operator=(&v39, &v37);
        }
      }
    }
  }

  PCURL::~PCURL(&v37);
  if (*(this + 1540) == 1 && (*(this + 8320) & 1) == 0)
  {
    LODWORD(v6) = 0;
    *(this + 8319) = 1;
  }

  else if (v39)
  {
    v6 = OZFootage::openURL(this, &v39, 0, 1);
    if (v6)
    {
LABEL_20:
      PCString::PCString(&v37, "Motion.app/");
      PCURL::getAsFileSystemString(*(this + 193), &v27);
      PCString::PCString(&v26, &v37);
      v6 = OZFootage::openByReplacingSubPath(this, &v27, &v26, v6);
      PCString::~PCString(&v26);
      PCString::~PCString(&v27);
      PCString::~PCString(&v37);
      if (v6)
      {
        PCString::PCString(v13, ".app/");
        PCURL::getAsFileSystemString(*(this + 193), &v25);
        PCString::PCString(&v24, &v37);
        LODWORD(v6) = OZFootage::openByReplacingSubPath(this, &v25, &v24, v6);
        PCString::~PCString(&v24);
        PCString::~PCString(&v25);
        PCString::~PCString(&v37);
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

LABEL_24:
  PCURL::~PCURL(&v39);
  PCURL::~PCURL(v40);
LABEL_25:
  if ((*(*this + 1432))(this))
  {
    v14 = *(this + 194);
    if (v14)
    {
      LODWORD(v6) = OZFootage::openURL(this, v14, 0, 1);
    }
  }

  if (((*(*this + 1432))(this) & 1) == 0)
  {
    *(this + 1560) = 1;
  }

  return v6 != 0;
}

void sub_26018E578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, PCString a12, PCString a13, PCString a14, PCString a15, PCString a16, PCString a17, PCString a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  PCURL::~PCURL(&a14);
  PCString::~PCString(&a15);
  PCURL::~PCURL(&a16);
  PCString::~PCString(&a17);
  PCString::~PCString(&a18);
  PCString::~PCString((v25 - 64));
  PCURL::~PCURL((v25 - 48));
  PCURL::~PCURL((v25 - 40));
  _Unwind_Resume(a1);
}

void OZFootage::guessAlphaFormat(OZFootage *this, uint64_t a2)
{
  PCSharedMutex::lock_shared((this + 8080));
  if (((*(*this + 1432))(this) & 1) == 0)
  {
    v4 = *(this + 1009);
    if (v4)
    {
      if (!*(v4 + 311))
      {
        PMClip::open(v4);
      }

      v16 = 0;
      PCColor::PCColor(&v15);
      v14 = 0;
      v5 = PMClip::guessAlphaFormat(*(this + 1009), 0, &v16, &v15, &v14);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v12 = PCColor::BLACK(v5);
          OZChannelColorNoAlpha::setColor((this + 1984), MEMORY[0x277CC08F0], v12, a2);
          LOBYTE(v13) = v14;
          v8 = 2.0;
          OZChannel::setValue((this + 2992), MEMORY[0x277CC08F0], v13, a2);
          goto LABEL_14;
        }

        if (v16 == 3)
        {
          v9 = PCColor::WHITE(v5);
          OZChannelColorNoAlpha::setColor((this + 1984), MEMORY[0x277CC08F0], v9, a2);
          LOBYTE(v10) = v14;
          v8 = 3.0;
          OZChannel::setValue((this + 2992), MEMORY[0x277CC08F0], v10, a2);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v16)
        {
          v11 = PCColor::BLACK(v5);
          OZChannelColorNoAlpha::setColor((this + 1984), MEMORY[0x277CC08F0], v11, a2);
          v8 = 0.0;
          OZChannel::setValue((this + 2992), MEMORY[0x277CC08F0], 0.0, a2);
          goto LABEL_14;
        }

        if (v16 == 1)
        {
          v6 = PCColor::BLACK(v5);
          OZChannelColorNoAlpha::setColor((this + 1984), MEMORY[0x277CC08F0], v6, a2);
          LOBYTE(v7) = v14;
          v8 = 1.0;
          OZChannel::setValue((this + 2992), MEMORY[0x277CC08F0], v7, a2);
LABEL_14:
          OZChannel::setValue((this + 1728), MEMORY[0x277CC08F0], v8, a2);
        }
      }

      PMClip::setAlphaFormat(*(this + 1009), 0, &v16, &v15, &v14);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
    }
  }

  PCSharedMutex::unlock_shared((this + 8080));
}

void OZFootage::setClipMinimal(OZFootage *this, PMClip *a2)
{
  PCSharedMutex::lock((this + 8080));
  v4 = *(this + 1009);
  if (v4)
  {
    PMClip::~PMClip(v4);
    MEMORY[0x2666E9F00]();
  }

  *(this + 1009) = a2;
  OZSceneNodeFile::setIsFileMissing(this, 0);
  if (*(this + 121))
  {
    PMClip::getMediaID(*(this + 1009), &v5);
    PCString::set(this + 1036, &v5);
    PCString::~PCString(&v5);
  }

  (*(*this + 1464))(this);
  PCSharedMutex::unlock((this + 8080));
}

void sub_26018EA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCSharedMutex::unlock((v10 + v11));
  _Unwind_Resume(a1);
}

PMClip *OZFootage::ensureClipIsOpen(OZFootage *this)
{
  result = *(this + 1009);
  if (!*(result + 311))
  {
    return PMClip::open(result);
  }

  return result;
}

double OZFootage::didFinishLoadingIntoScene(OZFootage *this)
{
  OZSceneNodeFile::didFinishLoadingIntoScene(this);
  if ((*(*this + 272))(this))
  {
    if (*(this + 2066) == 1)
    {
      v7 = 0uLL;
      v8 = 0;
      v3 = (*(*this + 272))(this);
      OZSceneSettings::getFrameDuration((v3 + 336), &v7);
      v4 = *(this + 1032);
      *&v5.value = v7;
      v5.epoch = v8;
      PC_CMTimeFromSampleNumberAndDuration(v4, &v5, &v6);
      result = *&v6.value;
      *(this + 344) = v6;
    }
  }

  return result;
}

void OZFootage::didAddToScene(OZFootage *this, OZScene *a2, double a3)
{
  v5 = *(this + 1009);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (*(v5 + 1240))
  {
    goto LABEL_7;
  }

  if ((!*v5 || (*(*v5 + 336))(v5)) && (*(*this + 1376))(this) >= 2)
  {
    v5 = *(this + 1009);
LABEL_7:
    if (a2)
    {
      DisplayFrameRate = OZSceneSettings::getDisplayFrameRate((a2 + 336));
      v5 = *(this + 1009);
    }

    else
    {
      DisplayFrameRate = *(v5 + 360);
    }

    PMClip::setFrameRate(v5, DisplayFrameRate);
    (*(*this + 1304))(this, 0, DisplayFrameRate);
  }

LABEL_11:
  v7 = *(this + 1009);
  if (a2 && v7)
  {
    if (*(v7 + 448) != 1)
    {
      goto LABEL_16;
    }

    LODWORD(a3) = *(v7 + 344);
    v8 = *(a2 + 46);
    v9 = *&a3 / *(v7 + 360);
    PMClip::setFrameRate(v7, v8);
    *(*(this + 1009) + 344) = (v9 * v8);
    (*(*this + 1304))(this, 0, v8);
    v7 = *(this + 1009);
  }

  if (v7)
  {
LABEL_16:
    if (*(v7 + 416) > 0.0)
    {
      goto LABEL_21;
    }
  }

  if ((*(*this + 272))(this))
  {
    v10 = (*(*this + 272))(this);
    if (*(v10 + 344) == *(this + 2074) && *(v10 + 348) == *(this + 2075))
    {
      OZChannel::setValue((this + 3144), MEMORY[0x277CC08F0], *(v10 + 384), 1);
    }
  }

LABEL_21:
  if (*(this + 1009) && ((*(*this + 1432))(this) & 1) == 0)
  {
    PMClip::getMediaID(*(this + 1009), v16);
    PCString::set(this + 1036, v16);
    PCString::~PCString(v16);
  }

  v16[0].var0 = 0;
  v16[1].var0 = 0;
  v17 = 0;
  v11 = (*(*this + 272))(this);
  FrameDuration = OZSceneSettings::getFrameDuration((v11 + 336), v16);
  if ((*(*this + 272))(this, FrameDuration))
  {
    if (*(this + 2066) == 1)
    {
      v13 = *(this + 1032);
      *&v14.value = *&v16[0].var0;
      v14.epoch = v17;
      PC_CMTimeFromSampleNumberAndDuration(v13, &v14, &v15);
      *(this + 344) = v15;
    }
  }
}

CGColorSpace **OZFootage::getBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = xmmword_260343AA0;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0x3FF0000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0x3FF0000000000000;
  v27 = 0;
  v8 = *(MEMORY[0x277CC08F0] + 16);
  v29 = *MEMORY[0x277CC08F0];
  v30 = v8;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0x100000000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 768;
  v40 = 0x408F400000000000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = -1;
  __asm { FMOV            V0.2D, #1.0 }

  v45 = _Q0;
  (*(*a1 + 1568))(a1, a2, a3, &v15, a5, a6, a7, a8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v38);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v37);
}

void sub_26018EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CGColorSpace *a31, CGColorSpace *a32)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a31);
  _Unwind_Resume(a1);
}

void OZFootage::getBounds(uint64_t a1, double *a2, const CMTime *a3, uint64_t a4)
{
  PMLayerDescription::PMLayerDescription(v33);
  if ((*(*a1 + 1432))(a1))
  {
    v8 = *(a1 + 8296);
  }

  else
  {
    if (*(a4 + 92))
    {
      PMLayerDescription::PMLayerDescription(v30);
      PMClip::getLayerDescription(*(a1 + 8072), v30, *(a4 + 92));
      v29 = v31;
      PCString::~PCString(&v32);
      goto LABEL_7;
    }

    v8 = *(*(a1 + 8072) + 288);
  }

  v29 = v8;
LABEL_7:
  ValueAsInt = *(a1 + 8488);
  if (!ValueAsInt)
  {
    ValueAsInt = OZChannel::getValueAsInt((a1 + 4520), a3, 0.0);
    *(a1 + 8488) = ValueAsInt;
  }

  v10 = *(a1 + 8492);
  if (!v10)
  {
    v10 = OZChannel::getValueAsInt((a1 + 4672), a3, 0.0);
    *(a1 + 8492) = v10;
  }

  if ((*(*a1 + 1432))(a1) & 1) == 0 && (v11 = *(a1 + 8072)) != 0 && (*(v11 + 408))
  {
    v12 = v29;
    v13 = HIDWORD(v29);
  }

  else
  {
    v14 = *(a4 + 92) == 0;
    if (ValueAsInt)
    {
      v15 = v10 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if ((v16 & v14) != 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = HIDWORD(v29);
    }

    if ((v16 & v14) != 0)
    {
      v12 = ValueAsInt;
    }

    else
    {
      v12 = v29;
    }
  }

  OZChannel::getValueAsDouble((a1 + 6120), MEMORY[0x277CC08F0], 0.0);
  v18 = v17;
  OZChannel::getValueAsDouble((a1 + 6272), MEMORY[0x277CC08F0], 0.0);
  v20 = v19;
  OZChannel::getValueAsDouble((a1 + 6576), MEMORY[0x277CC08F0], 0.0);
  v22 = v21;
  OZChannel::getValueAsDouble((a1 + 6424), MEMORY[0x277CC08F0], 0.0);
  v24 = v12 - (vcvtmd_s64_f64(v18) + vcvtmd_s64_f64(v20));
  v25 = v13 - (vcvtmd_s64_f64(v22) + vcvtmd_s64_f64(v23));
  v26 = -1.0;
  v27 = v24 < 1 || v25 < 1;
  v28 = -1.0;
  if (!v27)
  {
    v28 = v24;
    v26 = v25;
    *a2 = v24 * -0.5;
    a2[1] = v25 * -0.5;
  }

  a2[2] = v28;
  a2[3] = v26;
  PCString::~PCString(&v34);
}

void sub_26018F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCString::~PCString(v14 + 5);
  PCString::~PCString(va);
  _Unwind_Resume(a1);
}

CGColorSpace **OZFootage::getDimensions(OZFootage *this, float *a2, float *a3, const OZRenderState *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = xmmword_260343AA0;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0x3FF0000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0x3FF0000000000000;
  v27 = 0;
  v8 = *(MEMORY[0x277CC08F0] + 16);
  v29 = *MEMORY[0x277CC08F0];
  v30 = v8;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0x100000000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 768;
  v40 = 0x408F400000000000;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = -1;
  __asm { FMOV            V0.2D, #1.0 }

  v45 = _Q0;
  (*(*this + 1576))(this, a2, a3, a4, &v15, a6, a7, a8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v38);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v37);
}

void sub_26018F3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, CGColorSpace *a31, CGColorSpace *a32)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a31);
  _Unwind_Resume(a1);
}

float OZFootage::getDimensions(uint64_t a1, float *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v19 = _Q0;
  v12 = (a1 + 8496);
  if (*(a1 + 8512) >= 0.0 && *(a1 + 8520) >= 0.0)
  {
    v14 = *(a1 + 8512);
    v18 = *v12;
    v19 = v14;
  }

  else
  {
    (*(*a1 + 1568))(a1, &v18, a4, a5);
    v13 = v19;
    *v12 = v18;
    v12[1] = v13;
  }

  v15 = *(&v19 + 1);
  v16 = *&v19;
  *a2 = v16;
  result = v15;
  *a3 = result;
  return result;
}

void OZFootage::getKindName(OZFootage *this@<X0>, PCSharedCount *a2@<X8>)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 1432))(this);
  PCSharedCount::PCSharedCount(a2);
  if ((v4 & 1) == 0)
  {
    PCSharedCount::PCSharedCount(v12);
    v13[0] = 0;
    v5 = *(this + 1009);
    if (!v5)
    {
      goto LABEL_18;
    }

    VideoDescription = PMClip::getVideoDescription(v5, __dst);
    v7 = *(this + 1009);
    if (v7)
    {
      if (VideoDescription)
      {
        if (*(v7 + 516))
        {
          PCURL::PCURL(&v10, @"Media Info QuickTime Audio");
          PCString::set(a2, &v10);
LABEL_17:
          PCString::~PCString(&v10);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else if (VideoDescription)
    {
      goto LABEL_18;
    }

    if (*(v7 + 1240) == 1)
    {
      PCURL::PCURL(&v10, @"Media Info Image Sequence");
      PCString::set(a2, &v10);
      goto LABEL_17;
    }

    Instance = PMMediaManager::getInstance(VideoDescription);
    (*(*this + 1232))(&v10, this);
    Reader = PMMediaManager::findReader(Instance, &v10);
    PCURL::~PCURL(&v10);
    if (Reader)
    {
      if ((*(Reader + 248))(Reader) == 1346651680)
      {
        PCURL::PCURL(&v10, @"Media Info PDF");
        PCString::set(a2, &v10);
      }

      else
      {
        if ((*(Reader + 232))(Reader))
        {
          PCURL::PCURL(&v10, @"Media Info QuickTime Movie");
        }

        else
        {
          PCURL::PCURL(&v10, @"Media Info Still Image");
        }

        PCString::set(a2, &v10);
      }

      goto LABEL_17;
    }

LABEL_18:
    PCCFRef<CGColorSpace *>::~PCCFRef(v13);
    PCString::~PCString(v12);
  }
}

void sub_26018F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef((v10 + 472));
  PCString::~PCString((v10 + 448));
  PCString::~PCString(v9);
  _Unwind_Resume(a1);
}

void OZFootage::getFormatName(OZFootage *this@<X0>, PCSharedCount *a2@<X8>)
{
  if ((*(*this + 1432))(this))
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    v4 = *(this + 1009);

    PMClip::getFormatName(v4, a2);
  }
}

void OZFootage::getCodecName(OZFootage *this@<X0>, PCSharedCount *a2@<X8>)
{
  if ((*(*this + 1432))(this))
  {

    PCSharedCount::PCSharedCount(a2);
  }

  else
  {
    v4 = *(this + 1009);

    PMClip::getCodecName(v4, a2);
  }
}

uint64_t OZFootage::getDisplayWidth(OZFootage *this)
{
  if (*(this + 1009) && !(*(*this + 1432))(this))
  {
    v2 = (*(this + 1009) + 288);
  }

  else
  {
    v2 = (this + 8296);
  }

  return *v2;
}

uint64_t OZFootage::getDisplayHeight(OZFootage *this)
{
  if (*(this + 1009) && !(*(*this + 1432))(this))
  {
    v2 = (*(this + 1009) + 292);
  }

  else
  {
    v2 = (this + 8300);
  }

  return *v2;
}

uint64_t OZFootage::getLayers(OZFootage *this)
{
  if ((*(*this + 1432))(this))
  {
    return 1;
  }

  else
  {
    return *(*(this + 1009) + 392);
  }
}

uint64_t OZFootage::getPages(OZFootage *this)
{
  if ((*(*this + 1432))(this))
  {
    return 0;
  }

  else
  {
    return *(*(this + 1009) + 396);
  }
}

void OZFootage::getLayerName(PMClip **this@<X0>, unsigned int a2@<W1>, PCURL *a3@<X8>)
{
  if ((*(*this + 179))(this))
  {

    PCURL::PCURL(a3, @"Missing file");
  }

  else
  {
    PMLayerDescription::PMLayerDescription(v6);
    PMClip::getLayerDescription(this[1009], v6, a2);
    PCString::PCString(a3, &v7);
    PCString::~PCString(&v7);
  }
}

uint64_t OZFootage::getFrames(OZFootage *this)
{
  if (!(*(*this + 1432))(this))
  {
    return *(*(this + 1009) + 344);
  }

  v2 = vcvtmd_s64_f64(*(this + 1038) * (*(*this + 1328))(this) + 0.5 + 0.0000001);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t OZFootage::getDurationInFrames(OZFootage *this)
{
  if (!(*(*this + 1432))(this))
  {
    return *(*(this + 1009) + 344);
  }

  v2 = vcvtmd_s64_f64(*(this + 1038) * (*(*this + 1328))(this) + 0.5 + 0.0000001);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

double OZFootage::getSeconds(OZFootage *this)
{
  v16[3] = *MEMORY[0x277D85DE8];
  *v2.i64 = (*(*this + 1296))(this);
  if (*v2.i64 == 0.0)
  {
    *v2.i64 = 1.0;
  }

  *v3.i64 = *v2.i64 - trunc(*v2.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = 1.0 - *vbslq_s8(vnegq_f64(v4), v3, v2).i64;
  v6 = ceil(*v2.i64 + -0.01);
  if (v5 >= 0.1)
  {
    v7 = *v2.i64;
  }

  else
  {
    v7 = v6;
  }

  if (((*(*this + 1432))(this) & 1) != 0 || !*(this + 1009))
  {
    return *(this + 1038);
  }

  PCSharedCount::PCSharedCount(v15);
  v16[0] = 0;
  if (PMClip::getVideoDescription(*(this + 1009), __dst) == 7 || !v14)
  {
    Seconds = PMClip::getSeconds(*(this + 1009), v8);
  }

  else
  {
    v9 = (*(*this + 1376))(this);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    Seconds = v10 / v7;
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v16);
  PCString::~PCString(v15);
  return Seconds;
}

void sub_26018FE74(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 472));
  PCString::~PCString((v1 + 448));
  _Unwind_Resume(a1);
}

double OZFootage::getFrameRate(OZFootage *this)
{
  v2 = (*(*this + 1432))(this);
  result = 30.0;
  if ((v2 & 1) == 0)
  {
    return *(*(this + 1009) + 360);
  }

  return result;
}

CMTime *anonymous namespace::doubleFrameRateToFig@<X0>(double a1@<D0>, CMTime *a2@<X8>)
{
  v3 = 6144000;
  v4 = 256256;
  v5 = vcvtmd_s64_f64(a1 + 0.5 + 0.0000001);
  v6 = a1 - v5;
  v7 = v6 >= 0.0;
  if (v6 <= -0.1)
  {
    v7 = 1;
  }

  if (v5 != 30 || v7)
  {
    v8 = !v7;
    if (v5 != 24 || !v8)
    {
      if (v5 != 60)
      {
        v8 = 0;
      }

      if (v8)
      {
        v3 = 15360000;
      }

      else
      {
        v3 = v5 << 8;
        v4 = 256;
      }
    }
  }

  else
  {
    v3 = 7680000;
  }

  return CMTimeMake(a2, v3, v4);
}

uint64_t OZFootage::getDynamicRangeType(PMClip **this)
{
  if ((*(*this + 179))(this))
  {
    return *(this + 2078);
  }

  v2 = this[1009];
  if (!v2)
  {
    return *(this + 2078);
  }

  return PMClip::getDynamicRangeType(v2);
}

double OZFootage::getMasteringMaxLuminance(OZFootage *this)
{
  v2 = (*(*this + 1432))(this);
  result = 0.0;
  if ((v2 & 1) == 0)
  {
    v4 = *(this + 1009);
    if (v4)
    {
      return *(v4 + 496);
    }
  }

  return result;
}

uint64_t OZFootage::getAudioTracks(OZFootage *this)
{
  if ((*(*this + 1432))(this))
  {
    return 1;
  }

  v2 = *(this + 1009);
  if (!v2)
  {
    return 1;
  }

  else
  {
    return *(v2 + 516);
  }
}

uint64_t OZFootage::getFixedResolution(OZFootage *this, unsigned int *a2, unsigned int *a3, const CMTime *a4)
{
  ValueAsInt = *(this + 2122);
  if (!ValueAsInt)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 4520), a4, 0.0);
    *(this + 2122) = ValueAsInt;
  }

  *a2 = ValueAsInt;
  result = *(this + 2123);
  if (!result)
  {
    result = OZChannel::getValueAsInt((this + 4672), a4, 0.0);
    *(this + 2123) = result;
  }

  *a3 = result;
  return result;
}

void OZFootage::getTextureResolution(unsigned int *a1, uint64_t a2, const CMTime *a3, uint64_t a4)
{
  PMLayerDescription::PMLayerDescription(v22);
  if ((*(*a1 + 1432))(a1))
  {
    v8 = *(a1 + 1037);
  }

  else
  {
    if (*(a4 + 92))
    {
      PMLayerDescription::PMLayerDescription(v19);
      PMClip::getLayerDescription(*(a1 + 1009), v19, *(a4 + 92));
      v18 = v20;
      PCString::~PCString(&v21);
      goto LABEL_7;
    }

    v8 = *(*(a1 + 1009) + 288);
  }

  v18 = v8;
LABEL_7:
  ValueAsInt = a1[2122];
  if (!ValueAsInt)
  {
    ValueAsInt = OZChannel::getValueAsInt((a1 + 1130), a3, 0.0);
    a1[2122] = ValueAsInt;
  }

  v10 = a1[2123];
  if (!v10)
  {
    v10 = OZChannel::getValueAsInt((a1 + 1168), a3, 0.0);
    a1[2123] = v10;
  }

  if ((*(*a1 + 1432))(a1) & 1) == 0 && (v11 = *(a1 + 1009)) != 0 && (*(v11 + 408))
  {
    v12 = v18;
    v13 = HIDWORD(v18);
  }

  else
  {
    v14 = *(a4 + 92) == 0;
    if (ValueAsInt)
    {
      v15 = v10 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    v17 = (v16 & v14) == 0;
    if ((v16 & v14) != 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = HIDWORD(v18);
    }

    v12 = v18;
    if (!v17)
    {
      v12 = ValueAsInt;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  PCString::~PCString(&v23);
}

void sub_260190328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCString::~PCString(v14 + 5);
  PCString::~PCString(va);
  _Unwind_Resume(a1);
}

void OZFootage::getDuration(OZFootage *this@<X0>, uint64_t a2@<X8>)
{
  if (((*(*this + 1432))(this) & 1) != 0 || (v4 = *(this + 1009)) == 0)
  {
    v6 = *(this + 1038);
    v7 = *(*(this + 121) + 368);

    CMTimeMakeWithSeconds(a2, v6, v7);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    PMClip::getDuration(v4, a2);
    v5 = (*(*this + 1296))(this);
    if (v5 != (*(*this + 1328))(this))
    {
      CMTimeMake(&v8, *(*(this + 1009) + 344), v5);
      *a2 = v8;
    }
  }
}

double OZFootage::getFootageTime(OZFootage *this, const CMTime *a2, CMTime *a3)
{
  v20 = *(this + 208);
  v19 = *(this + 232);
  memset(&v18, 0, sizeof(v18));
  OZFootage::getFrameDuration(this, &v18);
  v17 = *a2;
  time1 = *a2;
  time2 = v19;
  v6 = CMTimeCompare(&time1, &time2);
  v7 = &v17;
  if (v6 > 0)
  {
    v7 = &v19;
  }

  v8 = *&v7->value;
  v17.epoch = v7->epoch;
  *&v17.value = v8;
  time2 = v20;
  *&time1.value = v8;
  time1.epoch = v17.epoch;
  PC_CMTimeSaferAdd(&time1, &time2, &v17);
  time1 = v17;
  v9 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v17 = *v9;
  }

  v10 = (*(*this + 1296))(this);
  v11 = (*(*this + 1328))(this);
  memset(&time1, 0, sizeof(time1));
  memset(&time2, 0, sizeof(time2));
  operator/(&time1.value, &time2, v14);
  operator*(&v17.value, v14, &v15);
  result = *&v15;
  v13 = v16;
  *&a3->value = v15;
  a3->epoch = v13;
  return result;
}

uint64_t OZFootage::isStill(OZFootage *this)
{
  PCSharedMutex::lock_shared((this + 8080));
  v2 = *(this + 1009);
  if (v2)
  {
    v3 = *v2;
    if (v3)
    {
      v4 = (*(v3 + 336))();
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = OZChannel::getValueAsInt((this + 7768), MEMORY[0x277CC08F0], 0.0) != 0;
  }

  PCSharedMutex::unlock_shared((this + 8080));
  return v4;
}

uint64_t OZFootage::isInUseByUnreplacedDropZonesOnly(OZFootage *this, BOOL *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *(this + 121);
  if (!v4)
  {
    goto LABEL_34;
  }

  DependantNodes = OZScene::getDependantNodes(v4, *(this + 20));
  if (!DependantNodes)
  {
    goto LABEL_34;
  }

  if (a2)
  {
    *a2 = 1;
  }

  v6 = DependantNodes + 1;
  v7 = *DependantNodes;
  if (*DependantNodes != DependantNodes + 1)
  {
    v8 = 1;
    v9 = 1;
    do
    {
      Node = OZScene::getNode(*(this + 121), *(v7 + 7));
      Object = OZScene::getObject(*(this + 121), *(v7 + 7));
      {
        {
          Footage = OZImageElement::getFootage(v13);
          (*(*Footage + 1232))(&v24);
          v15 = OZImageElement::getFootage(v13);
          if ((*(*v15 + 1432))(v15))
          {
            v16 = *(this + 193);
            if (v16)
            {
              PCURL::operator=(&v24, v16);
            }
          }

          PCURL::PCURL(&v23, &v24);
          isDefaultDropZoneFootage = OZImageElement::isDefaultDropZoneFootage(&v23);
          PCURL::~PCURL(&v23);
          if (a2 && (OZImageElement::isBackgroundDropZone(v13) & 1) == 0)
          {
            *a2 = 0;
          }

          v8 &= isDefaultDropZoneFootage;
          PCURL::~PCURL(&v24);
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v8 &= (Node | Object) == 0;
          if (a2 && Node | Object)
          {
            v9 = 0;
            v8 = 0;
            *a2 = 0;
          }
        }
      }

      v18 = v7[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v7[2];
          v20 = *v19 == v7;
          v7 = v19;
        }

        while (!v20);
      }

      v7 = v19;
    }

    while (v19 != v6);
    v21 = v8 & (v9 ^ 1);
  }

  else
  {
LABEL_34:
    v21 = 0;
  }

  return v21 & 1;
}

void sub_260190A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  PCURL::~PCURL(&a9);
  PCURL::~PCURL(&a10);
  _Unwind_Resume(a1);
}

void OZFootage::setUserFrameRate(OZFootage *this, double a2, int a3)
{
  OZChannel::getValueAsDouble((this + 3808), MEMORY[0x277CC08F0], 0.0);
  if (vabdd_f64(v6, a2) >= 0.0000001)
  {
    OZChannel::setValue((this + 3808), MEMORY[0x277CC08F0], a2, a3);
    *(this + 8280) = 0;
  }

  else if (*(this + 8280))
  {
    return;
  }

  OZFootage::adjustDurationForChangedFrameRate(this, a3);
}

void OZFootage::adjustDurationForChangedFrameRate(OZFootage *this, int a2)
{
  v4 = *(this + 121);
  if (v4 || OZApplication::getCurrentDoc(theApp) && (v4 = *(OZApplication::getCurrentDoc(theApp) + 3)) != 0)
  {
    memset(&v33, 0, sizeof(v33));
    OZSceneSettings::getFrameDuration((v4 + 336), &v33);
    memset(&v32, 0, sizeof(v32));
    OZFootage::getDuration(this, &v32);
    if ((*(*this + 1376))(this) == 1)
    {
      v32 = v33;
    }

    time1 = *(this + 232);
    v5 = (this + 8256);
    time2 = *(this + 344);
    if (!CMTimeCompare(&time1, &time2) || (*(*this + 1376))(this) == 1)
    {
      *&time1.value = *MEMORY[0x277CC08F0];
      v6 = *(MEMORY[0x277CC08F0] + 16);
      v31 = v32;
      time1.epoch = v6;
      OZChannelObjectRootBase::setTimeExtent((this + 56), &time1, a2);
    }

    time1 = v32;
    time2 = v33;
    if (CMTimeCompare(&time1, &time2))
    {
      *&time1.value = *v5;
      time1.epoch = *(this + 1034);
      time2 = v33;
      if (CMTimeCompare(&time1, &time2))
      {
        v7 = (*(*this + 664))(this);
        v8 = (*(*v7 + 56))(v7);
        DependantNodes = OZScene::getDependantNodes(v4, v8);
        if (DependantNodes)
        {
          v10 = DependantNodes;
          PCURL::PCURL(&time1, @"Undo Footage Replace");
          OZScene::startCaptureModifiedChannels(v4, &time1);
          PCString::~PCString(&time1);
          v14 = *v10;
          v13 = v10 + 1;
          v12 = v14;
          if (v14 != v13)
          {
            do
            {
              Object = OZScene::getObject(v4, *(v12 + 7));
              if (Object)
              {
                if (v16)
                {
                  v17 = v16;
                  v18 = (*(*v16 + 640))(v16);
                  (*(v18->var0 + 89))(&time1);
                  v29 = v31;
                  Footage = OZImageElement::getFootage(v17);
                  time2 = v29;
                  *&v34.value = *v5;
                  v34.epoch = *(this + 1034);
                  PC_CMTimeSaferSubtract(&time2, &v34, &time);
                  Seconds = CMTimeGetSeconds(&time);
                  if (Footage == this && Seconds < 0.0001)
                  {
                    time2 = time1;
                    v27 = v32;
                    OZRetimingUtil::SetTimeExtent(v18, &time2, &v33, v20);
                  }
                }
              }

              v22 = v12[1];
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
                  v23 = v12[2];
                  v24 = *v23 == v12;
                  v12 = v23;
                }

                while (!v24);
              }

              v12 = v23;
            }

            while (v23 != v13);
          }

          OZScene::endCaptureModifiedChannels(v4, v11);
        }
      }
    }

    *v5 = *&v32.value;
    *(this + 1034) = v32.epoch;
    if ((a2 & 1) == 0)
    {
      v25 = (*(*this + 272))(this);
      if (v25)
      {
        OZDocument::postNotification(*(v25 + 1584), 6144);
      }
    }

    *(this + 8280) = 1;
  }
}

uint64_t OZFootage::setClipInterpretation(OZFootage *this, const PMLayerDescription *a2, const OZRenderParams *a3, PMFrameRequest *a4)
{
  v6 = this + 0x2000;
  if (*(this + 8484) == 1)
  {
    ValueAsInt = *(this + 2120);
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 3296), MEMORY[0x277CC08F0], 0.0);
    *(this + 2120) = ValueAsInt;
    v6[292] = 1;
  }

  *(a4 + 27) = OZFootage::getFieldDominanceWithOverride(OZRenderParams const&)const::clipFieldOrderMap[ValueAsInt];
  if (v6[284] == 1)
  {
    v8 = *(this + 2118);
  }

  else
  {
    v8 = OZChannel::getValueAsInt((this + 1728), MEMORY[0x277CC08F0], 0.0);
    *(this + 2118) = v8;
    v6[284] = 1;
  }

  if (v8 <= 3)
  {
    HGTextureManager::storageRecyclingPolicy(a4, v8);
  }

  if (v6[286] == 1)
  {
    v9 = v6[285];
  }

  else
  {
    v9 = OZChannel::getValueAsInt((this + 2992), MEMORY[0x277CC08F0], 0.0) != 0;
    v6[285] = v9;
    v6[286] = 1;
  }

  return HGTextureManager::recycleClientStorageTextures(a4, v9 & 1);
}

uint64_t OZFootage::prepareFrameRequest(OZFootage *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  if (!*(this + 1009))
  {
    return 2;
  }

  PMLayerDescription::PMLayerDescription(v22);
  if (PMClip::getLayerDescription(*(this + 1009), v22, *(a3 + 23)) == 7)
  {
    v8 = 2;
  }

  else
  {
    OZFootage::setClipInterpretation(this, v6, v7, a3);
    if (((*(*this + 1432))(this) & 1) != 0 || (v9 = *(this + 1009)) == 0 || (*(v9 + 408) & 1) == 0)
    {
      v10 = (*(*this + 1432))(this);
      v11 = *(this + 1009);
      v12 = v11 ? v10 : 1;
      if (((v12 & 1) != 0 || (*(v11 + 1241) & 1) == 0) && (*(v11 + 452) & 1) == 0)
      {
        OZChannel::getValueAsDouble((this + 7616), MEMORY[0x277CC08F0], 0.0);
        *(a3 + 17) = v13;
      }
    }

    v14 = (*(*this + 272))(this);
    OZSceneSettings::getFrameDuration((v14 + 336), &v20);
    *(a3 + 7) = v20;
    *(a3 + 16) = v21;
    *(a3 + 145) = *(a2 + 202);
    v15 = *(*(*((*(*this + 272))(this) + 1584) + 224) + 12);
    v16 = (*(*this + 272))(this);
    PMFrameRequest::setResolutionMode(a3, *(*(*(v16 + 1584) + 8 * v15 + 192) + 32));
    if (OZRenderParams::getReducedResolutionMedia(a2) && !PMFrameRequest::getResolutionMode(a3))
    {
      PMFrameRequest::setResolutionMode(a3, 1);
    }

    if (OZRenderParams::getReducedResolutionOverride(a2))
    {
      PMFrameRequest::setResolutionMode(a3, 0);
    }

    isRenderForHDR_Deprecated = OZRenderParams::isRenderForHDR_Deprecated(a2);
    PMFrameRequest::setRenderIsForHDR_Deprecated(a3, isRenderForHDR_Deprecated);
    StillImageInverseToneMapOperator_Deprecated = OZRenderParams::getStillImageInverseToneMapOperator_Deprecated(a2);
    PMFrameRequest::setStillImageInverseToneMapOperator_Deprecated(a3, StillImageInverseToneMapOperator_Deprecated);
    v8 = 0;
  }

  PCString::~PCString(&v23);
  return v8;
}

void sub_2601913B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  PCString::~PCString(va);
  _Unwind_Resume(a1);
}

CGColorSpace **OZFootage::getHeliumGraph@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, FxColorDescription *a4@<X3>, double *a5@<X4>, HGBitmapLoader **a6@<X8>)
{
  v30 = xmmword_260343AA0;
  v31 = 1.0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 1.0;
  v36 = 0.0;
  v37 = 0;
  v38 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0x3FF0000000000000;
  v40 = 0;
  v44 = *MEMORY[0x277CC08F0];
  v45 = *(MEMORY[0x277CC08F0] + 16);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0x100000000;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 768;
  v55 = 0x408F400000000000;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = -1;
  __asm { FMOV            V0.2D, #1.0 }

  v60 = _Q0;
  v42 = *(a2 + 360);
  v17 = (*(*a1 + 272))();
  OZSceneSettings::getFrameDuration((v17 + 336), &v27);
  v44 = v27;
  v45 = v28;
  v26 = 0.0;
  v27.n128_u32[0] = 0;
  (*(*a1 + 1576))(a1, &v27, &v26, a2, &v30);
  if (((*(*a1 + 1432))(a1) & 1) == 0)
  {
    v18 = a1[1009];
    if (v18)
    {
      if (*(v18 + 408) == 1)
      {
        v19 = *(a2 + 324);
        v20 = *(a2 + 328);
        if (v19 == v27.n128_f32[0])
        {
          v21 = v26;
          if (v20 == v26)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v21 = v26;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0x3FF0000000000000;
        v22 = v20 / v21;
        v31 = v19 / v27.n128_f32[0];
        v32 = v31 * 0.0;
        v33 = v31 * 0.0;
        v34 = v22 * 0.0;
        v35 = v22;
        v36 = v22 * 0.0;
      }
    }
  }

LABEL_9:
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
  PMFrameRequest::setWorkingColorSpace(&v30, WorkingColorSpace);
  PMFrameRequest::setOverrideColorSpace(&v30, 0);
  isDynamicRangeTrackingRender = OZRenderParams::isDynamicRangeTrackingRender(a2);
  PMFrameRequest::setIsDynamicRangeTrackingRender(&v30, isDynamicRangeTrackingRender);
  OZFootage::getHeliumGraph(a1, a2, &v30, a3, a4, a5, &v29, a6);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v53);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v52);
}

void sub_26019169C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CGColorSpace *a38)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a38);
  PCCFRef<CGColorSpace *>::~PCCFRef((v38 + 176));
  _Unwind_Resume(a1);
}

void OZFootage::getHeliumGraph(uint64_t a1@<X0>, const OZRenderParams *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, FxColorDescription *a5@<X4>, double *a6@<X5>, void *a7@<X6>, HGBitmapLoader **a8@<X8>)
{
  *a7 = 0;
  if ((*(*a1 + 1432))(a1))
  {
    if ((*(a1 + 8319) & 1) != 0 || (OZPlaybackEngine::OZPlaybackEngine(v18, 1), OZPlaybackEngine::operator==(a2 + 235, v18)))
    {
      v16 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v16);
      *a8 = v16;
    }

    else
    {
      OZFootage::getPlaceHolderHeliumGraph(a1, a2, a4, a5, a6, a8);
    }
  }

  else
  {
    PMFrameRequest::PMFrameRequest(v18, a3);
    if (OZFootage::prepareFrameRequest(a1, a2, v18))
    {
      v17 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v17);
      *a8 = v17;
    }

    else
    {
      OZFootage::getHeliumGraphInternal(a1, a2, v18, a4, a5, a6, a7, a8);
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(&v20);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v19);
  }
}

void sub_260191830(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va1, a24);
  va_start(va, a24);
  v26 = va_arg(va1, CGColorSpace *);
  HGObject::operator delete(v24);
  PCCFRef<CGColorSpace *>::~PCCFRef(va1);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZFootage::getHeliumGraphInternal(uint64_t a1@<X0>, const OZRenderParams *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, FxColorDescription *a5@<X4>, double *a6@<X5>, void *a7@<X6>, HGBitmapLoader **a8@<X8>)
{
  *a7 = 0;
  if (!(*(*a1 + 1432))(a1))
  {
    PCSharedMutex::lock_shared((a1 + 8080));
    v17 = *(a1 + 8072);
    if (!*(v17 + 311))
    {
      PMClip::open(v17);
    }

    PMLayerDescription::PMLayerDescription(v79);
    if (PMClip::getLayerDescription(*(a1 + 8072), v79, *(a3 + 92)) == 7)
    {
      OZFootage::getPlaceHolderHeliumGraph(a1, a2, a4, a5, a6, a8);
LABEL_45:
      PCString::~PCString(&v80);
      PCSharedMutex::unlock_shared((a1 + 8080));
      return;
    }

    v78 = *a2;
    PMFrameRequest::PMFrameRequest(v73, a3);
    v70 = 0;
    v69 = 0;
    OZFootage::getClipBitmapInfo(a1, a2, v79, &v78, v73, &v72, &v71, v68, &v70 + 1, &v70, &v69);
    OZRenderParams::getResolution(a2, &v64);
    v67 = 0;
    v75 = a4;
    v18 = *(a1 + 8072);
    OZFootage::getFrameDuration(a1, &v64);
    Frame = PMClip::getFrame(v18, &v78, &v64, v73, a5, &v67, a6);
    v20 = *a6;
    v22 = a6[4];
    v21 = a6[5];
    v23 = sqrt(a6[1] * a6[1] + v21 * v21);
    if (fabs(v21) < 1.0)
    {
      v23 = v23 + v23;
    }

    v57 = v23;
    v24.i64[0] = v71.u32[0];
    v24.i64[1] = v71.u32[1];
    v59 = vcvtq_f64_u64(v24);
    if (v70 != 1)
    {
LABEL_29:
      if (HIBYTE(v70) == 1)
      {
        v40.f64[0] = sqrt(v20 * v20 + v22 * v22);
        v40.f64[1] = v57;
        v41 = vdivq_f64(v59, v40);
        __asm { FMOV            V1.2D, #-0.5 }

        v58 = vmulq_f64(v41, _Q1);
        v60 = v41;
        v46.i64[0] = v68[0];
        v46.i64[1] = v68[3];
        v47 = vaddq_f64(v58, vdivq_f64(vcvtq_f64_s64(v46), v40));
        v46.i64[0] = v68[1];
        v46.i64[1] = v68[2];
        v64 = v47;
        v65 = vsubq_f64(vsubq_f64(vaddq_f64(v41, v58), vdivq_f64(vcvtq_f64_s64(v46), v40)), v47);
        v48 = HGObject::operator new(0x1A0uLL);
        HGCrop::HGCrop(v48);
        v61 = 0.0;
        v62 = 0.0;
        __asm { FMOV            V0.2D, #-1.0 }

        v63 = _Q0;
        if (PCMatrix44Tmpl<double>::transformRect<double>(a6, v64.n128_f64, &v61))
        {
          v51 = HGRectMake4i(vcvtmd_s64_f64(v61 + 0.5 + 0.0000001), vcvtmd_s64_f64(v62 + 0.5 + 0.0000001), vcvtmd_s64_f64(v61 + *&v63 + 0.5 + 0.0000001), vcvtmd_s64_f64(v62 + *(&v63 + 1) + 0.5 + 0.0000001));
          (*(*v48 + 96))(v48, 0, v51, SHIDWORD(v51), v52, v53);
          (*(*v48 + 120))(v48, 0, v67);
          if (v67 != v48)
          {
            if (v67)
            {
              (*(*v67 + 24))();
            }

            v67 = v48;
            (*(*v48 + 16))(v48);
          }

          v50.n128_f64[0] = PCMatrix44Tmpl<double>::rightTranslate(a6, v64.n128_f64[0] + v65.f64[0] * 0.5 - (v58.f64[0] + 0.5 * v60.f64[0]), v64.n128_f64[1] + v65.f64[1] * 0.5 - (v58.f64[1] + vmuld_lane_f64(0.5, v60, 1)), 0.0);
          goto LABEL_37;
        }

        if (v48)
        {
LABEL_37:
          (*(*v48 + 24))(v48, v50);
        }
      }

      OZChannel::getValueAsDouble((a1 + 3144), MEMORY[0x277CC08F0], 0.0);
      v55 = *(*(a1 + 8072) + 416) / v54;
      if (v55 != 1.0)
      {
        *a6 = v55 * *a6;
        a6[4] = v55 * a6[4];
        a6[8] = v55 * a6[8];
        a6[12] = v55 * a6[12];
      }

      if (Frame)
      {
        v56 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v56);
        *a8 = v56;
        if (v67)
        {
          (*(*v67 + 24))(v67);
        }
      }

      else
      {
        *a8 = v67;
      }

      PCCFRef<CGColorSpace *>::~PCCFRef(&v77);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v76);
      goto LABEL_45;
    }

    PMLayerDescription::PMLayerDescription(&v64);
    if (PMClip::getLayerDescription(*(a1 + 8072), &v64, v74))
    {
      v25 = *(a1 + 8072);
      LODWORD(v9) = *(v25 + 288);
      LODWORD(v8) = *(v25 + 292);
      v61 = 0.0;
      (*(**(*(a1 + 4632) + 8) + 256))(*(*(a1 + 4632) + 8), &v61);
      v26 = v8;
      v27 = v59.f64[0] / v9;
      _NF = v61 < v9;
      v29 = v59.f64[1] / v26;
      if (!_NF)
      {
        v61 = 0.0;
        (*(**(*(a1 + 4784) + 8) + 256))(*(*(a1 + 4784) + 8), &v61);
        if (v61 >= v26)
        {
LABEL_26:
          v36 = 1.0 / v27;
          v39 = 1.0 / v29;
          v37 = 1.0;
          v38 = a6;
LABEL_27:
          PCMatrix44Tmpl<double>::rightScale(v38, v36, v39, v37);
LABEL_28:
          PCString::~PCString(&v66);
          goto LABEL_29;
        }
      }
    }

    else
    {
      v30 = v64.n128_u32[2];
      if (v64.n128_i32[2] < 1)
      {
        goto LABEL_28;
      }

      v31 = v64.n128_u32[3];
      if (v64.n128_i32[3] < 1)
      {
        goto LABEL_28;
      }

      v61 = 0.0;
      (*(**(*(a1 + 4632) + 8) + 256))(*(*(a1 + 4632) + 8), &v61);
      v32.n128_f64[0] = v30;
      v33.n128_u64[1] = *&v59.f64[1];
      v27 = v59.f64[0] / v30;
      v33.n128_f64[0] = v61;
      v29 = v59.f64[1] / v31;
      if (v61 >= v30)
      {
        v61 = 0.0;
        (*(**(*(a1 + 4784) + 8) + 256))(*(*(a1 + 4784) + 8), &v61, v32.n128_f64[0], v33.n128_f64[0]);
        v32.n128_f64[0] = v61;
        if (v61 >= v31)
        {
          goto LABEL_26;
        }
      }

      v61 = 0.0;
      (*(**(*(a1 + 4632) + 8) + 256))(*(*(a1 + 4632) + 8), &v61, v32, v33);
      v34 = v61;
      if (v61 != v59.f64[0])
      {
        v61 = 0.0;
        (*(**(*(a1 + 4784) + 8) + 256))(*(*(a1 + 4784) + 8), &v61, v34);
        if (v61 != v59.f64[1])
        {
          goto LABEL_26;
        }
      }
    }

    if (v27 >= v29)
    {
      v35 = v29;
    }

    else
    {
      v35 = v27;
    }

    v36 = 1.0 / v35;
    v37 = 1.0;
    v38 = a6;
    v39 = v36;
    goto LABEL_27;
  }

  OZFootage::getPlaceHolderHeliumGraph(a1, a2, a4, a5, a6, a8);
}

void sub_260192058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, PCString a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, CGColorSpace *a56, CGColorSpace *a57)
{
  PCString::~PCString(&a27);
  if (a28)
  {
    (*(*a28 + 24))(a28);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a57);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a56);
  PCString::~PCString((v59 - 136));
  PCSharedMutex::unlock_shared((v57 + v58));
  _Unwind_Resume(a1);
}

void OZFootage::getPlaceHolderHeliumGraph(void *a1@<X0>, const OZRenderParams *a2@<X1>, const void *a3@<X3>, FxColorDescription *a4@<X4>, uint64_t a5@<X5>, HGBitmapLoader **a6@<X8>)
{
  FxColorDescription::setDynamicRange(a4, 0);
  *(a5 + 120) = 0x3FF0000000000000;
  *(a5 + 80) = 0x3FF0000000000000;
  *(a5 + 40) = 0x3FF0000000000000;
  *a5 = 0x3FF0000000000000;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(a4);
    OZFootage::setupPlaceHolderMetalTexture(a1, a2, v15, CGColorSpace, v13);
    v16 = PCImage::getCGColorSpace((a1 + 1046));
    FxColorDescription::setCGColorSpace(a4, v16);
    v17 = a1[1054];
    if (v17)
    {
      (*(*v17 + 16))(a1[1054]);
    }

    v18 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v18, v17);
    *a6 = v18;
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }
  }

  else
  {
    v19 = FxColorDescription::getCGColorSpace(a4);
    OZFootage::getPlaceHolderBitmap(a1, a2, v19, &v26);
    v20 = v26;
    v21 = PCImage::getCGColorSpace(v26);
    FxColorDescription::setCGColorSpace(a4, v21);
    v22 = v27;
    v24 = v20;
    v25 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = 0;
    PGHelium::createBitmapNode(&v24, &v23, 0, 0, a6);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }
}

void sub_260192384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HGObject::operator delete(v15);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  _Unwind_Resume(a1);
}

void OZFootage::getClipBitmapInfo(uint64_t a1, OZRenderParams *a2, int32x2_t *a3, CMTime *a4, uint64_t a5, int *a6, int32x2_t *a7, _DWORD *a8, BOOL *a9, BOOL *a10, __int32 *a11)
{
  OZChannel::getValueAsDouble((a1 + 6120), a4, 0.0);
  *a8 = vcvtmd_s64_f64(v19);
  OZChannel::getValueAsDouble((a1 + 6272), a4, 0.0);
  a8[1] = vcvtmd_s64_f64(v20);
  OZChannel::getValueAsDouble((a1 + 6576), a4, 0.0);
  a8[2] = vcvtmd_s64_f64(v21);
  OZChannel::getValueAsDouble((a1 + 6424), a4, 0.0);
  a8[3] = vcvtmd_s64_f64(v22);
  *a7 = vmax_s32(a3[1], 0x100000001);
  *v33 = 0;
  OZFootage::getFixedResolution(a1, &v33[1], v33, a4);
  if (((*(*a1 + 1432))(a1) & 1) == 0 && (v23 = *(a1 + 8072)) != 0 && (*(v23 + 408) & 1) != 0 || *(a5 + 92) || (v24 = v33[1]) == 0 || (v25 = v33[0]) == 0)
  {
    *a10 = 0;
  }

  else
  {
    if (a7->i32[0] == v33[1])
    {
      v26 = a7->i32[1];
      *a10 = v26 != v33[0];
      if (v26 == v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *a10 = 1;
    }

    a7->i32[0] = v24;
    a7->i32[1] = v25;
  }

LABEL_13:
  OZRenderParams::getResolution(a2, &v34);
  if (v34.n128_f64[0] != 1.0 || v34.n128_f64[1] != 1.0)
  {
    *a10 = 1;
  }

  v27 = a7->i32[0];
  v28 = a7->i32[0] - (a8[1] + *a8);
  if (!v28)
  {
    v28 = 1;
  }

  v29 = a7->i32[1] - (a8[3] + a8[2]);
  if (!v29)
  {
    v29 = 1;
  }

  *a6 = v28;
  a6[1] = v29;
  v31 = v28 != v27 || v29 != a7->i32[1];
  *a9 = v31;
  v32 = a3[2].i32[1];
  *a11 = v32;
  if (v28 <= 1)
  {
    v28 = 1;
  }

  if (v29 <= 1)
  {
    v29 = 1;
  }

  *a6 = v28;
  a6[1] = v29;
  if (v32 == 9)
  {
    *a11 = 13;
  }
}

unint64_t OZFootage::estimateRenderMemory(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v40 = *MEMORY[0x277D85DE8];
  Resolution = OZRenderParams::getResolution(v4, &v39);
  v11 = *&v39.value;
  v10 = *&v39.timescale;
  if (((*(*v8 + 1432))(v8, Resolution) & 1) != 0 || !*(v8 + 8072))
  {
    PCWorkingColorVector::PCWorkingColorVector(&v39);
    if (v7 + 8 == std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::find<PCHash128>(v7, &v39))
    {
      std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(v7, &v39);
      *&v13 = ceil(v10 * *(v8 + 8300));
      v14 = ceil(v11 * *(v8 + 8296)) * *&v13;
      LODWORD(v13) = *(v5 + 84);
      return (v14 * v13 * (*(v5 + 83) >> 3));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    PMLayerDescription::PMLayerDescription(v37);
    if (PMClip::getLayerDescription(*(v8 + 8072), v37, *(v3 + 92)) == 7)
    {
      PCWorkingColorVector::PCWorkingColorVector(&v39);
      if (v7 + 8 == std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::find<PCHash128>(v7, &v39))
      {
        std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(v7, &v39);
        *&v19 = ceil(v10 * *(v8 + 8300));
        v20 = ceil(v11 * *(v8 + 8296)) * *&v19;
        LODWORD(v19) = *(v5 + 84);
        v12 = (v20 * v19 * (*(v5 + 83) >> 3));
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v39 = *v5;
      OZFootage::getFootageTime(v8, &v39, &v36);
      PMFrameRequest::PMFrameRequest(v33, v3);
      v28 = 0;
      OZFootage::getClipBitmapInfo(v8, v5, v37, &v36, v33, v32, &v31, v27, &v30, &v29, &v28);
      v15 = v32[0];
      v16 = v32[1];
      v25 = 0uLL;
      v26 = 0;
      OZSceneSettings::getFrameDuration((*(v8 + 968) + 336), &v25);
      if (*(v5 + 123))
      {
        v25.n128_i64[0] /= 2;
      }

      OZFootage::getCacheHashKey(v8, *(v8 + 8072), &v36, v17, v33, v5, v37);
      PCHashWriteStream::PCHashWriteStream(&v39);
      PCHashWriteStream::writeValue(&v39, v8);
      Hash = PCHashWriteStream::getHash(&v39);
      PCHash128::operator+=(v24, Hash);
      if (v7 + 8 == std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::find<PCHash128>(v7, v24))
      {
        std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(v7, v24);
        v21 = vcvtpd_u64_f64(v10 * v16) * vcvtpd_u64_f64(v11 * v15);
        if ((v28 - 10) > 6)
        {
          v22 = 4;
        }

        else
        {
          v22 = *&asc_2608526C8[4 * (v28 - 10)];
        }

        v12 = v21 * v22;
      }

      else
      {
        v12 = 0;
      }

      PCHashWriteStream::~PCHashWriteStream(&v39);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v35);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v34);
    }

    PCString::~PCString(&v38);
  }

  return v12;
}

void sub_2601929FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CGColorSpace *a45, CGColorSpace *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, PCString a62, char a63)
{
  PCHashWriteStream::~PCHashWriteStream(&a63);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a46);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a45);
  PCString::~PCString(&a62);
  _Unwind_Resume(a1);
}

void anonymous namespace::missingFootageHash(_anonymous_namespace_ *this, PCHash128 *a2, OZFootage *a3, double a4, double a5)
{
  v5 = MEMORY[0x28223BE20](this);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v5;
  v17[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v17);
  PCHashWriteStream::writeValue(v17, v15);
  PCHashWriteStream::writeValue(v17, v13);
  PCHashWriteStream::writeValue(v17, v11);
  PCHashWriteStream::writeValue(v17, v9);
  PCHashWriteStream::writeValue(v17, v7);
  *v16 = *PCHashWriteStream::getHash(v17)->i8;
  PCHashWriteStream::~PCHashWriteStream(v17);
}

uint64_t OZFootage::getPlaceHolderBitmap@<X0>(OZFootage *this@<X0>, const OZRenderParams *a2@<X1>, CGColorSpace *WorkingColorSpace@<X3>, void *a4@<X8>)
{
  v9 = (this + 8184);
  v15 = this + 8184;
  PCMutex::lock((this + 8184));
  v16 = 1;
  v10 = *(this + 1041);
  if (!v10 || *(this + 1043) != 1.0 || *(this + 1044) != 1.0)
  {
    if (*(this + 1037))
    {
      v11 = *(this + 2074);
    }

    else
    {
      v11 = *(a2 + 81);
    }

    if (*(this + 1037))
    {
      v12 = *(this + 2075);
    }

    else
    {
      v12 = *(a2 + 82);
    }

    if (!WorkingColorSpace)
    {
      WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
    }

    createPlaceHolderBitmap(v11, v12, 1.0, 1.0, WorkingColorSpace);
  }

  v13 = *(this + 1042);
  *a4 = v10;
  a4[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return PCMutex::unlock(v9);
}

void sub_260192CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFootage::setupPlaceHolderMetalTexture(OZFootage *this, const OZRenderParams *a2, const PMFrameRequest *a3, CGColorSpace *a4, HGGPURenderer *a5)
{
  OZFootage::getPlaceHolderBitmap(this, a2, a4, &v22);
  v20[1] = (this + 8184);
  PCMutex::lock((this + 8184));
  v21 = 1;
  if ((*(this + 8360) & 1) == 0)
  {
    v7 = v22;
    v8 = (*(**(v22 + 64) + 48))(*(v22 + 64));
    Format = PGHelium::makeFormat(v8);
    v10 = (*(*v7 + 16))(v7);
    v11 = (*(*v7 + 24))(v7);
    v12 = HGRectMake4i(v10 / -2, v11 / -2, v10 - v10 / 2, v11 - v11 / 2);
    v14 = v13;
    v15 = (*(**(v7 + 8) + 16))(*(v7 + 8));
    BytesPerRow = PCBitmap::getBytesPerRow(v7);
    v17 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v17, v12, v14, Format, v15, BytesPerRow);
    MetalContext = HGGPURenderer::GetMetalContext(a5);
    *&v24.var0 = *(v17 + 28);
    *&v24.var2 = 0;
    HGMetalTexture::createFromBitmap(MetalContext, v17, *(v17 + 20), v24, 0, v20);
    PGMetalTexture::setTexture(this + 8368, v20, 0);
    if (v20[0])
    {
      (*(*v20[0] + 24))(v20[0]);
    }

    CGColorSpace = PCImage::getCGColorSpace(v7);
    PCImage::setColorSpace((this + 8368), CGColorSpace);
    *(this + 8360) = 1;
    (*(*v17 + 24))(v17);
  }

  PCMutex::unlock((this + 8184));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_260192FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v14 + 24))(v14);
  PCLockSentry<PCMutex>::~PCLockSentry(&a11);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_2601931D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, uint64_t a10, uint64_t a11, uint64_t a12, CGColorSpace *a13)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a13);
  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void sub_260193570(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void OZFootage::getErrorHeliumGraph(_anonymous_namespace_ *a1, uint64_t a2, FxColorDescription *a3)
{
  FxColorDescription::setDynamicRange(a3, 0);
  if (!FxColorDescription::getCGColorSpace(a3))
  {
    v5 = PCColorSpaceCache::cgRec709Linear(0);
    FxColorDescription::setCGColorSpace(a3, v5);
  }

  CGColorSpace = FxColorDescription::getCGColorSpace(a3);
  if (*(a1 + 80) == 1)
  {
  }

  OZFootage::getErrorImage(a1, CGColorSpace, v7);
}

void sub_260193708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFootage::reloadResources(OZFootage *this, PGContext *a2)
{
  v3 = *(this + 1009);
  if (v3)
  {
    PMClip::reloadResources(v3);
  }

  v5[1] = this + 8184;
  PCMutex::lock((this + 8184));
  v6 = 1;
  v5[0] = 0;
  PGMetalTexture::setTexture(this + 8368, v5, 0);
  if (v5[0])
  {
    (*(*v5[0] + 24))(v5[0]);
  }

  *(this + 8360) = 0;
  return PCMutex::unlock((this + 8184));
}

void sub_2601937E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::updateModifiedDate(OZFootage *this)
{
  result = *(this + 1009);
  if (result)
  {
    ModificationDate = PMClip::getModificationDate(result);
    if (*(this + 384) == ModificationDate)
    {
      return 0;
    }

    else
    {
      *(this + 384) = ModificationDate;
      return 1;
    }
  }

  return result;
}

uint64_t OZFootage::updateMissingFile(OZFootage *this)
{
  if (((*(*this + 1352))(this) && (v2 = *(this + 1009)) != 0 && *(v2 + 1240) != 1 || (*(*this + 1360))(this) && *(this + 1009) || (*(*this + 1432))(this) && *(this + 1009)) && (*(*this + 1432))(this) && *(this + 1009))
  {
    OZSceneNodeFile::setIsFileMissing(this, 0);
  }

  return 0;
}

uint64_t OZFootage::writeBody(OZFootage *this, PCSerializerWriteStream *a2, unsigned int a3, int a4, unsigned int a5)
{
  v7 = OZFootage::isInUseByUnreplacedDropZonesOnly(this, 0);
  if ((*(*this + 272))(this))
  {
    v58 = *(*((*(*this + 272))(this) + 1584) + 160);
  }

  else
  {
    v58 = 0;
  }

  if ((*(*this + 272))(this))
  {
    v8 = *(*((*(*this + 272))(this) + 1584) + 320) == 0;
  }

  else
  {
    v8 = 0;
  }

  {
    if (((*(*this + 1432))(this) & 1) != 0 || (v9 = *(this + 1009)) == 0 || (v10 = 1.0, (*(v9 + 1241) & 1) == 0))
    {
      v10 = 0.0;
    }

    OZChannel::setValue((this + 7464), MEMORY[0x277CC08F0], v10, 1);
  }

  PCSerializerWriteStream::pushScope(a2, &OZFootageScope);
  if (v7)
  {
    if ((*(*this + 1432))(this) && (v11 = *(this + 193)) != 0)
    {
      PCURL::getAsFileSystemString(v11, v78);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, v78);
      (*(*a2 + 24))(a2);
      v12 = v78;
    }

    else
    {
      (*(*this + 1240))(&v77, this);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, &v77);
      (*(*a2 + 24))(a2);
      v12 = &v77;
    }

LABEL_23:
    PCString::~PCString(v12);
    goto LABEL_24;
  }

  if (v8)
  {
    if ((*(*this + 1432))(this) && (v13 = *(this + 193)) != 0)
    {
      PCURL::getAsURLString(v13, v76);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, v76);
      (*(*a2 + 24))(a2);
      v12 = v76;
    }

    else
    {
      (*(*this + 1272))(&v75, this);
      (*(*a2 + 16))(a2, 1);
      (*(*a2 + 104))(a2, &v75);
      (*(*a2 + 24))(a2);
      v12 = &v75;
    }

    goto LABEL_23;
  }

LABEL_24:
  v62 = v8;
  v63 = v7;
  if (v14 && (((*(*this + 1432))(this) | v7) & 1) == 0)
  {
    URL = PCXMLWriteStream::getURL(v14);
    PCURL::getAsFileSystemString(URL, &v66);
    (*(*this + 1264))(&v65, this);
    v16 = PCXMLWriteStream::getURL(v14);
    PCURL::getContainingFolderAsURLString(v16, &v74);
    v17 = PCString::cf_str(&v66);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v17, @"/");
    v19 = PCString::cf_str(&v65);
    v20 = CFStringCreateArrayBySeparatingStrings(0, v19, @"/");
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    v22 = CFArrayGetCount(v20);
    v23 = v22;
    if (Count >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = Count;
    }

    if (v24 >= 1)
    {
      v25 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v25);
        v27 = CFArrayGetValueAtIndex(v20, v25);
        if (CFStringCompare(ValueAtIndex, v27, 1uLL))
        {
          break;
        }

        if (v24 == ++v25)
        {
          goto LABEL_35;
        }
      }

      LODWORD(v24) = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

LABEL_35:
      if (v24 != 1 || (v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), CFStringGetLength(v28)))
      {
        PCSharedCount::PCSharedCount(&v73);
        if (~v24 + Count >= 1)
        {
          v29 = Count - v24;
          do
          {
            PCString::append(&v73, "../");
            --v29;
          }

          while (v29 > 1);
        }

        if (v24 < v23)
        {
          v30 = v24;
          do
          {
            v31 = CFArrayGetValueAtIndex(v20, v30);
            PCURL::PCURL(&v72, v31);
            PCString::append(&v73, &v72);
            PCString::~PCString(&v72);
            if (v23 - 1 > v30)
            {
              PCString::append(&v73, "/");
            }

            ++v30;
          }

          while (v30 < v23);
        }

        PCURL::PCURL(&v72, &v73, 0);
        PCSharedCount::PCSharedCount(&v71);
        PCURL::getAsURLString(&v72, &v70);
        (*(*a2 + 16))(a2, 2);
        (*(*a2 + 104))(a2, &v70);
        (*(*a2 + 24))(a2);
        PCString::~PCString(&v70);
        PCString::~PCString(&v71);
        PCURL::~PCURL(&v72);
        PCString::~PCString(&v73);
      }
    }

LABEL_46:
    CFRelease(ArrayBySeparatingStrings);
    CFRelease(v20);
    PCString::~PCString(&v74);
    PCString::~PCString(&v65);
    PCString::~PCString(&v66);
  }

  if (((v63 | v62) & 1) == 0)
  {
    if ((*(*this + 1432))(this))
    {
      v32 = *(this + 194);
      if (v32)
      {
        PCURL::getAsURLString(v32, v69);
        (*(*a2 + 16))(a2, 2);
        (*(*a2 + 104))(a2, v69);
        (*(*a2 + 24))(a2);
        v33 = v69;
      }

      else
      {
        v41 = *(this + 193);
        if (((v41 != 0) & v58) != 1)
        {
          goto LABEL_74;
        }

        PCURL::getAsURLString(v41, v68);
        (*(*a2 + 16))(a2, 1);
        (*(*a2 + 104))(a2, v68);
        (*(*a2 + 24))(a2);
        v33 = v68;
      }

      goto LABEL_73;
    }

    (*(*this + 1272))(&v66, this);
    if (v14)
    {
      v34 = PCXMLWriteStream::getURL(v14);
      PCURL::getAsURLString(v34, &v65);
      v35 = PCString::cf_str(&v65);
      v36 = CFStringCreateArrayBySeparatingStrings(0, v35, @"/");
      v37 = PCString::cf_str(&v66);
      v38 = CFStringCreateArrayBySeparatingStrings(0, v37, @"/");
      v39 = CFArrayGetCount(v36);
      if (CFArrayGetCount(v38) >= v39)
      {
        if (v39 < 2)
        {
          v40 = 0;
        }

        else
        {
          v42 = 0;
          v43 = v39 - 1;
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = v43 - 1;
          do
          {
            v45 = CFArrayGetValueAtIndex(v36, v42);
            v46 = CFArrayGetValueAtIndex(v38, v42);
            v47 = CFStringCompare(v45, v46, 1uLL);
            v40 = v47 != kCFCompareEqualTo;
            if (v47)
            {
              break;
            }
          }

          while (v44 != v42++);
        }
      }

      else
      {
        v40 = 1;
      }

      CFRelease(v36);
      CFRelease(v38);
      PCString::~PCString(&v65);
    }

    else
    {
      v40 = 0;
    }

    PCString::PCString(&v65, "Contents/LibraryContent");
    if (*(this + 1540) == 1)
    {
      if (!(v40 | (PCString::find(&v66, &v65) >= 0) | v58 & 1))
      {
        goto LABEL_72;
      }
    }

    else if (((v58 | v40) & 1) == 0)
    {
LABEL_72:
      PCString::~PCString(&v65);
      v33 = &v66;
LABEL_73:
      PCString::~PCString(v33);
      goto LABEL_74;
    }

    PCString::PCString(&v67, &v66);
    (*(*a2 + 16))(a2, 1);
    (*(*a2 + 104))(a2, &v67);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v67);
    goto LABEL_72;
  }

LABEL_74:
  if ((*(*this + 1432))(this))
  {
    v50 = *(this + 2074);
    v51 = *(this + 2075);
    Seconds = *(this + 1038);
    DynamicRangeType = *(this + 2078);
  }

  else
  {
    v54 = *(this + 1009);
    v50 = v54[72];
    v51 = v54[73];
    Seconds = PMClip::getSeconds(v54, v49);
    DynamicRangeType = PMClip::getDynamicRangeType(*(this + 1009));
  }

  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, v50);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 4);
  (*(*a2 + 48))(a2, v51);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 88))(a2, Seconds);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 10);
  (*(*a2 + 48))(a2, DynamicRangeType);
  (*(*a2 + 24))(a2);
  v55 = *(this + 121);
  if (v55)
  {
    v66 = *(this + 344);
    OZSceneSettings::getFrameDuration((v55 + 336), &v65);
    SampleNumber = PC_CMTimeGetSampleNumber(&v66, &v65);
    (*(*a2 + 16))(a2, 6);
    (*(*a2 + 72))(a2, SampleNumber);
    (*(*a2 + 24))(a2);
  }

  PCString::PCString(&v64, this + 1036);
  (*(*a2 + 16))(a2, 7);
  (*(*a2 + 104))(a2, &v64);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v64);
  PCSerializerWriteStream::popScope(a2);
  return OZSceneNode::writeBody(this, a2, a3, a4, a5);
}

void sub_26019499C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, PCString a14, uint64_t a15, uint64_t a16, PCString a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, PCString a29, PCString a30, PCString a31, PCString a32, PCString a33)
{
  PCString::~PCString(&a30);
  PCURL::~PCURL(&a31);
  PCString::~PCString(&a32);
  PCString::~PCString(&a33);
  PCString::~PCString(&a14);
  PCString::~PCString(&a17);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::parseBegin(OZFootage *this, PCSerializerReadStream *a2)
{
  OZSceneNode::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZFootageScope);
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::setValue((this + 7616), MEMORY[0x277CC08F0], -1.0, 0);
  }

  return 1;
}

uint64_t OZFootage::parseEnd(OZFootage *this, PCSerializerReadStream *a2)
{
  if (*(this + 1009) && ((*(*this + 1432))(this) & 1) == 0)
  {
    PMClip::getMediaID(*(this + 1009), &v21);
    PCString::set(this + 1036, &v21);
    PCString::~PCString(&v21);
  }

  if (*(a2 + 26) < 3u)
  {
    goto LABEL_13;
  }

  OZChannel::getValueAsDouble((this + 7616), MEMORY[0x277CC08F0], 0.0);
  if (v4 <= 0.0)
  {
    if (*(this + 1009) && ((*(*this + 1432))(this) & 1) == 0)
    {
      OZFootage::setGammaFromFile(this);
    }

    else
    {
      OZChannel::setValue((this + 7616), MEMORY[0x277CC08F0], 1.8, 0);
    }

    OZChannel::getValueAsDouble((this + 7616), MEMORY[0x277CC08F0], 0.0);
    OZChannel::setDefaultValue((this + 7616), v5);
  }

  if (*(a2 + 26) < 3u || (OZChannel::getValueAsDouble((this + 7616), MEMORY[0x277CC08F0], 0.0), v7 <= 0.0))
  {
LABEL_13:
    OZChannel::setDefaultValue((this + 7616), 1.8);
    OZChannel::setValue((this + 7616), MEMORY[0x277CC08F0], 1.8, 0);
  }

  if (*(this + 8476) == 1)
  {
    ValueAsInt = *(this + 2118);
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 1728), MEMORY[0x277CC08F0], 0.0);
    *(this + 2118) = ValueAsInt;
    *(this + 8476) = 1;
  }

  if (ValueAsInt == 4)
  {
    OZFootage::guessAlphaFormat(this, 0);
  }

  v9 = *(this + 121);
  if ((v9 || OZApplication::getCurrentDoc(theApp) && (v9 = *(OZApplication::getCurrentDoc(theApp) + 3)) != 0) && (*(v9 + 1576) & 1) == 0 && *(this + 8280) == 1)
  {
    OZFootage::adjustDurationForChangedFrameRate(this, 0);
  }

  if (*(this + 1038) == 0.0)
  {
    if (PCString::size(this + 196))
    {
      PCURL::PCURL(&v21, this + 196, 0);
      SequenceStart = PCURL::getSequenceStart(&v21);
      if (SequenceStart < 0)
      {
        PCAutoreleasePool::PCAutoreleasePool(&v20);
        Instance = PMMediaManager::getInstance(v16);
        Reader = PMMediaManager::findReader(Instance, &v21);
        if (Reader)
        {
          if ((*(Reader + 232))())
          {
            v14 = 100;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 100;
        }

        PCAutoreleasePool::~PCAutoreleasePool(&v20);
      }

      else
      {
        v14 = PCURL::getSequenceEnd(&v21) - SequenceStart + 1;
      }

      PCURL::~PCURL(&v21);
      v15 = v14;
    }

    else
    {
      v15 = 1.0;
    }

    *(this + 1038) = v15 / (*(*this + 1328))(this);
  }

  OZSceneNode::parseEnd(this, a2);
  return 1;
}

uint64_t anonymous namespace::removeAnimation(OZChannel *this, OZChannelDouble *a2)
{
  result = (*(this->var0 + 69))(this, 0);
  if (result)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);
    v6 = v5;
    v8 = *v4;
    if ((*(this->var0 + 79))(this, &v8, 0))
    {
      do
      {
        (*(this->var0 + 76))(this, &v8);
      }

      while (((*(this->var0 + 79))(this, &v8, 0) & 1) != 0);
    }

    CMTimeMake(&v7, 1, 1);
    v8 = v7;
    if ((*(this->var0 + 78))(this, &v8, 0))
    {
      do
      {
        (*(this->var0 + 76))(this, &v8);
      }

      while (((*(this->var0 + 78))(this, &v8, 0) & 1) != 0);
    }

    (*(this->var0 + 63))(this, 0, 0);
    return (*(this->var0 + 89))(this, MEMORY[0x277CC08F0], 0, v6);
  }

  return result;
}

uint64_t OZFootage::parseElement(OZFootage *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v25);
  value = 0;
  if ((*(*this + 272))(this))
  {
    v6 = *(*((*(*this + 272))(this) + 1584) + 104) != 0;
  }

  else
  {
    v6 = 0;
  }

  if ((*(*this + 272))(this))
  {
    v7 = *(*((*(*this + 272))(this) + 1584) + 160);
  }

  else
  {
    v7 = 0;
  }

  *(this + 1540) = 1;
  OZSceneNode::parseElement(this, a2, a3);
  v8 = *(a3 + 2);
  if (v8 <= 4)
  {
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v20 = 8296;
      }

      else
      {
        v20 = 8300;
      }

      PCSerializerReadStream::getAsInt32(a2, a3, this + v20);
      goto LABEL_45;
    }

    if (v8 == 1)
    {
      if (!v6)
      {
        *(this + 8316) = 1;
      }

      if (((*(this + 1541) & 1) != 0 || (*(*this + 1432))(this)) && PCSerializerReadStream::getAsString(a2, a3, &v25))
      {
        PCURL::PCURL(&v22, &v25, 0);
        if ((*(*this + 1400))(this, &v22))
        {
          *(this + 1541) = 0;
          if (((v7 | *(this + 1540)) & 1) == 0)
          {
            (*(*this + 104))(this);
          }
        }

        PCURL::~PCURL(&v22);
      }

      goto LABEL_45;
    }

    if (v8 != 2)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        PCSerializerReadStream::getAsDouble(a2, a3, this + 8304);
      }

      else
      {
        PCSerializerReadStream::getAsUInt64(a2, a3, &value);
        CMTimeMake(&v22, value, 1);
        *(this + 344) = v22;
      }

      goto LABEL_45;
    }

    if (v8 == 7)
    {
      PCSerializerReadStream::getAsString(a2, a3, this + 8288);
      goto LABEL_45;
    }

    if (v8 != 8)
    {
      if (v8 == 10)
      {
        LODWORD(v22.value) = 0;
        PCSerializerReadStream::getAsInt32(a2, a3, &v22);
        *(this + 2078) = v22.value;
      }

      goto LABEL_45;
    }
  }

  if (!v6)
  {
    *(this + 8316) = 1;
  }

  if ((*(this + 1541) & 1) != 0 || (*(*this + 1432))(this))
  {
    if (v9)
    {
      v10 = v9;
      if (PCSerializerReadStream::getAsString(a2, a3, &v25))
      {
        v11 = PCString::cf_str(&v25);
        v12 = CFURLCreateStringByReplacingPercentEscapes(0, v11, &stru_2872E16E0);
        PCURL::PCURL(&v23, v12);
        PCURL::PCURL(&v22, &v23, 0);
        PCString::~PCString(&v23);
        v13 = (*(*this + 1416))(this, &v22);
        PCURL::~PCURL(&v22);
        if (!(*(*this + 1432))(this) || !*PCXMLReadStream::getURL(v10))
        {
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_47;
        }

        URL = PCXMLReadStream::getURL(v10);
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, *URL);
        v16 = MEMORY[0x2666E8750](0, v12, 0, 0, PathComponent);
        v17 = CFURLCopyAbsoluteURL(v16);
        PCURL::PCURL(&v22, v17);
        v18 = (*(*this + 1400))(this, &v22);
        if (*(this + 1540) == 1)
        {
          v18 = (*(*this + 1416))(this, &v22);
        }

        v19 = v18;
        CFRelease(v12);
        CFRelease(PathComponent);
        CFRelease(v16);
        CFRelease(v17);
        PCURL::~PCURL(&v22);
        if (v19)
        {
LABEL_47:
          *(this + 1541) = 0;
          if (((v7 | *(this + 1540)) & 1) == 0)
          {
            (*(*this + 104))(this);
          }
        }
      }
    }
  }

LABEL_45:
  PCString::~PCString(&v25);
  return 1;
}

uint64_t OZFootage::calcHashForState(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4)
{
  if (((*(*a1 + 1432))(a1) & 1) == 0)
  {
    v8 = *(a1 + 8072);
    if (v8)
    {
      if (*(v8 + 344) != 1)
      {
        v12 = ceil(*(v8 + 360) + -0.01);
        if (*(v8 + 1240))
        {
          v13 = v12;
        }

        else
        {
          v13 = *(v8 + 360);
        }

        if (*(a1 + 8484) == 1)
        {
          if (*(a1 + 8480))
          {
LABEL_17:
            v19 = *a3;
            operator*(&v19, 2, &v20);
            v14 = FigTimeToFrameWithRate(&v20, v13);
            v15 = 2 * *(*(a1 + 8072) + 344);
            goto LABEL_20;
          }
        }

        else
        {
          ValueAsInt = OZChannel::getValueAsInt((a1 + 3296), MEMORY[0x277CC08F0], 0.0);
          *(a1 + 8480) = ValueAsInt;
          *(a1 + 8484) = 1;
          if (ValueAsInt)
          {
            goto LABEL_17;
          }
        }

        v20 = *a3;
        v14 = FigTimeToFrameWithRate(&v20, v13);
        v15 = *(*(a1 + 8072) + 344);
LABEL_20:
        v17 = v15 - 1;
        v18 = v14 & ~(v14 >> 31);
        if (v17 >= v18)
        {
          v9 = v18;
        }

        else
        {
          v9 = v17;
        }

        goto LABEL_5;
      }
    }
  }

  v9 = 0;
LABEL_5:
  (*(*a2 + 16))(a2, 0);
  (*(*a2 + 56))(a2, v9);
  (*(*a2 + 24))(a2);
  if (*(a1 + 8484) == 1)
  {
    v10 = *(a1 + 8480);
  }

  else
  {
    v10 = OZChannel::getValueAsInt((a1 + 3296), MEMORY[0x277CC08F0], 0.0);
    *(a1 + 8480) = v10;
    *(a1 + 8484) = 1;
  }

  (*(*a2 + 16))(a2, 0);
  (*(*a2 + 48))(a2, v10);
  (*(*a2 + 24))(a2);
  if (*(a1 + 8072) && ((*(*a1 + 1432))(a1) & 1) == 0)
  {
    PMClip::getAsFileSystemString(*(a1 + 8072), &v20);
    (*(*a2 + 104))(a2, &v20);
    PCString::~PCString(&v20);
  }

  return OZSceneNodeFile::calcHashForState(a1, a2, a3, a4);
}

uint64_t OZFootage::getFieldDominance(OZFootage *this, CMTime *a2)
{
  if (*(this + 8484) == 1)
  {
    return *(this + 2120);
  }

  result = OZChannel::getValueAsInt((this + 3296), MEMORY[0x277CC08F0], 0.0);
  *(this + 2120) = result;
  *(this + 8484) = 1;
  return result;
}

__n128 OZFootage::getNaturalDuration@<Q0>(OZFootage *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 232);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 31);
  return result;
}

__n128 non-virtual thunk toOZFootage::getNaturalDuration@<Q0>(OZFootage *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 216);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 29);
  return result;
}

uint64_t OZFootage::getNaturalDurationFlags(OZFootage *this)
{
  if ((*(*this + 1376))(this) == 1)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk toOZFootage::getNaturalDurationFlags(OZFootage *this)
{
  if ((*(*(this - 2) + 1376))() == 1)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

double OZFootage::getMaximumDuration(OZFootage *this)
{
  if ((*(*this + 1376))(this) != 1 && ((v3 = *(this + 121)) != 0 || (v3 = *(OZApplication::getCurrentDoc(theApp) + 3)) != 0))
  {
    return ceil(OZFootage::getSeconds(this) * *(v3 + 368));
  }

  else
  {
    return 1.0;
  }
}

void OZFootage::getPixelAspectRatio(OZFootage *this)
{
  if (((*(*this + 1432))(this) & 1) == 0)
  {
    v2 = MEMORY[0x277CC08F0];

    OZChannel::getValueAsDouble((this + 3144), v2, 0.0);
  }
}

BOOL OZFootage::hasAlpha(OZFootage *this)
{
  if (*(this + 8476) == 1)
  {
    ValueAsInt = *(this + 2118);
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 1728), MEMORY[0x277CC08F0], 0.0);
    *(this + 2118) = ValueAsInt;
    *(this + 8476) = 1;
  }

  return ValueAsInt != 0;
}

uint64_t OZFootage::prerollBegin(OZFootage *a1, const OZRenderParams *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!*(a1 + 1009))
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v14, a3);
  if (OZFootage::prepareFrameRequest(a1, a2, v14))
  {
    v9 = 2;
  }

  else
  {
    v10 = *(a1 + 1009);
    v12 = *a2;
    v13 = *(a2 + 2);
    v9 = 2 * (PMClip::prerollBegin(v10, &v12, v14, a4, a5) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v16);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
  return v9;
}

void sub_260195F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CGColorSpace *a34, CGColorSpace *a35)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a35);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::prerollEnd(OZFootage *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  if (!*(this + 1009))
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v7, a3);
  if (OZFootage::prepareFrameRequest(this, a2, v7))
  {
    v5 = 2;
  }

  else
  {
    v5 = 2 * (PMClip::prerollEnd(*(this + 1009), v7) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
  return v5;
}

void sub_260196008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, CGColorSpace *a33)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::setRate(OZFootage *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  if (!*(this + 1009))
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v12, a3);
  if (OZFootage::prepareFrameRequest(this, a2, v12))
  {
    v7 = 2;
  }

  else
  {
    v8 = *(this + 1009);
    v10 = *a2;
    v11 = *(a2 + 2);
    v7 = 2 * (PMClip::setRate(v8, a4, &v10, v12) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v14);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  return v7;
}