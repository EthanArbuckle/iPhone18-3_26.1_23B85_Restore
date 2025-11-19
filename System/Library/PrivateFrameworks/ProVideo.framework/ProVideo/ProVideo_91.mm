void sub_2601960EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, CGColorSpace *a34, CGColorSpace *a35)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a35);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::scheduleTokens(uint64_t *a1, const OZRenderParams *a2, __int128 **a3, uint64_t a4, uint64_t a5)
{
  if (!a1[1009])
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v11, a4);
  if (OZFootage::prepareFrameRequest(a1, a2, v11))
  {
    v9 = 2;
  }

  else
  {
    v9 = 2 * (PMClip::scheduleTokens(a1[1009], a3, v11, a5) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v12);
  return v9;
}

void sub_2601961C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, CGColorSpace *a33)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::hintTokensWillImage(uint64_t *a1, const OZRenderParams *a2, __int128 **a3, uint64_t a4)
{
  if (!a1[1009])
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v9, a4);
  if (OZFootage::prepareFrameRequest(a1, a2, v9))
  {
    v7 = 2;
  }

  else
  {
    v7 = 2 * (PMClip::hintTokensWillImage(a1[1009], a3, v9) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  return v7;
}

void sub_26019628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, CGColorSpace *a33)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  _Unwind_Resume(a1);
}

uint64_t OZFootage::getTokensImage(uint64_t *a1, const OZRenderParams *a2, __int128 **a3, uint64_t a4)
{
  if (!a1[1009])
  {
    return 0;
  }

  PMFrameRequest::PMFrameRequest(v9, a4);
  if (OZFootage::prepareFrameRequest(a1, a2, v9))
  {
    v7 = 2;
  }

  else
  {
    v7 = 2 * (PMClip::getTokensImage(a1[1009], a3, v9) != 0);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  return v7;
}

void sub_260196354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, CGColorSpace *a32, CGColorSpace *a33)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a32);
  _Unwind_Resume(a1);
}

PMClip *OZFootage::pruneTokensAtTime(OZFootage *this, CMTime *a2, const char *a3)
{
  result = *(this + 1009);
  if (result)
  {
    return PMClip::pruneTokensAtTime(result, a2, a3);
  }

  return result;
}

PMClip *OZFootage::pruneTokensExceptAtTime(OZFootage *this, CMTime *a2, const char *a3)
{
  result = *(this + 1009);
  if (result)
  {
    return PMClip::pruneTokensExceptAtTime(result, a2, a3);
  }

  return result;
}

PMClip *OZFootage::pruneAllTokens(OZFootage *this, const char *a2)
{
  result = *(this + 1009);
  if (result)
  {
    return PMClip::pruneAllTokens(result, a2);
  }

  return result;
}

void OZChannelAspectRatioFootage::OZChannelAspectRatioFootage(OZChannelAspectRatioFootage *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelAspectRatioFootage_FactoryBase = getOZChannelAspectRatioFootage_FactoryBase();
  OZChannel::OZChannel(this, OZChannelAspectRatioFootage_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287247340;
  this->var2 = &unk_2872476A0;
  OZChannelAspectRatioFootageInfo = OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(v17);
  if (a8)
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
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl;
    this->var15 = OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

uint64_t OZFootage::OZFootage_fixedWidthInfo::getInstance(OZFootage::OZFootage_fixedWidthInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_fixedWidthInfo::getInstance(void)::OZFootage_fixedWidthInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_fixedWidthInfo::getInstance(void)::OZFootage_fixedWidthInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_fixedWidthInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_fixedWidthInfo::_OZFootage_fixedWidthInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_fixedWidthInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_fixedWidthInfo::_OZFootage_fixedWidthInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_fixedWidthInfo *OZFootage::OZFootage_fixedWidthInfo::OZFootage_fixedWidthInfo(OZFootage::OZFootage_fixedWidthInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 2000.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298AB0;
  *(this + 10) = &unk_287298AD0;
  return this;
}

uint64_t OZFootage::OZFootage_fixedHeightInfo::getInstance(OZFootage::OZFootage_fixedHeightInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_fixedHeightInfo::getInstance(void)::OZFootage_fixedHeightInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_fixedHeightInfo::getInstance(void)::OZFootage_fixedHeightInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_fixedHeightInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_fixedHeightInfo::_OZFootage_fixedHeightInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_fixedHeightInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_fixedHeightInfo::_OZFootage_fixedHeightInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_fixedHeightInfo *OZFootage::OZFootage_fixedHeightInfo::OZFootage_fixedHeightInfo(OZFootage::OZFootage_fixedHeightInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 2000.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298B28;
  *(this + 10) = &unk_287298B48;
  return this;
}

uint64_t OZFootage::OZFootage_exposureInfo::getInstance(OZFootage::OZFootage_exposureInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_exposureInfo::getInstance(void)::OZFootage_exposureInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_exposureInfo::getInstance(void)::OZFootage_exposureInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_exposureInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_exposureInfo::_OZFootage_exposureInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_exposureInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_exposureInfo::_OZFootage_exposureInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_exposureInfo *OZFootage::OZFootage_exposureInfo::OZFootage_exposureInfo(OZFootage::OZFootage_exposureInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -10.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298BA0;
  *(this + 10) = &unk_287298BC0;
  return this;
}

uint64_t OZFootage::OZFootage_defogInfo::getInstance(OZFootage::OZFootage_defogInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_defogInfo::getInstance(void)::OZFootage_defogInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_defogInfo::getInstance(void)::OZFootage_defogInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_defogInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_defogInfo::_OZFootage_defogInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_defogInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_defogInfo::_OZFootage_defogInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_defogInfo *OZFootage::OZFootage_defogInfo::OZFootage_defogInfo(OZFootage::OZFootage_defogInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 0.01, 0.001, 0.0001, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298C18;
  *(this + 10) = &unk_287298C38;
  return this;
}

uint64_t OZFootage::OZFootage_kneeLowInfo::getInstance(OZFootage::OZFootage_kneeLowInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_kneeLowInfo::getInstance(void)::OZFootage_kneeLowInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_kneeLowInfo::getInstance(void)::OZFootage_kneeLowInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_kneeLowInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_kneeLowInfo::_OZFootage_kneeLowInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_kneeLowInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_kneeLowInfo::_OZFootage_kneeLowInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_kneeLowInfo *OZFootage::OZFootage_kneeLowInfo::OZFootage_kneeLowInfo(OZFootage::OZFootage_kneeLowInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -3.0, 3.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298C90;
  *(this + 10) = &unk_287298CB0;
  return this;
}

uint64_t OZFootage::OZFootage_kneeHighInfo::getInstance(OZFootage::OZFootage_kneeHighInfo *this)
{
  if (atomic_load_explicit(&OZFootage::OZFootage_kneeHighInfo::getInstance(void)::OZFootage_kneeHighInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFootage::OZFootage_kneeHighInfo::getInstance(void)::OZFootage_kneeHighInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_kneeHighInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFootage::OZFootage_kneeHighInfo::_OZFootage_kneeHighInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFootage::OZFootage_kneeHighInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFootage::OZFootage_kneeHighInfo::_OZFootage_kneeHighInfo)
  {
    operator new();
  }
}

OZFootage::OZFootage_kneeHighInfo *OZFootage::OZFootage_kneeHighInfo::OZFootage_kneeHighInfo(OZFootage::OZFootage_kneeHighInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 3.5, 7.5, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287298D08;
  *(this + 10) = &unk_287298D28;
  return this;
}

PCImage *PGMetalTexture::PGMetalTexture(PCImage *a1, uint64_t *a2)
{
  PCImage::PCImage(a1);
  *v4 = &unk_2872788B0;
  v5 = *a2;
  *(a1 + 8) = *a2;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(a1 + 9) = 0;
  return a1;
}

uint64_t PGMetalTexture::setTexture(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  result = *a2;
  if (v5 != *a2)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
      result = *a2;
    }

    *(a1 + 64) = result;
    if (result)
    {
      result = (*(*result + 16))(result);
    }
  }

  *(a1 + 72) = a3;
  return result;
}

void OZ3DEnginePhysicsFieldBehavior::OZ3DEnginePhysicsFieldBehavior(OZ3DEnginePhysicsFieldBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_287298D80;
  *(this + 2) = &unk_287299018;
  *(this + 6) = &unk_287299270;
  *(this + 42) = &unk_2872992C8;
  PCString::PCString(&v7, "Drag;Vortex;Radial Gravity;Linear Gravity;Noise;Turbulence;Electric;Magnetic");
  PCString::PCString(&v6, "Type");
  OZChannelEnum::OZChannelEnum((this + 536), 1u, &v7, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Strength");
  OZChannelDouble::OZChannelDouble((this + 792), 1.0, &v7, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Falloff Exponent");
  OZChannelDouble::OZChannelDouble((this + 944), 1.0, &v7, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Infinite Extent");
  OZChannelBool::OZChannelBool((this + 1096), 1, &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Extent");
  OZChannel3D::OZChannel3D((this + 1248), 1.0, 1.0, 1.0, &v7, (this + 56), 0xCAu, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Direction");
  OZChannel3D::OZChannel3D((this + 1840), 0.0, -1.0, 0.0, &v7, (this + 56), 0xCDu, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Smoothness");
  OZChannelDouble::OZChannelDouble((this + 2432), 0.0, &v7, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Animation Speed");
  OZChannelDouble::OZChannelDouble((this + 2584), 1.0, &v7, (this + 56), 0xCFu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Minimum Falloff Distance");
  OZChannelDouble::OZChannelDouble((this + 2736), 0.000001, &v7, (this + 56), 0xD0u, 0, 0, 0);
  PCString::~PCString(&v7);
  OZChannel::setMin(this + 16, 0.0);
  OZChannel::setMax(this + 16, 1.0);
  OZChannel::setMin(this + 18, 0.000001);
}

void sub_2601973FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 2584));
  OZChannel::~OZChannel((v12 + 2432));
  OZChannel3D::~OZChannel3D((v12 + 1840));
  OZChannel3D::~OZChannel3D((v12 + 1248));
  OZChannelBool::~OZChannelBool((v12 + 1096));
  OZChannel::~OZChannel((v12 + 944));
  OZChannel::~OZChannel((v12 + 792));
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZLocking::~OZLocking(v13);
  OZBehavior::~OZBehavior(v12);
  _Unwind_Resume(a1);
}

void OZ3DEnginePhysicsFieldBehavior::OZ3DEnginePhysicsFieldBehavior(OZ3DEnginePhysicsFieldBehavior *this, const OZ3DEnginePhysicsFieldBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_287298D80;
  *(this + 2) = &unk_287299018;
  *(this + 6) = &unk_287299270;
  *(this + 42) = &unk_2872992C8;
  OZChannelEnum::OZChannelEnum((this + 536), (a2 + 536), (this + 56));
  OZChannel::OZChannel((this + 792), (a2 + 792), (this + 56));
  *(this + 99) = &unk_287245C60;
  *(this + 101) = &unk_287245FC0;
  OZChannel::OZChannel((this + 944), (a2 + 944), (this + 56));
  *(this + 118) = &unk_287245C60;
  *(this + 120) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 1096), (a2 + 1096), (this + 56));
  OZChannel3D::OZChannel3D((this + 1248), (a2 + 1248), (this + 56));
  OZChannel3D::OZChannel3D((this + 1840), (a2 + 1840), (this + 56));
  OZChannel::OZChannel(this + 16, (a2 + 2432), (this + 56));
  *(this + 304) = &unk_287245C60;
  *(this + 306) = &unk_287245FC0;
  OZChannel::OZChannel(this + 17, (a2 + 2584), (this + 56));
  *(this + 323) = &unk_287245C60;
  *(this + 325) = &unk_287245FC0;
  OZChannel::OZChannel(this + 18, (a2 + 2736), (this + 56));
  *(this + 342) = &unk_287245C60;
  *(this + 344) = &unk_287245FC0;
}

void sub_2601977E8(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v6);
  OZChannel::~OZChannel(v5);
  OZChannel3D::~OZChannel3D((v1 + 1840));
  OZChannel3D::~OZChannel3D((v1 + 1248));
  OZChannelBool::~OZChannelBool((v1 + 1096));
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannelEnum::~OZChannelEnum((v1 + 536));
  OZLocking::~OZLocking(v2);
  OZBehavior::~OZBehavior(v1);
  _Unwind_Resume(a1);
}

void OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior(OZ3DEnginePhysicsFieldBehavior *this)
{
  *this = &unk_287298D80;
  *(this + 2) = &unk_287299018;
  *(this + 6) = &unk_287299270;
  *(this + 42) = &unk_2872992C8;
  OZChannel::~OZChannel(this + 18);
  OZChannel::~OZChannel(this + 17);
  OZChannel::~OZChannel(this + 16);
  *(this + 230) = &unk_28724B1C8;
  *(this + 232) = &unk_28724B528;
  OZChannel::~OZChannel(this + 15);
  OZChannel2D::~OZChannel2D((this + 1840));
  *(this + 156) = &unk_28724B1C8;
  *(this + 158) = &unk_28724B528;
  OZChannel::~OZChannel((this + 1688));
  OZChannel2D::~OZChannel2D((this + 1248));
  OZChannelBool::~OZChannelBool((this + 1096));
  OZChannel::~OZChannel((this + 944));
  OZChannel::~OZChannel((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));
  *(this + 42) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 464));
  PCSharedMutex::~PCSharedMutex((this + 344));

  OZBehavior::~OZBehavior(this);
}

{
  OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior(OZ3DEnginePhysicsFieldBehavior *this)
{
  OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior((this - 16));
}

{
  OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior((this - 48));
}

{
  OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEnginePhysicsFieldBehavior::~OZ3DEnginePhysicsFieldBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

void *OZ3DEnginePhysicsFieldBehavior::didAddToNode(void *this, OZSceneNode *lpsrc)
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

void OZ3DEnginePhysicsFieldBehavior::halfExtent(OZ3DEnginePhysicsFieldBehavior *this@<X0>, const CMTime *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  OZChannel3D::getValue(this + 1248, a2, a3, 0.0);
}

void OZChannel3D::getValue(uint64_t a1, const CMTime *a2, void *a3, double a4)
{
  if (a3)
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
}

void OZ3DEnginePhysicsFieldBehavior::direction(OZ3DEnginePhysicsFieldBehavior *this@<X0>, const CMTime *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  OZChannel3D::getValue(this + 1840, a2, a3, 0.0);
}

char *OZ3DEnginePhysicsFieldBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  v14 = **&MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((a1 + 536), &v14, 0.0);
  result = OZChannel::getValueAsInt((a1 + 1096), &v14, 0.0);
  v6 = result;
  v7 = *(a2 + 8);
  if (v7 == a2)
  {
    v9 = 1;
  }

  else
  {
    while (1)
    {
      result = *(v7 + 16);
      if (result)
      {
        if (result)
        {
          v8 = result;
          result = OZChannel::getValueAsInt((result + 536), &v14, 0.0);
          if (result != ValueAsInt)
          {
            break;
          }

          result = OZChannel::getValueAsInt((v8 + 1096), &v14, 0.0);
          if ((v6 != 0) != (result != 0))
          {
            break;
          }
        }
      }

      v7 = *(v7 + 8);
      if (v7 == a2)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    v7 = *(a2 + 8);
  }

  for (; v7 != a2; v7 = *(v7 + 8))
  {
    v10 = *(v7 + 16);
    if (v10)
    {
    }

    else
    {
      v11 = 0;
    }

    v12 = (v11 + 2432);
    if (!v9)
    {
      OZChannelBase::setFlag(v12, 0x400000, 1);
      v13 = (v11 + 2584);
      goto LABEL_23;
    }

    if ((ValueAsInt & 0xFFFFFFFE) == 4)
    {
      OZChannelBase::resetFlag(v12, 0x400000, 1);
      OZChannelBase::resetFlag((v11 + 2584), 0x400000, 1);
      if (ValueAsInt == 4)
      {
        OZChannelBase::setFlag((v11 + 1840), 0x400000, 1);
        goto LABEL_22;
      }
    }

    else
    {
      OZChannelBase::setFlag(v12, 0x400000, 1);
      OZChannelBase::setFlag((v11 + 2584), 0x400000, 1);
    }

    OZChannelBase::resetFlag((v11 + 1840), 0x400000, 1);
LABEL_22:
    v13 = (v11 + 1248);
    if (!v6)
    {
      result = OZChannelBase::resetFlag(v13, 0x400000, 1);
      continue;
    }

LABEL_23:
    result = OZChannelBase::setFlag(v13, 0x400000, 1);
  }

  return result;
}

uint64_t OZ3DEnginePhysicsFieldBehavior::getLockDependencies(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t OZ3DEnginePhysicsFieldBehavior::getLockingGroups(OZ3DEnginePhysicsFieldBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toOZ3DEnginePhysicsFieldBehavior::getLockingGroups(OZ3DEnginePhysicsFieldBehavior *this)
{
  v1 = this - 336;
  result = (*(*(this - 42) + 336))(this - 336);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

void OZARFaceAnchorElement::OZARFaceAnchorElement(OZARFaceAnchorElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3, a4);
  *v5 = &unk_287299348;
  v5[2] = &unk_287299C80;
  v5[6] = &unk_287299ED8;
  v5[816] = &unk_287299F30;
  PCURL::PCURL(&v6, @"Channel Image Element Footage Folder");
  OZChannelFolder::OZChannelFolder((this + 24424), &v6, (this + 320), 0x190u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 24552), &v6, (this + 24424), 0x191u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 26136), &v6, (this + 24424), 0x192u, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Channel Image Element Footage");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 27720), &v6, (this + 24424), 0x193u, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Base Color");
  OZChannelColor::OZChannelColor((this + 29304), 0.0, 0.0, 0.0, 0.0, &v6, (this + 448), 0x194u, 0, 6u);
  PCString::~PCString(&v6);
  PCMutex::PCMutex((this + 30464));
  *(this + 30552) = 0;
  *(this + 30536) = 0u;
}

void sub_260198344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelColor::~OZChannelColor((v10 + 29304));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v14));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v13));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v10 + v12));
  OZChannelFolder::~OZChannelFolder((v10 + v11));
  OZARAnchorElement::~OZARAnchorElement(v10);
  _Unwind_Resume(a1);
}

void OZARFaceAnchorElement::OZARFaceAnchorElement(OZARFaceAnchorElement *this, const OZARFaceAnchorElement *a2, uint64_t a3)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3);
  *v5 = &unk_287299348;
  *(v5 + 16) = &unk_287299C80;
  *(v5 + 48) = &unk_287299ED8;
  *(v5 + 6528) = &unk_287299F30;
  OZChannelFolder::OZChannelFolder((v5 + 24424), (a2 + 24424), (this + 320));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 24552), (a2 + 24552), (this + 24424));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 26136), (a2 + 26136), (this + 24424));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 27720), (a2 + 27720), (this + 24424));
  OZChannelColor::OZChannelColor((this + 29304), (a2 + 29304), (this + 448));
  PCMutex::PCMutex((this + 30464));
  *(this + 30552) = 0;
  *(this + 30536) = 0u;
}

void sub_260198548(_Unwind_Exception *a1)
{
  OZChannelColor::~OZChannelColor((v1 + v6));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v5));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v4));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v1 + v3));
  OZChannelFolder::~OZChannelFolder((v1 + v2));
  OZARAnchorElement::~OZARAnchorElement(v1);
  _Unwind_Resume(a1);
}

void OZARFaceAnchorElement::~OZARFaceAnchorElement(OZARFaceAnchorElement *this)
{
  *this = &unk_287299348;
  *(this + 2) = &unk_287299C80;
  *(this + 6) = &unk_287299ED8;
  *(this + 816) = &unk_287299F30;
  v2 = *(this + 3818);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  PCMutex::~PCMutex((this + 30464));
  *(this + 3663) = &unk_28724C608;
  *(this + 3665) = &unk_28724C978;
  OZChannel::~OZChannel((this + 30312));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 29304));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 27720));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 26136));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 24552));
  OZChannelFolder::~OZChannelFolder((this + 24424));

  OZARAnchorElement::~OZARAnchorElement(this);
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZARFaceAnchorElement::~OZARFaceAnchorElement(OZARFaceAnchorElement *this)
{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 16));
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 48));
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 6528));
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZARFaceAnchorElement::~OZARFaceAnchorElement((this - 6528));

  JUMPOUT(0x2666E9F00);
}

void OZARFaceAnchorElement::didFinishLoadingIntoScene(OZARFaceAnchorElement *this)
{
  OZ3DEngineSceneElement::didFinishLoadingIntoScene(this);

  OZARFaceAnchorElement::initFile(this);
}

void OZARFaceAnchorElement::initFile(OZARFaceAnchorElement *this)
{
  {
    v4 = v3;
    v13.var0 = 0;
    PCString::set(&v13, @"face.arface");
    PCURL::PCURL(v14, &v13, 0);
    PCString::~PCString(&v13);
    OZSceneNodeFile::setIsFileMissing(v4, 0);
    (*(*v4 + 1400))(v4, v14);
    (*(*this + 1448))(this, v4, 0, 0);
    v5 = v14;
  }

  else
  {
    v14[0].var0 = 0;
    PCString::set(v14, @"face.arface");
    PCURL::PCURL(&v13, v14, 0);
    PCString::~PCString(v14);
    PCURL::getShortFilename(&v13, &v12);
    OZChannelBase::getNextUniqueID(v6);
    *&v14[0].var0 = xmmword_260850900;
    SceneNode = OZApplication::createSceneNode(theApp, v14);
    PCString::~PCString(&v12);
    PCURL::getAsFileSystemString(&v13, v14);
    v8 = PCString::ns_str(v14);
    isSceneFileValid = OZ3DEngineSceneFile::isSceneFileValid(v8, v9);
    PCString::~PCString(v14);
    if (isSceneFileValid)
    {
      OZSceneNodeFile::setIsFileMissing(SceneNode, 0);
      (*(*SceneNode + 1400))(SceneNode, &v13);
      v11 = *(OZApplication::getCurrentDoc(theApp) + 3);
      if (v11)
      {
        PCURL::PCURL(v14, @"Undo Footage Import");
        OZScene::addNode(v11, SceneNode, v14, 40, 0, 0);
        PCString::~PCString(v14);
        (*(*this + 1448))(this, SceneNode, 0, 0);
        OZScene::recalcDependencies(v11);
      }
    }

    v5 = &v13;
  }

  PCURL::~PCURL(v5);
}

void sub_260198B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, PCString a11)
{
  PCString::~PCString(&a11);
  PCURL::~PCURL(&a10);
  _Unwind_Resume(a1);
}

void non-virtual thunk toOZARFaceAnchorElement::didFinishLoadingIntoScene(OZARFaceAnchorElement *this)
{
  v1 = (this - 16);
  OZ3DEngineSceneElement::didFinishLoadingIntoScene((this - 16));

  OZARFaceAnchorElement::initFile(v1);
}

void OZARFaceAnchorElement::makeDataFor3DEngineObject(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, double a6)
{
  PCColor::PCColor(&v15);
  __p = *a3;
  OZChannelColor::getColor((a1 + 29304), &__p, &v15, 0.0);
  PCMutex::lock((a1 + 30464));
  v12 = *(a1 + 30536);
  if (v12)
  {
    [v12 geometry];
    operator new();
  }

  v13 = Li3DEngineObjectDataBase::defaultPerInstanceColor(0);
  OZ3DEngineSceneElement::makeDataFor3DEngineObject(a1, a2, a3, a6, *v13, v13[1], v13[2], v13[3], 1.0, a4, a5, 0, 0, 0);
}

void sub_260198F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CGColorSpace *a35)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a23);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a35);
  _Unwind_Resume(a1);
}

uint64_t OZLi3DEngineObjectFaceData::setHitCheckRenderTexture(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 2008);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 2008) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t OZARFaceAnchorElement::setFaceAnchor(id *this, ARFaceAnchor *a2)
{
  v4 = (this + 3808);
  PCMutex::lock((this + 3808));

  this[3817] = a2;
  return PCMutex::unlock(v4);
}

CGColorSpace **RenderParamsForHitCheck@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  PCImageAttributes::PCImageAttributes(&v35);
  v35 = 2;
  v36 = *a3;
  BitsPerChannel = PCBitDepth::getBitsPerChannel(2);
  v38 = 0xD00000004;
  v40 = 3553;
  OZRenderParams::OZRenderParams(a4);
  if (a1)
  {
    (*(*a1 + 64))(&v24, a1);
    OZRenderParams::setWorkingColorDescription(a4, &v24);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v24._pcColorDesc._colorSpaceRef._obj);
    v8 = (*(*a1 + 72))(a1);
    OZRenderParams::setBlendingGamma(a4, v8);
  }

  *a4 = *a2;
  *(a4 + 16) = *(a2 + 16);
  *(a4 + 392) = 0;
  *(a4 + 400) = 0;
  OZRenderParams::setImageAttr(a4, &v35);
  v9 = (a4 + 392);
  *(a4 + 202) = 1;
  *(a4 + 1312) = 0;
  *(a4 + 392) = 0u;
  *(a4 + 408) = 0u;
  *(a4 + 696) = 1;
  OZRenderParams::setRenderQuality(a4, 0);
  OZRenderParams::setTextRenderQuality(a4, 0);
  OZRenderParams::setDoHighQualityResampling(a4, 0);
  OZRenderParams::setDoShapeAntialiasing(a4, 1);
  OZRenderParams::setDo3DIntersectionAntialiasing(a4, 0);
  HGComputeDeviceManager::GetCPUComputeDevice(v10, v33);
  *&v24._pcColorDesc._colorSpaceRef._obj = *&v33[0].var0;
  v33[0].var0 = 0;
  v33[1].var0 = 0;
  OZRenderParams::setDestinationDevice(a4, &v24);
  if (*&v24._pcColorDesc._dynamicRange)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v24._pcColorDesc._dynamicRange);
  }

  if (v33[1].var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33[1].var0);
  }

  v11 = *a3;
  v12 = a3[1];
  *(a4 + 648) = 0;
  *(a4 + 656) = v11;
  *(a4 + 660) = v12;
  *(a4 + 584) = 0u;
  *(a4 + 600) = v11;
  *(a4 + 608) = v12;
  *v9 = 0u;
  *(a4 + 408) = 0u;
  *(a4 + 1211) = 0;
  if (a1)
  {
    if (v13)
    {
      v14 = v13;
      if ((*(*v13 + 272))(v13))
      {
        v15 = (*(*v14 + 272))(v14);
        SanitizedViewGamut = OZScene::getSanitizedViewGamut(v15);
        v17 = PCGetGamutColorSpace(SanitizedViewGamut);
        PCColorSpaceHandle::setColorSpace((a4 + 784), v17);
        operator new();
      }
    }
  }

  OZRenderParams::layoutElementAtSize(a4, a1, a3);
  LiRenderingTechnology::LiRenderingTechnology(v33);
  HGUserJob::SetPriority(v33, 2);
  v18 = v34[0];
  *(a4 + 1316) = *&v33[0].var0;
  *(a4 + 1332) = v18;
  *(a4 + 1346) = *(v34 + 14);
  *v9 = 0u;
  *(a4 + 408) = 0u;
  v32 = 0x3FF0000000000000;
  v28 = 0;
  v29 = 0x3FF0000000000000;
  *&v24._pcColorDesc._colorSpaceRef._obj = 0x3FF0000000000000uLL;
  *&v24._pcColorDesc._toneMapMethod._gain = 0;
  *&v24._isPremultiplied = 0;
  v27 = 0;
  v30 = 0u;
  v31 = 0u;
  v19 = vnegq_f64(0);
  v25 = xmmword_260342D20;
  v26 = v19;
  v19.f64[0] = vcvtd_n_f64_s32(*a3, 1uLL);
  PCMatrix44Tmpl<double>::leftTranslate(&v24, v19, vcvtd_n_f64_s32(a3[1], 1uLL), 0.0);
  if ((a4 + 808) != &v24)
  {
    for (i = 0; i != 128; i += 32)
    {
      v21 = (a4 + 808 + i);
      v22 = *(&v24._pcColorDesc._toneMapMethod._gain + i);
      *v21 = *(&v24._pcColorDesc._colorSpaceRef._obj + i);
      v21[1] = v22;
    }
  }

  *(a4 + 936) = 1;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v39);
}

void sub_26019957C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, PCSharedCount a25, uint64_t a26)
{
  PCSharedCount::~PCSharedCount(&a25);
  PCSharedCount::~PCSharedCount(v27 + 1);
  OZRenderParams::~OZRenderParams(v26);
  PCCFRef<CGColorSpace *>::~PCCFRef((v28 - 128));
  _Unwind_Resume(a1);
}

void OZARFaceAnchorElement::hitCheck(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 18776));
  *(a1 + 30552) = 1;
  v15 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v16 = _Q0;
  v7 = (*(*a1 + 272))(a1);
  OZScene::getSceneBounds(v7, &v15);
  v14[0] = *&v16;
  v14[1] = *(&v16 + 1);
  RenderParamsForHitCheck((a1 + 6528), MEMORY[0x277CC08F0], v14, v13);
  HGGLGetCurrentContext();
  if (PCColorSpaceHandle::getCGColorSpace(&v12))
  {
    v11.var0 = v12.var0;
    HGGLContext::Share();
  }

  v8 = PGLMasterEAGLContext();
  HGGLContextPtr::HGGLContextPtr(&v10, v8);
  v9.var0 = v10.var0;
  HGGLContext::Share();
}

void sub_260199A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, PCSharedCount a21, uint64_t a22, PCSharedCount a23, PCSharedCount a24, PCSharedCount a25, char a26)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a20)
  {
    (*(*a20 + 24))(a20);
  }

  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  PCSharedCount::PCSharedCount(&a23);
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  PCSharedCount::PCSharedCount(&a25);
  OZRenderParams::~OZRenderParams(&a26);
  std::recursive_mutex::unlock((v26 + v28));
  _Unwind_Resume(a1);
}

void sub_260199F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, PCSharedCount a15, PCSharedCount a16)
{
  v17 = v16;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  PCSharedCount::PCSharedCount(&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c25_ZTS5HGRefI11HGGLContextE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t __destroy_helper_block_e8_40c25_ZTS5HGRefI11HGGLContextE(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t SetFaceMaterialProperties(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [objc_msgSend(a1 geometry];
  result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v14;
    v7 = *MEMORY[0x277CDBBA0];
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        [v9 setLitPerPixel:1];
        [v9 setLightingModelName:v7];
        if (a2)
        {
          v10 = [v9 diffuse];
          v11 = a2;
        }

        else
        {
          v12 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
          v10 = [v9 diffuse];
          v11 = v12;
        }

        [v10 setContents:v11];
        [objc_msgSend(v9 "specular")];
        [objc_msgSend(v9 "roughness")];
        ++v8;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t UpdateFaceGeometry(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_msgSend(a1 "rootNode")];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
  }

  else
  {
    v10 = [MEMORY[0x277CE53D8] faceGeometryWithDevice:a4 fillMesh:0];
    v9 = [MEMORY[0x277CDBAA8] nodeWithGeometry:v10];
    [objc_msgSend(a1 "rootNode")];
  }

  result = SetFaceMaterialProperties(v9, a3);
  if (a2)
  {
    v12 = [v9 geometry];

    return [v12 updateFromFaceGeometry:a2];
  }

  return result;
}

BOOL ___Z18UpdateFaceGeometryP8SCNSceneP14ARFaceGeometry16HGMTLTextureType15HGMTLDeviceType_block_invoke(uint64_t a1, void *a2)
{
  result = 0;
  if ([a2 geometry])
  {
    [a2 geometry];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }
  }

  return result;
}

uint64_t OZLi3DEngineObjectFaceData::OZLi3DEngineObjectFaceData(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, void *a5, const OZRenderParams *a6, double a7)
{
  v13 = a3[1];
  v26[0] = *a3;
  v26[1] = v13;
  v14 = a3[3];
  v26[2] = a3[2];
  v26[3] = v14;
  v15 = Li3DEngineObjectDataBase::defaultPerInstanceColor(a1);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  v24[1] = 0;
  v24[2] = 0;
  v24[0] = &unk_2871F25A8;
  v25 = 0;
  Li3DEngineObjectData::Li3DEngineObjectData(a1, a2, v26, 0, 0, 0, v24, a7, v16, v17, v18, v19, 1.0);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v24);
  *a1 = &unk_28729A058;
  OZRenderParams::OZRenderParams((a1 + 576), a6);
  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  v20 = *a4;
  v21 = a4[2];
  *(a1 + 2056) = a4[1];
  *(a1 + 2072) = v21;
  *(a1 + 2040) = v20;
  v22 = *(a4 + 6);
  *(a1 + 2088) = v22;
  if (v22)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v22);
  }

  *(a1 + 2096) = a5;
  return a1;
}

