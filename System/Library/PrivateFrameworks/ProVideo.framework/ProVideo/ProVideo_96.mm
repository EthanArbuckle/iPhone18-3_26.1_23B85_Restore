double OZFxPlug_GetScale(const LiAgent *a1, double *a2, double *a3)
{
  v7 = 0.0;
  v8 = 0;
  v9 = 0;
  OZFxPlug_GetScale(a1, &v7);
  result = v7;
  v6 = v8;
  *a2 = v7;
  *a3 = v6;
  return result;
}

double OZFxPlug_ClampRectToMaxTextureSize@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v3 = a2[1].f64[0];
  if (v3 > 4096.0)
  {
    *&v4 = ceil((v3 + -4096.0) * 0.5);
    *a2 = vaddq_f64(v4, *a2);
    a2[1].f64[0] = v3 - (*&v4 + *&v4);
  }

  result = a2[1].f64[1];
  if (result > 4096.0)
  {
    v6.f64[0] = 0.0;
    v6.f64[1] = ceil((result + -4096.0) * 0.5);
    *a2 = vaddq_f64(v6, *a2);
    result = result - (v6.f64[1] + v6.f64[1]);
    a2[1].f64[1] = result;
  }

  return result;
}

void sub_26022C528()
{
  v5 = 0;
  v6 = 0;
  v4 = 0;
  PGHelium::createBitmapNode(&v5, &v4, 1, 0, (v1 - 24));
  v2 = *v0;
  v3 = *(v1 - 24);
  if (*v0 == v3)
  {
    if (v2)
    {
      (*(*v3 + 24))(*(v1 - 24));
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 24))(v2);
      v3 = *(v1 - 24);
    }

    *v0 = v3;
    *(v1 - 24) = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_26022C5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  v17 = *(v15 - 24);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void OZFxPlug_GetBlendOptions(void *a1@<X0>, uint64_t a2@<X1>, PCSharedCount *a3@<X8>)
{
  v6 = objc_opt_respondsToSelector();
  a3->var0 = 0;
  PCSharedCount::PCSharedCount(a3 + 1);
  if (v6)
  {
    if ([a1 getBlendOptionsAtTime:a2])
    {
      PCSharedCount::PCSharedCount(&v7);
      operator new();
    }
  }
}

void sub_26022C834(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A1C40239A8A55);
  PCSharedCount::~PCSharedCount(v3 + 1);
  PCSharedCount::~PCSharedCount(v1);
  _Unwind_Resume(a1);
}

uint64_t OZFxPlug_GetBoundsFromSceneNode@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 16) = _Q0;
  {
    v12 = *(*v11 + 1552);

    return v12(v11, a3, a2);
  }

  else
  {
    v14 = *(*a1 + 16);

    return v14();
  }
}

int32x2_t OZFxPlug_GetAgentBoundary(LiAgent *a1, int32x2_t *a2)
{
  LiAgent::getBoundary(a1, v5);
  result = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v5[0], vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
  v4 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v5[1], v5[0])))), result);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL OZFxPlug_GetInputNode(uint64_t *a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int a5, int a6, OZRenderParams *a7, int a8, char a9, LiImageSource *a10, uint64_t a11, void *lpsrc, uint64_t a13)
{
  if (a9)
  {
    return 0;
  }

  if (a6)
  {
    *space = *a4;
    *&space[16] = *(a4 + 16);
    (*(*a10 + 136))(&v42);
  }

  else
  {
    v42 = a10;
    if (a10)
    {
      v18 = (a10 + *(*a10 - 24));
    }

    else
    {
      v18 = 0;
    }

    PCSharedCount::PCSharedCount(&v43, v18);
  }

  v40 = 0;
  PCSharedCount::PCSharedCount(&v41);
  if (*(a2 + 36) != 2)
  {
    LiRenderingTechnology::setEnableMetalRendering(a2, 1);
    *&v49[40] = 0x3FF0000000000000;
    *v49 = 0x3FF0000000000000;
    *&space[40] = 0x3FF0000000000000;
    *space = 0x3FF0000000000000;
    memset(&space[8], 0, 32);
    v47 = 0u;
    v48 = 0u;
    memset(&v49[8], 0, 32);
    LiAgent::setPixelTransform(a2, space);
    if (lpsrc)
    {
      if (v19)
      {
        if (OZImageElement::isTransitionSource(v19))
        {
          OZRenderParams::getResolution(a7, &v50);
          memset(&space[8], 0, 32);
          *&space[40] = v50.n128_u64[1];
          *space = v50.n128_u64[0];
          v47 = 0u;
          v48 = 0u;
          memset(&v49[8], 0, 32);
          *v49 = 0x3FF0000000000000;
          *&v49[40] = 0x3FF0000000000000;
          PCMatrix44Tmpl<double>::operator*(space, *(a2 + 160), &v44);
          LiRenderingTechnology::setEnableMetalRendering(a2, 0);
          LiAgent::setImageSpace(a2, 0);
          LiAgent::setPixelTransform(a2, &v44);
        }
      }
    }

    operator new();
  }

  LiAgent::getHelium(a2, v42, space);
  v20 = *a1;
  v21 = *space;
  if (*a1 == *space)
  {
    if (v20)
    {
      (*(**space + 24))(*space);
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 24))(v20);
      v21 = *space;
    }

    *a1 = v21;
  }

  v22 = *a13;
  *space = v22;
  if (v22)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v22);
  }

  *&space[8] = *(a13 + 8);
  *&space[16] = *(a13 + 16);
  space[24] = *(a13 + 24);
  ActualColorDescription = LiAgent::getActualColorDescription(a2);
  v39._pcColorDesc._colorSpaceRef._obj = *space;
  if (*space)
  {
    PCCFRefTraits<CGColorSpace *>::retain(*space);
  }

  *&v39._pcColorDesc._dynamicRange = *&space[8];
  v39._pcColorDesc._toneMapMethod._gain = *&space[16];
  v39._isPremultiplied = space[24];
  OZFxPlug_ConformToProcessingDescription(&v39, a1, ActualColorDescription, &v44);
  v24 = *a1;
  v25 = v44.f64[0];
  if (*a1 == *&v44.f64[0])
  {
    if (v24)
    {
      (*(**&v44.f64[0] + 24))(*&v44.f64[0]);
    }
  }

  else
  {
    if (v24)
    {
      (*(*v24 + 24))(v24);
      v25 = v44.f64[0];
    }

    *a1 = v25;
    v44.f64[0] = 0.0;
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v39._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(space);
  OZFxPlug_GetAgentBoundary(a2, a3);
  if (*(a2 + 36) != 2)
  {
    *(a2 + 24) = 0;
  }

  v26 = a3[1];
  v27.i64[0] = a3->i32[0];
  v27.i64[1] = HIDWORD(*a3);
  v28 = vcvtq_f64_s64(v27);
  v27.i64[0] = v26.i32[0];
  v27.i64[1] = v26.i32[1];
  v44 = v28;
  v45 = vcvtq_f64_s64(v27);
  v29 = *(a2 + 160);
  v30 = v29[3];
  v32 = *v29;
  v31 = v29[1];
  *&space[32] = v29[2];
  v47 = v30;
  *space = v32;
  *&space[16] = v31;
  v33 = v29[7];
  v35 = v29[4];
  v34 = v29[5];
  *&v49[16] = v29[6];
  *&v49[32] = v33;
  v48 = v35;
  *v49 = v34;
  v13 = PCMatrix44Tmpl<double>::transformRect<double>(space, v44.f64, &v44);
  if (v13)
  {
    v36 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v44, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    v37 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(v44, v45)))), v36);
    *a3 = v36;
    a3[1] = v37;
  }

  PCSharedCount::~PCSharedCount(&v41);
  PCSharedCount::~PCSharedCount(&v43);
  return v13;
}

void sub_26022CF20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PCSharedCount a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CGColorSpace *a33)
{
  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCSharedCount::~PCSharedCount(v33 + 1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x26022CEECLL);
  }

  PCSharedCount::~PCSharedCount(&a16);
  _Unwind_Resume(a1);
}

uint64_t OZLiHePixelTransformFixer::OZLiHePixelTransformFixer(uint64_t a1, int a2)
{
  *(a1 + 24) = &unk_2872DEA38;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  LiImageSource::LiImageSource(a1, &off_2872B4468);
  *a1 = &unk_2872B4380;
  *(a1 + 24) = &unk_2872B4448;
  *(a1 + 16) = a2;
  return a1;
}

void sub_26022D100(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  *(v1 + 40) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

CGColorSpace **OZFxPlug_ConformToProcessingDescription@<X0>(FxColorDescription *this@<X2>, uint64_t *a2@<X0>, const FxColorDescription *a3@<X1>, uint64_t *a4@<X8>)
{
  ToneMapMethod = FxColorDescription::getToneMapMethod(this);
  FxColorDescription::FxColorDescription(&v10, a3, ToneMapMethod);
  FxApplyColorConform(a2, &v10, this, a4);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v10._pcColorDesc._colorSpaceRef._obj);
}

uint64_t pixelFormatFromRendererIntermediateFormat(HGRenderer *a1)
{
  if (a1 && (v1 = (*(*a1 + 128))(a1, 19) - 22, v1 <= 5))
  {
    return dword_26085439C[v1];
  }

  else
  {
    return 17;
  }
}

uint64_t OZFxPlug_ConvertDynamicRangeType(FxColorDescription *a1)
{
  if (FxColorDescription::isHDR(a1))
  {
    return 2;
  }

  else
  {
    return FxColorDescription::isSDR(a1);
  }
}

void OZLiHePixelTransformFixer::~OZLiHePixelTransformFixer(OZChannelBase *this)
{
  v1 = OZChannelBase::setRangeName(this, &off_2872B4468);
  *(v1 + 24) = &unk_2872DEA38;
  *(v1 + 40) = 0;
  PCWeakCount::~PCWeakCount((v1 + 32));
}

{
  v1 = OZChannelBase::setRangeName(this, &off_2872B4468);
  *(v1 + 24) = &unk_2872DEA38;
  *(v1 + 40) = 0;
  PCWeakCount::~PCWeakCount((v1 + 32));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZLiHePixelTransformFixer::~OZLiHePixelTransformFixer(OZLiHePixelTransformFixer *this)
{
  v1 = OZChannelBase::setRangeName((this + *(*this - 24)), &off_2872B4468);
  *(v1 + 24) = &unk_2872DEA38;
  *(v1 + 40) = 0;
  v2 = (v1 + 32);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = this + *(*this - 24);
  OZChannelBase::setRangeName(v1, &off_2872B4468);
  *(v1 + 3) = &unk_2872DEA38;
  v1[40] = 0;
  PCWeakCount::~PCWeakCount(v1 + 4);

  JUMPOUT(0x2666E9F00);
}

void sub_26022D784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(va);
  _Unwind_Resume(a1);
}

void sub_26022D8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void *get3DAPIData(void)
{
  {
    pthread_key_create(&get3DAPIData(void)::apiData, PCThreadSpecific<OZFx3DAPIData>::destroy);
  }

  v0 = pthread_getspecific(get3DAPIData(void)::apiData);
  if (!v0)
  {
    operator new();
  }

  return v0;
}

void sub_26022DFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCThreadSpecific<OZFx3DAPIData>::destroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x2666E9F00);
  }

  return result;
}

double OZGetSystemFontWeightFromName(const __CFString *a1)
{
  if (CFStringFind(a1, @"UltraLight", 1uLL).location == -1)
  {
    if (CFStringFind(a1, @"Light", 1uLL).location == -1)
    {
      if (CFStringFind(a1, @"Thin", 1uLL).location == -1)
      {
        if (CFStringFind(a1, @"Medium", 1uLL).location == -1)
        {
          if (CFStringFind(a1, @"Semibold", 1uLL).location == -1)
          {
            if (CFStringFind(a1, @"Bold", 1uLL).location == -1)
            {
              if (CFStringFind(a1, @"Heavy", 1uLL).location == -1)
              {
                location = CFStringFind(a1, @"Black", 1uLL).location;
                v2 = &OZFontWeightBlack;
                if (location == -1)
                {
                  v2 = &OZFontWeightRegular;
                }
              }

              else
              {
                v2 = &OZFontWeightHeavy;
              }
            }

            else
            {
              v2 = &OZFontWeightBold;
            }
          }

          else
          {
            v2 = &OZFontWeightSemibold;
          }
        }

        else
        {
          v2 = &OZFontWeightMedium;
        }
      }

      else
      {
        v2 = &OZFontWeightThin;
      }
    }

    else
    {
      v2 = &OZFontWeightLight;
    }
  }

  else
  {
    v2 = &OZFontWeightUltraLight;
  }

  return *v2;
}

CTFontRef OZCreateFontWithName(const __CFString *a1, CGFloat a2, const CGAffineTransform *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (CFStringHasPrefix(a1, @"."))
  {
    if (CFStringHasPrefix(a1, @".SFUI-ExtraCompressed"))
    {
      v6 = [MEMORY[0x277D74300] fontWithName:a1 size:4096 traits:a2];
      if (!v6)
      {
        goto LABEL_11;
      }

LABEL_10:
      v17 = [v6 fontDescriptor];
      goto LABEL_19;
    }

    if (CFStringHasPrefix(a1, @".SFUI-Compressed"))
    {
      v7 = OZGetSystemFontWeightFromName(a1);
      v33 = *MEMORY[0x277D74380];
      v32[0] = @"NSCTFontUIFontDesignDefault";
      v8 = *MEMORY[0x277D74430];
      v31[0] = @"NSCTFontUIFontDesignTrait";
      v31[1] = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      v31[2] = *MEMORY[0x277D74460];
      v32[1] = v9;
      v32[2] = &unk_28732D738;
      v34[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v34;
      v12 = &v33;
    }

    else
    {
      if (!CFStringHasPrefix(a1, @".SFUI-Heavy"))
      {
        goto LABEL_11;
      }

      v13 = OZGetSystemFontWeightFromName(a1);
      v29 = *MEMORY[0x277D74380];
      v14 = *MEMORY[0x277D74430];
      v27[0] = @"NSCTFontUIFontDesignTrait";
      v27[1] = v14;
      v28[0] = @"NSCTFontUIFontDesignDefault";
      v28[1] = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v30;
      v12 = &v29;
    }

    v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v16 = [MEMORY[0x277D74310] fontDescriptorWithFontAttributes:v15];
    v6 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:a2];
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_11:
    OZGetSystemFontWeightFromName(a1);
    if (CFStringFind(a1, @"SFCompactRounded", 1uLL).location == -1)
    {
      if (CFStringFind(a1, @"SFCompactText", 1uLL).location == -1)
      {
        CFStringFind(a1, @"SFUIDisplay", 1uLL);
        v18 = @"NSCTFontUIFontDesignDefault";
      }

      else
      {
        v18 = @"NSCTFontUIFontDesignCompact";
      }
    }

    else
    {
      v18 = @"NSCTFontUIFontDesignCompactRounded";
    }

    location = CFStringFind(a1, @"Italic", 1uLL).location;
    v20 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] systemFontSize];
    v21 = [v20 systemFontOfSize:? weight:?];
    if (!v21)
    {
LABEL_23:
      result = v21;
      if (result)
      {
        return result;
      }

      return CTFontCreateWithName(a1, a2, a3);
    }

    v22 = [objc_msgSend(v21 "fontDescriptor")];
    v23 = v22;
    if (location == -1)
    {
LABEL_20:
      if (a3)
      {
        v24 = *&a3->c;
        v26[0] = *&a3->a;
        v26[1] = v24;
        v26[2] = *&a3->tx;
        v23 = [v23 fontDescriptorWithMatrix:v26];
      }

      v21 = [MEMORY[0x277D74300] fontWithDescriptor:v23 size:a2];
      goto LABEL_23;
    }

    v17 = [v22 fontDescriptorWithSymbolicTraits:{objc_msgSend(v22, "symbolicTraits") | 1}];
LABEL_19:
    v23 = v17;
    goto LABEL_20;
  }

  return CTFontCreateWithName(a1, a2, a3);
}

BOOL OZIsFontAppleColorEmoji(const __CTFont *a1)
{
  v1 = CTFontCopyPostScriptName(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFStringCompare(v1, @"AppleColorEmoji", 0))
  {
    v3 = CFStringCompare(v2, @".AppleColorEmojiUI", 0) == kCFCompareEqualTo;
  }

  else
  {
    v3 = 1;
  }

  CFRelease(v2);
  return v3;
}

void sub_26022E754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void sub_26022E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

CFComparisonResult KilledPlugin::compareUUIDs(CFUUIDRef uuid, const __CFUUID *a2, const __CFUUID *a3)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], uuid);
  v6 = CFUUIDCreateString(v4, a2);
  v7 = CFStringCompare(v5, v6, 1uLL);
  CFRelease(v5);
  CFRelease(v6);
  return v7;
}

void OZFxPlugSharedBase::OZFxPlugSharedBase(OZFxPlugSharedBase *this, const PCString *a2, OZChannelFolder *a3, int a4, char a5)
{
  *this = &unk_2872B4610;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  PCString::PCString(this + 19, a2);
  *(this + 20) = 0;
  *(this + 183) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 187) = a5;
  *(this + 94) = 0;
  *(this + 26) = 0;
  *(this + 216) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 48) = a4;
  *(this + 49) = 0;
  *(this + 100) = 0;
  *(this + 28) = 0;
  *(this + 231) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  PCMutex::PCMutex((this + 272), 1);
  *(this + 34) = &unk_2871D83A0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  PCMutex::PCMutex((this + 368), 1);
  *(this + 110) = 5;
  std::allocate_shared[abi:ne200100]<OZFxPlugSharedLock,std::allocator<OZFxPlugSharedLock>,OZFxPlugSharedBase *,0>();
}

void sub_26022F5D0(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_end_catch();
    __cxa_end_catch();
    JUMPOUT(0x26022F208);
  }

  __cxa_rethrow();
}

void sub_26022F5F4()
{
  __cxa_end_catch();
  __cxa_end_catch();
  PCMutex::~PCMutex((v0 + 368));
  JUMPOUT(0x26022F618);
}

uint64_t OZFxPlugSharedBase::allocateAndRegisterParameterHandlers(OZFxPlugSharedBase *this, int a2, OZChannelFolder *a3, OZFxPlugParameterHandler *a4, uint64_t a5)
{
  if (a4)
  {
    if (a2)
    {
      v10 = [OZFxPlugParameterHandler_v4 alloc];
      v11 = *(this + 45);
      v30 = *(this + 44);
      v31 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(this + 4) = [(OZFxPlugParameterHandler *)v10 initWithBaseChannel:a3 andCopy:a4 Skip:a5 andPluginLock:&v30];
      v12 = v31;
      if (!v31)
      {
        goto LABEL_16;
      }

LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      goto LABEL_16;
    }

    v15 = [OZFxPlugParameterHandler alloc];
    v16 = *(this + 45);
    v28 = *(this + 44);
    v29 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 4) = [(OZFxPlugParameterHandler *)v15 initWithBaseChannel:a3 andCopy:a4 Skip:a5 andPluginLock:&v28];
    v12 = v29;
    if (v29)
    {
      goto LABEL_15;
    }
  }

  else if (a2)
  {
    v13 = [OZFxPlugParameterHandler_v4 alloc];
    v14 = *(this + 45);
    v34 = *(this + 44);
    v35 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 4) = [(OZFxPlugParameterHandler *)v13 initWithBaseChannel:a3 andPluginLock:&v34];
    v12 = v35;
    if (v35)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = [OZFxPlugParameterHandler alloc];
    v24 = *(this + 45);
    v32 = *(this + 44);
    v33 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 4) = [(OZFxPlugParameterHandler *)v23 initWithBaseChannel:a3 andPluginLock:&v32];
    v12 = v33;
    if (v33)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v17 = CFUUIDCreateString(0, [*(this + 2) uuid]);
  if (([(__CFString *)v17 isEqualToString:@"52A68C6D-B49C-41AA-B3EA-03945D0C8EB4"]& 1) != 0 || ([(__CFString *)v17 isEqualToString:@"920273EF-948C-4556-8EB8-8EFEF7A34111"]& 1) != 0 || [(__CFString *)v17 isEqualToString:@"23723AD7-62C4-4ED0-A8C6-FA5A2D7162E4"])
  {
    [*(this + 4) setColorCorrection:1];
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = [OZFxPlugVersioningAPI alloc];
  v19 = *(this + 45);
  v26 = *(this + 44);
  v27 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 7) = [(OZFxPlugVersioningAPI *)v18 initWithPluginLock:&v26];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v20 = [FxPlugAPIHandler alloc];
  v21 = [(FxPlugAPIHandler *)v20 initWithDelegate:*(this + 4), v26];
  *(this + 11) = v21;
  if (!*(this + 4) || !*(this + 7) || !v21)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2666E9930](exception, "Unable to allocate some handlers in OZFxPlugSharedBase::allocateParameterHandlers()");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  [*(this + 1) registerAPIObject:? forProtocol:? version:?];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735B3F0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735B4F8 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BCA0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735B780 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735B810 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735B8D0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735C2C8 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BAA0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BB28 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BBE0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735C3A0 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BD98 version:1];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735BE50 version:1];
  [*(this + 1) registerAPIObject:*(this + 7) forProtocol:&unk_28735F2C8 version:1];
  [*(this + 1) registerAPIObject:*(this + 11) forProtocol:&unk_287366FF0 version:1];
  result = [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735C660 version:1];
  if (a2)
  {
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735DF10 version:1];
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735DF98 version:1];
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735E258 version:1];
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735E548 version:1];
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735E608 version:1];
    [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735E448 version:1];
    result = [*(this + 1) registerAPIObject:*(this + 11) forProtocol:&unk_28736D710 version:1];
  }

  if (*(this + 30))
  {
    return [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28736D970 version:1];
  }

  return result;
}

void sub_26022FB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::allocateAndRegisterRemainingHandlers(OZFxPlugSharedBase *this, int a2, OZChannelFolder *a3, OZFxPlugParameterHandler *a4)
{
  v6 = [OZFxPlugTimingAPI alloc];
  v7 = *(this + 45);
  v18 = *(this + 44);
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 6) = [(OZFxPlugTimingAPI *)v6 initWithPluginLock:&v18];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  *(this + 8) = objc_alloc_init(OZFxPlug3DAPI);
  *(this + 10) = objc_alloc_init(OZFxPixelTransformsHandler);
  v8 = [OZFxPlugHostPrivateAPI alloc];
  v9 = *(this + 45);
  v16 = *(this + 44);
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 13) = [(OZFxPlugHostPrivateAPI *)v8 initWithPluginLock:&v16];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v10 = [OZFxPlugColorGamutHandler alloc];
  v11 = *(this + 45);
  v14 = *(this + 44);
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 16) = [(OZFxPlugColorGamutHandler *)v10 initWithPluginLock:&v14];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!*(this + 6) || !*(this + 8) || !*(this + 10) || !*(this + 13) || !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2666E9930](exception, "Unable to allocate some handlers in OZFxPlugSharedBase::allocateHandlers()");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735C1A0 version:{1, v14}];
  [*(this + 1) registerAPIObject:*(this + 4) forProtocol:&unk_28735C230 version:1];
  [*(this + 1) registerAPIObject:*(this + 11) forProtocol:&unk_287366AA0 version:1];
  [*(this + 1) registerAPIObject:*(this + 13) forProtocol:&unk_28735AE68 version:1];
  [*(this + 1) registerAPIObject:*(this + 8) forProtocol:&unk_28735F470 version:1];
  [*(this + 1) registerAPIObject:*(this + 8) forProtocol:&unk_28735F398 version:1];
  [*(this + 1) registerAPIObject:*(this + 13) forProtocol:&unk_28735AEE0 version:1];
  [*(this + 1) registerAPIObject:*(this + 6) forProtocol:&unk_28735EBF0 version:1];
  [*(this + 1) registerAPIObject:*(this + 10) forProtocol:&unk_28735AB90 version:1];
  [*(this + 1) registerAPIObject:*(this + 11) forProtocol:&unk_287357C70 version:1];
  result = [*(this + 1) registerAPIObject:*(this + 16) forProtocol:&unk_287359A98 version:1];
  if (a2)
  {
    [*(this + 1) registerAPIObject:*(this + 6) forProtocol:&unk_28735F060 version:1];
    [*(this + 1) registerAPIObject:*(this + 11) forProtocol:&unk_28736D590 version:1];
    return [*(this + 1) registerAPIObject:*(this + 8) forProtocol:&unk_28735F4F0 version:1];
  }

  return result;
}

void sub_26022FE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t queryStaticProps(NSDictionary *a1, int a2, BOOL *a3, BOOL *a4, BOOL *a5)
{
  v10 = [(NSDictionary *)a1 objectForKey:@"UsesRationalTime"];
  if (v10)
  {
    if (a2)
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = a2 ^ 1;
  }

  *a3 = v11;
  v12 = [(NSDictionary *)a1 objectForKey:@"SupportsHeliumRendering"];
  if (v12)
  {
    *a4 = [v12 BOOLValue];
  }

  v13 = [(NSDictionary *)a1 objectForKey:@"SupportsHeliumCPURendering"];
  if (v13)
  {
    result = [v13 BOOLValue];
  }

  else
  {
    result = 1;
  }

  *a5 = result;
  return result;
}

unint64_t OZFxPlugSharedBase::pluginProperties(OZFxPlugSharedBase *this)
{
  v1 = (this + 224);
  if (!atomic_load(this + 28))
  {
    (*(**(this + 43) + 40))(*(this + 43), *(this + 2));
    v4 = [*(this + 3) properties];
    v5 = 0;
    atomic_compare_exchange_strong(v1, &v5, v4);
    if (!v5)
    {
      v6 = atomic_load(this + 28);
      v7 = v6;
    }
  }

  return atomic_load(v1);
}

void OZFxPlugSharedBase::OZFxPlugSharedBase(OZFxPlugSharedBase *this, const OZFxPlugSharedBase *a2, OZChannelFolder *a3)
{
  *this = &unk_2872B4610;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  PCString::PCString(this + 19, a2 + 19);
  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((this + 160), *(a2 + 20), *(a2 + 21));
  }

  else
  {
    v5 = *(a2 + 10);
    *(this + 22) = *(a2 + 22);
    *(this + 10) = v5;
  }

  *(this + 184) = 0;
  *(this + 185) = *(a2 + 185);
  v6 = atomic_load(a2 + 186);
  *(this + 186) = v6 & 1;
  *(this + 187) = *(a2 + 187);
  *(this + 94) = *(a2 + 94);
  *(this + 48) = *(a2 + 48);
  *(this + 49) = *(a2 + 49);
  v7 = *(a2 + 100);
  *(this + 233) = *(a2 + 233);
  *(this + 100) = v7;
  *(this + 26) = 0;
  *(this + 216) = *(a2 + 216);
  *(this + 28) = 0;
  *(this + 232) = *(a2 + 232);
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 32) = *(a2 + 32);
  *(this + 33) = 0;
  PCMutex::PCMutex((this + 272), 1);
  *(this + 34) = &unk_2871D83A0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  PCMutex::PCMutex((this + 368), 1);
  *(this + 110) = *(a2 + 110);
  v8 = this;
  std::allocate_shared[abi:ne200100]<OZFxPlugSharedLock,std::allocator<OZFxPlugSharedLock>,OZFxPlugSharedBase *,0>();
}

void sub_26023044C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v10);
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(&a9);
  __cxa_begin_catch(a1);
  if (*(v9 + 240))
  {
    (*(**(v9 + 344) + 24))(*(v9 + 344), *(v9 + 16));
    *(v9 + 240) = 0;
  }

  v13 = *(v9 + 24);
  if (v13)
  {

    *(v9 + 24) = 0;
  }

  v14 = *(v9 + 16);
  if (v14)
  {

    *(v9 + 16) = 0;
  }

  if (*v11)
  {

    *v11 = 0;
  }

  if (*(v9 + 200) == 1)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  __cxa_rethrow();
}

void sub_260230560(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_end_catch();
    __cxa_end_catch();
    JUMPOUT(0x260230378);
  }

  __cxa_rethrow();
}

void sub_260230584()
{
  __cxa_end_catch();
  __cxa_end_catch();
  PCMutex::~PCMutex((v0 + 368));
  JUMPOUT(0x2602305A8);
}

void OZFxPlugSharedBase::~OZFxPlugSharedBase(OZFxPlugSharedBase *this)
{
  *this = &unk_2872B4610;
  PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v7);
  if (*(this + 200) == 1)
  {
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  (*(**(this + 43) + 40))(*(this + 43), *(this + 2));
  (*(**(this + 43) + 32))(*(this + 43), *(this + 2));
  (*(**(this + 43) + 96))(*(this + 43), 0);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  *(this + 3) = 0;
  v2 = atomic_load(this + 28);

  v3 = (this + 8);
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B348];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B3F0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B4F8];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735DF10];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BCA0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B780];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B810];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735B8D0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735DF98];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735E258];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BAA0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BB28];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BBE0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735E448];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BD98];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735E548];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735BE50];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735E608];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735C660];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735C2C8];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735C3A0];
  [*(this + 1) unregisterAPIForProtocol:&unk_2873670A8];
  [*(this + 1) unregisterAPIForProtocol:&unk_28736D850];
  [*(this + 1) unregisterAPIForProtocol:&unk_287366AA0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28736D590];
  [*(this + 1) unregisterAPIForProtocol:&unk_287366FF0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28736D710];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735C1A0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F2C8];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F220];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735EBF0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F060];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F398];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F470];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735F4F0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735AB90];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735AE68];
  [*(this + 1) unregisterAPIForProtocol:&unk_28735C230];
  [*(this + 1) unregisterAPIForProtocol:&unk_28736D8B0];
  [*(this + 1) unregisterAPIForProtocol:&unk_28736D910];
  [*(this + 1) unregisterAPIForProtocol:&unk_287357C70];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  [*v3 unregisterAPIForProtocol:&unk_28735AEE0];

  *v3 = 0;
  *(this + 2) = 0;
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(v7);
  PCMutex::~PCMutex((this + 368));
  v5 = *(this + 45);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 43);
  *(this + 43) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PCMutex::~PCMutex((this + 272));
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  PCString::~PCString(this + 19);
}

uint64_t OZFxPlugSharedBase::doPostConstructionActions(id *this)
{
  v2 = [this[2] uuid];
  if (v2 && (v3 = v2, v4 = [objc_msgSend(+[PROPlugInManager sharedPlugInManager](PROPlugInManager "sharedPlugInManager")], (v5 = objc_msgSend(v4, "nextObject")) != 0))
  {
    v6 = v5;
    v7 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v8 = [v6 infoDictionary];
      v9 = [v8 objectForKey:kFxPlugInfoProprerty_SupportedPlugins];
      if (!v9)
      {
        NSLog(&cfstr_UnableToFindAn.isa, [v6 displayName]);
      }

      v10 = [v9 objectEnumerator];
      v11 = [v10 nextObject];
      if (v11)
      {
        break;
      }

LABEL_10:
      v6 = [v4 nextObject];
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    v12 = v11;
    while (1)
    {
      v13 = CFUUIDCreateFromString(v7, v12);
      CFRelease(v13);
      if (v13 == v3)
      {
        break;
      }

      v12 = [v10 nextObject];
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    *(this + 188) = 1;
  }

  else
  {
LABEL_11:
    *(this + 188) = 0;
    if (![this[4] hasPointParameters])
    {
      goto LABEL_19;
    }

    if ((*(this + 188) & 1) == 0)
    {
      *(this + 189) = 1;
    }
  }

  if (((objc_opt_respondsToSelector() & 1) == 0 || [this[3] oscIsPublishable:0]) && (*(this + 187) & 1) == 0)
  {
    [this[4] addPublishOSCCheckbox:10005];
  }

LABEL_19:
  [this[4] setDoneAddingParams:1];
  [this[4] saveParameterFlags];
  v14 = *(*this + 57);

  return v14(this);
}

void OZFxPlugSharedBase::finishPluginSetup(OZFxPlugSharedBase *this)
{
  v2 = *(this + 3);
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v18 = 0;
    Instance = OZCoreGlobals::getInstance(v3);
    v5 = *(Instance + 8);
    *(OZCoreGlobals::getInstance(Instance) + 8) = 0;
    (*(**(this + 43) + 40))(*(this + 43), *(this + 2));
    v6 = [v2 finishInitialSetup:&v18];
    v7 = v6;
    *(OZCoreGlobals::getInstance(v6) + 8) = v5;
    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ozone.framework"];
      v9 = [v8 localizedStringForKey:@"FxPlug::Error Base" value:0 table:0];
      v10 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, objc_msgSend(*(this + 2), "displayName")];
      v11 = MEMORY[0x277CCACA8];
      if (v18)
      {
        v12 = [v18 localizedDescription];
        v13 = [v11 stringWithFormat:@"%@\n%@\n%@", v10, v12, objc_msgSend(v18, "localizedFailureReason")];
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v10, objc_msgSend(v8, "localizedStringForKey:value:table:", @"FxPlug::No Error Reason", 0, 0), v15];
      }

      v14 = v13;
      v17.var0 = 0;
      PCString::set(&v17, [v8 localizedStringForKey:@"FxPlug::Error Title" value:0 table:0]);
      v16.var0 = 0;
      PCString::set(&v16, v14);
      OZChannelBase::setRangeName(&v17, &v16);
      PCString::~PCString(&v16);
      PCString::~PCString(&v17);
    }
  }
}

