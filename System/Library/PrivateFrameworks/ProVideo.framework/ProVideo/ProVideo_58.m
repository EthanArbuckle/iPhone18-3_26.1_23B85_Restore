void sub_25FE5C8A8(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelAspectRatioFootage_Factory::OZChannelAspectRatioFootage_Factory(OZChannelAspectRatioFootage_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608483F0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287240FE0;
  *(this + 16) = &unk_2872410B0;
}

void OZChannelAspectRatioFootage::OZChannelAspectRatioFootage(OZChannelAspectRatioFootage *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287247340;
  v9->var2 = &unk_2872476A0;
  OZChannelAspectRatioFootageInfo = OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(v9);
  if (a6)
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
  if (a5)
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

uint64_t OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(OZChannelAspectRatioFootage *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(void)::_OZChannelAspectRatioFootageInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(void)::_OZChannelAspectRatioFootageInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageInfo;
}

uint64_t OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(OZChannelAspectRatioFootage *this)
{
  if (atomic_load_explicit(&OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(void)::_OZChannelAspectRatioFootageImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(void)::_OZChannelAspectRatioFootageImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageInfo)
  {
    operator new();
  }
}

void OZChannelAspectRatioFootageInfo::OZChannelAspectRatioFootageInfo(OZChannelAspectRatioFootageInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 3.0, 0.0001, 0.1, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287241108;
  *(this + 10) = &unk_287241128;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelAspectRatioFootage::createOZChannelAspectRatioFootageImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelAspectRatioFootage::_OZChannelAspectRatioFootageImpl)
  {
    operator new();
  }
}

void sub_25FE5D048(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelGammaFootage_Factory::OZChannelGammaFootage_Factory(OZChannelGammaFootage_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848400;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872411F8;
  *(this + 16) = &unk_2872412C8;
}

void OZChannelGammaFootage::OZChannelGammaFootage(OZChannelGammaFootage *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287247710;
  v9->var2 = &unk_287247A70;
  OZChannelGammaFootageInfo = OZChannelGammaFootage::createOZChannelGammaFootageInfo(v9);
  if (a6)
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
  if (a5)
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

uint64_t OZChannelGammaFootage::createOZChannelGammaFootageInfo(OZChannelGammaFootage *this)
{
  if (atomic_load_explicit(&OZChannelGammaFootage::createOZChannelGammaFootageInfo(void)::_OZChannelGammaFootageInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGammaFootage::createOZChannelGammaFootageInfo(void)::_OZChannelGammaFootageInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGammaFootage::createOZChannelGammaFootageInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGammaFootage::_OZChannelGammaFootageInfo;
}

uint64_t OZChannelGammaFootage::createOZChannelGammaFootageImpl(OZChannelGammaFootage *this)
{
  if (atomic_load_explicit(&OZChannelGammaFootage::createOZChannelGammaFootageImpl(void)::_OZChannelGammaFootageImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelGammaFootage::createOZChannelGammaFootageImpl(void)::_OZChannelGammaFootageImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGammaFootage::createOZChannelGammaFootageImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelGammaFootage::_OZChannelGammaFootageImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGammaFootage::createOZChannelGammaFootageInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGammaFootage::_OZChannelGammaFootageInfo)
  {
    operator new();
  }
}

void OZChannelGammaFootageInfo::OZChannelGammaFootageInfo(OZChannelGammaFootageInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 3.0, 0.0001, 0.1, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287241320;
  *(this + 10) = &unk_287241340;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelGammaFootage::createOZChannelGammaFootageImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelGammaFootage::_OZChannelGammaFootageImpl)
  {
    operator new();
  }
}

void sub_25FE5D7E8(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelFolder_Factory::OZChannelFolder_Factory(OZChannelFolder_Factory *this)
{
  v3 = xmmword_260848360;
  v4 = xmmword_2603472C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241410;
  *(this + 16) = &unk_2872414E0;
}

void OZCompoundChannel_Factory::OZCompoundChannel_Factory(OZCompoundChannel_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2603484D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241538;
  *(this + 16) = &unk_287241608;
}

void OZChannel2D_Factory::OZChannel2D_Factory(OZChannel2D_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848410;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241660;
  *(this + 16) = &unk_287241730;
}

void OZChannelBool3D_Factory::OZChannelBool3D_Factory(OZChannelBool3D_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848420;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241788;
  *(this + 16) = &unk_287241858;
}

void OZChannelPosition_Factory::OZChannelPosition_Factory(OZChannelPosition_Factory *this)
{
  v3 = xmmword_260848410;
  v4 = xmmword_260848430;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872418B0;
  *(this + 16) = &unk_287241980;
}

void OZChannelPositionPercent_Factory::OZChannelPositionPercent_Factory(OZChannelPositionPercent_Factory *this)
{
  v3 = xmmword_260848410;
  v4 = xmmword_260848440;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872419D8;
  *(this + 16) = &unk_287241AA8;
}

void OZChannelShear_Factory::OZChannelShear_Factory(OZChannelShear_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848450;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241B00;
  *(this + 16) = &unk_287241BD0;
}

void OZChannelScale_Factory::OZChannelScale_Factory(OZChannelScale_Factory *this)
{
  v3 = xmmword_260848410;
  v4 = xmmword_260848460;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241C28;
  *(this + 16) = &unk_287241CF8;
}

void OZChannel3D_Factory::OZChannel3D_Factory(OZChannel3D_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848470;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241D50;
  *(this + 16) = &unk_287241E20;
}

void OZChannelPosition3D_Factory::OZChannelPosition3D_Factory(OZChannelPosition3D_Factory *this)
{
  v3 = xmmword_260848430;
  v4 = xmmword_260848480;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241E78;
  *(this + 16) = &unk_287241F48;
}

void OZChannelRotation3D_Factory::OZChannelRotation3D_Factory(OZChannelRotation3D_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848490;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287241FA0;
  *(this + 16) = &unk_287242070;
}

void OZChannelScale3D_Factory::OZChannelScale3D_Factory(OZChannelScale3D_Factory *this)
{
  v3 = xmmword_260848460;
  v4 = xmmword_2608484A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872420C8;
  *(this + 16) = &unk_287242198;
}

void OZChannelColorNoAlpha_Factory::OZChannelColorNoAlpha_Factory(OZChannelColorNoAlpha_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_2608484B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872421F0;
  *(this + 16) = &unk_2872422C0;
}

void OZChannelColor_Factory::OZChannelColor_Factory(OZChannelColor_Factory *this)
{
  v3 = xmmword_2608484B0;
  v4 = xmmword_2608484C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242318;
  *(this + 16) = &unk_2872423E8;
}

void OZChannelQuad_Factory::OZChannelQuad_Factory(OZChannelQuad_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608484D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242440;
  *(this + 16) = &unk_287242510;
}

void OZChannelCrop_Factory::OZChannelCrop_Factory(OZChannelCrop_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_2608484E0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242568;
  *(this + 16) = &unk_287242638;
}

void OZChannelDiscreteColor_Factory::OZChannelDiscreteColor_Factory(OZChannelDiscreteColor_Factory *this)
{
  v3 = xmmword_260848500;
  v4 = xmmword_2608484F0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242690;
  *(this + 16) = &unk_287242760;
}

void OZChannelGradient_Factory::OZChannelGradient_Factory(OZChannelGradient_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260848510;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872427B8;
  *(this + 16) = &unk_287242888;
}

void OZChannelGradientRGBFolder_Factory::OZChannelGradientRGBFolder_Factory(OZChannelGradientRGBFolder_Factory *this)
{
  v3 = xmmword_260848530;
  v4 = xmmword_260848520;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872428E0;
  *(this + 16) = &unk_2872429B0;
}

void OZChannelGradientAlphaFolder_Factory::OZChannelGradientAlphaFolder_Factory(OZChannelGradientAlphaFolder_Factory *this)
{
  v3 = xmmword_260848530;
  v4 = xmmword_260848540;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242A08;
  *(this + 16) = &unk_287242AD8;
}

void OZChannelGradientSample_Factory::OZChannelGradientSample_Factory(OZChannelGradientSample_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260848550;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242B30;
  *(this + 16) = &unk_287242C00;
}

void OZChannelGradientSampleRGB_Factory::OZChannelGradientSampleRGB_Factory(OZChannelGradientSampleRGB_Factory *this)
{
  v3 = xmmword_260848550;
  v4 = xmmword_260848560;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242C58;
  *(this + 16) = &unk_287242D28;
}

void OZChannelGradientSampleAlpha_Factory::OZChannelGradientSampleAlpha_Factory(OZChannelGradientSampleAlpha_Factory *this)
{
  v3 = xmmword_260848550;
  v4 = xmmword_260848570;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242D80;
  *(this + 16) = &unk_287242E50;
}

void OZChannelGradientExtras_Factory::OZChannelGradientExtras_Factory(OZChannelGradientExtras_Factory *this)
{
  v3 = xmmword_260848510;
  v4 = xmmword_260848580;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242EA8;
  *(this + 16) = &unk_287242F78;
}

void OZChannelGradientPositioned_Factory::OZChannelGradientPositioned_Factory(OZChannelGradientPositioned_Factory *this)
{
  v3 = xmmword_260848580;
  v4 = xmmword_260848590;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287242FD0;
  *(this + 16) = &unk_2872430A0;
}

void OZChannelVaryingFolder_Factory::OZChannelVaryingFolder_Factory(OZChannelVaryingFolder_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260848530;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872430F8;
  *(this + 16) = &unk_2872431C8;
}

void OZChannelObjectRootBase_Factory::OZChannelObjectRootBase_Factory(OZChannelObjectRootBase_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608485A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243220;
  *(this + 16) = &unk_2872432F0;
}

void OZChannelHistogram_Factory::OZChannelHistogram_Factory(OZChannelHistogram_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608485B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243348;
  *(this + 16) = &unk_287243418;
}

void OZChannelLevels_Factory::OZChannelLevels_Factory(OZChannelLevels_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608485C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243470;
  *(this + 16) = &unk_287243540;
}

void OZChannelButton_Factory::OZChannelButton_Factory(OZChannelButton_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608485D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243598;
  *(this + 16) = &unk_287243668;
}

void OZChannelHelpButton_Factory::OZChannelHelpButton_Factory(OZChannelHelpButton_Factory *this)
{
  v3 = xmmword_2608485D0;
  v4 = xmmword_2608485E0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872436C0;
  *(this + 16) = &unk_287243790;
}

void OZChannelText_Factory::OZChannelText_Factory(OZChannelText_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260348490;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872437E8;
  *(this + 16) = &unk_2872438B8;
}

void OZChannelDoubleOverRange_Factory::OZChannelDoubleOverRange_Factory(OZChannelDoubleOverRange_Factory *this)
{
  v3 = xmmword_260848380;
  v4 = xmmword_2608485F0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243910;
  *(this + 16) = &unk_2872439E0;
}

void OZChannelScaleOverRange_Factory::OZChannelScaleOverRange_Factory(OZChannelScaleOverRange_Factory *this)
{
  v3 = xmmword_260848460;
  v4 = xmmword_260848600;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243A38;
  *(this + 16) = &unk_287243B08;
}

void OZChannelAngleOverRange_Factory::OZChannelAngleOverRange_Factory(OZChannelAngleOverRange_Factory *this)
{
  v3 = xmmword_2608483B0;
  v4 = xmmword_260848610;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243B60;
  *(this + 16) = &unk_287243C30;
}

void OZChannelPercentOverRange_Factory::OZChannelPercentOverRange_Factory(OZChannelPercentOverRange_Factory *this)
{
  v3 = xmmword_2608483C0;
  v4 = xmmword_260848620;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243C88;
  *(this + 16) = &unk_287243D58;
}

void OZChannel2DOverRange_Factory::OZChannel2DOverRange_Factory(OZChannel2DOverRange_Factory *this)
{
  v3 = xmmword_260848410;
  v4 = xmmword_260848630;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243DB0;
  *(this + 16) = &unk_287243E80;
}

void OZChannelTransformSwitch_Factory::OZChannelTransformSwitch_Factory(OZChannelTransformSwitch_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_260848640;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287243ED8;
  *(this + 16) = &unk_287243FA8;
}

void OZChannelUint16_Factory::OZChannelUint16_Factory(OZChannelUint16_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848650;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244000;
  *(this + 16) = &unk_2872440D0;
}

void OZChannelUint16::OZChannelUint16(OZChannelUint16 *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_2872467D0;
  v9->var2 = &unk_287246B30;
  OZChannelUint16Info = OZChannelUint16::createOZChannelUint16Info(v9);
  if (a6)
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
  if (a5)
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

uint64_t OZChannelUint16::createOZChannelUint16Info(OZChannelUint16 *this)
{
  if (atomic_load_explicit(&OZChannelUint16::createOZChannelUint16Info(void)::_OZChannelUint16Info_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint16::createOZChannelUint16Info(void)::_OZChannelUint16Info_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint16::createOZChannelUint16Info(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint16::_OZChannelUint16Info;
}

uint64_t OZChannelUint16::createOZChannelUint16Impl(OZChannelUint16 *this)
{
  if (atomic_load_explicit(&OZChannelUint16::createOZChannelUint16Impl(void)::_OZChannelUint16Impl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelUint16::createOZChannelUint16Impl(void)::_OZChannelUint16Impl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint16::createOZChannelUint16Impl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelUint16::_OZChannelUint16Impl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint16::createOZChannelUint16Info(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelUint16::_OZChannelUint16Info)
  {
    operator new();
  }
}

void OZChannelUint16Info::OZChannelUint16Info(OZChannelUint16Info *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 65535.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287244128;
  *(this + 10) = &unk_287244148;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelUint16::createOZChannelUint16Impl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelUint16::_OZChannelUint16Impl)
  {
    operator new();
  }
}

void sub_25FE657C4(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelSeed_Factory::OZChannelSeed_Factory(OZChannelSeed_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848660;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244218;
  *(this + 16) = &unk_2872442E8;
}

void OZChannelSeed::OZChannelSeed(OZChannelSeed *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287247AE0;
  v9->var2 = &unk_287247E40;
  OZChannelSeedInfo = OZChannelSeed::createOZChannelSeedInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelSeed::_OZChannelSeedInfo;
    this->var17 = OZChannelSeed::_OZChannelSeedInfo;
  }

  this->var16 = var17;
  OZChannelSeed::createOZChannelSeedImpl(OZChannelSeedInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelSeed::_OZChannelSeedImpl;
    this->var15 = OZChannelSeed::_OZChannelSeedImpl;
  }

  this->var14 = var15;
}

void OZChannelDecibel_Factory::OZChannelDecibel_Factory(OZChannelDecibel_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848670;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244340;
  *(this + 16) = &unk_287244410;
}

void OZChannelDecibel::OZChannelDecibel(OZChannelDecibel *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287247EB0;
  v9->var2 = &unk_287248210;
  OZChannelDecibelInfo = OZChannelDecibel::createOZChannelDecibelInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelDecibel::_OZChannelDecibelInfo;
    this->var17 = OZChannelDecibel::_OZChannelDecibelInfo;
  }

  this->var16 = var17;
  OZChannelDecibel::createOZChannelDecibelImpl(OZChannelDecibelInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelDecibel::_OZChannelDecibelImpl;
    this->var15 = OZChannelDecibel::_OZChannelDecibelImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelDecibel::createOZChannelDecibelInfo(OZChannelDecibel *this)
{
  if (atomic_load_explicit(&OZChannelDecibel::createOZChannelDecibelInfo(void)::_OZChannelDecibelInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDecibel::createOZChannelDecibelInfo(void)::_OZChannelDecibelInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDecibel::createOZChannelDecibelInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDecibel::_OZChannelDecibelInfo;
}

uint64_t OZChannelDecibel::createOZChannelDecibelImpl(OZChannelDecibel *this)
{
  if (atomic_load_explicit(&OZChannelDecibel::createOZChannelDecibelImpl(void)::_OZChannelDecibelImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelDecibel::createOZChannelDecibelImpl(void)::_OZChannelDecibelImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDecibel::createOZChannelDecibelImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelDecibel::_OZChannelDecibelImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDecibel::createOZChannelDecibelInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelDecibel::_OZChannelDecibelInfo)
  {
    operator new();
  }
}

void OZChannelDecibelInfo::OZChannelDecibelInfo(OZChannelDecibelInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 4.0, 1.0, 0.1, 1.0, "dB");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287244468;
  *(this + 10) = &unk_287244488;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelDecibel::createOZChannelDecibelImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelDecibel::_OZChannelDecibelImpl)
  {
    operator new();
  }
}

void sub_25FE663E4(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelFrame_Factory::OZChannelFrame_Factory(OZChannelFrame_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848680;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244558;
  *(this + 16) = &unk_287244628;
}

void OZChannelFrame::OZChannelFrame(OZChannelFrame *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287248280;
  v9->var2 = &unk_2872485E0;
  OZChannelFrameInfo = OZChannelFrame::createOZChannelFrameInfo(v9);
  if (a6)
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
  if (a5)
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

uint64_t OZChannelFrame::createOZChannelFrameInfo(OZChannelFrame *this)
{
  if (atomic_load_explicit(&OZChannelFrame::createOZChannelFrameInfo(void)::_OZChannelFrameInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelFrame::createOZChannelFrameInfo(void)::_OZChannelFrameInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFrame::createOZChannelFrameInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelFrame::_OZChannelFrameInfo;
}

uint64_t OZChannelFrame::createOZChannelFrameImpl(OZChannelFrame *this)
{
  if (atomic_load_explicit(&OZChannelFrame::createOZChannelFrameImpl(void)::_OZChannelFrameImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelFrame::createOZChannelFrameImpl(void)::_OZChannelFrameImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFrame::createOZChannelFrameImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelFrame::_OZChannelFrameImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFrame::createOZChannelFrameInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelFrame::_OZChannelFrameInfo)
  {
    operator new();
  }
}

void OZChannelFrameInfo::OZChannelFrameInfo(OZChannelFrameInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_287244680;
  *(this + 10) = &unk_2872446A0;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFrame::createOZChannelFrameImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelFrame::_OZChannelFrameImpl)
  {
    operator new();
  }
}

void sub_25FE66B84(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void OZChannelTimecode_Factory::OZChannelTimecode_Factory(OZChannelTimecode_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848690;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244770;
  *(this + 16) = &unk_287244840;
}

void OZChannelTimecode::OZChannelTimecode(OZChannelTimecode *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannel::OZChannel(this, a2, a3, 0, a4, 0, a5, a6);
  v9->var0 = &unk_287248650;
  v9->var2 = &unk_2872489B0;
  OZChannelTimecodeInfo = OZChannelTimecode::createOZChannelTimecodeInfo(v9);
  if (a6)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelTimecode::_OZChannelTimecodeInfo;
    this->var17 = OZChannelTimecode::_OZChannelTimecodeInfo;
  }

  this->var16 = var17;
  OZChannelTimecode::createOZChannelTimecodeImpl(OZChannelTimecodeInfo);
  if (a5)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelTimecode::_OZChannelTimecodeImpl;
    this->var15 = OZChannelTimecode::_OZChannelTimecodeImpl;
  }

  this->var14 = var15;
}

void OZChannelBlindData_Factory::OZChannelBlindData_Factory(OZChannelBlindData_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608486A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244898;
  *(this + 16) = &unk_287244968;
}

void OZChannelCurve_Factory::OZChannelCurve_Factory(OZChannelCurve_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608486B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872449C0;
  *(this + 16) = &unk_287244A90;
}

void OZChannelEnum_Factory::OZChannelEnum_Factory(OZChannelEnum_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848500;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244AE8;
  *(this + 16) = &unk_287244BB8;
}

void OZChannelGradientWithAngle_Factory::OZChannelGradientWithAngle_Factory(OZChannelGradientWithAngle_Factory *this)
{
  v3 = xmmword_260848580;
  v4 = xmmword_2608486C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244C10;
  *(this + 16) = &unk_287244CE0;
}

void OZChannelHistogramSample_Factory::OZChannelHistogramSample_Factory(OZChannelHistogramSample_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2608486D0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244D38;
  *(this + 16) = &unk_287244E08;
}

void OZChannelProgress_Factory::OZChannelProgress_Factory(OZChannelProgress_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_2608486E0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244E60;
  *(this + 16) = &unk_287244F30;
}

void OZChannelScaleOverLife_Factory::OZChannelScaleOverLife_Factory(OZChannelScaleOverLife_Factory *this)
{
  v3 = xmmword_2608486B0;
  v4 = xmmword_2608486F0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_287244F88;
  *(this + 16) = &unk_287245058;
}

void OZChannelVertexFolder_Factory::OZChannelVertexFolder_Factory(OZChannelVertexFolder_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_260848700;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872450B0;
  *(this + 16) = &unk_287245180;
}

void OZChanObjectRef_Factory::OZChanObjectRef_Factory(OZChanObjectRef_Factory *this)
{
  v3 = xmmword_260848370;
  v4 = xmmword_260848710;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872451D8;
  *(this + 16) = &unk_2872452A8;
}

uint64_t std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__emplace_unique_key_args<PCUUID,std::piecewise_construct_t const&,std::tuple<PCUUID const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__find_equal<PCUUID>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__find_equal<PCUUID>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    while (1)
    {
      v10 = v4;
      v11 = *(v4 + 8);
      if (v6 != v11)
      {
        break;
      }

      v12 = *(v10 + 9);
      if (v7 == v12)
      {
        v13 = *(v10 + 10);
        v14 = v8 >= v13;
        if (v8 == v13)
        {
          v14 = v9 >= *(v10 + 11);
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = *(v10 + 10);
        v16 = v15 >= v8;
        if (v15 != v8)
        {
          goto LABEL_14;
        }

        if (*(v10 + 11) >= v9)
        {
          goto LABEL_23;
        }

LABEL_15:
        result = v10 + 1;
        v4 = v10[1];
        if (!v4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= v12)
        {
          if (v12 >= v7)
          {
            goto LABEL_23;
          }

          goto LABEL_15;
        }

LABEL_18:
        v4 = *v10;
        result = v10;
        if (!*v10)
        {
          goto LABEL_23;
        }
      }
    }

    if (v6 >= v11)
    {
      v16 = v11 >= v6;
LABEL_14:
      if (v16)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v10 = result;
LABEL_23:
  *a2 = v10;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

_DWORD *std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::find<PCUUID>(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__lower_bound<PCUUID>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = result[8];
  v6 = *a2 >= v5;
  if (*a2 == v5)
  {
    v7 = a2[1];
    v8 = result[9];
    v6 = v7 >= v8;
    if (v7 == v8)
    {
      v9 = a2[2];
      v10 = result[10];
      v6 = v9 >= v10;
      if (v9 == v10)
      {
        v6 = a2[3] >= result[11];
      }
    }
  }

  if (!v6)
  {
    return v3;
  }

  return result;
}

_DWORD *std::__tree<std::__value_type<PCUUID,OZFactory *>,std::__map_value_compare<PCUUID,std::__value_type<PCUUID,OZFactory *>,std::less<PCUUID>,true>,std::allocator<std::__value_type<PCUUID,OZFactory *>>>::__lower_bound<PCUUID>(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    do
    {
      v8 = a3[8];
      v9 = v8 >= v5;
      if (v8 == v5)
      {
        v10 = a3[9];
        v9 = v10 >= v6;
        if (v10 == v6)
        {
          v11 = a3[10];
          v9 = v11 >= v7;
          if (v11 == v7)
          {
            v9 = a3[11] >= a2[3];
          }
        }
      }

      v12 = !v9;
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        result = a3;
      }

      a3 = *&a3[v14];
    }

    while (a3);
  }

  return result;
}

void sub_25FE690A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t OZFactory::OZFactory(uint64_t a1, _OWORD *a2, _OWORD *a3, int a4)
{
  *a1 = &unk_287245300;
  *(a1 + 8) = *a2;
  *(a1 + 24) = *a3;
  *(a1 + 48) = 0;
  PCMutex::PCMutex((a1 + 56));
  *(a1 + 40) = a4;
  return a1;
}

uint64_t anonymous namespace::getThreadSpecificForFactory(_anonymous_namespace_ *this, const OZFactory *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v3 + 1;
  do
  {
    v6 = v4[4];
    v7 = v6 >= this;
    v8 = v6 < this;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == v3 + 1 || v5[4] > this)
  {
LABEL_11:
    operator new();
  }

  return v5[5];
}

_BYTE *OZFactory::setNeedsSaving(OZFactory *this, const OZFactory *a2)
{
  v2 = a2;
  *result = v2;
  return result;
}

uint64_t OZFactory::setFileRefID(OZFactory *this, const OZFactory *a2)
{
  v2 = a2;
  *(result + 4) = v2;
  return result;
}

unint64_t OZFactory::getSuperFactory(OZFactory *this)
{
  v1 = (this + 48);
  if (!atomic_load(this + 6))
  {
    v8 = (this + 56);
    v5 = PCMutex::lock((this + 56));
    if (!atomic_load(v1))
    {
      Instance = OZFactories::getInstance(v5);
      atomic_store(OZFactories::findFactory(Instance, this + 6), this + 6);
    }

    if (v8)
    {
      PCMutex::unlock(v8);
    }
  }

  return atomic_load(v1);
}

unint64_t OZFactory::isKindOfClass(unint64_t result, int32x4_t *a2)
{
  if (result)
  {
    while (1)
    {
      v3 = *(result + 8);
      if (!*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
      {
        return 0;
      }

      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v3, *a2)))) & 1) == 0)
      {
        break;
      }

      result = OZFactory::getSuperFactory(result);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

void OZFactory::getIconName(OZFactory *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (this)
  {
    SuperFactory = this;
    while (1)
    {
      (*(*SuperFactory + 136))(&v5, SuperFactory);
      v4 = PCString::empty(&v5);
      PCString::~PCString(&v5);
      if (!v4)
      {
        break;
      }

      SuperFactory = OZFactory::getSuperFactory(SuperFactory);
      if (!SuperFactory)
      {
        goto LABEL_5;
      }
    }

    (*(*SuperFactory + 136))(SuperFactory);
  }

  else
  {
LABEL_5:
    PCSharedCount::PCSharedCount(a2);
  }
}

void OZFactory::getIconNameBW(OZFactory *this@<X0>, PCSharedCount *a2@<X8>)
{
  if (this)
  {
    SuperFactory = this;
    while (1)
    {
      (*(*SuperFactory + 144))(&v5, SuperFactory);
      v4 = PCString::empty(&v5);
      PCString::~PCString(&v5);
      if (!v4)
      {
        break;
      }

      SuperFactory = OZFactory::getSuperFactory(SuperFactory);
      if (!SuperFactory)
      {
        goto LABEL_5;
      }
    }

    (*(*SuperFactory + 144))(SuperFactory);
  }

  else
  {
LABEL_5:
    PCSharedCount::PCSharedCount(a2);
  }
}

uint64_t OZFactory::getIconID(OZFactory *this)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  SuperFactory = this;
  while ((*(*SuperFactory + 152))(SuperFactory) == -1)
  {
    SuperFactory = OZFactory::getSuperFactory(SuperFactory);
    if (!SuperFactory)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v3 = *(*SuperFactory + 152);

  return v3(SuperFactory);
}

uint64_t anonymous namespace::freeThreadSpecific(_anonymous_namespace_ **this, void *a2)
{
  v3 = this + 1;
  v4 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v5 = *(v4 + 5);
      if (v5)
      {
        MEMORY[0x2666E9F00](v5, 0x1000C404A09149ALL);
      }

      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  MEMORY[0x2666E9F00](this, 0x1020C4062D53EE8);

  return pthread_setspecific(v9, 0);
}

void OZFactory::getLibraryIconName(OZFactory *this@<X0>, PCURL *a2@<X8>)
{
  if (this)
  {
    SuperFactory = this;
    while (1)
    {
      (*(*SuperFactory + 160))(&v9, SuperFactory);
      v4 = PCString::empty(&v9);
      PCString::~PCString(&v9);
      if (!v4)
      {
        break;
      }

      SuperFactory = OZFactory::getSuperFactory(SuperFactory);
      if (!SuperFactory)
      {
        goto LABEL_5;
      }
    }

    v5 = (*(*SuperFactory + 128))(SuperFactory);
    PCString::PCString(&v9, v5);
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:PCString::ns_str(&v9)];
    (*(*SuperFactory + 160))(&v8, SuperFactory);
    v7 = [v6 pathForResource:PCString::ns_str(&v8) ofType:@"icns"];
    PCString::~PCString(&v8);
    PCURL::PCURL(a2, v7);
    PCString::~PCString(&v9);
  }

  else
  {
LABEL_5:
    PCSharedCount::PCSharedCount(a2);
  }
}

uint64_t OZChanObjectRef::createOZChanObjectRefInfo(OZChanObjectRef *this)
{
  if (atomic_load_explicit(&OZChanObjectRef::createOZChanObjectRefInfo(void)::_OZChanObjectRefInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChanObjectRef::createOZChanObjectRefInfo(void)::_OZChanObjectRefInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRef::createOZChanObjectRefInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChanObjectRef::_OZChanObjectRefInfo;
}

uint64_t OZChanObjectRef::createOZChanObjectRefImpl(OZChanObjectRef *this, double a2)
{
  v3 = a2;
  if (atomic_load_explicit(&OZChanObjectRef::createOZChanObjectRefImpl(double)::_OZChanObjectRefImpl_once, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&OZChanObjectRef::createOZChanObjectRefImpl(double)::_OZChanObjectRefImpl_once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRef::createOZChanObjectRefImpl(double)::{lambda(void)#1} &&>>);
  }

  return OZChanObjectRef::_OZChanObjectRefImpl;
}

void OZChanObjectRef::OZChanObjectRef(OZChanObjectRef *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannel::OZChannel(this, a2, a3, a4, a5, a6, 0, 0);
  *v7 = &unk_2872453C8;
  *(v7 + 2) = &unk_287245738;
  OZChanObjectRefInfo = OZChanObjectRef::createOZChanObjectRefInfo(v7);
  v9 = OZChanObjectRef::_OZChanObjectRefInfo;
  *(this + 16) = OZChanObjectRef::_OZChanObjectRefInfo;
  *(this + 17) = v9;
  OZChanObjectRef::createOZChanObjectRefImpl(OZChanObjectRefInfo, 0.0);
  v10 = OZChanObjectRef::_OZChanObjectRefImpl;
  *(this + 14) = OZChanObjectRef::_OZChanObjectRefImpl;
  *(this + 15) = v10;
  *(this + 7) |= 0x1000010000uLL;
}

void OZChanObjectRef::OZChanObjectRef(OZChanObjectRef *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannel::OZChannel(this, a2, a3, a4, 0, 0);
  *v5 = &unk_2872453C8;
  *(v5 + 2) = &unk_287245738;
  OZChanObjectRefInfo = OZChanObjectRef::createOZChanObjectRefInfo(v5);
  v7 = OZChanObjectRef::_OZChanObjectRefInfo;
  *(this + 16) = OZChanObjectRef::_OZChanObjectRefInfo;
  *(this + 17) = v7;
  OZChanObjectRef::createOZChanObjectRefImpl(OZChanObjectRefInfo, 0.0);
  v8 = OZChanObjectRef::_OZChanObjectRefImpl;
  *(this + 14) = OZChanObjectRef::_OZChanObjectRefImpl;
  *(this + 15) = v8;
  *(this + 7) |= 0x1000010000uLL;
}

void OZChanObjectRef::OZChanObjectRef(OZChanObjectRef *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannel::OZChannel(this, a2, a3);
  *v3 = &unk_2872453C8;
  v3[2] = &unk_287245738;
}

void non-virtual thunk toOZChanObjectRef::~OZChanObjectRef(OZChanObjectRef *this)
{
  OZChannel::~OZChannel((this - 16));
}

{
  OZChannel::~OZChannel((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZChanObjectRef::~OZChanObjectRef(OZChannel *this)
{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRef::createOZChanObjectRefInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChanObjectRef::_OZChanObjectRefInfo)
  {
    operator new();
  }
}

void OZChanObjectRefInfo::OZChanObjectRefInfo(OZChanObjectRefInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 4294967300.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2872457A8;
  *(this + 10) = &unk_2872457C8;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChanObjectRef::createOZChanObjectRefImpl(double)::{lambda(void)#1} &&>>()
{
  if (!OZChanObjectRef::_OZChanObjectRefImpl)
  {
    operator new();
  }
}

uint64_t OZCoreGlobals::getInstance(OZCoreGlobals *this)
{
  if (OZCoreGlobals::getInstance(void)::once != -1)
  {
    OZCoreGlobals::getInstance();
  }

  return OZCoreGlobals::_instance;
}

void OZCoreGlobals::~OZCoreGlobals(OZCoreGlobals *this)
{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannel::OZChannel(OZChannel *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelBase::OZChannelBase(this, a2, a3, a4, a5, a6);
  *v10 = &unk_287245878;
  v10[2] = &unk_287245BD8;
  v10[16] = a8;
  v10[17] = a8;
  v10[14] = a7;
  v10[15] = a7;
  v10[18] = 0;
}

void OZChannel::OZChannel(OZChannel *this, OZFactory *a2, const PCString *a3, unsigned int a4, OZChannelImpl *a5, OZChannelInfo *a6)
{
  OZChannelBase::OZChannelBase(this, a2, a3, a4);
  *v8 = &unk_287245878;
  v8[2] = &unk_287245BD8;
  v8[16] = a6;
  v8[17] = a6;
  v8[14] = a5;
  v8[15] = a5;
  v8[18] = 0;
}

void OZChannel::OZChannel(OZChannel *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelBase::OZChannelBase(this, a2, a3);
  *v5 = &unk_287245878;
  v5[2] = &unk_287245BD8;
  v5[14] = 0;
  v5[15] = 0;
  var0 = a2[1].var0;
  if (var0 && (*(var0 + 32) & 1) == 0)
  {
    operator new();
  }

  var1 = a2[1].var1;
  this->var14 = var0;
  this->var15 = var1;
  this->var16 = 0;
  this->var17 = 0;
  var2 = a2[1].var2;
  if ((*(var2 + 72) & 1) == 0)
  {
    operator new();
  }

  v10 = *&a2[1].var3;
  v9 = a2[1].var4.var0;
  this->var16 = var2;
  this->var17 = v10;
  if (v9)
  {
    v9 = (*(*v9 + 1224))(v9);
  }

  this->var18 = v9;
}

void sub_25FE6A630(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A1C407F0BD61ELL);
  OZChannelBase::~OZChannelBase(v1);
  _Unwind_Resume(a1);
}

void OZChannel::~OZChannel(OZChannel *this)
{
  this->var0 = &unk_287245878;
  this->var2 = &unk_287245BD8;
  var14 = this->var14;
  if (var14 && (*(var14 + 32) & 1) == 0)
  {
    (*(*var14 + 8))(var14);
    this->var14 = 0;
  }

  var16 = this->var16;
  if (var16 && (*(var16 + 72) & 1) == 0)
  {
    (*(*var16 + 8))(var16);
    this->var16 = 0;
  }

  this->var15 = 0;
  this->var17 = 0;
  var18 = this->var18;
  if (var18)
  {
    (*(*var18 + 8))(var18);
  }

  this->var18 = 0;

  OZChannelBase::~OZChannelBase(this);
}

{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannel::~OZChannel(OZChannel *this)
{
  OZChannel::~OZChannel((this - 16));
}

{
  OZChannel::~OZChannel((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZChannel::resetLocalChannelImplementation(OZChannel *this)
{
  result = this->var14;
  if ((*(result + 32) & 1) == 0)
  {
    result = OZChannelImpl::shouldKeepLocalCopy(result);
    if ((result & 1) == 0)
    {
      result = OZChannelImpl::operator==(this->var14, this->var15);
      if (result)
      {
        var14 = this->var14;
        this->var14 = this->var15;
        if (var14)
        {
          (*(*var14 + 8))(var14);
        }

        return OZChannel::installPrototypeCurveInterface(this);
      }
    }
  }

  return result;
}

OZChannel *OZChannel::installPrototypeCurveInterface(OZChannel *this)
{
  if (this->var18)
  {
    v1 = this;
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v3 = *(var14 + 1);
    if (v3)
    {
      (*(*v3 + 8))(*(var14 + 1));
      var14 = v1->var14;
    }

    *(var14 + 1) = 0;
    this = (*(*v1->var18 + 1224))(v1->var18);
    *(v1->var14 + 1) = this;
    this[1].var0 = &v1->var0;
  }

  return this;
}

void OZChannel::copy(OZChannel *this, const OZChannelBase *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
  }

  OZChannelBase::copy(this, a2);
  if (a2)
  {
    if (v5)
    {
      v6 = v5;
      v7 = v5[16];
      var16 = this->var16;
      if (*(v7 + 72))
      {
        if (var16 && (*(var16 + 72) & 1) == 0)
        {
          (*(*var16 + 8))(var16);
          this->var16 = 0;
          v7 = v6[16];
        }

        this->var16 = v7;
      }

      else
      {
        if (!var16 || (*(var16 + 72) & 1) != 0)
        {
          operator new();
        }

        OZChannelInfo::operator=(var16, v7);
      }

      var14 = this->var14;
      v10 = v6[14];
      if (var14)
      {
        if (v10)
        {
          if ((*(v10 + 32) & 1) == 0 || (shouldKeepLocalCopy = OZChannelImpl::shouldKeepLocalCopy(var14), var14 = this->var14, shouldKeepLocalCopy))
          {
            if (*(var14 + 32) == 1)
            {
              operator new();
            }

            v12 = v6[14];

            OZChannelImpl::operator=(var14, v12);
            return;
          }

          if ((*(var14 + 32) & 1) == 0)
          {
            (*(*var14 + 8))(var14);
            this->var14 = 0;
          }

          v10 = v6[14];
LABEL_32:
          this->var14 = v10;
          return;
        }

        if ((*(var14 + 32) & 1) == 0)
        {
          (*(*var14 + 8))(var14);
          this->var14 = 0;
        }
      }

      else if (v10)
      {
        if ((*(v10 + 32) & 1) == 0)
        {
          operator new();
        }

        goto LABEL_32;
      }

      this->var14 = 0;
    }
  }
}

uint64_t OZChannel::compare(OZChannel *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  var14 = this->var14;
  if (!var14)
  {
    return 0;
  }

  v6 = v4[14];
  if (!v6)
  {
    return 0;
  }

  return OZChannelImpl::operator==(var14, v6);
}

void OZChannel::assign(OZChannel *this, const OZChannelBase *a2)
{
  if (!(*(this->var0 + 33))(this))
  {
    return;
  }

  (*(this->var0 + 58))(this, 1);
  OZChannelBase::assign(this, a2);
  if (!a2)
  {
    return;
  }

  if (!v4)
  {
    return;
  }

  v6 = v4;
  var14 = this->var14;
  v8 = *(v6 + 14);
  if (!var14)
  {
    if (v8)
    {
      if ((*(v8 + 32) & 1) == 0)
      {
        operator new();
      }

      this->var14 = v8;
      goto LABEL_22;
    }

LABEL_16:
    this->var14 = 0;
    return;
  }

  if (!v8)
  {
    if ((*(var14 + 32) & 1) == 0)
    {
      (*(*var14 + 8))(var14);
      this->var14 = 0;
    }

    goto LABEL_16;
  }

  if ((*(v8 + 32) & 1) == 0 || (shouldKeepLocalCopy = OZChannelImpl::shouldKeepLocalCopy(var14), var14 = this->var14, shouldKeepLocalCopy))
  {
    if (*(var14 + 32) == 1)
    {
      operator new();
    }

    OZChannelImpl::operator=(var14, *(v6 + 14));
    v8 = this->var14;
    if (!v8)
    {
      return;
    }

LABEL_22:
    v10 = *(this->var16 + 5);
    v11 = *(*(v6 + 16) + 40);
    if (vabdd_f64(v10, v11) >= 0.0000001)
    {
      if (*(v8 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(v8);
      }

      v5.n128_f64[0] = v11 / v10;
      v12 = *(**(v8 + 1) + 448);

      v12(v5);
    }

    return;
  }

  if ((*(var14 + 32) & 1) == 0)
  {
    (*(*var14 + 8))(var14);
    this->var14 = 0;
  }

  v8 = *(v6 + 14);
  this->var14 = v8;
  if (v8)
  {
    goto LABEL_22;
  }
}

uint64_t OZChannel::allowsAssignment(OZChannel *this, const OZChannelBase *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    result = OZChannelBase::allowsAssignment(this, lpsrc);
    if (result)
    {
      if (!(*(lpsrc->var0 + 69))(lpsrc, 0) || (result = (*(this->var0 + 64))(this), result))
      {
        v7 = 0.0;
        (*(**(this->var14 + 1) + 264))(*(this->var14 + 1), &v7);
        v5 = v7;
        result = 0;
        if (v7 <= -3.40282347e38 || (v7 = 0.0, (*(**(this->var14 + 1) + 248))(*(this->var14 + 1), &v7, 0), v7 >= v5))
        {
          v7 = 0.0;
          (*(**(this->var14 + 1) + 256))(*(this->var14 + 1), &v7);
          v6 = v7;
          if (v7 >= 3.40282347e38)
          {
            return 1;
          }

          v7 = 0.0;
          (*(**(this->var14 + 1) + 248))(*(this->var14 + 1), &v7, 0);
          if (v7 <= v6)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZChannel::lock(OZChannel *this, int a2)
{
  (*(this->var0 + 58))(this, 2);
  result = OZChannelBase::lock(this, a2);
  if ((a2 & 1) == 0)
  {
    result = (*(this->var0 + 69))(this, 0);
    if (result)
    {
      v5 = *(**(this->var14 + 1) + 96);

      return v5();
    }
  }

  return result;
}

OZChannelBase *OZChannel::willBeModified(OZChannel *this, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 1) != 0 && (!(*(this->var0 + 64))(this) || ((*(this->var0 + 61))(this) & 1) == 0))
  {
    v2 = 2;
  }

  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6))
  {
    OZChannelBase::willBeModified(this->var6, v2);
  }

  return OZChannelBase::willBeModified(this, v2);
}

OZChannelBase *OZChannel::parentWillBeModified(OZChannel *this, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 1) != 0 && (!(*(this->var0 + 64))(this) || ((*(this->var0 + 61))(this) & 1) == 0))
  {
    v2 = 2;
  }

  return OZChannelBase::willBeModified(this, v2);
}

uint64_t OZChannel::resetToDefault(OZChannel *this, char a2)
{
  result = this->var6;
  if (result && (result = (*(*result + 120))(result), result) && (result = OZChannelFolder::testFoldFlag(this->var6, 0x100000), result))
  {
    var6 = this->var6;
    if (var6)
    {
    }

    v6 = *(*var6 + 776);

    return v6(var6, this, 0);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      result = (*(this->var0 + 58))(this, 1);
    }

    var14 = this->var14;
    if ((*(var14 + 32) & 1) == 0)
    {
      v8 = *(var14 + 2);
      if (v8)
      {
        MEMORY[0x2666E9F00](v8, 0x1000C4021716A34);
        var14 = this->var14;
        *(var14 + 2) = 0;
      }

      (*(**(var14 + 1) + 184))(*(var14 + 1));

      return OZChannel::resetLocalChannelImplementation(this);
    }
  }

  return result;
}

uint64_t OZChannel::writeHeader(OZChannel *this, OZFactory *a2, int a3)
{
  if (OZChannelBase::testFlag(this, 128))
  {
    result = (*(*a2 + 232))(a2);
    if (result)
    {
      return result;
    }
  }

  if (a3)
  {

    return OZChannelBase::writeHeader(this, a2, 1);
  }

  v13 = 0;
  v11 = 0.0;
  v12 = 0.0;
  (*(**(this->var14 + 1) + 152))(*(this->var14 + 1), &v13);
  if (v13 && (v13 != 1 || (*(**(this->var14 + 1) + 512))(*(this->var14 + 1))))
  {
    return OZChannelBase::writeHeader(this, a2, 0);
  }

  var14 = this->var14;
  v8 = *(var14 + 2);
  if (v8)
  {
    v9 = *v8;
    time1.epoch = *(v8 + 2);
    *&time1.value = v9;
    v10 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2))
    {
      return OZChannelBase::writeHeader(this, a2, 0);
    }

    time1 = *(*(this->var14 + 2) + 24);
    time2 = *v10;
    if (CMTimeCompare(&time1, &time2))
    {
      return OZChannelBase::writeHeader(this, a2, 0);
    }

    var14 = this->var14;
  }

  (*(**(var14 + 1) + 208))(*(var14 + 1), &v12);
  (*(**(this->var14 + 1) + 192))(*(this->var14 + 1), &v11);
  PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
  (*(*a2 + 16))(a2, 110);
  (*(*a2 + 216))(a2, 110, &this->var4);
  (*(*a2 + 144))(a2, 111, this->var3);
  OZChannelBase::writeFlags(this, a2, 0);
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    (*(*a2 + 184))(a2, 115, v11);
  }

  (*(*a2 + 184))(a2, 114, v12);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannel::writeBody(OZChannel *this, PCSerializerWriteStream *a2, int a3)
{
  if (!OZChannelBase::testFlag(this, 128) || (result = (*(*a2 + 232))(a2), (result & 1) == 0))
  {
    PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
    OZChannelBase::writeBody(this, a2, a3);
    var14 = this->var14;
    v8 = *(var14 + 2);
    v9 = MEMORY[0x277CC08F0];
    if (v8)
    {
      v10 = *v8;
      time1.epoch = *(v8 + 2);
      *&time1.value = v10;
      time2 = **&MEMORY[0x277CC08F0];
      v11 = CMTimeCompare(&time1, &time2);
      var14 = this->var14;
      if (v11)
      {
        v12 = *(var14 + 2);
        v13 = *v12;
        time1.epoch = *(v12 + 2);
        *&time1.value = v13;
        (*(*a2 + 16))(a2, 119);
        (*(*a2 + 112))(a2, &time1);
        (*(*a2 + 24))(a2);
        var14 = this->var14;
      }
    }

    v14 = *(var14 + 2);
    if (v14)
    {
      time1 = v14[1];
      time2 = *v9;
      v15 = CMTimeCompare(&time1, &time2);
      var14 = this->var14;
      if (v15)
      {
        time1 = *(*(var14 + 2) + 24);
        (*(*a2 + 16))(a2, 120);
        (*(*a2 + 112))(a2, &time1);
        (*(*a2 + 24))(a2);
        var14 = this->var14;
      }
    }

    v16 = *(var14 + 2);
    if (v16)
    {
      v17 = *(v16 + 48);
      if (!v17 || ((*(*a2 + 16))(a2, 130), (*(*a2 + 56))(a2, v17), (*(*a2 + 24))(a2), var14 = this->var14, (v16 = *(var14 + 2)) != 0))
      {
        v18 = *(v16 + 52);
        if (v18)
        {
          (*(*a2 + 16))(a2, 131);
          (*(*a2 + 56))(a2, v18);
          (*(*a2 + 24))(a2);
          var14 = this->var14;
        }
      }
    }

    v22 = 0;
    (*(**(var14 + 1) + 152))(*(var14 + 1), &v22);
    if ((a3 & 1) != 0 || (*(**(this->var14 + 1) + 512))(*(this->var14 + 1)) || (v20 = *(this->var14 + 2)) != 0 && ((v21 = *v20, time1.epoch = *(v20 + 2), *&time1.value = v21, time2 = *v9, CMTimeCompare(&time1, &time2)) || (time1 = *(*(this->var14 + 2) + 24), time2 = *v9, CMTimeCompare(&time1, &time2))))
    {
      v19 = *(this->var14 + 1);
      (*(*v19 + 16))(v19, a2, 0);
      (*(*v19 + 24))(v19, a2, 0, 1, 1);
      (*(*a2 + 24))(a2);
    }

    return PCSerializerWriteStream::popScope(a2);
  }

  return result;
}

uint64_t OZChannel::parseBegin(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelScope);
  (*(**(this->var14 + 1) + 40))(*(this->var14 + 1), a2);
  var14 = this->var14;
  if ((*(var14 + 32) & 1) == 0)
  {
    v5 = *(var14 + 2);
    if (v5)
    {
      MEMORY[0x2666E9F00](v5, 0x1000C4021716A34);
      *(this->var14 + 2) = 0;
    }
  }

  return 1;
}

uint64_t OZChannel::parseEnd(OZChannel *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseEnd(this, a2);
  (*(**(this->var14 + 1) + 48))(*(this->var14 + 1), a2);
  OZChannel::resetLocalChannelImplementation(this);
  return 1;
}

uint64_t OZChannel::parseElement(OZChannel *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZChannelBase::parseElement(this, a2, a3);
  v11 = 0;
  v6 = *(a3 + 2);
  if (v6 <= 119)
  {
    if (v6 == 118)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      PCSerializerReadStream::pushHandler(a2, *(var14 + 1));
      (*(**(this->var14 + 1) + 56))(*(this->var14 + 1), a2, a3);
    }

    else if (v6 == 119)
    {
      (*(*a3 + 88))(a3, &v12);
      OZChannel::setFadeInOffset(this, &v12, 0);
    }
  }

  else
  {
    switch(v6)
    {
      case 120:
        (*(*a3 + 88))(a3, &v12);
        OZChannel::setFadeOutOffset(this, &v12, 0);
        break;
      case 130:
        (*(*a3 + 32))(a3, &v11);
        v8 = v11;
        if (v11 >= 4)
        {
          v8 = 0;
          v11 = 0;
        }

        OZChannel::setFadeInCurve(this, v8);
        break;
      case 131:
        (*(*a3 + 32))(a3, &v11);
        v7 = v11;
        if (v11 >= 4)
        {
          v7 = 0;
          v11 = 0;
        }

        OZChannel::setFadeOutCurve(this, v7);
        break;
    }
  }

  return 1;
}

__n128 OZChannel::setFadeInOffset(OZChannel *this, const CMTime *a2, int a3)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    v7 = MEMORY[0x277CC08F0];
    if (*(this->var14 + 2))
    {
      goto LABEL_9;
    }

    time1 = *a2;
    time2 = **&MEMORY[0x277CC08F0];
    v8 = CMTimeCompare(&time1, &time2);
    var14 = this->var14;
    if (v8 >= 1)
    {
      if (var14)
      {
        if (*(var14 + 32) == 1)
        {
          OZChannelImpl::createLocalCopy(var14);
        }
      }

      operator new();
    }

    if (*(var14 + 2))
    {
LABEL_9:
      v21 = *a2;
      (*(this->var0 + 58))(this, 1);
      time1 = v21;
      time2 = *v7;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v21 = *v7;
      }

      AncestorRootBase = OZChannelBase::getAncestorRootBase(this);
      if (AncestorRootBase)
      {
        if (a3)
        {
          v11 = AncestorRootBase;
          (*(AncestorRootBase->var0 + 90))(&time1);
          memset(&v18, 0, sizeof(v18));
          (*(v11->var0 + 110))(&v18, v11);
          memset(&v17, 0, sizeof(v17));
          time2 = time1;
          v23 = v20;
          PC_CMTimeSaferAdd(&time2, &v23, &v22);
          time2 = v22;
          v23 = v18;
          PC_CMTimeSaferSubtract(&time2, &v23, &v17);
          v22 = time1;
          time2 = v21;
          v23 = time1;
          PC_CMTimeSaferAdd(&time2, &v23, &v16);
          v12 = *(this->var14 + 2);
          time2 = v17;
          v23 = v12[1];
          PC_CMTimeSaferSubtract(&time2, &v23, &v15);
          time2 = v16;
          v23 = v15;
          if (CMTimeCompare(&time2, &v23) >= 1)
          {
            v13 = *(this->var14 + 2);
            time2 = v17;
            v23 = v13[1];
            PC_CMTimeSaferSubtract(&time2, &v23, &v16);
            time2 = v16;
            v23 = v22;
            PC_CMTimeSaferSubtract(&time2, &v23, &v21);
          }
        }
      }

      v14 = *(this->var14 + 2);
      result = *&v21.value;
      v14[1].n128_u64[0] = v21.epoch;
      *v14 = result;
    }
  }

  return result;
}

double OZChannel::setFadeOutOffset(OZChannel *this, const CMTime *a2, int a3)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    v7 = MEMORY[0x277CC08F0];
    if (*(this->var14 + 2))
    {
      goto LABEL_9;
    }

    time1 = *a2;
    time2 = **&MEMORY[0x277CC08F0];
    v8 = CMTimeCompare(&time1, &time2);
    var14 = this->var14;
    if (v8 >= 1)
    {
      if (var14)
      {
        if (*(var14 + 32) == 1)
        {
          OZChannelImpl::createLocalCopy(var14);
        }
      }

      operator new();
    }

    if (*(var14 + 2))
    {
LABEL_9:
      v22 = *a2;
      (*(this->var0 + 58))(this, 1);
      time1 = v22;
      time2 = *v7;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v22 = *v7;
      }

      AncestorRootBase = OZChannelBase::getAncestorRootBase(this);
      if (AncestorRootBase && a3)
      {
        v11 = AncestorRootBase;
        (*(AncestorRootBase->var0 + 90))(&time1);
        memset(&v19, 0, sizeof(v19));
        (*(v11->var0 + 110))(&v19, v11);
        memset(&v18, 0, sizeof(v18));
        time2 = time1;
        v24 = v21;
        PC_CMTimeSaferAdd(&time2, &v24, &v23);
        time2 = v23;
        v24 = v19;
        PC_CMTimeSaferSubtract(&time2, &v24, &v18);
        v23 = time1;
        time2 = v18;
        v24 = v22;
        PC_CMTimeSaferSubtract(&time2, &v24, &v17);
        time2 = v17;
        v24 = v23;
        if (CMTimeCompare(&time2, &v24) < 0)
        {
          time2 = v18;
          v24 = v23;
          PC_CMTimeSaferSubtract(&time2, &v24, &v22);
        }

        time2 = v18;
        v24 = v22;
        PC_CMTimeSaferSubtract(&time2, &v24, &v17);
        v12 = *(this->var14 + 2);
        v13 = *v12;
        time2.epoch = *(v12 + 2);
        *&time2.value = v13;
        v24 = v23;
        PC_CMTimeSaferAdd(&time2, &v24, &v16);
        time2 = v17;
        v24 = v16;
        if (CMTimeCompare(&time2, &v24) < 0)
        {
          v14 = *(this->var14 + 2);
          v15 = *v14;
          time2.epoch = *(v14 + 2);
          *&time2.value = v15;
          v24 = v23;
          PC_CMTimeSaferAdd(&time2, &v24, &v16);
          time2 = v18;
          v24 = v16;
          PC_CMTimeSaferSubtract(&time2, &v24, &v17);
          v22 = v17;
        }
      }

      result = *&v22.value;
      *(*(this->var14 + 2) + 24) = v22;
    }
  }

  return result;
}

uint64_t OZChannel::setFadeInCurve(OZChannel *this, int a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    result = this->var14;
    v5 = *(result + 16);
    if (a2 && !v5)
    {
      if (*(result + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(result);
      }

      operator new();
    }

    if (v5)
    {
      result = (*(this->var0 + 58))(this, 1);
      *(*(this->var14 + 2) + 48) = a2;
    }
  }

  return result;
}

uint64_t OZChannel::setFadeOutCurve(OZChannel *this, int a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    result = this->var14;
    v5 = *(result + 16);
    if (a2 && !v5)
    {
      if (*(result + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(result);
      }

      operator new();
    }

    if (v5)
    {
      result = (*(this->var0 + 58))(this, 1);
      *(*(this->var14 + 2) + 52) = a2;
    }
  }

  return result;
}

uint64_t OZChannel::calcHashForState(OZChannel *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  result = OZChannelBase::testFlag(this, 128);
  if ((result & 1) == 0)
  {
    OZChannelBase::calcHashForState(this, a2, a3);
    PCSerializerWriteStream::pushScope(a2, &OZChannelScope);
    OZChannel::getValueAsDouble(this, a3, 0.0);
    v8 = v7;
    (*(*a2 + 16))(a2, 110);
    (*(*a2 + 88))(a2, v8);
    (*(*a2 + 24))(a2);
    v9 = *(this->var14 + 2);
    if (v9)
    {
      v10 = *v9;
      v15 = *(v9 + 2);
      v14 = v10;
      (*(*a2 + 16))(a2, 119);
      (*(*a2 + 112))(a2, &v14);
      (*(*a2 + 24))(a2);
      v11 = *(this->var14 + 2);
      v15 = *(v11 + 40);
      v14 = *(v11 + 24);
      (*(*a2 + 16))(a2, 120);
      (*(*a2 + 112))(a2, &v14);
      (*(*a2 + 24))(a2);
      v12 = *(*(this->var14 + 2) + 48);
      (*(*a2 + 16))(a2, 130);
      (*(*a2 + 56))(a2, v12);
      (*(*a2 + 24))(a2);
      v13 = *(*(this->var14 + 2) + 52);
      (*(*a2 + 16))(a2, 131);
      (*(*a2 + 56))(a2, v13);
      (*(*a2 + 24))(a2);
    }

    return PCSerializerWriteStream::popScope(a2);
  }

  return result;
}

void OZChannel::getValueAsDouble(OZChannel *this, const CMTime *a2, double a3)
{
  v11 = 0;
  if (*(this->var14 + 1))
  {
    v10 = 0;
    if (!(*(this->var0 + 104))(this) && ((*(**(this->var14 + 1) + 1152))(*(this->var14 + 1), &v10) ? (v6 = v10 == 0) : (v6 = 0), v6))
    {
      (*(**(this->var14 + 1) + 208))(*(this->var14 + 1), &v11);
    }

    else
    {
      v7 = OZChannelBase::testFlag(this, 0x80000000);
      v8 = *(this->var14 + 1);
      if (v7)
      {
        (*(this->var0 + 41))(&v9, this, a2);
        (*(*v8 + 624))(v8, &v9, &v11, a3);
      }

      else
      {
        (*(this->var0 + 41))(&v9, this, a2);
        (*(*v8 + 616))(v8, &v9, &v11, a3);
      }
    }

    if ((*(this->var0 + 83))(this))
    {
      if (!OZChannelBase::testFlag(this, 0x800000000))
      {
        (*(this->var0 + 41))(&v9, this, a2);
        OZChannel::getFadeRatio(this, &v9);
      }
    }
  }
}

__n128 OZChannel::getFadeInOffset@<Q0>(OZChannel *this@<X0>, __n128 *a2@<X8>)
{
  v2 = *(this->var14 + 2);
  if (!v2)
  {
    v2 = MEMORY[0x277CC08F0];
  }

  result = *v2;
  *a2 = *v2;
  a2[1].n128_u64[0] = v2[1].n128_u64[0];
  return result;
}

OZChannel *OZChannel::getFadeOutOffset@<X0>(OZChannel *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this->var14 + 2);
  if (v2)
  {
    *a2 = *(v2 + 24);
    v3 = *(v2 + 40);
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    v3 = *(v4 + 16);
  }

  *(a2 + 16) = v3;
  return this;
}

uint64_t OZChannel::getFadeInCurve(OZChannel *this)
{
  v1 = *(this->var14 + 2);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t OZChannel::getFadeOutCurve(OZChannel *this)
{
  v1 = *(this->var14 + 2);
  if (v1)
  {
    return *(v1 + 52);
  }

  else
  {
    return 0;
  }
}

double OZChannel::getFadeRatio(OZChannel *this, const CMTime *a2)
{
  AncestorRootBase = OZChannelBase::getAncestorRootBase(this);
  v5 = (*(this->var0 + 83))(this);
  v6.n128_u64[0] = 1.0;
  if (v5)
  {
    v7 = AncestorRootBase == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    memset(&v24, 0, sizeof(v24));
    (*(AncestorRootBase->var0 + 110))(&v24, AncestorRootBase, v6);
    (*(AncestorRootBase->var0 + 90))(v23, AncestorRootBase, this);
    memset(&v22, 0, sizeof(v22));
    time1 = v23[0];
    time2 = v23[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v25);
    time1 = v25;
    time2 = v24;
    PC_CMTimeSaferSubtract(&time1, &time2, &v22);
    v25 = v23[0];
    var13 = this->var13;
    if (!var13 || ((*(*var13 + 32))(var13) & 1) == 0)
    {
      (*(this->var0 + 41))(&time1, this, &v22);
      v22 = time1;
      (*(this->var0 + 41))(&time1, this, &v25);
      v25 = time1;
    }

    v9 = *(this->var14 + 2);
    v10 = *v9;
    time1.epoch = *(v9 + 2);
    *&time1.value = v10;
    v11 = MEMORY[0x277CC08F0];
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2) && (time1 = *a2, time2 = v25, PC_CMTimeSaferSubtract(&time1, &time2, &v21), v12 = *(this->var14 + 2), time1 = v21, v13 = *v12, time2.epoch = *(v12 + 2), *&time2.value = v13, CMTimeCompare(&time1, &time2) < 0))
    {
      time1 = *a2;
      time2 = v25;
      PC_CMTimeSaferSubtract(&time1, &time2, &v21);
      operator/(&v21.value, *(this->var14 + 2), &time1);
      Seconds = CMTimeGetSeconds(&time1);
      v16 = 48;
    }

    else
    {
      time1 = *(*(this->var14 + 2) + 24);
      time2 = *v11;
      if (!CMTimeCompare(&time1, &time2) || (v14 = *(this->var14 + 2), time1 = v22, time2 = v14[1], PC_CMTimeSaferSubtract(&time1, &time2, &v21), time1 = *a2, time2 = v21, CMTimeCompare(&time1, &time2) < 1))
      {
        v6.n128_u64[0] = 1.0;
        return v6.n128_f64[0];
      }

      time1 = v22;
      time2 = *a2;
      PC_CMTimeSaferSubtract(&time1, &time2, &v21);
      operator/(&v21.value, *(this->var14 + 2) + 24, &time1);
      Seconds = CMTimeGetSeconds(&time1);
      v16 = 52;
    }

    v17 = *(*(this->var14 + 2) + v16);
    v18 = 1.0;
    if (Seconds <= 1.0)
    {
      v18 = Seconds;
    }

    v19 = Seconds < 0.0;
    v6.n128_u64[0] = 0;
    if (!v19)
    {
      v6.n128_f64[0] = v18;
    }

    switch(v17)
    {
      case 3:
        v6.n128_f64[0] = 0.5 - cos(v6.n128_f64[0] * 3.14159265) * 0.5;
        break;
      case 2:
        v6.n128_f64[0] = sin((v6.n128_f64[0] + -1.0) * 1.57079633) + 1.0;
        break;
      case 1:
        v6.n128_f64[0] = sin(v6.n128_f64[0] * 1.57079633);
        break;
    }
  }

  return v6.n128_f64[0];
}

BOOL OZChannel::hasFadeHandles(OZChannel *this)
{
  v1 = *(this->var14 + 2);
  if (!v1)
  {
    return 0;
  }

  v3 = *v1;
  time1.epoch = *(v1 + 2);
  *&time1.value = v3;
  v4 = MEMORY[0x277CC08F0];
  v6 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &v6))
  {
    return 1;
  }

  time1 = *(*(this->var14 + 2) + 24);
  v6 = *v4;
  return CMTimeCompare(&time1, &v6) != 0;
}

uint64_t OZChannel::scaleFadeHandles(OZChannel *this, Float64 a2)
{
  result = (*(this->var0 + 83))(this);
  if (result)
  {
    v5 = *(this->var14 + 2);
    v6 = *v5;
    time1.epoch = *(v5 + 2);
    *&time1.value = v6;
    v7 = MEMORY[0x277CC08F0];
    v10 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v10))
    {
      operator*(*(this->var14 + 2), &time1, a2);
      v8 = *(this->var14 + 2);
      v9 = *&time1.value;
      *(v8 + 16) = time1.epoch;
      *v8 = v9;
    }

    time1 = *(*(this->var14 + 2) + 24);
    v10 = *v7;
    result = CMTimeCompare(&time1, &v10);
    if (result)
    {
      result = operator*((*(this->var14 + 2) + 24), &time1, a2);
      *(*(this->var14 + 2) + 24) = time1;
    }
  }

  return result;
}

uint64_t OZChannel::setValue(OZChannel *this, const CMTime *a2, double a3, int a4)
{
  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6) && OZChannelFolder::testFoldFlag(this->var6, 0x100000))
  {
    v10 = this->var6;
    if (v10)
    {
    }

    v11 = *(*v10 + 744);
    v9.n128_f64[0] = a3;

    return v11(v10, this, a2, v9);
  }

  else
  {
    result = OZChannelBase::isLocked(this, 0);
    if ((result & 1) == 0)
    {
      if (!a4)
      {
        (*(this->var0 + 58))(this, 1);
      }

      if (((*(this->var0 + 64))(this) & 1) != 0 || (*&v18 = 0, result = (*(**(this->var14 + 1) + 208))(*(this->var14 + 1), &v18), vabdd_f64(a3, *&v18) >= 0.0000001))
      {
        var14 = this->var14;
        if (var14 && *(var14 + 32) == 1)
        {
          OZChannelImpl::createLocalCopy(var14);
        }

        ChannelRootBase = OZChannelBase::getChannelRootBase(this);
        if (ChannelRootBase)
        {
          v15 = ChannelRootBase;
          (*(*ChannelRootBase + 728))(ChannelRootBase, this, a2, a3);
          if (((*(this->var0 + 69))(this, 0) & 1) == 0)
          {
            (*(*v15 + 712))(&v18, v15);
            v20 = v18;
            v21 = v19;
            if ((*(*v15 + 800))(v15, a2))
            {
              v16 = *(this->var14 + 1);
              (*(this->var0 + 41))(&v18, this, &v20);
              OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);
              (*(*v16 + 552))(v16, &v18, 0);
            }
          }
        }

        v17 = *(this->var14 + 1);
        (*(this->var0 + 41))(&v18, this, a2);
        (*(*v17 + 552))(v17, &v18, 0, a3);
        result = (*(this->var0 + 99))(this);
        if (result)
        {
          return (*(this->var0 + 100))(this, a2);
        }
      }
    }
  }

  return result;
}

double OZChannel::getInitialValue(OZChannel *this)
{
  v2 = 0.0;
  (*(**(this->var14 + 1) + 208))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setValue(OZChannel *this, const OZChannelBase *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    if (result)
    {
      v5 = result;
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      v11 = 0;
      (*(**(var14 + 1) + 264))(*(var14 + 1), &v11);
      (*(**(this->var14 + 1) + 256))();
      OZChannelImpl::copyCurveInterface(this->var14, *(*(v5 + 112) + 8));
      v7.n128_u64[0] = v11;
      (*(**(this->var14 + 1) + 280))(v7);
      v8.n128_u64[0] = 0;
      result = (*(**(this->var14 + 1) + 272))(v8);
      v9 = *(this->var16 + 5);
      v10 = *(*(v5 + 128) + 40);
      if (vabdd_f64(v9, v10) >= 0.0000001)
      {
        return (*(**(this->var14 + 1) + 448))(*(this->var14 + 1), v10 / v9);
      }
    }
  }

  return result;
}

uint64_t OZChannel::setValueOffsetByBehaviors(OZChannel *this, const CMTime *a2, double a3)
{
  OZChannel::getValueAsDouble(this, a2, 0.0);
  v7 = a3 - v6;
  v12 = 0.0;
  v8 = *(this->var14 + 1);
  (*(this->var0 + 41))(v11, this, a2);
  (*(*v8 + 624))(v8, v11, &v12, 0.0);
  v9.n128_f64[0] = v7 + v12;
  return (*(this->var0 + 89))(this, a2, 0, v9);
}

uint64_t OZChannel::setValueAndIgnoreRecordOption(OZChannel *this, const CMTime *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v6 = *(var14 + 1);
    (*(this->var0 + 41))(v7, this, a2);
    (*(*v6 + 544))(v6, v7, 1);
    result = (*(this->var0 + 99))(this);
    if (result)
    {
      return (*(this->var0 + 100))(this, a2);
    }
  }

  return result;
}

uint64_t OZChannel::setValue(OZChannel *this, const CMTime *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    ChannelRootBase = OZChannelBase::getChannelRootBase(this);
    if (ChannelRootBase)
    {
      v7 = ChannelRootBase;
      if (((*(this->var0 + 69))(this, 0) & 1) == 0)
      {
        if ((*(*v7 + 800))(v7, a2))
        {
          v8 = *(this->var14 + 1);
          (*(*v7 + 712))(&v10, v7);
          v12 = v10;
          v13 = v11;
          (*(this->var0 + 41))(v14, this, &v12);
          (*(*v8 + 544))(v8, v14, 0);
        }
      }
    }

    v9 = *(this->var14 + 1);
    (*(this->var0 + 41))(&v10, this, a2);
    (*(*v9 + 544))(v9, &v10, 0);
    result = (*(this->var0 + 99))(this);
    if (result)
    {
      return (*(this->var0 + 100))(this, a2);
    }
  }

  return result;
}

uint64_t OZChannel::setDefaultValue(OZChannel *this, double a2)
{
  v6 = 0.0;
  result = (*(**(this->var14 + 1) + 192))(*(this->var14 + 1), &v6);
  if (vabdd_f64(v6, a2) >= 0.0000001)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    (*(**(var14 + 1) + 200))(*(var14 + 1), a2);
    result = OZChannelBase::testFlag(this, 0x200000000);
    if (result)
    {
      return OZChannelBase::setFlag(this, 0x100000000, 1);
    }
  }

  return result;
}

double OZChannel::getDefaultValue(OZChannel *this)
{
  v2 = 0.0;
  (*(**(this->var14 + 1) + 192))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setDefaultAtCurrentTime(OZChannel *this, const CMTime *a2)
{
  OZChannel::getValueAsDouble(this, a2, 0.0);

  return OZChannel::setDefaultValue(this, v3);
}

uint64_t OZChannel::setDefaultToCurrentValue(OZChannel *this)
{
  OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);

  return OZChannel::setDefaultValue(this, v2);
}

uint64_t OZChannel::setInitialValue(OZChannel *this, double a2, char a3)
{
  v8 = 0.0;
  result = (*(**(this->var14 + 1) + 208))(*(this->var14 + 1), &v8);
  if (vabdd_f64(v8, a2) >= 0.0000001)
  {
    if ((a3 & 1) == 0)
    {
      (*(this->var0 + 58))(this, 1);
    }

    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    return (*(**(var14 + 1) + 216))(*(var14 + 1), a2);
  }

  return result;
}

BOOL OZChannel::removeValue(OZChannel *this, const CMTime *a2, uint64_t a3)
{
  v6 = 0;
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    v11 = 0;
    v7 = *(this->var14 + 1);
    (*(this->var0 + 41))(v10, this, a2);
    (*(*v7 + 696))(v7, v10, &v11);
    v6 = v11 != 0;
    if (v11)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      (*(**(var14 + 1) + 672))(*(var14 + 1), v11, a3);
    }
  }

  return v6;
}