void sub_26019A4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 2016);
  std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  v11 = *(v9 + 2008);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = *(v9 + 2000);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  OZRenderParams::~OZRenderParams((v9 + 576));
  Li3DEngineObjectData::~Li3DEngineObjectData(v9);
  _Unwind_Resume(a1);
}

void OZLi3DEngineObjectFaceData::~OZLi3DEngineObjectFaceData(OZLi3DEngineObjectFaceData *this)
{
  *this = &unk_28729A058;

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 261);
  v4 = (this + 2016);
  std::vector<std::pair<PCPtr<LiImageSource>,PCMatrix44Tmpl<double>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 251);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 250);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  OZRenderParams::~OZRenderParams((this + 576));
  Li3DEngineObjectData::~Li3DEngineObjectData(this);
}

{
  OZLi3DEngineObjectFaceData::~OZLi3DEngineObjectFaceData(this);

  JUMPOUT(0x2666E9F00);
}

void OZLi3DEngineObjectFaceData::makeFaceStickerTextureNode(OZLi3DEngineObjectFaceData *this, LiAgent *a2)
{
  v3 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v3);
  memset(v5, 0, 24);
  PCColor::getComponents(this + 510, v5);
  v4 = HGObject::operator new(0x1A0uLL);
  HGSolidColor::HGSolidColor(v4);
}

void sub_26019AA7C(_Unwind_Exception *a1)
{
  LiImageFilterChain::~LiImageFilterChain(v3 + 2);
  (*(*v2 + 24))(v2);
  v6 = *(v4 - 120);
  if (v6)
  {
    *(v4 - 112) = v6;
    operator delete(v6);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

OZLi3DEngineObjectFaceData *OZLi3DEngineObjectFaceData::getHelium3DEngine(OZLi3DEngineObjectFaceData *this, LiAgent *a2)
{
  if ((*(this + 432) & 1) == 0)
  {
    OZLi3DEngineObjectFaceData::generateFaceStickerTexture(this, a2);
  }

  return this;
}

void sub_26019ACEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZLi3DEngineObjectFaceData::applyChanges(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 2000;
  if (*(a1 + 432))
  {
    v3 = 2008;
  }

  return UpdateFaceGeometry(a2, *(a1 + 2096), *(*(a1 + v3) + 144), a3);
}

void sub_26019AE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<OZLi3DEngineTexturedObjectData>::shared_ptr[abi:ne200100]<OZLi3DEngineTexturedObjectData,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<OZLi3DEngineObjectFaceData *,std::shared_ptr<OZLi3DEngineObjectFaceData>::__shared_ptr_default_delete<OZLi3DEngineObjectFaceData,OZLi3DEngineObjectFaceData>,std::allocator<OZLi3DEngineObjectFaceData>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<OZLi3DEngineObjectFaceData *,std::shared_ptr<OZLi3DEngineObjectFaceData>::__shared_ptr_default_delete<OZLi3DEngineObjectFaceData,OZLi3DEngineObjectFaceData>,std::allocator<OZLi3DEngineObjectFaceData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OZARFaceAnchorElement::hitCheck()
{
  if (__cxa_guard_acquire(&qword_280C5EA20))
  {
    _MergedGlobals_40 = 0;
    __cxa_atexit(PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry, &_MergedGlobals_40, &dword_25F8F0000);
    __cxa_guard_release(&qword_280C5EA20);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5EA30))
  {
    qword_280C5EA28 = 0;
    __cxa_atexit(PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry, &qword_280C5EA28, &dword_25F8F0000);
    __cxa_guard_release(&qword_280C5EA30);
  }
}

void OZTextLayout::OZTextLayout(OZTextLayout *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZLockingElement::OZLockingElement(this, a2, a3, a4);
  *v4 = &unk_28729A138;
  v4[25] = &unk_28729A1E0;
  v4[27] = &unk_28729AAB8;
  v4[31] = &unk_28729AD10;
  v4[841] = &unk_28729AD68;
  v4[2372] = &unk_28729AE40;
}

void OZTextLayout::OZTextLayout(OZTextLayout *this, const OZTextLayout *a2, uint64_t a3)
{
  OZLockingElement::OZLockingElement(this, (a2 + 200), a3);
  *v3 = &unk_28729A138;
  v3[25] = &unk_28729A1E0;
  v3[27] = &unk_28729AAB8;
  v3[31] = &unk_28729AD10;
  v3[841] = &unk_28729AD68;
  v3[2372] = &unk_28729AE40;
}

void OZFolderMaterialProperties::~OZFolderMaterialProperties(OZFolderMaterialProperties *this)
{
  *this = &unk_28729B1E0;
  *(this + 2) = &unk_28729B4C8;
  OZChannel::~OZChannel((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  *this = &unk_28729B1E0;
  *(this + 2) = &unk_28729B4C8;
  OZChannel::~OZChannel((this + 128));
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void OZLightingFolder::OZLightingFolder(OZLightingFolder *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZLightingFolder_Factory::getInstance(this);
  OZChannelFolder::OZChannelFolder(this, Instance, a2, a3, a4, a5, 0);
  *this = &unk_28729AEA0;
  *(this + 2) = &unk_28729B188;
  PCURL::PCURL(&v15, @"Channel Lighting Parameter");
  PCURL::PCURL(&v14, @"Channel Lighting Switch");
  OZChannelEnum::OZChannelEnum((this + 128), 0, &v15, &v14, this, 0xE6u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Material Specularity Toggle");
  OZChannelBool::OZChannelBool((this + 384), 0, &v15, this, 0xE8u, 0, 0, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Material Shininess Index");
  v12 = OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(v11);
  v13 = OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(v12);
  OZChannelDouble::OZChannelDouble((this + 536), 50.0, &v15, this, 0xE9u, 0x8000, v12, v13);
  PCString::~PCString(&v15);
  PCURL::PCURL(&v15, @"Channel Material Properties");
  OZFolderMaterialProperties::OZFolderMaterialProperties((this + 688), &v15, this, 0xE7u, 10);
  PCString::~PCString(&v15);
}

void sub_26019B3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 536));
  OZChannelBool::~OZChannelBool((v12 + 384));
  OZChannelEnum::~OZChannelEnum((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

uint64_t OZLightingFolder_Factory::getInstance(OZLightingFolder_Factory *this)
{
  if (atomic_load_explicit(&OZLightingFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLightingFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLightingFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLightingFolder_Factory::_instance;
}

void OZLightingFolder::OZLightingFolder(OZLightingFolder *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, 0);
  *v5 = &unk_28729AEA0;
  v5[2] = &unk_28729B188;
  PCURL::PCURL(&v10, @"Channel Lighting Parameter");
  PCURL::PCURL(&v9, @"Channel Lighting Switch");
  OZChannelEnum::OZChannelEnum((this + 128), 0, &v10, &v9, this, 0xE6u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Material Specularity Toggle");
  OZChannelBool::OZChannelBool((this + 384), 0, &v10, this, 0xE8u, 0, 0, 0);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Material Shininess Index");
  Instance = OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(v6);
  v8 = OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 536), 50.0, &v10, this, 0xE9u, 0x8000, Instance, v8);
  PCString::~PCString(&v10);
  PCURL::PCURL(&v10, @"Channel Material Properties");
  OZFolderMaterialProperties::OZFolderMaterialProperties((this + 688), &v10, this, 0xE7u, 10);
  PCString::~PCString(&v10);
}

void sub_26019B688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 536));
  OZChannelBool::~OZChannelBool((v12 + 384));
  OZChannelEnum::~OZChannelEnum((v12 + 128));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void OZLightingFolder::OZLightingFolder(OZLightingFolder *this, const OZLightingFolder *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_28729AEA0;
  v5[2] = &unk_28729B188;
  OZChannelEnum::OZChannelEnum((v5 + 16), (a2 + 128), this);
  OZChannelBool::OZChannelBool((this + 384), (a2 + 384), this);
  OZChannel::OZChannel((this + 536), (a2 + 536), this);
  *(this + 67) = &unk_287245C60;
  *(this + 69) = &unk_287245FC0;
  OZFolderMaterialProperties::OZFolderMaterialProperties((this + 688), (a2 + 688), this);
}

void sub_26019B80C(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 384));
  OZChannelEnum::~OZChannelEnum((v1 + 128));
  OZChannelFolder::~OZChannelFolder(v1);
  _Unwind_Resume(a1);
}

void OZLightingFolder::~OZLightingFolder(OZLightingFolder *this)
{
  *this = &unk_28729AEA0;
  *(this + 2) = &unk_28729B188;
  v2 = (this + 688);
  *(this + 86) = &unk_28729B1E0;
  *(this + 88) = &unk_28729B4C8;
  OZChannel::~OZChannel((this + 816));
  OZChannelFolder::~OZChannelFolder(v2);
  OZChannel::~OZChannel((this + 536));
  OZChannelBool::~OZChannelBool((this + 384));
  OZChannelEnum::~OZChannelEnum((this + 128));

  OZChannelFolder::~OZChannelFolder(this);
}

{
  OZLightingFolder::~OZLightingFolder(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZLightingFolder::~OZLightingFolder(OZLightingFolder *this)
{
  OZLightingFolder::~OZLightingFolder((this - 16));
}

{
  OZLightingFolder::~OZLightingFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

OZLightingFolder *OZLightingFolder::copy(OZLightingFolder *this, const OZLightingFolder *a2, const CMTime *a3)
{
  if (a2 != this)
  {
    ValueAsInt = OZChannel::getValueAsInt((a2 + 128), a3, 0.0);
    v7 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 128), MEMORY[0x277CC08F0], ValueAsInt, 0);
    v8 = OZChannel::getValueAsInt((a2 + 384), a3, 0.0);
    OZChannel::setValue((this + 384), v7, v8, 0);
    OZChannel::getValueAsDouble((a2 + 536), a3, 0.0);
    OZChannel::setValue((this + 536), a3, v9, 0);
    OZFolderMaterialProperties::copy((this + 688), (a2 + 688), a3);
  }

  return this;
}

OZChannelBase *OZFolderMaterialProperties::copy(OZChannelBase *this, OZChannelBase *a2, const CMTime *a3)
{
  if (a2 != this)
  {
    isEnabled = OZChannelBase::isEnabled(a2, 0, 0);
    (*(this->var0 + 13))(this, isEnabled, 0);
    OZChannel::getValueAsDouble(&a2[1].var2, a3, 0.0);
    OZChannel::setValue(&this[1].var2, a3, v7, 0);
  }

  return this;
}

uint64_t OZLightingFolder::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    OZChannelFolder::operator=(a1);
  }

  return a1;
}

uint64_t OZLightingFolder::parseEnd(OZLightingFolder *this, PCSerializerReadStream *a2)
{
  v4 = OZChannelFolder::parseEnd(this, a2);
  if (v4)
  {
    v5 = *(a2 + 26);
    if (v5 < 5 || (v5 == 5 ? (v6 = *(a2 + 27) > 5u) : (v6 = 1), !v6))
    {
      if (((*(*(this + 102) + 552))(this + 816, 0) & 1) != 0 || (DefaultValue = OZChannel::getDefaultValue((this + 816)), OZChannel::getValueAsDouble((this + 816), MEMORY[0x277CC08F0], 0.0), DefaultValue != v8) || (OZChannelFolder::hasKeypoints((this + 688), 0) & 1) != 0 || OZChannelBase::isEnabled((this + 688), 0, 0))
      {
        v9 = MEMORY[0x277CC08F0];
        OZChannel::copyKeyframesFromChannel((this + 384), MEMORY[0x277CC08F0], (this + 688));
        isEnabled = OZChannelBase::isEnabled((this + 688), 0, 0);
        OZChannel::setValue((this + 384), v9, isEnabled, 0);
        OZChannel::copyKeyframesFromChannel((this + 536), v9, (this + 816));
        OZChannel::getValueAsDouble((this + 816), v9, 0.0);
        OZChannel::setValue((this + 536), v9, v11, 0);
      }
    }

    OZChannelFolder::resetToDefault((this + 688), 0);
    OZChannelBase::setFlag((this + 688), 10, 0);
  }

  return v4;
}

uint64_t OZLightingFolder::buildLiMaterialProperties@<X0>(OZLightingFolder *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  LiMaterialProperties::LiMaterialProperties(a3);
  PCWorkingColorVector::PCWorkingColorVector(&v9, 1.0, 1.0, 1.0, 1.0);
  *a3 = v9;
  PCWorkingColorVector::PCWorkingColorVector(&v9, 1.0, 1.0, 1.0, 1.0);
  *(a3 + 24) = v9;
  PCWorkingColorVector::PCWorkingColorVector(&v9, 1.0, 1.0, 1.0, 1.0);
  *(a3 + 64) = v9;
  PCWorkingColorVector::PCWorkingColorVector(&v9, 0.0, 0.0, 0.0, 0.0);
  *(a3 + 48) = v9;
  OZChannel::getValueAsDouble((this + 536), a2, 0.0);
  *(a3 + 88) = v6;
  result = OZChannel::getValueAsInt((this + 384), a2, 0.0);
  v8 = result != 0;
  if (*(a3 + 97) != v8)
  {
    *(a3 + 97) = v8;
  }

  *(a3 + 98) = 257;
  return result;
}

void OZFolderMaterialProperties::OZFolderMaterialProperties(OZFolderMaterialProperties *this, const OZFolderMaterialProperties *a2, OZChannelFolder *a3)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3);
  *v5 = &unk_28729B1E0;
  *(v5 + 16) = &unk_28729B4C8;
  OZChannel::OZChannel((v5 + 128), (a2 + 128), this);
  *(this + 16) = &unk_287245C60;
  *(this + 18) = &unk_287245FC0;
}

void OZFolderMaterialProperties::OZFolderMaterialProperties(OZFolderMaterialProperties *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  OZChannelFolder::OZChannelFolder(this, a2, a3, a4, a5, 0);
  *v6 = &unk_28729B1E0;
  v6[2] = &unk_28729B4C8;
  PCURL::PCURL(&v10, @"Channel Material Shininess Index");
  Instance = OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(v7);
  v9 = OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 128), 50.0, &v10, this, 8u, 0, Instance, v9);
  PCString::~PCString(&v10);
  (*(*this + 104))(this, 0, 0);
  (*(*this + 128))(this);
}

void non-virtual thunk toOZFolderMaterialProperties::~OZFolderMaterialProperties(OZFolderMaterialProperties *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_28729B1E0;
  *this = &unk_28729B4C8;
  OZChannel::~OZChannel((this + 112));

  OZChannelFolder::~OZChannelFolder(v1);
}

{
  OZFolderMaterialProperties::~OZFolderMaterialProperties((this - 16));
}

uint64_t OZFolderMaterialProperties::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    OZChannelFolder::operator=(a1);
  }

  return a1;
}

uint64_t OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(OZLightingFolder::OZLightingFolder_channelShininessIndexImpl *this)
{
  if (atomic_load_explicit(&OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(void)::OZLightingFolder_channelShininessIndexImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(void)::OZLightingFolder_channelShininessIndexImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::_OZLightingFolder_channelShininessIndex;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLightingFolder::OZLightingFolder_channelShininessIndexImpl::_OZLightingFolder_channelShininessIndex)
  {
    operator new();
  }
}

uint64_t OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(OZLightingFolder::OZLightingFolder_channelShininessIndexInfo *this)
{
  if (atomic_load_explicit(&OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(void)::OZLightingFolder_channelShininessIndexInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(void)::OZLightingFolder_channelShininessIndexInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::_OZLightingFolder_channelShininessIndexInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::_OZLightingFolder_channelShininessIndexInfo)
  {
    operator new();
  }
}

OZLightingFolder::OZLightingFolder_channelShininessIndexInfo *OZLightingFolder::OZLightingFolder_channelShininessIndexInfo::OZLightingFolder_channelShininessIndexInfo(OZLightingFolder::OZLightingFolder_channelShininessIndexInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_28729B5C8;
  *(this + 10) = &unk_28729B5E8;
  return this;
}

void OZLightingFolder_Factory::OZLightingFolder_Factory(OZLightingFolder_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260852870;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28729B640;
  *(this + 16) = &unk_28729B710;
}

uint64_t OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl *this)
{
  if (atomic_load_explicit(&OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(void)::OZFolderMaterialProperties_channelShininessIndexImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(void)::OZFolderMaterialProperties_channelShininessIndexImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::_OZFolderMaterialProperties_channelShininessIndex;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexImpl::_OZFolderMaterialProperties_channelShininessIndex)
  {
    operator new();
  }
}

uint64_t OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo *this)
{
  if (atomic_load_explicit(&OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(void)::OZFolderMaterialProperties_channelShininessIndexInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(void)::OZFolderMaterialProperties_channelShininessIndexInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::_OZFolderMaterialProperties_channelShininessIndexInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::_OZFolderMaterialProperties_channelShininessIndexInfo)
  {
    operator new();
  }
}

OZChannelInfo *OZFolderMaterialProperties::OZFolderMaterialProperties_channelShininessIndexInfo::OZFolderMaterialProperties_channelShininessIndexInfo(OZChannelInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, "%");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_28729B7E0;
  *(this + 10) = &unk_28729B800;
  return this;
}

void OZAlignToBehavior::OZAlignToBehavior(OZAlignToBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *(v5 + 536) = &unk_28729BF10;
  OZLocking::OZLocking((v5 + 544));
  *this = &unk_28729B858;
  *(this + 2) = &unk_28729BB38;
  *(this + 6) = &unk_28729BD90;
  *(this + 42) = &unk_28729BDE8;
  *(this + 67) = &unk_28729BE10;
  *(this + 68) = &unk_28729BE70;
  PCURL::PCURL(&v7, @"Align To Behavior Source");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 744), &v7, (this + 56), 0xC8u, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Alignment Enum");
  PCURL::PCURL(&v6, @"Align To Behavior Target Alignment");
  OZChannelEnum::OZChannelEnum((this + 904), &v7, &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Custom Target Alignment");
  OZChannelPositionPercent::OZChannelPositionPercent((this + 1160), &v7, (this + 56), 0xCCu, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Alignment Enum");
  PCURL::PCURL(&v6, @"Align To Behavior Source Alignment");
  OZChannelEnum::OZChannelEnum((this + 1608), &v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Custom Source Alignment");
  OZChannelPositionPercent::OZChannelPositionPercent((this + 1864), &v7, (this + 56), 0xCDu, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Source Offset");
  OZChannelPosition3D::OZChannelPosition3D((this + 2312), &v7, (this + 56), 0xCBu, 0, 3u);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Frame Alignment Enum");
  PCURL::PCURL(&v6, @"Align To Behavior Frame Alignment");
  OZChannelEnum::OZChannelEnum((this + 3200), &v7, &v6, (this + 56), 0xD1u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Source Frame");
  OZChannelPercent::OZChannelPercent((this + 3456), &v7, (this + 56), 0xD2u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Transition Enum");
  PCURL::PCURL(&v6, @"Align To Behavior Transition");
  OZChannelEnum::OZChannelEnum((this + 3608), &v7, &v6, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Custom Mix Factor");
  OZChannelPercent::OZChannelPercent((this + 3864), &v7, (this + 56), 0xCFu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior End Offset");
  OZChannelUint32::OZChannelUint32((this + 4016), &v7, (this + 56), 0xD3u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Align To Behavior Ignore Behaviors");
  OZChannelBool::OZChannelBool((this + 4168), &v7, (this + 56), 0xD0u, 0, 0, 0);
  PCString::~PCString(&v7);
  *(this + 1080) = 0;
  *(this + 2162) = 256;
  *(this + 4326) = 1;
  *(this + 559) = 0x3FF0000000000000;
  *(this + 554) = 0x3FF0000000000000;
  *(this + 549) = 0x3FF0000000000000;
  *(this + 544) = 0x3FF0000000000000;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 275) = 0u;
  *(this + 276) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 578) = 0x3FF0000000000000;
  *(this + 573) = 0x3FF0000000000000;
  *(this + 568) = 0x3FF0000000000000;
  *(this + 563) = 0x3FF0000000000000;
  *(this + 282) = 0u;
  *(this + 283) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  *(this + 287) = 0u;
  *(this + 288) = 0u;
  *(this + 597) = 0x3FF0000000000000;
  *(this + 592) = 0x3FF0000000000000;
  *(this + 587) = 0x3FF0000000000000;
  *(this + 582) = 0x3FF0000000000000;
  *(this + 4664) = 0u;
  *(this + 4680) = 0u;
  *(this + 294) = 0u;
  *(this + 295) = 0u;
  *(this + 4744) = 0u;
  *(this + 4760) = 0u;
  *(this + 598) = 0;
  operator new();
}

void sub_26019D1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache((v10 + 4800));
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache((v10 + 4792));
  OZChannelBool::~OZChannelBool((v10 + v12));
  OZChannel::~OZChannel((v10 + 4016));
  OZChannelPercent::~OZChannelPercent((v10 + 3864));
  OZChannelEnum::~OZChannelEnum((v10 + 3608));
  OZChannelPercent::~OZChannelPercent((v10 + 3456));
  OZChannelEnum::~OZChannelEnum((v10 + 3200));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 2312));
  OZChannel2D::~OZChannel2D((v10 + 1864));
  OZChannelEnum::~OZChannelEnum((v10 + 1608));
  OZChannel2D::~OZChannel2D((v10 + 1160));
  OZChannelEnum::~OZChannelEnum((v10 + 904));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v10 + 744));
  OZLocking::~OZLocking(v11);
  OZChannelBehavior::~OZChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZAlignToBehavior::OZAlignToBehavior(OZAlignToBehavior *this, const OZAlignToBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *(v5 + 536) = &unk_28729BF10;
  OZLocking::OZLocking((v5 + 544));
  *this = &unk_28729B858;
  *(this + 2) = &unk_28729BB38;
  *(this + 6) = &unk_28729BD90;
  *(this + 42) = &unk_28729BDE8;
  *(this + 67) = &unk_28729BE10;
  *(this + 68) = &unk_28729BE70;
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 744), (a2 + 744), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 904), (a2 + 904), (this + 56));
  OZChannelPositionPercent::OZChannelPositionPercent((this + 1160), (a2 + 1160), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1608), (a2 + 1608), (this + 56));
  OZChannelPositionPercent::OZChannelPositionPercent((this + 1864), (a2 + 1864), (this + 56));
  OZChannelPosition3D::OZChannelPosition3D((this + 2312), (a2 + 2312), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 3200), (a2 + 3200), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 3456), (a2 + 3456), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 3608), (a2 + 3608), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 3864), (a2 + 3864), (this + 56));
  OZChannel::OZChannel((this + 4016), (a2 + 4016), (this + 56));
  *(this + 502) = &unk_287246400;
  *(this + 504) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 4168), (a2 + 4168), (this + 56));
  *(this + 1080) = 0;
  *(this + 2162) = 256;
  *(this + 4326) = 1;
  *(this + 559) = 0x3FF0000000000000;
  *(this + 554) = 0x3FF0000000000000;
  *(this + 549) = 0x3FF0000000000000;
  *(this + 544) = 0x3FF0000000000000;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 275) = 0u;
  *(this + 276) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 578) = 0x3FF0000000000000;
  *(this + 573) = 0x3FF0000000000000;
  *(this + 568) = 0x3FF0000000000000;
  *(this + 563) = 0x3FF0000000000000;
  *(this + 283) = 0u;
  *(this + 282) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  *(this + 287) = 0u;
  *(this + 288) = 0u;
  *(this + 597) = 0x3FF0000000000000;
  *(this + 592) = 0x3FF0000000000000;
  *(this + 587) = 0x3FF0000000000000;
  *(this + 582) = 0x3FF0000000000000;
  *(this + 4664) = 0u;
  *(this + 4680) = 0u;
  *(this + 294) = 0u;
  *(this + 295) = 0u;
  *(this + 4744) = 0u;
  *(this + 4760) = 0u;
  *(this + 598) = 0;
  operator new();
}

void sub_26019D7D4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v4, 0x1032C40850D8295);
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache((v1 + v6));
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache((v1 + 4800));
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache((v1 + 4792));
  OZChannelBool::~OZChannelBool((v1 + v5));
  OZChannel::~OZChannel(v3);
  OZChannelPercent::~OZChannelPercent((v1 + 3864));
  OZChannelEnum::~OZChannelEnum((v1 + 3608));
  OZChannelPercent::~OZChannelPercent((v1 + 3456));
  OZChannelEnum::~OZChannelEnum((v1 + 3200));
  OZChannelPosition3D::~OZChannelPosition3D((v1 + 2312));
  OZChannel2D::~OZChannel2D((v1 + 1864));
  OZChannelEnum::~OZChannelEnum((v1 + 1608));
  OZChannel2D::~OZChannel2D((v1 + 1160));
  OZChannelEnum::~OZChannelEnum((v1 + 904));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 744));
  OZLocking::~OZLocking(v2);
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZAlignToBehavior::~OZAlignToBehavior(OZAlignToBehavior *this)
{
  *this = &unk_28729B858;
  *(this + 2) = &unk_28729BB38;
  *(this + 6) = &unk_28729BD90;
  *(this + 42) = &unk_28729BDE8;
  *(this + 67) = &unk_28729BE10;
  *(this + 68) = &unk_28729BE70;
  v2 = *(this + 598);
  if (v2)
  {
    OZChannelRef::~OZChannelRef((v2 + 8));
    MEMORY[0x2666E9F00](v2, 0x1032C40850D8295);
  }

  *(this + 598) = 0;
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache(this + 601);
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache(this + 600);
  PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache(this + 599);
  OZChannelBool::~OZChannelBool((this + 4168));
  OZChannel::~OZChannel((this + 4016));
  OZChannelPercent::~OZChannelPercent((this + 3864));
  OZChannelEnum::~OZChannelEnum((this + 3608));
  OZChannelPercent::~OZChannelPercent((this + 3456));
  OZChannelEnum::~OZChannelEnum((this + 3200));
  OZChannelPosition3D::~OZChannelPosition3D((this + 2312));
  OZChannel2D::~OZChannel2D((this + 1864));
  OZChannelEnum::~OZChannelEnum((this + 1608));
  OZChannel2D::~OZChannel2D((this + 1160));
  OZChannelEnum::~OZChannelEnum((this + 904));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 744));
  *(this + 68) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 672));
  PCSharedMutex::~PCSharedMutex((this + 552));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZAlignToBehavior::~OZAlignToBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZAlignToBehavior::~OZAlignToBehavior(OZAlignToBehavior *this)
{
  OZAlignToBehavior::~OZAlignToBehavior((this - 16));
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 48));
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 336));
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 536));
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZAlignToBehavior::~OZAlignToBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZAlignToBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 744, (v4 + 744));
  OZChannelBase::operator=(a1 + 904, (v5 + 904));
  OZChannelFolder::operator=(a1 + 1160);
  OZChannelBase::operator=(a1 + 1296, (v5 + 1296));
  OZChannelBase::operator=(a1 + 1448, (v5 + 1448));
  *(a1 + 1600) = v5[1600];
  OZChannelBase::operator=(a1 + 1608, (v5 + 1608));
  OZChannelFolder::operator=(a1 + 1864);
  OZChannelBase::operator=(a1 + 2000, (v5 + 2000));
  OZChannelBase::operator=(a1 + 2152, (v5 + 2152));
  *(a1 + 2304) = v5[2304];
  OZChannelPosition::operator=(a1 + 2312, (v5 + 2312));
  OZChannelBase::operator=(a1 + 3200, (v5 + 3200));
  OZChannelBase::operator=(a1 + 3456, (v5 + 3456));
  OZChannelBase::operator=(a1 + 3608, (v5 + 3608));
  OZChannelBase::operator=(a1 + 3864, (v5 + 3864));
  OZChannelBase::operator=(a1 + 4016, (v5 + 4016));

  return OZChannelBase::operator=(a1 + 4168, (v5 + 4168));
}

void OZAlignToBehavior::didAddToNode(OZAlignToBehavior *this, OZSceneNode *a2)
{
  OZChannelBehavior::didAddToNode(this, a2);
  OZAlignToBehavior::setupCurveNodes(this);

  updateAlignmentChannel((this + 904), a2);
}

char *OZAlignToBehavior::setupCurveNodes(OZAlignToBehavior *this)
{
  result = OZSimulationBehavior::getTransformNode(this);
  if (result)
  {
    OZAlignToBehavior::setupCurveNodeForChannel(this, (result + 1352));
  }

  return result;
}

void updateAlignmentChannel(OZChannelEnum *a1, OZSceneNode *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a2 + 1);
    *&v8[0].var0 = xmmword_260347A50;
    if (OZFactory::isKindOfClass(v4, v8))
    {
      PCURL::PCURL(&v7, @"Align To Behavior Alignment Enum");
      PCString::append(&v7, ";-;");
      PCURL::PCURL(v8, @"Align To Behavior Text Horizontal Alignment");
      PCString::append(&v7, v8);
      PCString::~PCString(v8);
      PCString::append(&v7, ";-;");
      PCURL::PCURL(v8, @"Align To Behavior Alignment Custom");
      PCString::append(&v7, v8);
      PCString::~PCString(v8);
      (*(*a1 + 848))(a1, &v7, 1);
      v10 = xmmword_260852A64;
      v11 = unk_260852A74;
      v12 = xmmword_260852A84;
      *&v8[0].var0 = xmmword_260852A44;
      v9 = unk_260852A54;
      OZChannelEnum::setTags(a1, v8, 20);
    }

    else
    {
      v5 = *(a2 + 1);
      *&v8[0].var0 = xmmword_2608507C0;
      if ((OZFactory::isKindOfClass(v5, v8) & 1) != 0 || (v6 = *(a2 + 1), *&v8[0].var0 = xmmword_26084FA40, OZFactory::isKindOfClass(v6, v8)))
      {
        PCURL::PCURL(v8, @"Align To Behavior Light Camera Alignment Enum");
        (*(*a1 + 848))(a1, v8, 1);
        PCString::~PCString(v8);
        LODWORD(v8[0].var0) = 0;
        OZChannelEnum::setTags(a1, v8, 1);
        return;
      }

      PCURL::PCURL(&v7, @"Align To Behavior Alignment Enum");
      PCString::append(&v7, ";-;");
      PCURL::PCURL(v8, @"Align To Behavior Alignment Custom");
      PCString::append(&v7, v8);
      PCString::~PCString(v8);
      (*(*a1 + 848))(a1, &v7, 1);
      *&v11 = 0xC0000000BLL;
      *&v8[0].var0 = xmmword_260852A94;
      v9 = unk_260852AA4;
      v10 = xmmword_260852AB4;
      OZChannelEnum::setTags(a1, v8, 14);
    }

    PCString::~PCString(&v7);
  }
}