void sub_260230F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, PCString a13)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a13);
  _Unwind_Resume(a1);
}

void OZFxPlugSharedBase::getPluginUUID(const PCString *this@<X0>, PCString *a2@<X8>)
{
  v4 = [(__CFString *)this[2].var0 uuid];
  if (v4)
  {
    v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v4);
    a2->var0 = 0;
    PCString::set(a2, v5);
  }

  else
  {

    PCString::PCString(a2, this + 19);
  }
}

void OZFxPlugSharedBase::getPluginGroupUUID(id *this@<X0>, PCString *a2@<X8>)
{
  v3 = [this[2] group];
  if (v3 && (v4 = [v3 uuid]) != 0)
  {
    v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v4);
    a2->var0 = 0;
    PCString::set(a2, v5);
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

BOOL OZFxPlugSharedBase::isPluginKilled(PCString *this)
{
  {
    v2 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v2 = *MEMORY[0x277CBECE8];
    if (v12)
    {
      OZFxPlugSharedBase::isPluginKilled(void)const::killedPlugins = @"CIEdgeWork";
      qword_27FE4BFA8 = CFUUIDCreateFromString(v2, @"A417EA22-7BF3-44E4-BA42-D091E3355BBB");
      unk_27FE4BFB0 = @"Swirly";
      qword_27FE4BFB8 = CFUUIDCreateFromString(v2, @"D8FE4FA1-F495-47BC-8C43-1B257BA4842C");
      unk_27FE4BFC0 = @"OpticalFlow";
      qword_27FE4BFC8 = CFUUIDCreateFromString(v2, @"B7F71E12-4E10-11D9-A0DA-000A95AFC10A");
      unk_27FE4BFD0 = @"VectorizeColor";
      qword_27FE4BFD8 = CFUUIDCreateFromString(v2, @"8CB75514-C0FE-4418-B38D-93393EF651AF");
      unk_27FE4BFE0 = @"CIRingLens";
      qword_27FE4BFE8 = CFUUIDCreateFromString(v2, @"9302994C-DDF4-4C33-AE10-A109894AB84A");
      unk_27FE4BFF0 = @"SetMatte";
      qword_27FE4BFF8 = CFUUIDCreateFromString(v2, @"BFE68F8A-64F1-11D9-BCCC-000A95AF90F2");
      unk_27FE4C000 = @"Simple3d";
      qword_27FE4C008 = CFUUIDCreateFromString(v2, @"7B3C336C-10B8-42B7-8114-FB87FECE240B");
    }
  }

  v3 = PCString::ns_str(this + 19);
  v4 = CFUUIDCreateFromString(v2, v3);
  if (KilledPlugin::compareUUIDs(v4, qword_27FE4BFA8, v5))
  {
    v6 = 0;
    v7 = 1;
    v8 = &OZFxPlugSharedBase::isPluginKilled(void)const::killedPlugins;
    while (([(__CFString *)PCString::ns_str(this + 19) isEqualToString:*v8]& 1) == 0)
    {
      if (v6 == 6)
      {
        v7 = 0;
        break;
      }

      v7 = v6 < 6;
      v10 = KilledPlugin::compareUUIDs(v4, v8[3], v9);
      v8 += 2;
      ++v6;
      if (v10 == kCFCompareEqualTo)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  CFRelease(v4);
  return v7;
}

uint64_t OZFxPlugSharedBase::isPluginMissing(PCString *this, PCString *a2)
{
  if (this[3].var0 || OZFxPlugSharedBase::isPluginKilled(this))
  {
    if (BYTE2(this[29].var0) == 1)
    {
      PCString::set(a2, this + 19);
      v4 = BYTE2(this[29].var0);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    PCString::set(a2, this + 19);
    v4 = 1;
  }

  return v4 & 1;
}

CFComparisonResult OZFxPlugSharedBase::isHMTCompatible(PCString *this)
{
  var0_low = LOBYTE(this[27].var0);
  OZFxPlugSharedBase::getPluginGroupUUID(&this->var0, &v7);
  OZFxPlugSharedBase::getPluginUUID(this, &v6);
  v4 = OZDocumentBundleFormatUtils::isSupportedFxPlug(var0_low, &v7, &v6, v3);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  return v4;
}

void sub_260231350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void OZFxPlugSharedBase::getDisplayName(id *this@<X0>, PCString *a2@<X8>)
{
  if ([objc_msgSend(this[2] "displayName")])
  {
    v4 = [this[2] displayName];
    a2->var0 = 0;

    PCString::set(a2, v4);
  }

  else
  {

    PCSharedCount::PCSharedCount(a2);
  }
}

uint64_t OZFxPlugSharedBase::getDynamicPropertyAtTime(id *this, const __CFString *a2, CMTime *a3)
{
  result = [OZFxPlugSharedBase::pluginProperties(this) objectForKey:a2];
  if (!result)
  {
    if (*(this + 199) == 1)
    {
      (*(*this[43] + 40))(this[43], this[2]);
      v10 = *&a3->value;
      epoch = a3->epoch;
      v7 = [this[4] figTimeToFxTime:&v10 withConversionData:0];
      v9 = 0;
      v8 = [this[3] dynamicPropertiesAtTime:v7 withError:&v9];
      result = 0;
      if (!v9)
      {
        return [v8 objectForKey:a2];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZFxPlugSharedBase::variesOverTime(OZFxPlugSharedBase *this)
{
  (*(**(this + 43) + 40))(*(this + 43), *(this + 2));
  v2 = *(this + 3);

  return [v2 variesOverTime];
}

void *OZFxPlugSharedBase::isPixelIndependent(id *this, CMTime *a2)
{
  if (*(this + 216) == 1)
  {
    v3 = *a2;
    return ((*(*this + 31))(this, &v3) == 6);
  }

  else
  {
    v3 = *a2;
    result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"PixelIndependent", &v3);
    if (result)
    {

      return [result BOOLValue];
    }
  }

  return result;
}

void *OZFxPlugSharedBase::isPositionIndependent(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"PositionIndependent", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t OZFxPlugSharedBase::isTimeIndependent(OZFxPlugSharedBase *this)
{
  v1 = [OZFxPlugSharedBase::pluginProperties(this) objectForKey:@"MayRemapTime"];
  if (v1)
  {
    return [v1 BOOLValue] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t OZFxPlugSharedBase::getStaticProperty(OZFxPlugSharedBase *this, const __CFString *a2)
{
  v3 = OZFxPlugSharedBase::pluginProperties(this);

  return [v3 objectForKey:a2];
}

void *OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"TransformsFromLocalToScreenSpace", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

void *OZFxPlugSharedBase::doesSupportLargeRenderScale(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"SupportsLargeRenderScale", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

void *OZFxPlugSharedBase::supportsInternalMixing(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"SupportsInternalMixing", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

void *OZFxPlugSharedBase::doesHaveInputSizeLimit(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"InputSizeLimit", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

void *OZFxPlugSharedBase::doesSupportStableAnimation(id *this, CMTime *a2)
{
  v3 = *a2;
  result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"SupportsStableAnimation", &v3);
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t OZFxPlugSharedBase::requiresPixelCasting(id *this, CMTime *a2)
{
  v5 = *a2;
  DynamicPropertyAtTime = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"UsesNonmatchingTextureLayout", &v5);
  if (!DynamicPropertyAtTime)
  {
    return this[30] == 0;
  }

  return [DynamicPropertyAtTime BOOLValue];
}

uint64_t OZFxPlugSharedBase::getBestRenderingBehavior(OZFxPlugSharedBase *this, LiRenderParameters **a2, BOOL *a3, BOOL *a4, CMTime *a5)
{
  v10 = *a5;
  result = (*(*this + 232))(this, &v10);
  if ((result & 1) == 0 && *a3 && *a4)
  {
    result = LiAgent::getRenderDevice(a2);
    v9 = *(*result + 8) == 0;
    *a3 = *(*result + 8) != 0;
    *a4 = v9;
  }

  return result;
}

uint64_t OZFxPlugSharedBase::getPixelTransformSupport(id *this, CMTime *a2)
{
  v8 = *a2;
  DynamicPropertyAtTime = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"PixelTransformSupport", &v8);
  if (DynamicPropertyAtTime)
  {
    v5 = [DynamicPropertyAtTime intValue];
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 216) == 1)
  {
    v8 = *a2;
    v6 = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"PixelIndependent", &v8);
    if (v6)
    {
      if ([v6 BOOLValue])
      {
        return 6;
      }

      else
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t OZFxPlugSharedBase::isOSCPublished(OZFxPlugSharedBase *this)
{
  v1 = *(this + 4);
  if (((*(*this + 288))(this) & 1) != 0 || (result = [v1 hasPointParameters], result))
  {
    result = [v1 publishOSCChannel];
    if (result)
    {
      v3 = [v1 publishOSCChannel];
      return OZChannel::getValueAsInt(v3, MEMORY[0x277CC08F0], 0.0) == 1;
    }
  }

  return result;
}

void *OZFxPlugSharedBase::isThreadSafe(OZFxPlugSharedBase *this)
{
  result = [OZFxPlugSharedBase::pluginProperties(this) objectForKey:@"IsThreadSafe"];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t OZFxPlugSharedBase::canRenderThreadSafely(OZFxPlugSharedBase *this)
{
  if (*(this + 216) == 1)
  {
    return (*(*this + 152))();
  }

  else
  {
    return 1;
  }
}

uint64_t OZFxPlugSharedBase::usesRationalTime(OZFxPlugSharedBase *this)
{
  if (*(this + 216) == 1)
  {
    v1 = *(this + 201);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

unint64_t OZFxPlugSharedBase::decodePluginNCLCFromProperty(id *this, const __CFString *a2)
{
  v6 = **&MEMORY[0x277CC08F0];
  DynamicPropertyAtTime = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, a2, &v6);
  if (DynamicPropertyAtTime)
  {
    v3 = DynamicPropertyAtTime;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 unsignedIntegerValue];
      if (FxIsSupportedNCLCValue_Private(v4))
      {
        return FxConvertFxNCLCValueToPCNCLCCode(v4);
      }

      NSLog(&cfstr_ColorPropertyW.isa, BYTE2(v4), BYTE1(v4));
    }

    else
    {
      NSLog(&cfstr_UnrecognizedCo.isa);
    }
  }

  return 0x200000002;
}

unint64_t OZFxPlugSharedBase::getFallbackNCLC(id *a1, int a2)
{
  v7 = **&MEMORY[0x277CC08F0];
  DynamicPropertyAtTime = OZFxPlugSharedBase::getDynamicPropertyAtTime(a1, @"DesiredProcessingColorInfo", &v7);
  if (DynamicPropertyAtTime)
  {
    LODWORD(DynamicPropertyAtTime) = [DynamicPropertyAtTime intValue];
  }

  if (a2 == 1)
  {
    if (DynamicPropertyAtTime == 2)
    {
      v4 = 9;
      goto LABEL_12;
    }

LABEL_8:
    v4 = 9;
    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  if (DynamicPropertyAtTime == 2)
  {
    v4 = 1;
LABEL_12:
    v5 = 1;
    return PCMakeNCLCCode(v4, v5);
  }

  v4 = 1;
LABEL_9:
  v5 = 8;
  return PCMakeNCLCCode(v4, v5);
}

unint64_t OZFxPlugSharedBase::getDesiredPluginNCLC(id *this, int a2)
{
  if (a2 == 1)
  {
    v4 = OZFxPlugSharedBase::decodePluginNCLCFromProperty(this, @"HDRWorkingSpace");
  }

  else
  {
    v4 = OZFxPlugSharedBase::decodePluginNCLCFromProperty(this, @"SDRWorkingSpace");
  }

  v7 = v4;
  v8 = v5;
  if (PCNCLCCodeIsKnownRGB(&v7))
  {
    return v7;
  }

  else
  {
    return OZFxPlugSharedBase::getFallbackNCLC(this, a2);
  }
}

unint64_t OZFxPlugSharedBase::getPluginNCLC(id *this, const LiAgent *a2)
{
  CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  if (CGColorSpace != PCColorSpaceCache::cgRec2020Linear(CGColorSpace))
  {
    return PCGetNCLCCodeForColorSpace(CGColorSpace);
  }

  v6 = (*(*this + 22))(this, a2);
  return OZFxPlugSharedBase::getDesiredPluginNCLC(this, v6);
}

CGColorSpaceRef OZFxPlugSharedBase::getPluginColorSpace(id *this, const LiAgent *a2)
{
  PluginNCLC = OZFxPlugSharedBase::getPluginNCLC(this, a2);
  v6 = v3;
  result = PCGetNCLCColorSpace(&PluginNCLC);
  if (!result)
  {
    return FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  }

  return result;
}

uint64_t OZFxPlugSharedBase::getDynamicRangeTrackingSupport(id *this, const LiAgent *a2)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  result = FxColorDescription::isDynamicRangeManaged(RequestedColorDescription);
  if (result)
  {
    v5 = MEMORY[0x277CC08F0];
    v7 = **&MEMORY[0x277CC08F0];
    result = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"AutoColorProcessingSupport", &v7);
    if (result)
    {
      v7 = *v5;
      DynamicPropertyAtTime = OZFxPlugSharedBase::getDynamicPropertyAtTime(this, @"AutoColorProcessingSupport", &v7);
      if (DynamicPropertyAtTime && (LODWORD(DynamicPropertyAtTime) = [DynamicPropertyAtTime intValue], DynamicPropertyAtTime > 3))
      {
        return 0;
      }

      else
      {
        return *(&xmmword_260343780 + DynamicPropertyAtTime);
      }
    }
  }

  return result;
}

uint64_t OZFxPlugSharedBase::getPluginColorDescription@<X0>(id *this@<X0>, const LiAgent *a2@<X1>, FxColorDescription *a3@<X8>)
{
  PluginColorSpace = OZFxPlugSharedBase::getPluginColorSpace(this, a2);
  FxMakeLegacyColorDescription(PluginColorSpace, 1, a3);
  result = OZFxPlugSharedBase::getDynamicRangeTrackingSupport(this, a2);
  if (result <= 1)
  {
    if (!result)
    {
      CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
      v11 = CGColorSpace == PCColorSpaceCache::cgRec2020Linear(CGColorSpace);
      FxColorDescription::setDynamicRange(a3, v11);
      return FxColorDescription::setToneMapMethod(a3, &kPCNoToneMapMethod);
    }

    if (result != 1)
    {
      return result;
    }

    v17 = 3;
    FxColorDescription::setToneMapMethod(a3, &v17);
    v8 = 0;
    return FxColorDescription::setDynamicRange(a3, v8);
  }

  if (result == 2)
  {
    RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
    ToneMapMethod = FxColorDescription::getToneMapMethod(RequestedColorDescription);
    FxColorDescription::setToneMapMethod(a3, ToneMapMethod);
    v8 = 1;
    return FxColorDescription::setDynamicRange(a3, v8);
  }

  if (result == 3)
  {
    v9 = LiAgent::getRequestedColorDescription(a2);
    if (FxColorDescription::isSDR(v9))
    {
      v17 = 3;
      FxColorDescription::setToneMapMethod(a3, &v17);
    }

    else
    {
      v14 = LiAgent::getRequestedColorDescription(a2);
      v15 = FxColorDescription::getToneMapMethod(v14);
      FxColorDescription::setToneMapMethod(a3, v15);
    }

    DynamicRange = FxColorDescription::getDynamicRange(v9);
    return FxColorDescription::setDynamicRange(a3, DynamicRange);
  }

  return result;
}

double OZFxPlugSharedBase::getFxPlugPixelAspectRatio(OZFxPlugSharedBase *this)
{
  v1 = (*(*this + 24))(this);
  if (!v1)
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

float64x2_t OZFxPlugSharedBase::adjustImageMatrix(uint64_t a1, float64x2_t *a2)
{
  result.f64[0] = 1.0 / (*(*a1 + 336))(a1);
  if (result.f64[0] != 1.0)
  {
    v4 = vmulq_n_f64(*a2, result.f64[0]);
    result = vmulq_n_f64(a2[1], result.f64[0]);
    *a2 = v4;
    a2[1] = result;
  }

  return result;
}

void *OZFxPlugSharedBase::setup3DAPI(OZFxPlugSharedBase *this, const LiAgent *a2, const OZRenderParams *a3)
{
  result = (*(*this + 24))(this);
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v6 = 0x3FF0000000000000;
  v7 = 0u;
  v8 = 0u;
  v10 = 0u;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (result)
  {
    v5 = result;
    if (result)
    {
      (*(*result + 1256))(result, &v6, a3);
      result = (*(*v5 + 272))(v5);
      if (result)
      {
        PCMakePtr<OZSceneCamera,OZScene *,OZViewCameraType>();
      }
    }
  }

  return result;
}

void OZFxPlugSharedBase::makeAgentForGettingState(OZFxPlugSharedBase *this, const OZRenderParams *a2)
{
  v3 = (*(*this + 24))(this);
  v4 = (*(*v3 + 272))(v3);
  v5 = *(a2 + 160);
  v20 = v5;
  if (v5)
  {
    v6 = (v5 + *(*v5 - 24));
  }

  else
  {
    v6 = 0;
  }

  PCSharedCount::PCSharedCount(&v21, v6);
  WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
  BlendingGamma = OZRenderParams::getBlendingGamma(a2);
  RenderNodeList = HGRenderJob::GetRenderNodeList(a2);
  LiRenderParameters::LiRenderParameters(&v11, WorkingColorDescription, RenderNodeList, BlendingGamma);
  v14 = *(a2 + 85);
  BYTE6(v12[0]) = OZRenderParams::getDo3DIntersectionAntialiasing(a2);
  HIBYTE(v12[0]) = *(a2 + 516);
  v10 = *(a2 + 1332);
  *&v12[1] = *(a2 + 1316);
  v13[0] = v10;
  *(v13 + 14) = *(a2 + 1346);
  *&v11 = v20;
  LODWORD(v12[0]) = *(v4 + 512);
  DoHighQualityResampling = OZRenderParams::getDoHighQualityResampling(a2);
  RasterizeEdges = LiRenderingTechnology::getRasterizeEdges((a2 + 1316));
  v16 = *(a2 + 512);
  v19 = *(a2 + 242);
  v17 = 0;
  operator new();
}

void sub_260232CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  LiImageFilterChain::~LiImageFilterChain(v7 + 2);
  MEMORY[0x2666E9F00](v7, 0x10E0C4071C63EBFLL);
  MEMORY[0x2666E9F00](v6, 0x10F0C40F73640D2);
  LiRenderParameters::~LiRenderParameters(va);
  PCSharedCount::~PCSharedCount(v8 + 1);
  _Unwind_Resume(a1);
}

void OZFxPlugSharedBase::prepareHandlersForRendering(id *a1, const LiAgent *a2, const PCSharedCount *a3, OZRenderParams *a4, uint64_t a5, uint64_t a6)
{
  OZFxPlugSharedBase::setup3DAPI(a1, a2, a4);
  var0 = a3->var0;
  PCSharedCount::PCSharedCount(&v13, a3 + 1);
  [a1[4] setRenderParams:a4 withLithiumInput:&var0 withLithiumAgent:a2];
  [a1[10] setAgent:{a2, var0}];
  if (a5)
  {
    [a1[10] setPreTransform:a5];
  }

  if (a6)
  {
    [a1[10] setPostTransform:a6];
  }

  PCSharedCount::~PCSharedCount(&v13);
}

uint64_t OZFxPlugSharedBase::cleanupHandlersAfterRendering(id *this, const CMTime *a2)
{
  [this[10] setAgent:0];
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  [this[10] setPreTransform:&v4];
  return [this[10] setPostTransform:&v4];
}

uint64_t OZFxPlugSharedBase::getColorGamutForPlugIn(id *this, const LiAgent *a2)
{
  result = (*(*this + 4))(this);
  if (result)
  {
    result = (*(*result + 272))(result);
    if (result)
    {
      v5 = result;
      RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
      if (!FxColorDescription::isDynamicRangeManaged(RequestedColorDescription))
      {
        goto LABEL_7;
      }

      DynamicRangeTrackingSupport = OZFxPlugSharedBase::getDynamicRangeTrackingSupport(this, a2);
      if (DynamicRangeTrackingSupport == 3)
      {
        v8 = LiAgent::getRequestedColorDescription(a2);
        return FxColorDescription::isHDR(v8);
      }

      if (DynamicRangeTrackingSupport == 2)
      {
        return 1;
      }

      if (DynamicRangeTrackingSupport)
      {
        return 0;
      }

      else
      {
LABEL_7:

        return OZScene::getComputedWorkingGamut(v5);
      }
    }
  }

  return result;
}

uint64_t OZFxPlugSharedBase::SetImageColorPrimaries(OZFxPlugSharedBase *this, FxImage *a2, const LiAgent *a3)
{
  v4 = (*(*this + 168))(this, a3);

  return [(FxImage *)a2 setFxColorPrimaries:v4];
}

void OZFxPlugSharedBase::writeDynamicParameterChannel(OZFxPlugSharedBase *this, PCSerializerWriteStream *a2, OZChannelBase *lpsrc)
{
  if (lpsrc)
  {
    (*(*a2 + 16))(a2, 20000);
    (*(*a2 + 200))(a2, 110, &lpsrc->var4);
    (*(*a2 + 144))(a2, 111, lpsrc->var3);
    if (((*(*a2 + 232))(a2) & 1) == 0)
    {
      v13 = OZFactory::fileRefID(lpsrc->var1, v12);
      (*(*a2 + 144))(a2, 113, v13);
    }

    if (v6 || v7 || v8 || v9)
    {
      v42.var0 = 0;
      (*(**(*(v10 + 14) + 8) + 264))();
      (*(*a2 + 16))(a2, 21001);
      (*(*a2 + 88))(a2, 0.0);
      (*(*a2 + 24))(a2);
      v42.var0 = 0;
      (*(**(*(v10 + 14) + 8) + 256))();
      (*(*a2 + 16))(a2, 21002);
      (*(*a2 + 88))(a2, 0.0);
      (*(*a2 + 24))(a2);
      v15 = *(*(v10 + 16) + 16);
      (*(*a2 + 16))(a2, 21003);
      (*(*a2 + 88))(a2, v15);
      (*(*a2 + 24))(a2);
      v16 = (*(*v10 + 808))(v10);
      (*(*a2 + 16))(a2, 21004);
      (*(*a2 + 88))(a2, v16);
      (*(*a2 + 24))(a2);
      v17 = *(*(v10 + 16) + 32);
      (*(*a2 + 16))(a2, 21005);
      (*(*a2 + 88))(a2, v17);
      (*(*a2 + 24))(a2);
      v18 = *(*(v10 + 16) + 24);
      (*(*a2 + 16))(a2, 21006);
      (*(*a2 + 88))(a2, v18);
      (*(*a2 + 24))(a2);
LABEL_11:
      v14 = v10;
      goto LABEL_12;
    }

    if (v5)
    {
      v14 = v5;
LABEL_12:
      DefaultValue = OZChannel::getDefaultValue(v14);
      (*(*a2 + 16))(a2, 21008);
      (*(*a2 + 88))(a2, DefaultValue);
      (*(*a2 + 24))(a2);
LABEL_13:
      (*(*a2 + 24))(a2);
      return;
    }

    if (v10)
    {
      NumberOfStrings = OZChannelEnum::getNumberOfStrings(v10);
      if (NumberOfStrings >= 1)
      {
        v21 = NumberOfStrings;
        for (i = 0; i != v21; ++i)
        {
          String = OZChannelEnum::getString(v10, i);
          PCString::PCString(&v43, String);
          (*(*a2 + 16))(a2, 21007);
          (*(*a2 + 104))(a2, &v43);
          (*(*a2 + 24))(a2);
          PCString::~PCString(&v43);
        }
      }

      goto LABEL_11;
    }

    if (v38)
    {
      OZChannel::OZChannel(&v42, (v38 + 136), 0);
      v42.var0 = &unk_287245C60;
      v42.var2 = &unk_287245FC0;
      OZChannel::OZChannel(&v41, (v38 + 288), 0);
      v41.var0 = &unk_287245C60;
      v41.var2 = &unk_287245FC0;
      OZChannel::OZChannel(&v40, (v38 + 440), 0);
      v40.var0 = &unk_287245C60;
      v40.var2 = &unk_287245FC0;
      OZChannel::OZChannel(&v39, v38 + 9, 0);
      v39.var0 = &unk_287245C60;
      v39.var2 = &unk_287245FC0;
      v24 = OZChannel::getDefaultValue(&v42);
      (*(*a2 + 16))(a2, 21009);
      (*(*a2 + 88))(a2, v24);
      (*(*a2 + 24))(a2);
      v25 = OZChannel::getDefaultValue(&v41);
      (*(*a2 + 16))(a2, 21010);
      (*(*a2 + 88))(a2, v25);
      (*(*a2 + 24))(a2);
      v26 = OZChannel::getDefaultValue(&v40);
      (*(*a2 + 16))(a2, 21011);
      (*(*a2 + 88))(a2, v26);
      (*(*a2 + 24))(a2);
      v27 = OZChannel::getDefaultValue(&v39);
      (*(*a2 + 16))(a2, 21012);
      (*(*a2 + 88))(a2, v27);
      (*(*a2 + 24))(a2);
      OZChannel::~OZChannel(&v39);
    }

    else
    {
      if (!v37)
      {
        if (v36)
        {
          OZChannel::OZChannel(&v42, (v36 + 136), 0);
          v42.var0 = &unk_287245C60;
          v42.var2 = &unk_287245FC0;
          OZChannel::OZChannel(&v41, (v36 + 288), 0);
          v41.var0 = &unk_287245C60;
          v41.var2 = &unk_287245FC0;
          v31 = OZChannel::getDefaultValue(&v42);
          (*(*a2 + 16))(a2, 21013);
          (*(*a2 + 88))(a2, v31);
          (*(*a2 + 24))(a2);
          v32 = OZChannel::getDefaultValue(&v41);
          (*(*a2 + 16))(a2, 21014);
          (*(*a2 + 88))(a2, v32);
          (*(*a2 + 24))(a2);
        }

        else
        {
          if (v35 || !v11)
          {
            goto LABEL_13;
          }

          OZChannel::OZChannel(&v42, (v11 + 136), 0);
          v42.var0 = &unk_287245C60;
          v42.var2 = &unk_287245FC0;
          OZChannel::OZChannel(&v41, (v11 + 288), 0);
          v41.var0 = &unk_287245C60;
          v41.var2 = &unk_287245FC0;
          v33 = OZChannel::getDefaultValue(&v42);
          (*(*a2 + 16))(a2, 21016);
          (*(*a2 + 88))(a2, v33);
          (*(*a2 + 24))(a2);
          v34 = OZChannel::getDefaultValue(&v41);
          (*(*a2 + 16))(a2, 21017);
          (*(*a2 + 88))(a2, v34);
          (*(*a2 + 24))(a2);
        }

        goto LABEL_25;
      }

      OZChannel::OZChannel(&v42, (v37 + 136), 0);
      v42.var0 = &unk_287245C60;
      v42.var2 = &unk_287245FC0;
      OZChannel::OZChannel(&v41, (v37 + 288), 0);
      v41.var0 = &unk_287245C60;
      v41.var2 = &unk_287245FC0;
      OZChannel::OZChannel(&v40, (v37 + 440), 0);
      v40.var0 = &unk_287245C60;
      v40.var2 = &unk_287245FC0;
      v28 = OZChannel::getDefaultValue(&v42);
      (*(*a2 + 16))(a2, 21009);
      (*(*a2 + 88))(a2, v28);
      (*(*a2 + 24))(a2);
      v29 = OZChannel::getDefaultValue(&v41);
      (*(*a2 + 16))(a2, 21010);
      (*(*a2 + 88))(a2, v29);
      (*(*a2 + 24))(a2);
      v30 = OZChannel::getDefaultValue(&v40);
      (*(*a2 + 16))(a2, 21011);
      (*(*a2 + 88))(a2, v30);
      (*(*a2 + 24))(a2);
    }

    OZChannel::~OZChannel(&v40);
LABEL_25:
    OZChannel::~OZChannel(&v41);
    OZChannel::~OZChannel(&v42);
    goto LABEL_13;
  }
}

uint64_t OZFxPlugSharedBase::writeDynamicParameterGroup(OZFxPlugSharedBase *this, PCSerializerWriteStream *a2, OZFactory **a3)
{
  (*(*a2 + 16))(a2, 20000);
  (*(*a2 + 200))(a2, 110, a3 + 32);
  (*(*a2 + 144))(a2, 111, *(a3 + 6));
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    v7 = OZFactory::fileRefID(a3[1], v6);
    (*(*a2 + 144))(a2, 113, v7);
  }

  OZFxPlugSharedBase::writeFolder(this, a2, a3);
  (*(*a2 + 16))(a2, 21015);
  (*(*a2 + 48))(a2, 0);
  (*(*a2 + 24))(a2);
  v8 = *(*a2 + 24);

  return v8(a2);
}

void OZFxPlugSharedBase::writeFolder(OZFxPlugSharedBase *this, PCSerializerWriteStream *a2, OZChannelFolder *a3)
{
  v14 = this;
  v3 = *(a3 + 14);
  v4 = *v3;
  if (*v3 != v3[1])
  {
    v5 = *(this + 4);
    v15 = *(a3 + 14);
    v16 = v5;
    do
    {
      if ([v5 containsParameterWithID:{*(*v4 + 24), v14}])
      {
        Descendant = OZChannelFolder::getDescendant(a3, *(*v4 + 24));
        v7 = Descendant;
        {
          OZFxPlugSharedBase::writeDynamicParameterGroup(v14, a2, v19);
        }

        else
        {
          OZFxPlugSharedBase::writeDynamicParameterChannel(Descendant, a2, v7);
        }

        v5 = v16;
      }

      v4 += 8;
    }

    while (v4 != v3[1]);
  }
}

uint64_t OZFxPlugSharedBase::writeDynamicParams(OZFxPlugSharedBase *this, PCSerializerWriteStream *a2, OZChannelFolder *a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZDynamicChannelsScope);
  (*(*a2 + 16))(a2, 21000);
  OZFxPlugSharedBase::writeFolder(this, a2, a3);
  (*(*a2 + 24))(a2);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZFxPlugSharedBase::parseDynamicParamElement(OZFxPlugSharedBase *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  *v53 = 0;
  PCSharedCount::PCSharedCount(&v52);
  v51 = 0.0;
  PCSharedCount::PCSharedCount(&v50);
  v6 = *(this + 4);
  v7 = *(this + 26);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 2);
  switch(v9)
  {
    case 21000:
      if (PCSerializerReadStream::getAsString(a2, a3, &v50))
      {
        v10 = *(this + 26);
        if (v10)
        {
          if (v11)
          {
            if (!*(this + 30))
            {
              v12 = v11;
              v13 = *(this + 3);
              PCString::PCString(&v49, &v50);
              v14.var0 = &v49;
              OZChannelButton::setCallbackSelectorAsString(v12, v14, v13);
              PCString::~PCString(&v49);
            }
          }
        }
      }

      break;
    case 21001:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setMin(v8, v51);
      }

      break;
    case 21002:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setMax(v8, v51);
      }

      break;
    case 21003:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setSliderMin(v8, v51);
      }

      break;
    case 21004:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setSliderMax(v8, v51);
      }

      break;
    case 21005:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setCoarseDelta(v8, v51);
      }

      break;
    case 21006:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setFineDelta(v8, v51);
      }

      break;
    case 21007:
      if (PCSerializerReadStream::getAsString(a2, a3, &v50))
      {
        v38 = *(this + 26);
        if (v38)
        {
          if (v39)
          {
            OZChannelEnum::addString(v39, &v50);
          }
        }
      }

      break;
    case 21008:
      if (v8 && PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        OZChannel::setDefaultValue(v8, v51);
        (*(v8->var0 + 36))(v8, 0);
      }

      break;
    case 21009:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v36 = *(this + 26);
        if (v36)
        {
          if (v37)
          {
            OZChannel::setDefaultValue((v37 + 136), v51);
            (*(*(v37 + 17) + 288))(v37 + 136, 0);
          }

          else if (v27)
          {
            goto LABEL_81;
          }
        }
      }

      break;
    case 21010:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v42 = *(this + 26);
        if (v42)
        {
          if (v43)
          {
            OZChannel::setDefaultValue((v43 + 288), v51);
            (*(*(v43 + 36) + 288))(v43 + 288, 0);
          }

          else if (v29)
          {
            goto LABEL_83;
          }
        }
      }

      break;
    case 21011:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v30 = *(this + 26);
        if (v30)
        {
          if (v31)
          {
            OZChannel::setDefaultValue((v31 + 440), v51);
            (*(*(v31 + 55) + 288))(v31 + 440, 0);
          }

          else if (v32)
          {
            v45 = v32 + 440;
            OZChannel::setDefaultValue((v32 + 440), v51);
            (*(*v45 + 288))(v45, 0);
          }
        }
      }

      break;
    case 21012:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v33 = *(this + 26);
        if (v33)
        {
          if (v34)
          {
            v35 = v34 + 1008;
            OZChannel::setDefaultValue((v34 + 1008), v51);
            (*(*v35 + 288))(v35, 0);
          }
        }
      }

      break;
    case 21013:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v41 = *(this + 26);
        if (v41)
        {
          if (v27)
          {
            goto LABEL_81;
          }
        }
      }

      break;
    case 21014:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v28 = *(this + 26);
        if (v28)
        {
          if (v29)
          {
LABEL_83:
            v47 = v29 + 288;
            OZChannel::setDefaultValue((v29 + 288), v51);
            (*(*v47 + 288))(v47, 0);
          }
        }
      }

      break;
    case 21015:
      *(this + 26) = 0;
      [v6 endParameterSubGroup];
      break;
    case 21016:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v26 = *(this + 26);
        if (v26)
        {
          if (v27)
          {
            goto LABEL_81;
          }
        }
      }

      break;
    case 21017:
      if (PCSerializerReadStream::getAsDouble(a2, a3, &v51))
      {
        v40 = *(this + 26);
        if (v40)
        {
          if (v27)
          {
LABEL_81:
            v46 = v27 + 136;
            OZChannel::setDefaultValue((v27 + 136), v51);
            (*(*v46 + 288))(v46, 0);
          }
        }
      }

      break;
    default:
      if (v9 == 20000)
      {
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v53[1]);
        PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v52);
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v53);
        v15 = OZFactories::lookupFactory(*(theApp + 32), v53[0]);
        if (v15)
        {
          if (v16)
          {
            v17 = v16;
            v18 = *v16;
            v25 = *(v18 + 168);
            if (!(v19 | v20) || v21 || v22 || v23 || v24)
            {
              v44 = v25(v17, &v52, v53[1]);
              *(this + 26) = v44;
              [v6 addExistingChannel:v44];
            }

            else
            {
              [v6 addExistingGroup:{v25(v17, &v52, v53[1])}];
              *(this + 26) = 0;
            }
          }
        }
      }

      break;
  }

  PCString::~PCString(&v50);
  PCString::~PCString(&v52);
  return 1;
}