uint64_t OZChannel::removeAllValues(OZChannel *this, const CMTime *a2, uint64_t a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(var14 + 1);
    (*(this->var0 + 41))(v9, this, a2);
    return (*(*v8 + 688))(v8, v9, a3);
  }

  return result;
}

BOOL OZChannel::moveValue(OZChannel *this, const CMTime *a2, const CMTime *a3, uint64_t a4)
{
  v8 = 0;
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    v15 = 0;
    v9 = *(this->var14 + 1);
    (*(this->var0 + 41))(v14, this, a2);
    (*(*v9 + 696))(v9, v14, &v15);
    v10 = v15;
    v8 = v15 != 0;
    if (v15)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      v12 = *(var14 + 1);
      (*(this->var0 + 41))(v14, this, a3);
      (*(*v12 + 656))(v12, v10, v14, a4, 0, 0);
    }
  }

  return v8;
}

uint64_t OZChannel::offsetChannel(OZChannel *this, const CMTime *a2, double a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(var14 + 1);
    (*(this->var0 + 41))(v9, this, a2);
    return (*(*v8 + 440))(v8, v9, a3);
  }

  return result;
}

uint64_t OZChannel::scaleChannel(OZChannel *this, double a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0 && fabs(a2 + -1.0) >= 0.0000001)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v7 = *(**(var14 + 1) + 448);
    v5.n128_f64[0] = a2;

    return v7(v5);
  }

  return result;
}