void OZAlignToBehavior::notify(OZAlignToBehavior *this, char a2)
{
  OZChannelBehavior::notify(this, a2);
  if ((a2 & 0xC) != 0)
  {
    v4 = (*(*this + 336))(this);
    if (v4)
    {
      v5 = v4;
      ObjectID = OZChanObjectManipRef::getObjectID((this + 744));
      if (*(this + 1080) != ObjectID)
      {
        v7 = ObjectID;
        OZScene::dirtyLockDependencies(v5);
        SourceObject = OZAlignToBehavior::getSourceObject(this);
        updateAlignmentChannel((this + 1608), SourceObject);
        *(this + 1080) = v7;
      }
    }
  }

  if ((a2 & 0x10) != 0)
  {
    v9 = OZAlignToBehavior::getSourceObject(this);

    updateAlignmentChannel((this + 1608), v9);
  }
}

const void *OZAlignToBehavior::getSourceObject(OZAlignToBehavior *this)
{
  result = OZChanSceneNodeRef::getNode((this + 744));
  if (result)
  {
  }

  return result;
}

void OZAlignToBehavior::finishInitializing(OZAlignToBehavior *this)
{
  OZChannelFolder::finishInitializing((this + 56));
  SourceObject = OZAlignToBehavior::getSourceObject(this);
  updateAlignmentChannel((this + 1608), SourceObject);
  TransformNode = OZSimulationBehavior::getTransformNode(this);

  updateAlignmentChannel((this + 904), TransformNode);
}

uint64_t OZAlignToBehavior::canAddToSceneNode(OZAlignToBehavior *this, OZSceneNode *a2)
{
  canAddToSceneNode = OZBehavior::canAddToSceneNode(this, a2);
  v4 = (*(*a2 + 664))(a2);
  if (!canAddToSceneNode)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  v7 = xmmword_26084FA40;
  if (OZFactory::isKindOfClass(v5, &v7))
  {
    return 0;
  }

  v7 = xmmword_2608507C0;
  return OZFactory::isKindOfClass(v5, &v7) ^ 1;
}

uint64_t OZAlignToBehavior::didAddSceneNodeToScene(OZAlignToBehavior *this, OZScene *a2)
{
  result = OZChannelBehavior::didAddSceneNodeToScene(this, a2);
  v5 = *(this + 598);
  if (v5)
  {
    *v5 = a2;
  }

  return result;
}

uint64_t OZAlignToBehavior::willRemoveSceneNodeFromScene(OZAlignToBehavior *this, OZScene *a2)
{
  OZChannelBehavior::willRemoveSceneNodeFromScene(this, a2);

  return OZLocking::removeFromLockingGroup((this + 544));
}

__n128 OZAlignToBehavior::dirty(OZAlignToBehavior *this)
{
  OZBehavior::dirty(this);
  v2 = *(this + 599);
  v3 = v2[4];
  v2 += 4;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v2 - 1), v3);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v2[3] = v2[2];
  v2[6] = 0;
  v4 = *(this + 600);
  v5 = v4[4];
  v4 += 4;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v4 - 1), v5);
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v4[3] = v4[2];
  v4[6] = 0;
  v6 = *(this + 601);
  v7 = v6[4];
  v6 += 4;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
  v6[3] = v6[2];
  v6[6] = 0;
  v8 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(this + 4328) = *MEMORY[0x277CC0898];
  v10 = *(v8 + 16);
  *(this + 543) = v10;
  *(this + 280) = result;
  *(this + 562) = v10;
  *(this + 4632) = result;
  *(this + 581) = v10;
  return result;
}

void OZAlignToBehavior::getEvalDepChansForRef(uint64_t a1, void *a2, const void *a3)
{
  if (a3)
  {
    OZChannelBehavior::getEvalDepChansForRef(a1, a2, a3);
    if (v5)
    {

      OZAlignToBehavior::getEvalDepChansForGroup(a1, v5);
    }
  }
}

void OZAlignToBehavior::getEvalDepChansForGroup(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 1024))(a2);
    v4 = (*(*a2 + 1032))(a2);
    if (v3 != v4)
    {
      v5 = v4;
      do
      {
        v6 = *(v3 + 16);
        if (v6)
        {
          {
            operator new();
          }
        }

        v3 = *(v3 + 8);
      }

      while (v3 != v5);
    }
  }
}

const OZSceneNode *OZAlignToBehavior::canChanRefBeSetTo(char **this, const OZChanObjectManipRef *a2, const OZObjectManipulator *a3)
{
  canChanRefBeSetTo = OZChannelBehavior::canChanRefBeSetTo(this, a2, a3);
  result = 0;
  if (a3)
  {
    if (canChanRefBeSetTo)
    {
      if (result)
      {
        v7 = result;
        result = OZAlignToBehavior::getTargetObject(this);
        if (result)
        {
          return !OZSceneNode::isDescendantOf(v7, result);
        }
      }
    }
  }

  return result;
}

void *OZAlignToBehavior::getTargetObject(OZAlignToBehavior *this)
{
  result = (*(*this + 328))(this);
  if (result)
  {
  }

  return result;
}

__n128 OZAlignToBehavior::solveNode(OZAlignToBehavior *this, uint64_t a2, OZCurveNodeParam *a3)
{
  v3 = *(a3 + 19);
  v4 = *(a3 + 10);
  v11 = *(a3 + 5);
  result = *(a3 + 6);
  *&v10.value = result;
  v10.epoch = *(a3 + 14);
  if (*(a3 + 36))
  {
    v9 = 0;
    do
    {
      *(v3 + 8 * v9) = (*(*this + 672))(this, a2, &v10, 0.0, *(v4 + 8 * v9));
      v13 = v10;
      v12 = v11;
      PC_CMTimeSaferAdd(&v13, &v12, &v14);
      result = *&v14.value;
      v10 = v14;
      ++v9;
    }

    while (v9 < *(a3 + 36));
  }

  return result;
}

void OZAlignToBehavior::computeMixFactor(OZAlignToBehavior *this, const CMTime *a2)
{
  (*(*this + 608))(v16);
  memset(&v15, 0, sizeof(v15));
  OZBehavior::getFrameDuration(this, &v15);
  memset(&v14, 0, sizeof(v14));
  v4 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 4016), MEMORY[0x277CC08F0], 0.0);
  operator*(&v15, &v14, v5);
  memset(&v13, 0, sizeof(v13));
  time1 = v16[1];
  time2 = v15;
  PC_CMTimeSaferSubtract(&time1, &time2, &v12);
  time1 = v12;
  time2 = v14;
  PC_CMTimeSaferSubtract(&time1, &time2, &v13);
  time1 = v13;
  time2 = *v4;
  if (CMTimeCompare(&time1, &time2))
  {
    time2 = v16[0];
    time1 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v12);
    operator/(&v12.value, &v13, &time1);
    Seconds = CMTimeGetSeconds(&time1);
  }

  else
  {
    Seconds = 1.0;
  }

  time1.value = 0x3FF0000000000000;
  ValueAsInt = OZChannel::getValueAsInt((this + 3608), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 3)
  {
    if (ValueAsInt > 5)
    {
      if (ValueAsInt != 6)
      {
        if (ValueAsInt == 8)
        {
          OZChannel::getValueAsDouble((this + 3864), a2, 0.0);
          return;
        }

        goto LABEL_20;
      }

      v10 = 0.0;
      v11 = 1.0;
LABEL_26:
      PCMath::easeInOut(&time1.value, Seconds, v10, v11, 0.0, 1.0, 0, v8);
      return;
    }

    if (ValueAsInt == 4)
    {
      v10 = 0.5;
      goto LABEL_22;
    }

    v10 = 1.0;
LABEL_24:
    v11 = 0.0;
    goto LABEL_26;
  }

  if (ValueAsInt > 1)
  {
    if (ValueAsInt != 2)
    {
      v10 = 0.0;
LABEL_22:
      v11 = 0.5;
      goto LABEL_26;
    }

    v10 = 0.5;
    goto LABEL_24;
  }

  if (ValueAsInt != 1)
  {
LABEL_20:
    time1.value = 0x3FF0000000000000;
    return;
  }

  v9 = 1.0;
  if (Seconds <= 1.0)
  {
    v9 = Seconds;
  }

  if (Seconds < 0.0)
  {
    v9 = 0.0;
  }

  *&time1.value = v9;
}

void OZAlignToBehavior::getSourceFrame(OZAlignToBehavior *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if (OZChannel::getValueAsInt((this + 3200), MEMORY[0x277CC08F0], 0.0) && (SourceObject = OZAlignToBehavior::getSourceObject(this)) != 0)
  {
    v7 = SourceObject;
    OZChannel::getValueAsDouble((this + 3456), MEMORY[0x277CC08F0], 0.0);
    v9 = v8;
    (*(*v7 + 1128))(v15, v7);
    memset(&v14, 0, sizeof(v14));
    v13 = v15[1];
    v10 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v10 + 336), &v12);
    time = v13;
    v16 = v12;
    PC_CMTimeSaferSubtract(&time, &v16, &v14);
    v13 = v15[0];
    time = v14;
    Seconds = CMTimeGetSeconds(&time);
    OZFigTimeForChannelSeconds(&v12, v9 * Seconds, 0x40000);
    time = v13;
    v16 = v12;
    PC_CMTimeSaferAdd(&time, &v16, a3);
  }

  else
  {
    *a3 = *&a2->value;
    *(a3 + 16) = a2->epoch;
  }
}

void OZAlignToBehavior::getSourceToWorldTransform(OZAlignToBehavior *this@<X0>, OZTransformNode *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X8>)
{
  OZRenderState::OZRenderState(&v19);
  OZAlignToBehavior::getSourceFrame(this, a3, &v20);
  *&v19.var0.var0 = v20;
  v19.var0.var3 = v21;
  v19.var20 = 0;
  v8 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 4168), MEMORY[0x277CC08F0], 0.0);
  v10 = *(this + 4326);
  v19.var21 = ValueAsInt != 0;
  v19.var22 = v10 ^ 1;
  *&v19.var23 = 257;
  *&v19.var8 = 0;
  v11 = OZChannel::getValueAsInt((this + 1608), v8, 0.0) - 14;
  if (v11 > 0xE)
  {
    v12 = 3;
  }

  else
  {
    v12 = dword_260852AD0[v11];
  }

  v19.var29 = v12;
  *(a4 + 120) = 0x3FF0000000000000;
  *(a4 + 80) = 0x3FF0000000000000;
  *(a4 + 40) = 0x3FF0000000000000;
  *a4 = 0x3FF0000000000000;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  v13 = *(this + 598);
  if (v13)
  {
    OZCacheKey::getKey(v13, &v19);
    v29 = v14;
    v28 = 0;
    PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::findValue(*(this + 600), &v29, &v28, &v20);
    if (&v20 != a4)
    {
      v15 = v25;
      *(a4 + 64) = v24;
      *(a4 + 80) = v15;
      v16 = v27;
      *(a4 + 96) = v26;
      *(a4 + 112) = v16;
      v17 = v21;
      *a4 = v20;
      *(a4 + 16) = v17;
      v18 = v23;
      *(a4 + 32) = v22;
      *(a4 + 48) = v18;
    }

    if ((v28 & 1) == 0)
    {
      (*(*a2 + 1256))(a2, a4, &v19);
      PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::addValue(*(this + 600), &v29, a4, 0);
    }
  }

  else
  {
    (*(*a2 + 1256))(a2, a4, &v19);
  }
}

double OZAlignToBehavior::getSourceAlignmentOffset@<D0>(OZAlignToBehavior *this@<X0>, OZTransformNode *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X8>)
{
  OZRenderState::OZRenderState(&v20);
  OZAlignToBehavior::getSourceFrame(this, a3, &v23);
  *&v20.var0.var0 = v23;
  v20.var0.var3 = v24;
  v20.var20 = 0;
  v8 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 4168), MEMORY[0x277CC08F0], 0.0);
  v10 = *(this + 4326);
  v20.var21 = ValueAsInt != 0;
  v20.var22 = v10 ^ 1;
  *&v20.var23 = 257;
  *&v20.var8 = 0;
  v11 = OZChannel::getValueAsInt((this + 1608), v8, 0.0) - 14;
  if (v11 > 0xE)
  {
    v13 = 3;
  }

  else
  {
    v13 = dword_260852AD0[v11];
  }

  v20.var29 = v13;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (a2)
  {
    if (v14)
    {
      v15 = v14;
      v16 = *(this + 598);
      if (v16)
      {
        OZCacheKey::getKey(v16, &v20);
        v22 = v17;
        v21 = 0;
        PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::findValue(*(this + 599), &v22, &v21, a4);
        if ((v21 & 1) == 0)
        {
          v18 = OZChannel::getValueAsInt((this + 1608), MEMORY[0x277CC08F0], 0.0);
          getAlignmentOffset(v15, &v20, (this + 1864), v18, &v23);
          *a4 = v23;
          *(a4 + 16) = v24;
          PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::addValue(*(this + 599), &v22, a4, 0);
        }
      }

      else
      {
        v19 = OZChannel::getValueAsInt((this + 1608), MEMORY[0x277CC08F0], 0.0);
        return getAlignmentOffset(v15, &v20, (this + 1864), v19, a4);
      }
    }
  }

  return result;
}

BOOL OZAlignToBehavior::getSourceRotation@<W0>(uint64_t **this@<X0>, OZTransformNode *a2@<X1>, OZTransformNode *a3@<X2>, const CMTime *a4@<X3>, uint64_t a5@<X8>)
{
  OZRenderState::OZRenderState(&v22);
  OZAlignToBehavior::getSourceFrame(this, a4, v13);
  *&v22.var0.var0 = *v13;
  v22.var0.var3 = *&v13[16];
  *v13 = &v22.var30;
  *&v13[8] = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(v13, 0xEuLL);
  OZRenderState::TransformSet::rotation(&v22.var30, 1);
  v22.var4 = 0;
  *&v22.var8 = 256;
  v21 = 0x3FF0000000000000;
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  *v13 = 0x3FF0000000000000;
  *&v13[8] = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = this[598];
  if (v10)
  {
    OZCacheKey::getKey(v10, &v22);
    v24 = v11;
    v23 = 0;
    PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::findValue(this[601], &v24, &v23, v13);
    if ((v23 & 1) == 0)
    {
      OZTransformNode::getCommonAncestorTransforms(a2, a3, &v22, v13, 0);
      PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::addValue(this[601], &v24, v13, 0);
    }
  }

  else
  {
    OZTransformNode::getCommonAncestorTransforms(a2, a3, &v22, v13, 0);
  }

  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 48) = 4;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  return liSafeGetTransformation(v13, a5);
}

__n128 OZAlignToBehavior::getTargetTransform@<Q0>(OZAlignToBehavior *this@<X0>, OZTransformNode *a2@<X1>, const OZRenderState *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 120) = 0x3FF0000000000000;
  *(a4 + 80) = 0x3FF0000000000000;
  *(a4 + 40) = 0x3FF0000000000000;
  *a4 = 0x3FF0000000000000;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  time1 = a3->var0;
  v16 = *(this + 4480);
  if (CMTimeCompare(&time1, &v16))
  {
    (*(*a2 + 1256))(a2, a4, a3);
    if ((this + 4504) != a4)
    {
      for (i = 0; i != 128; i += 32)
      {
        v10 = (this + i + 4504);
        v11 = *(a4 + i + 16);
        *v10 = *(a4 + i);
        v10[1] = v11;
      }
    }

    result = *&a3->var0.var0;
    *(this + 562) = a3->var0.var3;
    *(this + 280) = result;
  }

  else
  {
    v12 = this + 4504;
    if ((this + 4504) != a4)
    {
      for (j = 0; j != 128; j += 32)
      {
        v14 = a4 + j;
        result = *&v12[j];
        v15 = *&v12[j + 16];
        *v14 = result;
        *(v14 + 16) = v15;
      }
    }
  }

  return result;
}

void *OZAlignToBehavior::getWorldToTargetOwnerTransform@<X0>(OZTransformNode *a1@<X1>, const CMTime *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  result = *(a1 + 120);
  if (result)
  {
    if (result)
    {
      v7 = result;
      OZRenderState::OZRenderState(&v8);
      *&v8.var0.var0 = *&a2->value;
      v8.var0.var3 = a2->epoch;
      p_var30 = &v8.var30;
      v10 = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&p_var30, 0xEuLL);
      v8.var4 = 0;
      *&v8.var8 = 0;
      return (*(*v7 + 1264))(v7, a3, &v8);
    }
  }

  return result;
}

double OZAlignToBehavior::getTargetAlignmentTransform@<D0>(OZAlignToBehavior *this@<X0>, OZTransformNode *a2@<X1>, OZTransformNode *a3@<X2>, $3CC8671D27C23BF42ADDB32F2B5E48AE *a4@<X3>, uint64_t a5@<X8>)
{
  OZRenderState::OZRenderState(&v31);
  v31.var0 = *a4;
  v31.var20 = 0;
  v10 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 4168), MEMORY[0x277CC08F0], 0.0);
  v12 = *(this + 4325);
  v31.var21 = ValueAsInt != 0;
  v31.var22 = v12 ^ 1;
  v31.var9 = 0;
  *&v31.var23 = 257;
  v13 = OZChannel::getValueAsInt((this + 904), v10, 0.0) - 14;
  if (v13 > 0xE)
  {
    v14 = 3;
  }

  else
  {
    v14 = dword_260852AD0[v13];
  }

  v31.var29 = v14;
  *&v30[0].f64[0] = &v31.var30;
  LODWORD(v30[0].f64[1]) = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(v30, 0xEuLL);
  OZRenderState::TransformSet::scale(&v31.var30, 1);
  OZRenderState::TransformSet::pivot(&v31.var30, 1);
  v31.var4 = 1;
  v31.var8 = 0;
  OZAlignToBehavior::getTargetTransform(this, a2, &v31, v30);
  OZAlignToBehavior::getSourceRotation(this, a3, a2, a4, v26);
  PCMatrix44Tmpl<double>::leftRotate(v30, 4, v27, v28, v29);
  v23 = COERCE_DOUBLE(&v31.var30);
  LODWORD(v24) = 0;
  std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v23, 0xEuLL);
  v15 = OZChannel::getValueAsInt((this + 904), MEMORY[0x277CC08F0], 0.0);
  if (a2)
  {
  }

  else
  {
    v16 = 0;
  }

  getAlignmentOffset(v16, &v31, (this + 1160), v15, &v23);
  OZChannel::getValueAsDouble((this + 2448), &v31, 0.0);
  v23 = v23 - v17;
  OZChannel::getValueAsDouble((this + 2600), &v31, 0.0);
  v24 = v24 - v18;
  PCMatrix44Tmpl<double>::transform<double>(v30[0].f64, &v23, &v23);
  *(a5 + 120) = 0x3FF0000000000000;
  *(a5 + 80) = 0x3FF0000000000000;
  *(a5 + 40) = 0x3FF0000000000000;
  *(a5 + 8) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  v19 = -v23;
  v20 = -v24;
  v21 = -v25;
  *a5 = 0x3FF0000000000000;
  return PCMatrix44Tmpl<double>::rightTranslate(a5, v19, v20, v21);
}

double getAlignmentOffset@<D0>(OZElement *a1@<X1>, CMTime *a2@<X2>, OZChannelPositionPercent *a3@<X3>, int a4@<W0>, double *a5@<X8>)
{
  *a5 = 0.0;
  a5[1] = 0.0;
  a5[2] = 0.0;
  if (a4 == 34)
  {

    OZTransformNode::getPivot(a1, a5, a2);
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v19 = _Q0;
    (*(*a1 + 1488))(a1, &v17, a2);
    if (a4 == 12)
    {
      OZChannel::getValueAsDouble((a3 + 136), a2, 0.0);
    }

    else
    {
      v15 = 0.5;
      if ((a4 - 2) < 0x1B)
      {
        v15 = dbl_260852B10[a4 - 2];
      }
    }

    *a5 = v17 + v15 * (v17 + *&v19 - v17);
    if (a4 == 12)
    {
      OZChannel::getValueAsDouble((a3 + 288), a2, 0.0);
    }

    else
    {
      v16 = 0.5;
      if ((a4 - 4) < 0x19)
      {
        v16 = dbl_260852BE8[a4 - 4];
      }
    }

    result = v18 + v16 * (v18 + *(&v19 + 1) - v18);
    a5[1] = result;
  }

  return result;
}

double OZAlignToBehavior::solveRotation(uint64_t **this, OZTransformNode *a2, OZTransformNode *a3, int a4, const CMTime *a5, double a6)
{
  OZAlignToBehavior::getSourceRotation(this, a2, a3, a5, v13);
  if (a4 == 5)
  {
    v10 = *&v13[9];
  }

  else if (a4 == 4)
  {
    v10 = *&v13[8];
  }

  else
  {
    v10 = a6;
    if (a4 == 3)
    {
      v10 = *&v13[7];
    }
  }

  OZAlignToBehavior::computeMixFactor(this, a5);
  return (v10 - a6) * v11 + a6;
}

double OZAlignToBehavior::solvePosition(OZAlignToBehavior *this, OZTransformNode *a2, OZTransformNode *a3, int a4, CMTime *a5, double a6)
{
  *(this + 4324) = 1;
  OZAlignToBehavior::getSourceToWorldTransform(this, a2, a5, v24);
  OZAlignToBehavior::getSourceAlignmentOffset(this, a2, a5, v23);
  OZAlignToBehavior::getWorldToTargetOwnerTransform(a3, a5, v22);
  OZAlignToBehavior::getTargetAlignmentTransform(this, a3, a2, a5, v21);
  PCMatrix44Tmpl<double>::operator*(v21, v22, v19);
  PCMatrix44Tmpl<double>::operator*(v19, v24, v20);
  v12 = PCMatrix44Tmpl<double>::transform<double>(v20, v23, v23);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *(this + 4324) = 0;
  if (a4)
  {
    v13 = a6;
  }

  if (a4 == 1)
  {
    v13 = v14;
  }

  if (a4 == 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  OZAlignToBehavior::computeMixFactor(this, a5);
  return (v16 - a6) * v17 + a6;
}

double OZAlignToBehavior::solveNode(OZAlignToBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v17, 0, sizeof(v17));
  (*(**(*(this + 47) + 32) + 336))(&v17, a4);
  v16 = v17;
  if ((*(*this + 296))(this, &v16, 0, 1, 1))
  {
    SourceObject = OZAlignToBehavior::getSourceObject(this);
    if (SourceObject)
    {
      v9 = SourceObject;
      TransformNode = OZSimulationBehavior::getTransformNode(this);
      if (TransformNode)
      {
        v11 = TransformNode;
        OZAlignToBehavior::computeMixFactor(this, &v17);
        if (fabs(v12) >= 0.0000001)
        {
          v13 = Li3DEngineScene::sceneManager((this + 544));
          OZLockingGroup::WriteSentry::WriteSentry(&v16, v13);
          if ((*(this + 4324) & 1) == 0)
          {
            if (a2 > 2)
            {
              v14 = OZAlignToBehavior::solveRotation(this, v9, v11, a2, &v17, a5);
            }

            else
            {
              v14 = OZAlignToBehavior::solvePosition(this, v9, v11, a2, &v17, a5);
            }

            a5 = v14;
          }

          OZLockingGroup::WriteSentry::~WriteSentry(&v16);
        }
      }
    }
  }

  return a5;
}

uint64_t OZAlignToBehavior::parseBegin(OZAlignToBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZCacheKeyScope);
  return 1;
}

uint64_t non-virtual thunk toOZAlignToBehavior::parseBegin(OZAlignToBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZCacheKeyScope);
  return 1;
}

uint64_t OZAlignToBehavior::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZBehavior::parseElement(this, a2, a3);
  if (*(a3 + 2) == 601)
  {
    PCSharedCount::PCSharedCount(&v6);
    if (PCSerializerReadStream::getAttributeAsString(a2, a3, 1, &v6))
    {
      operator new();
    }

    PCString::~PCString(&v6);
  }

  return 1;
}

void sub_2601A000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  MEMORY[0x2666E9F00](v10, 0x1032C40850D8295);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

uint64_t OZAlignToBehavior::getLockDependencies(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = (result + 544);
  for (i = *(a4 + 8); i; i = *i)
  {
    v10 = i[4];
    if (v8 >= v10)
    {
      if (v10 >= v8)
      {
        return result;
      }

      ++i;
    }
  }

  v17 = (result + 544);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v17);
  if (a2)
  {
    PCDirectedGraph<OZLocking *>::addEdge(a3, a2, v8);
  }

  else
  {
    v16 = v8;
    v17 = &v16;
    std::__tree<std::__value_type<OZLocking *,std::set<OZLocking *>>,std::__map_value_compare<OZLocking *,std::__value_type<OZLocking *,std::set<OZLocking *>>,std::less<OZLocking *>,true>,std::allocator<std::__value_type<OZLocking *,std::set<OZLocking *>>>>::__emplace_unique_key_args<OZLocking *,std::piecewise_construct_t const&,std::tuple<OZLocking * const&>,std::tuple<>>(a3, &v16);
  }

  SourceObject = OZAlignToBehavior::getSourceObject(v7);
  if (SourceObject)
  {
  }

  else
  {
    v12 = 0;
  }

  TransformNode = OZSimulationBehavior::getTransformNode(v7);
  if (TransformNode)
  {
  }

  else
  {
    v14 = 0;
  }

  OZLocking::getLockDependenciesForElement(v12, v8, a3, a4);
  OZLocking::getLockDependenciesForElement(v14, v8, a3, a4);
  v15 = (*(*v7 + 336))(v7);
  OZLocking::addLockDependenciesForDependents(v8, v15, a3, a4);
  v17 = v8;
  return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v17);
}

uint64_t OZAlignToBehavior::getLockingGroups(OZAlignToBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toOZAlignToBehavior::getLockingGroups(OZAlignToBehavior *this)
{
  v1 = this - 544;
  result = (*(*(this - 68) + 336))(this - 544);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

void OZCacheKey::getKey(OZCacheKey *this, const CMTime *a2)
{
  Channel = *(this + 4);
  if (!Channel)
  {
    Channel = OZChannelRef::getChannel((this + 8), (*this + 920));
    if (Channel)
    {
    }

    *(this + 4) = Channel;
  }

  OZChannel::getValueAsDouble(Channel, a2, 0.0);
}

__n128 OZSingleChanBehaviorIF::getNeededRange(OZSingleChanBehaviorIF *this, unsigned int a2, OZCurveNodeParam *a3)
{
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  result = *(a3 + 120);
  *(a3 + 3) = result;
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return result;
}

uint64_t *PCCache<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

uint64_t PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::findValue@<X0>(uint64_t *result@<X0>, double *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result[4];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = result + 4;
  do
  {
    v8 = *(v5 + 32);
    if (v8 >= v6)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (v8 < v6));
  }

  while (v5);
  if (v7 != result + 4 && v6 >= *(v7 + 4))
  {
    v14 = v7;
    v9 = *(v7 + 15);
    *(a4 + 64) = *(v7 + 13);
    *(a4 + 80) = v9;
    v10 = *(v7 + 19);
    *(a4 + 96) = *(v7 + 17);
    *(a4 + 112) = v10;
    v11 = *(v7 + 7);
    *a4 = *(v7 + 5);
    *(a4 + 16) = v11;
    v12 = *(v7 + 11);
    *(a4 + 32) = *(v7 + 9);
    *(a4 + 48) = v12;
    v13 = result[9] + 1;
    result[9] = v13;
    v7[22] = v13;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::bubble(result + 6, &v14);
    *a3 = 1;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *(a4 + 120) = 0x3FF0000000000000;
    *(a4 + 80) = 0x3FF0000000000000;
    *(a4 + 40) = 0x3FF0000000000000;
    *a4 = 0x3FF0000000000000;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0u;
  }

  return result;
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 184);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 176) <= *(v17 + 176))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 184) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 184) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 176);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 176);
    v13 = *(*(v2 + 8 * v5) + 176);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 176))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 184) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 184) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 184);
    goto LABEL_24;
  }

  return result;
}

void PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::addValue(uint64_t a1, double *a2, __int128 *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = a1 + 32;
    do
    {
      v9 = *(v6 + 32);
      if (v9 >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (v9 < v7));
    }

    while (v6);
    if (v8 != a1 + 32 && v7 >= *(v8 + 32))
    {
      v40 = v8;
      v19 = v8 + 40;
      if ((v8 + 40) != a3)
      {
        for (i = 0; i != 4; ++i)
        {
          for (j = 0; j != 32; j += 8)
          {
            *(v19 + j) = *(a3 + j);
          }

          v19 += 32;
          a3 += 2;
        }
      }

      v22 = *(a1 + 72) + 1;
      *(a1 + 72) = v22;
      *(v8 + 176) = v22;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v40);
      v23 = v40;
      v24 = a4 - v40[21];
      if (v24)
      {
        v25 = *(a1 + 80) + v24;
        *(a1 + 80) = v25;
        v23[21] = a4;
        if (!*(a1 + 104))
        {
          while (v25 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v27 = *(a1 + 48);
            if (v27 == *(a1 + 56))
            {
              break;
            }

            v28 = *v27;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::remove((a1 + 48), &v28);
            v26 = *&v28;
            *(a1 + 80) -= *(*&v28 + 168);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v26);
            operator delete(v26);
            v25 = *(a1 + 80);
          }
        }
      }
    }

    else
    {
LABEL_10:
      v10 = *(a1 + 72) + 1;
      *(a1 + 72) = v10;
      v11 = a3[5];
      v33 = a3[4];
      v34 = v11;
      v12 = a3[7];
      v35 = a3[6];
      v36 = v12;
      v13 = a3[1];
      v29 = *a3;
      v30 = v13;
      v14 = a3[3];
      v31 = a3[2];
      v32 = v14;
      v28 = v7;
      v37 = a4;
      v38 = v10;
      v39 = 0;
      v40 = std::__tree<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__map_value_compare<double,std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::less<double>,true>,std::allocator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>>>::__emplace_unique_key_args<double,std::pair<double const,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>>(a1 + 24, &v28);
      v41 = v15;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::add(a1 + 48, &v40);
      v16 = *(a1 + 80) + a4;
      *(a1 + 80) = v16;
      if (!*(a1 + 104))
      {
        while (v16 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v18 = *(a1 + 48);
          if (v18 == *(a1 + 56))
          {
            break;
          }

          v28 = *v18;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::remove((a1 + 48), &v28);
          v17 = *&v28;
          *(a1 + 80) -= *(*&v28 + 168);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v17);
          operator delete(v17);
          v16 = *(a1 + 80);
        }
      }
    }
  }
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 184) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 184);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 176) <= *(v18 + 176))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 184) = v16;
      v18 = v17[v20];
      *(v18 + 184) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

uint64_t *std::__tree<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__map_value_compare<double,std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::less<double>,true>,std::allocator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>>>::__emplace_unique_key_args<double,std::pair<double const,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>>(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 184);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 184) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,std::__tree_node<std::__value_type<double,PCCacheImpl<double,PCMatrix44Tmpl<double>,PCNoLock,std::less<double>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

uint64_t *PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::findValue@<X0>(uint64_t *result@<X0>, double *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result[4];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *a2;
  v7 = result + 4;
  do
  {
    v8 = *(v5 + 32);
    if (v8 >= v6)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (v8 < v6));
  }

  while (v5);
  if (v7 != result + 4 && v6 >= *(v7 + 4))
  {
    v10 = v7;
    *a4 = *(v7 + 5);
    *(a4 + 16) = v7[7];
    v9 = result[9] + 1;
    result[9] = v9;
    v7[9] = v9;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble(result + 6, &v10);
    *a3 = 1;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
  }

  return result;
}

void PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::addValue(uint64_t a1, double *a2, __int128 *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = a1 + 32;
    do
    {
      v9 = *(v6 + 32);
      if (v9 >= v7)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (v9 < v7));
    }

    while (v6);
    if (v8 != a1 + 32 && v7 >= *(v8 + 32))
    {
      v29 = v8;
      v16 = *(a3 + 2);
      *(v8 + 40) = *a3;
      *(v8 + 56) = v16;
      v17 = *(a1 + 72) + 1;
      *(a1 + 72) = v17;
      *(v8 + 72) = v17;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v29);
      v18 = v29;
      v19 = a4 - v29[8];
      if (v19)
      {
        v20 = *(a1 + 80) + v19;
        *(a1 + 80) = v20;
        v18[8] = a4;
        if (!*(a1 + 104))
        {
          while (v20 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v22 = *(a1 + 48);
            if (v22 == *(a1 + 56))
            {
              break;
            }

            v23 = *v22;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v23);
            v21 = *&v23;
            *(a1 + 80) -= *(*&v23 + 64);
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v21);
            operator delete(v21);
            v20 = *(a1 + 80);
          }
        }
      }
    }

    else
    {
LABEL_10:
      v10 = *(a1 + 72) + 1;
      *(a1 + 72) = v10;
      v11 = *(a3 + 2);
      v23 = v7;
      v24 = *a3;
      v25 = v11;
      v26 = a4;
      v27 = v10;
      v28 = 0;
      v29 = std::__tree<std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>,std::__map_value_compare<double,std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>,std::less<double>,true>,std::allocator<std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>>>::__emplace_unique_key_args<double,std::pair<double const,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>>(a1 + 24, &v23);
      v30 = v12;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::add(a1 + 48, &v29);
      v13 = *(a1 + 80) + a4;
      *(a1 + 80) = v13;
      if (!*(a1 + 104))
      {
        while (v13 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v15 = *(a1 + 48);
          if (v15 == *(a1 + 56))
          {
            break;
          }

          v23 = *v15;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,std::__tree_node<std::__value_type<LiMaterial::ShaderKey,PCCacheImpl<LiMaterial::ShaderKey,PCPtr<ProShade::Program>,PCNoLock,std::less<LiMaterial::ShaderKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v23);
          v14 = *&v23;
          *(a1 + 80) -= *(*&v23 + 64);
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v14);
          operator delete(v14);
          v13 = *(a1 + 80);
        }
      }
    }
  }
}

uint64_t *std::__tree<std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>,std::__map_value_compare<double,std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>,std::less<double>,true>,std::allocator<std::__value_type<double,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>>>::__emplace_unique_key_args<double,std::pair<double const,PCCacheImpl<double,PCVector3<double>,PCNoLock,std::less<double>>::Data>>(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t OZChannelEnumLayer_Factory::getInstance(OZChannelEnumLayer_Factory *this)
{
  if (atomic_load_explicit(&OZChannelEnumLayer_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelEnumLayer_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelEnumLayer_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelEnumLayer_Factory::_instance;
}

void OZChannelEnumLayer::OZChannelEnumLayer(OZChannelEnumLayer *this, const PCString *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  Instance = OZChannelEnumLayer_Factory::getInstance(this);
  OZChannelEnum::OZChannelEnum(this, a2, Instance, a3, a4, a5, a6, a7, a8);
  *this = &unk_287282E38;
  *(this + 2) = &unk_2872831A8;
  *(this + 1) = OZChannelEnumLayer_Factory::getInstance(v17);
}

void OZChannelEnumLayer_Factory::OZChannelEnumLayer_Factory(OZChannelEnumLayer_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260852CB0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_28729BF70;
  *(this + 16) = &unk_28729C040;
}

uint64_t OZRotoshape::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  v4 = (this + 4608);
  {
    OZFactory::setNeedsSaving(this[26], 1);
    v5 = (*(this[25] + 80))(this + 200);
    OZChannelObjectRoot::markChannelFactoriesForSerialization(v5, a2);
  }

  else
  {
    OZSceneNode::markFactoriesForSerialization(this + 25, a2);
  }

  result = *(v4 + 124);
  if (result)
  {
    v7 = *(*result + 456);

    return v7();
  }

  return result;
}

uint64_t non-virtual thunk toOZRotoshape::markFactoriesForSerialization(OZFactory **this, PCSerializerWriteStream *a2)
{
  return OZRotoshape::markFactoriesForSerialization(this - 25, a2);
}

{
  return OZRotoshape::markFactoriesForSerialization(this - 31, a2);
}

uint64_t OZRotoshape::writeBody(OZRotoshape *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = this + 36864;
  PCSerializerWriteStream::pushScope(a2, &OZRotoshapeScope);
  if (a4)
  {
    v11 = *(v10 + 124);
    if (v11)
    {
      if (!OZChannelBase::testFlag((v11 + 56), 8))
      {
        v12 = *(v10 + 124);
        v13 = v12[6];
        v12 += 6;
        (*(v13 + 16))(v12, a2, 0);
        (*(*v12 + 24))(v12, a2, 0, 1, a5);
        (*(*a2 + 24))(a2);
      }
    }
  }

  v14 = v10[1232];
  (*(*a2 + 16))(a2, 607);
  (*(*a2 + 48))(a2, v14);
  (*(*a2 + 24))(a2);
  PCSerializerWriteStream::popScope(a2);
  {
    OZChannelObjectRoot::serializeSelfOnly((this + 256), a2, a3);
    (*(*(this + 83) + 16))(this + 664, a2, 0);
    (*(*(this + 83) + 24))(this + 664, a2, 0, 1, a5);
    v15 = *(*a2 + 24);

    return v15(a2);
  }

  else
  {

    return OZElement::writeBody((this + 200), a2, a3, a4, a5);
  }
}

uint64_t non-virtual thunk toOZRotoshape::writeBody(OZRotoshape *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  return OZRotoshape::writeBody((this - 200), a2, a3, a4, a5);
}

{
  return OZRotoshape::writeBody((this - 248), a2, a3, a4, a5);
}

uint64_t OZRotoshape::parseBegin(OZRotoshape *this, PCSerializerReadStream *a2, double a3)
{
  v5 = (this + 37856);
  LODWORD(a3) = *(a2 + 26);
  *(this + 4763) = *&a3;
  v6 = *(this + 4732);
  if (v6)
  {
    v7 = (*(*v6 + 640))(*(this + 4732));
    OZChannelFolder::removeDescendant((this + 37704), v7);
    v8 = (*(*(this + 25) + 272))();
    if (v8)
    {
      v9 = v8;
      if (OZScene::getNode(v8, v6[20]) == v6)
      {
        OZScene::unregisterNode(v9, v6);
        OZScene::removeAllDependencies(v9, v6);
      }
    }
  }

  OZMoShape::resetParticlePaint((this + 18976));
  if (v5[31] < 5.0)
  {
    (*(*(this + 4106) + 712))(this + 32848, MEMORY[0x277CC08F0], 0, 1.0);
    OZMoShape::reparentChannels((this + 18976), (this + 648), 1);
    *(v5 + 256) = 1;
  }

  PCSerializerReadStream::pushScope(a2, &OZRotoshapeScope);
  OZElement::parseBegin((this + 200), a2);
  return 1;
}

uint64_t non-virtual thunk toOZRotoshape::parseBegin(OZRotoshape *this, PCSerializerReadStream *a2, double a3)
{
  OZRotoshape::parseBegin((this - 200), a2, a3);
  return 1;
}

{
  OZRotoshape::parseBegin((this - 248), a2, a3);
  return 1;
}

uint64_t OZRotoshape::parseEnd(OZRotoshape *this, PCSerializerReadStream *a2)
{
  v4 = this + 36864;
  v5 = this + 200;
  OZElement::parseEnd((this + 200), a2);
  *(this + 38113) = 0;
  v4[1234] = 1;
  if (*(a2 + 26) <= 2u)
  {
    v6 = MEMORY[0x277CC08F0];
    v7.n128_f64[0] = OZChannel::getValueAsInt((this + 27624), MEMORY[0x277CC08F0], 0.0);
    (*(*(this + 3485) + 712))(this + 27880, v6, 0, v7);
    v8.n128_f64[0] = OZChannel::getValueAsInt((this + 27624), v6, 0.0);
    (*(*(this + 3517) + 712))(this + 28136, v6, 0, v8);
    if (OZChannel::getValueAsInt((this + 20048), v6, 0.0) == 2)
    {
      (*(*(this + 4087) + 712))(this + 32696, MEMORY[0x277CC08F0], 0, 1.0);
      OZChannelCurve::convertCurveBSplineBiasToXSplineBias((this + 19184));
      OZChannelCurve::setCurveInterpolation((this + 19184), 10);
    }
  }

  v9 = MEMORY[0x277CC08F0];
  if (OZChannel::getValueAsInt((this + 25904), MEMORY[0x277CC08F0], 0.0) - 1 <= 1 && OZChannelBase::isEnabled((this + 21760), 0, 1))
  {
    OZChannel::setDefaultValue((this + 25904), 0.0);
    (*(*(this + 3238) + 712))(this + 25904, MEMORY[0x277CC08F0], 0, 0.0);
  }

  if ((*(this + 306) & 8) != 0)
  {
    v10 = *(v4 + 124);
    if (v10)
    {
      (*(*v10 + 1128))(&v18);
      time2 = v19;
      v17[0] = *v9;
      if (!CMTimeCompare(v17, &time2))
      {
        (*(*v5 + 1128))(&v18, v5);
        v17[0] = v18;
        OZMoShape::initPPaintTime(this + 2372, v17, &v18);
      }
    }
  }

  if (*(v4 + 124))
  {
    (*(*v5 + 1128))(&v18, v5);
    (*(**(v4 + 124) + 1128))(v17);
    time2 = v18;
    v20 = v17[0];
    if (CMTimeCompare(&time2, &v20) || (time2 = v19, v20 = v17[1], CMTimeCompare(&time2, &v20)))
    {
      (*(*v5 + 1128))(&v18, v5);
      v17[0] = v18;
      OZMoShape::initPPaintTime(this + 2372, v17, &v18);
    }
  }

  if ((*(*v5 + 272))(v5))
  {
    v11 = *(a2 + 26) > 3u;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && (*(*v5 + 1328))(v5) != 1.0)
  {
    (*(*(this + 25) + 1328))(v5);
    (*(*(this + 3062) + 776))(this + 24496, 1.0 / v12);
    (*(*(this + 25) + 1328))(v5);
    (*(*(this + 3150) + 776))(this + 25200, 1.0 / v13);
  }

  (*(*(this + 25) + 1328))(v5);
  v14 = MEMORY[0x277CC08F0];
  (*(*(this + 2683) + 712))(this + 21464, MEMORY[0x277CC08F0], 0);
  v15.n128_u64[0] = 0;
  if ((*(this + 306) & 8) != 0)
  {
    v15.n128_f64[0] = 1.0;
  }

  (*(*(this + 3979) + 712))(this + 31832, v14, 0, v15);
  if (*(v4 + 155) < 5.0)
  {
    OZMoShape::reparentChannels((this + 18976), (this + 648), 0);
    v4[1248] = 0;
  }

  return 1;
}

uint64_t non-virtual thunk toOZRotoshape::parseEnd(OZRotoshape *this, PCSerializerReadStream *a2)
{
  OZRotoshape::parseEnd((this - 200), a2);
  return 1;
}

{
  OZRotoshape::parseEnd((this - 248), a2);
  return 1;
}

uint64_t OZRotoshape::parseElement(OZRotoshape *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = (this + 36864);
  v23 = 0;
  PCSharedCount::PCSharedCount(&v22);
  *v21 = 0;
  v7 = *(a3 + 2);
  if (v7 <= 604)
  {
    switch(v7)
    {
      case 62:
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v21);
        PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v22);
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v21[1]);
        v11 = OZFactories::lookupFactory(*(theApp + 32), v21[0]);
        if (v11)
        {
          if (v12)
          {
            v13 = v12;
            v14 = (*(*(this + 25) + 272))(this + 200);
            v15 = (*(*v13 + 168))(v13, &v22, v21[1]);
            OZMoShape::setParticlePaint((this + 18976), v15, v21[1]);
            if (v14)
            {
              OZScene::registerNode(v14, v6[124]);
              OZScene::addAllDependencies(v14, v6[124]);
            }

            if (v15)
            {
              v16 = (v15 + 48);
            }

            else
            {
              v16 = 0;
            }

            PCSerializerReadStream::pushHandler(a2, v16);
          }
        }

        goto LABEL_28;
      case 603:
        OZChannelCurve::deleteAllVertices((this + 19184));
        v9 = 0;
        v8 = 1;
        break;
      case 604:
        v8 = 0;
        v9 = 1;
        break;
      default:
LABEL_28:
        OZElement::parseElement((this + 200), a2, a3);
        goto LABEL_29;
    }

    *(v6 + 1249) = v8;
    *(v6 + 1250) = v9;
    goto LABEL_28;
  }

  if (v7 == 605)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 504, &v23 + 4);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 502, &v23);
    LODWORD(v17) = HIDWORD(v23);
    v18 = v17;
    if (*(v6 + 1249) == 1)
    {
      v19 = this + 19472;
      (*(*(this + 2434) + 144))(this + 19472, MEMORY[0x277CC08F0], v6 + 1256, v18);
    }

    else
    {
      v19 = this + 19704;
      (*(*(this + 2463) + 144))(this + 19704, MEMORY[0x277CC08F0], v6 + 1256, v18);
    }

    (*(*v19 + 352))(v19, v6[157], v23);
    goto LABEL_28;
  }

  if (v7 == 607)
  {
    (*(*a3 + 72))(a3, this + 38097);
    goto LABEL_28;
  }

  if (v7 != 800 || !v6[157])
  {
    goto LABEL_28;
  }

  v10 = 19704;
  if (*(v6 + 1249))
  {
    v10 = 19472;
  }

  (*(*(this + v10) + 552))(this + v10);
  v6[157] = 0;
  PCSerializerReadStream::pushHandler(a2, 0);
LABEL_29:
  PCString::~PCString(&v22);
  return 1;
}

uint64_t non-virtual thunk toOZRotoshape::parseElement(OZRotoshape *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZRotoshape::parseElement((this - 200), a2, a3);
  return 1;
}

{
  OZRotoshape::parseElement((this - 248), a2, a3);
  return 1;
}

CGColorSpace **OZRotoshape::completeLoading(OZRotoshape *this)
{
  OZShapeRenderState::OZShapeRenderState(v17);
  if ((*(*(this + 25) + 272))(this + 200))
  {
    v2 = (*(*(this + 25) + 272))(this + 200);
    OZScene::getCurrentTime(v2, &v15);
    *v17 = v15;
    *&v17[16] = v16;
  }

  v3 = ProShade::Snippet::code((this + 18976));
  v15.n128_u64[0] = v3;
  PCMutex::lock(v3);
  v15.n128_u8[8] = 1;
  OZShape::completeCurve((this + 18976));
  *(this + 21616) = 1;
  OZShape::didSetInterpolation((this + 18976));
  v12[2] = v18;
  v12[3] = v19;
  v12[4] = v20;
  v12[0] = *v17;
  v12[1] = *&v17[16];
  v13 = v21;
  if (v21)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v21);
  }

  v14 = v22;
  CurrentRenderParams = OZShape::getCurrentRenderParams(this + 18976, v12);
  OZShape::checkWindingOrder((this + 18976), v17, CurrentRenderParams, 0, 1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v13);
  if (OZChannel::getValueAsInt((this + 20304), v17, 0.0))
  {
    OZShape::closeCurve((this + 18976), v17);
  }

  v5 = *this;
  if ((*(this + 1224) & 8) != 0)
  {
    v6 = (v5 + 432);
  }

  else
  {
    v6 = (v5 + 440);
  }

  (*v6)(this);
  (*(*this + 200))(this, 1);
  v9[2] = v18;
  v9[3] = v19;
  v9[4] = v20;
  v9[0] = *v17;
  v9[1] = *&v17[16];
  v10 = v21;
  if (v21)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v21);
  }

  v11 = v22;
  v7 = OZShape::getCurrentRenderParams(this + 18976, v9);
  OZMoShape::validateChannels((this + 18976), v17, v7, 0, 1);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v10);
  PCMutex::unlock(v3);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
}

OZChannelBase *OZRotoshape::getChannelFromRefAndVersion(OZRotoshape *this, OZChannelRef *a2, double a3)
{
  if (a3 >= 5.0)
  {
    v9 = (this + 200);

    return OZTransformNode::getChannelFromRefAndVersion(v9, a2, a3);
  }

  else
  {
    v6 = *(this + 38112);
    result = OZTransformNode::getChannelFromRefAndVersion((this + 200), a2, a3);
    if ((v6 & 1) == 0 && !result)
    {
      OZMoShape::reparentChannels((this + 18976), (this + 648), 1);
      ChannelFromRefAndVersion = OZTransformNode::getChannelFromRefAndVersion((this + 200), a2, a3);
      OZMoShape::reparentChannels((this + 18976), (this + 648), 0);
      return ChannelFromRefAndVersion;
    }
  }

  return result;
}

OZChannelBase *non-virtual thunk toOZRotoshape::getChannelFromRefAndVersion(OZRotoshape *this, OZChannelRef *a2, double a3)
{
  return OZRotoshape::getChannelFromRefAndVersion((this - 200), a2, a3);
}

{
  return OZRotoshape::getChannelFromRefAndVersion((this - 216), a2, a3);
}

void OZRenderGraphState::OZRenderGraphState(OZRenderGraphState *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0x3FFCCCCCCCCCCCCDLL;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 64;
  *(this + 9) = this + 64;
  *(this + 10) = 0;
  *(this + 88) = 1;
  *(this + 22) = 0x3FF0000000000000;
  *(this + 17) = 0x3FF0000000000000;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 28) = &unk_2871F25A8;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 128) = 1;
  *(this + 258) = 0;
  *(this + 65) = 0;
  *(this + 264) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 268), 1.0, 1.0, 1.0, 1.0);
  *(this + 71) = 1065353216;
  *(this + 144) = 257;
  *(this + 37) = 0;
}

void sub_2601A2AB4(_Unwind_Exception *a1)
{
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v2);
  std::__list_imp<unsigned int>::clear(v1);
  _Unwind_Resume(a1);
}

void OZ3DEngineSceneElement::registerRetiming(OZ3DEngineSceneElement *this)
{
  {
    OZRetimingUtil::RetimingExaminer::RetimingExaminer(&OZ3DEngineSceneElement::registerRetiming(void)::sRetimer);
    OZ3DEngineSceneElement::registerRetiming(void)::sRetimer = &unk_28729CE28;
    __cxa_atexit(OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::~RetimingExaminerTemplate, &OZ3DEngineSceneElement::registerRetiming(void)::sRetimer, &dword_25F8F0000);
  }
}

void OZ3DEngineSceneElement::OZ3DEngineSceneElement(OZ3DEngineSceneElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZElement::OZElement(this, a2, a3, a4);
  *v5 = &unk_28729C0E0;
  v5[2] = &unk_28729CA18;
  v5[6] = &unk_28729CC70;
  v5[816] = &unk_28729CCC8;
  MEMORY[0x2666E9C50](v5 + 2347);
  *(this + 18840) = 0;
  *(this + 2356) = 0;
  *(this + 2358) = 0;
  *(this + 2357) = 0;
  OZChannelBase::setRangeName((this + 18872), v6);
  v7 = MEMORY[0x277CC0898];
  *(this + 18888) = *MEMORY[0x277CC0898];
  *(this + 2363) = *(v7 + 16);
  *(this + 18912) = 0;
  *(this + 2373) = 0;
  *(this + 18920) = 0u;
  *(this + 18936) = 0u;
  *(this + 18952) = 0u;
  *(this + 18968) = 0u;
  PCSharedCount::PCSharedCount(this + 2374);
  *(this + 2390) = 0x3FF0000000000000;
  *(this + 2385) = 0x3FF0000000000000;
  *(this + 2380) = 0x3FF0000000000000;
  *(this + 2375) = 0x3FF0000000000000;
  *(this + 1188) = 0u;
  *(this + 1189) = 0u;
  *(this + 19048) = 0u;
  *(this + 19064) = 0u;
  *(this + 1193) = 0u;
  *(this + 1194) = 0u;
  *(this + 19128) = 0u;
  PCURL::PCURL(&v9, @"Channel 3D Scene Element Footage Folder");
  OZChannelFolder::OZChannelFolder((this + 19144), &v9, (this + 320), 0x12Cu, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel 3D Scene Element Footage");
  OZChan3DEngineSceneFileRefWithPicker::OZChan3DEngineSceneFileRefWithPicker((this + 19272), &v9, (this + 19144), 0x12Du, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Unit Size Enum");
  PCURL::PCURL(&v8, @"Channel Unit Size");
  OZChannelEnum::OZChannelEnum((this + 19480), &v9, &v8, (this + 448), 0x12Eu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Custom Unit Size");
  OZChannelDouble::OZChannelDouble((this + 19736), 1000, &v9, (this + 448), 0x12Fu, 0, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Orientation");
  OZChannelRotation3D::OZChannelRotation3D((this + 19888), 0.0, 0.0, 0.0, &v9, (this + 448), 0x130u, 0, 4u, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Physics");
  OZChannelFolder::OZChannelFolder((this + 20744), &v9, (this + 448), 0x13Eu, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "None;Static;Dynamic;Kinematic");
  PCString::PCString(&v8, "Type");
  OZChannelEnum::OZChannelEnum((this + 20872), 0, &v9, &v8, (this + 20744), 0x13Fu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Automatic;Box;Sphere");
  PCString::PCString(&v8, "Simulation Shape");
  OZChannelEnum::OZChannelEnum((this + 21128), 0, &v9, &v8, (this + 20744), 0x143u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Mass");
  OZChannelDouble::OZChannelDouble((this + 21384), 1.0, &v9, (this + 20744), 0x140u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Bounciness");
  OZChannelPercent::OZChannelPercent((this + 21536), 0.5, &v9, (this + 20744), 0x141u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Sliding Friction");
  OZChannelPercent::OZChannelPercent((this + 21688), 0.5, &v9, (this + 20744), 0x142u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Charge");
  OZChannelDouble::OZChannelDouble((this + 21840), 0.0, &v9, (this + 20744), 0x146u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Charge Variation");
  OZChannelDouble::OZChannelDouble((this + 21992), 0.0, &v9, (this + 20744), 0x147u, 0, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Time Scale");
  OZChannelDouble::OZChannelDouble((this + 22144), 1.0, &v9, (this + 320), 0x13Au, 4259840, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Time Reverse");
  OZChannelBool::OZChannelBool((this + 22296), 0, &v9, (this + 320), 0x13Bu, 0x410000u, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Time Remap Enum");
  PCURL::PCURL(&v8, @"Channel Image Element Time Remap Label");
  OZChannelEnum::OZChannelEnum((this + 22448), 0, &v9, &v8, (this + 320), 0x134u, 2, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Retime Frame");
  OZChannelRetimeFrame::OZChannelRetimeFrame((this + 22704), 1.0, &v9, (this + 320), 0x135u, 131074);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Retime Frame Cache");
  OZChannelDouble::OZChannelDouble((this + 22856), 1.0, &v9, (this + 320), 0x13Cu, 131074, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Retime Sampling Enum");
  PCURL::PCURL(&v8, @"Channel Image Element Retime Sampling Label");
  OZChannelEnumRetime::OZChannelEnumRetime((this + 23008), &v9, &v8, (this + 320), 0x136u, 2u);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element End Condition Enum");
  PCURL::PCURL(&v8, @"Channel Image Element End Condition Label");
  OZChannelEnum::OZChannelEnum((this + 23264), &v9, &v8, (this + 320), 0x137u, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Loop Duration");
  OZChannelDouble::OZChannelDouble((this + 23520), 0.0, &v9, (this + 320), 0x138u, 32770, 0, 0);
  PCString::~PCString(&v9);
  PCURL::PCURL(&v9, @"Channel Image Element Duration Cache");
  OZChannelDouble::OZChannelDouble((this + 23672), 0.0, &v9, (this + 320), 0x13Du, 2, 0, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Scripting");
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 23824), &v9, (this + 448), 0x144u, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Shading");
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 23952), &v9, (this + 448), 0x145u, 0);
  PCString::~PCString(&v9);
  PCString::PCString(&v9, "Use Custom Lighting");
  OZChannelBool::OZChannelBool((this + 24080), 0, &v9, (this + 448), 0x148u, 0, 0, 0);
  PCString::~PCString(&v9);
  *(this + 3032) = 0;
  *(this + 1515) = 0u;
  PCMutex::PCMutex(this + 337);
  PCMutex::PCMutex(this + 338);
  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(this + 19272, 0);
  OZChanObjectManipRef::setAlwaysUpdateDefaultValue(this + 19272, 1);
  OZChannelBase::setFlag((this + 6680), 2048, 0);
  OZChannelBase::saveStateAsDefault((this + 6680));
  OZChannelBase::resetFlag((this + 19480), 16, 0);
  OZChannelBase::enable((this + 19736), 0, 0);
  OZChannel::setMin((this + 19736), 0.1);
  OZChannel::setSliderMin((this + 19736), 0.1);
  OZChannel::setSliderMax((this + 19736), 1000.0);
  OZChannel::setKeyframable((this + 19736), 0);
  OZChannelBase::resetFlag((this + 19736), 16, 0);
  OZChannelFolder::setKeyframable((this + 19888), 0, 0);
  OZChannelBase::setFlag((this + 20480), 2, 0);
  OZChannelBase::setParameterCtlrClassName((this + 19888), @"OZEnvironmentRotationController");
  OZChannelBase::resetFlag((this + 19888), 16, 0);
  OZChannelBase::setFlag((this + 12672), 4259874, 0);
  OZChannelBase::setFlag((this + 14568), 4259874, 0);
  OZChannelBase::setFlag((this + 17520), 4259874, 0);
  OZChannelBase::setFlag((this + 5032), 4259874, 0);
  OZChannelBase::setFlag((this + 11208), 4259872, 0);
  OZChannelBase::setFlag((this + 9936), 4259872, 0);
  OZChannelBase::setFlag((this + 9352), 4259872, 0);
  OZChannelBase::setFlag((this + 8920), 4259872, 0);
  OZChannelBase::setFlag((this + 8768), 4259872, 0);
  *(this + 2360) = 0;
  OZChannel::setSliderMin((this + 21384), 0.0);
  OZChannel::setSliderMax((this + 21384), 1.0);
  OZChannel::setMin((this + 21688), 0.0);
  OZChannel::setMax((this + 21688), 1.0);
  OZChannel::setMin((this + 21536), 0.0);
  OZChannel::setMax((this + 21536), 1.0);
  OZChannel::setSliderMin((this + 21840), -1.0);
  OZChannel::setSliderMax((this + 21840), 1.0);
  OZChannel::setSliderMin((this + 21992), -1.0);
  OZChannel::setSliderMax((this + 21992), 1.0);
}

void sub_2601A3744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCMutex::~PCMutex((v12 + v17));
  OZChannelBool::~OZChannelBool((v12 + v15));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((v12 + v19));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((v12 + v16));
  OZChannel::~OZChannel((v12 + 23672));
  OZChannel::~OZChannel((v12 + 23520));
  OZChannelEnum::~OZChannelEnum((v12 + 23264));
  OZChannelEnum::~OZChannelEnum((v12 + 23008));
  OZChannel::~OZChannel((v12 + 22856));
  OZChannelRetimeFrame::~OZChannelRetimeFrame((v12 + 22704));
  OZChannelEnum::~OZChannelEnum((v12 + 22448));
  OZChannelBool::~OZChannelBool((v12 + 22296));
  OZChannel::~OZChannel((v12 + 22144));
  OZChannel::~OZChannel((v12 + 21992));
  OZChannel::~OZChannel((v12 + 21840));
  OZChannelPercent::~OZChannelPercent((v12 + 21688));
  OZChannelPercent::~OZChannelPercent((v12 + 21536));
  OZChannel::~OZChannel((v12 + 21384));
  OZChannelEnum::~OZChannelEnum((v12 + 21128));
  OZChannelEnum::~OZChannelEnum((v12 + 20872));
  OZChannelFolder::~OZChannelFolder((v12 + v13));
  OZChannelRotation3D::~OZChannelRotation3D((v12 + 19888));
  OZChannel::~OZChannel((v12 + v18));
  OZChannelEnum::~OZChannelEnum((v12 + 19480));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v12 + 19272));
  OZChannelFolder::~OZChannelFolder((v12 + 19144));
  v21 = *(v12 + 19136);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  PCSharedCount::~PCSharedCount((v12 + 18992));
  v22 = *(v12 + 18952);
  if (v22)
  {
    *(v12 + 18960) = v22;
    operator delete(v22);
  }

  v23 = *v14;
  if (*v14)
  {
    *(v12 + 18928) = v23;
    operator delete(v23);
  }

  std::recursive_mutex::~recursive_mutex((v12 + 18776));
  OZElement::~OZElement(v12);
  _Unwind_Resume(a1);
}

void OZ3DEngineSceneElement::OZ3DEngineSceneElement(OZ3DEngineSceneElement *this, const OZ3DEngineSceneElement *a2, uint64_t a3)
{
  OZElement::OZElement(this, a2, a3);
  *v5 = &unk_28729C0E0;
  v5[2] = &unk_28729CA18;
  v5[6] = &unk_28729CC70;
  v5[816] = &unk_28729CCC8;
  MEMORY[0x2666E9C50](v5 + 2347);
  *(this + 18840) = 0;
  *(this + 2356) = 0;
  *(this + 2358) = 0;
  *(this + 2357) = 0;
  OZChannelBase::setRangeName((this + 18872), v6);
  v7 = MEMORY[0x277CC0898];
  *(this + 18888) = *MEMORY[0x277CC0898];
  *(this + 2363) = *(v7 + 16);
  *(this + 18912) = 0;
  *(this + 2373) = 0;
  *(this + 18920) = 0u;
  *(this + 18936) = 0u;
  *(this + 18952) = 0u;
  *(this + 18968) = 0u;
  PCSharedCount::PCSharedCount(this + 2374);
  *(this + 2390) = 0x3FF0000000000000;
  *(this + 2385) = 0x3FF0000000000000;
  *(this + 2380) = 0x3FF0000000000000;
  *(this + 2375) = 0x3FF0000000000000;
  *(this + 1188) = 0u;
  *(this + 1189) = 0u;
  *(this + 19048) = 0u;
  *(this + 19064) = 0u;
  *(this + 1193) = 0u;
  *(this + 19128) = 0u;
  *(this + 1194) = 0u;
  OZChannelFolder::OZChannelFolder((this + 19144), (a2 + 19144), (this + 320));
  OZChan3DEngineSceneFileRefWithPicker::OZChan3DEngineSceneFileRefWithPicker((this + 19272), (a2 + 19272), (this + 19144));
  OZChannelEnum::OZChannelEnum((this + 19480), (a2 + 19480), (this + 448));
  OZChannel::OZChannel((this + 19736), (a2 + 19736), (this + 448));
  *(this + 2467) = &unk_287245C60;
  *(this + 2469) = &unk_287245FC0;
  OZChannelRotation3D::OZChannelRotation3D((this + 19888), (a2 + 19888), (this + 448));
  OZChannelFolder::OZChannelFolder((this + 20744), (a2 + 20744), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 20872), (a2 + 20872), (this + 20744));
  OZChannelEnum::OZChannelEnum((this + 21128), (a2 + 21128), (this + 20744));
  OZChannel::OZChannel((this + 21384), (a2 + 21384), (this + 20744));
  *(this + 2673) = &unk_287245C60;
  *(this + 2675) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 21536), (a2 + 21536), (this + 20744));
  OZChannelPercent::OZChannelPercent((this + 21688), (a2 + 21688), (this + 20744));
  OZChannel::OZChannel((this + 21840), a2 + 195, (this + 20744));
  *(this + 2730) = &unk_287245C60;
  *(this + 2732) = &unk_287245FC0;
  OZChannel::OZChannel((this + 21992), (a2 + 21992), (this + 20744));
  *(this + 2749) = &unk_287245C60;
  *(this + 2751) = &unk_287245FC0;
  OZChannel::OZChannel((this + 22144), (a2 + 22144), (this + 320));
  *(this + 2768) = &unk_287245C60;
  *(this + 2770) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 22296), (a2 + 22296), (this + 320));
  OZChannelEnum::OZChannelEnum((this + 22448), (a2 + 22448), (this + 320));
  OZChannelRetimeFrame::OZChannelRetimeFrame((this + 22704), (a2 + 22704), (this + 320));
  OZChannel::OZChannel((this + 22856), (a2 + 22856), (this + 320));
  *(this + 2857) = &unk_287245C60;
  *(this + 2859) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 23008), (a2 + 23008), (this + 320));
  *(this + 2876) = &unk_287282A58;
  *(this + 2878) = &unk_287282DC8;
  OZChannelEnum::OZChannelEnum((this + 23264), (a2 + 23264), (this + 320));
  OZChannel::OZChannel((this + 23520), a2 + 210, (this + 320));
  *(this + 2940) = &unk_287245C60;
  *(this + 2942) = &unk_287245FC0;
  OZChannel::OZChannel((this + 23672), (a2 + 23672), (this + 320));
  *(this + 2959) = &unk_287245C60;
  *(this + 2961) = &unk_287245FC0;
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 23824), (a2 + 23824), (this + 448));
  OZChannelVaryingFolder::OZChannelVaryingFolder((this + 23952), (a2 + 23952), (this + 448));
  OZChannelBool::OZChannelBool((this + 24080), a2 + 215, (this + 448));
  *(this + 3032) = 0;
  *(this + 1515) = 0u;
  PCMutex::PCMutex(this + 337);
  PCMutex::PCMutex(this + 338);
  *(this + 2360) = 0;
  OZ3DEngineSceneElement::setScriptURL(this, *(a2 + 3031));
  OZ3DEngineSceneElement::loadShader(this, *(a2 + 3032));
}

void sub_2601A41F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, void **a16)
{
  PCMutex::~PCMutex((v16 + v18));
  OZChannelBool::~OZChannelBool((v16 + v21));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((v16 + v20));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((v16 + v19));
  OZChannel::~OZChannel(v17);
  OZChannel::~OZChannel(v23);
  OZChannelEnum::~OZChannelEnum((v16 + 23264));
  OZChannelEnum::~OZChannelEnum(v22);
  OZChannel::~OZChannel(a10);
  OZChannelRetimeFrame::~OZChannelRetimeFrame((v16 + 22704));
  OZChannelEnum::~OZChannelEnum((v16 + 22448));
  OZChannelBool::~OZChannelBool((v16 + 22296));
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChannel::~OZChannel(a13);
  OZChannelPercent::~OZChannelPercent((v16 + 21688));
  OZChannelPercent::~OZChannelPercent((v16 + 21536));
  OZChannel::~OZChannel(a14);
  OZChannelEnum::~OZChannelEnum((v16 + 21128));
  OZChannelEnum::~OZChannelEnum((v16 + 20872));
  OZChannelFolder::~OZChannelFolder((v16 + 20744));
  OZChannelRotation3D::~OZChannelRotation3D((v16 + 19888));
  OZChannel::~OZChannel(a15);
  OZChannelEnum::~OZChannelEnum((v16 + 19480));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v16 + 19272));
  OZChannelFolder::~OZChannelFolder((v16 + 19144));
  v25 = *(v16 + 19136);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  PCSharedCount::~PCSharedCount((v16 + 18992));
  v26 = *(v16 + 18952);
  if (v26)
  {
    *(v16 + 18960) = v26;
    operator delete(v26);
  }

  v27 = *a16;
  if (*a16)
  {
    *(v16 + 18928) = v27;
    operator delete(v27);
  }

  std::recursive_mutex::~recursive_mutex((v16 + 18776));
  OZElement::~OZElement(v16);
  _Unwind_Resume(a1);
}