void sub_26023553C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, uint64_t a12, PCString a13)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  PCString::~PCString(&a13);
  _Unwind_Resume(a1);
}

_BYTE *OZFxPlugSharedBase::markDynamicParameterFactoriesForSerialization(id *this)
{
  result = (*(*this + 26))(this);
  if (result)
  {
    result = [this[4] channelMap];
    v3 = result + 8;
    v4 = *result;
    if (*result != result + 8)
    {
      do
      {
        result = OZFactory::setNeedsSaving(*(v4[5] + 8), 1);
        v5 = v4[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
    }
  }

  return result;
}

uint64_t OZFxPlugSharedBase::updateFlipChannel(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = 0.0;
    if (*(this + 440) <= 4u)
    {
      if ([*(this + 32) absolutePointsChannel])
      {
        v2 = 0.0;
      }

      else
      {
        v2 = 1.0;
      }
    }

    this = [v1 flipChannel];
    if (this)
    {
      v4 = *(*this + 712);
      v3.n128_f64[0] = v2;

      return v4(v3);
    }
  }

  return this;
}

void *OZFxPlugSharedBase::updateInputPointsChannel(OZFxPlugSharedBase *this)
{
  if (*(this + 110) >= 5u)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  result = *(this + 4);
  if (result)
  {
    result = [result inputPointsChannel];
    if (result)
    {
      v4 = *(*result + 712);
      v3.n128_f64[0] = v1;

      return v4(v3);
    }
  }

  return result;
}

void *OZFxPlugSharedBase::updateAbsolutePointsChannel(OZFxPlugSharedBase *this)
{
  if (*(this + 110) >= 5u)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  result = *(this + 4);
  if (result)
  {
    result = [result absolutePointsChannel];
    if (result)
    {
      v4 = *(*result + 712);
      v3.n128_f64[0] = v1;

      return v4(v3);
    }
  }

  return result;
}

uint64_t OZFxPlugSharedBase::openMedia(OZFxPlugSharedBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    [*(this + 4) imageParamIDs];
    v2 = __p;
  }

  else
  {
    v2 = 0;
    __p = 0;
    v18 = 0;
  }

  v3 = [v1 channelMap];
  if (v2 == v18)
  {
    v14 = 0;
  }

  else
  {
    v4 = (v3 + 8);
    do
    {
      v5 = *v4;
      if (!*v4)
      {
        goto LABEL_14;
      }

      v6 = *v2;
      v7 = v4;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v6;
        v10 = v8 < v6;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 == v4 || v6 < *(v7 + 8))
      {
LABEL_14:
        v7 = v4;
      }

      v11 = v7[5];
      {
        v14 = (*(*Node + 104))(Node);
      }

      else
      {
        v14 = 0;
      }

      ++v2;
    }

    while (v2 != v18 && v14 == 0);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_2602359B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::scheduleTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v26);
    v9 = *(a1 + 32);
    if (v9)
    {
      [v9 imageParamIDs];
      v10 = __p;
    }

    else
    {
      v10 = 0;
      __p = 0;
      v24 = 0;
      v25 = 0;
    }

    v11 = [v9 channelMap];
    if (v10 != v24)
    {
      v12 = (v11 + 8);
      do
      {
        memset(v22, 0, sizeof(v22));
        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_16;
        }

        v14 = *v10;
        v15 = v12;
        do
        {
          v16 = *(v13 + 32);
          v17 = v16 >= v14;
          v18 = v16 < v14;
          if (v17)
          {
            v15 = v13;
          }

          v13 = *(v13 + 8 * v18);
        }

        while (v13);
        if (v15 == v12 || v14 < *(v15 + 8))
        {
LABEL_16:
          v15 = v12;
        }

        v19 = v15[5];
        if (v19)
        {
        }

        Node = OZChanSceneNodeRef::getNode(v19);
        (*(*Node + 136))(Node, a2, v22, a4, a5);
        ++v10;
        v27 = v22;
        std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v27);
      }

      while (v10 != v24);
    }

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(v26);
  }

  return 0;
}

uint64_t OZFxPlugSharedBase::hintTokensWillImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 imageParamIDs];
      v8 = __p;
    }

    else
    {
      v8 = 0;
      __p = 0;
      v22 = 0;
      v23 = 0;
    }

    v9 = [v7 channelMap];
    if (v8 != v22)
    {
      v10 = (v9 + 8);
      do
      {
        memset(v20, 0, sizeof(v20));
        v11 = *v10;
        if (!*v10)
        {
          goto LABEL_16;
        }

        v12 = *v8;
        v13 = v10;
        do
        {
          v14 = *(v11 + 32);
          v15 = v14 >= v12;
          v16 = v14 < v12;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v13 == v10 || v12 < *(v13 + 8))
        {
LABEL_16:
          v13 = v10;
        }

        v17 = v13[5];
        if (v17)
        {
        }

        Node = OZChanSceneNodeRef::getNode(v17);
        (*(*Node + 144))(Node, a2, v20, a4);
        ++v8;
        v24 = v20;
        std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v24);
      }

      while (v8 != v22);
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  return 0;
}

void sub_260235D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::getTokensImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 imageParamIDs];
      v8 = __p;
    }

    else
    {
      v8 = 0;
      __p = 0;
      v22 = 0;
      v23 = 0;
    }

    v9 = [v7 channelMap];
    if (v8 != v22)
    {
      v10 = (v9 + 8);
      do
      {
        memset(v20, 0, sizeof(v20));
        v11 = *v10;
        if (!*v10)
        {
          goto LABEL_16;
        }

        v12 = *v8;
        v13 = v10;
        do
        {
          v14 = *(v11 + 32);
          v15 = v14 >= v12;
          v16 = v14 < v12;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v13 == v10 || v12 < *(v13 + 8))
        {
LABEL_16:
          v13 = v10;
        }

        v17 = v13[5];
        if (v17)
        {
        }

        Node = OZChanSceneNodeRef::getNode(v17);
        (*(*Node + 152))(Node, a2, v20, a4);
        ++v8;
        v24 = v20;
        std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v24);
      }

      while (v8 != v22);
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  return 0;
}

void sub_260235F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::prerollBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    [*(a1 + 32) imageParamIDs];
    v10 = __p;
  }

  else
  {
    v10 = 0;
    __p = 0;
    v26 = 0;
  }

  v11 = [v9 channelMap];
  if (v10 == v26)
  {
    v22 = 0;
  }

  else
  {
    v12 = (v11 + 8);
    do
    {
      v13 = *v12;
      if (!*v12)
      {
        goto LABEL_14;
      }

      v14 = *v10;
      v15 = v12;
      do
      {
        v16 = *(v13 + 32);
        v17 = v16 >= v14;
        v18 = v16 < v14;
        if (v17)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * v18);
      }

      while (v13);
      if (v15 == v12 || v14 < *(v15 + 8))
      {
LABEL_14:
        v15 = v12;
      }

      v19 = v15[5];
      {
        v22 = (*(*Node + 112))(Node, a2, a3, a4, a5);
      }

      else
      {
        v22 = 0;
      }

      ++v10;
    }

    while (v10 != v26 && v22 == 0);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v22;
}

void sub_260236150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::prerollEnd(OZFxPlugSharedBase *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    [*(this + 4) imageParamIDs];
    v6 = __p;
  }

  else
  {
    v6 = 0;
    __p = 0;
    v22 = 0;
  }

  v7 = [v5 channelMap];
  if (v6 == v22)
  {
    v18 = 0;
  }

  else
  {
    v8 = (v7 + 8);
    do
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }

      v10 = *v6;
      v11 = v8;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 == v8 || v10 < *(v11 + 8))
      {
LABEL_14:
        v11 = v8;
      }

      v15 = v11[5];
      {
        v18 = (*(*Node + 120))(Node, a2, a3);
      }

      else
      {
        v18 = 0;
      }

      ++v6;
    }

    while (v6 != v22 && v18 == 0);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v18;
}

void sub_2602362F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::setRate(OZFxPlugSharedBase *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  v7 = *(this + 4);
  if (v7)
  {
    [*(this + 4) imageParamIDs];
    v8 = __p;
  }

  else
  {
    v8 = 0;
    __p = 0;
    v24 = 0;
  }

  v9 = [v7 channelMap];
  if (v8 == v24)
  {
    v20 = 0;
  }

  else
  {
    v10 = (v9 + 8);
    do
    {
      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_14;
      }

      v12 = *v8;
      v13 = v10;
      do
      {
        v14 = *(v11 + 32);
        v15 = v14 >= v12;
        v16 = v14 < v12;
        if (v15)
        {
          v13 = v11;
        }

        v11 = *(v11 + 8 * v16);
      }

      while (v11);
      if (v13 == v10 || v12 < *(v13 + 8))
      {
LABEL_14:
        v13 = v10;
      }

      v17 = v13[5];
      {
        v20 = (*(*Node + 128))(Node, a2, a3, a4);
      }

      else
      {
        v20 = 0;
      }

      ++v8;
    }

    while (v8 != v24 && v20 == 0);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_2602364B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZFxPlugSharedBase::pruneTokensAtTime(OZFxPlugSharedBase *this, const CMTime *a2, const char *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    [*(this + 4) imageParamIDs];
    v6 = __p;
  }

  else
  {
    v6 = 0;
    __p = 0;
    v21 = 0;
    v22 = 0;
  }

  v7 = [v5 channelMap];
  if (v6 != v21)
  {
    v8 = (v7 + 8);
    do
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }

      v10 = *v6;
      v11 = v8;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 == v8 || v10 < *(v11 + 8))
      {
LABEL_14:
        v11 = v8;
      }

      v15 = v11[5];
      if (v15)
      {
        if (v16)
        {
          Node = OZChanSceneNodeRef::getNode(v16);
          if (Node)
          {
            v18 = *&a2->value;
            epoch = a2->epoch;
            (*(*Node + 160))(Node, &v18, a3);
          }
        }
      }

      ++v6;
    }

    while (v6 != v21);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_260236644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZFxPlugSharedBase::pruneTokensExceptAtTime(OZFxPlugSharedBase *this, const CMTime *a2, const char *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    [*(this + 4) imageParamIDs];
    v6 = __p;
  }

  else
  {
    v6 = 0;
    __p = 0;
    v21 = 0;
    v22 = 0;
  }

  v7 = [v5 channelMap];
  if (v6 != v21)
  {
    v8 = (v7 + 8);
    do
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_14;
      }

      v10 = *v6;
      v11 = v8;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 == v8 || v10 < *(v11 + 8))
      {
LABEL_14:
        v11 = v8;
      }

      v15 = v11[5];
      if (v15)
      {
        if (v16)
        {
          Node = OZChanSceneNodeRef::getNode(v16);
          if (Node)
          {
            v18 = *&a2->value;
            epoch = a2->epoch;
            (*(*Node + 168))(Node, &v18, a3);
          }
        }
      }

      ++v6;
    }

    while (v6 != v21);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_2602367D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OZFxPlugSharedBase::pruneAllTokens(OZFxPlugSharedBase *this, const char *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    [*(this + 4) imageParamIDs];
    v4 = __p;
  }

  else
  {
    v4 = 0;
    __p = 0;
    v17 = 0;
  }

  v5 = [v3 channelMap];
  if (v4 != v17)
  {
    v6 = (v5 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_14;
      }

      v8 = *v4;
      v9 = v6;
      do
      {
        v10 = *(v7 + 32);
        v11 = v10 >= v8;
        v12 = v10 < v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_14:
        v9 = v6;
      }

      v13 = v9[5];
      if (v13)
      {
        if (v14)
        {
          Node = OZChanSceneNodeRef::getNode(v14);
          if (Node)
          {
            (*(*Node + 176))(Node, a2);
          }
        }
      }

      ++v4;
    }

    while (v4 != v17);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_260236954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZFxPlugSharedBase::didChangeChannelState(uint64_t this, OZScene *a2, OZChannelBase *a3)
{
  v3 = *(a2 + 198);
  v4 = *(v3 + 260);
  if (v4 < 5)
  {
    return [*(this + 32) restoreParameterFlagsForChannel:a3];
  }

  v5 = *(v3 + 264);
  if (v4 == 5 && v5 <= 4)
  {
    return [*(this + 32) restoreParameterFlagsForChannel:a3];
  }

  return this;
}

uint64_t OZFxPlugSharedBase::CalculateRenderInfo(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5, int a6, void *a7)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  if (a2)
  {
    v14 = (*(*a2 + 272))(a2);
    if (v14)
    {
      v15 = v14;
      OZExportSettings::OZExportSettings(v18);
      OZScene::getSceneSettings(v15, v18);
      if (v18[44])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      OZExportSettings::~OZExportSettings(v18);
    }
  }

  result = OZFxPlug_FxDepthFromDepth(a5);
  v17 = a6 == 1;
  *a7 = v11;
  if (a6 == 2)
  {
    v17 = 2;
  }

  a7[1] = v7;
  a7[2] = v17;
  a7[3] = v12;
  a7[4] = v13;
  a7[5] = result;
  return result;
}

void *OZFxPlugSharedBase::footageFromSceneNode(void *this, OZSceneNode *a2)
{
  if (this)
  {
    v2 = this;
    if (!this)
    {
      if (this)
      {

        return OZImageElement::getFootage(this);
      }
    }
  }

  return this;
}

void OZFxPlugSharedBase::setupRenderParamsForRetrievingImage(OZFxPlugSharedBase *this, OZRenderParams *a2, void *lpsrc, OZSceneNode *a4, const CMTime *a5, GLRenderer *a6)
{
  if (lpsrc)
  {
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v12 = OZFxPlugSharedBase::footageFromSceneNode(lpsrc, a2);
  if (v12)
  {
    v13 = **&MEMORY[0x277CC08F0];
    OZFootage::getFieldDominance(v12, &v13);
  }

  operator new();
}

uint64_t OZFxPlugSharedBase::cleanupRenderParams(OZFxPlugSharedBase *this, OZRenderParams *a2)
{
  result = OZRenderParams::deleteControl(this);
  *(this + 35) = 0;
  return result;
}

Float64 FigTimeToFrames(__int128 *a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    OZSceneSettings::getFrameDuration((a2 + 336), &v7);
    operator/(a1, &v7, &time);
    return CMTimeGetSeconds(&time);
  }

  return result;
}

CMTime *FramesToFigTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>, Float64 a4@<D0>)
{
  v6 = MEMORY[0x277CC08F0];
  *&a3->value = *MEMORY[0x277CC08F0];
  a3->epoch = *(v6 + 16);
  if (!a2)
  {
    OZSceneSettings::getFrameDuration(&result[14], &v7);
    return operator*(&v7, a3, a4);
  }

  return result;
}

void **std::vector<std::string>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t std::__shared_ptr_emplace<OZFxPlugSharedLock>::__shared_ptr_emplace[abi:ne200100]<OZFxPlugSharedBase *,std::allocator<OZFxPlugSharedLock>,0>(uint64_t a1, OZFxPlugSharedBase **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2872B4818;
  OZFxPlugSharedLock::OZFxPlugSharedLock((a1 + 24), *a2);
  return a1;
}

void std::__shared_ptr_emplace<OZFxPlugSharedLock>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2872B4818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void OZFxPlugSharedBase::OZFxPlugSharedBase()
{
  if (__cxa_guard_acquire(&_MergedGlobals_41))
  {
    qword_280C5EA48 = 0;
    unk_280C5EA50 = 0;
    qword_280C5EA40 = 0;
    __cxa_atexit(std::vector<std::string>::~vector[abi:ne200100], &qword_280C5EA40, &dword_25F8F0000);
    __cxa_guard_release(&_MergedGlobals_41);
  }
}

void OZChannelFontBase::OZChannelFontBase(OZChannelFontBase *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, a5, a6, 0, 0);
  *v7 = &unk_2872B4868;
  v7[2] = &unk_2872B4BD8;
  PCSharedCount::PCSharedCount(&v9);
  PCURL::PCURL(&v8, @"Text Format Family");
  OZChannelEnum::OZChannelEnum((this + 136), &v9, &v8, this, 1u, 8u, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCSharedCount::PCSharedCount(&v9);
  PCURL::PCURL(&v8, @"Text Format Typeface");
  OZChannelEnum::OZChannelEnum((this + 392), &v9, &v8, this, 2u, 8u, 0, 0);
  PCString::~PCString(&v8);
  PCString::~PCString(&v9);
  PCSharedCount::PCSharedCount(this + 81);
  PCSharedCount::PCSharedCount(this + 82);
  OZChannelBase::setLabelCtlrClassName(this, @"OZChanLabelController");
}

void sub_26023724C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(v10 + 82);
  PCString::~PCString(v10 + 81);
  OZChannelEnum::~OZChannelEnum(&v10[49]);
  OZChannelEnum::~OZChannelEnum(&v10[17]);
  OZCompoundChannel::~OZCompoundChannel(v10);
  _Unwind_Resume(a1);
}

void OZChannelFontBase::OZChannelFontBase(OZChannelFontBase *this, const OZChannelFontBase *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_2872B4868;
  v5[2] = &unk_2872B4BD8;
  OZChannelEnum::OZChannelEnum((v5 + 17), (a2 + 136), this);
  OZChannelEnum::OZChannelEnum((this + 392), (a2 + 392), this);
  PCSharedCount::PCSharedCount(this + 81);
  PCSharedCount::PCSharedCount(this + 82);
  PCString::set(this + 81, a2 + 81);
  PCString::set(this + 82, a2 + 82);
  *(this + 166) = *(a2 + 166);
}

void sub_260237398(_Unwind_Exception *a1)
{
  PCString::~PCString(v1 + 81);
  OZChannelEnum::~OZChannelEnum(&v1[49]);
  OZChannelEnum::~OZChannelEnum(&v1[17]);
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void OZChannelFontBase::init(PCString *this, OZFontManagerBase *a2, const PCString *a3)
{
  PCString::set(this + 81, a3);
  PCString::set(this + 82, a3);
  LODWORD(this[83].var0) = 0;
}

void OZChannelFontBase::copy(OZChannelFontBase *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 17, (v4 + 136), a3);
  OZChannelEnum::copy(this + 49, (v4 + 392), a3);
  PCString::set(this + 81, &v4[5].var11);
  PCString::set(this + 82, &v4[5].var12);
  *(this + 166) = v4[5].var13;
}

void OZChannelFontBase::assign(OZChannelFontBase *this, const OZChannelBase *a2)
{
  v2 = a2;
  OZChannelFolder::assign(this, a2);
  if (v2)
  {
  }

  PCString::set(this + 81, &v2[5].var11);
  PCString::set(this + 82, &v2[5].var12);
  *(this + 166) = v2[5].var13;
}

uint64_t OZChannelFontBase::writeHeader(OZChannelBase *this, OZFactory *a2, int a3)
{
  PCSerializerWriteStream::pushScope(a2, &OZChannelFontBaseScope);

  return OZChannelBase::writeHeader(this, a2, a3);
}

uint64_t non-virtual thunk toOZChannelFontBase::writeHeader(OZChannelFontBase *this, OZFactory *a2, int a3)
{
  v5 = (this - 16);
  PCSerializerWriteStream::pushScope(a2, &OZChannelFontBaseScope);

  return OZChannelBase::writeHeader(v5, a2, a3);
}

uint64_t OZChannelFontBase::writeBody(const PCString *this, PCSerializerWriteStream *a2)
{
  PCString::PCString(&v6, this + 81);
  (*(*a2 + 16))(a2, 114);
  (*(*a2 + 104))(a2, &v6);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v6);
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    PCString::PCString(&v5, this + 82);
    (*(*a2 + 16))(a2, 115);
    (*(*a2 + 104))(a2, &v5);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v5);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZChannelFontBase::parseBegin(OZChannelBase *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelFontBaseScope);
  return 1;
}

uint64_t non-virtual thunk toOZChannelFontBase::parseBegin(OZChannelFontBase *this, PCSerializerReadStream *a2)
{
  OZChannelBase::parseBegin((this - 16), a2);
  PCSerializerReadStream::pushScope(a2, &OZChannelFontBaseScope);
  return 1;
}

uint64_t OZChannelFontBase::parseElement(PCString *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v5 = *(a3 + 2);
  if (v5 == 115)
  {
    (*(*a3 + 16))(a3, this + 82);
  }

  else if (v5 == 114)
  {
    PCSharedCount::PCSharedCount(&v8);
    (*(*a3 + 16))(a3, &v8);
    OZChannelFontBase::validateAndSetFontName(this, &v8);
    (this->var0[26].length)(this);
    OZChannelBase::parseElement(this, a2, a3);
    PCString::~PCString(&v8);
  }

  return 1;
}

void OZChannelFontBase::validateAndSetFontName(PCString *this, PCString *a2)
{
  OZChannelFontBase::checkAndConvertToSystemFont(this, a2, 48.0, &v3);
  PCString::set(this + 81, &v3);
  PCString::~PCString(&v3);
}

void OZChannelFontBase::getDefaultSystemFont(OZChannelFontBase *this@<X0>, PCString *a2@<X8>)
{
  OZFontManager::getInstance(this);

  OZFontManagerBase::getDefaultSystemFont(a2);
}

uint64_t OZChannelFontBase::getFontFace(OZChannelFontBase *this, const PCString *a2)
{
  v2 = *(*OZFontManager::getInstance(this) + 56);

  return v2();
}

void OZChannelFontBase::getDefaultSystemFontFace(OZChannelFontBase *this@<X0>, void *a2@<X8>)
{
  Instance = OZFontManager::getInstance(this);

  OZFontManagerBase::getDefaultSystemFontFace(Instance, a2);
}

void OZChannelFontBase::setFontChannelWithName(OZChannelFontBase *this, const PCString *a2)
{
  (*(*this + 840))(&v11);
  v3 = v11;
  if (!v11)
  {
    (*(*this + 848))(&v10, this);
    v4 = v10;
    v10 = 0uLL;
    v5 = *(&v11 + 1);
    v11 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }
    }

    v3 = v11;
  }

  v6 = *(v3 + 24);
  v7 = (*(*this + 832))(this);
  FontFamilyIndex = OZFontCollection::getFontFamilyIndex(v7, v6);
  OZChannel::setDefaultValue((this + 136), FontFamilyIndex);
  OZChannelBase::reset((this + 136), 0);
  TypefaceIndex = OZFontFamily::getTypefaceIndex(v6, (v11 + 8));
  OZChannel::setDefaultValue((this + 392), TypefaceIndex);
  OZChannelBase::reset((this + 392), 0);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
  }
}

void sub_260237CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelFontBase::getValidatedFontName(OZChannelBase *this@<X0>, PCString *a2@<X8>)
{
  var13 = this[5].var13;
  if (var13 != 3)
  {
    if (var13 == 2)
    {
      ObjectManipulator = OZChannelBase::getObjectManipulator(this);
      if (ObjectManipulator && (v6 = (*(*ObjectManipulator + 264))(ObjectManipulator)) != 0 && (v7 = OZScene::testFlag(v6, 256)))
      {
        OZFontManager::getInstance(v7);

        OZFontManagerBase::getDefaultSystemFont(a2);
      }

      else
      {

        PCString::PCString(a2, &this[5].var11);
      }

      return;
    }

    v8 = OZChannelBase::getObjectManipulator(this);
    if (v8)
    {
      v9 = (*(*v8 + 264))(v8);
      if (v9)
      {
        OZScene::setFlag(v9, 256);
      }
    }
  }

  v10 = *(this->var0 + 103);

  v10(this);
}

void OZChannelFont::OZChannelFont(OZChannelFont *this, OZFactory *a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6)
{
  OZChannelFontBase::OZChannelFontBase(this, a2, a3, a4, a5, a6);
  *v7 = &unk_2872B4C48;
  *(v7 + 2) = &unk_2872B4FB8;
  OZFontManager::getInstance(v7);
  OZFontManagerBase::getDefaultSystemFont(&v8);
  PCString::set(this + 81, &v8);
  PCString::set(this + 82, &v8);
  *(this + 166) = 0;
  OZChannelBase::setParameterCtlrClassName(this, @"OZFontController");
  PCString::~PCString(&v8);
}

uint64_t OZChannelFont_Factory::getInstance(OZChannelFont_Factory *this)
{
  if (atomic_load_explicit(&OZChannelFont_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelFont_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelFont_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelFont_Factory::_instance;
}

void OZChannelFont::OZChannelFont(OZChannelFont *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelFont_Factory::getInstance(this);

  OZChannelFont::OZChannelFont(this, Instance, a2, a3, a4, a5);
}

void OZChannelFont::OZChannelFont(OZChannelFont *this, const OZChannelFont *a2, OZChannelFolder *a3)
{
  OZChannelFontBase::OZChannelFontBase(this, a2, a3);
  v3->var0 = &unk_2872B4C48;
  v3->var2 = &unk_2872B4FB8;
  OZChannelBase::setParameterCtlrClassName(v3, @"OZFontController");
}

void OZChannelFont_Factory::OZChannelFont_Factory(OZChannelFont_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_2603484B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2872B5028;
  *(this + 16) = &unk_2872B50F8;
}

void OZFxPlugRenderContext::OZFxPlugRenderContext(uint64_t a1)
{
  *a1 = &unk_2872B5150;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  PCSharedCount::PCSharedCount((a1 + 24));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  operator new();
}

void sub_2602384E0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10E0C409D1DB814);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::~OZFxPlugRenderContextManager(OZFxPlugRenderContextManager *this)
{
  v1 = this;
  this->_vptr$OZFxPlugRenderContextManager = &unk_2872B5170;
  while (v1->_contexts.__tree_.__size_)
  {
    for (i = v1->_contexts.__tree_.__begin_node_; ; this = std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](i + 5, 1))
    {
      v3 = i[10];
      if (!v3)
      {
        break;
      }

      OZFxPlugRenderContextManager::fullyReleaseContext(this, *(*(i[6] + (((v3 + i[9] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + i[9] - 1) & 0x1FF)));
      --i[10];
    }

    begin_node = v1->_contexts.__tree_.__begin_node_;
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(&v1->_contexts, begin_node);
    std::deque<unsigned long>::~deque[abi:ne200100](begin_node + 5);
    operator delete(begin_node);
  }

  PCSpinLock::~PCSpinLock(&v1->_contextLock);
  std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::destroy(&v1->_contexts, v1->_contexts.__tree_.__end_node_.__left_);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v1->_workingColorDescription._pcColorDesc._colorSpaceRef._obj);
}

{
  OZFxPlugRenderContextManager::~OZFxPlugRenderContextManager(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZFxPlugRenderContextManager::fullyReleaseContext(uint64_t a1, uint64_t a2)
{
  *(a2 + 72) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      LiAgent::~LiAgent(v3);
      MEMORY[0x2666E9F00]();
    }

    *(a2 + 32) = 0;
  }

  *(a2 + 32) = 0;
  v4 = *(a2 + 40);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(a2 + 40) = 0;
  }

  *(a2 + 40) = 0;
  PCSharedCount::PCSharedCount(&v7);
  *(a2 + 16) = 0;
  PCSharedCount::PCSharedCount(&v8, &v7);
  PCSharedCount::operator=((a2 + 24), &v8);
  PCSharedCount::~PCSharedCount(&v8);
  PCSharedCount::~PCSharedCount(&v7);
  v5 = *(a2 + 296);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (*(*a2 + 8))(a2);
}

void sub_260238734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::setWorkingColorDescription(OZFxPlugRenderContextManager *this, const FxColorDescription *a2)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  PCCFRef<CGColorSpace *>::operator=(&this->_workingColorDescription._pcColorDesc._colorSpaceRef._obj, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  this->_workingColorDescription._pcColorDesc._toneMapMethod._gain = a2->_pcColorDesc._toneMapMethod._gain;
  *&this->_workingColorDescription._pcColorDesc._dynamicRange = v5;
  this->_workingColorDescription._isPremultiplied = a2->_isPremultiplied;
  PCSpinLock::unlock(&p_contextLock->_lock);
}

void sub_260238808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::setBlendingGamma(OZFxPlugRenderContextManager *this, float a2)
{
  PCSpinLock::lock(&this->_contextLock._lock);
  this->_blendingGamma = a2;
  PCSpinLock::unlock(&this->_contextLock._lock);
}