void OZChannel::copyKeyframesFromChannel(OZChannel *this, const CMTime *a2, OZChannelBase *a3)
{
  isLocked = OZChannelBase::isLocked(this, 0);
  if (!a3)
  {
    return;
  }

  if (isLocked)
  {
    return;
  }

  if (!v7)
  {
    return;
  }

  v8 = v7;
  var14 = this->var14;
  if (var14 && *(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v10 = *(v8->var16 + 5);
  memset(&v43, 0, sizeof(v43));
  (*(this->var0 + 41))(&v43, this, a2);
  OZChannel::getKeyframes(v8, 0, &v41);
  if (v42 != v41)
  {
    v11 = 0;
    v12 = 1;
    v13 = MEMORY[0x277CC08F0];
    while (1)
    {
      v40 = *v13;
      v38 = 0;
      v39 = 0.0;
      v36 = 0;
      v37 = 0.0;
      v35 = 0.0;
      (*(**(v8->var14 + 1) + 752))();
      (*(**(v8->var14 + 1) + 1032))(*(v8->var14 + 1), v41[v11], &v38, &v37);
      (*(**(v8->var14 + 1) + 1040))(*(v8->var14 + 1), v41[v11], &v36, &v35);
      v14 = v41[v11];
      LODWORD(v45.value) = 0;
      (*(**(v8->var14 + 1) + 1072))(*(v8->var14 + 1), v14, &v45, 0);
      value_low = LODWORD(v45.value);
      LODWORD(v45.value) = 0;
      (*(**(v8->var14 + 1) + 840))();
      LOBYTE(v45.value) = 0;
      (*(**(v8->var14 + 1) + 864))();
      v16 = LOBYTE(v45.value);
      v39 = v10 * v39;
      v37 = v10 * v37;
      v35 = v10 * v35;
      if (v12 == 1)
      {
        v45 = v43;
        v44 = v40;
        PC_CMTimeSaferSubtract(&v45, &v44, &v34);
        v43 = v34;
      }

      v33 = 0;
      v17 = *(this->var16 + 5);
      v18 = *(this->var14 + 1);
      v45 = v43;
      v44 = v40;
      v19 = PC_CMTimeSaferAdd(&v45, &v44, &v34);
      (*(*v18 + 696))(v18, &v34, &v33, v19);
      if (v33)
      {
        LOBYTE(v45.value) = 0;
        (*(**(this->var14 + 1) + 888))(*(this->var14 + 1), v33, &v45);
        if (v45.value)
        {
          goto LABEL_26;
        }
      }

      v45 = v43;
      v44 = v40;
      PC_CMTimeSaferAdd(&v45, &v44, &v34);
      OZChannel::setKeyframe(this, &v34, v39 / v17, 0);
      v20 = *(this->var14 + 1);
      v45 = v43;
      v44 = v40;
      v21 = PC_CMTimeSaferAdd(&v45, &v44, &v34);
      (*(*v20 + 696))(v20, &v34, &v33, v21);
      OZChannel::setKeyframeFlags(this, v33);
      (*(**(this->var14 + 1) + 856))(*(this->var14 + 1), v33, v16, 1);
      (*(**(this->var14 + 1) + 1064))(*(this->var14 + 1), v33, value_low, 1);
      v45 = v43;
      v44 = v40;
      v22 = PC_CMTimeSaferAdd(&v45, &v44, &v34);
      v45.value = 0;
      (*(**(this->var14 + 1) + 712))(*(this->var14 + 1), &v34, &v45, v22);
      value = v45.value;
      v32 = 0.0;
      (*(**(this->var14 + 1) + 752))(*(this->var14 + 1), v45.value, 0, &v32);
      v45 = v43;
      v44 = v40;
      v24 = PC_CMTimeSaferAdd(&v45, &v44, &v34);
      v45.value = 0;
      (*(**(this->var14 + 1) + 728))(*(this->var14 + 1), &v34, &v45, v24);
      v25 = v45.value;
      v45.value = 0;
      (*(**(this->var14 + 1) + 752))(*(this->var14 + 1), v25, 0, &v45);
      if ((v42 - v41) > 8 || value && vabdd_f64(v32, v39 / v17) >= 0.0000001)
      {
        v26.n128_u64[0] = v38;
        v27.n128_f64[0] = v37 / v17;
        v28 = (**(this->var14 + 1) + 1016);
      }

      else
      {
        if (!v25)
        {
          goto LABEL_22;
        }

        v28 = (**(this->var14 + 1) + 1024);
        v26.n128_u64[0] = 0;
        v27.n128_u64[0] = 0;
      }

      (*v28)(v26, v27);
      if ((v42 - v41) > 8 || v25 && vabdd_f64(*&v45.value, v39 / v17) >= 0.0000001)
      {
        v26.n128_u64[0] = v36;
        v27.n128_f64[0] = v35 / v17;
        v29 = (**(this->var14 + 1) + 1024);
        goto LABEL_25;
      }

LABEL_22:
      if (value)
      {
        v29 = (**(this->var14 + 1) + 1016);
        v26.n128_u64[0] = 0;
        v27.n128_u64[0] = 0;
LABEL_25:
        (*v29)(v26, v27);
      }

LABEL_26:
      v11 = v12;
      v30 = v41;
      ++v12;
      if (v11 >= (v42 - v41) >> 3)
      {
        if (v41)
        {
          goto LABEL_28;
        }

        return;
      }
    }
  }

  (*(this->var0 + 36))(this, 0);
  OZChannel::getValueAsDouble(v8, MEMORY[0x277CC08F0], 0.0);
  OZChannel::setInitialValue(this, v10 * v31 / *(this->var16 + 5), 0);
  v30 = v41;
  if (v41)
  {
LABEL_28:
    v42 = v30;
    operator delete(v30);
  }
}

void sub_25FE6F84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannel::getKeyframes@<X0>(OZChannel *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = **(this->var14 + 1);
  if (a2)
  {
    v4 = (v3 + 800);
  }

  else
  {
    v4 = (v3 + 792);
  }

  return (*v4)();
}

void sub_25FE6F90C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannel::getKeyframeInputTangents(OZChannel *this, void *a2, double *a3, double *a4, int a5)
{
  v5 = **(this->var14 + 1);
  if (a5)
  {
    return (*(v5 + 1000))();
  }

  else
  {
    return (*(v5 + 1032))();
  }
}

uint64_t OZChannel::getKeyframeOutputTangents(OZChannel *this, void *a2, double *a3, double *a4, int a5)
{
  v5 = **(this->var14 + 1);
  if (a5)
  {
    return (*(v5 + 1008))();
  }

  else
  {
    return (*(v5 + 1040))();
  }
}

uint64_t OZChannel::getKeyframeInterpolation(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 1072))(*(this->var14 + 1), a2, &v3, 0);
  return v3;
}