CFURLRef OZ3DEngineSceneElement::setScriptURL(OZ3DEngineSceneElement *this, CFURLRef url)
{
  v4 = *(this + 3031);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFURLCreateFileReferenceURL(*MEMORY[0x277CBECE8], url, 0);
  *(this + 3031) = result;
  return result;
}

CFURLRef OZ3DEngineSceneElement::loadShader(CFURLRef this, const __CFURL *a2)
{
  if (a2)
  {
    v3 = this;
    *(this + 2368) = [[OZShaderController alloc] initWithURL:a2];
    v4 = *(v3 + 3032);
    if (v4)
    {
      CFRelease(v4);
    }

    this = CFURLCreateFileReferenceURL(*MEMORY[0x277CBECE8], a2, 0);
    *(v3 + 3032) = this;
  }

  return this;
}

void OZ3DEngineSceneElement::~OZ3DEngineSceneElement(OZ3DEngineSceneElement *this)
{
  *this = &unk_28729C0E0;
  *(this + 2) = &unk_28729CA18;
  *(this + 6) = &unk_28729CC70;
  *(this + 816) = &unk_28729CCC8;

  v2 = *(this + 3031);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3032);
  if (v3)
  {
    CFRelease(v3);
  }

  PCMutex::~PCMutex(this + 338);
  PCMutex::~PCMutex(this + 337);
  OZChannelBool::~OZChannelBool((this + 24080));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this + 23952));
  OZChannelVaryingFolder::~OZChannelVaryingFolder((this + 23824));
  OZChannel::~OZChannel((this + 23672));
  OZChannel::~OZChannel((this + 23520));
  OZChannelEnum::~OZChannelEnum((this + 23264));
  OZChannelEnum::~OZChannelEnum(this + 2876);
  OZChannel::~OZChannel((this + 22856));
  OZChannelRetimeFrame::~OZChannelRetimeFrame((this + 22704));
  OZChannelEnum::~OZChannelEnum((this + 22448));
  OZChannelBool::~OZChannelBool((this + 22296));
  OZChannel::~OZChannel((this + 22144));
  OZChannel::~OZChannel((this + 21992));
  OZChannel::~OZChannel((this + 21840));
  OZChannelPercent::~OZChannelPercent((this + 21688));
  OZChannelPercent::~OZChannelPercent((this + 21536));
  OZChannel::~OZChannel((this + 21384));
  OZChannelEnum::~OZChannelEnum((this + 21128));
  OZChannelEnum::~OZChannelEnum((this + 20872));
  OZChannelFolder::~OZChannelFolder((this + 20744));
  OZChannelRotation3D::~OZChannelRotation3D((this + 19888));
  OZChannel::~OZChannel((this + 19736));
  OZChannelEnum::~OZChannelEnum((this + 19480));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 19272));
  OZChannelFolder::~OZChannelFolder((this + 19144));
  v4 = *(this + 2392);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  PCSharedCount::~PCSharedCount(this + 2374);
  v5 = *(this + 2369);
  if (v5)
  {
    *(this + 2370) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2365);
  if (v6)
  {
    *(this + 2366) = v6;
    operator delete(v6);
  }

  std::recursive_mutex::~recursive_mutex((this + 18776));

  OZElement::~OZElement(this);
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEngineSceneElement::~OZ3DEngineSceneElement(OZ3DEngineSceneElement *this)
{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 16));
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 48));
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 6528));
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineSceneElement::~OZ3DEngineSceneElement((this - 6528));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEngineSceneElement::operator=(uint64_t a1, const void *a2)
{
  OZElement::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 19480, v4 + 19480);
  OZChannelBase::operator=(a1 + 19736, v5 + 19736);

  return OZChannelPosition::operator=(a1 + 19888, v5 + 19888);
}

uint64_t OZ3DEngineSceneElement::openMedia(OZ3DEngineSceneElement *this)
{
  v1 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (!v1)
  {
    return 1;
  }

  v2 = *(*v1 + 104);

  return v2();
}

const void *OZ3DEngineSceneElement::get3DEngineSceneFile(OZ3DEngineSceneElement *this)
{
  result = OZChanSceneNodeRef::getNode((this + 19272));
  if (result)
  {
  }

  return result;
}

uint64_t OZ3DEngineSceneElement::isPrecomposed(OZ3DEngineSceneElement *this, const CMTime *a2)
{
  if ((*(*(this + 835) + 496))() & 1) != 0 || OZElement::getPreserveTransparency(this, a2) || ((*(*this + 416))(this) & 1) != 0 || ((*(*this + 1864))(this))
  {
    return 1;
  }

  v5 = *(*this + 1592);

  return v5(this, a2);
}

double OZ3DEngineSceneElement::calcAutomaticUnitSize(OZ3DEngineSceneElement *this)
{
  v7 = xmmword_2603429E0;
  v8 = xmmword_2603429E0;
  v6 = xmmword_2603429E0;
  v1 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (!v1)
  {
    return 512.0;
  }

  OZ3DEngineSceneFile::getSceneVolume(v1, &v6);
  if (*&v6 > *(&v6 + 1) || *&v7 > *(&v7 + 1) || *&v8 > *(&v8 + 1))
  {
    return 512.0;
  }

  v3 = vabdd_f64(*(&v6 + 1), *&v6);
  v4 = vabdd_f64(*(&v7 + 1), *&v7);
  v5 = vabdd_f64(*(&v8 + 1), *&v8);
  if (v3 < v4)
  {
    v3 = v4;
  }

  if (v3 < v5)
  {
    v3 = v5;
  }

  return 512.0 / v3;
}

uint64_t OZ3DEngineSceneElement::getUnitScaleMatrix@<X0>(OZ3DEngineSceneElement *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 19480), a2, 0.0);
  if (ValueAsInt == 2)
  {
    OZChannel::getValueAsDouble((this + 19736), a2, 0.0);
  }

  else
  {
    v7 = 1.0;
    if (!ValueAsInt)
    {
      (*(*this + 2312))(this, 1.0);
    }
  }

  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  PCMatrix44Tmpl<double>::leftScale(a3, v7, v7, v7);
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
  v8 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 20024), MEMORY[0x277CC08F0], 0.0);
  v10 = v9;
  OZChannel::getValueAsDouble((this + 20176), v8, 0.0);
  v12 = v11;
  OZChannel::getValueAsDouble((this + 20328), v8, 0.0);
  PCMatrix44Tmpl<double>::leftRotate(&v19, 4, v10, v12, v13);
  result = PCMatrix44Tmpl<double>::operator*(&v19, a3, v18);
  if (v18 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v16 = (a3 + i);
      v17 = *&v18[i + 16];
      *v16 = *&v18[i];
      v16[1] = v17;
    }
  }

  return result;
}

uint64_t OZ3DEngineSceneElement::calcFloorPosition(OZ3DEngineSceneElement *this, SCNScene *a2, float a3)
{
  OZRenderState::OZRenderState(&v24);
  memset(&v23, 0, sizeof(v23));
  PC_CMTimeMakeWithSecondsRoundToNearest(30, &v23, a3);
  v24.var0 = v23;
  v6 = (*(*this + 272))(this);
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  (*(*this + 1256))(this, &v13, &v24);
  memset(v8, 0, sizeof(v8));
  v9 = 4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  PCMatrix44Tmpl<double>::getTransformation(&v13, v8);
  return [OZScene::getSceneComposer(v6) calcFloorPositionBeneath:a2 scene:COERCE_DOUBLE(vcvt_f32_f64(v8[0]))];
}

uint64_t OZ3DEngineSceneElement::calcFloorPosition(uint64_t a1, uint64_t a2, double a3)
{
  v4 = (*(*a1 + 272))(a1);
  SceneComposer = OZScene::getSceneComposer(v4);

  return [SceneComposer calcFloorPositionBeneath:a2 scene:a3];
}

BOOL OZ3DEngineSceneElement::is3DNodeInMasterScene(OZ3DEngineSceneElement *this, OZGroup *a2)
{
  v3 = OZGroup::masterScene(a2);
  std::recursive_mutex::lock(v3);
  Representation = PCBitmap::getRepresentation(v3);
  v5 = [objc_msgSend(Representation "rootNode")] != 0;
  std::recursive_mutex::unlock(v3);
  return v5;
}

void OZ3DEngineSceneElement::add3DNodeToMasterScene(OZ3DEngineSceneElement *this)
{
  v2 = *(this + 120);
  if (v2)
  {
  }

  v3 = OZGroup::masterScene(v2);
  std::recursive_mutex::lock(v3);
  Representation = PCBitmap::getRepresentation(v3);
  v5 = (*(*this + 2288))(this);
  [objc_msgSend(Representation "rootNode")];
  Li3DEngineScene::didAddNode_NoLock(v3, v5);

  std::recursive_mutex::unlock(v3);
}

uint64_t OZ3DEngineSceneElement::remove3DNodeFromMasterScene(OZ3DEngineSceneElement *this)
{
  v1 = (*(*this + 2288))(this);

  return [v1 removeFromParentNode];
}

double *OZ3DEngineSceneElement::getLocalVolume(double *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v6 = OZ3DEngineSceneElement::get3DEngineSceneFile(result);
    if (v6)
    {
      v7 = v6;
      if (*(a3 + 202) == 1)
      {
        v20[0] = **&MEMORY[0x277CC08F0];
      }

      else
      {
        v21 = *a3;
        OZ3DEngineSceneElement::globalToSceneFileTime(v5, &v21, &v20[0].value);
      }

      v21 = v20[0];
      OZ3DEngineSceneFile::getSceneVolume(v7, a2);
    }

    OZ3DEngineSceneElement::getUnitScaleMatrix(v5, a3, v20);
    v8 = 0;
    v9 = 0;
    v10 = -1.0;
    v11 = 1.0;
    v12 = 1.0;
    v13 = -1.0;
    v14 = 1.0;
    v15 = -1.0;
    do
    {
      if ((v9 & 2) != 0)
      {
        v16 = 16;
      }

      else
      {
        v16 = 24;
      }

      v17 = *(a2 + v16);
      if (v9 >= 4)
      {
        v18 = 32;
      }

      else
      {
        v18 = 40;
      }

      v19 = *(a2 + v18);
      v21.value = *(a2 + (v8 & 8 ^ 8));
      *&v21.timescale = v17;
      v21.epoch = v19;
      result = PCMatrix44Tmpl<double>::transform<double>(&v20[0].value, &v21.value, &v21.value);
      if (v8)
      {
        if (v11 >= *&v21.value)
        {
          v11 = *&v21.value;
        }

        if (v10 <= *&v21.value)
        {
          v10 = *&v21.value;
        }

        if (v12 >= *&v21.timescale)
        {
          v12 = *&v21.timescale;
        }

        if (v13 <= *&v21.timescale)
        {
          v13 = *&v21.timescale;
        }

        if (v14 >= *&v21.epoch)
        {
          v14 = *&v21.epoch;
        }

        if (v15 <= *&v21.epoch)
        {
          v15 = *&v21.epoch;
        }
      }

      else
      {
        v13 = *&v21.timescale;
        v15 = *&v21.epoch;
        v14 = *&v21.epoch;
        v12 = *&v21.timescale;
        v10 = *&v21.value;
        v11 = *&v21.value;
      }

      ++v9;
      v8 += 8;
    }

    while (v8 != 64);
    *a2 = v11;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
  }

  return result;
}

__n128 OZ3DEngineSceneElement::globalToSceneFileTime@<Q0>(OZ3DEngineSceneElement *this@<X0>, CMTime *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (v6 && (OZ3DEngineSceneFile::supportsAnimation(v6) & 1) != 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v7 = (*(*this + 640))(this);

    OZRetimingUtil::RemapTimeValue(v7, a2, a3);
  }

  else
  {
    result = *&a2->value;
    *a3 = *&a2->value;
    a3[2] = a2->epoch;
  }

  return result;
}

double OZ3DEngineSceneElement::getOriginalBounds(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = xmmword_2603429E0;
    v9 = xmmword_2603429E0;
    v7 = xmmword_2603429E0;
    (*(*a1 + 1360))(a1, &v7);
    result = *&v7;
    v4 = *(&v7 + 1) - *&v7;
    v5 = v8;
    v6 = *(&v8 + 1) - *&v8;
    *a2 = v7;
    *(a2 + 8) = v5;
    *(a2 + 16) = v4;
    *(a2 + 24) = v6;
  }

  return result;
}

OZ3DEngineSceneFile *OZ3DEngineSceneElement::get3DScene(OZ3DEngineSceneElement *this)
{
  result = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (result)
  {

    return OZ3DEngineSceneFile::get3DScene(result);
  }

  return result;
}

void OZ3DEngineSceneElement::didAddToScene(OZTransformNode *this, OZScene *a2)
{
  OZTransformNode::didAddToScene(this, a2);
  if (*(this + 3031))
  {

    OZ3DEngineSceneElement::loadScript(this);
  }
}

void OZ3DEngineSceneElement::loadScript(OZ3DEngineSceneElement *this)
{
  v1 = *(this + 3031);
  if (v1)
  {
    v3 = [OZJS3DElement elementWith3DElement:this];
    v4 = [OZJSScene sceneWithScene:(*(*this + 272))(this)];
    v5 = *(this + 3030);
    if (v5)
    {
    }

    v6 = objc_alloc_init(OZScript);
    *(this + 3030) = v6;
    [(OZScript *)v6 exportObject:v3 as:@"self"];
    [*(this + 3030) exportObject:v4 as:@"motionScene"];
    [*(this + 3030) loadScriptWithURL:v1];
    v7 = (*(*this + 2336))(this);
    if (v7)
    {
      v8 = v7;
      std::recursive_mutex::lock(v7);
      [*(this + 3030) exportObject:PCBitmap::getRepresentation(v8) as:@"scene"];

      std::recursive_mutex::unlock(v8);
    }
  }
}

void OZ3DEngineSceneElement::didFinishLoadingIntoScene(OZ3DEngineSceneElement *this)
{
  OZ3DEngineSceneElement::setUpScriptChannels(this);

  OZ3DEngineSceneElement::setUpShaderChannels(this);
}

void OZ3DEngineSceneElement::setUpScriptChannels(OZ3DEngineSceneElement *this)
{
  v2 = *(this + 3030);
  if (v2)
  {
    v3 = [v2 parameterDescriptors];
    addChannelsForParameters(v3, (this + 23824));

    removeUnusedChannels(v3, (this + 23824));
  }
}

void OZ3DEngineSceneElement::setUpShaderChannels(OZ3DEngineSceneElement *this)
{
  v2 = *(this + 2368);
  if (v2 && [v2 library])
  {
    v3 = [*(this + 2368) parameters];
    addChannelsForParameters(v3, (this + 23952));

    removeUnusedChannels(v3, (this + 23952));
  }
}

void non-virtual thunk toOZ3DEngineSceneElement::didFinishLoadingIntoScene(OZ3DEngineSceneElement *this)
{
  v1 = (this - 16);
  OZ3DEngineSceneElement::setUpScriptChannels((this - 16));

  OZ3DEngineSceneElement::setUpShaderChannels(v1);
}

uint64_t OZ3DEngineSceneElement::didReadSceneFile(OZ3DEngineSceneElement *this)
{
  result = OZChannel::getValueAsInt((this + 19480), MEMORY[0x277CC08F0], 0.0);
  if (result != 2)
  {
    v3 = 1.0;
    if (!OZChannel::getValueAsInt((this + 19480), MEMORY[0x277CC08F0], 0.0))
    {
      v3 = (*(*this + 2312))(this);
    }

    (*(*(this + 2467) + 712))(this + 19736, MEMORY[0x277CC08F0], 1, v3);

    return OZChannel::setDefaultValue((this + 19736), v3);
  }

  return result;
}

void OZ3DEngineSceneElement::channelValueWillBeSet(id *this, OZChannel *a2, CMTime *a3, double a4)
{
  if (this + 2409 == a2)
  {
    (*(*this + 62))(this, a4);
    if (OZ3DEngineSceneElement::get3DEngineSceneFile(this))
    {
      v5 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
      (*(*v5 + 496))(v5);
    }

    if (OZ3DEngineSceneElement::get3DWorldOwner(this))
    {
      [(*(*this + 286))(this) removeFromParentNode];

      this[2360] = 0;
    }
  }
}

char *OZ3DEngineSceneElement::get3DWorldOwner(OZ3DEngineSceneElement *this)
{
  v1 = *(this + 120);
  if (!v1)
  {
    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((OZChannelBase::isEnabled((v2 + 20744), 1, 1) & 1) == 0)
  {
    return 0;
  }

  return v3;
}

void *OZ3DEngineSceneElement::hitCheck(void *a1, float32x2_t *a2, uint64_t a3, uint64_t a4, float64x2_t *a5, char a6)
{
  if (a6 & 4) != 0 && ((*(*a1 + 680))(a1))
  {
    return 0;
  }

  if ((a6 & 2) != 0)
  {
    v16 = *a3;
    *&v17 = *(a3 + 16);
    if (!(*(a1[2] + 104))(a1 + 2, &v16, 1, 1, 1))
    {
      return 0;
    }
  }

  v17 = xmmword_2603429E0;
  v18 = xmmword_2603429E0;
  v16 = xmmword_2603429E0;
  (*(*a1 + 1360))(a1, &v16, a3);
  v14 = vcvtq_f64_f32(*a2);
  v15 = 0;
  (*(*a1 + 1384))(v13, a1, &v14, a4, a3, 0);
  if (PCRayIntersectsBox(v13, &v16, a5))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OZ3DEngineSceneElement::buildRenderGraph(OZ3DEngineSceneElement *this, CMTime *a2, LiGraphBuilder *a3, const OZRenderGraphState *a4)
{
  OZ3DEngineSceneElement::updateScript(this, a2);
  OZRenderState::OZRenderState(&v31, a2);
  v25 = *a2;
  memset(&v30, 0, sizeof(v30));
  OZ3DEngineSceneElement::globalToSceneFileTime(this, &v25, &v30.value);
  memset(&v29, 0, sizeof(v29));
  if (OZ3DEngineSceneElement::get3DEngineSceneFile(this))
  {
    v8 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
    v9.n128_f64[0] = OZ3DEngineSceneFile::get3DFileTime(v8, &v30, &v29);
  }

  else
  {
    v9 = *&v30.value;
    v29 = v30;
  }

  (*(*this + 2336))(this, v9);
  OZ3DEngineSceneElement::getUnitScaleMatrix(this, &v31, &v25);
  for (i = 0; i != 4; ++i)
  {
    v28[i] = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v25.value + 2 * i)), *(&v25.epoch + 2 * i));
  }

  LiGraphBuilder::getCurrentInsertionGroup(a3, &v25);
  value = v25.value;
  PCSharedCount::~PCSharedCount(&v25.timescale);
  if (*(this + 18840) == 1)
  {
    v12 = *(this + 2356);
    v13 = *(this + 2357);
    v14 = *(this + 2358);
    WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
    v16 = v14;
    v17 = v13;
    v18 = v12;
    PCWorkingColor::PCWorkingColor(&v25, v18, v17, v16, 1.0, WorkingColorSpace);
    PCWorkingColorVector::PCWorkingColorVector(&v21);
    v22 = 1065353216;
    v23 = 257;
    v24 = 0;
    v20[0] = 1;
    v19 = PCWorkingColor::operator=(&v21, &v25);
    v22 = 1065353216;
    (*(*value + 256))(value, v20, v19);
    *(this + 18840) = 0;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v25.epoch);
  }

  else
  {
    LOBYTE(v25.value) = 0;
    PCWorkingColorVector::PCWorkingColorVector((&v25.value + 4));
    HIDWORD(v25.epoch) = 1065353216;
    v26 = 257;
    v27 = 0;
    (*(*value + 256))(value, &v25);
  }

  OZ3DEngineCore::buildRenderGraph(this + 18872, a2, a3, a4, v28, &v29, this);
}

double OZ3DEngineSceneElement::updateScript(OZ3DEngineSceneElement *this, CMTime *a2)
{
  v4 = (*(*this + 272))(this);
  v5 = (*(*this + 2336))(this);
  v16 = *a2;
  if (v5 && *(this + 3030))
  {
    v6 = *(this + 120);
    if (v6)
    {
    }

    v7 = OZGroup::masterScene(v6);
    std::recursive_mutex::lock(v7);
    [*(this + 3030) exportObject:PCBitmap::getRepresentation(v7) as:@"scene"];
    std::recursive_mutex::unlock(v7);
  }

  [*(this + 3030) exportObject:OZScene::getSceneComposer(v4) as:@"sceneComposer"];
  v15 = v16;
  Seconds = CMTimeGetSeconds(&v15);
  *&Seconds = Seconds;
  [*(this + 3030) exportObject:objc_msgSend(MEMORY[0x277CCABB0] as:{"numberWithFloat:", Seconds), @"time"}];
  TopLevel3DWorldGroup = FindTopLevel3DWorldGroup(v4);
  if (TopLevel3DWorldGroup)
  {
    v10 = OZGroup::masterScene(TopLevel3DWorldGroup);
    std::recursive_mutex::lock(v10);
    [*(this + 3030) exportObject:PCBitmap::getRepresentation(v10) as:@"masterScene"];
    std::recursive_mutex::unlock(v10);
  }

  v15 = v16;
  v11 = (*(*(this + 2) + 104))(this + 16, &v15, 1, 1, 1);
  v12 = v11;
  v13 = (this + 18888);
  if ((*(this + 18912) & 1) == 0 && v11)
  {
    [*(this + 3030) dispatch:@"OnEnable"];
    goto LABEL_14;
  }

  if (!*(this + 18912))
  {
LABEL_14:
    result = *&v16.value;
    *v13 = *&v16.value;
    *(this + 2363) = v16.epoch;
    *(this + 18912) = v12;
    if (!v12)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v11)
  {
    [*(this + 3030) dispatch:@"OnDisable"];
    result = *&v16.value;
    *v13 = *&v16.value;
    *(this + 2363) = v16.epoch;
    *(this + 18912) = 0;
    return result;
  }

  *v13 = *&v16.value;
  *(this + 2363) = v16.epoch;
  *(this + 18912) = v11;
LABEL_15:
  [*(this + 3030) dispatch:@"Update"];
  return result;
}

void OZ3DEngineSceneElement::makeRenderImageSource(OZ3DEngineSceneElement *this, const OZRenderState *a2, const OZRenderGraphState *a3)
{
  OZRenderState::OZRenderState(&v11, a2);
  v8[0] = *&a2->var0.var0;
  *&v8[1] = a2->var0.var3;
  memset(&v10, 0, sizeof(v10));
  OZ3DEngineSceneElement::globalToSceneFileTime(this, v8, &v10.value);
  memset(&v9, 0, sizeof(v9));
  if (OZ3DEngineSceneElement::get3DEngineSceneFile(this))
  {
    v5 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
    v6.n128_f64[0] = OZ3DEngineSceneFile::get3DFileTime(v5, &v10, &v9);
  }

  else
  {
    v6 = *&v10.value;
    v9 = v10;
  }

  (*(*this + 2336))(this, v6);
  OZ3DEngineSceneElement::getUnitScaleMatrix(this, &v11, v8);
  for (i = 0; i != 4; ++i)
  {
    v8[i + 8] = vcvt_hight_f32_f64(vcvt_f32_f64(v8[2 * i]), v8[2 * i + 1]);
  }

  OZ3DEngineCore::makeRenderImageSource();
}

__n128 OZ3DEngineSceneElement::getNaturalDuration@<Q0>(OZ3DEngineSceneElement *this@<X0>, uint64_t a2@<X8>)
{
  v3 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (v3)
  {
    v4 = *(*v3 + 1560);

    v4();
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v6 + 16);
  }

  return result;
}

uint64_t OZ3DEngineSceneElement::getNaturalDurationFlags(OZ3DEngineSceneElement *this)
{
  v2 = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (!v2)
  {
    return 6;
  }

  v3 = (*(*v2 + 1552))(v2);
  v4 = (*(*this + 640))(this);
  return OZRetimingUtil::GetRetimeNaturalDurationFlags(v4, v5) | v3;
}

void OZ3DEngineSceneElement::setFootage(OZ3DEngineSceneElement *this, OZSceneNodeFile *a2)
{
  OZSceneNode::removeFromLinked(this);
  OZChanSceneNodeRef::setNode((this + 19272), a2);
  if (a2)
  {
  }

  else
  {
    v4 = 0;
  }

  memset(&v23, 0, sizeof(v23));
  OriginalFileDurationInSeconds = OZ3DEngineSceneFile::getOriginalFileDurationInSeconds(v4);
  OZFigTimeForChannelSeconds(&v23, OriginalFileDurationInSeconds, 0x40000);
  memset(&v22, 0, sizeof(v22));
  CMTimeMake(&v22, 1, 30);
  v6 = (*(*this + 272))(this);
  v7 = v6;
  if (v6)
  {
    OZSceneSettings::getFrameDuration((v6 + 336), &v19);
    v22 = v19;
  }

  v9 = *(a2 + 2);
  v8 = a2 + 16;
  v10 = (*(v9 + 288))(v8);
  if ((v10 & 1) == 0)
  {
    v11 = OZPreferenceManager::Instance(v10);
    if (v7 && OZPreferenceManager::getUseProjectDurationForStills(v11))
    {
      *&v23.value = *(v7 + 1376);
      epoch = *(v7 + 1392);
    }

    else
    {
      OZPreferenceManager::getDefaultStillDuration(&v22, &v19);
      *&v23.value = *&v19.value;
      epoch = v19.epoch;
    }

    v23.epoch = epoch;
  }

  memset(&v25, 0, sizeof(v25));
  operator*(&v22, &v25, 0.5);
  v19 = v23;
  v26 = v25;
  PC_CMTimeSaferAdd(&v19, &v26, &v24);
  v19 = v24;
  v26 = v22;
  PC_CMTimeFloorToSampleDuration(&v19, &v26, &v17);
  v19 = **&MEMORY[0x277CC08F0];
  v20 = v17;
  v21 = v18;
  OZChannelObjectRootBase::setTimeExtent((this + 56), &v19, 0);
  v13 = (*(*this + 640))(this);
  OZRetimingUtil::SetDefaultRetimingState(v13, v14);
  v15 = (*(*v8 + 288))(v8);
  v16 = (*(*this + 640))(this);
  OZRetimingUtil::SetEndCondition(v16, (v15 & 1));
  OZ3DEngineSceneElement::didReadSceneFile(this);
  if (v7)
  {
    OZDocument::postNotification(*(v7 + 1584), 0x80000);
  }
}

void OZ3DEngineSceneElement::getIconNameBW(OZ3DEngineSceneElement *this@<X0>, PCURL *a2@<X8>)
{
  if ((*(*this + 1656))(this, MEMORY[0x277CC08F0]))
  {
    v3 = @"M_LayersList_ObjectIconGrey-3DObjectRasterized";
  }

  else
  {
    v3 = @"M_LayersList_ObjectIconGrey-3DObject";
  }

  PCURL::PCURL(a2, v3);
}