void OZFxPlugRenderContextManager::setThreadInfo(uint64_t a1, const PCSharedCount *a2, LiRenderParameters **a3, uint64_t a4)
{
  lock = (a1 + 72);
  PCSpinLock::lock((a1 + 72));
  v8 = pthread_self();
  v11 = *(a1 + 56);
  v10 = (a1 + 56);
  v9 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v10;
  do
  {
    v13 = v9[4];
    v14 = v13 >= v8;
    v15 = v13 < v8;
    if (v14)
    {
      v12 = v9;
    }

    v9 = v9[v15];
  }

  while (v9);
  if (v12 == v10 || v8 < v12[4] || (v16 = v12[10]) == 0)
  {
LABEL_14:
    operator new();
  }

  v17 = *(*(v12[6] + (((v16 + v12[9] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v16 + v12[9] - 1) & 0x1FF));
  ++*(v17 + 8);
  v18 = *(v17 + 64);
  if (a4)
  {
    if (v18)
    {
      OZRenderParams::~OZRenderParams(*(v17 + 64));
      MEMORY[0x2666E9F00]();
    }

    *(v17 + 64) = 0;
    operator new();
  }

  if (v18 && !*HGRenderJob::GetRenderNodeList(*(v17 + 64)))
  {
    RenderDevice = LiAgent::getRenderDevice(a3);
    OZRenderParams::setRenderDevice(v18, RenderDevice);
  }

  *(v17 + 16) = a2->var0;
  PCSharedCount::PCSharedCount(&v23, a2 + 1);
  PCSharedCount::operator=((v17 + 24), &v23);
  PCSharedCount::~PCSharedCount(&v23);
  v19 = v17;
  v20 = *(v17 + 32);
  if (v20 && *(v17 + 48) == 1)
  {
    LiAgent::~LiAgent(v20);
    MEMORY[0x2666E9F00]();
    v19 = v17;
    *(v17 + 32) = 0;
  }

  *(v19 + 32) = a3;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  *(v19 + 52) = 0;
  if (lock)
  {
    PCSpinLock::unlock(lock);
  }
}

uint64_t OZFxPlugRenderContextManager::getCurrentTemporalContext(OZFxPlugRenderContextManager *this)
{
  v2 = pthread_self();
  v15 = v2;
  left = this->_contexts.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_11;
  }

  p_end_node = &this->_contexts.__tree_.__end_node_;
  do
  {
    v5 = left[4].__left_;
    v6 = v5 >= v2;
    v7 = v5 < v2;
    if (v6)
    {
      p_end_node = left;
    }

    left = left[v7].__left_;
  }

  while (left);
  if (p_end_node == &this->_contexts.__tree_.__end_node_ || v2 < p_end_node[4].__left_ || (v8 = p_end_node[10].__left_) == 0)
  {
LABEL_11:
    ThreadLocalDevice = getThreadLocalDevice(&v14);
    if (!v14)
    {
      LiHelium::getDefaultGPU(ThreadLocalDevice, &v13);
      v11 = v13;
      v13 = 0uLL;
      v12 = *(&v14 + 1);
      v14 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        if (*(&v13 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
        }
      }
    }

    *&v13 = &v15;
    std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t * const&>,std::tuple<>>(&this->_contexts, &v15);
    operator new();
  }

  return *(*(p_end_node[6].__left_ + (((v8 + p_end_node[9].__left_ - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v8 + p_end_node[9].__left_ - 1) & 0x1FF));
}

void sub_260238D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *getThreadLocalDevice@<X0>(void *a1@<X8>)
{
  getThreadLocalDeviceInstance();
  result = PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::getValuePtr(getThreadLocalDeviceInstance(void)::instance);
  v3 = result[1];
  *a1 = *result;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_260239168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCSharedCount::~PCSharedCount((v9 - 72));
  _Unwind_Resume(a1);
}

uint64_t OZFxPlugRenderContextManager::getAgent(OZFxPlugRenderContextManager *this, OZFxPlugSharedBase *a2)
{
  p_contextLock = &this->_contextLock;
  v15 = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  CurrentTemporalContext = OZFxPlugRenderContextManager::getCurrentTemporalContext(this);
  v5 = *(CurrentTemporalContext + 332);
  *(CurrentTemporalContext + 332) = v5 + 1;
  if (!v5)
  {
    operator new();
  }

  if (!*(CurrentTemporalContext + 32))
  {
    OZFxPlugRenderContextManager::createTemporalContext();
  }

  if (*(CurrentTemporalContext + 48) == 1)
  {
    if (!*(CurrentTemporalContext + 288))
    {
      RenderDevice = LiRenderParameters::getRenderDevice((CurrentTemporalContext + 72));
      v7 = RenderDevice[1];
      v13 = *RenderDevice;
      v14 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      PGHelium::acquireRenderer(&v13, &v12);
      v8 = v12;
      v12 = 0uLL;
      v9 = *(CurrentTemporalContext + 296);
      *(CurrentTemporalContext + 288) = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (*(&v12 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
        }
      }

      LiRenderParameters::setHeliumRenderer(CurrentTemporalContext + 72, *(CurrentTemporalContext + 288));
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    ++*(CurrentTemporalContext + 52);
  }

  v10 = *(CurrentTemporalContext + 32);
  PCSpinLock::unlock(&p_contextLock->_lock);
  return v10;
}

void sub_26023935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::returnAgent(OZFxPlugRenderContextManager *this)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  CurrentTemporalContext = OZFxPlugRenderContextManager::getCurrentTemporalContext(this);
  v4 = CurrentTemporalContext;
  if (*(CurrentTemporalContext + 48) == 1)
  {
    v5 = *(CurrentTemporalContext + 52) - 1;
    *(CurrentTemporalContext + 52) = v5;
    if (!v5)
    {
      LiRenderParameters::setHeliumRenderer(CurrentTemporalContext + 72, 0);
      v6 = *(v4 + 296);
      *(v4 + 288) = 0;
      *(v4 + 296) = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  v7 = *(v4 + 332) - 1;
  *(v4 + 332) = v7;
  if (!v7)
  {
    std::unique_ptr<PGPerThreadSetCurrentContextSentry>::reset[abi:ne200100]((v4 + 336), 0);
  }

  PCSpinLock::unlock(&p_contextLock->_lock);
}

void sub_260239458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

PGPerThreadSetCurrentContextSentry *std::unique_ptr<PGPerThreadSetCurrentContextSentry>::reset[abi:ne200100](PGPerThreadSetCurrentContextSentry **a1, PGPerThreadSetCurrentContextSentry *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t OZFxPlugRenderContextManager::getRenderParams(OZFxPlugRenderContextManager *this, OZFxPlugSharedBase *a2)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  CurrentTemporalContext = OZFxPlugRenderContextManager::getCurrentTemporalContext(this);
  if (!*(CurrentTemporalContext + 32))
  {
    OZFxPlugRenderContextManager::createTemporalContext();
  }

  v5 = *(CurrentTemporalContext + 64);
  PCSpinLock::unlock(&p_contextLock->_lock);
  return v5;
}

void sub_260239530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::setHandlingOSCEvent(OZFxPlugRenderContextManager *this, char a2)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  *(OZFxPlugRenderContextManager::getCurrentTemporalContext(this) + 56) = a2;
  PCSpinLock::unlock(&p_contextLock->_lock);
}

void sub_2602395A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZFxPlugRenderContextManager::getImageList(OZFxPlugRenderContextManager *this)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  CurrentTemporalContext = OZFxPlugRenderContextManager::getCurrentTemporalContext(this);
  PCSpinLock::unlock(&p_contextLock->_lock);
  return CurrentTemporalContext + 304;
}

void sub_260239608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::setIsRendering(OZFxPlugRenderContextManager *this, char a2)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  *(OZFxPlugRenderContextManager::getCurrentTemporalContext(this) + 328) = a2;
  PCSpinLock::unlock(&p_contextLock->_lock);
}

void sub_260239678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t OZFxPlugRenderContextManager::isRendering(OZFxPlugRenderContextManager *this)
{
  p_contextLock = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  v3 = *(OZFxPlugRenderContextManager::getCurrentTemporalContext(this) + 328);
  PCSpinLock::unlock(&p_contextLock->_lock);
  return v3;
}

void sub_2602396E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::pushContext(os_unfair_lock_s *a1, uint64_t a2)
{
  v9[1] = &a1[18];
  PCSpinLock::lock(a1 + 18);
  v9[0] = pthread_self();
  *&v8 = v9;
  std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t * const&>,std::tuple<>>(&a1[12], v9);
  ThreadLocalDevice = getThreadLocalDevice(&v8);
  if (!v8)
  {
    if (a2 == 1)
    {
      LiHelium::getDefaultGPU(ThreadLocalDevice, &v7);
    }

    else
    {
      HGComputeDeviceManager::GetCPUComputeDevice(ThreadLocalDevice, &v7);
    }

    v5 = v7;
    v7 = 0uLL;
    v6 = *(&v8 + 1);
    v8 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }
  }

  operator new();
}

void sub_26023988C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::pushContext(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v10[1] = &a1[18];
  PCSpinLock::lock(a1 + 18);
  v10[0] = pthread_self();
  *&v9 = v10;
  std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t * const&>,std::tuple<>>(&a1[12], v10);
  ThreadLocalDevice = getThreadLocalDevice(&v9);
  if (!v9)
  {
    if (a3 == 1)
    {
      LiHelium::getDefaultGPU(ThreadLocalDevice, &v8);
    }

    else
    {
      HGComputeDeviceManager::GetCPUComputeDevice(ThreadLocalDevice, &v8);
    }

    v6 = v8;
    v8 = 0uLL;
    v7 = *(&v9 + 1);
    v9 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }
  }

  operator new();
}

void sub_260239A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextManager::popContext(OZFxPlugRenderContextManager *this)
{
  p_contextLock = &this->_contextLock;
  v6[1] = &this->_contextLock;
  PCSpinLock::lock(&this->_contextLock._lock);
  v6[0] = pthread_self();
  v6[3] = v6;
  v3 = std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t * const&>,std::tuple<>>(&this->_contexts, v6);
  v4 = v3[10] - 1;
  v5 = *(*(v3[6] + (((v4 + v3[9]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + v3[9]) & 0x1FF));
  v3[10] = v4;
  std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v3 + 5, 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PCSpinLock::unlock(&p_contextLock->_lock);
}

void sub_260239BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void OZFxPlugRenderContextSentinel::OZFxPlugRenderContextSentinel(id **a1, id *a2, OZFxPlugRenderContextSentinel *this, uint64_t a4)
{
  RenderNodeList = HGRenderJob::GetRenderNodeList(this);
  getThreadLocalDeviceInstance();
  ValuePtr = PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::getValuePtr(getThreadLocalDeviceInstance(void)::instance);
  v11 = *RenderNodeList;
  v10 = RenderNodeList[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = ValuePtr[1];
  *ValuePtr = v11;
  ValuePtr[1] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  *a1 = a2;
  v13 = (*(*a2 + 3))(a2);
  v14 = [a2[4] contextManager];
  if (v14)
  {
    v15 = v14;
    if (v13)
    {
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(this);
      OZFxPlugRenderContextManager::setWorkingColorDescription(v15, WorkingColorDescription);
      BlendingGamma = OZRenderParams::getBlendingGamma(this);
      OZFxPlugRenderContextManager::setBlendingGamma(v15, BlendingGamma);
    }

    OZFxPlugRenderContextManager::pushContext(v15, a4);
  }
}

void OZFxPlugRenderContextSentinel::~OZFxPlugRenderContextSentinel(OZFxPlugRenderContextSentinel *this)
{
  v1 = [*(*this + 32) contextManager];
  if (v1)
  {
    OZFxPlugRenderContextManager::popContext(v1);
  }

  getThreadLocalDeviceInstance();
  ValuePtr = PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::getValuePtr(getThreadLocalDeviceInstance(void)::instance);
  v3 = ValuePtr[1];
  *ValuePtr = 0;
  ValuePtr[1] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t OZFxRenderContextAgentSentry::getAgent(OZFxPlugRenderContextManager **this, OZFxPlugSharedBase *a2)
{
  v2 = *this;
  this[1] = (this[1] + 1);
  return OZFxPlugRenderContextManager::getAgent(v2, a2);
}

void OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(OZFxPlugRenderContextManager **this)
{
  if (this[1] >= 1)
  {
    v2 = 0;
    do
    {
      OZFxPlugRenderContextManager::returnAgent(*this);
      ++v2;
    }

    while (v2 < this[1]);
  }
}

void OZFxPlugRenderContext::~OZFxPlugRenderContext(OZFxPlugRenderContext *this)
{
  OZFxPlugRenderContext::~OZFxPlugRenderContext(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2872B5150;
  v2 = *(this + 8);
  if (v2)
  {
    OZRenderParams::~OZRenderParams(v2);
    MEMORY[0x2666E9F00]();
  }

  *(this + 8) = 0;
  if (*(this + 48) == 1)
  {
    v3 = *(this + 4);
    if (v3)
    {
      LiAgent::~LiAgent(v3);
      MEMORY[0x2666E9F00]();
    }

    *(this + 4) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 5) = 0;
  }

  std::unique_ptr<PGPerThreadSetCurrentContextSentry>::reset[abi:ne200100](this + 42, 0);
  v9 = (this + 304);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 29);
  *(this + 13) = &unk_2871F2660;
  if (*(this + 28) < 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(this + 28);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 104, 0, v7);
  v8 = *(this + 15);
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
  }

  *(this + 15) = 0;
  *(this + 28) = 0;
  PCSharedCount::~PCSharedCount(this + 12);
  PCSharedCount::~PCSharedCount(this + 3);
}

void getThreadLocalDeviceInstance(void)
{
  {
    PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::PCThreadLocalValue(getThreadLocalDeviceInstance(void)::instance);
    __cxa_atexit(PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::~PCThreadLocalValue, getThreadLocalDeviceInstance(void)::instance, &dword_25F8F0000);
  }
}

uint64_t PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::~PCThreadLocalValue(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

pthread_key_t *PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::PCThreadLocalValue(pthread_key_t *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  pthread_key_create(a1, PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::destroy);
  return a1;
}

void sub_260239EFC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::destroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    }

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void *PCThreadLocalValue<std::shared_ptr<HGComputeDevice const>>::getValuePtr(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::destroy(a1, a2[1]);
    std::deque<unsigned long>::~deque[abi:ne200100](a2 + 5);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::__map_value_compare<_opaque_pthread_t *,std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,std::less<_opaque_pthread_t *>,true>,std::allocator<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<_opaque_pthread_t *,std::stack<OZFxPlugRenderContext *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::deque<unsigned long>::~deque[abi:ne200100](v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::deque<OZFxPlugRenderContext *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<OZFxPlugRenderContext *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<OZFxPlugRenderContext *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v10);
}

void sub_26023A394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OZFxPlugSharedLock::~OZFxPlugSharedLock(OZFxPlugSharedLock *this)
{
  PCSharedMutex::lock((this + 8));
  *this = 0;
  PCSharedMutex::unlock((this + 8));
  PCSharedMutex::~PCSharedMutex((this + 8));
}

void OZFxPlugSharedLock::reset(OZFxPlugSharedLock *this)
{
  PCSharedMutex::lock((this + 8));
  *this = 0;
  PCSharedMutex::unlock((this + 8));
}

void OZLiFilter::~OZLiFilter(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  OZRenderParams::~OZRenderParams(&this[7]);
  v5 = a2[1].var0;
  this->var0 = v5;
  *(this + v5[-1].info) = a2[6].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 2);
}

void OZLiHeFilter::OZLiHeFilter(OZLiHeFilter *this, OZEffect *a2, const OZRenderParams *a3, char a4)
{
  *(this + 186) = &unk_2872DEA38;
  *(this + 187) = 0;
  *(this + 1504) = 1;
  OZLiFilter::OZLiFilter(this, &off_2872B52C0, a2, a3, a4);
  v8 = &unk_2872B51B8;
  *this = &unk_2872B51B8;
  *(this + 186) = &unk_2872B52A0;
  *(this + 185) = 0;
  if (!a2)
  {
    if ((a4 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    v8[11](this, 2);
    return;
  }

  if (v9)
  {
    v10 = *a3;
    v11 = *(a3 + 2);
    if ((*(*v9 + 808))(v9, &v10))
    {
      v8 = *this;
      goto LABEL_7;
    }
  }
}

void sub_26023A8FC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 1480);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  OZLiFilter::~OZLiFilter(v1, &off_2872B52C0);
  *(v1 + 1488) = v2;
  *(v1 + 1504) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1496));
  _Unwind_Resume(a1);
}

void sub_26023AA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

void OZLiHeFilter::getHelium(OZLiHeFilter *this@<X0>, LiAgent *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(this + 185);
  if (v5)
  {
    *a3 = v5;
    v6 = *(*v5 + 16);

    v6();
  }

  else
  {
    v8 = *(this + 5);
    v13 = *(this + 2);
    PCSharedCount::PCSharedCount(&v14, this + 3);
    v11 = *(this + 56);
    v12 = *(this + 9);
    (*(*v8 + 224))(v8, a2, &v13, &v11, this + 56);
    PCSharedCount::~PCSharedCount(&v14);
    if (*(this + 12) == 1)
    {
      v9 = *(this + 185);
      v10 = *a3;
      if (v9 != *a3)
      {
        if (v9)
        {
          (*(*v9 + 24))(*(this + 185));
          v10 = *a3;
        }

        *(this + 185) = v10;
        if (v10)
        {
          (*(*v10 + 16))(v10);
        }
      }
    }
  }
}

void sub_26023ABF8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZLiHeFilter::pixelTransformSupport(OZLiHeFilter *this, const LiRenderParameters *a2)
{
  v3 = OZLiFilter::pixelTransformSupport(this, a2);
  v4 = *(this + 5);
  v12 = *(this + 56);
  v13 = *(this + 9);
  v6 = (*(*v4 + 656))(v4, &v12, v5);
  v7 = *(this + 5);
  v12 = *(this + 56);
  v13 = *(this + 9);
  v9 = (*(*v7 + 664))(v7, &v12, v8);
  if (v6)
  {
    return 6;
  }

  if (v3 < 3)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    return 3;
  }

  if (v3)
  {
    return v3;
  }

  return 2;
}

void OZLiHeFilter::fixPixelTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  fixed = LiImageSource::fixPixelTransform(a1, a2, a3, a4);
  v9 = (*(*a1 + 56))(a1, a4, fixed);
  if (v9 > 4)
  {
    return;
  }

  v10 = v9;
  v11 = *(a1 + 40);
  v12 = *v11;
  v14 = (*(v12 + 248))(v11);
  v15 = v14;
  if (v14)
  {
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v41 = *(a1 + 56);
  v17 = (*(*(v13 + 46) + 128))(v13 + 368, &v41);
  if (v10 >= 3 && (v17 & 1) != 0)
  {
    return;
  }

LABEL_8:
  v50 = 0uLL;
  v51 = 0;
  if (v16)
  {
    (*(*v16 + 1320))(v16, &v50, a1 + 56, 0);
    v18 = v50;
    v50 = vabsq_f64(v50);
    v19 = v18.f64[1];
    v40 = v18.f64[0];
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_12:
    v41 = *(a1 + 56);
    if ((OZFxPlugSharedBase::doesSupportLargeRenderScale(v13 + 46, &v41) & 1) == 0)
    {
      __asm { FMOV            V1.2D, #1.0 }

      v26 = vminnmq_f64(v50, _Q1);
      v50 = v26;
      if (v26.f64[0] >= -1.0)
      {
        v27 = v26.f64[0];
      }

      else
      {
        v27 = -1.0;
      }

      v40 = v27;
      if (v26.f64[1] >= -1.0)
      {
        v19 = v26.f64[1];
      }

      else
      {
        v19 = -1.0;
      }
    }

    goto LABEL_19;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v50 = _Q0;
  v51 = 0x3FF0000000000000;
  v19 = 1.0;
  v40 = 1.0;
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_19:
  if (v15)
  {
    v28 = v15[1];
    *&v41.value = xmmword_260853DB0;
    if ((OZFactory::isKindOfClass(v28, &v41) & 1) != 0 || (v29 = v15[1], *&v41.value = xmmword_260853DC0, OZFactory::isKindOfClass(v29, &v41)))
    {
      v30 = (*(*v15 + 272))(v15);
      if (v30)
      {
        v31 = v30;
        OZExportSettings::OZExportSettings(&v41);
        OZScene::getSceneSettings(v31, &v41);
        if (BYTE4(v43) == 1)
        {
          __asm { FMOV            V0.2D, #1.0 }

          v50 = _Q0;
          v51 = 0;
        }

        OZExportSettings::~OZExportSettings(&v41);
      }
    }
  }

  v35.f64[1] = 0.0;
  *&v41.timescale = 0u;
  v42 = 0u;
  v44 = 0u;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = *(a1 + 88);
  v34 = v50.f64[0] * *(a1 + 80);
  v49 = 0x3FF0000000000000;
  v46 = 0x3FF0000000000000;
  v43 = 1.0;
  v41.value = 0x3FF0000000000000;
  v35.f64[0] = v50.f64[1] * v33;
  if (v34 != 1.0)
  {
    *&v41.value = v34;
    *&v41.timescale = v34 * 0.0;
    *&v41.epoch = v34 * 0.0;
    *&v42 = v34 * 0.0;
  }

  if (v35.f64[0] != 1.0)
  {
    *(&v42 + 1) = v35.f64[0] * 0.0;
    v43 = v50.f64[1] * v33;
    *&v44 = v35.f64[0] * 0.0;
    *(&v44 + 1) = v35.f64[0] * 0.0;
  }

  if (v10 >= 3 && (*(a2 + 44) & 1) != 0)
  {
    v36 = *(a3 + 120);
    if (fabs(v36) >= 0.0000001)
    {
      v35.f64[0] = v40 * *(a3 + 24) / v36;
      PCMatrix44Tmpl<double>::leftTranslate(&v41, v35, v19 * *(a3 + 56) / v36, 0.0);
    }
  }

  if (&v41 != a3)
  {
    for (i = 0; i != 128; i += 32)
    {
      v38 = (a3 + i);
      v39 = *(&v41.epoch + i);
      *v38 = *(&v41.value + i);
      v38[1] = v39;
    }
  }
}

void sub_26023B14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZExportSettings::~OZExportSettings(va);
  _Unwind_Resume(a1);
}

void OZLiHeFilter::~OZLiHeFilter(PCSharedCount *this)
{
  this->var0 = &unk_2872B51B8;
  this[186].var0 = &unk_2872B52A0;
  var0 = this[185].var0;
  if (var0)
  {
    (*(*var0 + 24))(var0);
  }

  this->var0 = off_2872B5320;
  this[186].var0 = off_2872B5408;
  OZRenderParams::~OZRenderParams(&this[7]);
  this->var0 = off_2872B5438;
  this[186].var0 = off_2872B5520;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872B52D0);
  this[186].var0 = &unk_2872DEA38;
  LOBYTE(this[188].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[187].var0);
}

{
  this->var0 = &unk_2872B51B8;
  this[186].var0 = &unk_2872B52A0;
  var0 = this[185].var0;
  if (var0)
  {
    (*(*var0 + 24))(var0);
  }

  this->var0 = off_2872B5320;
  this[186].var0 = off_2872B5408;
  OZRenderParams::~OZRenderParams(&this[7]);
  this->var0 = off_2872B5438;
  this[186].var0 = off_2872B5520;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2872B52D0);
  this[186].var0 = &unk_2872DEA38;
  LOBYTE(this[188].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[187].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZLiHeFilter::~OZLiHeFilter(OZLiHeFilter *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872B51B8;
  v1[186].var0 = &unk_2872B52A0;
  var0 = v1[185].var0;
  if (var0)
  {
    (*(*var0 + 24))(var0);
  }

  v1->var0 = off_2872B5320;
  v1[186].var0 = off_2872B5408;
  OZRenderParams::~OZRenderParams(&v1[7]);
  v1->var0 = off_2872B5438;
  v1[186].var0 = off_2872B5520;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2872B52D0);
  v1[186].var0 = &unk_2872DEA38;
  LOBYTE(v1[188].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[187].var0);
}

{
  OZLiHeFilter::~OZLiHeFilter((this + *(*this - 24)));
}

void OZFxGenerator::OZFxGenerator(OZFxGenerator *this, OZFactory *a2, const PCString *a3, unsigned int a4, int a5, char a6)
{
  OZImageGenerator::OZImageGenerator(this, a2, a3, a4);
  *v9 = &unk_2872B56B8;
  *(v9 + 16) = &unk_2872B6010;
  *(v9 + 48) = &unk_2872B6268;
  *(v9 + 6528) = &unk_2872B62C0;
  *(v9 + 19384) = &unk_2872B6398;
  OZFxPlugSharedBase::OZFxPlugSharedBase((v9 + 19384), a3, (v9 + 18776), a5, a6);
}

void sub_26023B6F0(_Unwind_Exception *a1)
{
  OZFxPlugSharedBase::~OZFxPlugSharedBase(v2);
  OZImageGenerator::~OZImageGenerator(v1);
  _Unwind_Resume(a1);
}

void OZFxGenerator::OZFxGenerator(OZFxGenerator *this, const OZFxGenerator *a2, uint64_t a3)
{
  OZImageGenerator::OZImageGenerator(this, a2, a3);
  *v5 = &unk_2872B56B8;
  v5[2] = &unk_2872B6010;
  v5[6] = &unk_2872B6268;
  v5[816] = &unk_2872B62C0;
  *(this + 2423) = &unk_2872B6398;
  OZFxPlugSharedBase::OZFxPlugSharedBase((v5 + 2423), (a2 + 19384), (this + 18776));
}

void OZFxGenerator::~OZFxGenerator(OZFxGenerator *this)
{
  *this = &unk_2872B56B8;
  *(this + 2) = &unk_2872B6010;
  *(this + 6) = &unk_2872B6268;
  *(this + 816) = &unk_2872B62C0;
  v2 = (this + 19384);
  *(this + 2423) = &unk_2872B6398;
  OZFxPlugSharedBase::resetFxLock(this + 2423);
  OZFxPlugSharedBase::~OZFxPlugSharedBase(v2);

  OZImageGenerator::~OZImageGenerator(this);
}

{
  OZFxGenerator::~OZFxGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFxGenerator::~OZFxGenerator(OZFxGenerator *this)
{
  OZFxGenerator::~OZFxGenerator((this - 16));
}

{
  OZFxGenerator::~OZFxGenerator((this - 48));
}

{
  OZFxGenerator::~OZFxGenerator((this - 6528));
}

{
  OZFxGenerator::~OZFxGenerator((this - 19384));
}

{
  OZFxGenerator::~OZFxGenerator((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 6528));

  JUMPOUT(0x2666E9F00);
}

{
  OZFxGenerator::~OZFxGenerator((this - 19384));

  JUMPOUT(0x2666E9F00);
}

void OZFxGenerator::operator=(PCString *a1, const void *a2)
{
  OZImageGenerator::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  PCString::PCString(&v5, v4 + 2442);
  OZChannelDoubleOverRange::setRangeName(a1 + 2423, &v5);
  PCString::~PCString(&v5);
}

void OZFxGenerator::updateChannelsForMisbehavingPlugin(id *this)
{
  [this[2427] softDisableAllChannels];
  v2 = (*(*this + 81))(this);
  if (v2)
  {
    v3 = (*(*v2 + 272))(v2);
    if (v3)
    {
      v4 = *(v3 + 1584);

      OZDocument::postNotification(v4, 0x8000);
    }
  }
}

void OZFxGenerator::didAddToScene(OZFxGenerator *this, CMTimeEpoch *a2)
{
  v2 = a2;
  OZImageGenerator::didAddToScene(this, a2);
  v4 = *(this + 2427);
  v5 = [v4 contextManager];
  if (v5)
  {
    v6 = v5;
    (*(*v2 + 136))(&v13, v2);
    OZFxPlugRenderContextManager::setWorkingColorDescription(v6, &v13);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v13._pcColorDesc._colorSpaceRef._obj);
    v7 = (*(*v2 + 144))(v2);
    OZFxPlugRenderContextManager::setBlendingGamma(v6, v7);
  }

  v8 = this + 19384;
  [v4 setObjectID];
  OZFxPlugSharedBase::doPostConstructionActions(this + 2423);
  if (objc_opt_respondsToSelector())
  {
    if (v2)
    {
      v2 = *(v2 + 198);
    }

    if (((*(*v8 + 256))(this + 19384) & 1) == 0 && v2)
    {
      OZDocument::addCPPObserver(v2, this + 19384, 0);
      (*(*v8 + 264))(this + 19384, 1);
    }
  }

  v9 = *(this + 2426);
  if (((*(*(this + 2423) + 272))(this + 19384) & 1) == 0)
  {
    v10 = objc_opt_class();
    if (v10 == NSClassFromString(&cfstr_Paelensflarege.isa))
    {
      (*(*this + 1736))(this, 8, MEMORY[0x277CC08F0]);
    }

    (*(*v8 + 280))(this + 19384, 1);
  }

  OZChannel::getValueAsDouble((this + 19056), MEMORY[0x277CC08F0], 0.0);
  v12 = v11;
  if ((objc_opt_respondsToSelector() & 1) != 0 && *(this + 19828) == 1)
  {
    [v9 performSelector:sel_initPAEGradientWithHeight_ withObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v12)}];
    *(this + 19828) = 0;
  }

  OZFxPlugSharedBase::finishPluginSetup((this + 19384));
}

uint64_t OZFxGenerator::didFinishLoadingIntoScene(OZFxGenerator *this)
{
  OZElement::didFinishLoadingIntoScene(this);
  OZFxPlugSharedBase::updateFlipChannel(this + 19384);
  OZFxPlugSharedBase::updateAbsolutePointsChannel((this + 19384));
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (result)
  {

    return OZChannelBase::setRangeName((this + 19384), v3);
  }

  return result;
}

uint64_t OZFxGenerator::didChangeChannelState(OZFxGenerator *this, OZChannelBase *a2)
{
  v4 = (*(*this + 272))(this);

  return OZFxPlugSharedBase::didChangeChannelState(this + 19384, v4, a2);
}

uint64_t non-virtual thunk toOZFxGenerator::didChangeChannelState(OZFxGenerator *this, OZChannelBase *a2)
{
  v3 = this - 16;
  v4 = (*(*(this - 2) + 272))(this - 16);

  return OZFxPlugSharedBase::didChangeChannelState((v3 + 19384), v4, a2);
}

uint64_t OZFxGenerator::willRemoveFromScene(OZFxGenerator *this, OZScene *a2)
{
  OZSceneNode::willRemoveFromScene(this, a2);
  result = (*(*(this + 2423) + 256))(this + 19384);
  if (a2)
  {
    if (result)
    {
      result = *(a2 + 198);
      if (result)
      {
        OZDocument::removeCPPObserver(result);
        v5 = *(*(this + 2423) + 264);

        return v5(this + 19384, 0);
      }
    }
  }

  return result;
}