uint64_t OZChannel::getKeyframeFlags(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 840))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getKeyframeEnabled(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 864))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::setKeyframe(OZChannel *this, const CMTime *a2, double a3, int a4)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v10 = **(var14 + 1);
    if (a4)
    {
      v11 = *(v10 + 552);
      v8.n128_f64[0] = a3;
    }

    else
    {
      v11 = *(v10 + 568);
      v8.n128_f64[0] = a3;
    }

    return v11(v8);
  }

  return result;
}

uint64_t OZChannel::setKeyframeFlags(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 848);

    return v5();
  }

  return result;
}

uint64_t OZChannel::getPreviousEnabledKeyframe(OZChannel *this, const CMTime *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 712))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getNextEnabledKeyframe(OZChannel *this, const CMTime *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 728))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getTimeForValue(OZChannelBase *a1, uint64_t *a2, __int128 *a3, __int128 *a4, double a5)
{
  v24 = *(a3 + 2);
  v23 = *a3;
  v25 = *(a3 + 24);
  v26 = *(a3 + 5);
  if (!*(a1[1].var0 + 1))
  {
    return 0;
  }

  ChannelRootBase = OZChannelBase::getChannelRootBase(a1);
  if (ChannelRootBase)
  {
    (*(*ChannelRootBase + 880))(&v21);
  }

  else
  {
    v21 = *a4;
    v22 = *(a4 + 2);
  }

  v19 = *a3;
  v20 = *(a3 + 2);
  (*(a1->var0 + 41))(&v23, a1, &v19);
  v25 = *(a3 + 24);
  v26 = *(a3 + 5);
  result = (*(**(a1[1].var0 + 1) + 432))(a5);
  if (result)
  {
    v12 = *a2;
    if (a2[1] != *a2)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = 3 * v13;
        (*(a1->var0 + 42))(&v19, a1, v12 + 24 * v13);
        v16 = *a2 + 8 * v15;
        v17 = v19;
        *(v16 + 16) = v20;
        *v16 = v17;
        v13 = v14;
        v12 = *a2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v14++);
    }

    return 1;
  }

  return result;
}

uint64_t OZChannel::beginPlayback(OZChannel *this, const CMTime *a2, uint64_t a3, uint64_t a4, const CMTime *a5)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    return OZChannelImpl::beginPlayback(var14, a2, a3, a4, a5);
  }

  return result;
}

uint64_t OZChannel::beginRecording(OZChannel *this, const CMTime *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(this->var14);
    }

    (*(this->var0 + 41))(&v6, this, a2);
    OZChannelImpl::beginRecording(var14, &v6);
    result = OZChannelBase::getChannelRootBase(this);
    if (result)
    {
      return (*(*result + 736))(result, this, a2);
    }
  }

  return result;
}

void *OZChannel::endRecording(OZChannel *this, const CMTime *a2)
{
  var14 = this->var14;
  (*(this->var0 + 41))(&v6);
  OZChannelImpl::endRecording(var14, &v6);
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    return (*(*result + 744))(result, this, a2);
  }

  return result;
}

uint64_t OZChannel::updateCurrentRecordingTime(OZChannel *this, const CMTime *a2)
{
  var14 = this->var14;
  (*(this->var0 + 41))(&v4);
  return OZChannelImpl::updateCurrentRecordingTime(var14, &v4);
}

void OZChannel::registerRecordingCallback(OZChannel *this, void (*a2)(OZChannelBase *, const CMTime *, void *), void *a3, char a4)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    OZChannelImpl::registerRecordingCallback(var14, a2, a3, a4);
  }
}

void OZChannel::setInfo(OZChannel *this, const OZChannelInfo *a2)
{
  var16 = this->var16;
  if (*(var16 + 72) == 1)
  {
    OZChannelInfo::createLocalCopy(var16);
  }

  OZChannelInfo::operator=(var16, a2);
}

OZChannelInfo *OZChannel::replaceInfo(OZChannel *this, OZChannelInfo *a2)
{
  result = this->var16;
  if ((*(result + 72) & 1) == 0)
  {
    result = (*(*result + 8))(result);
  }

  this->var16 = a2;
  if (*(a2 + 72) == 1)
  {
    this->var17 = a2;
  }

  return result;
}

uint64_t OZChannel::setMin(OZChannel *this, double a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v6 = 0.0;
    result = (*(**(this->var14 + 1) + 264))(*(this->var14 + 1), &v6);
    if (vabdd_f64(a2, v6) >= 0.0000001)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      result = (*(**(var14 + 1) + 280))(*(var14 + 1), a2);
      if (*(this->var16 + 2) < a2)
      {
        return OZChannel::setSliderMin(this, a2);
      }
    }
  }

  return result;
}

OZChannelInfo *OZChannel::setSliderMin(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 2)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 2) = a2;
  }

  return result;
}

void OZChannel::setMax(OZChannel *this, double a2)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    v5 = 0.0;
    (*(**(this->var14 + 1) + 256))(*(this->var14 + 1), &v5);
    if (vabdd_f64(a2, v5) >= 0.0000001)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      (*(**(var14 + 1) + 272))(*(var14 + 1), a2);
      if ((*(this->var0 + 101))(this) > a2)
      {
        OZChannel::setSliderMax(this, a2);
      }
    }
  }
}

OZChannelInfo *OZChannel::setSliderMax(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 1)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 1) = a2;
  }

  return result;
}

OZChannelInfo *OZChannel::setCoarseDelta(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 4)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 4) = a2;
  }

  return result;
}

OZChannelInfo *OZChannel::setFineDelta(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 3)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 3) = a2;
  }

  return result;
}

OZChannelInfo *OZChannel::setScale(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 5)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 5) = a2;
  }

  return result;
}

OZChannelInfo *OZChannel::setOffset(OZChannel *this, double a2)
{
  result = this->var16;
  if (vabdd_f64(a2, *(result + 6)) >= 0.0000001)
  {
    if (*(result + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    *(result + 6) = a2;
  }

  return result;
}

void OZChannel::setSuffix(OZChannel *this, PCString *a2)
{
  if (PCString::compare(a2, this->var16 + 7))
  {
    var16 = this->var16;
    if (*(var16 + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    v5 = (var16 + 56);

    PCString::set(v5, a2);
  }
}

void OZChannel::setSuffix(OZChannel *this, const char *a2)
{
  PCString::PCString(&v3, a2);
  OZChannel::setSuffix(this, &v3);
  PCString::~PCString(&v3);
}

void OZChannel::setSliderTransformerName(OZChannel *this, const __CFString *a2)
{
  if (CFStringCompare(*(this->var16 + 8), a2, 0x20uLL))
  {
    var16 = this->var16;
    if (*(var16 + 72) == 1)
    {
      OZChannelInfo::createLocalCopy(this->var17);
    }

    OZChannelInfo::setSliderTransformerName(var16, a2);
  }
}

void *OZChannel::isChannelAffectedByBehaviors(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::getChannelRootBase(this);
  if (result)
  {
    v5 = *(*result + 808);

    return v5(result, this, a2);
  }

  return result;
}

uint64_t OZChannel::isAnimated(OZChannel *this)
{
  v2 = 1;
  (*(**(this->var14 + 1) + 72))(*(this->var14 + 1), &v2);
  return v2;
}

void OZChannel::setIsSpline(OZChannel *this, uint64_t a2)
{
  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6) && OZChannelFolder::testFoldFlag(this->var6, 0x100000))
  {
    v5 = this->var6;
    if (v5)
    {
    }

    v6 = *(*v5 + 784);

    v6(v5, this, a2, 0);
  }

  else if ((OZChannelBase::isLocked(this, 0) & 1) == 0 && (*(this->var0 + 61))(this) != a2)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    if (a2)
    {
      v8 = *(var14 + 1);
      v9 = MEMORY[0x277CC08F0];

      OZCurve::setIsSpline(v8, 1, v9);
    }

    else
    {
      v11 = **&MEMORY[0x277CC08F0];
      ChannelRootBase = OZChannelBase::getChannelRootBase(this);
      if (ChannelRootBase)
      {
        (*(*ChannelRootBase + 848))(&v11);
      }

      OZCurve::setIsSpline(*(this->var14 + 1), 0, &v11);
    }
  }
}

uint64_t OZChannel::isSpline(OZChannel *this)
{
  v2 = 0;
  LODWORD(result) = (*(**(this->var14 + 1) + 152))(*(this->var14 + 1), &v2);
  if (v2 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t OZChannel::isModified(OZChannel *this)
{
  if ((*(this->var0 + 69))(this, 0))
  {
    return 1;
  }

  if ((*(this->var0 + 83))(this))
  {
    return 1;
  }

  OZChannel::getValueAsDouble(this, MEMORY[0x277CC08F0], 0.0);
  v3 = v2;
  v5 = 0.0;
  (*(**(this->var14 + 1) + 192))(*(this->var14 + 1), &v5);
  if (vabdd_f64(v3, v5) >= 0.0000001)
  {
    return 1;
  }

  else
  {
    return OZChannel::isChannelAffectedByBehaviors(this, 0);
  }
}

uint64_t OZChannel::setKeyframable(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    if ((*(this->var0 + 64))(this) != a2 || (result = (*(this->var0 + 61))(this), result != a2))
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      (*(**(var14 + 1) + 80))(*(var14 + 1), a2);
      v6 = *(this->var0 + 60);

      return v6(this, a2);
    }
  }

  return result;
}

void OZChannel::keyframesWithChannels(void *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  v43 = *a2;
  v6 = a2[2];
  *&range.start.value = *a2;
  *&range.start.epoch = v5;
  v44 = *(a2 + 2);
  memset(&v42, 0, sizeof(v42));
  *&range.duration.timescale = v6;
  CMTimeRangeGetEnd(&v42, &range);
  v40 = 0;
  v41 = 0;
  __p = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  __src = 0;
  v7 = *(a1[14] + 8);
  (*(*a1 + 328))(&range, a1, &v43);
  if ((*(*v7 + 696))(v7, &range, &v41))
  {
LABEL_2:
    std::vector<HGMTLFunctionType>::push_back[abi:ne200100](&__p, &v41);
  }

  while ((*(**(a1[14] + 8) + 736))(*(a1[14] + 8), &v43, &v43, 0))
  {
    *&range.start.value = v43;
    range.start.epoch = v44;
    time2 = v42;
    if (CMTimeCompare(&range.start, &time2) > 0)
    {
      break;
    }

    v8 = *(a1[14] + 8);
    (*(*a1 + 328))(&range, a1, &v43);
    if ((*(*v8 + 696))(v8, &range, &v41))
    {
      goto LABEL_2;
    }
  }

  v9 = __p;
  if (v39 == __p)
  {
    v18 = v36;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v9[v10];
      (*(**(a1[14] + 8) + 752))(*(a1[14] + 8), v12, &range, &range.duration);
      (*(**(a1[14] + 8) + 864))(*(a1[14] + 8), v12, &range.duration.timescale);
      (*(**(a1[14] + 8) + 952))(*(a1[14] + 8), v12, &v34 + 8);
      (*(**(a1[14] + 8) + 1072))(*(a1[14] + 8), v12, &v34 + 4, 0);
      (*(**(a1[14] + 8) + 840))(*(a1[14] + 8), v12, &v34);
      (*(**(a1[14] + 8) + 1056))(*(a1[14] + 8), v12, &range.duration.epoch);
      (*(**(a1[14] + 8) + 1000))(*(a1[14] + 8), v12, &v32, &v33);
      (*(**(a1[14] + 8) + 1008))(*(a1[14] + 8), v12, &v32 + 8, &v33 + 8);
      v13 = v36;
      if (v36 >= v37)
      {
        v19 = __src;
        v20 = v36 - __src;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v36 - __src) >> 5);
        v22 = v21 + 1;
        if (v21 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v37 - __src) >> 5) > v22)
        {
          v22 = 0x5555555555555556 * ((v37 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v37 - __src) >> 5) >= 0x155555555555555)
        {
          v22 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_OZKeyframeInfo>>(&__src, v22);
        }

        v23 = (32 * ((v36 - __src) >> 5));
        v24 = *&range.start.epoch;
        *v23 = *&range.start.value;
        v23[1] = v24;
        v25 = *&range.duration.timescale;
        v26 = v32;
        v27 = v34;
        v23[4] = v33;
        v23[5] = v27;
        v23[2] = v25;
        v23[3] = v26;
        v18 = (96 * v21 + 96);
        v28 = v23 - v20;
        memcpy(v23 - v20, v19, v20);
        v29 = __src;
        __src = v28;
        v36 = v18;
        v37 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v14 = *&range.start.epoch;
        *v36 = *&range.start.value;
        v13[1] = v14;
        v15 = *&range.duration.timescale;
        v16 = v32;
        v17 = v34;
        v13[4] = v33;
        v13[5] = v17;
        v13[2] = v15;
        v13[3] = v16;
        v18 = v13 + 6;
      }

      v36 = v18;
      v10 = v11;
      v9 = __p;
      ++v11;
    }

    while (v10 < (v39 - __p) >> 3);
  }

  v30 = __src;
  if (v18 != __src)
  {
    range.start.value = a1;
    memset(&range.start.timescale, 0, 24);
    std::vector<_OZKeyframeInfo>::__init_with_size[abi:ne200100]<_OZKeyframeInfo*,_OZKeyframeInfo*>(&range.start.timescale, __src, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - __src) >> 5));
    std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::push_back[abi:ne200100](a3, &range);
    if (*&range.start.timescale)
    {
      range.start.epoch = *&range.start.timescale;
      operator delete(*&range.start.timescale);
    }

    v30 = __src;
  }

  if (v30)
  {
    v36 = v30;
    operator delete(v30);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }
}

void sub_25FE71504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>>(result, v10);
    }

    v11 = (32 * v7);
    *v11 = *a2;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    *(v11 + 1) = *(a2 + 8);
    v11[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0;
    *(v4 + 1) = *(a2 + 8);
    v4[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = (v4 + 4);
  }

  v3[1] = v6;
  return result;
}

uint64_t OZChannel::setKeyframesWithInfo(OZChannelBase *a1, CMTime *a2, __int128 **a3)
{
  result = OZChannelBase::isLocked(a1, 0);
  if ((result & 1) == 0)
  {
    result = a1[1].var0;
    if (result && *(result + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(result);
    }

    v7 = *a3;
    if (a3[1] != *a3)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = &v7[6 * v8];
        v34 = *v10;
        v35 = 0;
        v11 = *(v10 + 3);
        v13 = *(v10 + 5);
        v12 = *(v10 + 6);
        v14 = *(v10 + 7);
        v15 = *(v10 + 8);
        v16 = *(v10 + 9);
        v17 = *(v10 + 11);
        v37 = v34;
        v18 = *v7;
        v36.epoch = *(v7 + 2);
        *&v36.value = v18;
        PC_CMTimeSaferSubtract(&v37, &v36, &v32);
        v37 = *a2;
        v36 = v32;
        PC_CMTimeSaferAdd(&v37, &v36, &v33);
        OZChannel::setKeyframe(a1, &v33, v11, 0);
        v19 = *(a1[1].var0 + 1);
        v20 = *a3;
        v37 = v34;
        v21 = *v20;
        v36.epoch = *(v20 + 2);
        *&v36.value = v21;
        PC_CMTimeSaferSubtract(&v37, &v36, &v32);
        v37 = *a2;
        v36 = v32;
        v22.n128_f64[0] = PC_CMTimeSaferAdd(&v37, &v36, &v33);
        (*(*v19 + 696))(v19, &v33, &v35, v22);
        (*(**(a1[1].var0 + 1) + 856))();
        (*(**(a1[1].var0 + 1) + 960))(v17);
        (*(**(a1[1].var0 + 1) + 1064))();
        (*(**(a1[1].var0 + 1) + 848))();
        (*(**(a1[1].var0 + 1) + 1048))(v13);
        v23 = *a3;
        v37 = v34;
        v24 = *v23;
        v36.epoch = *(v23 + 2);
        *&v36.value = v24;
        PC_CMTimeSaferSubtract(&v37, &v36, &v32);
        v37 = *a2;
        v36 = v32;
        v25.n128_f64[0] = PC_CMTimeSaferAdd(&v37, &v36, &v33);
        v37.value = 0;
        (*(**(a1[1].var0 + 1) + 712))(v25);
        value = v37.value;
        (*(**(a1[1].var0 + 1) + 752))();
        v27 = *a3;
        v37 = v34;
        v28 = *v27;
        v36.epoch = *(v27 + 2);
        *&v36.value = v28;
        PC_CMTimeSaferSubtract(&v37, &v36, &v32);
        v37 = *a2;
        v36 = v32;
        v29.n128_f64[0] = PC_CMTimeSaferAdd(&v37, &v36, &v33);
        v37.value = 0;
        (*(**(a1[1].var0 + 1) + 728))(v29);
        v30 = v37.value;
        v37.value = 0;
        result = (*(**(a1[1].var0 + 1) + 752))();
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5) > 1 || value && vabdd_f64(0.0, v11) >= 0.0000001)
        {
          result = (*(**(a1[1].var0 + 1) + 984))(*(a1[1].var0 + 1), v35, 1, v12, v15);
        }

        else
        {
          if (!v30)
          {
            goto LABEL_16;
          }

          result = (*(**(a1[1].var0 + 1) + 1024))(*(a1[1].var0 + 1), value, 1, 0.0, 0.0);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5) <= 1 && (!v30 || vabdd_f64(*&v37.value, v11) < 0.0000001))
        {
LABEL_16:
          if (value)
          {
            result = (*(**(a1[1].var0 + 1) + 1016))(*(a1[1].var0 + 1), v30, 1, 0.0, 0.0);
          }

          goto LABEL_19;
        }

        result = (*(**(a1[1].var0 + 1) + 992))(*(a1[1].var0 + 1), v35, 1, v14, v16);