NSUInteger addChannelsForParameters(NSArray *a1, OZChannelFolder *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 14);
  result = [(NSArray *)a1 count];
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  obj = a1;
  if (v6)
  {
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = result == 0;
    }

    if (v7)
    {
      return result;
    }
  }

  else
  {
    v8 = v4[1] - *v4;
    if ([(NSArray *)a1 count]== v8 >> 3)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      result = [(NSArray *)a1 countByEnumeratingWithState:&v34 objects:&v40 count:16];
      v9 = result;
      if (!result)
      {
        return result;
      }

      v10 = *v35;
LABEL_14:
      v11 = 0;
      while (1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *v4;
        v13 = v4[1];
        if (*v4 != v13)
        {
          v14 = *(*(&v34 + 1) + 8 * v11);
          while (1)
          {
            v15 = *v12;
            v16 = [v14 name];
            v38.var0 = 0;
            PCString::set(&v38, v16);
            v17 = PCString::compare(v15 + 4, &v38);
            PCString::~PCString(&v38);
            if (!v17)
            {
              break;
            }

            if (++v12 == v13)
            {
              v12 = v13;
              break;
            }
          }

          v13 = v4[1];
        }

        if (v12 == v13)
        {
          break;
        }

        if (++v11 == v9)
        {
          result = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:&v40 count:16];
          v9 = result;
          if (result)
          {
            goto LABEL_14;
          }

          return result;
        }
      }
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  v18 = result;
  if (result)
  {
    v19 = 0;
    v20 = *v31;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v30 + 1) + 8 * v21);
        if (!v4)
        {
          goto LABEL_62;
        }

        v24 = *v4;
        v23 = v4[1];
        if (*v4 != v23)
        {
          while (1)
          {
            v25 = *v24;
            v26 = [v22 name];
            v40.var0 = 0;
            PCString::set(&v40, v26);
            LODWORD(v25) = PCString::compare(v25 + 4, &v40);
            PCString::~PCString(&v40);
            if (!v25)
            {
              break;
            }

            if (++v24 == v23)
            {
              v24 = v23;
              break;
            }
          }

          v23 = v4[1];
        }

        if (v24 != v23 && *v24)
        {
          ++v19;
        }

        else
        {
LABEL_62:
            ;
          }

          [objc_msgSend(v22 "name")];
          v28 = [v22 type];
          if (v28 <= 2)
          {
            switch(v28)
            {
              case 0:
                operator new();
              case 1:
                operator new();
              case 2:
                operator new();
            }
          }

          else if (v28 > 5)
          {
            if (v28 == 6)
            {
              operator new();
            }

            if (v28 == 7)
            {
              operator new();
            }
          }

          else
          {
            if (v28 == 3)
            {
              operator new();
            }

            if (v28 == 4)
            {
              operator new();
            }
          }
        }

        ++v21;
      }

      while (v21 != v18);
      result = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      v18 = result;
    }

    while (result);
  }

  return result;
}

void removeUnusedChannels(NSArray *a1, OZChannelFolder *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 14);
  if (v2)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v7 = *v3;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [(NSArray *)a1 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v8)
        {
          v9 = *v25;
LABEL_5:
          v10 = 0;
          while (1)
          {
            if (*v25 != v9)
            {
              objc_enumerationMutation(a1);
            }

            v11 = [*(*(&v24 + 1) + 8 * v10) name];
            v23.var0 = 0;
            PCString::set(&v23, v11);
            v12 = PCString::compare(v7 + 4, &v23);
            PCString::~PCString(&v23);
            if (!v12)
            {
              break;
            }

            if (v8 == ++v10)
            {
              v8 = [(NSArray *)a1 countByEnumeratingWithState:&v24 objects:v31 count:16];
              if (v8)
              {
                goto LABEL_5;
              }

              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v13 = v29;
          if (v29 >= v30)
          {
            v15 = (v29 - __p) >> 3;
            if ((v15 + 1) >> 61)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v16 = (v30 - __p) >> 2;
            if (v16 <= v15 + 1)
            {
              v16 = v15 + 1;
            }

            if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(&__p, v17);
            }

            *(8 * v15) = v7;
            v14 = 8 * v15 + 8;
            v18 = (8 * v15 - (v29 - __p));
            memcpy(v18, __p, v29 - __p);
            v19 = __p;
            __p = v18;
            v29 = v14;
            v30 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v29 = v7;
            v14 = (v13 + 8);
          }

          v29 = v14;
        }

        ++v3;
      }

      while (v3 != v4);
      v20 = __p;
      v21 = v29;
      if (__p != v29)
      {
        do
        {
          v22 = *v20;
          OZChannelFolder::removeDescendant(a2, *v20);
          if (v22)
          {
            (*(v22->var0 + 1))(v22);
          }

          ++v20;
        }

        while (v20 != v21);
        v20 = __p;
      }

      if (v20)
      {
        v29 = v20;
        operator delete(v20);
      }
    }
  }
}

void sub_2601A737C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZ3DEngineSceneElement::applyShader(OZ3DEngineSceneElement *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2368);
  if (v2 && [v2 library] && !*(this + 2372))
  {
    v3 = [MEMORY[0x277CDBAE0] program];
    [v3 setLibrary:{objc_msgSend(*(this + 2368), "library")}];
    [v3 setVertexFunctionName:{objc_msgSend(*(this + 2368), "vertexFunctionName")}];
    [v3 setFragmentFunctionName:{objc_msgSend(*(this + 2368), "fragmentFunctionName")}];
    v4 = v3;
    *(this + 2372) = v4;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = *"";
    v17[2] = ___ZN22OZ3DEngineSceneElement11applyShaderEv_block_invoke;
    v17[3] = &__block_descriptor_40_e73_v40__0___SCNBufferStream__8__SCNNode_16___SCNShadable__24__SCNRenderer_32l;
    v17[4] = this;
    [v4 handleBindingOfBufferNamed:@"params" frequency:0 usingBlock:v17];
    v5 = objc_opt_new();
    [v5 setProgram:v3];
    [v5 setDoubleSided:1];
    v6 = (*(*this + 2336))(this);
    std::recursive_mutex::lock(v6);
    v7 = [objc_msgSend(PCBitmap::getRepresentation(v6) "rootNode")];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [objc_msgSend(v11 "geometry")];
          [v11 setGeometry:v12];
          v18 = v5;
          [objc_msgSend(v11 "geometry")];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    std::recursive_mutex::unlock(v6);
  }
}

uint64_t ___ZN22OZ3DEngineSceneElement11applyShaderEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  PCMutex::lock((v3 + 24336));
  LOBYTE(v5) = 1;
  [a2 writeBytes:*(v3 + 18952) length:{*(v3 + 18960) - *(v3 + 18952), v3 + 24336, v5}];
  return PCMutex::unlock((v3 + 24336));
}

void *OZ3DEngineSceneElement::updateScriptParamsFromChannels(OZ3DEngineSceneElement *this, CMTime *a2)
{
  result = *(this + 3030);
  if (result)
  {
    v4 = *(this + 2992);
    if (v4)
    {
      v6 = [result parameterDescriptors];
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v7);
      return updateParametersFromChannels((this + 18920), v6, v4, a2, &v7);
    }
  }

  return result;
}

uint64_t updateParametersFromChannels(std::vector<int> *a1, void *a2, PCString ***a3, CMTime *this, CMTime *a5)
{
  v121 = *MEMORY[0x277D85DE8];
  v118 = *this;
  value_high = HIDWORD(this[14].value);
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(this);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v113;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v113 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = [*(*(&v112 + 1) + 8 * i) type];
        if (v11 <= 2)
        {
          if (v11 >= 2)
          {
            if (v11 != 2)
            {
              continue;
            }

LABEL_12:
            v8 += 4;
            continue;
          }

          goto LABEL_16;
        }

        if (v11 <= 4)
        {
          if (v11 == 3)
          {
            goto LABEL_12;
          }

LABEL_16:
          ++v8;
          continue;
        }

        if (v11 == 5)
        {
          goto LABEL_16;
        }

        if (v11 == 7)
        {
          v8 += 16;
        }
      }

      v7 = [a2 countByEnumeratingWithState:&v112 objects:v120 count:16];
      if (!v7)
      {
        v12 = v8;
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
LABEL_21:
  if (v12 != a1->__end_ - a1->__begin_)
  {
    std::vector<unsigned int>::resize(a1, v12);
  }

  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  result = [a2 countByEnumeratingWithState:&v108 objects:v119 count:16];
  v14 = result;
  if (result)
  {
    v15 = 0;
    v16 = *v109;
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      v22 = 0;
      do
      {
        if (*v109 != v16)
        {
          objc_enumerationMutation(a2);
        }

        v23 = *(*(&v108 + 1) + 8 * v22);
        v24 = *a3;
        v25 = a3[1];
        if (*a3 != v25)
        {
          while (1)
          {
            v26 = *v24;
            v27 = [v23 name];
            *v97 = 0;
            PCString::set(v97, v27);
            LODWORD(v26) = PCString::compare(v26 + 4, v97);
            PCString::~PCString(v97);
            if (!v26)
            {
              break;
            }

            if (++v24 == v25)
            {
              v24 = v25;
              break;
            }
          }

          v25 = a3[1];
        }

        if (v24 != v25)
        {
          v28 = *v24;
          v29 = [v23 type];
          if (v29 > 3)
          {
            if (v29 <= 5)
            {
              if (v29 != 4)
              {
                goto LABEL_67;
              }

              if (v28)
              {
              }

              else
              {
                v30 = 0;
              }

LABEL_66:
              OZChannel::getValueAsDouble(v30, &v118, 0.0);
              *&v36 = v36;
              a1->__begin_[v15] = LODWORD(v36);
LABEL_67:
              ++v15;
              goto LABEL_68;
            }

            if (v29 == 6)
            {
              if (v28)
              {
              }

              else
              {
                v34 = 0;
              }

              if (OZChanElementOrFootageRef::getImageNode((v34 + 136)))
              {
                OZRenderParams::OZRenderParams(v97, this);
                v95 = 0uLL;
                v96 = 0;
                v94[0] = v118;
                v92 = *a5;
                PC_CMTimeSaferSubtract(v94, &v92, &v95);
                *v97 = v95;
                *&v97[16] = v96;
                v106 = 0;
                v107 = 0;
                MakeImageSourceTransformPair(v34, v97);
              }
            }

            else if (v29 == 7)
            {
              if (v28)
              {
              }

              else
              {
                v32 = 0;
              }

              Descendant = OZChannelFolder::getDescendant(v32, 1);
              if (Descendant)
              {
              }

              else
              {
                v46 = 0;
              }

              v47 = OZChannelFolder::getDescendant(v32, 2);
              if (v47)
              {
              }

              else
              {
                v48 = 0;
              }

              v49 = OZChannelFolder::getDescendant(v32, 3);
              if (v49)
              {
              }

              else
              {
                v50 = 0;
              }

              v51 = OZChannelFolder::getDescendant(v32, 4);
              if (v51)
              {
              }

              else
              {
                v52 = 0;
              }

              OZChannel::getValueAsDouble((v46 + 136), &v118, 0.0);
              v54 = v53;
              OZChannel::getValueAsDouble((v46 + 288), &v118, 0.0);
              v56 = v55;
              OZChannel::getValueAsDouble((v46 + 736), &v118, 0.0);
              v58 = v57;
              memset(v94, 0, 24);
              OZChannelRotation3D::getValueAsEulerAngles(v48, &v118, v94, 0.0);
              OZChannel::getValueAsDouble((v50 + 136), &v118, 0.0);
              v60 = v59;
              OZChannel::getValueAsDouble((v50 + 288), &v118, 0.0);
              v62 = v61;
              OZChannel::getValueAsDouble((v50 + 736), &v118, 0.0);
              v64 = v63;
              ValueAsInt = OZChannel::getValueAsInt(v52, &v118, 0.0);
              v105 = 1.0;
              v102 = 1.0;
              v99 = 1.0;
              *v97 = 0x3FF0000000000000;
              *&v97[8] = 0u;
              v98 = 0u;
              v100 = 0u;
              v101 = 0u;
              v103 = 0u;
              v104 = 0u;
              PCMatrix44Tmpl<double>::setTransformation(v97, 0, 4, v54, v56, v58, *&v94[0].value, *&v94[0].timescale, *&v94[0].epoch, v60, v62, v66, v67, v68, v69, v70, v64, 0.0, 0.0, 0.0, 0.0, 0.0, 0x3FF0000000000000);
              if (ValueAsInt)
              {
                PCMatrix44Tmpl<double>::invert(v97, v97, 0.0);
              }

              v71 = *v97;
              v72 = &a1->__begin_[v15];
              *v72 = v71;
              v73 = *(&v98 + 1);
              v72[1] = v73;
              v74 = *&v101;
              v72[2] = v74;
              v75 = *(&v103 + 1);
              v72[3] = v75;
              v76 = *&v97[8];
              v72[4] = v76;
              v77 = v99;
              v72[5] = v77;
              v78 = *(&v101 + 1);
              v72[6] = v78;
              v79 = *&v104;
              v72[7] = v79;
              v80 = *&v97[16];
              v72[8] = v80;
              v81 = *&v100;
              v72[9] = v81;
              v82 = v102;
              v72[10] = v82;
              v83 = *(&v104 + 1);
              v72[11] = v83;
              v84 = *&v98;
              v72[12] = v84;
              v85 = *(&v100 + 1);
              v72[13] = v85;
              v86 = *&v103;
              v72[14] = v86;
              v87 = v105;
              v15 += 16;
              v72[15] = v87;
            }
          }

          else
          {
            if (v29 <= 1)
            {
              if (v29)
              {
                if (v29 != 1)
                {
                  goto LABEL_68;
                }

                if (v28)
                {
                }

                else
                {
                  v30 = 0;
                }
              }

              else if (v28)
              {
              }

              else
              {
                v30 = 0;
              }

              goto LABEL_66;
            }

            if (v29 == 2)
            {
              if (v28)
              {
              }

              else
              {
                v33 = 0;
              }

              PCColor::PCColor(v97);
              (*(*v33 + 832))(v33, &v118, v97);
              LODWORD(v92.value) = 0;
              v91[0] = 0.0;
              LODWORD(v95) = 0;
              v93[0] = 0.0;
              OZChannelColorNoAlpha::getPCColorSpace(v33, v94);
              PCColor::getRGBA(v97, &v92, v91, &v95, v93, v94);
              PCCFRef<CGColorSpace *>::~PCCFRef(v94);
              v35 = &a1->__begin_[v15];
              *v35 = v92.value;
              *(v35 + 4) = v91[0];
              *(v35 + 8) = v95;
              v15 += 4;
              *(v35 + 12) = v93[0];
              PCCFRef<CGColorSpace *>::~PCCFRef(&v100);
            }

            else
            {
              if (v28)
              {
              }

              else
              {
                v31 = 0;
              }

              OZChannel::getValueAsDouble((v31 + 136), &v118, 0.0);
              v38 = v37;
              OZChannel::getValueAsDouble((v31 + 288), &v118, 0.0);
              v40 = v39;
              OZChannel::getValueAsDouble((v31 + 736), &v118, 0.0);
              v41 = v38;
              v42 = &a1->__begin_[v15];
              v43 = v40;
              *v42 = v41;
              *(v42 + 4) = v43;
              *&v44 = v44;
              *(v42 + 8) = LODWORD(v44);
              v15 += 4;
              *(v42 + 12) = 1065353216;
            }
          }
        }

LABEL_68:
        ++v22;
      }

      while (v22 != v14);
      result = [a2 countByEnumeratingWithState:&v108 objects:v119 count:16];
      v14 = result;
    }

    while (result);
  }

  return result;
}

void sub_2601A834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, PCSharedCount a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(&a46);
  PCSharedCount::~PCSharedCount(v69 + 1);
  OZRenderParams::~OZRenderParams(&a69);
  _Unwind_Resume(a1);
}

uint64_t OZ3DEngineSceneElement::updateShaderParamsFromChannels(OZ3DEngineSceneElement *this, CMTime *a2)
{
  result = [*(this + 2368) library];
  if (result)
  {
    v5 = *(this + 3008);
    if (v5)
    {
      v6 = [*(this + 2368) parameters];
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v7);
      return updateParametersFromChannels((this + 18952), v6, v5, a2, &v7);
    }
  }

  return result;
}

void *OZ3DEngineSceneElement::hasShader(OZ3DEngineSceneElement *this)
{
  result = *(this + 2368);
  if (result)
  {
    return ([result library] != 0);
  }

  return result;
}

uint64_t OZ3DEngineSceneElement::shouldAllowRetiming(OZ3DEngineSceneElement *this)
{
  if (*(this + 24232))
  {
    return 1;
  }

  result = OZ3DEngineSceneElement::get3DEngineSceneFile(this);
  if (result)
  {

    return OZ3DEngineSceneFile::supportsAnimation(result);
  }

  return result;
}

uint64_t OZ3DEngineSceneElement::writeBody(id *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZ3DEngineSceneElementScope);
  if (v10)
  {
    v11 = *PCXMLWriteStream::getURL(v10);
    if ([this[3030] url])
    {
      v12 = [objc_msgSend(this[3030] "url")];
      if (v12)
      {
        v13 = v12;
        (*(*a2 + 16))(a2, 501);
        v17.var0 = 0;
        PCString::set(&v17, v13);
        (*(*a2 + 104))(a2, &v17);
        PCString::~PCString(&v17);
        (*(*a2 + 24))(a2);
      }
    }

    if ([this[2368] url])
    {
      v14 = [objc_msgSend(this[2368] "url")];
      if (v14)
      {
        v15 = v14;
        (*(*a2 + 16))(a2, 502);
        v17.var0 = 0;
        PCString::set(&v17, v15);
        (*(*a2 + 104))(a2, &v17);
        PCString::~PCString(&v17);
        (*(*a2 + 24))(a2);
      }
    }
  }

  PCSerializerWriteStream::popScope(a2);
  return OZElement::writeBody(this, a2, a3, a4, a5);
}

uint64_t OZ3DEngineSceneElement::parseBegin(OZ3DEngineSceneElement *this, PCSerializerReadStream *a2)
{
  *(this + 24232) = 1;
  v3 = OZElement::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZ3DEngineSceneElementScope);
  return v3;
}

uint64_t non-virtual thunk toOZ3DEngineSceneElement::parseBegin(OZ3DEngineSceneElement *this, PCSerializerReadStream *a2)
{
  *(this + 24184) = 1;
  v3 = OZElement::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZ3DEngineSceneElementScope);
  return v3;
}

uint64_t OZ3DEngineSceneElement::parseEnd(OZ3DEngineSceneElement *this, PCSerializerReadStream *a2)
{
  *(this + 24232) = 0;
  if (*(this + 3031))
  {
    OZ3DEngineSceneElement::loadScript(this);
  }

  return OZElement::parseEnd(this, a2);
}

uint64_t OZ3DEngineSceneElement::parseElement(OZElement *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZElement::parseElement(this, a2, a3);
  if (v6)
  {
    v7 = v6;
    v8 = *(a3 + 2);
    if (v8 == 502)
    {
      PCSharedCount::PCSharedCount(&v14);
      if (PCSerializerReadStream::getAsString(a2, a3, &v14))
      {
        v11 = *PCXMLReadStream::getURL(v7);
        v12 = [MEMORY[0x277CBEBC0] URLWithString:PCString::ns_str(&v14) relativeToURL:v11];
        OZ3DEngineSceneElement::loadShader(this, v12);
      }

      goto LABEL_8;
    }

    if (v8 == 501)
    {
      PCSharedCount::PCSharedCount(&v14);
      if (PCSerializerReadStream::getAsString(a2, a3, &v14))
      {
        v9 = *PCXMLReadStream::getURL(v7);
        v10 = [MEMORY[0x277CBEBC0] URLWithString:PCString::ns_str(&v14) relativeToURL:v9];
        OZ3DEngineSceneElement::setScriptURL(this, v10);
      }

LABEL_8:
      PCString::~PCString(&v14);
    }
  }

  return 1;
}

std::recursive_mutex *OZ3DEngineSceneElement::get3DNode(OZ3DEngineSceneElement *this)
{
  result = *(this + 2360);
  if (!result)
  {
    result = (*(*this + 2336))(this);
    if (result)
    {
      v3 = result;
      std::recursive_mutex::lock(result);
      *(this + 2360) = [objc_msgSend(PCBitmap::getRepresentation(v3) "rootNode")];
      [*(this + 2360) setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%u", *(this + 20))}];
      [*(this + 2360) setCategoryBitMask:1];
      (*(*this + 2296))(this);
      OZ3DEngineSceneElement::applyShader(this);
      std::recursive_mutex::unlock(v3);
      return *(this + 2360);
    }
  }

  return result;
}

NSString *OZ3DEngineSceneElement::makeDataFor3DEngineWorld@<X0>(OZ3DEngineSceneElement *this@<X0>, double a2@<D0>, CMTime *a3@<X1>, uint64_t *a4@<X8>)
{
  updated = OZ3DEngineSceneElement::updateScript(this, a3);
  v9 = (*(*this + 2336))(this, updated);
  OZRenderState::OZRenderState(&v52, a3);
  OZ3DEngineSceneElement::getUnitScaleMatrix(this, &v52, v44);
  for (i = 0; i != 4; ++i)
  {
    v51[i] = vcvt_hight_f32_f64(vcvt_f32_f64(*&v44[4 * i]), *&v44[4 * i + 2]);
  }

  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v44[5] = 0x3FF0000000000000;
  v44[0] = 0x3FF0000000000000;
  memset(&v44[1], 0, 32);
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  (*(*this + 1256))(this, v44, &v52);
  for (j = 0; j != 4; ++j)
  {
    v12 = v51[j];
    v13 = (&v41 + 2 * j);
    *v13 = vcvtq_f64_f32(*v12.f32);
    v13[1] = vcvt_hight_f64_f32(v12);
  }

  v14 = PCMatrix44Tmpl<double>::operator*(v44, &v41, v43);
  for (k = 0; k != 4; ++k)
  {
    *(&v41 + k) = vcvt_hight_f32_f64(vcvt_f32_f64(v43[2 * k]), v43[2 * k + 1]);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_2871F25A8;
  BYTE8(v39) = 0;
  v16 = Li3DEngineObjectDataBase::defaultPerInstanceColor(v14);
  (*(*this + 2272))(this, v9, a3, &v41, &v38, 0, 0, 0, a2, *v16, v16[1], v16[2], v16[3], 1.0);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v38);
  v17 = *a4;
  v41 = *&a3->value;
  epoch = a3->epoch;
  *(v17 + 200) = (*(*this + 1576))(this, &v41);
  v18 = *a4;
  *(v18 + 568) = OZChannel::getValueAsInt((this + 24080), MEMORY[0x277CC08F0], 0.0) != 0;
  v39 = xmmword_2603429E0;
  v40 = xmmword_2603429E0;
  v38 = xmmword_2603429E0;
  (*(*this + 1360))(this, &v38, a3);
  for (m = 0; m != 4; ++m)
  {
    v20 = v51[m];
    v21 = (&v41 + 2 * m);
    *v21 = vcvtq_f64_f32(*v20.f32);
    v21[1] = vcvt_hight_f64_f32(v20);
  }

  PCMatrix44Tmpl<double>::invert(&v41, &v41, 0.0);
  v22 = 0;
  v23 = 0;
  v24 = -1.0;
  v25 = 1.0;
  v26 = 1.0;
  v27 = -1.0;
  v28 = 1.0;
  v29 = -1.0;
  do
  {
    v30 = (&v39 + 8);
    if ((v23 & 2) != 0)
    {
      v30 = &v39;
    }

    v31 = *v30;
    v32 = (&v40 + 8);
    if (v23 >= 4)
    {
      v32 = &v40;
    }

    v33 = *v32;
    v53 = *(&v38 | v22 & 8 ^ 8);
    v54 = v31;
    v55 = v33;
    PCMatrix44Tmpl<double>::transform<double>(&v41, &v53, &v53);
    if (v22)
    {
      if (v25 >= v53)
      {
        v25 = v53;
      }

      if (v24 <= v53)
      {
        v24 = v53;
      }

      if (v26 >= v54)
      {
        v26 = v54;
      }

      if (v27 <= v54)
      {
        v27 = v54;
      }

      if (v28 >= v55)
      {
        v28 = v55;
      }

      if (v29 <= v55)
      {
        v29 = v55;
      }
    }

    else
    {
      v27 = v54;
      v29 = v55;
      v28 = v55;
      v26 = v54;
      v24 = v53;
      v25 = v53;
    }

    ++v23;
    v22 += 8;
  }

  while (v22 != 64);
  v34 = *a4;
  *(v34 + 120) = v25;
  *(v34 + 128) = v24;
  *(v34 + 136) = v26;
  *(v34 + 144) = v27;
  *(v34 + 152) = v28;
  *(v34 + 160) = v29;
  Name = OZObjectManipulator::getName((this + 16));
  v36 = PCString::ns_str(Name);
  return Li3DEngineObjectData::setDebugName(v34, &v36->isa);
}

void sub_2601A8F3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

char *FindTopLevel3DWorldGroup(OZScene *a1)
{
  OZScene::begin_all(a1, v19);
  OZScene::end_all_sel(a1, v15);
  while (1)
  {
    if (v22 == v17[2])
    {
      if (v22 < 2)
      {
        v3 = v15;
        v2 = v19;
      }

      else if (v22 == 3)
      {
        v2 = &v21;
        v3 = v17;
      }

      else
      {
        v2 = &v20;
        v3 = &v16;
        if (v22 != 2)
        {
          goto LABEL_16;
        }
      }

      if (*v2 == *v3)
      {
        break;
      }
    }

    if (v22 < 2)
    {
      v6 = v19[0];
      if (v19[0] == v19[2])
      {
LABEL_16:
        v7 = 0;
        goto LABEL_22;
      }

      v5 = 16;
    }

    else
    {
      if (v22 == 2)
      {
        v4 = &v20;
        v5 = 48;
      }

      else
      {
        if (v22 != 3)
        {
          goto LABEL_16;
        }

        v4 = &v21;
        v5 = 16;
      }

      v6 = *v4;
    }

    v8 = *(v6 + 16);
    v9 = (v8 + v5);
    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

LABEL_22:
    v10 = *((*(*v7 + 256))(v7) + 8);
    v24 = xmmword_260850780;
    if (OZFactory::isKindOfClass(v10, &v24))
    {
      if (OZChannelBase::isEnabled((v11 + 20744), 1, 1))
      {
        goto LABEL_26;
      }
    }

    OZObject::all_iterator_t<OZObjectManipulator,false,true,OZObject::defaultAllValidator>::operator++(v19, v13);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v14);
  }

  v11 = 0;
LABEL_26:
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v18);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
  return v11;
}

__n128 OZ3DEngineSceneElement::resetLastActiveState(OZ3DEngineSceneElement *this)
{
  v1 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(this + 18888) = *MEMORY[0x277CC0898];
  *(this + 2363) = *(v1 + 16);
  *(this + 18912) = 0;
  return result;
}

uint64_t OZ3DEngineSceneElement::setInstanceColor(uint64_t this, double a2, double a3, double a4)
{
  *(this + 18840) = 1;
  *(this + 18848) = a2;
  *(this + 18856) = a3;
  *(this + 18864) = a4;
  return this;
}

void OZ3DEngineSceneElement::makeDataFor3DEngineObject(OZ3DEngineSceneElement *a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{
  v84[11] = *MEMORY[0x277D85DE8];
  v78 = a5;
  v79 = a6;
  v80 = a7;
  v81 = a8;
  v77 = a2;
  v76 = a4;
  v75 = a12;
  v74 = a9;
  v73 = a14;
  v72 = *a3;
  v17 = (a1 + 16);
  v16 = *(a1 + 2);
  *v53 = *a3;
  *&v53[16] = *(a3 + 16);
  v18 = (*(v16 + 104))(a1 + 16, v53, 1, 1, 1);
  Li3DEngineObjectForceParams::Li3DEngineObjectForceParams(&v53[8]);
  ValueAsInt = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v57 = -1;
  *v53 = 0;
  if (v18)
  {
    ValueAsInt = OZChannel::getValueAsInt((a1 + 20872), &v72, 0.0);
  }

  *v53 = ValueAsInt;
  OZChannel::getValueAsDouble((a1 + 21384), &v72, 0.0);
  v67 = v20;
  OZChannel::getValueAsDouble((a1 + 21688), &v72, 0.0);
  v69 = v21;
  OZChannel::getValueAsDouble((a1 + 21536), &v72, 0.0);
  v68 = v22;
  *&v53[4] = (*(*a1 + 2304))(a1, &v72);
  OZChannel::getValueAsDouble((a1 + 21840), &v72, 0.0);
  v70 = v23;
  OZChannel::getValueAsDouble((a1 + 21992), &v72, 0.0);
  v71 = v24;
  Name = OZObjectManipulator::getName(v17);
  PCString::PCString(v83, "Projectile (to person)");
  v52 = a1;
  LODWORD(Name) = PCString::compare(Name, v83);
  PCString::~PCString(v83);
  if (!Name)
  {
    printf("type=%d\n", *v53);
  }

  if (v18)
  {
    v26 = (a1 + 1000);
    v27 = *(v52 + 126);
    if (v27 != (v52 + 1000))
    {
      do
      {
        v28 = v27[2];
        v29 = v28[1];
        *v83 = xmmword_260852D10;
        if (OZFactory::isKindOfClass(v29, v83))
        {
          *&v82.var10 = *a3;
          v82.var12 = *(a3 + 16);
          *v83 = *a3;
          *&v83[16] = *(a3 + 16);
          if ((*(*v30 + 296))())
          {
            isImpulse = OZ3DEngineApplyForceBehavior::isImpulse(v30, &v82.var10);
            Li3DEngineObjectForceParams::Li3DEngineObjectForceParams(v83);
            v32 = OZ3DEngineApplyForceBehavior::directionMode(v30, &v82.var10);
            v83[1] = v32 == 0;
            if (v32)
            {
              v33 = (*(*v30 + 320))(v30);
              if (v33)
              {
                if (v34)
                {
                  (*(*v34 + 272))(v34);
                }
              }

              v35 = OZ3DEngineApplyForceBehavior::targetObject(v30);
              if (v35)
              {
                *&v83[32] = v35[20];
              }
            }

            else
            {
              OZ3DEngineApplyForceBehavior::fixedDirection(v30, &v82.var10, &v82.var2);
              *&v83[8] = *&v82.var2;
              *&v83[24] = v82.var4.var0;
            }

            OZ3DEngineApplyForceBehavior::magnitude(v30, &v82.var10);
            *&v83[40] = v49;
            v83[0] = isImpulse;
            v50 = OZ3DEngineApplyForceBehavior::UUID(v30);
            Li3DEngineObjectForceParams::setUUID(v83, v50);
            *&v53[8] = *v83;
            v54 = *&v83[16];
            v55 = *&v83[32];
            ProCore_Impl::PCNSRefImpl::operator=(&v56, v84);
            Li3DEngineObjectForceParams::~Li3DEngineObjectForceParams(v83);
          }
        }

        else
        {
          v36 = v28[1];
          *v83 = xmmword_260852D20;
          if (OZFactory::isKindOfClass(v36, v83))
          {
            *&v82.var2 = *a3;
            v82.var4.var0 = *(a3 + 16);
            *v83 = *a3;
            *&v83[16] = *(a3 + 16);
            if ((*(*v37 + 296))())
            {
              v38 = OZ3DEngineApplyForceBehavior::directionMode(v37, &v82.var2);
              OZ3DEnginePhysicsFieldBehavior::strength(v37, &v82.var2);
              v40 = v39;
              OZ3DEnginePhysicsFieldBehavior::falloffExponent(v37, &v82.var2);
              v42 = v41;
              isExtentInfinite = OZ3DEnginePhysicsFieldBehavior::isExtentInfinite(v37, &v82.var2);
              OZ3DEnginePhysicsFieldBehavior::halfExtent(v37, &v82.var2, v83);
              memset(&v83[24], 0, 24);
              OZ3DEnginePhysicsFieldBehavior::direction(v37, &v82.var2, &v82.var10);
              *&v83[24] = *&v82.var10;
              *&v83[40] = v82.var12;
              OZ3DEnginePhysicsFieldBehavior::smoothness(v37, &v82.var2);
              v45 = v44;
              OZ3DEnginePhysicsFieldBehavior::animationSpeed(v37, &v82.var2);
              v47 = v46;
              OZ3DEnginePhysicsFieldBehavior::minimumDistance(v37, &v82.var2);
              v57 = v38;
              v58 = v40;
              v59 = v42;
              v60 = isExtentInfinite;
              v61 = v45;
              v62 = v47;
              v63 = *v83;
              v64 = *&v83[16];
              v65 = *&v83[32];
              v66 = v48;
            }
          }
        }

        v27 = v27[1];
      }

      while (v27 != v26);
    }
  }

  v51 = OZ3DEngineSceneElement::get3DWorldOwner(v52);
  if (v51)
  {
    if (!OZ3DEngineSceneElement::is3DNodeInMasterScene(v52, v51))
    {
      OZ3DEngineSceneElement::add3DNodeToMasterScene(v52);
    }
  }

  std::allocate_shared[abi:ne200100]<Li3DEngineObjectData,std::allocator<Li3DEngineObjectData>,Li3DEngineScene *&,double &,PCMatrix44Tmpl<float> const&,BOOL &,PCWorkingColorVector &,float &,float &,PCBlendMode &,LiLightSet const&,0>();
}

void sub_2601A9D8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const void *OZ3DEngineSceneElement::buildAndApplyMeshContourToMotionPath(OZ3DEngineSceneElement *a1, int a2, int a3, int a4, __n128 a5, float a6, float a7)
{
  v13 = (*(*a1 + 272))(a1);
  *(*(v13 + 1584) + 101) = 1;
  v14 = *(v13 + 1504);
  if (v14)
  {
    OZChannelBase::setRangeName(v14, 1);
  }

  result = *(a1 + 120);
  if (result)
  {
    if (result)
    {
      OZSceneNode::begin_t<OZEnvironmentMeshSceneElement,false,true>(result, v26);
      if (v26[0] != v26[2])
      {
        v16 = *(v26[0] + 16);
        if (v16)
        {
          if (v17)
          {
            v20 = vcvtq_f64_f32(a5.n128_u64[0]);
            while (1)
            {
              v22 = v20;
              v23 = a5.n128_f32[2];
              OZEnvironmentMeshSceneElement::buildContour(v17, &v22, a2, a3, a4, &__p, a6, a7);
              if (v25 != __p)
              {
                break;
              }

              if (v25)
              {
                v25 = __p;
                operator delete(__p);
              }

              v18 = OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(v26);
              if (*v18 != v18[2])
              {
                v19 = *(*v18 + 16);
                if (v19)
                {
                  if (v17)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_18;
            }

            OZ3DEngineSceneElement::applyMeshContourToMotionPath(a1, &__p);
            if (__p)
            {
              v25 = __p;
              operator delete(__p);
            }
          }
        }
      }

LABEL_18:
      result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v27);
    }
  }

  *(*(v13 + 1584) + 101) = 0;
  return result;
}

void sub_2601AA194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a24);
  _Unwind_Resume(a1);
}