uint64_t OZFxGenerator::canChanRefBeSetTo(OZFxGenerator *this, const OZChanObjectManipRef *a2, const OZObjectManipulator *lpsrc)
{
  if (!lpsrc)
  {
    return 1;
  }

  if (v3)
  {
    return OZImageElement::isEffectSource(v3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t OZFxGenerator::calcHashForState(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = a1[2426];
  if (a1[2427])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && a1[2430] && [v8 variesOverTime])
  {
    v12 = *(a3 + 2);
    v11 = *a3;
    (*(*a2 + 16))(a2, 0);
    (*(*a2 + 112))(a2, &v11);
    (*(*a2 + 24))(a2);
  }

  return (*(*a1 + 536))(a1, a2, a3, a4, 1);
}

uint64_t OZFxGenerator::variesOverTime(OZFxGenerator *this)
{
  v2 = *(this + 2426);
  if (v2)
  {
    return [v2 variesOverTime];
  }

  else
  {
    return OZImageGenerator::variesOverTime(this);
  }
}

uint64_t non-virtual thunk toOZFxGenerator::variesOverTime(id *this)
{
  if (this[3])
  {
    return [this[3] variesOverTime];
  }

  else
  {
    return OZImageGenerator::variesOverTime((this - 2423));
  }
}

uint64_t OZFxGenerator::getInternalName(OZFxGenerator *this)
{
  if (*(this + 2352))
  {
    return *(this + 2352);
  }

  else
  {
    return this + 18808;
  }
}

uint64_t OZFxGenerator::_needsToRender(uint64_t a1, HGNode **a2)
{
  if (*(a1 + 19408) && *(a1 + 19416))
  {
    return 1;
  }

  v4 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v4);
  v5 = *a2;
  if (*a2 == v4)
  {
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    return 0;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

void sub_26023C520(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void OZFxGenerator::getHelium(OZFxGenerator *this@<X0>, LiAgent *a2@<X1>, CMTime *a3@<X2>, OZRenderParams *a4@<X3>, void *a5@<X8>)
{
  v10 = (this + 19384);
  v11 = (this + 19752);
  v12 = (*(*(this + 2423) + 88))(this + 19384);
  v136 = v11;
  v137 = 0;
  if ((v12 & 1) == 0)
  {
    PCMutex::lock(v11);
    v137 = 1;
  }

  OZFxPlugRenderContextSentinel::OZFxPlugRenderContextSentinel(v135, v10, a4, 1);
  v133 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  *v91 = _Q0;
  v134 = _Q0;
  *v96 = *&a3->value;
  *&v96[16] = a3->epoch;
  v18 = OZFxPlugSharedBase::doesTransformFromLocalToScreenSpace(v10, v96);
  v19 = *this;
  if (v18)
  {
    v20 = *((*(v19 + 272))(this) + 344);
    v21.i64[0] = v20;
    v21.i64[1] = SHIDWORD(v20);
    v22 = vcvtq_f64_s64(v21);
    __asm { FMOV            V2.2D, #0.5 }

    v133 = vsubq_f64(v133, vaddq_f64(vmulq_f64(v22, _Q2), v133));
    v134 = v22;
  }

  else
  {
    (*(v19 + 1480))(this, &v133, a4);
  }

  v132 = 0uLL;
  Resolution = OZRenderParams::getResolution(a4, v96);
  v25 = *&v96[8];
  v132 = *v96;
  if (v18)
  {
    v26 = *(a2 + 20);
    v27 = *(v26 + 120) + vaddvq_f64(vmulq_f64(*(v26 + 96), 0));
    v28 = (*(v26 + 24) + vaddvq_f64(vmulq_f64(*v26, 0))) / v27;
    v29 = *(v26 + 48);
    v30 = (*(v26 + 56) + vaddvq_f64(vmulq_f64(*(v26 + 32), 0))) / v27;
    Resolution.n128_f64[0] = *v96 * v134.f64[0] * 0.5 - v28;
    v31 = *v26;
    v32 = *(v26 + 16);
    v97 = *(v26 + 32);
    v98 = v29;
    *v96 = v31;
    *&v96[16] = v32;
    v33 = *(v26 + 64);
    v34 = *(v26 + 80);
    v35 = *(v26 + 112);
    v101 = *(v26 + 96);
    v102 = v35;
    v99 = v33;
    v100 = v34;
    PCMatrix44Tmpl<double>::leftTranslate(v96, Resolution, v25 * v134.f64[1] * 0.5 - v30, 0.0);
    LiAgent::setPixelTransform(a2, v96);
  }

  v131 = 0;
  if ((OZFxGenerator::_needsToRender(this, &v131) & 1) == 0)
  {
    *a5 = v131;
    goto LABEL_65;
  }

  v90 = *(this + 2427);
  [v90 setIsRendering:1];
  v36 = (*(*this + 1328))(this);
  v130[0] = v36 * v133.f64[0];
  v130[1] = v133.f64[1];
  v130[2] = v36 * v134.f64[0];
  v130[3] = v134.f64[1];
  if (v36 * v134.f64[0] <= 0.0 || v134.f64[1] <= 0.0)
  {
    [v90 setIsRendering:0];
    *a5 = 0;
    goto LABEL_63;
  }

  LiImagePolygon::LiImagePolygon(v128);
  LiImagePolygon::set(v128, v133.f64, 0);
  LiAgent::projectAndClipPolygon(a2, v128, 2.0);
  if (((v128[9] - v128[8]) & 0x1FFFFFFFE0) != 0)
  {
    v126 = 0uLL;
    v127 = *v91;
    bounds<LiPolygon::PosFacet,double>(&v129, &v126);
    *v96 = *a4;
    *&v96[16] = *(a4 + 2);
    v37 = (*(*v10 + 31))(v10, v96);
    if (v37 == 6)
    {
      LiAgent::outCrop(a2, v128);
    }

    v38 = v126;
    v39 = v127;
    HeliumRenderer = LiAgent::getHeliumRenderer(a2);
    pixelFormatFromRendererIntermediateFormat(HeliumRenderer);
    v41 = LiAgent::getHeliumRenderer(a2);
    v42 = (*(*v41 + 304))(v41);
    if (v42)
    {
      v43 = 32;
    }

    else
    {
      v43 = 16;
    }

    v92 = v43;
    v125 = 0;
    v125 = [*(this + 2427) figTimeToFxTime:a3 withConversionData:0];
    v44 = (*(*this + 648))(this);
    OZFxPlugSharedBase::CalculateRenderInfo(v10, v44, &v125, &v132, v92, *(a4 + 123), &v122);
    v121 = 0x3FF0000000000000;
    v118 = 0x3FF0000000000000;
    v115 = 0x3FF0000000000000;
    v112 = 0x3FF0000000000000;
    v113 = 0u;
    v114 = 0u;
    v116 = 0u;
    v117 = 0u;
    v119 = 0u;
    v120 = 0u;
    (*(*v10 + 43))(v10, &v112);
    v110 = 0;
    PCSharedCount::PCSharedCount(&v111);
    (*(*v10 + 58))(v10, a2, &v110, a4, &v112, 0);
    PCMatrix44Tmpl<double>::operator*(*(a2 + 20), &v112, v109);
    v88 = FxMatrixFromPCMatrix(v109);
    OZFxPlugSharedBase::restartPluginXPCIfNecessary(v10);
    *v108 = 0;
    v45 = *(this + 2426);
    *v96 = v122;
    *&v96[16] = v123;
    v97 = v124;
    v89 = v45;
    OZFxPlug_CallFrameSetup(this, v45, v96, 0, &v108[1], v108);
    v107 = *v108;
    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    OZFxPlugSharedBase::getBestRenderingBehavior(v10, a2, &v107 + 1, &v107, v96);
    *v108 = v107;
    if (((HIBYTE(v107) | v42) & 1) == 0)
    {
      *(&v124 + 1) = 3;
      v92 = 32;
    }

    v106 = 0;
    if ((*(*v10 + 41))(v10))
    {
      *v96 = v122;
      *&v96[16] = v123;
      v97 = v124;
      [v89 filteredEdges:&v106 withInfo:v96];
    }

    (*(*v10 + 28))(v10, v106);
    v87 = v37;
    v46 = v134;
    v47 = v132;
    LiAgent::getRenderDevice(a2);
    v105 = 0;
    memset(v104, 0, sizeof(v104));
    v48 = (*(*this + 648))(this);
    v49 = vcvtpd_s64_f64(v46.f64[0] * *&v47);
    v50 = vcvtpd_s64_f64(v46.f64[1] * *(&v47 + 1));
    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    OZFxPlug_CalculateImageInfo(v10, v48, v49, v50, v92, v108[1], v104, v96);
    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    if (((*(*v10 + 29))(v10, v96) & 1) == 0)
    {
      OZFxPlug_ClampRectToMaxTextureSize(&v126, v96);
      v126 = *v96;
      v127 = *&v96[16];
    }

    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    OutputFxImage = OZFxGenerator::createOutputFxImage(this, a2, v49, v50, v92, v108[1], &v126, v130, *&v132, *(&v132 + 1), v96, a4, v104);
    [OutputFxImage setPixelTransform:v88];
    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    if (((*(*v10 + 29))(v10, v96) & 1) == 0 && v108[1])
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZFxGenerator.mm");
      pcAbortImpl();
    }

    v59 = *(a4 + 34);
    *v96 = v122;
    *&v96[16] = v123;
    v97 = v124;
    v60 = OZFxPlug_CallRender(this, v89, v59, OutputFxImage, 0, v96, a4);
    (*(*v10 + 59))(v10, a3);
    [*(this + 2433) setAgent:0];
    OZFxPlugSharedBase::getPluginColorDescription(v10, a2, &v103);
    *v96 = *&a3->value;
    *&v96[16] = a3->epoch;
    v61 = (*(*v10 + 29))(v10, v96);
    v69 = OutputFxImage;
    if (!v61)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", v62, v63, v64, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZFxGenerator.mm");
      pcAbortImpl();
    }

    if (!v60)
    {
      v72 = [OutputFxImage width];
      v73 = [OutputFxImage height];
      CGColorSpace = FxColorDescription::getCGColorSpace(&v103);
      OZFxPlug_GenerateFailedRenderNode(this, v72, v73, CGColorSpace, &v131, v75, v76, v77);
    }

    if (v87 != 6)
    {
      if (OutputFxImage)
      {
        [OutputFxImage heliumRef];
        if (*v96)
        {
          v78 = HGRectMake4i(vcvtmd_s64_f64(v38.f64[0] + 0.000000999999997 + 0.0000001), vcvtmd_s64_f64(v38.f64[1] + 0.000000999999997 + 0.0000001), vcvtpd_s64_f64(v38.f64[0] + *&v39 + -0.000000999999997), vcvtpd_s64_f64(v38.f64[1] + *(&v39 + 1) + -0.000000999999997));
          v80 = v79;
          v81 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v81);
          (*(*v81 + 96))(v81, 0, v78, SHIDWORD(v78), v80, SHIDWORD(v80));
          (*(*v81 + 120))(v81, 0, *v96);
          if (v131 != v81)
          {
            if (v131)
            {
              (*(*v131 + 24))(v131);
            }

            v131 = v81;
            (*(*v81 + 16))(v81);
          }

          (*(*v81 + 24))(v81);
          if (*v96)
          {
            (*(**v96 + 24))(*v96);
          }
        }
      }

      goto LABEL_49;
    }

    if (OutputFxImage)
    {
      [OutputFxImage heliumRef];
      v70 = *v96;
      v71 = v131;
      if (v131 == *v96)
      {
        if (*v96)
        {
          (*(**v96 + 24))();
        }

        goto LABEL_49;
      }

      if (!v131)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *v96 = 0;
      v71 = v131;
      if (!v131)
      {
LABEL_49:
        RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
        v83 = *RequestedColorDescription;
        v93[0] = v83;
        if (v83)
        {
          PCCFRefTraits<CGColorSpace *>::retain(v83);
        }

        v84 = *(RequestedColorDescription + 8);
        v94 = *(RequestedColorDescription + 16);
        v93[1] = v84;
        v95 = *(RequestedColorDescription + 24);
        OZFxPlug_ConformFromProcessingDescription(v96, &v131, &v103, v93);
        v85 = *v96;
        if (v131 == *v96)
        {
          if (v131)
          {
            (*(**v96 + 24))(*v96);
          }
        }

        else
        {
          if (v131)
          {
            (*(*v131 + 24))(v131);
            v85 = *v96;
          }

          v131 = v85;
          *v96 = 0;
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(v93);
        [v90 clearImageList];
        if ([(FxImage *)v69 imageType]== 1 && ([(FxImage *)v69 _ownsData]& 1) == 0)
        {
          v86 = [(FxImage *)v69 dataPtr];
          if (v86)
          {
            MEMORY[0x2666E9F00](v86, 0x1000C4077774924);
          }
        }

        [v89 frameCleanup];
        [v90 setIsRendering:0];
        *a5 = v131;
        v131 = 0;
        PCCFRef<CGColorSpace *>::~PCCFRef(&v103._pcColorDesc._colorSpaceRef._obj);
        PCSharedCount::~PCSharedCount(&v111);
        goto LABEL_62;
      }
    }

    (*(*v71 + 24))(v71);
    v70 = *v96;
LABEL_48:
    v131 = v70;
    goto LABEL_49;
  }

  [v90 setIsRendering:0];
  *a5 = 0;
LABEL_62:
  LiImagePolygon::~LiImagePolygon(v128);
LABEL_63:
  if (v131)
  {
    (*(*v131 + 24))(v131);
  }

LABEL_65:
  OZFxPlugRenderContextSentinel::~OZFxPlugRenderContextSentinel(v135);
  if ((v12 & 1) == 0)
  {
    PCMutex::unlock(v11);
  }
}

void sub_26023D43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, CGColorSpace *a41)
{
  HGObject::operator delete(v41);
  if (a23)
  {
    (*(*a23 + 24))(a23);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a41);
  PCSharedCount::~PCSharedCount(&STACK[0x200]);
  LiImagePolygon::~LiImagePolygon(&STACK[0x2E8]);
  v44 = *(v42 - 248);
  if (v44)
  {
    (*(*v44 + 24))(v44);
  }

  OZFxPlugRenderContextSentinel::~OZFxPlugRenderContextSentinel((v42 - 184));
  PCLockSentry<PCMutex>::~PCLockSentry(v42 - 176);
  _Unwind_Resume(a1);
}

FxImage *OZFxGenerator::createOutputFxImage(uint64_t a1, LiAgent *this, int a3, int a4, int a5, int a6, uint64_t a7, double *a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LiAgent::getRenderDevice(this);
  v21 = (*(*a1 + 648))(a1);
  *&v45.value = *a11;
  v45.epoch = *(a11 + 16);
  OZFxPlug_CalculateImageInfo((a1 + 19384), v21, a3, a4, a5, a6, &v46, &v45);
  v22 = v48;
  *(a13 + 32) = v47;
  *(a13 + 48) = v22;
  *(a13 + 64) = v49;
  v23 = *&v46._pcColorDesc._toneMapMethod._gain;
  *a13 = *&v46._pcColorDesc._colorSpaceRef._obj;
  *(a13 + 16) = v23;
  *&v46._pcColorDesc._colorSpaceRef._obj = *a11;
  *&v46._pcColorDesc._toneMapMethod._gain = *(a11 + 16);
  if ((*(*(a1 + 19384) + 232))(a1 + 19384, &v46))
  {
    v24 = FxHeliumImage;
  }

  else
  {
    if (a6)
    {
      v25 = [FxTexture alloc];
      v26 = *(a13 + 48);
      v47 = *(a13 + 32);
      v48 = v26;
      v49 = *(a13 + 64);
      v27 = *(a13 + 16);
      *&v46._pcColorDesc._colorSpaceRef._obj = *a13;
      *&v46._pcColorDesc._toneMapMethod._gain = v27;
      v28 = [(FxTexture *)v25 initWithInfo:&v46 textureId:1 andTarget:3553];
      goto LABEL_7;
    }

    v24 = FxBitmap;
  }

  v29 = [v24 alloc];
  v30 = *(a13 + 48);
  v47 = *(a13 + 32);
  v48 = v30;
  v49 = *(a13 + 64);
  v31 = *(a13 + 16);
  *&v46._pcColorDesc._colorSpaceRef._obj = *a13;
  *&v46._pcColorDesc._toneMapMethod._gain = v31;
  v28 = [v29 initWithInfo:&v46];
LABEL_7:
  p_super = &v28->super;
  [(FxImage *)v28 setBounds:*a8, a8[1], a8[2], a8[3]];
  v33 = vcvtpd_s64_f64(*(a7 + 16));
  v34 = vcvtpd_s64_f64(*(a7 + 24));
  [(FxImage *)p_super setDod:(v33 / -2) | ((v34 / -2) << 32), (v33 - v33 / 2) | ((v34 - v34 / 2) << 32)];
  [(FxImage *)p_super setScaleX:a9];
  [(FxImage *)p_super setScaleY:a10];
  v44 = 0;
  if (*(a12 + 488) == 1)
  {
    v44 = *(a12 + 492);
  }

  [(FxImage *)p_super setFieldOrder:?];
  *&v45.value = *a11;
  v45.epoch = *(a11 + 16);
  v43 = [*(a1 + 19416) figTimeToFxTime:&v45 withConversionData:0];
  [(FxImage *)p_super setField:OZChannelBase::isObjectRef((a1 + 19384))];
  PluginNCLC = OZFxPlugSharedBase::getPluginNCLC((a1 + 19384), this);
  v42 = v35;
  *&v36 = FxConvertPCNCLCCodeToFxNCLCValue(&PluginNCLC);
  [(FxImage *)p_super setNCLCValue:v37, v36];
  [(FxImage *)p_super setColorSpace:OZFxPlugSharedBase::getPluginColorSpace((a1 + 19384), this)];
  OZFxPlugSharedBase::getPluginColorDescription((a1 + 19384), this, &v46);
  [(FxImage *)p_super setDynamicRangeType:OZFxPlug_ConvertDynamicRangeType(&v46)];
  OZFxPlugSharedBase::SetImageColorPrimaries((a1 + 19384), p_super, this);
  [(FxImage *)p_super setPixelTransform:FxMatrixFromPCMatrix(*(this + 20))];
  PCCFRef<CGColorSpace *>::~PCCFRef(&v46._pcColorDesc._colorSpaceRef._obj);
  return p_super;
}

void sub_26023D9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZFxGenerator::makeRenderImageSource(OZFxGenerator *this, OZRenderParams *a2, const OZRenderGraphState *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  (*(*this + 1520))(this, v13, a2);
  v11 = *a2;
  v12 = *(a2 + 2);
  if ((*(*(this + 2423) + 232))(this + 19384, &v11))
  {
LABEL_8:
    operator new();
  }

  if (*&v14 <= 4096.0)
  {
    if (*(&v14 + 1) <= 4096.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *&v14 = 0x40B0000000000000;
    if (*(&v14 + 1) <= 4096.0)
    {
      goto LABEL_7;
    }
  }

  *(&v14 + 1) = 0x40B0000000000000;
LABEL_7:
  PCBitDepth::getFromBitsPerChannel(*(a2 + 83), 0);
  Name = OZObjectManipulator::getName((this + 16));
  PCURL::PCURL(&v11, @"Generator is too big message");
  OZChannelBase::setRangeName(Name, &v11);
  PCString::~PCString(&v11);
  goto LABEL_8;
}

uint64_t OZFxGenerator::parseEnd(OZFxGenerator *this, PCSerializerReadStream *a2)
{
  v4 = (this + 19384);
  *(this + 4956) = *(a2 + 26);
  if ((*(*(this + 2423) + 208))(this + 19384))
  {
    v5 = *(this + 2427);
    v6 = [v5 channelMap];
    v9 = *(v6 + 8);
    v7 = v6 + 8;
    v8 = v9;
    if (v9)
    {
      v10 = v7;
      do
      {
        v11 = *(v8 + 32);
        v12 = v11 >= 0x2712;
        v13 = v11 < 0x2712;
        if (v12)
        {
          v10 = v8;
        }

        v8 = *(v8 + 8 * v13);
      }

      while (v8);
      if (v10 != v7 && *(v10 + 32) <= 0x2712u)
      {
        [v5 addFlipCheckbox:10002 withChannel:*(v10 + 40)];
      }
    }
  }

  v14 = *(this + 2427);
  if (((*(*(this + 2423) + 288))(v4) & 1) != 0 || [v14 hasPointParameters])
  {
    [v14 movePublishOSCChannelToEnd];
  }

  v15 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!v15 || CFStringCompare(v15, @"com.apple.FinalCutApp", 1uLL) || (OZFxPlugSharedBase::isHMTCompatible(v4) & 1) != 0)
  {
    v16 = (*(*this + 272))(this);
    if (!v16)
    {
      return OZElement::parseEnd(this, a2);
    }

    v17 = *(v16 + 1584);
    if (!v17)
    {
      return OZElement::parseEnd(this, a2);
    }

    OZDocument::getFilename(v17, &v21);
    PCURL::PCURL(&v20, &v21, 0);
    if (!OZDocumentBundleFormatUtils::isMotionDocURLInMotionBundle(&v20, v18) || (OZFxPlugSharedBase::isHMTCompatible(v4) & 1) != 0)
    {
      PCURL::~PCURL(&v20);
      PCString::~PCString(&v21);
      return OZElement::parseEnd(this, a2);
    }

    (*(*a2 + 24))(a2);
    PCURL::~PCURL(&v20);
    PCString::~PCString(&v21);
  }

  else
  {
    (*(*a2 + 24))(a2);
  }

  return 0;
}

void *OZFxGenerator::print(uint64_t a1, void *a2, int a3)
{
  LiImageSource::printIndent(a2, a3);
  v5 = [*(a1 + 19416) channelMap];
  v6 = v5 + 1;
  v7 = *v5;
  if (*v5 != v5 + 1)
  {
    v8 = 0;
    do
    {
      v9 = v7[5];
      if (v9)
      {
        if (v10)
        {
          Node = OZChanSceneNodeRef::getNode(v10);
          if (v8 >= 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
          }

          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "image parameter: ", 17);
          Name = OZObjectManipulator::getName((Node + 16));
          CStr = PCString::createCStr(Name);
          if (CStr)
          {
            v15 = CStr;
            v16 = strlen(CStr);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);
            free(v15);
          }

          ++v8;
        }
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v6);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
}

uint64_t OZARGetBodyJointTransformFromSkeleton@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  if (a2)
  {
    v5 = *MEMORY[0x277D860B8];
    v6 = *(MEMORY[0x277D860B8] + 16);
    v7 = *(MEMORY[0x277D860B8] + 32);
    v8 = *(MEMORY[0x277D860B8] + 48);
    switch(result)
    {
      case 1:
        v9 = MEMORY[0x277CE51E8];
        goto LABEL_14;
      case 2:
        v9 = MEMORY[0x277CE51F0];
        goto LABEL_14;
      case 3:
        v10 = @"left_forearm_joint";
        goto LABEL_15;
      case 4:
        v9 = MEMORY[0x277CE51F8];
        goto LABEL_14;
      case 5:
        v9 = MEMORY[0x277CE5200];
        goto LABEL_14;
      case 6:
        v10 = @"right_forearm_joint";
        goto LABEL_15;
      case 7:
        v9 = MEMORY[0x277CE5208];
LABEL_14:
        v10 = *v9;
        goto LABEL_15;
      case 8:
        v10 = @"left_foot_joint";
        goto LABEL_15;
      case 9:
        v10 = @"right_foot_joint";
        goto LABEL_15;
      case 11:
        v10 = @"left_leg_joint";
        goto LABEL_15;
      case 12:
        v10 = @"left_upLeg_joint";
        goto LABEL_15;
      case 13:
        v10 = @"right_leg_joint";
        goto LABEL_15;
      case 14:
        v10 = @"right_upLeg_joint";
LABEL_15:
        [objc_msgSend(a2 objectForKeyedSubscript:{v10, *&v5, *&v6, *&v7, *&v8), "PCSIMDFloat4x4Value"}];
        break;
      default:
        break;
    }

    result = [objc_msgSend(a2 objectForKeyedSubscript:{@"bodyAnchorTransform", v5, v6, v7, v8), "PCSIMDFloat4x4Value"}];
    v15 = 0;
    v22[0] = v18;
    v22[1] = v19;
    v22[2] = v20;
    v22[3] = v21;
    do
    {
      v22[v15 + 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v22[v15])), v12, *&v22[v15], 1), v13, v22[v15], 2), v14, v22[v15], 3);
      ++v15;
    }

    while (v15 != 4);
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        *(v3 + 8 * j) = *(&v22[j + 4] & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
      }

      v3 += 32;
    }
  }

  else
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
  }

  return result;
}

void *OZARMakePlaneInfoFromPlaneAnchor(ARPlaneAnchor *a1)
{
  v2 = objc_opt_new();
  [v2 setAlignment:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", -[ARPlaneAnchor alignment](a1, "alignment"))}];
  [v2 setClassification:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", -[ARPlaneAnchor classification](a1, "classification"))}];
  v3 = MEMORY[0x277CCAE60];
  [(ARPlaneAnchor *)a1 extent];
  [v2 setExtent:{objc_msgSend(v3, "PCValueWithSIMDFloat3:")}];
  v4 = MEMORY[0x277CCAE60];
  [(ARPlaneAnchor *)a1 center];
  [v2 setCenter:{objc_msgSend(v4, "PCValueWithSIMDFloat3:")}];
  v5 = MEMORY[0x277CCAE60];
  [(ARPlaneAnchor *)a1 transform];
  [v2 setTransform:{objc_msgSend(v5, "PCValueWithSIMDFloat4x4:")}];
  [v2 setIdentifier:{-[ARPlaneAnchor identifier](a1, "identifier")}];
  return v2;
}

void *OZARMakePlaneListFromARFrame(ARFrame *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(ARFrame *)a1 anchors];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = OZARMakePlaneInfoFromPlaneAnchor(v8);
          [v2 addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

void *OZARMakePlaneListFromPlanesDict(NSDictionary *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSDictionary *)a1 allValues];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = OZARMakePlaneInfoFromPlaneAnchor(*(*(&v15 + 1) + 8 * v12));
              [v2 addObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  return v2;
}

BOOL OZARGetWorldPointFromNDC(_OWORD *a1, double *a2, float64x2_t *a3, float a4, float a5, float a6, float a7)
{
  v13 = a1[5];
  v30[4] = a1[4];
  v30[5] = v13;
  v14 = a1[7];
  v30[6] = a1[6];
  v30[7] = v14;
  v15 = a1[1];
  v30[0] = *a1;
  v30[1] = v15;
  v16 = a1[3];
  v30[2] = a1[2];
  v30[3] = v16;
  v17 = PCMatrix44Tmpl<double>::invert(v30, v30, 0.0);
  if (v17)
  {
    v28[0] = a4;
    v28[1] = a5;
    v29 = xmmword_260342EE0;
    v26 = 0u;
    v27 = 0u;
    PCMatrix44Tmpl<double>::transform<double>(v30, v28, v26.f64);
    v18 = vdupq_laneq_s64(v27, 1);
    v26 = vdivq_f64(v26, v18);
    v27 = vdivq_f64(v27, v18);
    v24 = a6;
    v25 = 0x3FF0000000000000;
    v22 = 0u;
    v23 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(a6), 0), vdivq_f64(vdupq_lane_s64(COERCE__INT64(-a7), 0), v26))));
    v21 = 0u;
    PCMatrix44Tmpl<double>::transform<double>(a2, v23.f64, v21.f64);
    v19 = 1.0 / *(&v22 + 1) * *&v22;
    *a3 = vmulq_n_f64(v21, 1.0 / *(&v22 + 1));
    a3[1].f64[0] = v19;
  }

  return v17;
}

void OZGetViewProjectionMatrix(OZScene *a1, const CMTime *a2, uint64_t a3)
{
  ActiveCamera = OZScene::getActiveCamera(a1, a2);
  Node = OZScene::getNode(a1, ActiveCamera);
  if (Node)
  {
  }

  else
  {
    v8 = 0;
  }

  OZRenderState::OZRenderState(&v10);
  *&v10.var0.var0 = *&a2->value;
  v10.var0.var3 = a2->epoch;
  (*(*v8 + 1256))(v8, a3, &v10);
  v9 = *a2;
  OZCamera::cameraAtTime(v8, &v9);
}

void OZARGetWorldPoint(OZScene *a1)
{
  v11 = **&MEMORY[0x277CC08F0];
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v1 = 0x3FF0000000000000;
  v2 = 0u;
  v3 = 0u;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  OZGetViewProjectionMatrix(a1, &v11, &v1);
}

void OZARGetPersonWorldPoint(OZScene *a1, void *a2, int a3, double a4, double a5)
{
  [a2 meanDepth];
  [a2 rectScaledToSize:{a4, a5}];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  Height = v13;
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    MidX = CGRectGetMidX(*&v10);
    v28.origin.x = v14;
    v28.origin.y = v15;
    v28.size.width = v16;
    v28.size.height = Height;
    MidY = CGRectGetMidY(v28);
    v20 = a4 * 0.5;
    v21 = (v20 - (MidX - v20));
    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = Height;
    *&v21 = v21 - CGRectGetWidth(v29) * 0.5;
    v22 = a5 * 0.5;
    v23 = (v22 - (MidY - v22));
    v30.origin.x = v14;
    v30.origin.y = v15;
    v30.size.width = v16;
    v30.size.height = Height;
    v24 = v23 - CGRectGetHeight(v30) * 0.5;
    v25 = *&v21;
    v26 = v24;
    v31.origin.x = v14;
    v31.origin.y = v15;
    v31.size.width = v16;
    v31.size.height = Height;
    Width = CGRectGetWidth(v31);
    v32.origin.x = v14;
    v32.origin.y = v15;
    v32.size.width = v16;
    v32.size.height = Height;
    Height = CGRectGetHeight(v32);
    v16 = Width;
    v15 = v26;
    v14 = v25;
  }

  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v16;
  v33.size.height = Height;
  CGRectGetMidX(v33);
  v34.origin.x = v14;
  v34.origin.y = v15;
  v34.size.width = v16;
  v34.size.height = Height;
  CGRectGetMidY(v34);
  OZARGetWorldPoint(a1);
}

uint64_t OZARSetPersonInfoJoints(OZARPersonInfo *a1, NSDictionary *a2, float a3)
{
  v5 = a3;
  for (i = 1; i != 15; ++i)
  {
    OZARGetBodyJointTransformFromSkeleton(i, a2, v23);
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v27 = 4;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    PCMatrix44Tmpl<double>::getTransformation(v23, &v24);
    v22 = 0x3FF0000000000000;
    v12 = 0u;
    v11 = 0u;
    v14 = 0;
    v16 = 0u;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v10 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v17 = 0x3FF0000000000000;
    *&v12 = *&v24 * v5;
    v15 = *(&v24 + 1) * v5;
    v18 = *&v25 * v5;
    v7 = [MEMORY[0x277CCAE60] PCValueWithSIMDFloat4x4:PCMatrix44Tmpl<double>::toSimdFloat(&v10)];
    v8 = [(OZARPersonInfo *)a1 jointTransforms];
    result = -[NSMutableDictionary setObject:forKeyedSubscript:](v8, "setObject:forKeyedSubscript:", v7, [MEMORY[0x277CCABB0] numberWithInteger:i]);
  }

  return result;
}