LABEL_19:
        v8 = v9;
        v7 = *a3;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5) > v9++);
    }
  }

  return result;
}

uint64_t OZChannel::hasKeypointAt(OZChannel *this, const CMTime *a2)
{
  v5 = 0;
  v2 = *(this->var14 + 1);
  (*(this->var0 + 41))(v4);
  return (*(*v2 + 696))(v2, v4, &v5);
}

uint64_t OZChannel::allHaveKeypointsAt(OZChannel *this, const CMTime *a2)
{
  v5 = 0;
  v2 = *(this->var14 + 1);
  (*(this->var0 + 41))(v4);
  return (*(*v2 + 696))(v2, v4, &v5);
}

uint64_t OZChannel::numberOfKeypointsAt(OZChannel *this, const CMTime *a2)
{
  v5 = 0;
  v2 = *(this->var14 + 1);
  (*(this->var0 + 41))(v4);
  return (*(*v2 + 696))(v2, v4, &v5);
}

uint64_t OZChannel::addKeypointAt(OZChannel *this, const CMTime *a2)
{
  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6) && OZChannelFolder::testFoldFlag(this->var6, 0x100000))
  {
    v5 = this->var6;
    if (v5)
    {
    }

    v6 = *(*v5 + 752);

    return v6(v5, this, a2, 0);
  }

  else
  {
    result = OZChannelBase::isLocked(this, 0);
    if ((result & 1) == 0)
    {
      (*(this->var0 + 58))(this, 1);
      var14 = this->var14;
      if (var14 && *(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      if (((*(this->var0 + 61))(this) & 1) == 0)
      {
        (*(this->var0 + 60))(this, 1);
      }

      v9 = *(this->var14 + 1);
      (*(this->var0 + 41))(v10, this, a2);
      return (*(*v9 + 544))(v9, v10, 1);
    }
  }

  return result;
}

uint64_t OZChannel::deleteKeypointAt(OZChannel *this, const CMTime *a2)
{
  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6) && OZChannelFolder::testFoldFlag(this->var6, 0x100000))
  {
    v5 = this->var6;
    if (v5)
    {
    }

    v6 = *(*v5 + 768);

    return v6(v5, this, a2, 0);
  }

  else
  {
    result = OZChannelBase::isLocked(this, 0);
    if ((result & 1) == 0)
    {
      (*(this->var0 + 58))(this, 1);
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      v11 = 0;
      v9 = *(var14 + 1);
      (*(this->var0 + 41))(v10, this, a2);
      result = (*(*v9 + 696))(v9, v10, &v11);
      if (v11)
      {
        return (*(**(this->var14 + 1) + 672))(*(this->var14 + 1), v11, 1);
      }
    }
  }

  return result;
}

uint64_t OZChannel::deleteKeypoints(OZChannel *this, const CMTime *a2, const CMTime *a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    (*(this->var0 + 58))(this, 1);
    v6 = *(**(this->var14 + 1) + 680);

    return v6();
  }

  return result;
}

uint64_t OZChannel::previousKeypoint(OZChannel *this, CMTime *a2)
{
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v9 = 0;
  v4 = *(this->var14 + 1);
  (*(this->var0 + 41))(&v7);
  v5 = (*(*v4 + 744))(v4, &v7, &v10, &v9);
  if (v5)
  {
    (*(this->var0 + 42))(&v7, this, &v10);
    *&a2->value = v7;
    a2->epoch = v8;
  }

  return v5;
}

uint64_t OZChannel::nextKeypoint(OZChannel *this, CMTime *a2)
{
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v9 = 0;
  v4 = *(this->var14 + 1);
  (*(this->var0 + 41))(&v7);
  v5 = (*(*v4 + 736))(v4, &v7, &v10, &v9);
  if (v5)
  {
    (*(this->var0 + 42))(&v7, this, &v10);
    *&a2->value = v7;
    a2->epoch = v8;
  }

  return v5;
}

void *OZChannel::moveKeypointTo@<X0>(OZChannel *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = *a3;
  var6 = this->var6;
  if (var6 && (*(*var6 + 120))(var6) && OZChannelFolder::testFoldFlag(this->var6, 0x100000))
  {
    v12 = this->var6;
    if (v12)
    {
    }

    return (*(*v12 + 760))(v12, this, a2, &v21, a4, a5, 0);
  }

  else
  {
    result = OZChannelBase::isLocked(this, 0);
    if (result)
    {
      *a6 = *&a2->value;
      epoch = a2->epoch;
    }

    else
    {
      v20 = 0;
      (*(this->var0 + 58))(this, 1);
      var14 = this->var14;
      if (var14 && *(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      if (((*(this->var0 + 61))(this) & 1) == 0)
      {
        (*(this->var0 + 60))(this, 1);
      }

      v16 = *(this->var14 + 1);
      (*(this->var0 + 41))(&v19, this, a2);
      result = (*(*v16 + 696))(v16, &v19, &v20);
      v17 = v20;
      if (v20)
      {
        v18 = *(this->var14 + 1);
        (*(this->var0 + 41))(&v19, this, &v21);
        (*(*v18 + 656))(v18, v17, &v19, 1, a5, a4);
        (*(**(this->var14 + 1) + 752))();
        result = (*(this->var0 + 42))(&v19, this, &v21);
        v21 = v19;
      }

      *a6 = *&v21.value;
      epoch = v21.epoch;
    }

    *(a6 + 16) = epoch;
  }

  return result;
}

uint64_t OZChannel::retimeKeypoints(OZChannel *this, double a2, const CMTime *a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    result = OZChannelBase::testFlag(this, 0x20000);
    if ((result & 1) == 0)
    {
      v8 = *(**(this->var14 + 1) + 456);
      v7.n128_f64[0] = a2;

      return v8(v7);
    }
  }

  return result;
}

uint64_t OZChannel::adjustToFrameDuration(OZChannel *this, const CMTime *a2)
{
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v3 = *(**(var14 + 1) + 464);

  return v3();
}

void OZChannel::bake(OZChannel *this, const PCTimeRange *a2, const CMTime *a3)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) == 0)
  {
    (*(**(this->var14 + 1) + 1144))();
  }
}

void sub_25FE730E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double OZChannel::getBakeParameters(OZChannel *this, const PCTimeRange *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  v14 = *a2;
  (*(this->var0 + 41))(&v15);
  *a3 = v15;
  v15 = *a2;
  v14 = *(a2 + 1);
  v10.n128_f64[0] = PC_CMTimeSaferAdd(&v15, &v14, v13);
  (*(this->var0 + 41))(&v15, this, v13, v10);
  *a4 = v15;
  ChannelRootBase = OZChannelBase::getChannelRootBase(this);
  if (ChannelRootBase)
  {
    (*(*ChannelRootBase + 880))(&v15);
  }

  else
  {
    CMTimeMake(&v15, 1, 30);
  }

  result = *&v15.value;
  *a5 = v15;
  return result;
}

uint64_t OZChannel::simplify(OZChannel *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, double a5, uint64_t a6, uint64_t a7, int a8)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v24 = 0.0;
    v25 = 0.0;
    (*(**(var14 + 1) + 240))(*(var14 + 1), &v25, 0);
    (*(**(this->var14 + 1) + 248))(*(this->var14 + 1), &v24, 0);
    v18 = vabdd_f64(v25, v24);
    if (v18 >= 0.0000001)
    {
      v19 = a5 / 100.0 * v18;
      if (!a8)
      {
LABEL_10:
        v20 = *(this->var14 + 1);
        (*(this->var0 + 41))(v23, this, a2);
        (*(this->var0 + 41))(v22, this, a3);
        v21.n128_u64[0] = *(this->var16 + 5);
        return (*(*v20 + 496))(v20, v23, v22, a4, a6, a7, v19, v21);
      }
    }

    else
    {
      v19 = *(this->var16 + 3);
      if (!a8)
      {
        goto LABEL_10;
      }
    }

    if (v19 > *(this->var16 + 4))
    {
      v19 = *(this->var16 + 4);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t OZChannel::generateKeys(OZChannel *this)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v4 = *(**(var14 + 1) + 824);

    return v4();
  }

  return result;
}

BOOL OZChannel::getCurrentMinAndMax(OZChannel *this, CMTime *a2, CMTime *a3, unint64_t a4, unint64_t a5)
{
  v5 = (a4 | a5) != 0;
  if (a4 | a5)
  {
    OZChannelSegmentVisitor::OZChannelSegmentVisitor(_8);
    _8[0].value = &unk_287248A20;
    *&_8[0].timescale = xmmword_260848FA0;
    OZChannelSegmentVisitor::visitSegments(this, a2, a3, _8, v11);
    if (a4)
    {
      *a4 = *&_8[0].timescale;
    }

    if (a5)
    {
      *a5 = _8[0].epoch;
    }

    OZChannelBase::setRangeName(_8, v12);
  }

  return v5;
}

OZChannelImpl *OZChannel::setOwnerChannel(OZChannel *this, OZChannel *a2)
{
  result = this->var14;
  v3 = *(result + 1);
  if (*(v3 + 152) != a2)
  {
    if (*(result + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(result);
    }

    *(v3 + 152) = a2;
  }

  return result;
}

uint64_t OZChannel::setParametric(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v6 = 0;
    result = (*(**(this->var14 + 1) + 112))(*(this->var14 + 1), &v6);
    if (v6 != a2)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      return (*(**(var14 + 1) + 104))(*(var14 + 1), a2);
    }
  }

  return result;
}

uint64_t OZChannel::isParametric(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 112))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setDiscrete(OZChannel *this, uint64_t a2, char a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v8 = 0;
    result = (*(**(this->var14 + 1) + 176))(*(this->var14 + 1), &v8);
    if (v8 != a2)
    {
      var14 = this->var14;
      if ((a3 & 1) == 0 && *(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      return (*(**(var14 + 1) + 168))(*(var14 + 1), a2);
    }
  }

  return result;
}

uint64_t OZChannel::isDiscrete(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 176))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setShouldCreateTangents(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v6 = 0;
    result = (*(**(this->var14 + 1) + 144))(*(this->var14 + 1), &v6);
    if (v6 != a2)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      return (*(**(var14 + 1) + 136))(*(var14 + 1), a2);
    }
  }

  return result;
}

uint64_t OZChannel::reparametrizeChannel(OZChannel *this)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v4 = *(**(var14 + 1) + 472);

    return v4();
  }

  return result;
}

uint64_t OZChannel::setInterpolation(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v6 = 0;
    result = (*(**(this->var14 + 1) + 304))(*(this->var14 + 1), &v6);
    if (v6 != a2)
    {
      (*(this->var0 + 58))(this, 1);
      v5 = this->var14;
      if (*(v5 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(v5);
      }

      return (*(**(v5 + 1) + 296))(*(v5 + 1), a2);
    }
  }

  return result;
}

uint64_t OZChannel::getInterpolation(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 304))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setCustomInterpolator(OZChannelBase *a1)
{
  result = OZChannelBase::isLocked(a1, 0);
  if ((result & 1) == 0)
  {
    var0 = a1[1].var0;
    if (*(var0 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var0);
    }

    v4 = *(*var0[1] + 320);

    return v4();
  }

  return result;
}

uint64_t OZChannel::setExtrapolation(OZChannel *this, uint64_t a2, uint64_t a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v8 = 0;
    result = (*(**(this->var14 + 1) + 336))(*(this->var14 + 1), &v8, a3);
    if (v8 != a2)
    {
      (*(this->var0 + 58))(this, 1);
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      return (*(**(var14 + 1) + 328))(*(var14 + 1), a2, a3);
    }
  }

  return result;
}

uint64_t OZChannel::getExtrapolation(OZChannel *this, uint64_t a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 336))(*(this->var14 + 1), &v3, a2);
  return v3;
}

uint64_t OZChannel::closeParametricCurve(OZChannel *this)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    v4 = 0;
    result = (*(**(this->var14 + 1) + 128))(*(this->var14 + 1), &v4);
    if ((v4 & 1) == 0)
    {
      var14 = this->var14;
      if (*(var14 + 32) == 1)
      {
        OZChannelImpl::createLocalCopy(var14);
      }

      return (*(**(var14 + 1) + 120))(*(var14 + 1));
    }
  }

  return result;
}

uint64_t OZChannel::isParametricCurveClosed(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 128))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::setUseRetimingExtrapolation(OZChannel *this, uint64_t a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    result = (*(**(var14 + 1) + 344))(*(var14 + 1), a2);
    *(*(this->var14 + 1) + 152) = this;
  }

  return result;
}

uint64_t OZChannel::resetCurve(OZChannel *this)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    (*(**(var14 + 1) + 184))(*(var14 + 1));

    return OZChannel::resetLocalChannelImplementation(this);
  }

  return result;
}

uint64_t OZChannel::getKeyframeMinTime@<X0>(OZChannel *this@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  *(a2 + 16) = *(v3 + 16);
  return (*(**(this->var14 + 1) + 232))();
}

uint64_t OZChannel::getKeyframeMaxTime@<X0>(OZChannel *this@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  *(a2 + 16) = *(v3 + 16);
  return (*(**(this->var14 + 1) + 224))();
}

double OZChannel::getKeyframeMinValue(OZChannel *this, uint64_t a2)
{
  v3 = 0.0;
  (*(**(this->var14 + 1) + 248))(*(this->var14 + 1), &v3, a2);
  return v3;
}

double OZChannel::getKeyframeMaxValue(OZChannel *this, uint64_t a2)
{
  v3 = 0.0;
  (*(**(this->var14 + 1) + 240))(*(this->var14 + 1), &v3, a2);
  return v3;
}

void std::vector<CMTime>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
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
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

double OZChannel::getCurveValue(OZChannel *this, const CMTime *a2, int a3)
{
  v3 = **(this->var14 + 1);
  if (a3)
  {
    (*(v3 + 616))(0.0);
  }

  else
  {
    (*(v3 + 624))(0.0);
  }

  return 0.0;
}

uint64_t OZChannel::getKeyframe(OZChannel *this, const CMTime *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 696))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getKeyframeParametricRange@<X0>(OZChannel *this@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CC08F0];
  *a2 = *MEMORY[0x277CC08F0];
  *(a2 + 16) = *(v3 + 16);
  return (*(**(this->var14 + 1) + 288))();
}

uint64_t OZChannel::getSamples(uint64_t a1)
{
  return (*(**(*(a1 + 112) + 8) + 368))();
}

{
  return (*(**(*(a1 + 112) + 8) + 376))();
}

{
  return (*(**(*(a1 + 112) + 8) + 392))();
}

double OZChannel::getCurveValueForNode(OZChannel *this, const CMTime *a2, void *a3, double a4)
{
  v5 = 0.0;
  (*(**(this->var14 + 1) + 632))(*(this->var14 + 1), a2, &v5, a3, a4);
  return v5;
}

uint64_t OZChannel::setKeyframe(OZChannel *this, const CMTime *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 544);

    return v5();
  }

  return result;
}

uint64_t OZChannel::setKeyframe(OZChannel *this, void *a2, const CMTime *a3, double a4)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v9 = *(**(var14 + 1) + 560);
    v7.n128_f64[0] = a4;

    return v9(v7);
  }

  return result;
}

uint64_t OZChannel::appendKeyframe(OZChannel *this, const CMTime *a2, double a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(**(var14 + 1) + 576);
    v6.n128_f64[0] = a3;

    return v8(v6);
  }

  return result;
}

uint64_t OZChannel::appendKeyframes(OZChannel *this, unsigned int a2, CMTime *a3, double *a4)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v7 = *(**(var14 + 1) + 584);

    return v7();
  }

  return result;
}

uint64_t OZChannel::setKeyframeValue(OZChannel *this, void *a2, double a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(**(var14 + 1) + 592);
    v6.n128_f64[0] = a3;

    return v8(v6);
  }

  return result;
}

uint64_t OZChannel::setKeyframesValue(OZChannel *this, double a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v7 = *(**(var14 + 1) + 600);
    v5.n128_f64[0] = a2;

    return v7(v5);
  }

  return result;
}

uint64_t OZChannel::getNextEnabledKeyframe(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 720))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getPreviousEnabledKeyframe(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 704))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::getFirstEnabledKeyframe(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 768))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::getLastEnabledKeyframe(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 784))(*(this->var14 + 1), &v2);
  return v2;
}

uint64_t OZChannel::hasDifferentValuesForRange(OZChannel *this, CMTimeRange *a2)
{
  v6 = 0;
  v7 = 0;
  __p = 0;
  v2 = *(this->var14 + 1);
  v3 = *&a2->start.epoch;
  time1[0] = *&a2->start.value;
  time1[1] = v3;
  time1[2] = *&a2->duration.timescale;
  (*(*v2 + 808))();
  return 0;
}

void sub_25FE74C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannel::deleteKeyframe(OZChannel *this, void *a2)
{
  if (OZChannelBase::isLocked(this, 0))
  {
    return 0;
  }

  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v5 = *(**(var14 + 1) + 672);

  return v5();
}

uint64_t OZChannel::deleteAllKeyframes(OZChannel *this, const CMTime *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 688);

    return v5();
  }

  return result;
}

uint64_t OZChannel::moveKeyframe(OZChannel *this, void *a2, const CMTime *a3)
{
  if (OZChannelBase::isLocked(this, 0))
  {
    return 0;
  }

  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v6 = *(**(var14 + 1) + 656);

  return v6();
}

uint64_t OZChannel::generateKeyframesFromDynamicCurve(OZChannel *this, const CMTime *a2, OZDynamicCurve *a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v6 = *(**(var14 + 1) + 488);

    return v6();
  }

  return result;
}

uint64_t OZChannel::linearTimeWarp(OZChannel *this, double a2, const CMTime *a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(**(var14 + 1) + 456);
    v6.n128_f64[0] = a2;

    return v8(v6);
  }

  return result;
}

uint64_t OZChannel::createCurveSegment(OZChannel *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  if ((OZChannelBase::isLocked(this, 0) & 1) != 0 || !*(this->var14 + 1))
  {
    return 0;
  }

  (*(this->var0 + 58))(this, 1);
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v6 = *(**(var14 + 1) + 520);

  return v6();
}

uint64_t OZChannel::setCurveSegmentValue(OZChannel *this, const CMTime *a2, double a3, int a4)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0 && *(this->var14 + 1))
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v11 = *(var14 + 1);
    if (a4)
    {
      v12 = *(this->var16 + 2);
      v13.n128_u64[0] = (*(this->var0 + 101))(this);
      v14 = *(*v11 + 536);
      v15.n128_f64[0] = a3;
      v16.n128_u64[0] = v12;

      return v14(v11, a2, 1, v15, v16, v13);
    }

    else
    {
      v17 = *(*v11 + 528);
      v18 = *(var14 + 1);
      v9.n128_f64[0] = a3;

      return v17(v18, a2, 1, v9);
    }
  }

  return result;
}

uint64_t OZChannel::deriveKeyframe(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 928);

    return v5();
  }

  return result;
}

uint64_t OZChannel::smoothKeyframe(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 936);

    return v5();
  }

  return result;
}

BOOL OZChannel::isSmoothKeyframe(OZChannel *this, void *a2)
{
  LODWORD(v6) = 0;
  (*(**(this->var14 + 1) + 1072))(*(this->var14 + 1), a2, &v6, 0);
  result = 1;
  if (LODWORD(v6) != 1)
  {
    if (LODWORD(v6) != 4)
    {
      return 0;
    }

    v5 = 0.0;
    v6 = 0.0;
    (*(**(this->var14 + 1) + 1000))(*(this->var14 + 1), a2, &v6, &v5);
    if (fabs(v6) >= 0.0000001)
    {
      return 0;
    }

    if (fabs(v5) >= 0.0000001)
    {
      return 0;
    }

    (*(**(this->var14 + 1) + 1008))(*(this->var14 + 1), a2, &v6, &v5);
    if (fabs(v6) >= 0.0000001 || fabs(v5) >= 0.0000001)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZChannel::setKeyframeInputTangents(OZChannel *this, void *a2, double a3, double a4, int a5)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v13 = **(var14 + 1);
    if (a5)
    {
      v14 = *(v13 + 984);
      v10.n128_f64[0] = a3;
      v11.n128_f64[0] = a4;
    }

    else
    {
      v14 = *(v13 + 1016);
      v10.n128_f64[0] = a3;
      v11.n128_f64[0] = a4;
    }

    return v14(v10, v11);
  }

  return result;
}

uint64_t OZChannel::setKeyframeOutputTangents(OZChannel *this, void *a2, double a3, double a4, int a5)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v13 = **(var14 + 1);
    if (a5)
    {
      v14 = *(v13 + 992);
      v10.n128_f64[0] = a3;
      v11.n128_f64[0] = a4;
    }

    else
    {
      v14 = *(v13 + 1024);
      v10.n128_f64[0] = a3;
      v11.n128_f64[0] = a4;
    }

    return v14(v10, v11);
  }

  return result;
}

uint64_t OZChannel::setKeyframeNormal(OZChannel *this, void *a2, double a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(**(var14 + 1) + 960);
    v6.n128_f64[0] = a3;

    return v8(v6);
  }

  return result;
}

double OZChannel::getKeyframeNormal(OZChannel *this, void *a2)
{
  v3 = 0.0;
  (*(**(this->var14 + 1) + 952))(*(this->var14 + 1), a2, &v3);
  return v3;
}

double OZChannel::getKeyframeNormal(OZChannel *this, const CMTime *a2)
{
  v3 = 0.0;
  (*(**(this->var14 + 1) + 968))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::setKeyframeEnabled(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 856);

    return v5();
  }

  return result;
}

uint64_t OZChannel::setKeyframeTangentsBroken(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 896);

    return v5();
  }

  return result;
}

uint64_t OZChannel::setKeyframeInterpolation(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0)
  {
    var14 = this->var14;
    if (var14 && *(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    (*(this->var0 + 58))(this, 1);
    v5 = *(**(this->var14 + 1) + 1064);

    return v5();
  }

  return result;
}

uint64_t OZChannel::setCurveSegmentSpeed(OZChannel *this, void *a2)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0 && *(this->var14 + 1))
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v5 = *(**(var14 + 1) + 1080);

    return v5();
  }

  return result;
}