uint64_t *OZSceneNode::begin_t<OZEnvironmentMeshSceneElement,false,true>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

OZMotionPathBehavior *OZ3DEngineSceneElement::applyMeshContourToMotionPath(OZ3DEngineSceneElement *a1, double **a2)
{
  result = OZ3DEngineSceneElement::getMotionPathBehavior(a1);
  if (result)
  {
    v5 = result;
    PositionChannel = OZMotionPathBehavior::getPositionChannel(result);
    (*(*v5 + 608))(v20, v5);
    memset(&preferredTimescale, 0, sizeof(preferredTimescale));
    v7 = (*(*a1 + 272))(a1);
    OZSceneSettings::getFrameDuration((v7 + 336), &v17);
    time = v20[0];
    v22 = v20[1];
    PC_CMTimeSaferAdd(&time, &v22, &v21);
    time = v21;
    *&v22.value = v17;
    v22.epoch = v18;
    PC_CMTimeSaferSubtract(&time, &v22, &preferredTimescale);
    time = preferredTimescale;
    Seconds = CMTimeGetSeconds(&time);
    result = (*(*PositionChannel + 288))(PositionChannel, 0);
    v10 = *a2;
    v9 = a2[1];
    if (v9 != *a2)
    {
      v11 = Seconds / (0xAAAAAAAAAAAAAAABLL * (v9 - *a2));
      v12 = PositionChannel + 92;
      v13 = 0.0;
      do
      {
        v15 = *v10;
        v14 = v10[1];
        v16 = v10[2];
        memset(&time, 0, sizeof(time));
        CMTimeMakeWithSeconds(&time, (v13 * v11), preferredTimescale.timescale);
        v22 = time;
        (*(PositionChannel[17] + 600))(PositionChannel + 17, &v22);
        (*(PositionChannel[17] + 712))(PositionChannel + 17, &v22, 0, v15);
        (*(PositionChannel[36] + 600))(PositionChannel + 36, &v22);
        (*(PositionChannel[36] + 712))(PositionChannel + 36, &v22, 0, v14);
        (*(*v12 + 600))(PositionChannel + 92, &v22);
        result = (*(*v12 + 712))(PositionChannel + 92, &v22, 0, v16);
        v13 = v13 + 1.0;
        v10 += 3;
      }

      while (v10 != v9);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

void *OZ3DEngineSceneElement::getMotionPathBehavior(OZ3DEngineSceneElement *this)
{
  v1 = this + 1000;
  v2 = *(this + 126);
  if (v2 == (this + 1000))
  {
    return 0;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = v3[1];
    v6 = xmmword_260850860;
    if (OZFactory::isKindOfClass(v4, &v6))
    {
      break;
    }

    v2 = v2[1];
    if (v2 == v1)
    {
      return 0;
    }
  }
}

void *std::__shared_ptr_emplace<OZTextureSource>::__shared_ptr_emplace[abi:ne200100]<PCPtr<LiImageSource> &,PCMatrix44Tmpl<double> &,PCRect<double> &,PCPixelFormat::ChannelOrder const&,CGColorSpace * const&,LiRenderingTechnology const&,std::allocator<OZTextureSource>,0>(void *a1, PCSharedCount *a2, _OWORD *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28729CDD8;
  std::allocator<OZTextureSource>::construct[abi:ne200100]<OZTextureSource,PCPtr<LiImageSource> &,PCMatrix44Tmpl<double> &,PCRect<double> &,PCPixelFormat::ChannelOrder const&,CGColorSpace * const&,LiRenderingTechnology const&>(&v9, (a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void std::__shared_ptr_emplace<OZTextureSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28729CDD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::allocator<OZTextureSource>::construct[abi:ne200100]<OZTextureSource,PCPtr<LiImageSource> &,PCMatrix44Tmpl<double> &,PCRect<double> &,PCPixelFormat::ChannelOrder const&,CGColorSpace * const&,LiRenderingTechnology const&>(int a1, uint64_t a2, PCSharedCount *a3, _OWORD *a4, uint64_t a5, unsigned int *a6, void *a7, uint64_t a8)
{
  var0 = a3->var0;
  PCSharedCount::PCSharedCount(&v20, a3 + 1);
  v14 = a4[5];
  v18[4] = a4[4];
  v18[5] = v14;
  v15 = a4[7];
  v18[6] = a4[6];
  v18[7] = v15;
  v16 = a4[1];
  v18[0] = *a4;
  v18[1] = v16;
  v17 = a4[3];
  v18[2] = a4[2];
  v18[3] = v17;
  OZTextureSource::OZTextureSource(a2, &var0, v18, a5, *a6, *a7, a8);
  PCSharedCount::~PCSharedCount(&v20);
}

uint64_t std::__split_buffer<LiScriptParameterDescriptor>::~__split_buffer(uint64_t a1, const PCString *a2)
{
  v4 = *(a1 + 8);
  for (i = *(a1 + 16); i != v4; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    OZChannelBase::setRangeName((i - 16), a2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<LiScriptParameterDescriptor>::__destroy_vector::operator()[abi:ne200100](void ***a1, const PCString *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = v3;
    if (v5 != v3)
    {
      do
      {
        v5 = OZChannelBase::setRangeName((v5 - 16), a2);
      }

      while (v5 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getTimingGroupChannel(uint64_t a1, uint64_t a2)
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

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getTimeScaleChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 22144;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getTimeReverseChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 22296;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getTimeRemapChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 22448;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getRetimeFrameChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 22704;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getRetimeFrameCacheChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 22856;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getEndConditionChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 23264;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getLoopDurationChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 23520;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZ3DEngineSceneElement>::getDurationCacheChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZ3DEngineSceneElement::shouldAllowRetiming(result))
      {
        return v3 + 23672;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<Li3DEngineObjectData>::__shared_ptr_emplace[abi:ne200100]<Li3DEngineScene *&,double &,PCMatrix44Tmpl<float> const&,BOOL &,PCWorkingColorVector &,float &,float &,PCBlendMode &,LiLightSet const&,std::allocator<Li3DEngineObjectData>,0>(void *a1, uint64_t *a2, double *a3, __int128 *a4, char *a5, float *a6, float *a7, float *a8, int *a9, uint64_t a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28729CEA8;
  std::allocator<Li3DEngineObjectData>::construct[abi:ne200100]<Li3DEngineObjectData,Li3DEngineScene *&,double &,PCMatrix44Tmpl<float> const&,BOOL &,PCWorkingColorVector &,float &,float &,PCBlendMode &,LiLightSet const&>(&v12, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return a1;
}

void std::__shared_ptr_emplace<Li3DEngineObjectData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28729CEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::allocator<Li3DEngineObjectData>::construct[abi:ne200100]<Li3DEngineObjectData,Li3DEngineScene *&,double &,PCMatrix44Tmpl<float> const&,BOOL &,PCWorkingColorVector &,float &,float &,PCBlendMode &,LiLightSet const&>(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4, __int128 *a5, char *a6, float *a7, float *a8, float *a9, int *a10, uint64_t a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = a5[1];
  v17[0] = *a5;
  v17[1] = v14;
  v15 = a5[3];
  v17[2] = a5[2];
  v17[3] = v15;
  return Li3DEngineObjectData::Li3DEngineObjectData(a2, v12, v17, *a6, *a9 != 0.0, *a10, a11, v13, *a7, a7[1], a7[2], a7[3], *a8);
}

void *OZObject::iterator_t<OZEnvironmentMeshSceneElement,false,true,OZObject::defaultValidator>::increment(void *result)
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

OZChannelBase *OZMaterialSubstanceLayer::initSubstance(OZMaterialSubstanceLayer *this)
{
  OZMaterialSubstanceLayer::setUpSubstanceChannelVector(this);
  OZMaterialLayerBase::initBase(this);
  OZChannel::setMax((this + 22176), 3.40282347e38);
  OZChannel::setSliderMax((this + 22176), 1.0);
  OZChannel::setMin((this + 22176), -3.40282347e38);
  OZChannel::setDefaultValue((this + 22176), 1.0);
  OZChannel::setDefaultValue(this + 67, 0.5);
  PCURL::PCURL(&v3, @"Material Substance Thickness Diffuse");
  OZChannelBase::setName((this + 21872), &v3, 0);
  PCString::~PCString(&v3);
  OZChannel::setMin((this + 21872), 0.0);
  OZChannel::setMax((this + 21872), 1.0);
  OZChannel::setSliderMax((this + 21872), 1.0);
  PCURL::PCURL(&v3, @"Material Substance Thickness Specular");
  OZChannelBase::setName((this + 22024), &v3, 0);
  PCString::~PCString(&v3);
  OZChannel::setMin((this + 22024), 0.0);
  OZChannel::setMax((this + 22024), 1.0);
  OZChannel::setSliderMax((this + 22024), 1.0);
  OZChannelFolder::resetFoldFlag((this + 14840), 15);
  OZChannelBase::setInspectorCtlrClassName((this + 14840), @"OZMaterialTextureTransformsController");
  OZChannelFolder::saveStateAsDefault((this + 14840));
  OZChannel::setDefaultValue((this + 16168), 1.0);
  OZChannelGradientPositioned::setDoNotSerializeAsRoot(this + 11600, 1);
  PCURL::PCURL(&v3, @"Material Generic Brightness Lights");
  OZChannelBase::setName((this + 21432), &v3, 0);
  PCString::~PCString(&v3);
  OZChannel::setMin(this + 141, 0.0);
  OZChannel::setSliderMax(this + 141, 1.0);
  PCURL::PCURL(&v3, @"Material Generic Brightness Environment");
  OZChannelBase::setName((this + 21584), &v3, 0);
  PCString::~PCString(&v3);
  OZChannel::setMin(this + 142, 0.0);
  OZChannel::setSliderMax(this + 142, 1.0);
  OZChannelGradientPositioned::setDoNotSerializeAsRoot(this + 6944, 1);
  OZChannelBase::setFlag(this + 62, 0x400000, 0);
  OZChannelFolder::setFoldFlag((this + 22632), 131076);
  OZChannelBase::enable((this + 22632), 0, 0);
  return OZChannelBase::setFlag((this + 7200), 2, 0);
}

void OZMaterialCompoundLayer::~OZMaterialCompoundLayer(OZMaterialCompoundLayer *this)
{
  *this = &unk_287292E18;
  *(this + 2) = &unk_287293278;
  OZChannelMaterialMapTransform::~OZChannelMaterialMapTransform((this + 2776));
  OZChannelEnum::~OZChannelEnum((this + 2520));
  OZChannel::~OZChannel((this + 2368));
  OZChannelPosition::~OZChannelPosition((this + 1664));
  OZChannel2D::~OZChannel2D((this + 1224));

  OZMaterialLayerBase::~OZMaterialLayerBase(this);
}

void OZMaterialSubstanceLayer::OZMaterialSubstanceLayer(OZMaterialSubstanceLayer *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  PCURL::PCURL(&v8, @"Material Substance Layer");
  OZMaterialCompoundLayer::OZMaterialCompoundLayer(this, a2, &v8, a4);
  PCString::~PCString(&v8);
  *this = &unk_28729CEF8;
  *(this + 2) = &unk_28729D408;
  *(this + 835) = &unk_28729D460;
  PCURL::PCURL(&v8, @"Material Generic Selection Enum");
  PCURL::PCURL(&v7, @"Material Generic Selection");
  OZChannelEnum::OZChannelEnum((this + 6688), &v8, &v7, this, 0x71u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Metal Reflection Gradient");
  OZChannelGradientWithTransform::OZChannelGradientWithTransform((this + 6944), &v8, this, 0x6Cu, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Metal Shiny Percent");
  OZChannelPercent::OZChannelPercent(this + 67, &v8, this, 0x6Du, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Plastic Color Type Enum");
  PCURL::PCURL(&v7, @"Plastic Color Type Label");
  OZChannelEnum::OZChannelEnum((this + 10336), 0, &v8, &v7, this, 0x69u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Plastic Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 10592), 0.8, 0.8, 0.8, &v8, this, 0x6Au, 0, 5u);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Plastic Gradient");
  OZChannelGradientWithTransform::OZChannelGradientWithTransform((this + 11600), &v8, this, 0x6Bu, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Generic Image");
  OZChannelMaterialLayerMap::OZChannelMaterialLayerMap((this + 14840), &v8, this, 0x72u, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Generic Brightness");
  OZChannelScale::OZChannelScale((this + 21296), 1.0, 1.0, &v8, this, 0x6Fu, 0, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Substance Thickness");
  OZChannelScale::OZChannelScale((this + 21736), 1.0, 1.0, &v8, this, 0x78u, 0, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Wood Bump Gain");
  OZChannelPercent::OZChannelPercent((this + 22176), 1.0, &v8, this, 0x6Eu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Flat Intensity");
  OZChannelPercent::OZChannelPercent((this + 22328), 1.0, &v8, this, 0x73u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Generic Alpha");
  OZChannelPercent::OZChannelPercent((this + 22480), 1.0, &v8, this, 0x70u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Flat Enable Edge");
  OZChannelFolder::OZChannelFolder((this + 22632), &v8, this, 0x74u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Flat Edge Amount");
  OZChannelPercent::OZChannelPercent((this + 22760), 0.5, &v8, (this + 22632), 0x75u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Flat Edge Invert");
  OZChannelBool::OZChannelBool((this + 22912), 0, &v8, (this + 22632), 0x77u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Material Flat Operator Enum");
  PCURL::PCURL(&v7, @"Material Flat Operator Selection");
  OZChannelEnum::OZChannelEnum((this + 23064), &v8, &v7, this, 0x76u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  *(this + 2917) = 0;
  *(this + 23320) = 0u;
  *(this + 2918) = -1;
  OZChannel2D::setValue((this + 4632), MEMORY[0x277CC08F0], 1.0, 1.0, 0);
  OZChannel::setDefaultValue((this + 648), 3.0);
  OZMaterialSubstanceLayer::initSubstance(this);
  OZChannel::setValue((this + 16168), MEMORY[0x277CC08F0], 1.0, 0);
}

void sub_2601AC0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannelBool::~OZChannelBool((v12 + v19));
  OZChannelPercent::~OZChannelPercent((v12 + v18));
  OZChannelFolder::~OZChannelFolder((v12 + v17));
  OZChannelPercent::~OZChannelPercent((v12 + v13));
  OZChannelPercent::~OZChannelPercent((v12 + v16));
  OZChannelPercent::~OZChannelPercent((v12 + v15));
  OZChannel2D::~OZChannel2D((v12 + v14));
  OZChannel2D::~OZChannel2D(&v12[140].var2);
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap(&v12[97].var12);
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform(&v12[76].var6);
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(&v12[69].var13);
  OZChannelEnum::~OZChannelEnum(&v12[68]);
  OZChannelPercent::~OZChannelPercent(v12 + 67);
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform(&v12[45].var13);
  OZChannelEnum::~OZChannelEnum(&v12[44]);
  OZMaterialCompoundLayer::~OZMaterialCompoundLayer(v12);
  _Unwind_Resume(a1);
}

void OZMaterialSubstanceLayer::OZMaterialSubstanceLayer(OZMaterialSubstanceLayer *this, const OZMaterialSubstanceLayer *a2, OZChannelFolder *a3)
{
  OZMaterialCompoundLayer::OZMaterialCompoundLayer(this, a2, a3);
  *v5 = &unk_28729CEF8;
  v5[2] = &unk_28729D408;
  v5[835] = &unk_28729D460;
  OZChannelEnum::OZChannelEnum((v5 + 836), (a2 + 6688), this);
  OZChannelGradientWithTransform::OZChannelGradientWithTransform((this + 6944), (a2 + 6944), this);
  OZChannelPercent::OZChannelPercent(this + 67, (a2 + 10184), this);
  OZChannelEnum::OZChannelEnum((this + 10336), (a2 + 10336), this);
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 10592), (a2 + 10592), this);
  OZChannelGradientWithTransform::OZChannelGradientWithTransform((this + 11600), (a2 + 11600), this);
  OZChannelMaterialLayerMap::OZChannelMaterialLayerMap((this + 14840), (a2 + 14840), this);
  OZChannelScale::OZChannelScale((this + 21296), (a2 + 21296), this);
  OZChannelScale::OZChannelScale((this + 21736), (a2 + 21736), this);
  OZChannelPercent::OZChannelPercent((this + 22176), a2 + 198, this);
  OZChannelPercent::OZChannelPercent((this + 22328), (a2 + 22328), this);
  OZChannelPercent::OZChannelPercent((this + 22480), (a2 + 22480), this);
  OZChannelFolder::OZChannelFolder((this + 22632), (a2 + 22632), this);
  OZChannelPercent::OZChannelPercent((this + 22760), (a2 + 22760), (this + 22632));
  OZChannelBool::OZChannelBool((this + 22912), (a2 + 22912), (this + 22632));
  OZChannelEnum::OZChannelEnum((this + 23064), (a2 + 23064), this);
  *(this + 2917) = 0;
  *(this + 23320) = 0u;
  *(this + 2918) = *(a2 + 2918);
  OZMaterialSubstanceLayer::setUpSubstanceChannelVector(this);
}

void sub_2601AC610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](va);
  OZChannelEnum::~OZChannelEnum((v2 + v9));
  OZChannelBool::~OZChannelBool((v2 + v8));
  OZChannelPercent::~OZChannelPercent((v2 + v7));
  OZChannelFolder::~OZChannelFolder((v2 + v6));
  OZChannelPercent::~OZChannelPercent((v2 + v5));
  OZChannelPercent::~OZChannelPercent((v2 + v4));
  OZChannelPercent::~OZChannelPercent((v2 + v3));
  OZChannel2D::~OZChannel2D(&v2[143]);
  OZChannel2D::~OZChannel2D(&v2[140].var2);
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap(&v2[97].var12);
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform(&v2[76].var6);
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha(&v2[69].var13);
  OZChannelEnum::~OZChannelEnum(&v2[68]);
  OZChannelPercent::~OZChannelPercent(v2 + 67);
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform(&v2[45].var13);
  OZChannelEnum::~OZChannelEnum(&v2[44]);
  OZMaterialCompoundLayer::~OZMaterialCompoundLayer(v2);
  _Unwind_Resume(a1);
}

void OZMaterialSubstanceLayer::setUpSubstanceChannelVector(OZMaterialSubstanceLayer *this)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = this + 2776;
  v25 = this + 2776;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v28, &v25);
  v25 = this + 22176;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v28, &v25);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = v2;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v25, &v22);
  v22 = this + 22176;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v25, &v22);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v25);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = this + 6944;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v22, &v19);
  v19 = this + 10184;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v22, &v19);
  v19 = this + 21736;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v22, &v19);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v22);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = this + 10336;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v19, &v16);
  v16 = this + 10592;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v19, &v16);
  v16 = this + 11600;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v19, &v16);
  v16 = this + 22176;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v19, &v16);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v19);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v13 = v2;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v16, &v13);
  v13 = this + 22176;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v16, &v13);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v16);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = v2;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v13, &v10);
  v10 = this + 22176;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v13, &v10);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v13);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v7 = this + 10592;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 11600;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 14840;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 6688;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 22480;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 22632;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 22328;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 22760;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 22912;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  v7 = this + 23064;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&v10, &v7);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v10);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &v7);
  __p = 0;
  v5 = 0;
  v6 = 0;
  v3 = this + 10592;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  v3 = this + 11600;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  v3 = this + 6688;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  v3 = this + 14840;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  v3 = this + 21296;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  v3 = this + 22480;
  std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, &v3);
  std::vector<std::vector<OZLocking *>>::push_back[abi:ne200100](this + 23320, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_2601ACB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v28 = *(v26 - 136);
  if (v28)
  {
    *(v26 - 128) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 112);
  if (v29)
  {
    *(v26 - 104) = v29;
    operator delete(v29);
  }

  v30 = *(v26 - 88);
  if (v30)
  {
    *(v26 - 80) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZMaterialSubstanceLayer::parseEnd(OZMaterialSubstanceLayer *this, PCSerializerReadStream *a2)
{
  v4 = this + 20480;
  if (!OZChannelBase::testFlag((this + 392), 2))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 136), MEMORY[0x277CC08F0], 0.0);
    if (ValueAsInt == 6)
    {
      v6 = 8.0;
    }

    else
    {
      if (ValueAsInt != 7)
      {
        goto LABEL_7;
      }

      v6 = 6.0;
    }

    OZChannel::setValue((this + 136), MEMORY[0x277CC08F0], v6, 0);
  }

LABEL_7:
  v7 = OZMaterialLayerBase::parseEnd(this, a2);
  OZChannelBase::resetFlag((this + 10336), 2, 0);
  OZChannelFolder::setFoldFlag((this + 22632), 131076);
  OZChannel::setDefaultValue((this + 16168), 1.0);
  OZChannelBase::setFlag((this + 20584), 2, 0);
  v8 = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  *(v4 + 717) = v8;
  if (v8 == 2)
  {
    v9 = OZChannel::getValueAsInt((this + 936), MEMORY[0x277CC08F0], 0.0);
    *(v4 + 716) = v9;
    v10 = OZChannelEnum::getNumberOfStrings((this + 936)) - 1;
    v11 = (this + 6944);
    if (v9 == v10)
    {
      OZChannelBase::resetFlag(v11, 0x400000, 0);
    }

    else
    {
      OZChannelBase::setFlag(v11, 0x400000, 0);
    }
  }

  return v7;
}

uint64_t OZMaterialSubstanceLayer::getLayerDescriptions(OZMaterialSubstanceLayer *this, const CMTime *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279AAA318[ValueAsInt];
  }

  v4 = OZGetSubstanceLayerDictionary();

  return [v4 objectForKey:v3];
}

void OZMaterialSubstanceLayer::getBumpGain(uint64_t a1, void *a2, const CMTime *a3)
{
  v5 = [a2 objectForKey:@"bump gain"];
  if (v5)
  {
    [v5 doubleValue];
    OZChannel::getValueAsDouble((a1 + 22176), a3, 0.0);
  }

  else
  {

    OZChannel::getValueAsDouble((a1 + 22176), a3, 0.0);
  }
}

double OZMaterialSubstanceLayer::getSpecularIntensity(OZMaterialSubstanceLayer *this, NSDictionary *a2, const CMTime *a3)
{
  if ((OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0) & 0xFFFFFFFD) == 0)
  {
    return 1.0;
  }

  return OZMaterialCompoundLayer::getSpecularIntensity(this, a2, a3);
}

uint64_t OZMaterialSubstanceLayer::appendLayersToLayeredMaterial(uint64_t a1, uint64_t a2)
{
  ValueAsInt = OZChannel::getValueAsInt((a1 + 648), MEMORY[0x277CC08F0], 0.0);
  switch(ValueAsInt)
  {
    case 8:

      AppendDiffuseLayerToLayeredMaterial(a1 + 6680);
    case 6:

      AppendFlatLayerToLayeredMaterial(a1 + 6680, a2);
    case 2:
      (*(*a1 + 1272))(&v6, a1, a2);
      PCSharedCount::~PCSharedCount(&v7);
      break;
  }

  return OZMaterialCompoundLayer::appendLayersToLayeredMaterial(a1, a2);
}

void OZMaterialSubstanceLayer::appendSpecularLayer(uint64_t a1, LiLayeredMaterial **a2, const CMTime *a3, void *a4)
{
  OZMaterialCompoundLayer::appendSpecularLayer(a1, a2, a3, a4);
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  LiLayeredMaterial::getTopLayer(*a2, &lpsrc);
  {
    OZChannel::getValueAsInt((a1 + 648), MEMORY[0x277CC08F0], 0.0);
  }

  PCSharedCount::~PCSharedCount(&v7);
}

void sub_2601AD61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

OZChannelBase *OZMaterialSubstanceLayer::hideAllParameters(OZChannelBase *this)
{
  v1 = *&this[208].var3;
  var0 = this[208].var4.var0;
  if (v1 != var0)
  {
    v3 = this;
    do
    {
      v4 = *v1;
      if (*v1 != v1[1])
      {
        do
        {
          v5 = *v4++;
          this = showHideParam(v5, 0);
        }

        while (v4 != v1[1]);
        var0 = v3[208].var4.var0;
      }

      v1 += 3;
    }

    while (v1 != var0);
  }

  return this;
}

OZChannelBase *OZMaterialSubstanceLayer::showParametersForSubstance(OZChannelBase *result, unsigned int a2)
{
  v2 = *&result[208].var3;
  if (0xAAAAAAAAAAAAAAABLL * ((result[208].var4.var0 - v2) >> 3) > a2)
  {
    v4 = v2 + 24 * a2;
    v5 = *v4;
    if (*v4 != *(v4 + 8))
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = showHideParam(v7, 1);
      }

      while (v5 != *(*&v6[208].var3 + 24 * a2 + 8));
    }
  }

  return result;
}

uint64_t OZMaterialSubstanceLayer::resetToDefault(OZChannelFolder *this, uint64_t a2)
{
  result = OZMaterialLayerBase::resetToDefault(this, a2);
  *(this + 5836) = -1;
  return result;
}