void *OZARMakePersonList(ARFrame *a1, OZScene *a2, float a3, NSDictionary *a4)
{
  v6 = objc_opt_new();
  OZARGetBodyJointTransformFromSkeleton(10, a4, v22);
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v26 = 4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  PCMatrix44Tmpl<double>::getTransformation(v22, &v23);
  v10 = 0u;
  v13 = 0;
  v15 = 0u;
  v20 = 0;
  v21 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0;
  v9 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v11 = COERCE_UNSIGNED_INT64(*&v23 * a3);
  v14 = *(&v23 + 1) * a3;
  v17 = *&v24 * a3;
  v7 = -[OZARPersonInfo init:]([OZARPersonInfo alloc], "init:", [MEMORY[0x277CCAE60] PCValueWithSIMDFloat4x4:PCMatrix44Tmpl<double>::toSimdFloat(&v9)]);
  -[OZARPersonInfo setIndex:](v7, "setIndex:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:0]);
  OZARSetPersonInfoJoints(v7, a4, a3);
  [v6 addObject:v7];

  return v6;
}

uint64_t OZARMakePersonList(void *a1, OZScene *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = objc_opt_new();
  obj = [a1 detectedPersonMetadata];
  if ([obj count])
  {
    [objc_msgSend(a1 "camera")];
    Width = CVPixelBufferGetWidth([a1 estimatedDepthData]);
    Height = CVPixelBufferGetHeight([a1 estimatedDepthData]);
    memset(v18, 0, sizeof(v18));
    if ([obj countByEnumeratingWithState:v18 objects:v19 count:16])
    {
      __asm
      {
        FMOV            V1.2D, #-1.0
        FMOV            V1.2D, #-0.5
      }

      v14 = **(&v18[0] + 1);
      [objc_opt_new() setIndex:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", 0)}];
      OZARGetPersonWorldPoint(a2, v14, a3, Width, Height);
    }
  }

  return v16;
}

void *std::__tree<std::__value_type<unsigned long,SCNNode *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,SCNNode *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,SCNNode *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,SCNNode *>>(uint64_t a1, unint64_t *a2)
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

void OZRenderParams::OZRenderParams(OZRenderParams *this, const OZRenderParams *a2)
{
  v4 = OZRenderState::OZRenderState(this, a2);
  LOBYTE(v4[1].var0.var0) = *(a2 + 264);
  *&v4[1].var0.var1 = *(a2 + 17);
  v5 = *(a2 + 37);
  v4[1].var1 = *(a2 + 36);
  v4[1].var2 = v5;
  if (v5 != 0.0)
  {
    atomic_fetch_add_explicit((*&v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 39);
  *(this + 38) = *(a2 + 38);
  *(this + 39) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  PCImageAttributes::PCImageAttributes((this + 320), (a2 + 320));
  PCWorkingColorVector::PCWorkingColorVector((this + 392));
  PCWorkingColorVector::PCWorkingColorVector((this + 408));
  *(this + 424) = *(a2 + 424);
  *(this + 27) = *(a2 + 27);
  *(this + 28) = *(a2 + 28);
  *(this + 29) = *(a2 + 29);
  *(this + 60) = *(a2 + 60);
  *(this + 488) = *(a2 + 488);
  *(this + 123) = *(a2 + 123);
  *(this + 496) = *(a2 + 496);
  *(this + 125) = *(a2 + 125);
  *(this + 63) = *(a2 + 63);
  *(this + 128) = *(a2 + 128);
  *(this + 258) = *(a2 + 258);
  v7 = *(a2 + 520);
  v8 = *(a2 + 552);
  *(this + 536) = *(a2 + 536);
  *(this + 552) = v8;
  *(this + 520) = v7;
  v9 = *(a2 + 71);
  *(this + 71) = v9;
  if (v9)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v9);
  }

  *(this + 144) = *(a2 + 144);
  v10 = *(a2 + 600);
  *(this + 584) = *(a2 + 584);
  *(this + 600) = v10;
  v11 = *(a2 + 632);
  *(this + 616) = *(a2 + 616);
  *(this + 632) = v11;
  *(this + 648) = *(a2 + 648);
  v12 = *(a2 + 680);
  *(this + 664) = *(a2 + 664);
  *(this + 680) = v12;
  *(this + 696) = *(a2 + 696);
  *(this + 175) = *(a2 + 175);
  v13 = *(a2 + 88);
  *(this + 88) = v13;
  if (v13)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v13);
  }

  v14 = *(a2 + 89);
  *(this + 180) = *(a2 + 180);
  *(this + 89) = v14;
  *(this + 728) = *(a2 + 728);
  *(this + 184) = *(a2 + 184);
  v15 = *(a2 + 93);
  *(this + 93) = v15;
  if (v15)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v15);
  }

  v16 = *(a2 + 94);
  *(this + 190) = *(a2 + 190);
  *(this + 94) = v16;
  *(this + 768) = *(a2 + 768);
  *(this + 194) = *(a2 + 194);
  *(this + 780) = *(a2 + 780);
  v17 = *(a2 + 98);
  *(this + 98) = v17;
  if (v17)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v17);
  }

  v18 = *(a2 + 99);
  *(this + 99) = v18;
  if (v18)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v18);
  }

  *(this + 800) = *(a2 + 800);
  *(this + 201) = *(a2 + 201);
  v19 = *(a2 + 808);
  v20 = *(a2 + 824);
  v21 = *(a2 + 856);
  *(this + 840) = *(a2 + 840);
  *(this + 856) = v21;
  *(this + 808) = v19;
  *(this + 824) = v20;
  v22 = *(a2 + 872);
  v23 = *(a2 + 888);
  v24 = *(a2 + 920);
  *(this + 904) = *(a2 + 904);
  *(this + 920) = v24;
  *(this + 872) = v22;
  *(this + 888) = v23;
  *(this + 936) = *(a2 + 936);
  OZPlaybackEngine::OZPlaybackEngine((this + 940), (a2 + 940));
  *(this + 119) = *(a2 + 119);
  v25 = *(a2 + 968);
  *(this + 123) = *(a2 + 123);
  *(this + 968) = v25;
  *(this + 124) = *(a2 + 124);
  std::map<unsigned int,PCRect<double>>::map[abi:ne200100](this + 125, a2 + 1000);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](this + 128, a2 + 1024);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](this + 131, a2 + 1048);
  *(this + 134) = *(a2 + 134);
  *(this + 135) = *(a2 + 135);
  v26 = *(a2 + 68);
  *(this + 138) = *(a2 + 138);
  *(this + 68) = v26;
  v27 = *(a2 + 1112);
  *(this + 141) = *(a2 + 141);
  *(this + 1112) = v27;
  v28 = *(a2 + 71);
  *(this + 144) = *(a2 + 144);
  *(this + 71) = v28;
  v29 = *(a2 + 1160);
  *(this + 147) = *(a2 + 147);
  *(this + 1160) = v29;
  v30 = *(a2 + 74);
  *(this + 150) = *(a2 + 150);
  *(this + 74) = v30;
  *(this + 302) = *(a2 + 302);
  *(this + 606) = *(a2 + 606);
  *(this + 76) = 0u;
  *(this + 616) = *(a2 + 616);
  *(this + 155) = *(a2 + 155);
  PCSharedCount::PCSharedCount(this + 156, a2 + 156);
  *(this + 157) = *(a2 + 157);
  *(this + 158) = *(a2 + 158);
  *(this + 1272) = *(a2 + 1272);
  *(this + 160) = *(a2 + 160);
  PCSharedCount::PCSharedCount(this + 161, a2 + 161);
  *(this + 162) = *(a2 + 162);
  PCSharedCount::PCSharedCount(this + 163, a2 + 163);
  *(this + 656) = *(a2 + 656);
  v31 = *(a2 + 1316);
  v32 = *(a2 + 1348);
  *(this + 1332) = *(a2 + 1332);
  *(this + 1348) = v32;
  *(this + 1316) = v31;
  *(this + 171) = &unk_2871F25A8;
  *(this + 86) = 0u;
  v33 = *(a2 + 345);
  if (v33 > 0)
  {
    v34 = 2 * v33 + 1;
  }

  else
  {
    v34 = 0;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(this + 1368, v33, v34);
  if (*(a2 + 345) >= 1)
  {
    v35 = 0;
    v36 = 0;
    do
    {
      LiLight::operator=(*(this + 173) + v35, *(a2 + 173) + v35);
      ++v36;
      v35 += 944;
    }

    while (v36 < *(a2 + 345));
  }

  *(this + 1392) = *(a2 + 1392);
  *(this + 1400) = *(a2 + 1400);
  v37 = *(a2 + 176);
  *(this + 176) = v37;
  if (v37)
  {
    (*(*v37 + 16))(v37);
  }

  *(this + 708) = *(a2 + 708);
  *(this + 1418) = *(a2 + 1418);
  *(this + 120) = [*(a2 + 120) copy];
}

void sub_260240F48(_Unwind_Exception *a1)
{
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v2);
  PCSharedCount::~PCSharedCount((v1 + 1304));
  PCSharedCount::~PCSharedCount((v1 + 1288));
  PCSharedCount::~PCSharedCount((v1 + 1248));
  v4 = *(v1 + 1224);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1048, *(v1 + 1056));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1024, *(v1 + 1032));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 1000, *(v1 + 1008));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 792));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 784));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 744));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 704));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 568));
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 344));
  v5 = *(v1 + 312);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 296);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void OZRenderParams::~OZRenderParams(OZRenderParams *this)
{
  v2 = *(this + 176);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(this + 1368);
  PCSharedCount::~PCSharedCount(this + 163);
  PCSharedCount::~PCSharedCount(this + 161);
  PCSharedCount::~PCSharedCount(this + 156);
  v3 = *(this + 153);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1048, *(this + 132));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1024, *(this + 129));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 1000, *(this + 126));
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 99);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 98);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 93);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 88);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 71);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 43);
  v4 = *(this + 39);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void OZRenderParams::setFFInputContext(uint64_t a1, void *a2)
{
  v2 = *(a1 + 960);
  *(a1 + 960) = a2;
}

void OZFxPlugOOPDelegate::OZFxPlugOOPDelegate(OZFxPlugOOPDelegate *this, OZFxPlugSharedBase *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2872B65E0;
  v4 = *(a2 + 44);
  v3 = *(a2 + 45);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = *(this + 2);
    *(this + 1) = v4;
    *(this + 2) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    *(this + 1) = v4;
    *(this + 2) = 0;
  }
}

void OZFxPlugOOPDelegate::~OZFxPlugOOPDelegate(OZFxPlugOOPDelegate *this)
{
  *this = &unk_2872B65E0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2872B65E0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2666E9F00);
}

const char *HgcMatteInt8::GetProgram(HgcMatteInt8 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  v5 = (*(*this + 312))(this, a2);
  if (Target < 0x60600 && v5 == 0)
  {
    v7 = 394016;
  }

  else
  {
    v7 = Target;
  }

  if (v7 == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000391\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0.x = r0.x - half(hg_Params[0].x);\n    r0.x = clamp(r0.x + c0.x, 0.00000h, 1.00000h);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r1)*float4(r0.xxxx);\n    return output;\n}\n//MD5=fa2d4cfa:a0eefd2f:8d5b4ecc:07d7e2b0\n//SIG=00400000:00000001:00000001:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000371\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0.x = r0.x - hg_Params[0].x;\n    r0.x = clamp(r0.x + c0.x, 0.00000f, 1.00000f);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r1*r0.xxxx;\n    return output;\n}\n//MD5=0884afc2:e4cd50cf:2bdf39de:297b67ea\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (v7 <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    if (v7 - 394016 < 0xF0 || v7 > 0x6043F)
    {
      return "!!ARBfp1.0     \n##LEN=000000027b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $c0={1.000000000,0.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1;\n##@\n##1\nTEX r0.x,$f1,texture[1],RECT;\nSUB r0.x,r0,$p0;\nADD_SAT r0.x,r0,$c0;\n##0\nTEX r1,$f0,texture[0],RECT;\nMUL $o0,r1,r0.x;\nEND\n##MD5=1b5b045c:de8ba7fd:cc5fcb6c:7137b273\n##SIG=00000000:00000003:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "!!ARBfp1.0     \n##LEN=00000003a8\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $c0={0.5000000000,1.500000000,1.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4;\n##@\nSUB r0.xy,$f1,$c0.x;\nFLR r1.xy,r0;\nFRC r0.xy,r0;\nADD r2.xy,r1,$c0.x;\n##1\nTEX r2.x,r2,texture[1],RECT;\nADD r3.xy,r1,$c0.yxzw;\n##1\nTEX r3.x,r3,texture[1],RECT;\nADD r4.xy,r1,$c0;\n##1\nTEX r4.x,r4,texture[1],RECT;\nADD r1.xy,r1,$c0.y;\n##1\nTEX r1,r1,texture[1],RECT;\nLRP r3.x,r0.x,r3,r2;\nLRP r4.x,r0.x,r1,r4;\nLRP r0.x,r0.y,r4,r3;\nSUB r0.x,r0,$p0;\nADD_SAT r0.x,r0,$c0.z;\n##0\nTEX r2,$f0,texture[0],RECT;\nMUL $o0,r2,r0.x;\nEND\n##MD5=073ac337:9afb9c8f:632ee472:d83d1c21\n##SIG=00000000:00000001:00000001:00000000:0001:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
    }
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000031e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r0.x = r0.x - hg_ProgramLocal0.x;\n    r0.x = clamp(r0.x + c0.x, 0.00000, 1.00000);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r1*r0.xxxx;\n}\n//MD5=40fb4a71:f9f50746:185d13c1:9a332c4d\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260241494(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260241654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_2602416AC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x2602416A4);
}

uint64_t HgcMatteInt8::BindTexture(HgcMatteInt8 *this, HGRenderer **a2, int a3)
{
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    if (Target > 0x6043F || Target - 394016 <= 0xEF)
    {
      (*(*a2 + 9))(a2, 1, 0);
      v7 = (*(*this + 312))(this, 0);
      (*(*a2 + 6))(a2, v7, v7);
    }

    HGHandler::TexCoord(a2, 1, 0, 0, 0);
    if (!(*(*a2[18] + 128))(a2[18], 46))
    {
      (*(*a2 + 21))(a2);
    }

    (*(*a2 + 15))(a2, *(this + 51) + 32);
  }

  else
  {
    (*(*a2 + 9))(a2, 0, 0);
    (*(*a2 + 6))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v8 = (*(*a2[18] + 128))(a2[18], 46);
    result = 0;
    if (v8)
    {
      return result;
    }

    (*(*a2 + 21))(a2);
  }

  return 0;
}