uint64_t OZChannel::getCurveSegmentSpeed(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 1088))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::offsetCurveSegmentSpeed(OZChannel *this, void *a2, double a3)
{
  result = OZChannelBase::isLocked(this, 0);
  if ((result & 1) == 0 && *(this->var14 + 1))
  {
    (*(this->var0 + 58))(this, 1);
    var14 = this->var14;
    if (*(var14 + 32) == 1)
    {
      OZChannelImpl::createLocalCopy(var14);
    }

    v8 = *(**(var14 + 1) + 1096);
    v6.n128_f64[0] = a3;

    return v8(v6);
  }

  return result;
}

uint64_t OZChannel::appendCurveProcessingNode(OZChannel *this, void *a2)
{
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v3 = *(**(var14 + 1) + 1104);

  return v3();
}

uint64_t OZChannel::insertCurveProcessingNode(OZChannel *this, void *a2, void *a3)
{
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v4 = *(**(var14 + 1) + 1112);

  return v4();
}

uint64_t OZChannel::deleteCurveProcessingNode(OZChannel *this, void *a2)
{
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v3 = *(**(var14 + 1) + 1120);

  return v3();
}

uint64_t OZChannel::removeCurveProcessingNode(OZChannel *this, void *a2)
{
  var14 = this->var14;
  if (*(var14 + 32) == 1)
  {
    OZChannelImpl::createLocalCopy(var14);
  }

  v3 = *(**(var14 + 1) + 1128);

  return v3();
}

uint64_t OZChannel::getPreviousProcessingNode(OZChannel *this, void *a2)
{
  v3 = 0;
  (*(**(this->var14 + 1) + 1136))(*(this->var14 + 1), a2, &v3);
  return v3;
}

uint64_t OZChannel::enumerateCurveProcessingNodes@<X0>(OZChannel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return (*(**(this->var14 + 1) + 1144))(*(this->var14 + 1), a2);
}

void sub_25FE760EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZChannel::getNumberOfCurveProcessingNodes(OZChannel *this)
{
  v2 = 0;
  (*(**(this->var14 + 1) + 1152))(*(this->var14 + 1), &v2);
  return v2;
}

void OZChannel::visibleKeypoints(OZChannel *this@<X0>, CMTimeRange *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v10 = *&a2->start.epoch;
  v37 = *&a2->start.value;
  v38 = v10;
  v39 = *&a2->duration.timescale;
  (*(this->var0 + 41))(&range);
  *&v38 = range.start.epoch;
  v37 = *&range.start.value;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v11 = *(this->var14 + 1);
  *&range.start.epoch = v38;
  *&range.duration.timescale = v39;
  (*(*v11 + 808))();
  std::vector<CMTime>::reserve(a5, 0);
  start = a2->start;
  v31 = a3;
  if (a3 && (*(this->var0 + 78))(this, &start, a4))
  {
    std::vector<CMTime>::push_back[abi:ne200100](a5, &start.value);
  }

  v12 = __p;
  if (v35 != __p)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      (*(this->var0 + 42))(&range, this, v12 + 40 * v13);
      v16 = a5[1];
      v15 = a5[2];
      if (v16 >= v15)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a5) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a5) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a5, v22);
        }

        v23 = 24 * v19;
        v24 = *&range.start.value;
        *(v23 + 16) = range.start.epoch;
        *v23 = v24;
        v18 = 24 * v19 + 24;
        v25 = a5[1] - *a5;
        v26 = 24 * v19 - v25;
        memcpy((v23 - v25), *a5, v25);
        v27 = *a5;
        *a5 = v26;
        a5[1] = v18;
        a5[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v17 = *&range.start.value;
        *(v16 + 2) = range.start.epoch;
        *v16 = v17;
        v18 = (v16 + 24);
      }

      a5[1] = v18;
      v13 = v14;
      v12 = __p;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v35 - __p) >> 3) > v14++);
  }

  if (v31)
  {
    v29 = *&a2->start.epoch;
    *&range.start.value = *&a2->start.value;
    v30 = *&a2->duration.timescale;
    *&range.start.epoch = v29;
    *&range.duration.timescale = v30;
    CMTimeRangeGetEnd(&v32, &range);
    start = v32;
    if ((*(this->var0 + 79))(this, &start, a4))
    {
      std::vector<CMTime>::push_back[abi:ne200100](a5, &start.value);
    }
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_25FE76504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CMTime>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void OZChannelDouble::~OZChannelDouble(OZChannel *this)
{
  OZChannel::~OZChannel(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelDouble::~OZChannelDouble(OZChannelDouble *this)
{
  OZChannel::~OZChannel((this - 16));
}

{
  OZChannel::~OZChannel((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t std::vector<_OZKeyframeInfo>::__init_with_size[abi:ne200100]<_OZKeyframeInfo*,_OZKeyframeInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_OZKeyframeInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FE76FAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_OZKeyframeInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_OZKeyframeInfo>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_OZKeyframeInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void anonymous namespace::MinMaxValuesVisitor::~MinMaxValuesVisitor(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

uint64_t anonymous namespace::MinMaxValuesVisitor::visitConstant(uint64_t this, double a2, const CMTime *a3, const CMTime *a4)
{
  v4 = *(this + 8);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if (*(this + 16) > a2)
  {
    a2 = *(this + 16);
  }

  *(this + 8) = v4;
  *(this + 16) = a2;
  return this;
}

void anonymous namespace::MinMaxValuesVisitor::visitLinear(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, char *a3, char *a4, const CMTime *a5, const CMTime *a6, const CMTime *a7, const CMTime *a8, __n128 a9)
{
  if (a3 && a4)
  {
    v13 = a9.n128_f64[0];
    OZLinearInterpolator::OZLinearInterpolator(v25);
    OZLinearInterpolator::interpolate(v25, a2, MEMORY[0x277CC08F0], a3, a4, a5);
    v18 = v17;
    OZLinearInterpolator::interpolate(v25, a2, MEMORY[0x277CC08F0], a3, a4, a6);
    v19 = v18 + v13;
    v21 = v20 + v13;
    OZLinearInterpolator::~OZLinearInterpolator(v25);
  }

  else
  {
    v22 = MEMORY[0x277CC08F0];
    v19 = (*(*a2 + 240))(a2, a7, MEMORY[0x277CC08F0], 0, a5, a6, a9);
    v21 = (*(*a2 + 240))(a2, a8, v22, 0);
  }

  if (v19 <= v21)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (v19 <= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v19;
  }

  if (*(this + 1) < v23)
  {
    v23 = *(this + 1);
  }

  if (v24 < *(this + 2))
  {
    v24 = *(this + 2);
  }

  *(this + 1) = v23;
  *(this + 2) = v24;
}

void sub_25FE77238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLinearInterpolator::~OZLinearInterpolator(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::MinMaxValuesVisitor::visitBezier(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, void *a3, void *a4, const CMTime *a5, const CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v21 = 0.0;
  v22 = 0.0;
  OZBezierInterpolator::OZBezierInterpolator(v23);
  time1 = *a5;
  time2 = *a6;
  v16 = CMTimeCompare(&time1, &time2);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZBezierInterpolator::getMinMaxValues(v23, a2, a3, a4, v17, v18, &v22, &v21);
  v21 = v21 + a9;
  v22 = v22 + a9;
  OZBezierInterpolator::~OZBezierInterpolator(v23);
  v19 = v22;
  if (*(this + 1) < v22)
  {
    v19 = *(this + 1);
  }

  v20 = v21;
  if (v21 < *(this + 2))
  {
    v20 = *(this + 2);
  }

  *(this + 1) = v19;
  *(this + 2) = v20;
}

void sub_25FE77340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZBezierInterpolator::~OZBezierInterpolator(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::MinMaxValuesVisitor::visitCatmullRom(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, void *a3, void *a4, const CMTime *a5, const CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v21 = 0.0;
  v22 = 0.0;
  OZCatmullRomInterpolator::OZCatmullRomInterpolator(v23);
  time1 = *a5;
  time2 = *a6;
  v16 = CMTimeCompare(&time1, &time2);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZBezierInterpolator::getMinMaxValues(v23, a2, a3, a4, v17, v18, &v22, &v21);
  v21 = v21 + a9;
  v22 = v22 + a9;
  OZCatmullRomInterpolator::~OZCatmullRomInterpolator(v23);
  v19 = v22;
  if (*(this + 1) < v22)
  {
    v19 = *(this + 1);
  }

  v20 = v21;
  if (v21 < *(this + 2))
  {
    v20 = *(this + 2);
  }

  *(this + 1) = v19;
  *(this + 2) = v20;
}

void sub_25FE77448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZCatmullRomInterpolator::~OZCatmullRomInterpolator(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::MinMaxValuesVisitor::visitEaseIn(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v23 = 0.0;
  v24 = 0.0;
  OZInterpolator::OZInterpolator(&v25);
  v25.var0 = &unk_287249B90;
  *&v25.var5 = *a5;
  *&v25.var1 = *a6;
  v16 = CMTimeCompare(&v25.var5, &v25.var1);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZEaseInInterpolator::getMinMaxValues(&v25, a2, a3, a4, v17, v18, &v24, &v23);
  v23 = v23 + a9;
  v24 = v24 + a9;
  result = OZChannelBase::setRangeName(&v25, v19);
  v21 = v24;
  if (*(this + 1) < v24)
  {
    v21 = *(this + 1);
  }

  v22 = v23;
  if (v23 < *(this + 2))
  {
    v22 = *(this + 2);
  }

  *(this + 1) = v21;
  *(this + 2) = v22;
  return result;
}

uint64_t anonymous namespace::MinMaxValuesVisitor::visitEaseOut(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v23 = 0.0;
  v24 = 0.0;
  OZInterpolator::OZInterpolator(&v25);
  v25.var0 = &unk_287249C28;
  *&v25.var5 = *a5;
  *&v25.var1 = *a6;
  v16 = CMTimeCompare(&v25.var5, &v25.var1);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZEaseInInterpolator::getMinMaxValues(&v25, a2, a3, a4, v17, v18, &v24, &v23);
  v23 = v23 + a9;
  v24 = v24 + a9;
  result = OZChannelBase::setRangeName(&v25, v19);
  v21 = v24;
  if (*(this + 1) < v24)
  {
    v21 = *(this + 1);
  }

  v22 = v23;
  if (v23 < *(this + 2))
  {
    v22 = *(this + 2);
  }

  *(this + 1) = v21;
  *(this + 2) = v22;
  return result;
}

void anonymous namespace::MinMaxValuesVisitor::visitEase(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v21 = 0.0;
  v22 = 0.0;
  OZLinearInterpolator::OZLinearInterpolator(&v23);
  v23 = &unk_287249AF8;
  time1 = *a5;
  time2 = *a6;
  v16 = CMTimeCompare(&time1, &time2);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZLinearInterpolator::getMinMaxValues(&v23, a2, a3, a4, v17, v18, &v22, &v21);
  v21 = v21 + a9;
  v22 = v22 + a9;
  OZEaseInInterpolator::~OZEaseInInterpolator(&v23);
  v19 = v22;
  if (*(this + 1) < v22)
  {
    v19 = *(this + 1);
  }

  v20 = v21;
  if (v21 < *(this + 2))
  {
    v20 = *(this + 2);
  }

  *(this + 1) = v19;
  *(this + 2) = v20;
}

void sub_25FE777D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZEaseInInterpolator::~OZEaseInInterpolator(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::MinMaxValuesVisitor::visitAccelerate(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v21 = 0.0;
  v22 = 0.0;
  OZLinearInterpolator::OZLinearInterpolator(&v23);
  v23 = &unk_287249658;
  time1 = *a5;
  time2 = *a6;
  v16 = CMTimeCompare(&time1, &time2);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZLinearInterpolator::getMinMaxValues(&v23, a2, a3, a4, v17, v18, &v22, &v21);
  v21 = v21 + a9;
  v22 = v22 + a9;
  OZEaseInInterpolator::~OZEaseInInterpolator(&v23);
  v19 = v22;
  if (*(this + 1) < v22)
  {
    v19 = *(this + 1);
  }

  v20 = v21;
  if (v21 < *(this + 2))
  {
    v20 = *(this + 2);
  }

  *(this + 1) = v19;
  *(this + 2) = v20;
}

void sub_25FE77908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZEaseInInterpolator::~OZEaseInInterpolator(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::MinMaxValuesVisitor::visitDecelerate(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v21 = 0.0;
  v22 = 0.0;
  OZLinearInterpolator::OZLinearInterpolator(&v23);
  v23 = &unk_287249A60;
  time1 = *a5;
  time2 = *a6;
  v16 = CMTimeCompare(&time1, &time2);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZLinearInterpolator::getMinMaxValues(&v23, a2, a3, a4, v17, v18, &v22, &v21);
  v21 = v21 + a9;
  v22 = v22 + a9;
  OZEaseInInterpolator::~OZEaseInInterpolator(&v23);
  v19 = v22;
  if (*(this + 1) < v22)
  {
    v19 = *(this + 1);
  }

  v20 = v21;
  if (v21 < *(this + 2))
  {
    v20 = *(this + 2);
  }

  *(this + 1) = v19;
  *(this + 2) = v20;
}

void sub_25FE77A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZEaseInInterpolator::~OZEaseInInterpolator(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::MinMaxValuesVisitor::visitExponential(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v23 = 0.0;
  v24 = 0.0;
  OZInterpolator::OZInterpolator(&v25);
  v25.var0 = &unk_287249CC0;
  *&v25.var5 = *a5;
  *&v25.var1 = *a6;
  v16 = CMTimeCompare(&v25.var5, &v25.var1);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZEaseInInterpolator::getMinMaxValues(&v25, a2, a3, a4, v17, v18, &v24, &v23);
  v23 = v23 + a9;
  v24 = v24 + a9;
  result = OZChannelBase::setRangeName(&v25, v19);
  v21 = v24;
  if (*(this + 1) < v24)
  {
    v21 = *(this + 1);
  }

  v22 = v23;
  if (v23 < *(this + 2))
  {
    v22 = *(this + 2);
  }

  *(this + 1) = v21;
  *(this + 2) = v22;
  return result;
}

uint64_t anonymous namespace::MinMaxValuesVisitor::visitLogarithmic(_anonymous_namespace_::MinMaxValuesVisitor *this, OZSpline *a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, const CMTime *a7, const CMTime *a8, double a9)
{
  v23 = 0.0;
  v24 = 0.0;
  OZInterpolator::OZInterpolator(&v25);
  v25.var0 = &unk_287249F88;
  *&v25.var5 = *a5;
  *&v25.var1 = *a6;
  v16 = CMTimeCompare(&v25.var5, &v25.var1);
  if (v16 <= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if (v16 <= 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = a5;
  }

  OZEaseInInterpolator::getMinMaxValues(&v25, a2, a3, a4, v17, v18, &v24, &v23);
  v23 = v23 + a9;
  v24 = v24 + a9;
  result = OZChannelBase::setRangeName(&v25, v19);
  v21 = v24;
  if (*(this + 1) < v24)
  {
    v21 = *(this + 1);
  }

  v22 = v23;
  if (v23 < *(this + 2))
  {
    v22 = *(this + 2);
  }

  *(this + 1) = v21;
  *(this + 2) = v22;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<OZChannel *,std::vector<_OZKeyframeInfo>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void OZCurve::OZCurve(OZCurve *this, double a2, double a3, double a4, double a5)
{
  *this = &unk_287248AB0;
  v6 = (this + 40);
  OZConstantNode::OZConstantNode((this + 16), a5);
  OZSplineNode::OZSplineNode(v6, this);
  *(this + 13) = 0;
  operator new();
}

void sub_25FE78098(_Unwind_Exception *a1)
{
  OZSplineNode::~OZSplineNode(v2);
  OZConstantNode::~OZConstantNode(v1);
  _Unwind_Resume(a1);
}

void OZCurve::OZCurve(OZCurve *this, const OZCurve *a2)
{
  *this = &unk_287248AB0;
  v4 = (this + 40);
  OZConstantNode::OZConstantNode((this + 16), 0.0);
  OZSplineNode::OZSplineNode(v4, this);
  *(this + 13) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 20);
  if ((*(v5 + 44) & 1) == 0)
  {
    operator new();
  }

  *(this + 20) = v5;
  operator new();
}

void sub_25FE78228(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v3, 0x1000C40C6C45C81);
  OZSplineNode::~OZSplineNode(v2);
  OZConstantNode::~OZConstantNode(v1);
  _Unwind_Resume(a1);
}

void OZCurve::cloneTree(OZCurve *this, const OZCurve *a2)
{
  v2 = *(a2 + 14);
  v3 = *v2;
  if (v2[1] != *v2)
  {
    v6 = 1;
    do
    {
      v7 = *(this + 14);
      v8 = (*(**v3 + 128))();
      v10 = *(v7 + 8);
      v9 = *(v7 + 16);
      if (v10 >= v9)
      {
        v12 = (v10 - *v7) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - *v7;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(v7, v15);
        }

        v16 = (8 * v12);
        *v16 = v8;
        v11 = 8 * v12 + 8;
        v17 = *(v7 + 8) - *v7;
        v18 = v16 - v17;
        memcpy(v16 - v17, *v7, v17);
        v19 = *v7;
        *v7 = v18;
        *(v7 + 8) = v11;
        *(v7 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v10 = v8;
        v11 = (v10 + 1);
      }

      *(v7 + 8) = v11;
      v3 += 8;
      v20 = v6++;
    }

    while (v20 < (*(*(a2 + 14) + 8) - **(a2 + 14)) >> 3);
  }
}

void OZCurve::~OZCurve(OZCurve *this)
{
  *this = &unk_287248AB0;
  v2 = *(this + 14);
LABEL_2:
  v3 = *v2;
  while (1)
  {
    v4 = *(v2 + 8);
    if (v3 == v4)
    {
      break;
    }

    v5 = *(v4 - 1);
    *(v2 + 8) = v4 - 1;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v2 = *(this + 14);
      goto LABEL_2;
    }
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2666E9F00](v2, 0x80C40D6874129);
  *(this + 14) = 0;
  v6 = *(this + 13);
  if (v6)
  {
    (*(*v6 + 8))(v6);
    *(this + 13) = 0;
  }

  if ((*(*(this + 20) + 44) & 1) == 0)
  {
    MEMORY[0x2666E9F00]();
    *(this + 20) = 0;
  }

  OZSplineNode::~OZSplineNode((this + 40));
  OZConstantNode::~OZConstantNode((this + 16));
}

__n128 OZCurve::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  v5 = *(a1 + 160);
  if (*(v4 + 44))
  {
    if ((*(v5 + 44) & 1) == 0)
    {
      MEMORY[0x2666E9F00]();
      *(a1 + 160) = 0;
      v4 = *(a2 + 160);
    }

    *(a1 + 160) = v4;
  }

  else
  {
    if (*(v5 + 44))
    {
      operator new();
    }

    OZSplineState::operator=(v5, v4);
  }

  OZConstantNode::operator=(a1 + 16, a2 + 16);
  v6 = a1 + 40;
  OZSplineNode::operator=((a1 + 40), a2 + 40);
  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  if (v7)
  {
    if (!v8)
    {
      operator new();
    }

    OZRecordingNode::operator=(v8, v7);
  }

  else if (v8)
  {
    (*(*v8 + 8))(v8);
    *(a1 + 104) = 0;
  }

  v9 = *(a2 + 168);
  *(a1 + 168) = v9;
  if (v9)
  {
    if (v9 != 1)
    {
      v6 = *(a1 + 104);
    }
  }

  else
  {
    v6 = a1 + 16;
  }

  *(a1 + 8) = v6;
  result = *(a2 + 120);
  *(a1 + 120) = result;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  return result;
}

uint64_t OZCurve::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128) || !OZConstantNode::operator==(a1 + 16) || *(a1 + 136) != *(a2 + 136) || *(a1 + 137) != *(a2 + 137) || *(a1 + 138) != *(a2 + 138) || !OZConstantNode::operator==(a1 + 40) || !OZSplineState::operator==(*(a1 + 160), *(a2 + 160), v4, v5))
  {
    return 0;
  }

  v6 = *(**(a1 + 8) + 136);

  return v6();
}

uint64_t OZCurve::setSplineState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4 && (*(v4 + 44) & 1) == 0)
  {
    MEMORY[0x2666E9F00]();
  }

  *(a1 + 160) = a2;
  result = PVInstructionGraphContext::HGNodeCache((a1 + 40));
  if (result)
  {
    result = PVInstructionGraphContext::HGNodeCache((a1 + 40));
    *(result + 168) = a2;
  }

  return result;
}

uint64_t OZCurve::createLocalSplineState(OZCurve *this)
{
  *(this + 20) = OZSplineState::createLocalCopy(*(this + 20));
  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return *(this + 20);
  }

  v2 = PVInstructionGraphContext::HGNodeCache((this + 40));
  result = *(this + 20);
  *(v2 + 168) = result;
  return result;
}

uint64_t OZSplineState::createLocalCopy(uint64_t this)
{
  if (*(this + 44) == 1)
  {
    operator new();
  }

  return this;
}

double OZCurve::setRootNode(OZCurve *this, const CMTime *a2, double a3)
{
  v5 = (this + 40);
  *(this + 1) = this + 40;
  if (!PVInstructionGraphContext::HGNodeCache((this + 40)) || (v6 = PVInstructionGraphContext::HGNodeCache(v5), ((*(v6 + 24) - *(v6 + 16)) & 0x7FFFFFFF8) == 0))
  {
    *(this + 6) = a3;
  }

  result = *(this + 4);
  *(this + 7) = result;
  *(this + 3) = a3;
  *(this + 42) = 1;
  return result;
}

uint64_t OZCurve::getCurrentRangeU(OZCurve *this, CMTime *a2)
{
  if (a2)
  {
    (*(**(this + 1) + 112))(&v4);
    *a2 = v4;
  }

  return 1;
}

uint64_t OZCurve::getCurrentMaxValueU(OZCurve *this, CMTime *a2)
{
  (*(**(this + 1) + 160))(&v4);
  *a2 = v4;
  return 1;
}

uint64_t OZCurve::getCurrentMinValueU(OZCurve *this, CMTime *a2)
{
  (*(**(this + 1) + 168))(&v4);
  *a2 = v4;
  return 1;
}

uint64_t OZCurve::getCurveDefaultValue(OZCurve *this, double *a2)
{
  if (a2)
  {
    *a2 = (*(**(this + 1) + 80))(*(this + 1));
  }

  return 1;
}

uint64_t OZCurve::getCurveInitialValue(OZCurve *this, double *a2)
{
  if (a2)
  {
    v4 = (*(**(this + 1) + 96))(*(this + 1));
    v5 = *(this + 16);
    if (v4 <= v5)
    {
      v5 = v4;
    }

    if (v4 >= *(this + 15))
    {
      v6 = v5;
    }

    else
    {
      v6 = *(this + 15);
    }

    *a2 = v6;
  }

  return 1;
}

void OZCurve::setIsSpline(OZCurve *this, int a2, const CMTime *a3)
{
  v4 = *(this + 42);
  if (a2)
  {
    if (!v4)
    {
      (*(**(this + 1) + 16))(*(this + 1), MEMORY[0x277CC08F0], a3, 0.0, 0.0);

      OZCurve::setRootNode(this, v5, v6);
    }
  }

  else if (v4 == 1)
  {
    v7 = OZSplineNode::solveNode((this + 40), a3, 0.0, 0.0);
    *(this + 6) = v7;
    v8 = *(this + 7);
    *(this + 3) = v7;
    *(this + 4) = v8;
    *(this + 1) = this + 16;
    *(this + 42) = 0;
  }
}

BOOL OZCurve::isAnimated(OZCurve *this)
{
  result = 0;
  if (*(this + 138) == 1)
  {
    if (*(OZCoreGlobals::getInstance(this) + 8))
    {
      return 1;
    }

    if (PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      v2 = PVInstructionGraphContext::HGNodeCache((this + 40));
      if (((*(v2 + 24) - *(v2 + 16)) & 0x7FFFFFFF8) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL OZCurve::isCurveAnimated(OZCurve *this, BOOL *a2)
{
  v5 = 1;
  if ((*(OZCoreGlobals::getInstance(this) + 8) & 1) == 0)
  {
    if (!PVInstructionGraphContext::HGNodeCache((this + 40)) || (v4 = PVInstructionGraphContext::HGNodeCache((this + 40)), ((*(v4 + 24) - *(v4 + 16)) & 0x7FFFFFFF8) == 0))
    {
      v5 = 0;
    }
  }

  *a2 = v5;

  return OZCurve::isAnimated(this);
}

BOOL OZCurve::getCurveType(OZCurve *this, unsigned int *a2)
{
  if (a2)
  {
    *a2 = (*(this + 42) - 1) < 2;
  }

  return a2 != 0;
}

uint64_t OZCurve::setCurveType(OZCurve *this, int a2)
{
  v2 = 0;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (a2 == 3 || a2 == 1)
  {
    LODWORD(v2) = 1;
LABEL_5:
    OZCurve::setIsSpline(this, v2, MEMORY[0x277CC08F0]);
    return 1;
  }

  return v2;
}

uint64_t OZCurve::setCurveDeriveTangents(OZCurve *this, int a2)
{
  if (*(*(this + 20) + 2) != a2)
  {
    v2 = a2;
    LocalSplineState = OZCurve::createLocalSplineState(this);
    *(this + 20) = LocalSplineState;
    *(LocalSplineState + 2) = v2;
  }

  return 1;
}

OZCurve *OZCurve::setTreeProperties(OZCurve *this)
{
  *(this + 68) = 1;
  v1 = **(this + 14);
  if (*(*(this + 14) + 8) != v1)
  {
    v2 = this;
    do
    {
      if (((*(**v1 + 176))() & 1) == 0)
      {
        *(v2 + 136) = 0;
      }

      this = (*(**v1 + 184))();
      if (this)
      {
        *(v2 + 137) = 1;
      }

      v1 += 8;
    }

    while (v1 != *(*(v2 + 14) + 8));
  }

  return this;
}

uint64_t OZCurve::processCurve(OZCurve *this, OZCurveNodeParam *a2, double *a3, void *a4)
{
  if (!a4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    operator new();
  }

  v4 = *(this + 14);
  v6 = *v4;
  v5 = v4[1];
  if (v6 != v5)
  {
    do
    {
      v7 = *v6;
      v6 += *v6 != a4;
    }

    while (v6 != v5 && v7 != a4);
    if (v7 == a4)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      operator new();
    }
  }

  return 0;
}

void sub_25FE79464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::pair<OZCurveNode *,OZCurveNodeParam *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::pair<OZCurveNode *,OZCurveNodeParam *>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, v10);
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

uint64_t OZCurve::processTree(OZCurve *this, OZCurveNodeParam *a2, CMTime **a3, double **a4)
{
  v16 = *(a2 + 4);
  v6 = *(this + 14);
  v8 = *v6;
  v7 = v6[1];
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v7 - 8);
  }

  v10 = OZCurve::processCurve(this, a2, a3, v9);
  if (a3 && *(a2 + 36))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = &(*a3)[v11];
      v14 = *&v16.value;
      v13->epoch = v16.epoch;
      *&v13->value = v14;
      v18 = v16;
      v17 = *(a2 + 5);
      PC_CMTimeSaferAdd(&v18, &v17, &v16);
      ++v12;
      ++v11;
    }

    while (v12 < *(a2 + 36));
  }

  return v10;
}

uint64_t OZCurve::processTree(OZCurve *this, OZCurveNodeParam *a2, CMTime **a3, double **a4, void *a5)
{
  v13 = *(a2 + 4);
  v7 = OZCurve::processCurve(this, a2, a3, a5);
  if (a3 && *a3 && *(a2 + 36))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = &(*a3)[v8];
      v11 = *&v13.value;
      v10->epoch = v13.epoch;
      *&v10->value = v11;
      v15 = v13;
      v14 = *(a2 + 5);
      PC_CMTimeSaferAdd(&v15, &v14, &v13);
      ++v9;
      ++v8;
    }

    while (v9 < *(a2 + 36));
  }

  return v7;
}

BOOL OZCurve::getSplineSamplesAndIgnoreLinear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = PVInstructionGraphContext::HGNodeCache((a1 + 40));
  if (v12)
  {
    v13 = PVInstructionGraphContext::HGNodeCache((a1 + 40));
    (*(*v13 + 80))(v13, a2, a3, a4, a5, a6);
  }

  return v12 != 0;
}