OZChannelBase *OZMaterialSubstanceLayer::channelValueWillBeSet(OZChannelBase *this, OZChannelFolder *a2, const CMTime *a3, double a4)
{
  result = OZMaterialLayerBase::channelValueWillBeSet(this, a2, a3, a4);
  p_var11 = &this[5].var11;
  if (&this[8].var5 == a2)
  {
    result = OZChannel::getValueAsInt(&this[5].var11, MEMORY[0x277CC08F0], 0.0);
    if (p_var11 != a2)
    {
      if (result != 2)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else if (p_var11 != a2)
  {
    return result;
  }

  OZChannel::getValueAsInt(&this[8].var5, a3, 0.0);
LABEL_8:
  OZChannelBase::willBeModified(this + 62, 1);
  v9 = [OZGetSubstanceLayerDictionary() objectForKey:@"Metal"];

  return [v9 count];
}

OZChannelBase *OZMaterialSubstanceLayer::updateMetalUI(OZMaterialSubstanceLayer *this, int a2)
{
  v4 = OZChannelEnum::getNumberOfStrings((this + 936)) - 1;
  v5 = (this + 6944);
  if (v4 == a2)
  {
    result = OZChannelBase::resetFlag(v5, 0x400000, 0);
  }

  else
  {
    result = OZChannelBase::setFlag(v5, 0x400000, 0);
  }

  if (*(this + 5836) != a2)
  {
    v7 = (this + 6944);
    if (a2 == 9)
    {
      OZChannelBase::resetFlag(v7, 0x400000, 0);
      OZChannelBase::resetFlag((this + 10184), 0x400000, 0);
    }

    else
    {
      OZChannelBase::setFlag(v7, 0x400000, 0);
    }

    OZChannelBase::setFlag((this + 9928), 0x400000, 0);
    OZChannelBase::setFlag((this + 9672), 0x400000, 0);
    OZChannelBase::setFlag((this + 8000), 0x400000, 0);
    OZChannelBase::setFlag((this + 8704), 0x400000, 0);
    OZChannelBase::setFlag((this + 7744), 0x400000, 0);
    result = OZChannelBase::setFlag((this + 7200), 2, 0);
    *(this + 5836) = a2;
  }

  return result;
}

OZChannelBase *OZMaterialSubstanceLayer::updatePlasticUI(uint64_t a1, int a2)
{
  v3 = a2 != 0;
  showHideParam((a1 + 10592), a2 == 0);
  showHideParam((a1 + 11600), v3);
  v4 = OZChannel::getValueAsInt((a1 + 936), MEMORY[0x277CC08F0], 0.0) == 2;
  showHideParam((a1 + 2776), v4);

  return showHideParam((a1 + 22176), v4);
}

uint64_t OZMaterialSubstanceLayer::getDefaultSublayerType(OZMaterialSubstanceLayer *this, int a2)
{
  if (a2 == 4)
  {
    return 9;
  }

  else
  {
    return OZMaterialLayerBase::getDefaultSublayerType(this);
  }
}

void OZMaterialSubstanceLayer::layerUIParameterChanged(OZMaterialSubstanceLayer *this)
{
  OZMaterialLayerBase::layerUIParameterChanged(this);

  OZMaterialSubstanceLayer::updateUI(this);
}

void OZMaterialSubstanceLayer::updateUI(OZMaterialSubstanceLayer *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  v4 = OZChannel::getValueAsInt((this + 936), v2, 0.0);
  OZMaterialSubstanceLayer::hideAllParameters(this);
  OZMaterialSubstanceLayer::showParametersForSubstance(this, ValueAsInt);
  if (ValueAsInt == 4)
  {
    PCURL::PCURL(&v6, @"Material Stone Bump Gain");
    OZChannelBase::setName(this + 198, &v6, 1);
LABEL_7:
    PCString::~PCString(&v6);
    goto LABEL_14;
  }

  if (ValueAsInt == 2)
  {
    OZMaterialSubstanceLayer::updateMetalUI(this, v4);
LABEL_4:
    PCURL::PCURL(&v6, @"Wood Bump Gain");
    OZChannelBase::setName(this + 198, &v6, 1);
    PCString::~PCString(&v6);
    goto LABEL_14;
  }

  showHideParam(this + 62, 0);
  if (!ValueAsInt)
  {
    PCURL::PCURL(&v6, @"Material Concrete Bump Gain");
    OZChannelBase::setName(this + 198, &v6, 1);
    goto LABEL_7;
  }

  if (ValueAsInt != 3)
  {
    if (ValueAsInt != 1)
    {
      goto LABEL_4;
    }

    PCURL::PCURL(&v6, @"Material Fabric Bump Gain");
    OZChannelBase::setName(this + 198, &v6, 1);
    goto LABEL_7;
  }

  PCURL::PCURL(&v6, @"Material Plastic Bump Gain");
  OZChannelBase::setName(this + 198, &v6, 1);
  PCString::~PCString(&v6);
  v5 = OZChannel::getValueAsInt(this + 68, MEMORY[0x277CC08F0], 0.0);
  OZMaterialSubstanceLayer::updatePlasticUI(this, v5);
LABEL_14:
  *(this + 5837) = ValueAsInt;
}

__CFString *OZMaterialSubstanceLayer::getLayerTypes(OZMaterialSubstanceLayer *this)
{
  PCURL::PCURL(&v3, @"Material Substance Selection Enum");
  v1 = PCString::cf_str(&v3);
  PCString::~PCString(&v3);
  return v1;
}

__CFString *OZMaterialSubstanceLayer::getLayerSubTypes(OZMaterialSubstanceLayer *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  v2 = 0;
  if (ValueAsInt > 2)
  {
    switch(ValueAsInt)
    {
      case 3:
        PCURL::PCURL(&v5, @"Material Plastic Selection Enum");
        v3 = PCString::cf_str(&v5);
        goto LABEL_14;
      case 4:
        PCURL::PCURL(&v5, @"Material Stone Selection Enum");
        v3 = PCString::cf_str(&v5);
        goto LABEL_14;
      case 5:
        PCURL::PCURL(&v5, @"Material Wood Selection Enum");
        v3 = PCString::cf_str(&v5);
        goto LABEL_14;
    }
  }

  else
  {
    switch(ValueAsInt)
    {
      case 0:
        PCURL::PCURL(&v5, @"Material Concrete Selection Enum");
        v3 = PCString::cf_str(&v5);
        goto LABEL_14;
      case 1:
        PCURL::PCURL(&v5, @"Material Fabric Selection Enum");
        v3 = PCString::cf_str(&v5);
        goto LABEL_14;
      case 2:
        PCURL::PCURL(&v5, @"Material Metal Selection Enum");
        v3 = PCString::cf_str(&v5);
LABEL_14:
        v2 = v3;
        PCString::~PCString(&v5);
        break;
    }
  }

  return v2;
}

void OZMaterialSubstanceLayer::getLayerSubTypeImageNames(OZMaterialSubstanceLayer *this@<X0>, PCString *a2@<X8>)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 2)
  {
    switch(ValueAsInt)
    {
      case 3:
        v4 = "Shiny Plastic;Matte Plastic;Textured Plastic";
        goto LABEL_17;
      case 4:
        v4 = "Dark_Granite;Gray_Granite;Limestone;Pink_Granite;Quartz;Red_Granite;Red_Rock;Sandstone;Slate;Travertine;White_Marble;Yellow_Rock";
        goto LABEL_17;
      case 5:
        v4 = "Ash;Bamboo;Birdseye_Maple;Burned_Wood;Cedar_Shingles;Old_Planks;Old_Wood;Pine;Redwood;Rosewood;Walnut;Zebrano";
        goto LABEL_17;
    }
  }

  else
  {
    switch(ValueAsInt)
    {
      case 0:
        v4 = "Aged_concrete;Brown_concrete;Brushed_concrete;Colored_concrete;Concrete_panels;Grunge_concrete;Sidewalk;Smooth_concrete";
        goto LABEL_17;
      case 1:
        v4 = "Blue_Knit;Denim;Jacquard;Leather_orange;Leather_red;Leather_yellow;Plaid;Polka_Dot;Shetland_Wool;Sisal;Striped_Linen;Suede;Tweed;Wool";
        goto LABEL_17;
      case 2:
        v4 = "Aluminum;Brass;Chrome;Copper;Gold;Nickel;Silver;Steel;-;-";
LABEL_17:

        PCString::PCString(a2, v4);
        return;
    }
  }

  PCSharedCount::PCSharedCount(a2);
}

BOOL OZMaterialSubstanceLayer::anyGradientChannels(OZMaterialSubstanceLayer *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  v4 = OZChannel::getValueAsInt((this + 648), v2, 0.0);
  v5 = OZChannel::getValueAsInt((this + 648), v2, 0.0);
  if (ValueAsInt == 3)
  {
    v6 = 10336;
  }

  else
  {
    if (v4 != 8 && v5 != 6)
    {
      return 0;
    }

    v6 = 6688;
  }

  return OZChannel::getValueAsInt((this + v6), MEMORY[0x277CC08F0], 0.0) == 1;
}

uint64_t OZMaterialSubstanceLayer::getGradientChannels(uint64_t a1)
{
  result = (*(*a1 + 840))(a1);
  if (result)
  {
    OZChannelBase::getRef((a1 + 11600), 0);
  }

  return result;
}

uint64_t OZMaterialSubstanceLayer::getColorChannelForHUD(OZMaterialSubstanceLayer *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt == 8 || ValueAsInt == 6)
  {
    v4 = 6688;
  }

  else
  {
    if (ValueAsInt != 3)
    {
      return 0;
    }

    v4 = 10336;
  }

  if (OZChannel::getValueAsInt((this + v4), MEMORY[0x277CC08F0], 0.0))
  {
    return 0;
  }

  return this + 10592;
}

BOOL OZMaterialSubstanceLayer::isAnySharedTransformEnabled(OZMaterialSubstanceLayer *this)
{
  if (OZMaterialCompoundLayer::isAnySharedTransformEnabled(this))
  {
    return 1;
  }

  ValueAsInt = OZChannel::getValueAsInt((this + 648), MEMORY[0x277CC08F0], 0.0);
  v4 = ValueAsInt == 8 || ValueAsInt == 6;
  return v4 && OZChannel::getValueAsInt(this + 44, MEMORY[0x277CC08F0], 0.0) == 2 && OZChannel::getValueAsInt((this + 16808), MEMORY[0x277CC08F0], 0.0) != 0;
}

OZChannelBase *OZMaterialSubstanceLayer::updateLocalTransformVisibility(OZMaterialSubstanceLayer *this)
{
  OZMaterialCompoundLayer::updateLocalTransformVisibility(this);

  return OZChannelMaterialMapTransform::updateLocalTransformChannelsVisibility((this + 16680));
}

OZChannelBase *OZMaterialSubstanceLayer::setTransformValuesAsDefaults(OZMaterialSubstanceLayer *this)
{
  OZMaterialCompoundLayer::setTransformValuesAsDefaults(this);

  return OZChannelMaterialMapTransform::setCurrentTransformValuesAsDefault((this + 16680));
}

void OZMaterialSubstanceLayer::~OZMaterialSubstanceLayer(OZMaterialSubstanceLayer *this)
{
  OZMaterialSubstanceLayer::~OZMaterialSubstanceLayer(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_28729CEF8;
  *(this + 2) = &unk_28729D408;
  *(this + 835) = &unk_28729D460;
  v2 = (this + 23320);
  std::vector<std::vector<Vec3f>>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZChannelEnum::~OZChannelEnum((this + 23064));
  OZChannelBool::~OZChannelBool((this + 22912));
  OZChannelPercent::~OZChannelPercent((this + 22760));
  OZChannelFolder::~OZChannelFolder((this + 22632));
  OZChannelPercent::~OZChannelPercent((this + 22480));
  OZChannelPercent::~OZChannelPercent((this + 22328));
  OZChannelPercent::~OZChannelPercent((this + 22176));
  OZChannel2D::~OZChannel2D((this + 21736));
  OZChannel2D::~OZChannel2D((this + 21296));
  OZChannelMaterialLayerMap::~OZChannelMaterialLayerMap((this + 14840));
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform((this + 11600));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 10592));
  OZChannelEnum::~OZChannelEnum((this + 10336));
  OZChannelPercent::~OZChannelPercent(this + 67);
  OZChannelGradientWithTransform::~OZChannelGradientWithTransform((this + 6944));
  OZChannelEnum::~OZChannelEnum((this + 6688));
  OZMaterialCompoundLayer::~OZMaterialCompoundLayer(this);
}

uint64_t OZMaterialSubstanceLayer::enableDisableEnvironmentDependentChannels(OZMaterialSubstanceLayer *this, uint64_t a2)
{
  v3 = (*(*this + 1184))(this) + 288;
  v4 = *(*v3 + 104);

  return v4(v3, a2, 0);
}

uint64_t OZMaterialSubstanceLayer::getSequenceColorChannel(OZChannelBase *this)
{
  result = OZMaterialLayerBase::getSequenceChannels(this);
  if (result)
  {
    result = OZMaterialLayerBase::getSequenceChannels(this);
    if (result)
    {
      SequenceChannels = OZMaterialLayerBase::getSequenceChannels(this);
      if (SequenceChannels)
      {
        SequenceChannels = OZMaterialLayerBase::getSequenceChannels(this);
      }

      return SequenceChannels + 128;
    }
  }

  return result;
}

uint64_t OZMaterialSubstanceLayer::getSequenceOpacityChannel(OZChannelBase *this)
{
  result = OZMaterialLayerBase::getSequenceChannels(this);
  if (result)
  {
    result = OZMaterialLayerBase::getSequenceChannels(this);
    if (result)
    {
      SequenceChannels = OZMaterialLayerBase::getSequenceChannels(this);
      if (SequenceChannels)
      {
        SequenceChannels = OZMaterialLayerBase::getSequenceChannels(this);
      }

      return SequenceChannels + 1136;
    }
  }

  return result;
}

uint64_t OZMaterialSubstanceLayer::sharedTransformChannel(OZChannelBase *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(this);
  v2 = ObjectManipulator - 16;
  if (!ObjectManipulator)
  {
    v2 = 0;
  }

  return v2 + 1568;
}

uint64_t OZMaterialSubstanceLayer::sequenceChannels(OZChannelBase *this)
{
  result = OZMaterialLayerBase::getSequenceChannels(this);
  if (result)
  {

    return OZMaterialLayerBase::getSequenceChannels(this);
  }

  return result;
}

void non-virtual thunk toOZMaterialSubstanceLayer::~OZMaterialSubstanceLayer(OZMaterialSubstanceLayer *this)
{
  OZMaterialSubstanceLayer::~OZMaterialSubstanceLayer((this - 16));
}

{
  OZMaterialSubstanceLayer::~OZMaterialSubstanceLayer((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t non-virtual thunk toOZMaterialSubstanceLayer::sharedTransformChannel(OZMaterialSubstanceLayer *this)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator((this - 6680));
  v2 = ObjectManipulator - 16;
  if (!ObjectManipulator)
  {
    v2 = 0;
  }

  return v2 + 1568;
}

uint64_t non-virtual thunk toOZMaterialSubstanceLayer::sequenceChannels(OZMaterialSubstanceLayer *this)
{
  result = OZMaterialLayerBase::getSequenceChannels((this - 6680));
  if (result)
  {

    return OZMaterialLayerBase::getSequenceChannels((this - 6680));
  }

  return result;
}

uint64_t OZCacheManager::setHosted(OZCacheManager *this)
{
  v1 = this;
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if ((result & 1) == 0)
  {
  }

  return result;
}

uint64_t OZCacheManager::Instance(OZCacheManager *this)
{
  if (OZCacheManager::Instance(void)::once != -1)
  {
    OZCacheManager::Instance();
  }

  return OZCacheManager::_instance;
}

uint64_t OZCacheManager::guaranteeMemory(OZCacheManager *this)
{
  v1 = this;
  v22 = 0;
  MemoryInfo = PCInfo::getMemoryInfo(0, 0, 0, 0, 0, 0, 0, &v22, v21);
  {
    ProGL::clearTexturePool(MemoryInfo);
    {
      goto LABEL_10;
    }
  }

  else
  {
    {
      return 1;
    }

    ProGL::clearTexturePool(MemoryInfo);
    {
      goto LABEL_9;
    }
  }

  isMemoryAvailable = PCInfo::isMemoryAvailable(v1);
  if (isMemoryAvailable)
  {
    {
      return 1;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
LABEL_11:
  v5 = OZSceneList::instance(isMemoryAvailable);
  v6 = ProShade::Snippet::code(v5);
  PCMutex::lock(v6);
  CurrentDoc = theApp;
  if (theApp && (CurrentDoc = OZApplication::getCurrentDoc(theApp)) != 0)
  {
    v8 = *(CurrentDoc + 3);
  }

  else
  {
    v8 = 0;
  }

  v9 = OZSceneList::instance(CurrentDoc);
  LabelCtlrClassName = OZChannelBase::getLabelCtlrClassName(v9);
  v11 = OZSceneList::instance(LabelCtlrClassName);
  v12 = OZSceneList::end(v11);
  while (!v4)
  {
    if (LabelCtlrClassName == v12)
    {
      if (!v8)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_24:
    isa = LabelCtlrClassName[1].isa;
    if (isa != v8)
    {
      v15 = PGGetPerThreadContext();
      OZScene::reloadResources(isa, v15);
      {
        v4 = PCInfo::isMemoryAvailable(v1);
      }
    }

    info = LabelCtlrClassName->info;
    if (info)
    {
      do
      {
        LabelCtlrClassName = info;
        info = info->isa;
      }

      while (info);
    }

    else
    {
      do
      {
        v17 = LabelCtlrClassName;
        LabelCtlrClassName = LabelCtlrClassName->data;
      }

      while (LabelCtlrClassName->isa != v17);
    }
  }

  {
    goto LABEL_24;
  }

  {
    v18 = v8 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
LABEL_39:
    v19 = PGGetPerThreadContext();
    OZScene::reloadResources(v8, v19);
  }

LABEL_40:
  PCMutex::unlock(v6);
  return 1;
}

void sub_2601AEC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZCacheManager::clearTextureCache(OZCacheManager *this)
{
  v1 = PGTextureCache::instance(this);

  PGTextureCache::clear(v1);
}

void OZCacheManager::clearMetalTextureCache(OZCacheManager *this)
{
  v1 = OZMetalTextureCache::instance(this);

  OZMetalTextureCache::clear(v1);
}

void OZCacheManager::OZCacheManager(OZCacheManager *this)
{
  PCSingleton::PCSingleton(this, 0);
  *ImageCacheSize = &unk_28729D580;
  *(ImageCacheSize + 24) = 0;
  *(ImageCacheSize + 32) = 0;
  *(ImageCacheSize + 40) = 0;
  *(ImageCacheSize + 48) = 0;
  *(ImageCacheSize + 56) = 0;
  *(ImageCacheSize + 64) = 0;
  *(ImageCacheSize + 72) = 0;
  *(ImageCacheSize + 80) = 0;
  {
    ImageCacheSize = OZCacheManager::getImageCacheSize(ImageCacheSize);
    *(this + 4) = ImageCacheSize;
  }

  PGTextureCache::instance(ImageCacheSize);
}

unint64_t OZCacheManager::getImageCacheSize(OZCacheManager *this)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  MemoryInfo = PCInfo::getMemoryInfo(&v8, &v7, 0, 0, &v6, 0, 0, 0, v5);
  v2 = v8 - vcvtd_n_f64_u64(v8, 2uLL);
  v3 = OZPreferenceManager::Instance(MemoryInfo);
  return v2 * OZPreferenceManager::getCachePercentage(v3) / 0x64uLL;
}

void OZCacheManager::~OZCacheManager(OZCacheManager *this)
{
  *this = &unk_28729D580;
  v2 = PGTextureCache::instance(this);
  PGTextureCache::clear(v2);
  v4 = OZMetalTextureCache::instance(v3);
  OZMetalTextureCache::clear(v4);

  PCSingleton::~PCSingleton(this);
}

{
  OZCacheManager::~OZCacheManager(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZCacheManager::addTexture(PGTextureCache *a1, uint64_t *a2, __int128 *a3, int a4, PCHash128 *a5)
{
  v9 = PGTextureCache::instance(a1);

  return PGTextureCache::add(v9, a2, a3, a4, a5);
}

uint64_t OZCacheManager::addTexture(PGTextureCache *a1, uint64_t *a2, HGGPUComputeDevice **a3, PCHash128 *a4)
{
  v7 = PGTextureCache::instance(a1);

  return PGTextureCache::add(v7, a2, a3, a4);
}

void OZCacheManager::getTextureForKey(PGTextureCache *a1@<X0>, int a2@<W1>, const PCHash128 *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  v9 = PGTextureCache::instance(a1);

  PGTextureCache::find(v9, a2, a3, a4, a5);
}

void OZCacheManager::getTextureForKey(PGTextureCache *a1@<X0>, HGGPUComputeDevice **a2@<X1>, const PCHash128 *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  v9 = PGTextureCache::instance(a1);

  PGTextureCache::find(v9, a2, a3, a4, a5);
}

uint64_t OZCacheManager::addMetalTexture(OZMetalTextureCache *a1, uint64_t *a2, void *a3, PCHash128 *a4)
{
  v7 = OZMetalTextureCache::instance(a1);

  return OZMetalTextureCache::add(v7, a2, a3, a4);
}

void OZCacheManager::getMetalTextureForKey(OZMetalTextureCache *a1@<X0>, void *a2@<X1>, const PCHash128 *a3@<X2>, void *a4@<X8>)
{
  v7 = OZMetalTextureCache::instance(a1);

  OZMetalTextureCache::find(v7, a2, a3, 0, a4);
}

void OZARPersonAnchorElement::OZARPersonAnchorElement(OZARPersonAnchorElement *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3, a4);
  *v5 = &unk_28729D5B8;
  v5[2] = &unk_28729DEF0;
  v5[6] = &unk_28729E148;
  v5[816] = &unk_28729E1A0;
  Li3DEngineScene::Li3DEngineScene((v5 + 3053));
  *(this + 1537) = 0u;
  PCString::PCString(&v6, "Person Folder");
  OZChannelFolder::OZChannelFolder((this + 24608), &v6, (this + 448), 0x190u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Index");
  OZChannelUint32::OZChannelUint32((this + 24736), &v6, (this + 24608), 0x191u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Enable Physics");
  OZChannelBool::OZChannelBool((this + 24888), 1, &v6, (this + 24608), 0x192u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Bounding Box Origin");
  OZChannel2D::OZChannel2D((this + 25040), &v6, (this + 24608), 0x1C4u, 0, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Bounding Box Size");
  OZChannel2D::OZChannel2D((this + 25480), &v6, (this + 24608), 0x1C5u, 0, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Person Size");
  OZChannel2D::OZChannel2D((this + 25920), &v6, (this + 24608), 0x1C6u, 0, 2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Is In Frame");
  OZChannelDouble::OZChannelDouble((this + 26360), &v6, (this + 24608), 0x1C7u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Physics");
  OZChannelFolder::OZChannelFolder((this + 26512), &v6, (this + 24608), 0x1C1u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Mass");
  OZChannelDouble::OZChannelDouble((this + 26640), 1.0, &v6, (this + 26512), 0x1C2u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Sliding Friction");
  OZChannelPercent::OZChannelPercent((this + 26792), 0.5, &v6, (this + 26512), 0x1C3u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Joints");
  OZChannelFolder::OZChannelFolder((this + 26944), &v6, (this + 24608), 0x193u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Head");
  OZChannelFolder::OZChannelFolder((this + 27072), &v6, (this + 26944), 0x194u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 27200), &v6, (this + 27072), 0x195u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 28088), &v6, (this + 27072), 0x196u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Hand");
  OZChannelFolder::OZChannelFolder((this + 28944), &v6, (this + 26944), 0x197u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 29072), &v6, (this + 28944), 0x198u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 29960), &v6, (this + 28944), 0x199u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Hand");
  OZChannelFolder::OZChannelFolder((this + 30816), &v6, (this + 26944), 0x19Au, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 30944), &v6, (this + 30816), 0x19Bu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 31832), &v6, (this + 30816), 0x19Cu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Elbow");
  OZChannelFolder::OZChannelFolder((this + 32688), &v6, (this + 26944), 0x19Du, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 32816), &v6, (this + 32688), 0x19Eu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 33704), &v6, (this + 32688), 0x19Fu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Elbow");
  OZChannelFolder::OZChannelFolder((this + 34560), &v6, (this + 26944), 0x1A0u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 34688), &v6, (this + 34560), 0x1A1u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 35576), &v6, (this + 34560), 0x1A2u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Shoulder");
  OZChannelFolder::OZChannelFolder((this + 36432), &v6, (this + 26944), 0x1A3u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 36560), &v6, (this + 36432), 0x1A4u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 37448), &v6, (this + 36432), 0x1A5u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Shoulder");
  OZChannelFolder::OZChannelFolder((this + 38304), &v6, (this + 26944), 0x1A6u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 38432), &v6, (this + 38304), 0x1A7u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 39320), &v6, (this + 38304), 0x1A8u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Hip");
  OZChannelFolder::OZChannelFolder((this + 40176), &v6, (this + 26944), 0x1A9u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 40304), &v6, (this + 40176), 0x1AAu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 41192), &v6, (this + 40176), 0x1ABu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Hip");
  OZChannelFolder::OZChannelFolder((this + 42048), &v6, (this + 26944), 0x1ACu, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 42176), &v6, (this + 42048), 0x1ADu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 43064), &v6, (this + 42048), 0x1AEu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Knee");
  OZChannelFolder::OZChannelFolder((this + 43920), &v6, (this + 26944), 0x1AFu, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 44048), &v6, (this + 43920), 0x1B0u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 44936), &v6, (this + 43920), 0x1B1u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Knee");
  OZChannelFolder::OZChannelFolder((this + 45792), &v6, (this + 26944), 0x1B2u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 45920), &v6, (this + 45792), 0x1B3u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 46808), &v6, (this + 45792), 0x1B4u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Foot");
  OZChannelFolder::OZChannelFolder((this + 47664), &v6, (this + 26944), 0x1B5u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 47792), &v6, (this + 47664), 0x1B6u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 48680), &v6, (this + 47664), 0x1B7u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Foot");
  OZChannelFolder::OZChannelFolder((this + 49536), &v6, (this + 26944), 0x1B8u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 49664), &v6, (this + 49536), 0x1B9u, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 50552), &v6, (this + 49536), 0x1BAu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Left Foot End");
  OZChannelFolder::OZChannelFolder((this + 51408), &v6, (this + 26944), 0x1BBu, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 51536), &v6, (this + 51408), 0x1BCu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 52424), &v6, (this + 51408), 0x1BDu, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Right Foot End");
  OZChannelFolder::OZChannelFolder((this + 53280), &v6, (this + 26944), 0x1BEu, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 53408), &v6, (this + 53280), 0x1BFu, 0, 3u);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 54296), &v6, (this + 53280), 0x1C0u, 0, 4u, 0, 0);
  PCString::~PCString(&v6);
  OZARPersonAnchorElement::init(this);
  OZChannel::setMin((this + 24736), 1.0);
  OZChannel::setMax((this + 24736), 10.0);
  OZChannel::setDefaultValue((this + 24736), 1.0);
}

void sub_2601AFF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelPosition3D::~OZChannelPosition3D((v10 + v16));
  OZChannelFolder::~OZChannelFolder((v10 + v15));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + v17));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + v11));
  OZChannelFolder::~OZChannelFolder((v10 + v12));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 50552));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 49664));
  OZChannelFolder::~OZChannelFolder((v10 + v13));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 48680));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 47792));
  OZChannelFolder::~OZChannelFolder((v10 + 47664));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 46808));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 45920));
  OZChannelFolder::~OZChannelFolder((v10 + 45792));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 44936));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 44048));
  OZChannelFolder::~OZChannelFolder((v10 + 43920));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 43064));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 42176));
  OZChannelFolder::~OZChannelFolder((v10 + 42048));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 41192));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 40304));
  OZChannelFolder::~OZChannelFolder((v10 + 40176));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 39320));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 38432));
  OZChannelFolder::~OZChannelFolder((v10 + 38304));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 37448));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 36560));
  OZChannelFolder::~OZChannelFolder((v10 + 36432));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 35576));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 34688));
  OZChannelFolder::~OZChannelFolder((v10 + 34560));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 33704));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 32816));
  OZChannelFolder::~OZChannelFolder((v10 + 32688));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 31832));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 30944));
  OZChannelFolder::~OZChannelFolder((v10 + 30816));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 29960));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 29072));
  OZChannelFolder::~OZChannelFolder((v10 + 28944));
  OZChannelRotation3D::~OZChannelRotation3D((v10 + 28088));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 27200));
  OZChannelFolder::~OZChannelFolder((v10 + 27072));
  OZChannelFolder::~OZChannelFolder((v10 + v14));
  OZChannelPercent::~OZChannelPercent((v10 + 26792));
  OZChannel::~OZChannel((v10 + 26640));
  OZChannelFolder::~OZChannelFolder((v10 + 26512));
  OZChannel::~OZChannel((v10 + 26360));
  OZChannel2D::~OZChannel2D((v10 + 25920));
  OZChannel2D::~OZChannel2D((v10 + 25480));
  OZChannel2D::~OZChannel2D((v10 + 25040));
  OZChannelBool::~OZChannelBool((v10 + 24888));
  OZChannel::~OZChannel((v10 + 24736));
  OZChannelFolder::~OZChannelFolder((v10 + 24608));
  Li3DEngineScene::~Li3DEngineScene((v10 + 24424));
  OZARAnchorElement::~OZARAnchorElement(v10);
  _Unwind_Resume(a1);
}

void OZARPersonAnchorElement::init(OZARPersonAnchorElement *this)
{
  v2 = [OZPerson3DSCNSceneBuilder alloc];
  *(this + 3075) = -[OZPerson3DSCNSceneBuilder initWithName:](v2, "initWithName:", [MEMORY[0x277CCACA8] stringWithFormat:@"%u", *(this + 20)]);
  OZChannelBase::setFlag((this + 26944), 4259872, 0);
  OZChannel::setMin((this + 26360), 0.0);

  OZChannel::setMax((this + 26360), 1.0);
}

void OZARPersonAnchorElement::OZARPersonAnchorElement(OZARPersonAnchorElement *this, const OZARPersonAnchorElement *a2, uint64_t a3)
{
  OZARAnchorElement::OZARAnchorElement(this, a2, a3);
  *v5 = &unk_28729D5B8;
  v5[2] = &unk_28729DEF0;
  v5[6] = &unk_28729E148;
  v5[816] = &unk_28729E1A0;
  Li3DEngineScene::Li3DEngineScene((v5 + 3053));
  *(this + 1537) = 0u;
  OZChannelFolder::OZChannelFolder((this + 24608), (a2 + 24608), (this + 448));
  OZChannel::OZChannel((this + 24736), (a2 + 24736), (this + 24608));
  *(this + 3092) = &unk_287246400;
  *(this + 3094) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 24888), (a2 + 24888), (this + 24608));
  OZChannel2D::OZChannel2D((this + 25040), (a2 + 25040), (this + 24608));
  OZChannel2D::OZChannel2D((this + 25480), (a2 + 25480), (this + 24608));
  OZChannel2D::OZChannel2D((this + 25920), (a2 + 25920), (this + 24608));
  OZChannel::OZChannel((this + 26360), (a2 + 26360), (this + 24608));
  *(this + 3295) = &unk_287245C60;
  *(this + 3297) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 26512), (a2 + 26512), (this + 24608));
  OZChannel::OZChannel((this + 26640), (a2 + 26640), (this + 26512));
  *(this + 3330) = &unk_287245C60;
  *(this + 3332) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 26792), (a2 + 26792), (this + 26512));
  OZChannelFolder::OZChannelFolder((this + 26944), (a2 + 26944), (this + 24608));
  OZChannelFolder::OZChannelFolder((this + 27072), (a2 + 27072), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 27200), (a2 + 27200), (this + 27072));
  OZChannelRotation3D::OZChannelRotation3D((this + 28088), (a2 + 28088), (this + 27072));
  OZChannelFolder::OZChannelFolder((this + 28944), (a2 + 28944), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 29072), (a2 + 29072), (this + 28944));
  OZChannelRotation3D::OZChannelRotation3D((this + 29960), (a2 + 29960), (this + 28944));
  OZChannelFolder::OZChannelFolder((this + 30816), (a2 + 30816), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 30944), (a2 + 30944), (this + 30816));
  OZChannelRotation3D::OZChannelRotation3D((this + 31832), (a2 + 31832), (this + 30816));
  OZChannelFolder::OZChannelFolder((this + 32688), (a2 + 32688), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 32816), (a2 + 32816), (this + 32688));
  OZChannelRotation3D::OZChannelRotation3D((this + 33704), (a2 + 33704), (this + 32688));
  OZChannelFolder::OZChannelFolder((this + 34560), (a2 + 34560), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 34688), (a2 + 34688), (this + 34560));
  OZChannelRotation3D::OZChannelRotation3D((this + 35576), (a2 + 35576), (this + 34560));
  OZChannelFolder::OZChannelFolder((this + 36432), (a2 + 36432), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 36560), (a2 + 36560), (this + 36432));
  OZChannelRotation3D::OZChannelRotation3D((this + 37448), (a2 + 37448), (this + 36432));
  OZChannelFolder::OZChannelFolder((this + 38304), (a2 + 38304), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 38432), (a2 + 38432), (this + 38304));
  OZChannelRotation3D::OZChannelRotation3D((this + 39320), (a2 + 39320), (this + 38304));
  OZChannelFolder::OZChannelFolder((this + 40176), (a2 + 40176), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 40304), (a2 + 40304), (this + 40176));
  OZChannelRotation3D::OZChannelRotation3D((this + 41192), (a2 + 41192), (this + 40176));
  OZChannelFolder::OZChannelFolder((this + 42048), (a2 + 42048), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 42176), (a2 + 42176), (this + 42048));
  OZChannelRotation3D::OZChannelRotation3D((this + 43064), (a2 + 43064), (this + 42048));
  OZChannelFolder::OZChannelFolder((this + 43920), (a2 + 43920), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 44048), (a2 + 44048), (this + 43920));
  OZChannelRotation3D::OZChannelRotation3D((this + 44936), (a2 + 44936), (this + 43920));
  OZChannelFolder::OZChannelFolder((this + 45792), (a2 + 45792), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 45920), (a2 + 45920), (this + 45792));
  OZChannelRotation3D::OZChannelRotation3D((this + 46808), (a2 + 46808), (this + 45792));
  OZChannelFolder::OZChannelFolder((this + 47664), (a2 + 47664), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 47792), (a2 + 47792), (this + 47664));
  OZChannelRotation3D::OZChannelRotation3D((this + 48680), (a2 + 48680), (this + 47664));
  OZChannelFolder::OZChannelFolder((this + 49536), (a2 + 49536), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 49664), (a2 + 49664), (this + 49536));
  OZChannelRotation3D::OZChannelRotation3D((this + 50552), (a2 + 50552), (this + 49536));
  OZChannelFolder::OZChannelFolder((this + 51408), (a2 + 51408), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 51536), (a2 + 51536), (this + 51408));
  OZChannelRotation3D::OZChannelRotation3D((this + 52424), (a2 + 52424), (this + 51408));
  OZChannelFolder::OZChannelFolder((this + 53280), (a2 + 53280), (this + 26944));
  OZChannelPosition3D::OZChannelPosition3D((this + 53408), (a2 + 53408), (this + 53280));
  OZChannelRotation3D::OZChannelRotation3D((this + 54296), (a2 + 54296), (this + 53280));
  OZARPersonAnchorElement::init(this);
}