uint64_t HgcMatteInt8::Bind(HgcMatteInt8 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMatteInt8::RenderTile(HgcMatteInt8 *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 3) - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9.f32[0] = *a2 + 0.5;
    v9.f32[1] = v6 + 0.5;
    v9.i32[2] = 0;
    v9.i32[3] = 1.0;
    v10 = *(a2 + 2) - *a2;
    v11 = 0uLL;
    v12 = vaddq_f32(*(*(this + 51) + 80), vaddq_f32(vaddq_f32(vmulq_n_f32(*(*(this + 51) + 32), v9.f32[0]), vmulq_n_f32(*(*(this + 51) + 48), v9.f32[1])), vmulq_f32(*(*(this + 51) + 64), 0)));
    v13 = *(a2 + 2);
    v14 = *(a2 + 10);
    v15 = 16 * *(a2 + 22);
    v16 = 16 * *(a2 + 6);
    __asm { FMOV            V3.4S, #4.0 }

    v22.i64[0] = 0x3F0000003F000000;
    v22.i64[1] = 0x3F0000003F000000;
    do
    {
      v23 = vaddq_f32(v12, vmulq_f32(v11, *(*(this + 51) + 48)));
      if (v10 < 4)
      {
        v24 = 0;
        v25 = 0uLL;
      }

      else
      {
        v24 = 0;
        v25 = 0uLL;
        v26 = 32;
        for (i = v10; i > 3; i -= 4)
        {
          v28 = *(this + 51);
          v29 = v28[2];
          v30 = vaddq_f32(v23, vmulq_f32(v25, v29));
          v31 = vaddq_f32(v29, v30);
          v32 = vaddq_f32(v29, v31);
          v33 = vaddq_f32(v29, v32);
          v34 = *(a2 + 26);
          v35 = vsubq_f32(v30, v9);
          v36 = *(a2 + 12);
          if (v5)
          {
            v37 = vaddq_s32(vcvtq_s32_f32(v35), vcltzq_f32(v35));
            v38 = vsubq_f32(v35, vcvtq_f32_s32(v37)).u64[0];
            v39 = vsubq_f32(v31, v9);
            v40 = vaddq_s32(vcvtq_s32_f32(v39), vcltzq_f32(v39));
            v41 = vsubq_f32(v39, vcvtq_f32_s32(v40)).u64[0];
            v42 = vdup_n_s32(v34);
            *v37.i8 = vmla_s32(vzip1_s32(*v37.i8, *v40.i8), vzip2_s32(*v37.i8, *v40.i8), v42);
            v43 = (v36 + 16 * v37.i32[0]);
            v44 = vaddq_f32(*v43, vmulq_n_f32(vsubq_f32(v43[1], *v43), v38.f32[0]));
            v45 = vaddq_f32(v44, vmulq_lane_f32(vsubq_f32(vaddq_f32(v43[v34], vmulq_n_f32(vsubq_f32(v43[v34 + 1], v43[v34]), v38.f32[0])), v44), v38, 1));
            v46 = (v36 + 16 * v37.i32[1]);
            v47 = vaddq_f32(*v46, vmulq_n_f32(vsubq_f32(v46[1], *v46), v41.f32[0]));
            v48 = vaddq_f32(v47, vmulq_lane_f32(vsubq_f32(vaddq_f32(v46[v34], vmulq_n_f32(vsubq_f32(v46[v34 + 1], v46[v34]), v41.f32[0])), v47), v41, 1));
            v49 = vsubq_f32(v32, v9);
            v50 = vaddq_s32(vcvtq_s32_f32(v49), vcltzq_f32(v49));
            v49.i64[0] = vsubq_f32(v49, vcvtq_f32_s32(v50)).u64[0];
            v51 = vsubq_f32(v33, v9);
            v52 = vaddq_s32(vcvtq_s32_f32(v51), vcltzq_f32(v51));
            *v50.i8 = vmla_s32(vzip1_s32(*v50.i8, *v52.i8), vzip2_s32(*v50.i8, *v52.i8), v42);
            v53 = (v36 + 16 * v50.i32[0]);
            v52.i64[0] = vsubq_f32(v51, vcvtq_f32_s32(v52)).u64[0];
            v54 = vaddq_f32(*v53, vmulq_n_f32(vsubq_f32(v53[1], *v53), v49.f32[0]));
            v55 = vaddq_f32(v54, vmulq_lane_f32(vsubq_f32(vaddq_f32(v53[v34], vmulq_n_f32(vsubq_f32(v53[v34 + 1], v53[v34]), v49.f32[0])), v54), *v49.f32, 1));
            v56 = (v36 + 16 * v50.i32[1]);
            v57 = vaddq_f32(*v56, vmulq_n_f32(vsubq_f32(v56[1], *v56), *v52.i32));
            v58 = vaddq_f32(v57, vmulq_lane_f32(vsubq_f32(vaddq_f32(v56[v34], vmulq_n_f32(vsubq_f32(v56[v34 + 1], v56[v34]), *v52.i32)), v57), *v52.i8, 1));
          }

          else
          {
            v59 = vaddq_f32(v35, v22);
            v60 = vcvtq_s32_f32(v59);
            v61 = vaddq_f32(vsubq_f32(v31, v9), v22);
            v62 = vcvtq_s32_f32(v61);
            *v59.f32 = vadd_s32(*v60.i8, *&vcgtq_f32(vcvtq_f32_s32(v60), v59));
            *v61.f32 = vadd_s32(*v62.i8, *&vcgtq_f32(vcvtq_f32_s32(v62), v61));
            *v62.i8 = vdup_n_s32(v34);
            *v61.f32 = vmla_s32(vzip1_s32(*v59.f32, *v61.f32), vzip2_s32(*v59.f32, *v61.f32), *v62.i8);
            v63 = v61.i32[1];
            v45 = *(v36 + 16 * v61.i32[0]);
            v48 = *(v36 + 16 * v63);
            v64 = vaddq_f32(vsubq_f32(v32, v9), v22);
            v65 = vcvtq_s32_f32(v64);
            v66 = vaddq_f32(vsubq_f32(v33, v9), v22);
            v67 = vcvtq_s32_f32(v66);
            *v66.f32 = vadd_s32(*v67.i8, *&vcgtq_f32(vcvtq_f32_s32(v67), v66));
            *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
            *v66.f32 = vmla_s32(vzip1_s32(*v64.f32, *v66.f32), vzip2_s32(*v64.f32, *v66.f32), *v62.i8);
            v68 = v66.i32[1];
            v55 = *(v36 + 16 * v66.i32[0]);
            v58 = *(v36 + 16 * v68);
          }

          v25 = vaddq_f32(v25, _Q3);
          v69 = v28[6];
          v70 = v28[9];
          v71 = vmulq_n_f32(*(v14 + v26 - 32), vminq_f32(vmaxq_f32(vaddq_f32(vsubq_f32(v45, *v28), v69), v70), v69).f32[0]);
          v72 = vmulq_n_f32(*(v14 + v26 - 16), vminq_f32(vmaxq_f32(vaddq_f32(vsubq_f32(v48, *v28), v69), v70), v69).f32[0]);
          v73 = vmulq_n_f32(*(v14 + v26), vminq_f32(vmaxq_f32(vaddq_f32(vsubq_f32(v55, *v28), v69), v70), v69).f32[0]);
          v74 = vmulq_n_f32(*(v14 + v26 + 16), vminq_f32(vmaxq_f32(vaddq_f32(vsubq_f32(v58, *v28), v69), v70), v69).f32[0]);
          v75 = (v13 + v26);
          v75[-2] = v71;
          v75[-1] = v72;
          *v75 = v73;
          v75[1] = v74;
          v24 += 4;
          v26 += 64;
        }
      }

      __asm { FMOV            V7.4S, #1.0 }

      if (v24 < v10)
      {
        do
        {
          v77 = *(this + 51);
          v78 = *(a2 + 26);
          v79 = vsubq_f32(vaddq_f32(v23, vmulq_f32(v25, v77[2])), v9);
          v80 = *(a2 + 12);
          if (v5)
          {
            v81 = vaddq_s32(vcvtq_s32_f32(v79), vcltzq_f32(v79));
            v82 = vsubq_f32(v79, vcvtq_f32_s32(v81)).u64[0];
            v83 = (v80 + 16 * (v81.i32[0] + v81.i32[1] * v78));
            v84 = vaddq_f32(*v83, vmulq_n_f32(vsubq_f32(v83[1], *v83), v82.f32[0]));
            v85 = vaddq_f32(v84, vmulq_lane_f32(vsubq_f32(vaddq_f32(v83[v78], vmulq_n_f32(vsubq_f32(v83[v78 + 1], v83[v78]), v82.f32[0])), v84), v82, 1));
          }

          else
          {
            v86 = vaddq_f32(v79, v22);
            v87 = vcvtq_s32_f32(v86);
            v86.i64[0] = vaddq_s32(v87, vcgtq_f32(vcvtq_f32_s32(v87), v86)).u64[0];
            v85 = *(v80 + 16 * (v86.i32[0] + v86.i32[1] * v78));
          }

          *(v13 + 16 * v24) = vmulq_n_f32(*(v14 + 16 * v24), vminq_f32(vmaxq_f32(vaddq_f32(vsubq_f32(v85, *v77), v77[6]), v77[9]), v77[6]).f32[0]);
          v25 = vaddq_f32(v25, _Q7);
          ++v24;
        }

        while (v24 < v10);
      }

      v11 = vaddq_f32(v11, _Q7);
      ++v8;
      v14 += v15;
      v13 += v16;
    }

    while (v8 != v7);
  }

  return 0;
}

const HGTransform *HgcMatteInt8::GetDOD(HgcMatteInt8 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      if ((*(*this + 312))(this, a2) >= 1)
      {
        v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        v5 = HGRectGrow(v5, v4, v7);
        v4 = v8;
      }

      HGTransform::HGTransform(v14);
      HGTransform::LoadMatrixf(v14, (*(this + 51) + 32));
      HGTransform::Invert2D(v14);
      v10 = HGTransformUtils::MinW(v9);
      *&v15.var0 = v4;
      DOD = HGTransformUtils::GetDOD(v14, v5, v15, 0.5, v10);
      v5 = HGRectUnion(0, 0, DOD, v12);
      HGTransform::~HGTransform(v14);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t HgcMatteInt8::GetROI(HgcMatteInt8 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      HGTransform::HGTransform(v16);
      HGTransform::LoadMatrixf(v16, (*(this + 51) + 32));
      v9 = HGTransformUtils::MinW(v8);
      *&v17.var0 = v4;
      ROI = HGTransformUtils::GetROI(v16, v5, v17, 0.5, v9);
      v5 = HGRectUnion(0, 0, ROI, v11);
      v13 = v12;
      HGTransform::~HGTransform(v16);
      if ((*(*this + 312))(this, a2) >= 1)
      {
        v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        return HGRectGrow(v5, v13, v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void HgcMatteInt8::HgcMatteInt8(HgcMatteInt8 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B6678;
  *(v1 + 416) = 1;
  operator new();
}

void HgcMatteInt8::~HgcMatteInt8(HGNode *this)
{
  *this = &unk_2872B6678;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcMatteInt8::~HgcMatteInt8(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMatteInt8::SetParameter(HgcMatteInt8 *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v8 = *(this + 51);
    if (v8[1].n128_f32[0] != a3.n128_f32[0] || v8[1].n128_f32[1] != a3.n128_f32[0] || v8[1].n128_f32[2] != 0.0 || v8[1].n128_f32[3] != 0.0)
    {
      v8[1].n128_u32[0] = a3.n128_u32[0];
      v8[1].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v8[1].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v8[11] = a3;
      goto LABEL_13;
    }

    return 0;
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 51);
  if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3.n128_f32[0];
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
LABEL_13:
  v9 = 1;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v9;
}

uint64_t HgcMatteInt8::GetParameter(HgcMatteInt8 *this, int a2, float *a3)
{
  if (a2 == 1)
  {
    v5 = *(this + 51);
    *a3 = v5[44];
    a3[1] = v5[45];
    a3[2] = v5[46];
    v4 = v5 + 47;
    goto LABEL_5;
  }

  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    v4 = v3 + 3;
LABEL_5:
    result = 0;
    a3[3] = *v4;
    return result;
  }

  return 0xFFFFFFFFLL;
}

int8x16_t HgcMatteInt8::GetOutput(HgcMatteInt8 *this, HGRenderer *a2)
{
  if (*(this + 104))
  {
    v2 = *(this + 51);
    v3 = *(v2 + 16);
    v4 = *(v2 + 112);
    v5 = vmulq_f32(v3, *(v2 + 144));
    *&v6 = vmul_f32(*v3.f32, *(v2 + 96));
    *(&v6 + 1) = vand_s8(*&vextq_s8(*(v2 + 160), *(v2 + 160), 8uLL), *&v6);
    *(v2 + 32) = v6;
    *v3.f32 = vmul_f32(*v3.f32, *&v4);
    v7 = *(this + 51);
    *&v3.u32[2] = vand_s8(*&vextq_s8(*(v7 + 160), *(v7 + 160), 8uLL), *v3.f32);
    *(v7 + 48) = v3;
    *(*(this + 51) + 64) = vbslq_s8(*(*(this + 51) + 160), v5, *(*(this + 51) + 128));
    v8 = *(this + 51);
    result = vbslq_s8(v8[10], v5, v8[9]);
    v8[5] = result;
    *(this + 104) = 0;
  }

  return result;
}

const char *HgcMatteNormalComposite::GetProgram(HgcMatteNormalComposite *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1444;
    }

    else
    {
      return aMetal10Len0000_1445;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return aArbfp10Len0000_35;
  }

  else
  {
    return aGlfs20Len00000_529;
  }
}

void sub_2602425C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260854530;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2602427C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260242824()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024281CLL);
}

uint64_t HgcMatteNormalComposite::BindTexture(HgcMatteNormalComposite *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 2;
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      (*(*a2 + 72))(a2, 3, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 3;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 1;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 0;
  }

  HGHandler::TexCoord(v5, v6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcMatteNormalComposite::Bind(HgcMatteNormalComposite *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*a2 + 144))(a2, 13, *(this + 51) + 208, 1);
  (*(*a2 + 144))(a2, 14, *(this + 51) + 224, 1);
  (*(*a2 + 144))(a2, 15, *(this + 51) + 240, 1);
  (*(*a2 + 144))(a2, 16, *(this + 51) + 256, 1);
  (*(*a2 + 144))(a2, 17, *(this + 51) + 272, 1);
  (*(*a2 + 144))(a2, 18, *(this + 51) + 288, 1);
  (*(*a2 + 144))(a2, 19, *(this + 51) + 304, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMatteNormalComposite::RenderTile(HgcMatteNormalComposite *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 14);
    v8 = *(a2 + 10);
    v9 = *(a2 + 12);
    v10 = *(a2 + 26);
    v11 = *(a2 + 16);
    v12 = *(a2 + 34);
    v13.f32[0] = *a2 + 0.5;
    v13.f32[1] = v2 + 0.5;
    v13.i32[2] = 0;
    v14 = 1.0;
    v13.i32[3] = 1.0;
    v310 = v13;
    v15 = 16 * *(a2 + 6);
    v16 = 16 * *(a2 + 30);
    v17 = 16 * *(a2 + 22);
    v18 = 16 * v12;
    do
    {
      if (v5 >= 1)
      {
        v19 = 0;
        v20 = v310;
        do
        {
          v346 = v20;
          v21 = *(this + 51);
          v23 = *(v21 + 256);
          v22 = *(v21 + 272);
          v24 = *(v21 + 336);
          v337 = vrev64q_s32(v22);
          v25 = *(v21 + 368);
          v26 = *(v21 + 384);
          *v27.f32 = vqtbl1_s8(v20, *v26.i8);
          *&v27.u32[2] = vqtbl1_s8(v20, *&vextq_s8(v26, v26, 8uLL));
          v28 = vandq_s8(vdupq_lane_s64(vbslq_s8(v24, vsubq_f32(v22, *(v21 + 320)), vabsq_f32(vrev64q_s32(vsubq_f32(v337, *(v21 + 320))))).i64[0], 0), *(v21 + 352));
          v30 = *(v21 + 416);
          v29 = *(v21 + 432);
          v327 = v22;
          v335 = vabdq_f32(v22, v30);
          v31 = vcgtq_f32(v28, v25);
          v32 = vbslq_s8(vcgtq_f32(vextq_s8(v335, v335, 0xCuLL), v25), v25, v30);
          v339 = *(v21 + 400);
          v33 = vbslq_s8(v339, v28, vsubq_f32(v27, vmulq_laneq_f32(*(v21 + 208), v25, 3)));
          v34 = vbslq_s8(v24, *(v11 + v19), v33);
          v35 = vrev64q_s32(v23);
          v36 = vbslq_s8(v339, vmulq_n_f32(vnegq_f32(v35), *v34.i32), v34);
          v37 = vbslq_s8(v24, vmulq_laneq_f32(v23, v36, 3), v36);
          v343 = *(v21 + 320);
          v38 = *(v21 + 448);
          v39 = *(v21 + 464);
          v40 = vmulq_f32(v23, vnegq_f32(v37));
          v41 = vminq_f32(vmaxq_f32(vmulq_f32(v343, vrecpeq_f32(v35)), v38), v39);
          v42 = vmulq_f32(v41, vrecpsq_f32(v35, v41));
          v43 = *(v21 + 480);
          v44 = vbslq_s8(v43, v42, vbslq_s8(v29, v40, v37));
          *v42.i8 = vqtbl1_s8(v44, *(v21 + 496));
          *v26.i8 = vqtbl1_s8(v44, *v26.i8);
          v44.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
          *v26.i8 = vmul_f32(*v42.i8, *v26.i8);
          v26.i64[1] = v44.i64[0];
          *v27.f32 = vmul_f32(vqtbl1_s8(v26, *(v21 + 512)), vqtbl1_s8(v26, *(v21 + 528)));
          v27.i64[1] = __PAIR64__(LODWORD(v14), v44.u32[0]);
          v42.i64[0] = vbslq_s8(vcgtq_f32(vextq_s8(v33, v33, 8uLL), v25), v25, v30).u64[0];
          v340 = *(v21 + 112);
          v345 = *(v21 + 96);
          v31.i64[0] = vbslq_s8(v31, v25, v343).u64[0];
          v45 = vsubq_f32(vmulq_n_f32(v340, *v42.i32), v27);
          v46 = *(v21 + 128);
          v328 = *(v21 + 144);
          v47 = vsubq_f32(vmulq_lane_f32(v46, *v31.i8, 1), v27);
          v48 = vmulq_f32(v47, v47);
          v49 = vaddq_f32(v48, vextq_s8(v48, v48, 4uLL));
          v50 = vmulq_f32(v45, v45);
          v51 = vaddq_f32(v50, vextq_s8(v50, v50, 4uLL));
          v52 = vbslq_s8(v43, vaddq_f32(v51, vextq_s8(v51, v51, 8uLL)), v45);
          v53 = vbslq_s8(v43, vaddq_f32(v49, vextq_s8(v49, v49, 8uLL)), v47);
          v54 = vextq_s8(v52, v52, 0xCuLL);
          v55 = vminq_f32(vrsqrteq_f32(v54), v39);
          v56 = vminq_f32(vmulq_f32(v55, vrsqrtsq_f32(vmulq_f32(v55, v54), v55)), v39);
          v31.i64[1] = v32.i64[1];
          v57 = vmulq_f32(v56, vrsqrtsq_f32(vmulq_f32(v56, v54), v56));
          v58 = vextq_s8(v53, v53, 0xCuLL);
          v59 = vminq_f32(vrsqrteq_f32(v58), v39);
          v60 = vbslq_s8(v24, v57, v31);
          v61 = vminq_f32(vmulq_f32(v59, vrsqrtsq_f32(vmulq_f32(v59, v58), v59)), v39);
          v62 = vmulq_f32(v61, vrsqrtsq_f32(vmulq_f32(v61, v58), v61));
          v63 = vextq_s8(v62, v62, 4uLL);
          v64 = vminq_f32(vmaxq_f32(vrecpeq_f32(v63), v38), v39);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v64, vrecpsq_f32(v63, v64)), v38), v39);
          v67 = *(v21 + 288);
          v66 = *(v21 + 304);
          v68 = vmulq_f32(v65, vrecpsq_f32(v63, v65));
          v69 = vextq_s8(v60, v60, 4uLL);
          v70 = vminq_f32(vmaxq_f32(vrecpeq_f32(v69), v38), v39);
          v71 = vbslq_s8(v43, v68, v47);
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v70, vrecpsq_f32(v69, v70)), v38), v39);
          v73 = vmulq_n_f32(v71, *v62.i32);
          v74 = vextq_s8(v67, v67, 4uLL);
          v75 = *(v21 + 544);
          v76 = *(v21 + 560);
          v77 = vmaxq_f32(vbslq_s8(v43, vsubq_f32(vbslq_s8(v43, vmulq_f32(v72, vrecpsq_f32(v69, v72)), v45), v74), v45), v75);
          v42.i64[1] = vmaxq_f32(vrev64q_s32(vsubq_f32(v71, vextq_s8(*&v67, *&v67, 8uLL))), v38).i64[1];
          v78 = vmulq_n_f32(vbslq_s8(v43, v77, v45), v60.f32[0]);
          v79 = vbslq_s8(v43, v77, v78);
          v80 = vrev64q_s32(v66);
          v81 = vbslq_s8(v29, vaddq_f32(v80, vmulq_laneq_f32(v66, v79, 3)), v42);
          v82 = vmaxq_f32(vbslq_s8(v43, vaddq_f32(vmulq_f32(vmulq_laneq_f32(v79, v66, 2), v79), vextq_s8(v81, v81, 8uLL)), v78), v76);
          v83 = *(v21 + 576);
          v84 = vbslq_s8(v43, vsubq_f32(v337, v83), v78);
          v85 = vbslq_s8(v43, v82, v78);
          v86 = vextq_s8(v85, v85, 0xCuLL);
          v87 = vminq_f32(vmaxq_f32(vrecpeq_f32(v86), v38), v39);
          v84.i64[1] = vandq_s8(*&v84, *(v21 + 592)).i64[1];
          v88 = vbslq_s8(v29, vaddq_f32(v80, vmulq_laneq_f32(v66, v81, 2)), v42);
          v89 = vaddq_f32(vextq_s8(v88, v88, 8uLL), vmulq_laneq_f32(vmulq_laneq_f32(v80, v88, 2), v88, 2));
          v90 = vminq_f32(vmaxq_f32(vmulq_f32(v87, vrecpsq_f32(v86, v87)), v38), v39);
          v91 = vmaxq_f32(v89, v76);
          v92 = vextq_s8(v91, v91, 8uLL);
          v93 = vminq_f32(vmaxq_f32(vrecpeq_f32(v92), v83), v39);
          v94 = vrecpsq_f32(v86, v90);
          v95 = vmulq_f32(v93, vrecpsq_f32(v92, v93));
          v96 = vbslq_s8(vcgtq_f32(v84, v75), v75, v30);
          v97 = vbslq_s8(v43, v96, v84);
          v98 = vmulq_f32(v90, v94);
          v99 = vsubq_f32(vmulq_laneq_f32(v328, v97, 3), v27);
          v100 = vminq_f32(vmaxq_f32(v95, v83), v39);
          v101 = vmulq_f32(v100, vrecpsq_f32(v92, v100));
          v102 = vmulq_f32(v99, v99);
          v103 = vaddq_f32(v102, vextq_s8(v102, v102, 4uLL));
          v104 = vbslq_s8(v43, vaddq_f32(v103, vextq_s8(v103, v103, 8uLL)), v27);
          v105 = vminq_f32(vrsqrteq_f32(v104), v39);
          v106 = vminq_f32(vmulq_f32(v105, vrsqrtsq_f32(vmulq_f32(v105, v104), v105)), v39);
          v107 = vmulq_f32(v106, vrsqrtsq_f32(vmulq_f32(v106, v104), v106));
          v108 = vbslq_s8(vcgtq_f32(vabdq_f32(v327, v83), v75), v75, v30);
          v330 = *(v21 + 160);
          v109 = vsubq_f32(vmulq_laneq_f32(v330, v108, 3), v27);
          v110 = vmulq_f32(v109, v109);
          v111 = vaddq_f32(v110, vextq_s8(v110, v110, 4uLL));
          v112 = vbslq_s8(v24, v88, vaddq_f32(v111, vextq_s8(v111, v111, 8uLL)));
          v113 = vextq_s8(v112, v112, 8uLL);
          v114 = vminq_f32(vrsqrteq_f32(v113), v39);
          v115 = vminq_f32(vmulq_f32(v114, vrsqrtsq_f32(vmulq_f32(v114, v113), v114)), v39);
          v116 = vmulq_f32(v115, vrsqrtsq_f32(vmulq_f32(v115, v113), v115));
          v117 = vbslq_s8(v43, v116, v27);
          v118 = vrev64q_s32(v117);
          v119 = vminq_f32(vmaxq_f32(vrecpeq_f32(v118), v83), v39);
          v120 = vminq_f32(vmaxq_f32(vmulq_f32(v119, vrecpsq_f32(v118, v119)), v83), v39);
          v121 = vsubq_f32(vmulq_f32(v120, vrecpsq_f32(v118, v120)), vrev64q_s32(v67));
          v325 = vbslq_s8(vcgtq_f32(vrev64q_s32(v335), v75), v75, v30);
          v326 = vbslq_s8(v43, vbslq_s8(vcgtq_f32(v335, v75), v75, v30), v109);
          v122 = vbslq_s8(v43, v107, vmulq_lane_f32(v73, *v60.f32, 1));
          v123 = v107;
          v319 = v107;
          v124 = vextq_s8(v122, v122, 8uLL);
          v125 = vminq_f32(vmaxq_f32(vrecpeq_f32(v124), v83), v39);
          v126 = vminq_f32(vmaxq_f32(vmulq_f32(v125, vrecpsq_f32(v124, v125)), v83), v39);
          v112.i64[1] = v121.i64[1];
          v73.i64[0] = vbslq_s8(v24, v98, v101).u64[0];
          v127 = vbslq_s8(v29, vsubq_f32(vbslq_s8(v29, vmulq_f32(v126, vrecpsq_f32(v124, v126)), v112), v74), v112);
          v128 = *(v21 + 608);
          v129 = vbslq_s8(v29, vmaxq_f32(v127, v128), v112);
          v130 = v29;
          v131 = vextq_s8(v66, v66, 8uLL);
          v132 = vextq_s8(v66, v66, 4uLL);
          v133 = vmaxq_f32(v129, v38);
          v129.i64[1] = vaddq_f32(v132, vmulq_lane_f32(v131, *&v129, 1)).i64[1];
          v134 = vbslq_s8(v339, vmulq_lane_f32(v66, *v129.f32, 1), v129);
          v134.i64[0] = vbslq_s8(v24, v134, vaddq_f32(vdupq_laneq_s64(v134, 1), vmulq_laneq_f32(v134, v134, 2))).u64[0];
          v135 = vaddq_f32(v132, vmulq_laneq_f32(v131, v133, 2));
          v132.i64[0] = v73.i64[0];
          v132.i64[1] = v133.i64[1];
          v134.i64[1] = v135.i64[1];
          v136 = vbslq_s8(v339, vmulq_f32(v66, v132), v134);
          v137 = vaddq_f32(vmulq_laneq_f32(v46, v60, 2), v122);
          v138 = *(v21 + 640);
          v139 = vbslq_s8(vcgtq_f32(v335, v83), v83, v138);
          v140 = vmulq_n_f32(v340, *v139.i32);
          v139.i64[0] = vbslq_s8(v24, v139, v69).u64[0];
          v324 = vbslq_s8(v43, v325, v99);
          v139.i64[1] = v326.i64[1];
          v141 = vbslq_s8(v339, vrev64q_s32(v324), v139);
          v136.i64[1] = vaddq_f32(vmulq_f32(v133, v136), vrev64q_s32(*&v136)).i64[1];
          v142 = vbslq_s8(v43, v108, *(v9 + v19));
          v143 = vmulq_f32(v142, v142);
          v144 = vaddq_f32(v143, vrev64q_s32(v143));
          v145 = vaddq_f32(v143, vextq_s8(v144, v144, 0xCuLL));
          v146 = vbslq_s8(v24, v136, vmaxq_f32(v136, *(v21 + 624)));
          v147 = vrev64q_s32(v97);
          v147.i64[0] = v146.i64[0];
          v148 = vbslq_s8(v43, v108, v147);
          v149 = vmulq_n_f32(v97, *v148.i32);
          v150 = vbslq_s8(v130, v60, v148);
          v151 = vminq_f32(vmulq_f32(v343, vrsqrteq_f32(v145)), v39);
          v152 = vmulq_laneq_f32(v142, vmulq_f32(v151, vrsqrtsq_f32(vmulq_f32(v151, v145), v151)), 2);
          v153 = vmulq_f32(v117, v117);
          v154 = vaddq_f32(v153, vrev64q_s32(v153));
          v155 = vaddq_f32(v153, vextq_s8(v154, v154, 0xCuLL));
          v156 = vminq_f32(vrsqrteq_f32(v155), v39);
          v157 = vminq_f32(vmulq_f32(v156, vrsqrtsq_f32(vmulq_f32(v155, v156), v156)), v39);
          v158 = vbslq_s8(v43, v116, vmulq_laneq_f32(vnegq_f32(v117), vmulq_f32(v157, vrsqrtsq_f32(vmulq_f32(v155, v157), v157)), 2));
          v159 = vbslq_s8(v43, v108, v152);
          v160 = vmulq_f32(*v21, v159);
          v160.i64[0] = vaddq_f32(vextq_s8(v160, v141, 4uLL), vaddq_f32(v160, vrev64q_s32(v160))).u64[0];
          v315 = *(v21 + 48);
          v161 = vmulq_f32(*(v21 + 32), v159);
          v162 = vbslq_s8(v43, v96, vaddq_f32(v140, vbslq_s8(v43, v96, v149)));
          v163 = vextq_s8(v146, v146, 0xCuLL);
          v164 = vminq_f32(vmaxq_f32(vrecpeq_f32(v163), v138), v39);
          v160.i64[1] = vaddq_f32(vrev64q_s32(v161), vaddq_f32(vextq_s8(*&v161, *&v161, 4uLL), vdupq_lane_s64(*&v161, 0))).i64[1];
          v165 = vminq_f32(vmaxq_f32(vmulq_f32(v164, vrecpsq_f32(v163, v164)), v138), v39);
          v166 = vmulq_f32(*(v21 + 16), v159);
          v73.i64[1] = vmulq_f32(v165, vrecpsq_f32(v163, v165)).i64[1];
          v167 = vbslq_s8(v43, v123, v137);
          v168 = vbslq_s8(v339, vaddq_f32(v166, vaddq_f32(vextq_s8(v166, v166, 8uLL), vextq_s8(v166, v166, 0xCuLL))), v160);
          v318 = v158;
          v169 = vbslq_s8(v43, v108, vaddq_f32(v167, v158));
          v170 = vmulq_f32(v169, v169);
          v171 = vabsq_f32(v337);
          v172 = vbslq_s8(v339, vaddq_f32(v170, vaddq_f32(vextq_s8(v170, v170, 8uLL), vextq_s8(v170, v170, 0xCuLL))), v171);
          v316 = v171;
          v173 = vminq_f32(vrsqrteq_f32(v172), v39);
          v174 = vminq_f32(vmulq_f32(v173, vrsqrtsq_f32(vmulq_f32(v173, v172), v173)), v39);
          v175 = vbslq_s8(v339, vmulq_f32(v174, vrsqrtsq_f32(vmulq_f32(v174, v172), v174)), v171);
          v176 = vaddq_f32(vmulq_f32(v73, v150), v141);
          v321 = *v176.i8;
          v177 = vbslq_s8(v43, v108, vmulq_laneq_f32(v169, v175, 2));
          v178 = vextq_s8(v168, v168, 4uLL);
          v179 = vmulq_f32(v178, v177);
          v179.i64[0] = vaddq_f32(vextq_s8(v179, v177, 4uLL), vaddq_f32(v179, vrev64q_s32(v179))).u64[0];
          v180 = vmulq_f32(v178, v167);
          v181 = vbslq_s8(v130, vmaxq_f32(vbslq_s8(v130, vaddq_f32(vextq_s8(v180, v180, 4uLL), vaddq_f32(v180, vrev64q_s32(v180))), v176), v128), v176);
          v182 = *(v21 + 432);
          *v167.f32 = vabs_f32(*v181.i8);
          v167.i64[1] = vextq_s8(v175, v175, 8uLL).u64[0];
          v108.i64[0] = vandq_s8(v38, vcgtq_f32(v167, v138)).u64[0];
          v137.i64[0] = v108.i64[0];
          v137.i64[1] = vdupq_laneq_s64(v175, 1).u64[0];
          v179.i64[1] = v177.i64[1];
          v108.i64[1] = v175.i64[1];
          v183 = vbslq_s8(v24, vbslq_s8(vcgtq_f32(vrev64q_s32(v137), v83), v83, v138), v179);
          v184 = vbslq_s8(v43, v108, vaddq_f32(v158, v162));
          v185 = *(v21 + 240);
          v334 = *(v21 + 224);
          v186 = vbslq_s8(vcgtq_f32(vandq_s8(v38, vceqq_f32(vrev64q_s32(v185), v128)), v128), v38, vbslq_s8(v130, vmaxq_f32(v183, v128), v183));
          v338 = *(v21 + 672);
          v342 = v128;
          v344 = *(v21 + 688);
          v187 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v186, 0x17uLL)), vandq_s8(v344, vcgtq_f32(v338, v186)));
          v311 = *(v21 + 656);
          v188 = vorrq_s8(vandq_s8(v186, v311), v38);
          v189 = *(v21 + 720);
          v190 = vandq_s8(v38, vcgtq_f32(v188, v189));
          v341 = *(v21 + 704);
          v191 = vaddq_f32(vsubq_f32(v187, v341), v190);
          v192 = *(v21 + 736);
          v314 = v192;
          v193 = vsubq_f32(vsubq_f32(v188, v38), vmulq_f32(vmulq_f32(v192, v190), v188));
          v194 = *(v21 + 784);
          v332 = *(v21 + 752);
          v333 = *(v21 + 768);
          v331 = *(v21 + 800);
          v195 = vmulq_f32(v193, v193);
          v196 = vmulq_f32(v195, vaddq_f32(vaddq_f32(v332, vmulq_f32(v333, v193)), vmulq_f32(v195, vaddq_f32(v194, vmulq_f32(v331, v193)))));
          v197 = *(v21 + 832);
          v312 = *(v21 + 848);
          v198 = *(v21 + 864);
          v199 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v191, vmulq_f32(v193, vaddq_f32(v312, vmulq_f32(v193, vaddq_f32(vaddq_f32(*(v21 + 816), vmulq_f32(v197, v193)), v196))))), v185.f32[0]), v198);
          v200 = vcvtq_f32_s32(vcvtq_s32_f32(v199));
          v201 = vsubq_f32(v200, vandq_s8(v38, vcgtq_f32(v200, v199)));
          v202 = vsubq_f32(v199, v201);
          v204 = *(v21 + 896);
          v203 = *(v21 + 912);
          v205 = vmulq_f32(v184, v184);
          v206 = *(v21 + 928);
          v207 = *(v21 + 944);
          v313 = v203;
          v208 = vbslq_s8(v24, vaddq_f32(vextq_s8(v205, v205, 8uLL), vaddq_f32(v205, vrev64q_s32(v205))), v168);
          v209 = vmulq_f32(vextq_s8(v208, v208, 4uLL), v162);
          v180.i64[0] = vaddq_f32(vdupq_laneq_s64(v209, 1), vaddq_f32(v209, vrev64q_s32(v209))).u64[0];
          v210 = vrev64q_s32(v208);
          v211 = vminq_f32(vrsqrteq_f32(v210), v39);
          v212 = vminq_f32(vmulq_f32(v211, vrsqrtsq_f32(vmulq_f32(v211, v210), v211)), v39);
          v213 = vmulq_f32(v212, vrsqrtsq_f32(vmulq_f32(v212, v210), v212));
          v180.i64[1] = v162.i64[1];
          v214 = vaddq_f32(v38, vmulq_f32(v202, vaddq_f32(v207, vmulq_f32(v202, vaddq_f32(vaddq_f32(v203, vmulq_f32(v206, v202)), vmulq_f32(vmulq_f32(v202, v202), vaddq_f32(*(v21 + 880), vmulq_f32(v204, v202))))))));
          v216 = *(v21 + 960);
          v215 = *(v21 + 976);
          v217 = vbslq_s8(v182, v213, v180);
          v323 = vbslq_s8(v24, vmaxq_f32(v217, v207), v168);
          v218 = vbslq_s8(v43, v217, vmulq_lane_f32(v184, *v217.f32, 1));
          v219 = vbslq_s8(v182, vmulq_f32(v214, vshlq_n_s32(vaddq_s32(v216, vcvtq_s32_f32(v201)), 0x17uLL)), v183);
          v220 = v182;
          v221 = vextq_s8(v323, v323, 4uLL);
          v222 = vmulq_f32(v221, v218);
          v222.i64[0] = vaddq_f32(vdupq_laneq_s64(v222, 1), vaddq_f32(v222, vrev64q_s32(v222))).u64[0];
          v336 = vbslq_s8(v43, v319, vmulq_n_f32(v315, *v181.i32));
          v222.i64[1] = v218.i64[1];
          v223 = vbslq_s8(v220, vandq_s8(v38, vcgtq_f32(vrev64q_s32(vbslq_s8(v24, vabsq_f32(v323), v181)), v138)), v222);
          v224 = vbslq_s8(v24, vmaxq_f32(v223, v215), v223);
          v225 = vbslq_s8(v220, vbslq_s8(vcgtq_f32(v224, v342), v342, v38), v224);
          v320 = vcgtq_f32(vandq_s8(v206, vceqq_f32(v185, v215)), v215);
          v226 = vbslq_s8(v320, v206, v225);
          v227 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v226, 0x17uLL)), vandq_s8(v204, vcgtq_f32(v203, v226)));
          v228 = vorrq_s8(vandq_s8(v226, v216), v206);
          v229 = vandq_s8(v206, vcgtq_f32(v228, v198));
          v230 = vsubq_f32(vsubq_f32(v228, v206), vmulq_f32(vmulq_f32(v312, v229), v228));
          v231 = vmulq_f32(v230, v230);
          v232 = vmaxq_f32(vmulq_f32(v185, vaddq_f32(vaddq_f32(vsubq_f32(v227, *(v21 + 880)), v229), vmulq_f32(v230, vaddq_f32(v192, vmulq_f32(v230, vaddq_f32(vaddq_f32(v333, vmulq_f32(v332, v230)), vmulq_f32(v231, vaddq_f32(vaddq_f32(v197, vmulq_f32(*(v21 + 816), v230)), vmulq_f32(v231, vaddq_f32(v331, vmulq_f32(v194, v230))))))))))), v189);
          v233 = vcvtq_f32_s32(vcvtq_s32_f32(v232));
          v234 = vsubq_f32(v233, vandq_s8(v206, vcgtq_f32(v233, v232)));
          v229.i64[0] = vbslq_s8(vcgtq_f32(v219, v207), v207, vrev64q_s32(v219)).u64[0];
          v235 = *(v21 + 64);
          v317 = *(v21 + 80);
          v322 = vmulq_lane_f32(v235, v321, 1);
          v229.i64[1] = v219.i64[1];
          v236 = vsubq_f32(v232, v234);
          v238 = *(v21 + 992);
          v237 = *(v21 + 1008);
          v192.i64[0] = vbslq_s8(vcgtq_f32(vbslq_s8(v24, v316, v181), v207), v207, v206).u64[0];
          v192.i64[1] = v184.i64[1];
          v239 = vbslq_s8(v24, vmulq_f32(vaddq_f32(v206, vmulq_f32(v236, vaddq_f32(v237, vmulq_f32(v236, vaddq_f32(vaddq_f32(v338, vmulq_f32(v238, v236)), vmulq_f32(vmulq_f32(v236, v236), vaddq_f32(v341, vmulq_f32(v344, v236)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v234), v311), 0x17uLL)), v225);
          v240 = v24;
          v241 = vaddq_f32(vmulq_n_f32(v315, *vbslq_s8(v24, vbslq_s8(vcgtq_f32(vbslq_s8(v24, vabsq_f32(v327), v181), v215), v215, v206), v181).i32), vbslq_s8(v43, v192, vmulq_n_f32(v235, v192.f32[0])));
          v242 = vbslq_s8(v43, vbslq_s8(vcgtq_f32(vbslq_s8(v43, v192, v241), v238), v238, v237), v241);
          v225.i64[0] = vbslq_s8(vcgtq_f32(vrev64q_s32(v239), v215), v215, v239).u64[0];
          v225.i64[1] = v239.i64[1];
          v243 = vbslq_s8(v43, v225, vaddq_f32(vaddq_f32(vmulq_n_f32(v345, *vbslq_s8(v24, vbslq_s8(vcgtq_f32(vbslq_s8(v24, vabsq_f32(vextq_s8(v327, v327, 0xCuLL)), v181), v215), v215, v206), v181).i32), vaddq_f32(vmulq_laneq_f32(v317, v242, 3), v242)), vmulq_f32(v334, vbslq_s8(v43, v225, vmulq_n_f32(v336, *v225.i32)))));
          v244 = vbslq_s8(v43, v325, vmulq_laneq_f32(v324, v336, 3));
          v245 = vaddq_f32(vmulq_f32(v334, vbslq_s8(v43, v229, vmulq_n_f32(v322, v229.f32[0]))), v243);
          v246 = vbslq_s8(v43, v229, vaddq_f32(vmulq_laneq_f32(v328, v244, 3), vmulq_laneq_f32(v244, v243, 3)));
          v247 = vmulq_f32(v221, v246);
          v248 = vmaxq_f32(vbslq_s8(v43, vaddq_f32(vrev64q_s32(v247), vaddq_f32(vextq_s8(v247, v247, 4uLL), vextq_s8(v247, v247, 8uLL))), v245), *(v21 + 544));
          v329 = vbslq_s8(v43, v248, v245);
          v249 = *(v21 + 1024);
          v250 = vbslq_s8(v240, vandq_s8(v206, vcgtq_f32(vbslq_s8(v240, vabsq_f32(vextq_s8(v329, v329, 0xCuLL)), v181), v249)), v181);
          v251 = vbslq_s8(v43, v229, vaddq_f32(v318, v246));
          v252 = vmulq_f32(v251, v251);
          v253 = vbslq_s8(v339, vaddq_f32(v252, vaddq_f32(vextq_s8(v252, v252, 8uLL), vextq_s8(v252, v252, 0xCuLL))), v250);
          v254 = vminq_f32(vrsqrteq_f32(v253), v249);
          v255 = vminq_f32(vmulq_f32(v254, vrsqrtsq_f32(vmulq_f32(v254, v253), v254)), v249);
          v256 = vbslq_s8(v43, v229, vmulq_laneq_f32(v251, vbslq_s8(v339, vmulq_f32(v255, vrsqrtsq_f32(vmulq_f32(v255, v253), v255)), v250), 2));
          v257 = vmulq_f32(v221, v256);
          v258 = vaddq_f32(vdupq_laneq_s64(v257, 1), vaddq_f32(v257, vrev64q_s32(v257)));
          v259 = vbslq_s8(v339, vmaxq_f32(vextq_s8(v256, v258, 8uLL), v237), v250);
          v258.i64[1] = v256.i64[1];
          v260 = vbslq_s8(v43, v258, vmulq_laneq_f32(v326, v318, 3));
          v261 = vaddq_f32(vmulq_laneq_f32(v330, v326, 3), vmulq_laneq_f32(v260, v260, 3));
          v262 = vbslq_s8(v240, vbslq_s8(vcgtq_f32(v259, v215), v215, v206), v259);
          v263 = vbslq_s8(vcgtq_f32(vandq_s8(v237, vceqq_f32(vextq_s8(v185, v185, 4uLL), v249)), v249), v237, vrev64q_s32(v262));
          v264 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v263, 0x17uLL)), vandq_s8(v206, vcgtq_f32(v207, v263)));
          v265 = vorrq_s8(vandq_s8(v263, v216), v237);
          v266 = vandq_s8(v237, vcgtq_f32(v265, v204));
          v267 = *(v21 + 880);
          v268 = *(v21 + 816);
          v269 = vsubq_f32(vsubq_f32(v265, v237), vmulq_f32(vmulq_f32(v267, v266), v265));
          v270 = *(v21 + 864);
          v271 = vmulq_f32(v269, v269);
          v272 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(v264, v313), v266), vmulq_f32(v269, vaddq_f32(v333, vmulq_f32(v269, vaddq_f32(vaddq_f32(v331, vmulq_f32(v194, v269)), vmulq_f32(v271, vaddq_f32(vaddq_f32(v270, vmulq_f32(v312, v269)), vmulq_f32(v271, vaddq_f32(v197, vmulq_f32(v268, v269)))))))))), v185.f32[0]), v332);
          v273 = vcvtq_f32_s32(vcvtq_s32_f32(v272));
          v274 = vsubq_f32(v273, vandq_s8(v237, vcgtq_f32(v273, v272)));
          v275 = vsubq_f32(v272, v274);
          v276 = *(v21 + 720);
          v277 = vmulq_f32(vaddq_f32(v237, vmulq_f32(v275, vaddq_f32(v338, vmulq_f32(v275, vaddq_f32(vaddq_f32(v341, vmulq_f32(v344, v275)), vmulq_f32(vmulq_f32(v275, v275), vaddq_f32(v314, vmulq_f32(v276, v275)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v274), v311), 0x17uLL));
          v278 = vaddq_f32(v261, v318);
          v279 = vbslq_s8(v43, vbslq_s8(vcgtq_f32(vextq_s8(v262, v262, 4uLL), v249), v249, vbslq_s8(v43, v277, v278)), v278);
          v280 = vmulq_f32(v279, v279);
          v281 = vmulq_f32(v221, v261);
          v282 = vbslq_s8(v43, vaddq_f32(vrev64q_s32(v280), vaddq_f32(vextq_s8(v280, v280, 4uLL), vextq_s8(v280, v280, 8uLL))), v278);
          v283 = vextq_s8(v282, v282, 8uLL);
          v284 = vminq_f32(vrsqrteq_f32(v283), v249);
          v285 = vminq_f32(vmulq_f32(v284, vrsqrtsq_f32(vmulq_f32(v284, v283), v284)), v249);
          v286 = vbslq_s8(v240, vaddq_f32(vextq_s8(v281, v281, 8uLL), vaddq_f32(v281, vrev64q_s32(v281))), vmulq_f32(v285, vrsqrtsq_f32(vmulq_f32(v285, v283), v285)));
          v287 = vmulq_f32(v221, vmulq_lane_f32(v282, *v286.i8, 1));
          v288 = vaddq_f32(vdupq_laneq_s64(v287, 1), vaddq_f32(v287, vrev64q_s32(v287)));
          v289 = vmaxq_f32(vextq_s8(v286, v286, 4uLL), v249);
          v249.i64[0] = vextq_s8(v289, v288, 0xCuLL).u64[0];
          v288.i64[1] = v289.i64[1];
          *&v249.u32[2] = vext_s8(*v288.i8, *&vextq_s8(v289, v289, 8uLL), 4uLL);
          v290 = *(v21 + 432);
          v291 = vbslq_s8(v290, vandq_s8(v238, vcgtq_f32(vabsq_f32(vrev64q_s32(v249)), v237)), v288);
          v292 = vbslq_s8(v320, v206, vbslq_s8(v240, vmaxq_f32(v291, v215), v291));
          v293 = vorrq_s8(vandq_s8(v292, v216), v206);
          v294 = vandq_s8(v206, vcgtq_f32(v293, v270));
          v295 = vsubq_f32(vsubq_f32(v293, v206), vmulq_f32(vmulq_f32(v312, v294), v293));
          v296 = vmulq_f32(v295, v295);
          v297 = vmaxq_f32(vmulq_f32(v185, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v292, 0x17uLL)), vandq_s8(v204, vcgtq_f32(v313, v292))), v267), v294), vmulq_f32(v295, vaddq_f32(v314, vmulq_f32(v295, vaddq_f32(vaddq_f32(v333, vmulq_f32(v332, v295)), vmulq_f32(v296, vaddq_f32(vaddq_f32(v197, vmulq_f32(v268, v295)), vmulq_f32(v296, vaddq_f32(v331, vmulq_f32(*(v21 + 784), v295))))))))))), v276);
          v298 = vcvtq_f32_s32(vcvtq_s32_f32(v297));
          v299 = vsubq_f32(v298, vandq_s8(v206, vcgtq_f32(v298, v297)));
          v300 = vsubq_f32(v297, v299);
          v14 = 1.0;
          v301 = vbslq_s8(v240, vmulq_f32(vaddq_f32(v206, vmulq_f32(v300, vaddq_f32(v237, vmulq_f32(v300, vaddq_f32(vaddq_f32(v338, vmulq_f32(v238, v300)), vmulq_f32(vmulq_f32(v300, v300), vaddq_f32(v341, vmulq_f32(v344, v300)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v299), v311), 0x17uLL)), v291);
          v302 = vbslq_s8(v290, vbslq_s8(vcgtq_f32(v301, v342), v342, v238), v301);
          v303 = *(v7 + v19);
          v304 = vsubq_f32(v238, *(v21 + 192));
          v305 = vbslq_s8(v240, vsubq_f32(v206, vbslq_s8(v240, v303, v304)), v304);
          v306 = vmulq_laneq_f32(v317, v250, 2);
          v304.i32[0] = vbslq_s8(vcgtq_f32(vrev64q_s32(v302), v215), v215, v302).u32[0];
          v307 = vbslq_s8(v43, v302, vmulq_laneq_f32(v345, v262, 3));
          v308 = vbslq_s8(v43, v248, vaddq_f32(vmulq_lane_f32(v322, *v262.f32, 1), vbslq_s8(v43, v248, vaddq_f32(vmulq_n_f32(v336, v323.f32[0]), vbslq_s8(v43, v248, vaddq_f32(vmulq_f32(v334, vmulq_n_f32(v307, *v304.i32)), vbslq_s8(v43, v248, vaddq_f32(vmulq_f32(v334, vmulq_laneq_f32(v306, v279, 3)), v329))))))));
          *(v6 + v19) = vaddq_f32(vmulq_n_f32(*(v8 + v19), vmulq_lane_f32(v305, *v305.f32, 1).f32[0]), vmulq_n_f32(vbslq_s8(v43, *(v8 + v19), vaddq_f32(*(v8 + v19), vmulq_f32(*(v21 + 176), vaddq_f32(vmulq_laneq_f32(v307, v307, 3), vaddq_f32(vmulq_laneq_f32(v306, v308, 3), v308))))), *v303.i32));
          v20 = vaddq_f32(v346, xmmword_2603429B0);
          v19 += 16;
        }

        while (16 * v5 != v19);
      }

      ++v4;
      v6 += v15;
      v310 = vaddq_f32(v310, xmmword_2603429C0);
      v7 += v16;
      v8 += v17;
      v9 += 16 * v10;
      v11 += v18;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcMatteNormalComposite::GetDOD(HgcMatteNormalComposite *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcMatteNormalComposite::GetROI(HgcMatteNormalComposite *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcMatteNormalComposite::HgcMatteNormalComposite(HgcMatteNormalComposite *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B68E0;
  operator new();
}

void HgcMatteNormalComposite::~HgcMatteNormalComposite(HGNode *this)
{
  *this = &unk_2872B68E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4082453793);
  }

  HGNode::~HGNode(this);
}

{
  HgcMatteNormalComposite::~HgcMatteNormalComposite(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMatteNormalComposite::SetParameter(HgcMatteNormalComposite *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = -a4;
      v8 = -a5;
      v9 = *(this + 51);
      if (v9->n128_f32[0] == -a3.n128_f32[0] && v9->n128_f32[1] == v7 && v9->n128_f32[2] == v8 && v9->n128_f32[3] == 0.0)
      {
        return 0;
      }

      v9->n128_f32[0] = -a3.n128_f32[0];
      v9->n128_f32[1] = v7;
      v9->n128_f32[2] = v8;
      a3.n128_f32[1] = a4;
      v9->n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v9[65] = a3;
      goto LABEL_103;
    case 1:
      v21 = *(this + 51);
      if (v21[4] == a3.n128_f32[0] && v21[5] == a4 && v21[6] == a5 && v21[7] == a6)
      {
        return 0;
      }

      v21[4] = a3.n128_f32[0];
      v21[5] = a4;
      v21[6] = a5;
      v21[7] = a6;
      goto LABEL_103;
    case 2:
      v17 = *(this + 51);
      if (v17[8] == a3.n128_f32[0] && v17[9] == a4 && v17[10] == a5 && v17[11] == a6)
      {
        return 0;
      }

      v17[8] = a3.n128_f32[0];
      v17[9] = a4;
      v17[10] = a5;
      v17[11] = a6;
      goto LABEL_103;
    case 3:
      v19 = *(this + 51);
      if (v19[12] == a3.n128_f32[0] && v19[13] == a4 && v19[14] == a5 && v19[15] == a6)
      {
        return 0;
      }

      v19[12] = a3.n128_f32[0];
      v19[13] = a4;
      v19[14] = a5;
      v19[15] = a6;
      goto LABEL_103;
    case 4:
      v14 = *(this + 51);
      if (v14[16] == a3.n128_f32[0] && v14[17] == a4 && v14[18] == a5 && v14[19] == a6)
      {
        return 0;
      }

      v14[16] = a3.n128_f32[0];
      v14[17] = a4;
      v14[18] = a5;
      v14[19] = a6;
      goto LABEL_103;
    case 5:
      v24 = *(this + 51);
      if (v24[20] == a3.n128_f32[0] && v24[21] == a4 && v24[22] == a5 && v24[23] == a6)
      {
        return 0;
      }

      v24[20] = a3.n128_f32[0];
      v24[21] = a4;
      v24[22] = a5;
      v24[23] = a6;
      goto LABEL_103;
    case 6:
      v26 = *(this + 51);
      if (v26[24] == a3.n128_f32[0] && v26[25] == a4 && v26[26] == a5 && v26[27] == a6)
      {
        return 0;
      }

      v26[24] = a3.n128_f32[0];
      v26[25] = a4;
      v26[26] = a5;
      v26[27] = a6;
      goto LABEL_103;
    case 7:
      v20 = *(this + 51);
      if (v20[28] == a3.n128_f32[0] && v20[29] == a4 && v20[30] == a5 && v20[31] == a6)
      {
        return 0;
      }

      v20[28] = a3.n128_f32[0];
      v20[29] = a4;
      v20[30] = a5;
      v20[31] = a6;
      goto LABEL_103;
    case 8:
      v29 = *(this + 51);
      if (v29[32] == a3.n128_f32[0] && v29[33] == a4 && v29[34] == a5 && v29[35] == a6)
      {
        return 0;
      }

      v29[32] = a3.n128_f32[0];
      v29[33] = a4;
      v29[34] = a5;
      v29[35] = a6;
      goto LABEL_103;
    case 9:
      v16 = *(this + 51);
      if (v16[36] == a3.n128_f32[0] && v16[37] == a4 && v16[38] == a5 && v16[39] == a6)
      {
        return 0;
      }

      v16[36] = a3.n128_f32[0];
      v16[37] = a4;
      v16[38] = a5;
      v16[39] = a6;
      goto LABEL_103;
    case 10:
      v28 = *(this + 51);
      if (v28[40] == a3.n128_f32[0] && v28[41] == a4 && v28[42] == a5 && v28[43] == a6)
      {
        return 0;
      }

      v28[40] = a3.n128_f32[0];
      v28[41] = a4;
      v28[42] = a5;
      v28[43] = a6;
      goto LABEL_103;
    case 11:
      v12 = *(this + 51);
      if (v12[11].n128_f32[0] == a3.n128_f32[0] && v12[11].n128_f32[1] == a3.n128_f32[0] && v12[11].n128_f32[2] == a3.n128_f32[0] && v12[11].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v13 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v13.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v12[11] = v13;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v12[66] = a3;
      goto LABEL_103;
    case 12:
      v15 = *(this + 51);
      if (v15[12].n128_f32[0] == 0.0 && v15[12].n128_f32[1] == a3.n128_f32[0] && v15[12].n128_f32[2] == 0.0 && v15[12].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v15[12].n128_u32[0] = 0;
      v15[12].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v15[12].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v15[67] = a3;
      goto LABEL_103;
    case 13:
      v25 = *(this + 51);
      if (v25[13].n128_f32[0] == 0.0 && v25[13].n128_f32[1] == a4 && v25[13].n128_f32[2] == 0.0 && v25[13].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v25[13].n128_u32[0] = 0;
      v25[13].n128_f32[1] = a4;
      v25[13].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v25[13].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v25[68] = a3;
      goto LABEL_103;
    case 14:
      v11 = *(this + 51);
      if (v11[56] == a3.n128_f32[0] && v11[57] == a4 && v11[58] == a5 && v11[59] == a6)
      {
        return 0;
      }

      v11[56] = a3.n128_f32[0];
      v11[57] = a4;
      v11[58] = a5;
      v11[59] = a6;
      goto LABEL_103;
    case 15:
      v18 = *(this + 51);
      if (v18[60] == a3.n128_f32[0] && v18[61] == a4 && v18[62] == a5 && v18[63] == a6)
      {
        return 0;
      }

      v18[60] = a3.n128_f32[0];
      v18[61] = a4;
      v18[62] = a5;
      v18[63] = a6;
      goto LABEL_103;
    case 16:
      v10 = *(this + 51);
      if (v10[64] == a3.n128_f32[0] && v10[65] == a4 && v10[66] == a5 && v10[67] == a6)
      {
        return 0;
      }

      v10[64] = a3.n128_f32[0];
      v10[65] = a4;
      v10[66] = a5;
      v10[67] = a6;
      goto LABEL_103;
    case 17:
      v22 = *(this + 51);
      if (v22[68] == a3.n128_f32[0] && v22[69] == a4 && v22[70] == a5 && v22[71] == a6)
      {
        return 0;
      }

      v22[68] = a3.n128_f32[0];
      v22[69] = a4;
      v22[70] = a5;
      v22[71] = a6;
      goto LABEL_103;
    case 18:
      v27 = *(this + 51);
      if (v27[72] == a3.n128_f32[0] && v27[73] == a4 && v27[74] == a5 && v27[75] == a6)
      {
        return 0;
      }

      v27[72] = a3.n128_f32[0];
      v27[73] = a4;
      v27[74] = a5;
      v27[75] = a6;
      goto LABEL_103;
    case 19:
      v30 = *(this + 51);
      if (v30[76] == a3.n128_f32[0] && v30[77] == a4 && v30[78] == a5 && v30[79] == a6)
      {
        return 0;
      }

      v30[76] = a3.n128_f32[0];
      v30[77] = a4;
      v30[78] = a5;
      v30[79] = a6;
LABEL_103:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t HgcMatteNormalComposite::GetParameter(HgcMatteNormalComposite *this, unsigned int a2, float *a3)
{
  if (a2 > 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_2608547E0[a2];
  v6 = qword_260854880[a2];
  v7 = qword_260854920[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260854740[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

double HgcMatteNormalComposite::State::State(HgcMatteNormalComposite::State *this)
{
  *&v1 = 0x8000000080000000;
  *(&v1 + 1) = 0x8000000080000000;
  result = 0.0;
  *this = v1;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = xmmword_260854540;
  *(this + 21) = xmmword_2603444B0;
  *(this + 22) = xmmword_2603446A0;
  *(this + 23) = xmmword_260344510;
  *(this + 24) = xmmword_260854550;
  *(this + 25) = xmmword_260344660;
  __asm { FMOV            V1.4S, #1.0 }

  *(this + 26) = _Q1;
  *(this + 27) = xmmword_260344670;
  v8.i64[0] = 0x80000000800000;
  v8.i64[1] = 0x80000000800000;
  *(this + 28) = xmmword_260854560;
  *(this + 29) = vnegq_f32(v8);
  *(this + 30) = xmmword_260344600;
  *(this + 31) = xmmword_260344740;
  *(this + 32) = xmmword_2603469D0;
  *(this + 33) = xmmword_2603470A0;
  *(this + 34) = xmmword_260346650;
  *(this + 35) = xmmword_26084EE00;
  *(this + 36) = xmmword_260854570;
  *(this + 37) = xmmword_260345010;
  *(this + 38) = xmmword_260854580;
  *(this + 39) = xmmword_260854590;
  *(this + 40) = xmmword_2608545A0;
  *(this + 41) = xmmword_2608545B0;
  *(this + 42) = xmmword_2608545C0;
  *(this + 43) = xmmword_2608545D0;
  *(this + 44) = xmmword_2608545E0;
  *(this + 45) = xmmword_2608545F0;
  *(this + 46) = xmmword_260854600;
  *(this + 47) = xmmword_260854610;
  *(this + 48) = xmmword_260854620;
  *(this + 49) = xmmword_260854630;
  *(this + 50) = xmmword_260854640;
  *(this + 51) = xmmword_260854650;
  *(this + 52) = xmmword_260854660;
  *(this + 53) = xmmword_260854670;
  *(this + 54) = xmmword_260854680;
  *(this + 55) = xmmword_260854690;
  *(this + 56) = xmmword_2608546A0;
  *(this + 57) = xmmword_2608546B0;
  *(this + 58) = xmmword_2608546C0;
  *(this + 59) = xmmword_2608546D0;
  *(this + 60) = xmmword_260345EA0;
  *(this + 61) = xmmword_2608546E0;
  *(this + 62) = xmmword_2608546F0;
  *(this + 63) = xmmword_260854700;
  *(this + 64) = xmmword_260854710;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  return result;
}

const char *HgcZebraStripe::GetProgram(HgcZebraStripe *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006c5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.1428571492, 7.000000000, 0.2857142985, 1.714285851);\n    const half4 c1 = half4(2.000000000, 0.5000000000, 1.000000000, 0.3000000119);\n    const half4 c2 = half4(0.000000000, 0.000000000, 0.000000000, 0.004999999888);\n    half4 r0, r1;\n    float4 s0;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord2.xy*float2(c0.xx);\n    s0.xy = floor(s0.xy);\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    s0.xy = -s0.xy*float2(c0.yy) + frag._texCoord2.xy;\n    s0.x = s0.y - s0.x;\n    s0.x = s0.x*float(c0.z) + float(c0.w);\n    s0.y = s0.x*float(c1.y);\n    s0.y = floor(s0.y);\n    s0.x = -s0.y*float(c1.x) + s0.x;\n    s0.x = float(c1.z) - s0.x;\n    s0.y = fmax(float(r0.x), float(c1.w));\n    s0.x = -s0.y*float(c1.x) + fabs(s0.x);\n    s0.w = float(c1.z);\n    s0.xyz = clamp(s0.xxx + float3(c1.zzz), 0.00000f, 1.00000f);\n    s0 = fmax(s0, hg_Params[1]);\n    r0.w = half(r0.x >= c2.w);\n    r0.x = half(-r0.w >= c2.x);\n    r1.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r1.xyz = fmax(r1.xyz, c2.xxx);\n    r1.xyz = half3(dot(r1.xyz, half3(hg_Params[0].xyz)));\n    r1.w = c1.z;\n    output.color0 = select(s0, float4(r1), -float4(r0.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=87c737f3:aae2c528:1aa74fa8:9f439e8c\n//SIG=00400000:00000003:00000003:00000003:0003:0002:0003:0000:0000:0000:000e:0000:0003:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000649\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.1428571492, 7.000000000, 0.2857142985, 1.714285851);\n    const float4 c1 = float4(2.000000000, 0.5000000000, 1.000000000, 0.3000000119);\n    const float4 c2 = float4(0.000000000, 0.000000000, 0.000000000, 0.004999999888);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord2.xy*c0.xx;\n    r0.xy = floor(r0.xy);\n    r1.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xy = -r0.xy*c0.yy + frag._texCoord2.xy;\n    r0.x = r0.y - r0.x;\n    r0.x = r0.x*c0.z + c0.w;\n    r0.y = r0.x*c1.y;\n    r0.y = floor(r0.y);\n    r0.x = -r0.y*c1.x + r0.x;\n    r0.x = c1.z - r0.x;\n    r0.y = fmax(r1.x, c1.w);\n    r0.x = -r0.y*c1.x + fabs(r0.x);\n    r0.w = c1.z;\n    r0.xyz = clamp(r0.xxx + c1.zzz, 0.00000f, 1.00000f);\n    r0 = fmax(r0, hg_Params[1]);\n    r1.w = float(r1.x >= c2.w);\n    r1.x = float(-r1.w >= c2.x);\n    r2.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r2.xyz = fmax(r2.xyz, c2.xxx);\n    r2.xyz = float3(dot(r2.xyz, hg_Params[0].xyz));\n    r2.w = c1.z;\n    output.color0 = select(r0, r2, -r1.xxxx < 0.00000f);\n    return output;\n}\n//MD5=045c4aa2:f4d6e5f0:b4e97ea2:a67f2456\n//SIG=00000000:00000003:00000003:00000000:0003:0002:0003:0000:0000:0000:000e:0000:0003:02:0:1:0\n";
    }
  }

  else
  {
    v5 = Target;
    if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
    {
      if (v5 <= 0x6040F)
      {
        return "!!ARBfp1.0     \n##LEN=00000004a1\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nATTRIB $f2=fragment.texcoord[2];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={0.1428571492,7.000000000,0.2857142985,1.714285851};\nPARAM $c1={2.000000000,0.5000000000,1.000000000,0.3000000119};\nPARAM $c2={0.000000000,0.000000000,0.000000000,0.004999999888};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0.xy,$f2,$c0.x;\nFLR r0.xy,r0;\n##0\nTEX r1.x,$f0,texture[0],RECT;\nMAD r0.xy,-r0,$c0.y,$f2;\nSUB r0.x,r0.y,r0;\nMAD r0.x,r0,$c0.z,$c0.w;\nMUL r0.y,r0.x,$c1;\nFLR r0.y,r0;\nMAD r0.x,-r0.y,$c1,r0;\nSUB r0.x,$c1.z,r0;\nMAX r0.y,r1.x,$c1.w;\nABS r2.x,r0;\nMAD r0.x,-r0.y,$c1,r2;\nMOV r0.w,$c1.z;\nADD_SAT r0.xyz,r0.x,$c1.z;\nMAX r0,r0,$p1;\nSGE r1.w,r1.x,$c2;\nSGE r1.x,-r1.w,$c2;\n##1\nTEX r2.xyz,$f1,texture[1],RECT;\nMAX r2.xyz,r2,$c2.x;\nDP3 r2.xyz,r2,$p0;\nMOV r2.w,$c1.z;\nCMP $o0,-r1.x,r2,r0;\nEND\n##MD5=be9160a0:5a1c5010:c59c640e:b7dc9a26\n##SIG=00000000:00000003:00000003:00000000:0003:0002:0003:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }

      else
      {
        return "!!ARBfp1.0     \n##LEN=0000000496\nOPTION NV_fragment_program; \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nATTRIB $f2=fragment.texcoord[2];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={0.1428571492,7.000000000,0.2857142985,1.714285851};\nPARAM $c1={2.000000000,0.5000000000,1.000000000,0.3000000119};\nPARAM $c2={0.000000000,0.000000000,0.000000000,0.004999999888};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0.xy,$f2,$c0.x;\nFLR r0.xy,r0;\n##0\nTEX r1.x,$f0,texture[0],RECT;\nMAD r0.xy,-r0,$c0.y,$f2;\nSUB r0.x,r0.y,r0;\nMAD r0.x,r0,$c0.z,$c0.w;\nMUL r0.y,r0.x,$c1;\nFLR r0.y,r0;\nMAD r0.x,-r0.y,$c1,r0;\nSUB r0.x,$c1.z,r0;\nMAX r0.y,r1.x,$c1.w;\nMAD r0.x,-r0.y,$c1,|r0|;\nMOV r0.w,$c1.z;\nADD_SAT r0.xyz,r0.x,$c1.z;\nMAX r0,r0,$p1;\nSGE r1.w,r1.x,$c2;\nSGE r1.x,-r1.w,$c2;\n##1\nTEX r2.xyz,$f1,texture[1],RECT;\nMAX r2.xyz,r2,$c2.x;\nDP3 r2.xyz,r2,$p0;\nMOV r2.w,$c1.z;\nCMP $o0,-r1.x,r2,r0;\nEND\n##MD5=769072dd:b7a12e89:d332824c:9cb8f34d\n##SIG=00000000:00000003:00000003:00000000:0003:0002:0003:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }
    }

    else
    {
      return "//GLfs2.0      \n//LEN=0000000698\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.1428571492, 7.000000000, 0.2857142985, 1.714285851);\n    const highp vec4 c1 = vec4(2.000000000, 0.5000000000, 1.000000000, 0.3000000119);\n    const highp vec4 c2 = vec4(0.000000000, 0.000000000, 0.000000000, 0.004999999888);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord2.xy*c0.xx;\n    r0.xy = floor(r0.xy);\n    r1.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xy = -r0.xy*c0.yy + hg_TexCoord2.xy;\n    r0.x = r0.y - r0.x;\n    r0.x = r0.x*c0.z + c0.w;\n    r0.y = r0.x*c1.y;\n    r0.y = floor(r0.y);\n    r0.x = -r0.y*c1.x + r0.x;\n    r0.x = c1.z - r0.x;\n    r0.y = max(r1.x, c1.w);\n    r0.x = -r0.y*c1.x + abs(r0.x);\n    r0.w = c1.z;\n    r0.xyz = clamp(r0.xxx + c1.zzz, vec3(0.00000), vec3(1.00000));\n    r0 = max(r0, hg_ProgramLocal1);\n    r1.w = float(r1.x >= c2.w);\n    r1.x = float(-r1.w >= c2.x);\n    r2.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r2.xyz = max(r2.xyz, c2.xxx);\n    r2.xyz = vec3(dot(r2.xyz, hg_ProgramLocal0.xyz));\n    r2.w = c1.z;\n    gl_FragColor = vec4(-r1.x < 0.00000 ? r2.x : r0.x, -r1.x < 0.00000 ? r2.y : r0.y, -r1.x < 0.00000 ? r2.z : r0.z, -r1.x < 0.00000 ? r2.w : r0.w);\n}\n//MD5=c395a7ea:f982a5dc:73d36360:92518159\n//SIG=00000000:00000003:00000003:00000000:0003:0002:0003:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
    }
  }
}

void sub_260244C08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260244D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260244DD8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260244DD0);
}

uint64_t HgcZebraStripe::BindTexture(HgcZebraStripe *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcZebraStripe::Bind(HgcZebraStripe *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcZebraStripe::RenderTile(HgcZebraStripe *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[2];
    v7 = a2[12];
    v8 = a2[10];
    *v9.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    v12 = 16 * a2[13].i32[0];
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    do
    {
      if (v5 < 2)
      {
        v14 = 0;
        v17 = v9;
      }

      else
      {
        v14 = 0;
        v15 = 16;
        v16 = v5;
        v17 = v9;
        do
        {
          v18 = vaddq_f32(v17, xmmword_2603429B0);
          v19 = *(this + 51);
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = vmulq_f32(v17, v21);
          v23 = vmulq_f32(v18, v21);
          v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
          v25 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
          v26 = vandq_s8(v20, vcgtq_f32(v25, v23));
          v27 = vsubq_f32(v24, vandq_s8(v20, vcgtq_f32(v24, v22)));
          v28 = *(*&v8 + v15 - 16);
          v29 = *(*&v8 + v15);
          v30 = vsubq_f32(v25, v26);
          v31 = *(v19 + 64);
          v32 = *(v19 + 80);
          v33 = vsubq_f32(v17, vmulq_lane_f32(v27, *v31.f32, 1));
          v34 = vsubq_f32(v18, vmulq_lane_f32(v30, *v31.f32, 1));
          v35 = vaddq_f32(v31, vmulq_f32(v32, vsubq_f32(vrev64q_s32(v33), v33)));
          v36 = vaddq_f32(v31, vmulq_f32(v32, vsubq_f32(vrev64q_s32(v34), v34)));
          v37 = vmulq_f32(v32, vrev64q_s32(v35));
          v38 = vmulq_f32(v32, vrev64q_s32(v36));
          v39 = *(v19 + 96);
          v40 = *(v19 + 112);
          v41 = vbslq_s8(v39, v35, v37);
          v42 = vbslq_s8(v39, v36, v38);
          v43 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
          v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v45 = vbslq_s8(v39, v35, vsubq_f32(v43, vandq_s8(v20, vcgtq_f32(v43, v41))));
          v46 = vbslq_s8(v39, v36, vsubq_f32(v44, vandq_s8(v20, vcgtq_f32(v44, v42))));
          v47 = vbslq_s8(v39, vsubq_f32(v20, vsubq_f32(v45, vmulq_lane_f32(v40, *v45.f32, 1))), vmaxq_f32(vrev64q_s32(v28), v40));
          v48 = vbslq_s8(v39, vsubq_f32(v20, vsubq_f32(v46, vmulq_lane_f32(v40, *v46.f32, 1))), vmaxq_f32(vrev64q_s32(v29), v40));
          v49 = vsubq_f32(vabsq_f32(v47), vmulq_lane_f32(v40, *v47.f32, 1));
          v50 = vsubq_f32(vabsq_f32(v48), vmulq_lane_f32(v40, *v48.f32, 1));
          v51 = *(v19 + 128);
          v52 = *(v19 + 144);
          v53 = vnegq_f32(v40);
          v54 = vbslq_s8(vcgeq_f32(vextq_s8(v28, v28, 4uLL), v51), v53, v13);
          v55 = vbslq_s8(vcgeq_f32(vextq_s8(v29, v29, 4uLL), v51), v53, v13);
          v54.i64[0] = vandq_s8(v20, vcgeq_f32(vextq_s8(v54, v54, 0xCuLL), v51)).u64[0];
          v55.i64[0] = vandq_s8(v20, vcgeq_f32(vextq_s8(v55, v55, 0xCuLL), v51)).u64[0];
          v56 = *(v19 + 16);
          v57 = vmulq_f32(vmaxq_f32(*(*&v7 + v15 - 16), v51), *v19);
          v58 = vmulq_f32(vmaxq_f32(*(*&v7 + v15), v51), *v19);
          v49.i32[3] = 1.0;
          v59 = vbslq_s8(v52, v49, vminq_f32(vmaxq_f32(vaddq_f32(v20, vdupq_lane_s32(*v49.i8, 0)), v51), v20));
          v60 = vaddq_f32(vdupq_laneq_s32(v57, 2), vaddq_f32(vdupq_lane_s32(*v57.i8, 0), vdupq_lane_s32(*v57.i8, 1)));
          v50.i32[3] = 1.0;
          v61 = vbslq_s8(v52, v50, vminq_f32(vmaxq_f32(vaddq_f32(v20, vdupq_lane_s32(*v50.i8, 0)), v51), v20));
          v62 = vaddq_f32(vdupq_laneq_s32(v58, 2), vaddq_f32(vdupq_lane_s32(*v58.i8, 0), vdupq_lane_s32(*v58.i8, 1)));
          v60.i32[3] = 1.0;
          v62.i32[3] = 1.0;
          v63 = *(v19 + 160);
          v64 = (*&v6 + v15);
          v64[-1] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v54.i8, 0), v63), v60, vmaxq_f32(v59, v56));
          *v64 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v55.i8, 0), v63), v62, vmaxq_f32(v61, v56));
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v16 -= 2;
          v14 += 2;
          v15 += 32;
        }

        while (v16 > 1);
      }

      if (v14 < v5)
      {
        v65 = *(this + 51);
        v66 = *(v65 + 48);
        v67 = vmulq_f32(v17, *(v65 + 32));
        v68 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
        v69 = vsubq_f32(v68, vandq_s8(v66, vcgtq_f32(v68, v67)));
        v70 = *(*&v8 + 16 * v14);
        v71 = *(v65 + 64);
        v72 = *(v65 + 80);
        v73 = vsubq_f32(v17, vmulq_lane_f32(v69, *v71.f32, 1));
        v74 = vaddq_f32(v71, vmulq_f32(v72, vsubq_f32(vrev64q_s32(v73), v73)));
        v75 = vmulq_f32(v72, vrev64q_s32(v74));
        v76 = *(v65 + 96);
        v77 = *(v65 + 112);
        v78 = vbslq_s8(v76, v74, v75);
        v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
        v80 = vbslq_s8(v76, v74, vsubq_f32(v79, vandq_s8(v66, vcgtq_f32(v79, v78))));
        v81 = vbslq_s8(v76, vsubq_f32(v66, vsubq_f32(v80, vmulq_lane_f32(v77, *v80.f32, 1))), vmaxq_f32(vrev64q_s32(v70), v77));
        v82 = vsubq_f32(vabsq_f32(v81), vmulq_lane_f32(v77, *v81.f32, 1));
        v82.i32[3] = 1.0;
        v83 = *(v65 + 128);
        v84 = vbslq_s8(*(v65 + 144), v82, vminq_f32(vmaxq_f32(vaddq_f32(v66, vdupq_lane_s32(*v82.i8, 0)), v83), v66));
        v85 = vbslq_s8(vcgeq_f32(vextq_s8(v70, v70, 4uLL), v83), vnegq_f32(v77), v13);
        v66.i64[0] = vandq_s8(v66, vcgeq_f32(vextq_s8(v85, v85, 0xCuLL), v83)).u64[0];
        v86 = vmulq_f32(vmaxq_f32(*(*&v7 + 16 * v14), v83), *v65);
        v87 = vaddq_f32(vdupq_laneq_s32(v86, 2), vaddq_f32(vdupq_lane_s32(*v86.i8, 0), vdupq_lane_s32(*v86.i8, 1)));
        v87.i32[3] = 1.0;
        *(*&v6 + 16 * v14) = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v66.f32, 0), *(v65 + 160)), v87, vmaxq_f32(v84, *(v65 + 16)));
      }

      v9 = vaddq_f32(v9, xmmword_2603429C0);
      *&v8 += v10;
      *&v7 += v12;
      *&v6 += v11;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcZebraStripe::GetDOD(HgcZebraStripe *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcZebraStripe::GetROI(HgcZebraStripe *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcZebraStripe::HgcZebraStripe(HgcZebraStripe *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B6B48;
  operator new();
}

void HgcZebraStripe::~HgcZebraStripe(HGNode *this)
{
  *this = &unk_2872B6B48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcZebraStripe::~HgcZebraStripe(this);

  HGObject::operator delete(v1);
}

uint64_t HgcZebraStripe::SetParameter(HgcZebraStripe *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcZebraStripe::GetParameter(HgcZebraStripe *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

void OZTileBlend::renderTile(uint64_t a1, PCWorkingColor *this, int a3)
{
  v61 = *MEMORY[0x277D85DE8];
  PCWorkingColor::getRGBA(this, v60.f32, &v60.f32[1], &v60.f32[2], (&v60 | 0xC));
  v5 = v60;
  if (a3 == 1)
  {
    v32 = *(a1 + 12) - *(a1 + 4);
    if (v32 >= 1)
    {
      v33 = 0;
      v34 = *(a1 + 8) - *a1;
      v35 = *(a1 + 16);
      v36 = *(a1 + 96);
      v37 = 16 * *(a1 + 88);
      v38 = *(a1 + 80);
      v39 = 16 * *(a1 + 104);
      v40 = 16 * *(a1 + 24);
      do
      {
        if (v34 < 4)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          v42 = 48;
          for (i = v34; i > 3; i -= 4)
          {
            v44 = *(v38 + v42 - 48);
            v45 = *(v38 + v42 - 32);
            v46 = *(v38 + v42 - 16);
            v47 = *(v38 + v42);
            v48 = vmulq_f32(v5, *(v36 + v42 - 48));
            v49 = vmulq_f32(v5, *(v36 + v42 - 32));
            v50 = vmulq_f32(v5, *(v36 + v42 - 16));
            v51 = vmulq_f32(v5, *(v36 + v42));
            v52 = vaddq_f32(v44, v48);
            v53 = vaddq_f32(v45, v49);
            v54 = vaddq_f32(v46, v50);
            v55 = vaddq_f32(v47, v51);
            v52.i32[3] = vsubq_f32(v52, vmulq_f32(v44, v48)).i32[3];
            v53.i32[3] = vsubq_f32(v53, vmulq_f32(v45, v49)).i32[3];
            v54.i32[3] = vsubq_f32(v54, vmulq_f32(v46, v50)).i32[3];
            v55.i32[3] = vsubq_f32(v55, vmulq_f32(v47, v51)).i32[3];
            v56 = (v35 + v42);
            v56[-3] = v52;
            v56[-2] = v53;
            v56[-1] = v54;
            *v56 = v55;
            v41 += 4;
            v42 += 64;
          }
        }

        if (v41 < v34)
        {
          do
          {
            v57 = *(v38 + 16 * v41);
            v58 = vmulq_f32(v5, *(v36 + 16 * v41));
            v59 = vaddq_f32(v57, v58);
            v59.i32[3] = vsubq_f32(v59, vmulq_f32(v57, v58)).i32[3];
            *(v35 + 16 * v41++) = v59;
          }

          while (v41 < v34);
        }

        ++v33;
        v38 += v37;
        v36 += v39;
        v35 += v40;
      }

      while (v33 != v32);
    }
  }

  else if (!a3)
  {
    v6 = *(a1 + 12) - *(a1 + 4);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 8) - *a1;
      v9 = *(a1 + 16);
      v10 = *(a1 + 96);
      v11 = *(a1 + 80);
      v12 = 16 * *(a1 + 88);
      v13 = 16 * *(a1 + 104);
      v14 = 16 * *(a1 + 24);
      __asm { FMOV            V1.4S, #1.0 }

      do
      {
        if (v8 < 4)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0;
          v21 = 48;
          for (j = v8; j > 3; j -= 4)
          {
            v23 = vmulq_f32(v5, *(v10 + v21 - 48));
            v24 = vmulq_f32(v5, *(v10 + v21 - 32));
            v25 = vmulq_f32(v5, *(v10 + v21 - 16));
            v26 = vmulq_f32(v5, *(v10 + v21));
            v27 = vaddq_f32(v24, vmulq_laneq_f32(*(v11 + v21 - 32), vsubq_f32(_Q1, v24), 3));
            v28 = vaddq_f32(v25, vmulq_laneq_f32(*(v11 + v21 - 16), vsubq_f32(_Q1, v25), 3));
            v29 = vaddq_f32(v26, vmulq_laneq_f32(*(v11 + v21), vsubq_f32(_Q1, v26), 3));
            v30 = (v9 + v21);
            v30[-3] = vaddq_f32(v23, vmulq_laneq_f32(*(v11 + v21 - 48), vsubq_f32(_Q1, v23), 3));
            v30[-2] = v27;
            v30[-1] = v28;
            *v30 = v29;
            v20 += 4;
            v21 += 64;
          }
        }

        if (v20 < v8)
        {
          do
          {
            v31 = vmulq_f32(v5, *(v10 + 16 * v20));
            *(v9 + 16 * v20) = vaddq_f32(v31, vmulq_laneq_f32(*(v11 + 16 * v20), vsubq_f32(_Q1, v31), 3));
            ++v20;
          }

          while (v20 < v8);
        }

        ++v7;
        v11 += v12;
        v10 += v13;
        v9 += v14;
      }

      while (v7 != v6);
    }
  }
}

const char *HgcMaskCompIntersect::GetProgram(HgcMaskCompIntersect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, half4(hg_Params[0]));\n    r0.x = r0.x*half(hg_Params[1].y);\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*half(hg_Params[1].x) + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = select(r0.y, r1.x, -half(hg_Params[1].z) < 0.00000h);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.x = half(hg_Params[1].z) + c0.y;\n    r1 = r0.yyyy*r1;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000h);\n    output.color0 = select(float4(r1), float4(r0.xxxx), -hg_Params[1].wwww < 0.00000h);\n    return output;\n}\n//MD5=ac2b60ee:6ba9cb69:34ade124:5d40c400\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000481\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, hg_Params[0]);\n    r0.x = r0.x*hg_Params[1].y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_Params[1].x + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = select(r0.y, r1.x, -hg_Params[1].z < 0.00000f);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.x = hg_Params[1].z + c0.y;\n    r1 = r0.yyyy*r1;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000f);\n    output.color0 = select(r1, r0.xxxx, -hg_Params[1].wwww < 0.00000f);\n    return output;\n}\n//MD5=77d7d354:a5b065a0:a8b165d0:d4bae7e3\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=0000000335\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.000000000,-2.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nDP4 r0.x,r0,$p0;\nMUL r0.x,r0,$p1.y;\nMAD r0.y,r0.x,$c0,$c0.x;\nMAD r0.y,r0,$p1.x,r0.x;\nSUB r1.x,$c0,r0.y;\nCMP r0.z,-$p1,r1.x,r0.y;\n##1\nTEX r1,$f1,texture[1],RECT;\nADD r0.x,$p1.z,$c0.y;\nMUL r1,r0.y,r1;\nCMP r0.x,r0,r0.z,r0.y;\nCMP $o0,-$p1.w,r0.x,r1;\nEND\n##MD5=b11fb0f2:dceb6060:16c24b65:6e4e89de\n##SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0, hg_ProgramLocal0);\n    r0.x = r0.x*hg_ProgramLocal1.y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_ProgramLocal1.x + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = -hg_ProgramLocal1.z < 0.00000 ? r1.x : r0.y;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0.x = hg_ProgramLocal1.z + c0.y;\n    r1 = r0.yyyy*r1;\n    r0.x = r0.x < 0.00000 ? r0.z : r0.y;\n    gl_FragColor = vec4(-hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.x, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.z, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.w);\n}\n//MD5=3e59aa96:6f901a54:534f47f4:36e85ad7\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260245A94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}