uint64_t OZCurve::getCurveDerivativesSamples(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = PVInstructionGraphContext::HGNodeCache((a1 + 40));
  (*(*v11 + 64))(v11, a2, a3, a4, a5, a6, MEMORY[0x277CC08F0]);
  return 1;
}

uint64_t OZCurve::getCurveSamples(OZCurve *a1, int *a2, uint64_t a3, uint64_t a4, Float64 a5, Float64 a6)
{
  v13 = 1;
  v14 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = **&MEMORY[0x277CC08F0];
  v16 = v15;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v20 = v15;
  v21 = v15;
  v12 = 0;
  if (a4)
  {
    operator new[]();
  }

  OZFigTimeForChannelSeconds(&time, a5, 0x40000);
  v20 = time;
  v22 = *a2;
  OZFigTimeForChannelSeconds(&time, a6, 0x40000);
  v21 = time;
  HIBYTE(v13) = 0;
  v23 = 0;
  v14 = 0;
  if (a3)
  {
    operator new[]();
  }

  OZCurve::processTree(a1, &v13, 0, &v12);
  OZCurveNodeParam::~OZCurveNodeParam(&v13);
  return 1;
}

void sub_25FE79C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t OZCurve::getCurveSamples(OZCurve *a1, __int128 *a2, __int128 *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v8 = 1;
  v9 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v12 = v10;
  v13 = v11;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = v11;
  v17 = v10;
  v19 = v10;
  v20 = v11;
  v7 = 0;
  if (a6)
  {
    operator new[]();
  }

  v17 = *a2;
  v18 = *(a2 + 2);
  v21 = *a4;
  v19 = *a3;
  v20 = *(a3 + 2);
  v22 = 0;
  HIBYTE(v8) = 0;
  v9 = 0;
  if (a5)
  {
    operator new[]();
  }

  OZCurve::processTree(a1, &v8, 0, &v7);
  OZCurveNodeParam::~OZCurveNodeParam(&v8);
  return 1;
}

void sub_25FE79F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

uint64_t OZCurve::getCurveSamples(OZCurve *a1, void *a2, __int128 *a3, __int128 *a4, int *a5, uint64_t a6, uint64_t a7)
{
  v8 = 1;
  v9 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v12 = v10;
  v13 = v11;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = v11;
  v17 = v10;
  v19 = v10;
  v20 = v11;
  if (a7)
  {
    operator new[]();
  }

  v17 = *a3;
  v18 = *(a3 + 2);
  v21 = *a5;
  v19 = *a4;
  v20 = *(a4 + 2);
  v22 = 0;
  HIBYTE(v8) = 0;
  v9 = 0;
  if (a6)
  {
    operator new[]();
  }

  OZCurve::processCurve(a1, &v8, a3, a2);
  OZCurveNodeParam::~OZCurveNodeParam(&v8);
  return 1;
}

void sub_25FE7A1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

uint64_t OZCurve::getCurveSamples(OZCurve *this, Float64 a2, Float64 a3, unsigned int *a4, double **a5, double **a6, double a7)
{
  v15 = 1;
  v16 = 0.0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v17 = **&MEMORY[0x277CC08F0];
  v18 = v17;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22 = v17;
  v23 = v17;
  OZFigTimeForChannelSeconds(&time, a2, 0x40000);
  v22 = time;
  v24 = *a4;
  OZFigTimeForChannelSeconds(&time, a3, 0x40000);
  v23 = time;
  v25 = *a6;
  HIBYTE(v15) = 0;
  v16 = a7;
  if (a5)
  {
    operator new[]();
  }

  OZCurve::processTree(this, &v15, 0, a6);
  *a4 = v24;
  OZCurveNodeParam::~OZCurveNodeParam(&v15);
  return 1;
}

void sub_25FE7A3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

uint64_t OZCurve::getCurveSamples(OZCurve *this, void *a2, const CMTime *a3, const CMTime *a4, unsigned int *a5, CMTime **a6, double **a7)
{
  v9 = 1;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *MEMORY[0x277CC08F0];
  v12 = *(MEMORY[0x277CC08F0] + 16);
  v13 = v11;
  v14 = v12;
  v22 = 0;
  v18 = *a3;
  v20 = *a5;
  v19 = *a4;
  v21 = *a7;
  v10 = 0;
  OZCurve::processTree(this, &v9, a6, a7, a2);
  *a5 = v20;
  OZCurveNodeParam::~OZCurveNodeParam(&v9);
  return 1;
}

void sub_25FE7A490(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

uint64_t OZCurve::getCurveSamples(OZCurve *this, const CMTime *a2, const CMTime *a3, unsigned int *a4, CMTime **a5, double **a6)
{
  v9[0] = 1;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v11 = *MEMORY[0x277CC08F0];
  v12 = *(MEMORY[0x277CC08F0] + 16);
  v13 = v11;
  v14 = v12;
  v23 = 0;
  v18 = *a2;
  v21 = *a4;
  v7 = *&a3->value;
  epoch = a3->epoch;
  v19 = v7;
  v22 = *a6;
  v9[1] = 0;
  v10 = 0;
  OZCurve::processTree(this, v9, a5, a6);
  *a4 = v21;
  OZCurveNodeParam::~OZCurveNodeParam(v9);
  return 1;
}

void sub_25FE7A560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  _Unwind_Resume(a1);
}

void OZCurve::getValue(OZCurve *this, const CMTime *a2, void *a3, __n128 a4, __n128 a5)
{
  v36 = 0;
  if (a3)
  {
    if (*(this + 136) == 1)
    {
      if (*(this + 137) == 1)
      {
        v8 = *(this + 14);
        v9 = *v8;
        v10 = v8[1];
        v11 = 1;
        if (v9 != v10)
        {
          do
          {
            v12 = *v9;
            v13 = *v9 == a3;
            v9 += *v9 != a3;
            if (!v13)
            {
              ++v11;
            }

            v13 = v9 == v10 || v12 == a3;
          }

          while (!v13);
        }

        operator new[]();
      }

      v17.n128_u64[0] = (*(**(this + 1) + 16))(*(this + 1), a2, 0.0, 0.0);
      v18 = **(this + 14);
      v19 = *v18;
      if (*v18 != a3)
      {
        v20 = v18 + 1;
        do
        {
          v17.n128_u64[0] = (*(*v19 + 16))(v19, a2, 0.0, v17);
          v21 = *v20++;
          v19 = v21;
        }

        while (v21 != a3);
      }

      v16.n128_u64[0] = 0;
      (*(*v19 + 16))(v16, v17);
    }

    else
    {
      v22 = 1;
      v23 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v24 = **&MEMORY[0x277CC08F0];
      v25 = v24;
      v33 = 0;
      v34 = 0;
      v31 = v24;
      v14 = *&a2->value;
      epoch = a2->epoch;
      v29 = v14;
      v32 = 1;
      CMTimeMake(&v35, 1, 1);
      v31 = v35;
      v33 = &v36;
      OZCurve::processCurve(this, &v22, v15, a3);
      OZCurveNodeParam::~OZCurveNodeParam(&v22);
    }
  }

  else
  {
    a4.n128_u64[0] = 0;
    a5.n128_u64[0] = 0;
    (*(**(this + 1) + 16))(a4, a5);
  }
}

void OZCurve::getValue(OZCurve *this, const CMTime *a2, double a3)
{
  v29 = 0;
  v6 = *(this + 14);
  v7 = *v6;
  v8 = v6[1];
  if (v7 == v8)
  {
    (*(**(this + 1) + 16))(*(this + 1), a2, a3, 0.0);
  }

  else if (*(this + 136) == 1)
  {
    if (*(this + 137) == 1)
    {
      is_mul_ok((((v8 - v7) << 29) + 0x100000000) >> 32, 0x18uLL);
      operator new[]();
    }

    v11 = (*(**(this + 1) + 16))(*(this + 1), a2, a3, 0.0);
    v12 = *(this + 14);
    for (i = *v12; i != v12[1]; ++i)
    {
      v14 = *i;
      v11 = (*(*v14 + 16))(v14, a2, a3, v11);
      v12 = *(this + 14);
    }
  }

  else
  {
    v15 = 1;
    v16 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = **&MEMORY[0x277CC08F0];
    v18 = v17;
    v26 = 0;
    v27 = 0;
    v24 = v17;
    v9 = *&a2->value;
    epoch = a2->epoch;
    v22 = v9;
    v25 = 1;
    CMTimeMake(&v28, 1, 1);
    v24 = v28;
    v26 = &v29;
    OZCurve::processCurve(this, &v15, v10, *(*(*(this + 14) + 8) - 8));
    OZCurveNodeParam::~OZCurveNodeParam(&v15);
  }
}

uint64_t OZCurve::getPoint(OZCurve *this, const CMTime *a2, double a3, double *a4)
{
  if (a4)
  {
    *a4 = (*(*this + 1256))(this, a2, a3);
  }

  return 1;
}

uint64_t OZCurve::getPointWithoutBehavior(OZCurve *this, const CMTime *a2, double a3, double *a4)
{
  if (a4)
  {
    *a4 = (*(*this + 1248))(this, a2, 0, a3);
  }

  return 1;
}

uint64_t OZCurve::getPointFromCurveNode(OZCurve *this, const CMTime *a2, double a3, double *a4, void *a5)
{
  if (a4)
  {
    *a4 = (*(*this + 1248))(this, a2, a5, a3);
  }

  return 1;
}

uint64_t OZCurve::setKeyValue(OZCurve *this, const CMTime *a2, double a3)
{
  v4 = *(this + 16);
  if (v4 >= a3)
  {
    if (*(this + 15) > a3)
    {
      v4 = *(this + 15);
    }

    else
    {
      v4 = a3;
    }
  }

  (*(**(this + 1) + 64))(*(this + 1), a2, v4);
  if (!*(this + 42))
  {
    *(this + 6) = v4;
  }

  return 1;
}

uint64_t OZCurve::setKeyValue(OZCurve *this, char *a2, const CMTime *a3, double a4)
{
  v7 = *(this + 16);
  if (v7 >= a4)
  {
    if (*(this + 15) > a4)
    {
      v7 = *(this + 15);
    }

    else
    {
      v7 = a4;
    }
  }

  if (*(this + 42) && PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    if ((*(*this + 1208))(this))
    {
      v8 = 1;
      (*(**(this + 13) + 64))(*(this + 13), a3, 1, v7);
    }

    else if (PVInstructionGraphContext::HGNodeCache((this + 40)) && (v10 = PVInstructionGraphContext::HGNodeCache((this + 40)), OZSpline::isValidHandle(v10, a2)))
    {
      v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
      (*(*v11 + 200))(v11, a2, a3, MEMORY[0x277CC08F0], v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = 1;
    (*(**(this + 1) + 64))(*(this + 1), a3, 1, v7);
    *(this + 6) = v7;
  }

  return v8;
}

uint64_t OZCurve::setKeyValue(OZCurve *this, char *a2, double a3)
{
  v5 = *(this + 16);
  if (v5 >= a3)
  {
    if (*(this + 15) > a3)
    {
      v5 = *(this + 15);
    }

    else
    {
      v5 = a3;
    }
  }

  if (*(this + 42) && PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
    if (OZSpline::isValidHandle(v6, a2))
    {
      if ((*(*this + 1208))(this))
      {
        v7 = MEMORY[0x277CC08F0];
        v12 = *MEMORY[0x277CC08F0];
        v13 = *(MEMORY[0x277CC08F0] + 16);
        v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
        (*(*v8 + 264))(v8, a2, &v12, 0, v7);
        v9 = 1;
        (*(**(this + 13) + 64))(*(this + 13), &v12, 1, v5);
      }

      else
      {
        v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
        (*(*v10 + 208))(v10, a2, MEMORY[0x277CC08F0], v5);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 1;
    (*(**(this + 1) + 64))(*(this + 1), MEMORY[0x277CC08F0], 1, v5);
    *(this + 6) = v5;
  }

  return v9;
}

BOOL OZCurve::setKeyAtCurrentValue(OZCurve *this, const CMTime *a2)
{
  v2 = *(this + 42);
  if (v2)
  {
    v5 = (*(*this + 1208))(this);
    v6 = 8;
    if (v5)
    {
      v6 = 104;
    }

    v7 = *(this + v6);
    (*(*this + 1248))(this, a2, 0);
    (*(*v7 + 64))(v7, a2, 1);
  }

  return v2 != 0;
}

BOOL OZCurve::lockCurve(OZCurve *this, int a2)
{
  v4 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v4)
  {
    v5 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::lockSpline(v5, a2);
  }

  return v4 != 0;
}

uint64_t OZCurve::setCurveDefaultValue(OZCurve *this, double a2)
{
  *(this + 7) = a2;
  *(this + 4) = a2;
  return 1;
}

uint64_t OZCurve::setCurveInitialValue(OZCurve *this, double a2)
{
  *(this + 6) = a2;
  *(this + 3) = a2;
  return 1;
}

uint64_t OZCurve::setKeypoint(OZCurve *this, const CMTime *a2, int a3)
{
  if (*(this + 138) != 1)
  {
    return 0;
  }

  if (!OZCurve::isAnimated(this) && !a3)
  {
    return 0;
  }

  OZCurve::setKeyAtCurrentValue(this, a2);
  return 1;
}

BOOL OZCurve::setKeypointValue(OZCurve *this, char *a2, double a3, int a4)
{
  if (a2)
  {
    Instance = OZCoreGlobals::getInstance(this);
    if (*(this + 138) == 1 && (v9 = *(Instance + 10), (OZCurve::isAnimated(this) | a4) == 1) && ((a4 ^ 1) & v9 & 1) == 0)
    {
      OZCurve::setKeyValue(this, a2, a3);
    }

    else
    {
      (*(*this + 440))(this, MEMORY[0x277CC08F0], a3);
    }
  }

  return a2 != 0;
}

uint64_t OZCurve::setKeypointsValue(OZCurve *this, double a2)
{
  if (*(this + 42))
  {
    v3 = *(this + 16);
    if (v3 >= a2)
    {
      v3 = a2;
      if (*(this + 15) > a2)
      {
        v3 = *(this + 15);
      }
    }

    *(this + 6) = v3;
    if (PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      v4 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::setAllVerticesValues(v4, v3, MEMORY[0x277CC08F0]);
    }
  }

  else
  {
    OZCurve::setKeyValue(this, MEMORY[0x277CC08F0], a2);
  }

  return 1;
}

uint64_t OZCurve::setCurveOffset(OZCurve *this, const CMTime *a2, double a3)
{
  if (*(this + 42))
  {
    v5 = *(this + 16);
    if (v5 >= a3)
    {
      v5 = a3;
      if (*(this + 15) > a3)
      {
        v5 = *(this + 15);
      }
    }

    if (PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::offsetSpline(v6, a2, v5, *(this + 16), *(this + 15), 0, 0, MEMORY[0x277CC08F0]);
    }

    else
    {
      *(this + 6) = v5;
    }
  }

  else
  {
    OZCurve::setKeyValue(this, MEMORY[0x277CC08F0], a3);
  }

  return 1;
}

uint64_t OZCurve::setCurveSegmentValue(OZCurve *this, const CMTime *a2, double a3, int a4)
{
  if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4))
  {
    if (*(this + 42))
    {
      v8 = *(this + 16);
      if (v8 >= a3)
      {
        v8 = a3;
        if (*(this + 15) > a3)
        {
          v8 = *(this + 15);
        }
      }

      if (PVInstructionGraphContext::HGNodeCache((this + 40)))
      {
        v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
        OZSpline::offsetSpline(v9, a2, v8, *(this + 16), *(this + 15), 1, 0, MEMORY[0x277CC08F0]);
      }

      else
      {
        *(this + 6) = v8;
      }
    }

    else
    {
      OZCurve::setKeyValue(this, MEMORY[0x277CC08F0], a3);
    }
  }

  return 1;
}

uint64_t OZCurve::setCurveSegmentValueBounded(OZCurve *this, const CMTime *a2, double a3, double a4, double a5, int a6)
{
  if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a6))
  {
    if (*(this + 42))
    {
      if (a3 < a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = a3;
      }

      if (a3 <= a5)
      {
        v13 = v12;
      }

      else
      {
        v13 = a5;
      }

      if (PVInstructionGraphContext::HGNodeCache((this + 40)))
      {
        v14 = PVInstructionGraphContext::HGNodeCache((this + 40));
        OZSpline::offsetSpline(v14, a2, v13, a5, a4, 1, 1, MEMORY[0x277CC08F0]);
      }

      else
      {
        *(this + 6) = v13;
      }
    }

    else
    {
      OZCurve::setKeyValue(this, MEMORY[0x277CC08F0], a3);
    }
  }

  return 1;
}

uint64_t OZCurve::createCurveSegment(OZCurve *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, int a5, int a6)
{
  if (*(this + 138) != 1 || !OZCurve::isAnimated(this) && !a6 || !*(this + 42))
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    if (*(*(this + 20) + 44) == 1)
    {
      *(this + 20) = OZCurve::createLocalSplineState(this);
    }

    OZSplineNode::createSpline((this + 40));
  }

  v12 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::createSegment(v12, a2, a3, a4, a5);
}

BOOL OZCurve::setKeypoint(OZCurve *this, char *a2, const CMTime *a3, double a4, int a5)
{
  if (a2)
  {
    Instance = OZCoreGlobals::getInstance(this);
    if (*(this + 138) == 1 && (v11 = *(Instance + 10), (OZCurve::isAnimated(this) | a5) == 1) && ((a5 ^ 1) & v11 & 1) == 0)
    {
      OZCurve::setKeyValue(this, a2, a3, a4);
    }

    else
    {
      (*(*this + 440))(this, a3, a4);
    }
  }

  return a2 != 0;
}

uint64_t OZCurve::setKeypoint(OZCurve *this, const CMTime *a2, double a3, int a4)
{
  v10 = 0;
  v8 = (a4 ^ 1) & *(OZCoreGlobals::getInstance(this) + 10);
  if (*(this + 138) == 1 && !(v8 & 1 | (((OZCurve::isAnimated(this) | a4) & 1) == 0)))
  {
    if (!(*(*this + 696))(this, a2, &v10))
    {
      OZCurve::setKeyValue(this, a2, a3);
      return 1;
    }

    goto LABEL_7;
  }

  if (!v8 && (*(*this + 696))(this, a2, &v10))
  {
LABEL_7:
    OZCurve::setKeyValue(this, v10, a2, a3);
    return 1;
  }

  (*(*this + 440))(this, a2, a3);
  return 1;
}

uint64_t OZCurve::setKeypointNoTangents(OZCurve *this, const CMTime *a2, double a3, int a4)
{
  v7 = this;
  v10 = 0;
  if (*(this + 138) == 1)
  {
    this = OZCurve::isAnimated(this);
    if ((this & 1) != 0 || a4)
    {
      if (!(*(*v7 + 696))(v7, a2, &v10))
      {
        OZCurve::setKeyValue(v7, a2, a3);
        return 1;
      }

      goto LABEL_9;
    }
  }

  Instance = OZCoreGlobals::getInstance(this);
  if ((a4 || (*(Instance + 10) & 1) == 0) && (*(*v7 + 696))(v7, a2, &v10))
  {
LABEL_9:
    OZCurve::setKeyValue(v7, v10, a2, a3);
    return 1;
  }

  (*(*v7 + 440))(v7, a2, a3);
  return 1;
}

uint64_t OZCurve::appendKeypointNoTangents(OZCurve *this, const CMTime *a2, double a3, int a4)
{
  if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4))
  {
    if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      if (*(*(this + 20) + 44) == 1)
      {
        *(this + 20) = OZCurve::createLocalSplineState(this);
      }

      OZSplineNode::createSpline((this + 40));
    }

    v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::appendVertexNoTangents(v8, a2, a3, MEMORY[0x277CC08F0]);
  }

  (*(*this + 440))(this, a2, a3);
  return 1;
}

uint64_t OZCurve::appendKeypointsNoTangents(OZCurve *this, int a2, CMTime *a3, double *a4, int a5)
{
  LODWORD(v7) = a2;
  if ((*(this + 138) & 1) != 0 && (OZCurve::isAnimated(this) || a5))
  {
    if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      if (*(*(this + 20) + 44) == 1)
      {
        *(this + 20) = OZCurve::createLocalSplineState(this);
      }

      OZSplineNode::createSpline((this + 40));
    }

    v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::appendVertexesNoTangents(v11, v7, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else if (v7)
  {
    v7 = v7;
    do
    {
      v10 = *a4++;
      (*(*this + 440))(this, a3++, v10);
      --v7;
    }

    while (v7);
  }

  return 1;
}

uint64_t OZCurve::scaleCurve(OZCurve *this, double a2)
{
  v4 = *(this + 7) * a2;
  *(this + 7) = v4;
  v5 = *(this + 16);
  if (v4 > v5)
  {
    *(this + 7) = v5;
    v4 = v5;
  }

  v6 = *(this + 15);
  if (v4 < v6)
  {
    *(this + 7) = v6;
  }

  if (*(this + 6) * a2 <= v5)
  {
    v5 = *(this + 6) * a2;
  }

  if (v5 < v6)
  {
    v5 = v6;
  }

  *(this + 6) = v5;
  if (PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::scaleSpline(v7, a2, *(this + 15), *(this + 16), MEMORY[0x277CC08F0]);
  }

  return 1;
}

OZCurve *OZCurve::appendCurveProcessingNode(OZCurve *this, OZCurveNode *a2)
{
  v4 = *(this + 14);
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(*(this + 14), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v7 = 8 * v8 + 8;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;

  return OZCurve::setTreeProperties(this);
}

OZCurve *OZCurve::insertCurveProcessingNode(OZCurve *this, OZCurveNode *a2, void *a3)
{
  v8 = a2;
  v4 = *(this + 14);
  v5 = *v4;
  if (a3)
  {
    v6 = v4[1];
    if (v5 != v6)
    {
      while (*v5 != a3)
      {
        v5 += 8;
        if (v5 == v6)
        {
          v5 = v4[1];
          break;
        }
      }
    }

    v5 += 8;
  }

  std::vector<OZCurveNode *>::insert(v4, v5, &v8);
  return OZCurve::setTreeProperties(this);
}

char *std::vector<OZCurveNode *>::insert(void *a1, char *__src, char *a3)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v26, a3);
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
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_25FE7C228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL OZCurve::delProcessNode(OZCurve *this, void *a2)
{
  v3 = *(this + 14);
  v5 = *v3;
  v4 = v3[1];
  v6 = v5 != v4;
  if (v5 != v4)
  {
    v7 = v5 + 8;
    while (*v5 != a2)
    {
      v5 += 8;
      v7 += 8;
      v6 = v5 != v4;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    if (a2)
    {
      (*(**v5 + 8))(*v5);
    }

    *v5 = 0;
    v8 = *(this + 14);
    v9 = *(v8 + 8);
    v10 = v9 - v7;
    if (v9 != v7)
    {
      memmove(v7 - 8, v7, v9 - v7);
    }

    *(v8 + 8) = &v7[v10 - 8];
  }

LABEL_11:
  OZCurve::setTreeProperties(this);
  return v6;
}

BOOL OZCurve::removeProcessNode(OZCurve *this, void *a2)
{
  v3 = *(this + 14);
  v5 = *v3;
  v4 = v3[1];
  v6 = *v3 != v4;
  if (*v3 != v4)
  {
    v7 = v5 + 1;
    while (*v5 != a2)
    {
      ++v5;
      ++v7;
      v6 = v5 != v4;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }

    v8 = (v7 - 1);
    v9 = v4 - v7;
    if (v4 != v7)
    {
      memmove(v7 - 1, v7, v4 - v7);
    }

    v3[1] = &v8[v9];
  }

LABEL_9:
  OZCurve::setTreeProperties(this);
  return v6;
}

BOOL OZCurve::enumerateCurveProcessingNodes(uint64_t a1, char **a2)
{
  v2 = *(a1 + 112);
  if (v2 != a2 && v2 != 0)
  {
    std::vector<OZCurveNode *>::__assign_with_size[abi:ne200100]<OZCurveNode **,OZCurveNode **>(a2, *v2, v2[1], (v2[1] - *v2) >> 3);
  }

  return v2 != 0;
}

uint64_t OZCurve::getPreviousProcessingNode(OZCurve *this, void *a2, void **a3)
{
  v3 = *(this + 14);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_9;
  }

  v6 = *v3;
  while (*v6 != a2)
  {
    if (++v6 == v5)
    {
      v6 = v5;
      break;
    }
  }

  if (v6 == v4)
  {
LABEL_9:
    result = 0;
    if (!a3)
    {
      return result;
    }

    v7 = 0;
  }

  else
  {
    if (!a3)
    {
      return 1;
    }

    v7 = *(v6 - 1);
    result = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t OZCurve::setCustomInterpolator(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t OZCurve::bakeCurve(OZCurve *this, void *a2, const CMTime *a3, const CMTime *a4, const CMTime *a5, double a6, double a7)
{
  v7 = (this + 40);
  if (*(this + 1) == (this + 40))
  {
    if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      OZSplineNode::createSpline(v7);
    }

    v15 = 1;
    v16 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = *MEMORY[0x277CC08F0];
    v18 = *(MEMORY[0x277CC08F0] + 16);
    v19 = v17;
    v20 = v18;
    Seconds = 0;
    v29 = 0;
    v30 = 0;
    epoch = a3->epoch;
    v24 = *&a3->value;
    v26 = *&a4->value;
    v12 = a4->epoch;
    v25 = epoch;
    v27 = v12;
    time = *a5;
    v31 = *a3;
    PC_CMTimeSaferSubtract(&time, &v31, &v14);
    operator/(&v14, a4, &time);
    Seconds = CMTimeGetSeconds(&time);
    operator new[]();
  }

  return 0;
}

void sub_25FE7CB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  OZCurveNodeParam::~OZCurveNodeParam(&a22);
  _Unwind_Resume(a1);
}

uint64_t OZCurve::simplifyCurve(OZCurve *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, double a5, double a6, int a7, int a8)
{
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v8 = (this + 40);
  if (*(this + 1) == (this + 40) && PVInstructionGraphContext::HGNodeCache((this + 40)) && (v19 = PVInstructionGraphContext::HGNodeCache(v8), (*(*v19 + 24))(v19, &v65), (v66 - v65) >= 9))
  {
    if (a7 == 4)
    {
      v60.value = 0;
      __p.value = 0;
      v68 = **&MEMORY[0x277CC08F0];
      time.value = 0;
      v30 = PVInstructionGraphContext::HGNodeCache(v8);
      (*(*v30 + 264))(v30, *v65, 0, &v60, MEMORY[0x277CC08F0]);
      if ((((v66 - v65) >> 3) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = 1;
        v32 = MEMORY[0x277CC08F0];
        LODWORD(v33) = 1;
        do
        {
          v34 = PVInstructionGraphContext::HGNodeCache(v8);
          (*(*v34 + 264))(v34, v65[v31], &v68, &__p, v32);
          time1 = v68;
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v68, time2 = *a3, CMTimeCompare(&time1, &time2) > 0))
          {
            v60.value = __p.value;
            v33 = (v33 + 1);
          }

          else
          {
            v35 = PVInstructionGraphContext::HGNodeCache(v8);
            v33 = (v33 + 1);
            (*(*v35 + 264))(v35, v65[v33], 0, &time, v32);
            v36 = *&time.value - *&__p.value;
            if ((*&__p.value - *&v60.value <= 0.0 || v36 >= 0.0) && (*&__p.value - *&v60.value >= 0.0 || v36 <= 0.0))
            {
              v37 = PVInstructionGraphContext::HGNodeCache(v8);
              (*(*v37 + 32))(v37, v65[v31], 1, v32);
            }

            else
            {
              v60.value = __p.value;
            }
          }

          v31 = v33;
        }

        while (((v66 - v65) >> 3) - 1 > v33);
      }
    }

    else if (a7 == 2)
    {
      v61 = 0;
      (*(*this + 304))(this, &v61);
      if (fabs(a8) >= 0.0000001 || v61 != 1)
      {
        v38 = MEMORY[0x277CC08F0];
        if (v66 != v65)
        {
          v39 = 0;
          v40 = 1;
          do
          {
            v68 = *v38;
            v41 = PVInstructionGraphContext::HGNodeCache(v8);
            (*(*v41 + 264))(v41, v65[v39], &v68, 0, v38);
            time1 = v68;
            time2 = *a2;
            if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v68, time2 = *a3, CMTimeCompare(&time1, &time2) >= 1))
            {
              std::vector<HGMTLFunctionType>::push_back[abi:ne200100](&v62, &v65[v39]);
            }

            v39 = v40++;
          }

          while (v39 < (v66 - v65) >> 3);
        }

        LOWORD(time1.value) = 1;
        *&time1.timescale = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v46 = *v38;
        v47 = v46;
        Seconds = 0;
        v54 = 0;
        v55 = 0;
        v51 = v46;
        v52 = v46;
        memset(&v60, 0, sizeof(v60));
        time2 = *a3;
        v68 = *a2;
        PC_CMTimeSaferSubtract(&time2, &v68, &v60);
        time2 = v60;
        v68 = *a4;
        v42 = CMTimeCompare(&time2, &v68);
        if (a5 / 100.0 / a6 > 1.0 || v42 >= 1)
        {
          v52 = *a4;
          time2 = *a3;
          v68 = *a2;
          PC_CMTimeSaferSubtract(&time2, &v68, &__p);
          operator/(&__p.value, a4, &time2);
          Seconds = CMTimeGetSeconds(&time2);
        }

        else
        {
          v52 = v60;
          operator*(&v52, &time2, 0.001);
          v52 = time2;
          Seconds = 1000;
        }

        v51 = *a2;
        operator new[]();
      }

      v68 = *a2;
      v43.value = 0;
      v44 = 0;
      v20 = PVInstructionGraphContext::HGNodeCache(v8);
      v60 = v68;
      v21 = (*(*v20 + 240))(v20, &v68, MEMORY[0x277CC08F0], 0);
      if (!OZSpline::getVertexHandle(v20, &v60, &v43, 0))
      {
        (*(*v20 + 192))(v20, &v60, MEMORY[0x277CC08F0], 1, v21);
      }

      v22 = MEMORY[0x277CC08F0];
      NextValidVertexWithLock = OZSpline::getNextValidVertexWithLock(v20, &v68, &v43, MEMORY[0x277CC08F0], 0);
      value = v43.value;
      if (v43.value)
      {
        v25 = NextValidVertexWithLock;
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        do
        {
          if (!OZSpline::getNextValidVertexWithLock(v20, value, &v44, v22))
          {
            break;
          }

          v58 = 0.0;
          v59 = 0.0;
          __p = *v22;
          (*(*v20 + 264))(v20, v43.value, &v68, &v59, v22);
          (*(*v20 + 264))(v20, v44, &__p, &v58, v22);
          v26 = v59;
          time1 = v68;
          time2 = v60;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          v27 = CMTimeGetSeconds(&time);
          v28 = v58;
          v29 = v59;
          time1 = __p;
          time2 = v68;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          if (vabdd_f64((v28 - v29) / CMTimeGetSeconds(&time), (v26 - v21) / v27) >= 0.0000001)
          {
            v60 = v68;
            v21 = v59;
          }

          else
          {
            (*(*v20 + 32))(v20, v43.value, 1, v22);
          }

          v43.value = v44;
          time1 = __p;
          time2 = *a3;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
            break;
          }

          value = v43.value;
        }

        while (v43.value);
      }

      if (!OZSpline::getVertexHandle(v20, a3, &v43, 0))
      {
        (*(*v20 + 240))(v20, a3, MEMORY[0x277CC08F0], 0);
        (*(*v20 + 192))(v20, a3, MEMORY[0x277CC08F0], 1);
      }
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  return v9;
}

void sub_25FE7DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  OZCurveNodeParam::~OZCurveNodeParam(&a15);
  v42 = *(v40 - 256);
  if (v42)
  {
    *(v40 - 248) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 232);
  if (v43)
  {
    *(v40 - 224) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t OZCurve::smoothCurve(OZCurve *this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  memset(v29, 0, sizeof(v29));
  v4 = (this + 40);
  if (*(this + 1) == (this + 40))
  {
    if (PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      v9 = PVInstructionGraphContext::HGNodeCache(v4);
      (*(*v9 + 24))(v9, &v30);
      if ((v31 - v30) >= 9)
      {
        v28 = 0;
        (*(*this + 304))(this, &v28);
        v10 = MEMORY[0x277CC08F0];
        if (v31 != v30)
        {
          v11 = 0;
          v12 = 1;
          do
          {
            v33 = *v10;
            v13 = PVInstructionGraphContext::HGNodeCache(v4);
            (*(*v13 + 264))(v13, v30[v11], &v33, 0, v10);
            time1 = v33;
            time2 = *a2;
            if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v33, time2 = *a3, CMTimeCompare(&time1, &time2) >= 1))
            {
              std::vector<HGMTLFunctionType>::push_back[abi:ne200100](v29, &v30[v11]);
            }

            v11 = v12++;
          }

          while (v11 < (v31 - v30) >> 3);
        }

        LOWORD(time1.value) = 1;
        *&time1.timescale = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v18 = *v10;
        v19 = v18;
        Seconds = 0;
        v26 = 0;
        v27 = 0;
        v23 = v18;
        v24 = v18;
        memset(&v16, 0, sizeof(v16));
        time2 = *a3;
        v33 = *a2;
        PC_CMTimeSaferSubtract(&time2, &v33, &v16);
        time2 = v16;
        v33 = *a4;
        if (CMTimeCompare(&time2, &v33) < 1)
        {
          v24 = v16;
          operator*(&v24, &time2, 0.001);
          v24 = time2;
          Seconds = 1000;
        }

        else
        {
          v24 = *a4;
          time2 = *a3;
          v33 = *a2;
          PC_CMTimeSaferSubtract(&time2, &v33, &v15);
          operator/(&v15, a4, &time2);
          Seconds = CMTimeGetSeconds(&time2);
        }

        v23 = *a2;
        operator new[]();
      }
    }
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  return 0;
}

void sub_25FE7E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  OZCurveNodeParam::~OZCurveNodeParam(va);
  v13 = *(v11 - 208);
  if (v13)
  {
    *(v11 - 200) = v13;
    operator delete(v13);
  }

  v14 = *(v11 - 184);
  if (v14)
  {
    *(v11 - 176) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t OZCurve::moveKeypoint(OZCurve *this, char *a2, const CMTime *a3, int a4, int a5, char a6)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4))
    {
      v13 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::isValidHandle(v13, a2);
      if (result)
      {
        v14 = PVInstructionGraphContext::HGNodeCache((this + 40));
        return OZSpline::moveVertex(v14, a2, a3, MEMORY[0x277CC08F0], 0, a6, a5) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZCurve::cloneKeypoint(OZCurve *this, char *a2, const CMTime *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4))
    {
      v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::isValidHandle(v9, a2);
      if (result)
      {
        v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
        return OZSpline::moveVertex(v10, a2, a3, MEMORY[0x277CC08F0], 1, 0, 0) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZCurve::setCurveExtrapolation(OZCurve *this, int a2, int a3)
{
  v5 = *(this + 20);
  if (a3)
  {
    if (*(v5 + 40) != a2)
    {
      v6 = 40;
LABEL_6:
      LocalSplineState = OZCurve::createLocalSplineState(this);
      *(this + 20) = LocalSplineState;
      *(LocalSplineState + v6) = a2;
    }
  }

  else if (*(v5 + 36) != a2)
  {
    v6 = 36;
    goto LABEL_6;
  }

  return 1;
}

uint64_t OZCurve::getCurveExtrapolation(OZCurve *this, unsigned int *a2, int a3)
{
  if (a2)
  {
    v3 = 40;
    if (!a3)
    {
      v3 = 36;
    }

    *a2 = *(*(this + 20) + v3);
  }

  return 1;
}

OZCurve *OZCurve::setRetimingExtrapolation(OZCurve *this, int a2)
{
  if (*(*(this + 20) + 4) != a2)
  {
    v2 = a2;
    v3 = this;
    this = OZCurve::createLocalSplineState(this);
    *(v3 + 20) = this;
    *(this + 4) = v2;
  }

  return this;
}

BOOL OZCurve::getKeypointHandle(OZCurve *this, const CMTime *a2, void **a3)
{
  if (!*(this + 42) || !PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::getVertexHandle(v6, a2, a3, 1);
}

uint64_t OZCurve::getNumberOfKeypoints(OZCurve *this)
{
  if (!*(this + 42))
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v3 = PVInstructionGraphContext::HGNodeCache((this + 40));
    return (*(v3 + 24) - *(v3 + 16)) >> 3;
  }

  return result;
}

uint64_t OZCurve::getKeypointHandleList(uint64_t a1)
{
  if (!*(a1 + 168) || !PVInstructionGraphContext::HGNodeCache((a1 + 40)))
  {
    return 0;
  }

  v2 = *(*PVInstructionGraphContext::HGNodeCache((a1 + 40)) + 24);

  return v2();
}

uint64_t OZCurve::getKeypointValidHandleList(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 168) || !PVInstructionGraphContext::HGNodeCache((a1 + 40)))
  {
    return 0;
  }

  v4 = PVInstructionGraphContext::HGNodeCache((a1 + 40));
  v5 = MEMORY[0x277CC08F0];

  return OZSpline::getAllValidVerticesHandles(v4, a2, v5);
}

__n128 OZCurve::getKeypointsTimeAndValue(uint64_t a1, _OWORD *a2, void *a3, __n128 *a4, __n128 *a5)
{
  if (*(a1 + 168) && PVInstructionGraphContext::HGNodeCache((a1 + 40)))
  {
    v11 = PVInstructionGraphContext::HGNodeCache((a1 + 40));
    v12 = a2[1];
    v14[0] = *a2;
    v14[1] = v12;
    v14[2] = a2[2];
    OZSpline::getVerticesTimeAndValue(v11, v14, a3, a4, a5);
  }

  else
  {
    a3[1] = *a3;
    v13 = MEMORY[0x277CC0898];
    if (a4)
    {
      result = *MEMORY[0x277CC0898];
      a4[1].n128_u64[0] = *(MEMORY[0x277CC0898] + 16);
      *a4 = result;
    }

    if (a5)
    {
      result = *v13;
      a5[1].n128_u64[0] = v13[1].n128_u64[0];
      *a5 = result;
    }
  }

  return result;
}

uint64_t OZCurve::getFirstKeypoint(OZCurve *this, CMTime *a2, double *a3)
{
  if (*(this + 42) && PVInstructionGraphContext::HGNodeCache((this + 40)) && (v13 = 0, v6 = PVInstructionGraphContext::HGNodeCache((this + 40)), v7 = MEMORY[0x277CC08F0], OZSpline::getFirstValidVertexWithLock(v6, &v13, MEMORY[0x277CC08F0])))
  {
    v11 = *v7;
    v12 = *(v7 + 2);
    v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
    (*(*v8 + 264))(v8, v13, &v11, a3, v7);
    if (a2)
    {
      *&a2->value = v11;
      a2->epoch = v12;
    }

    return 1;
  }

  else
  {
    if (a2)
    {
      v10 = *MEMORY[0x277CC08F0];
      a2->epoch = *(MEMORY[0x277CC08F0] + 16);
      *&a2->value = v10;
    }

    result = 0;
    if (a3)
    {
      *a3 = 0.0;
    }
  }

  return result;
}

uint64_t OZCurve::getFirstValidKeypointHandle(OZCurve *this, void **a2)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v5 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v6 = MEMORY[0x277CC08F0];

    return OZSpline::getFirstValidVertexWithLock(v5, a2, v6);
  }

  return result;
}

uint64_t OZCurve::getLastKeypoint(OZCurve *this, CMTime *a2, double *a3)
{
  if (*(this + 42) && PVInstructionGraphContext::HGNodeCache((this + 40)) && (v13 = 0, v6 = PVInstructionGraphContext::HGNodeCache((this + 40)), v7 = MEMORY[0x277CC08F0], OZSpline::getLastValidVertexWithLock(v6, &v13, MEMORY[0x277CC08F0])))
  {
    v11 = *v7;
    v12 = *(v7 + 2);
    v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
    (*(*v8 + 264))(v8, v13, &v11, a3, v7);
    if (a2)
    {
      *&a2->value = v11;
      a2->epoch = v12;
    }

    return 1;
  }

  else
  {
    if (a2)
    {
      v10 = *MEMORY[0x277CC08F0];
      a2->epoch = *(MEMORY[0x277CC08F0] + 16);
      *&a2->value = v10;
    }

    result = 0;
    if (a3)
    {
      *a3 = 0.0;
    }
  }

  return result;
}

uint64_t OZCurve::getLastValidKeypointHandle(OZCurve *this, void **a2)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v5 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v6 = MEMORY[0x277CC08F0];

    return OZSpline::getLastValidVertexWithLock(v5, a2, v6);
  }

  return result;
}

uint64_t OZCurve::getNextKeypoint(OZCurve *this, const CMTime *a2, CMTime *a3, double *a4)
{
  v14 = 0;
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    if (*(this + 42))
    {
      v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
      v10 = MEMORY[0x277CC08F0];
      result = OZSpline::getNextValidVertexWithLock(v9, a2, &v14, MEMORY[0x277CC08F0], 0);
      if (result)
      {
        v12 = *v10;
        v13 = *(v10 + 2);
        v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
        (*(*v11 + 264))(v11, v14, &v12, a4, v10);
        if (a3)
        {
          *&a3->value = v12;
          a3->epoch = v13;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZCurve::getPreviousKeypoint(OZCurve *this, const CMTime *a2, CMTime *a3, double *a4)
{
  v14 = 0;
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    if (*(this + 42))
    {
      v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
      v10 = MEMORY[0x277CC08F0];
      result = OZSpline::getPreviousValidVertexWithLock(v9, a2, &v14, MEMORY[0x277CC08F0], 0);
      if (result)
      {
        v12 = *v10;
        v13 = *(v10 + 2);
        v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
        (*(*v11 + 264))(v11, v14, &v12, a4, v10);
        if (a3)
        {
          *&a3->value = v12;
          a3->epoch = v13;
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZCurve::getKeypoint(OZCurve *this, char *a2, CMTime *a3, double *a4)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v9, a2);
    if (result)
    {
      v10 = MEMORY[0x277CC08F0];
      v12 = *MEMORY[0x277CC08F0];
      v13 = *(MEMORY[0x277CC08F0] + 16);
      v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = (*(*v11 + 264))(v11, a2, &v12, a4, v10);
      if (a3)
      {
        *&a3->value = v12;
        a3->epoch = v13;
      }
    }
  }

  return result;
}