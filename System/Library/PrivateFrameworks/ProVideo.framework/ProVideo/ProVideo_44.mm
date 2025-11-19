HGRenderJob *HGRenderJob::SetVirtualScreen(HGRenderJob *this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    *(this + 47) = 1 << a2;
  }

  return this;
}

void HGRenderJob::SetUserName(HGRenderJob *this, const char *__s1)
{
  v4 = *(this + 27);
  if (v4)
  {
    free(v4);
    *(this + 27) = 0;
  }

  if (__s1)
  {
    *(this + 27) = strdup(__s1);
  }
}

const char *HGRenderJob::GetUserName(HGRenderJob *this)
{
  if (*(this + 27))
  {
    return *(this + 27);
  }

  else
  {
    return "";
  }
}

uint64_t HGRenderJob::CallNotifyFunc(HGRenderJob *this)
{
  v2 = mach_absolute_time();
  v3 = *(this + 30);
  if (v3)
  {
    v3(this);
  }

  v4 = mach_absolute_time();
  v5 = HGTiming::GetMachTimeConversionFactor(v4) * (v4 - v2);
  v6 = *(this + 36);
  HGSynchronizable::Lock(v6);
  *(this + 20) = v5 + *(this + 20);
  HGSynchronizable::Unlock(v6);
  result = HGRenderQueue::GetDebugQueueVerboseMask(*(this + 28));
  if ((result & 0x200) != 0)
  {
    v8 = *(this + 27);
    if (v8 > 2)
    {
      if (v8 > 5)
      {
        switch(v8)
        {
          case 6:
            return printf("RenderJob<%p>::CallNotifyFunc():kStateCancelled  : %5.1f ms\n");
          case 7:
            return printf("RenderJob<%p>::CallNotifyFunc():kStateRenderFinished  : %5.1f ms\n");
          case 8:
            return printf("RenderJob<%p>::CallNotifyFunc():kStateFinished  : %5.1f ms\n");
        }
      }

      else if (v8 == 3)
      {
        return printf("RenderJob<%p>::CallNotifyFunc():kStateDequeued  : %5.1f ms\n");
      }

      else if (v8 == 4)
      {
        return printf("RenderJob<%p>::CallNotifyFunc():kStateExecuting  : %5.1f ms\n");
      }

      else
      {
        return printf("RenderJob<%p>::CallNotifyFunc():kStatePaused  : %5.1f ms\n");
      }
    }

    else if (v8 < 0)
    {
      switch(v8)
      {
        case -1000:
          return printf("RenderJob<%p>::CallNotifyFunc():kStateError  : %5.1f ms\n");
        case -999:
          return printf("RenderJob<%p>::CallNotifyFunc():kStateEnqueueFail  : %5.1f ms\n");
        case -998:
          return printf("RenderJob<%p>::CallNotifyFunc():kStateBufferCopyFail  : %5.1f ms\n");
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        return printf("RenderJob<%p>::CallNotifyFunc():kStateInitialized  : %5.1f ms\n");
      }

      else if (v8 == 2)
      {
        return printf("RenderJob<%p>::CallNotifyFunc():kStateQueued  : %5.1f ms\n");
      }
    }

    else
    {
      return printf("RenderJob<%p>::CallNotifyFunc():kStateNoError  : %5.1f ms\n");
    }
  }

  return result;
}

HGSynchronizable *HGRenderJob::AddNotifyTime(HGRenderJob *this, double a2)
{
  v4 = *(this + 36);
  HGSynchronizable::Lock(v4);
  *(this + 20) = *(this + 20) + a2;
  return HGSynchronizable::Unlock(v4);
}

uint64_t HGRenderJob::IsRequestedVirtualScreen(HGRenderJob *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  else
  {
    return (*(this + 47) >> a2) & 1;
  }
}

BOOL HGRenderJob::UsesOnlyGPUResource(HGRenderJob *this)
{
  v1 = *(this + 4);
  if ((v1 - 2) < 4)
  {
    return 1;
  }

  if (v1 != 6)
  {
    return 0;
  }

  v3 = *(this + 3);
  if (v3 && *(v3 + 8) == 1)
  {
    return 1;
  }

  if (*(this + 10))
  {
    return 1;
  }

  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v5 == v4)
  {
    return 0;
  }

  v6 = v5 + 16;
  do
  {
    v7 = *(*(v6 - 16) + 8);
    result = v7 != 0;
    if (v7)
    {
      v8 = v6 == v4;
    }

    else
    {
      v8 = 1;
    }

    v6 += 16;
  }

  while (!v8);
  return result;
}

BOOL HGRenderJob::UsesOnlyCPUResource(HGRenderJob *this)
{
  v1 = *(this + 4);
  if (v1 == 1)
  {
    return 1;
  }

  if (v1 != 6)
  {
    return 0;
  }

  v2 = *(this + 3);
  if (v2)
  {
    if (!*(v2 + 8))
    {
      return 1;
    }
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 + 16;
  do
  {
    v6 = *(*(v5 - 16) + 8);
    result = v6 == 0;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5 == v3;
    }

    v5 += 16;
  }

  while (!v8);
  return result;
}

uint64_t HGRenderJob::SpecifiesComputeDevices(HGRenderJob *this)
{
  v1 = *(this + 3);
  if (*(this + 4) == 6)
  {
    if (v1)
    {
      return 1;
    }

    if (*(this + 10))
    {
      return 1;
    }

    if (*(this + 5) != *(this + 6))
    {
      return 1;
    }
  }

  else
  {
    if (v1)
    {
      return 1;
    }

    if (*(this + 10))
    {
      return 1;
    }

    if (*(this + 5) != *(this + 6))
    {
      return 1;
    }
  }

  return 0;
}

BOOL HGRenderJob::HasCPUBufferDestinationsOnly(HGRenderJob *this)
{
  v2 = *(this + 38);
  v1 = *(this + 39);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 8;
  do
  {
    v4 = *(*(v3 - 8) + 60);
    result = v4 == 1;
    v6 = v4 != 1 || v3 == v1;
    v3 += 8;
  }

  while (!v6);
  return result;
}

HGSynchronizable *HGRenderJob::RenderNodeCallback(HGRenderJob *this, HGRenderNode *a2)
{
  v3 = *(this + 36);
  HGSynchronizable::Lock(v3);
  v4 = *(this + 31);
  v5 = *(this + 32) + 1;
  *(this + 32) = v5;
  if (v5 == v4)
  {
    if (*(this + 27) == 7)
    {
      *(this + 27) = 8;
    }

    HGRenderJob::CallNotifyFunc(this);
    if (*(this + 3) == 1)
    {
      HGSynchronizable::NotifyAll(*(this + 37));
    }
  }

  return HGSynchronizable::Unlock(v3);
}

unsigned int HGPrefilterUtils::GetPrefilterRadius(unsigned int a1, float a2, float a3)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return vcvtps_s32_f32((log10f(a2) / -0.30103) * (flt_2608177F0[a1] * a3));
  }
}

uint64_t HGPrefilterUtils::GetSeparablePrefilter(uint64_t a1, unsigned int a2, char a3, float a4, float a5, float a6)
{
  *&v13 = log10f(a4);
  if (a2 >= 4)
  {
    v17 = atomic_load(HGLogger::_enabled);
    if (v17)
    {
      HGLogger::log("prefilter", 1, "WARNING: Invalid filter kernel", v11, v12, v13);
    }

    goto LABEL_12;
  }

  v14 = *&v13 / -0.30103;
  if ((*&v13 / -0.30103) <= 0.0 || a5 <= 1.0)
  {
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      HGLogger::log("prefilter", 1, "WARNING: Invalid filter coefficients", v11, v12);
    }

LABEL_12:
    HGLinearFilter2D::HGLinearFilter2D(v55, 0);
    HGLinearFilter2D::operator=(a1, v55);
    HGLinearFilter2D::~HGLinearFilter2D(v55);
    return 0;
  }

  v19 = flt_260817800[a2];
  v20 = vcvtps_s32_f32(v14 * (flt_2608177F0[a2] * a5));
  v21 = 2 * v20;
  v22 = a6 != 0.0;
  if (a6 == 0.0)
  {
    v23 = (v21 + 1);
  }

  else
  {
    v23 = (v21 + 2);
  }

  HGLinearFilter2D::reset(a1, 0, 0);
  Level = HGLogger::getLevel("prefilter", v24);
  if (Level)
  {
    v28 = atomic_load(HGLogger::_enabled);
    if (v28)
    {
      HGLogger::log("prefilter", 1, "downsample_factor_x=%f num_taps=%d\n", v26, v27, a5, v23);
    }

    v29 = atomic_load(HGLogger::_enabled);
    if (v29)
    {
      HGLogger::log("prefilter", 1, "downsample_factor_x=%f coeffx[%d]={\n", v26, v27, a5, v23);
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    v30 = v14 * a5;
    if (a2 == 2)
    {
      v35 = v22 - v20;
      do
      {
        *v36.i32 = HGLinearFilter::bicubic(Level, (v20 - a6) / v30, 0.0, 0.75);
        v37 = v36.i32[0];
        v38 = HGLinearFilter2D::set(a1, v20, 0, v36, 4);
        v38.i32[0] = v37;
        HGLinearFilter2D::set(a1, v35, 0, *v38.i8, 4);
        --v20;
        ++v35;
      }

      while (v20 != -1);
    }

    else if (a2 == 3)
    {
      v31 = v22 - v20;
      do
      {
        *v32.i32 = HGLinearFilter::rect(Level, (v20 - a6) / v30, 0.0, 0.0);
        v33 = v32.i32[0];
        v34 = HGLinearFilter2D::set(a1, v20, 0, v32, 4);
        v34.i32[0] = v33;
        HGLinearFilter2D::set(a1, v31, 0, *v34.i8, 4);
        --v20;
        ++v31;
      }

      while (v20 != -1);
    }

    else
    {
      v39 = v22 - v20;
      do
      {
        *v40.i32 = HGLinearFilter::lanczos(Level, (v20 - a6) / v30, v19, 0.0);
        v41 = v40.i32[0];
        v42 = HGLinearFilter2D::set(a1, v20, 0, v40, 4);
        v42.i32[0] = v41;
        HGLinearFilter2D::set(a1, v39, 0, *v42.i8, 4);
        --v20;
        ++v39;
      }

      while (v20 != -1);
    }
  }

  __asm { FMOV            V0.4S, #1.0 }

  HGLinearFilter2D::normalize(a1, 4u, _Q0);
  if (HGLogger::getLevel("prefilter", v48))
  {
    v51 = *(a1 + 8);
    v52 = *(a1 + 16);
    if (v51 <= v51 + v52 - 1)
    {
      do
      {
        v54 = atomic_load(HGLogger::_enabled);
        if (v54)
        {
          HGLogger::log("prefilter", 1, "[%d] = %f\n", v49, v50, v51, *(*a1 + 16 * (v51 - (*(a1 + 8) + *(a1 + 16) * *(a1 + 12)))));
        }

        v51 = (v51 + 1);
        --v52;
      }

      while (v52);
    }

    v53 = atomic_load(HGLogger::_enabled);
    if (v53)
    {
      HGLogger::log("prefilter", 1, "}\n", v49, v50);
    }
  }

  if (a3)
  {
    HGLinearFilter2D::transpose(a1);
  }

  return 1;
}

void sub_25FD20364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGLinearFilter2D::~HGLinearFilter2D(va);
  _Unwind_Resume(a1);
}

void sub_25FD20378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGLinearFilter2D::~HGLinearFilter2D(va);
  _Unwind_Resume(a1);
}

void HGRenderNode::HGRenderNode(HGRenderNode *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_2872257E8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = 24;
  *(v1 + 52) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0;
}

void HGRenderNode::~HGRenderNode(HGRenderNode *this)
{
  *this = &unk_2872257E8;
  v2 = *(this + 25);
  if (v2 && *(this + 23) && (*(this + 2) || *(this + 3) || *(this + 17)) && *(this + 14) != 8)
  {
    HGRenderQueue::EnqueueDeleteRenderNode(v2, this);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    HGPixelBufferObj::ReleaseDataPtr(v6);
    (*(**(this + 17) + 24))(*(this + 17));
  }

  v7 = *(this + 25);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 10);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = this;
  }

  else
  {
    v10 = this;
  }

  HGObject::~HGObject(v10);
}

{
  HGRenderNode::~HGRenderNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGRenderNode::SetNode(HGRenderNode *this, HGNode *a2)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  result = *(this + 2);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(this + 2) = a2;
  return result;
}

uint64_t HGRenderNode::SetBitmap(HGRenderNode *this, HGBitmap *a2)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(this + 3) = a2;
  return result;
}

uint64_t HGRenderNode::SetRenderQueue(HGRenderNode *this, HGRenderQueue *a2)
{
  v4 = *(this + 25);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  *(this + 25) = a2;
  v5 = *(*a2 + 16);

  return v5(a2);
}

void HGRenderNode::SetUserName(HGRenderNode *this, const char *__s)
{
  v4 = *(this + 20);
  if (v4)
  {
    free(v4);
    *(this + 20) = 0;
  }

  if (__s)
  {
    v5 = strlen(__s);
    v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    *(this + 20) = v6;

    strcpy(v6, __s);
  }
}

uint64_t HGRenderNode::CallNotifyFunc(uint64_t this)
{
  if (*(this + 168))
  {
    v1 = this;
    v2 = mach_absolute_time();
    (*(v1 + 168))(v1);
    v3 = mach_absolute_time();
    v4 = HGTiming::GetMachTimeConversionFactor(v3) * (v3 - v2);
    HGRenderJob::AddNotifyTime(*(v1 + 192), v4);
    this = HGRenderQueue::GetDebugQueueVerboseMask(*(v1 + 200));
    if ((this & 0x200) != 0)
    {
      v5 = *(v1 + 56);
      if (v5 <= 1)
      {
        if (v5 <= -998)
        {
          switch(v5)
          {
            case -1000:
              return printf("RenderNode<%p>::CallNotifyFunc():kStateError  : %5.1f ms\n");
            case -999:
              return printf("RenderNode<%p>::CallNotifyFunc():kStateRenderError  : %5.1f ms\n");
            case -998:
              return printf("RenderNode<%p>::CallNotifyFunc():kStateBufferSetupError  : %5.1f ms\n");
          }
        }

        else if (v5 < 0)
        {
          if (v5 == -997)
          {
            return printf("RenderNode<%p>::CallNotifyFunc():kStateBufferCopyError  : %5.1f ms\n");
          }

          else if (v5 == -996)
          {
            return printf("RenderNode<%p>::CallNotifyFunc():kStateBufferDeleteError  : %5.1f ms\n");
          }
        }

        else if (v5)
        {
          if (v5 == 1)
          {
            return printf("RenderNode<%p>::CallNotifyFunc():kStateInitialized  : %5.1f ms\n");
          }
        }

        else
        {
          return printf("RenderNode<%p>::CallNotifyFunc():kStateNoError  : %5.1f ms\n");
        }
      }

      else if (v5 > 5)
      {
        if (v5 > 7)
        {
          if (v5 == 8)
          {
            return printf("RenderNode<%p>::CallNotifyFunc():kStateCancelled  : %5.1f ms\n");
          }

          else if (v5 == 9)
          {
            return printf("RenderNode<%p>::CallNotifyFunc():kStateFinished  : %5.1f ms\n");
          }
        }

        else if (v5 == 6)
        {
          return printf("RenderNode<%p>::CallNotifyFunc():kStateAsyncXGMIBufferCopy  : %5.1f ms\n");
        }

        else
        {
          return printf("RenderNode<%p>::CallNotifyFunc():kStateJobDequeued  : %5.1f ms\n");
        }
      }

      else if (v5 > 3)
      {
        if (v5 == 4)
        {
          return printf("RenderNode<%p>::CallNotifyFunc():kStateAsyncGPUReadback  : %5.1f ms\n");
        }

        else
        {
          return printf("RenderNode<%p>::CallNotifyFunc():kStateAsyncXGPUBufferCopy  : %5.1f ms\n");
        }
      }

      else if (v5 == 2)
      {
        return printf("RenderNode<%p>::CallNotifyFunc():kStateFinalizingBuffers  : %5.1f ms\n");
      }

      else
      {
        return printf("RenderNode<%p>::CallNotifyFunc():kStateAsyncGPUUpload  : %5.1f ms\n");
      }
    }
  }

  return this;
}

uint64_t HGRenderNode::NotifyRenderJobFinished(HGRenderJob **this)
{
  HGRenderJob::RenderNodeCallback(this[24], this);
  v2 = *(*this[24] + 24);

  return v2();
}

void HGRenderQueue::HGRenderQueue(HGRenderQueue *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_287225838;
  *(v1 + 12) = 0;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 41) = 0;
  *(v1 + 43) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 56) = 0xFFFFFFFF00000000;
  *(v1 + 64) = 1;
  *(v1 + 68) = dword_280C5E4BC;
  *(v1 + 72) = 65793;
  *(v1 + 76) = 0;
  *(v1 + 78) = 1;
  *(v1 + 80) = 0;
  *(v1 + 96) = v1 + 96;
  *(v1 + 104) = v1 + 96;
  *(v1 + 112) = 0;
  *(v1 + 136) = v1 + 136;
  *(v1 + 144) = v1 + 136;
  *(v1 + 152) = 0;
  *(v1 + 160) = v1 + 160;
  *(v1 + 168) = v1 + 160;
  *(v1 + 176) = 0;
  *(v1 + 192) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 200) = v1 + 208;
  *(v1 + 232) = 0u;
  *(v1 + 224) = v1 + 232;
  *(v1 + 256) = 0u;
  *(v1 + 248) = v1 + 256;
  *(v1 + 280) = 0u;
  *(v1 + 272) = v1 + 280;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 368) = v1 + 368;
  *(v1 + 376) = v1 + 368;
  *(v1 + 384) = 0;
  *(v1 + 400) = v1 + 400;
  *(v1 + 408) = v1 + 400;
  *(v1 + 464) = 0;
  *(v1 + 448) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 480) = v1 + 480;
  *(v1 + 488) = v1 + 480;
  *(v1 + 496) = 0;
  *(v1 + 512) = xmmword_260817830;
  *(v1 + 528) = 3;
  *(v1 + 536) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0u;
  *(v1 + 592) = v1 + 592;
  *(v1 + 600) = v1 + 592;
  *(v1 + 624) = 0u;
  *(v1 + 608) = 0;
  *(v1 + 616) = v1 + 624;
  *(v1 + 712) = 0u;
  *(v1 + 728) = 0u;
  *(v1 + 680) = 0u;
  *(v1 + 696) = 0u;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0u;
  operator new();
}

void sub_25FD21044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  std::deque<HGRef<HGGLContext>>::~deque[abi:ne200100]((v20 + 696));
  std::deque<HGNode *>::~deque[abi:ne200100](v21 + 448);
  std::__tree<HGNode *>::destroy(v21 + 416, *(v20 + 624));
  std::list<HGRenderJob *>::~list(a10);
  std::deque<HGNode *>::~deque[abi:ne200100](v21 + 336);
  std::list<HGRenderJob *>::~list(a11);
  std::deque<HGNode *>::~deque[abi:ne200100](v20 + 424);
  std::list<HGRenderJob *>::~list(a12);
  std::list<HGRenderJob *>::~list(a13);
  std::deque<HGNode *>::~deque[abi:ne200100](a14);
  std::__tree<HGNode *>::destroy(a19, *(v20 + 280));
  std::__tree<HGNode *>::destroy(a15, *(v20 + 256));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a20, *(v20 + 232));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v21, *(v20 + 208));
  std::list<HGRenderJob *>::~list(a16);
  std::list<HGRenderJob *>::~list(a17);
  std::list<HGRenderJob *>::~list(a18);
  HGObject::~HGObject(v20);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13HGRenderQueueC2Ev_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x277CBF028];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HGRenderQueueDebugFlags", *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    dword_280C5E4BC = AppIntegerValue;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HGRenderQueueDebugDumpBuffers", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    LOBYTE(_MergedGlobals_25) = AppBooleanValue != 0;
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"HGRenderQueueDebugAlwaysBuffer", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    HIBYTE(_MergedGlobals_25) = result != 0;
  }

  return result;
}

uint64_t *std::list<HGRenderJob *>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void HGRenderQueue::~HGRenderQueue(HGRenderQueue *this)
{
  *this = &unk_287225838;
  if ((*(this + 70) & 0x10) != 0)
  {
    v2 = *(this + 13);
    if (v2 != (this + 96))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = v2 + 8;
        v2 = *(v2 + 8);
        v6 = *(*(v5 + 8) + 24);
        if (v6 == 1)
        {
          ++v4;
        }

        if (v6 == 3)
        {
          ++v3;
        }
      }

      while (v2 != (this + 96));
      if (v3 | v4)
      {
        printf("HGRenderQueue::~HGRenderQueue: Warning: Not all RenderExecUnits are in shutdown state: Executing: %d  Waiting: %d\n", v3, v4);
        puts("First call HGRenderQueue::Shutdown() before deleting");
      }
    }

    v7 = *(this + 61);
    if (v7 != (this + 480))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v7 + 8;
        v7 = *(v7 + 8);
        v11 = *(*(v10 + 8) + 12);
        if (v11 == 2)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v8;
        }

        if (v11 == 1)
        {
          ++v9;
        }

        else
        {
          v8 = v12;
        }
      }

      while (v7 != (this + 480));
      if (v8 | v9)
      {
        printf("HGRenderQueue::~HGRenderQueue: Warning: Not all PBODownloadExecUnits are in shutdown state: Executing: %d  Waiting: %d\n", v8, v9);
        puts("First call HGRenderQueue::Shutdown() before deleting");
      }
    }

    v13 = *(this + 47);
    if (v13 != (this + 368))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v13 + 8;
        v13 = *(v13 + 8);
        v17 = *(*(v16 + 8) + 8);
        if (v17 == 1)
        {
          ++v15;
        }

        if (v17 == 2)
        {
          ++v14;
        }
      }

      while (v13 != (this + 368));
      if (v14 | v15)
      {
        printf("HGRenderQueue::~HGRenderQueue: Warning: Not all UserExecUnits are in shutdown state: Executing: %d  Waiting: %d\n", v14, v15);
        puts("First call HGRenderQueue::Shutdown() before deleting");
      }
    }
  }

  v18 = *(this + 63);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 15);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 49);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 43);
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 59);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 80);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(this + 73);
  if (v25)
  {
    v25 = (*(*v25 + 8))(v25);
  }

  v26 = TXParagraphStyleFolder_Factory::version(v25);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = (this + 280);
    v28 = -1;
    do
    {
      v29 = *v27;
      if (!*v27)
      {
LABEL_56:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v30 = v29;
          v31 = *(v29 + 32);
          if (v28 >= v31)
          {
            break;
          }

          v29 = *v30;
          if (!*v30)
          {
            goto LABEL_56;
          }
        }

        if (v31 >= v28)
        {
          break;
        }

        v29 = v30[1];
        if (!v29)
        {
          goto LABEL_56;
        }
      }

      v32 = v30[5];
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      ++v28;
    }

    while (v28 != v26);
  }

  v33 = this + 96;
  for (i = *(this + 13); i != v33; i = *(i + 8))
  {
    v35 = *(i + 16);
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }
  }

  v36 = this + 480;
  for (j = *(this + 61); j != v36; j = *(j + 8))
  {
    v38 = *(j + 16);
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }

  v39 = this + 368;
  for (k = *(this + 47); k != v39; k = *(k + 8))
  {
    v41 = *(k + 16);
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }
  }

  if (*(this + 86))
  {
    v42 = 0;
    do
    {
      v43 = *(*(*(this + 82) + (((v42 + *(this + 85)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v42 + *(this + 85)) & 0x1FF));
      (*(*v43 + 24))(v43);
      ++v42;
    }

    while (*(this + 86) > v42);
  }

  v44 = *(this + 93);
  v45 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v44, v45))
  {
    puts("HGRenderQueue::~HGRenderQueue: Warning: dispatch_group _getRenderJobSynchronizer is non zero after waiting 10s, might crash");
  }

  dispatch_release(*(this + 93));
  v46 = *(this + 88);
  v47 = *(this + 89);
  if (v47 == v46)
  {
    *(this + 92) = 0;
    v54 = 0;
  }

  else
  {
    v48 = *(this + 91);
    v49 = &v46[v48 >> 9];
    v50 = *v49;
    v51 = *v49 + 8 * (v48 & 0x1FF);
    v52 = *(v46 + (((*(this + 92) + v48) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 92) + v48) & 0x1FF);
    if (v51 != v52)
    {
      do
      {
        if (*v51)
        {
          (*(**v51 + 24))(*v51);
          v50 = *v49;
        }

        v51 += 8;
        if (v51 - v50 == 4096)
        {
          v53 = v49[1];
          ++v49;
          v50 = v53;
          v51 = v53;
        }
      }

      while (v51 != v52);
      v47 = *(this + 89);
      v46 = *(this + 88);
    }

    *(this + 92) = 0;
    v54 = v47 - v46;
    if (v54 >= 3)
    {
      do
      {
        operator delete(*v46);
        v46 = (*(this + 88) + 8);
        *(this + 88) = v46;
        v47 = *(this + 89);
        v54 = v47 - v46;
      }

      while (v54 > 2);
    }
  }

  if (v54 == 1)
  {
    v55 = 256;
    goto LABEL_95;
  }

  if (v54 == 2)
  {
    v55 = 512;
LABEL_95:
    *(this + 91) = v55;
  }

  if (v46 != v47)
  {
    do
    {
      v56 = *v46++;
      operator delete(v56);
    }

    while (v46 != v47);
    v57 = *(this + 88);
    v58 = *(this + 89);
    if (v58 != v57)
    {
      *(this + 89) = v58 + ((v57 - v58 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v59 = *(this + 87);
  if (v59)
  {
    operator delete(v59);
  }

  std::deque<HGNode *>::~deque[abi:ne200100](this + 648);
  std::__tree<HGNode *>::destroy(this + 616, *(this + 78));
  if (*(this + 76))
  {
    v60 = *(this + 75);
    v61 = *(*(this + 74) + 8);
    v62 = *v60;
    *(v62 + 8) = v61;
    *v61 = v62;
    *(this + 76) = 0;
    if (v60 != (this + 592))
    {
      do
      {
        v63 = *(v60 + 1);
        operator delete(v60);
        v60 = v63;
      }

      while (v63 != (this + 592));
    }
  }

  std::deque<HGNode *>::~deque[abi:ne200100](this + 536);
  if (*(this + 62))
  {
    v64 = *(this + 61);
    v65 = *(*(this + 60) + 8);
    v66 = *v64;
    *(v66 + 8) = v65;
    *v65 = v66;
    *(this + 62) = 0;
    if (v64 != v36)
    {
      do
      {
        v67 = *(v64 + 1);
        operator delete(v64);
        v64 = v67;
      }

      while (v67 != v36);
    }
  }

  std::deque<HGNode *>::~deque[abi:ne200100](this + 424);
  if (*(this + 52))
  {
    v68 = *(this + 51);
    v69 = *(*(this + 50) + 8);
    v70 = *v68;
    *(v70 + 8) = v69;
    *v69 = v70;
    *(this + 52) = 0;
    if (v68 != (this + 400))
    {
      do
      {
        v71 = *(v68 + 1);
        operator delete(v68);
        v68 = v71;
      }

      while (v71 != (this + 400));
    }
  }

  if (*(this + 48))
  {
    v72 = *(this + 47);
    v73 = *(*(this + 46) + 8);
    v74 = *v72;
    *(v74 + 8) = v73;
    *v73 = v74;
    *(this + 48) = 0;
    if (v72 != v39)
    {
      do
      {
        v75 = *(v72 + 1);
        operator delete(v72);
        v72 = v75;
      }

      while (v75 != v39);
    }
  }

  std::deque<HGNode *>::~deque[abi:ne200100](this + 296);
  std::__tree<HGNode *>::destroy(this + 272, *(this + 35));
  std::__tree<HGNode *>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 200, *(this + 26));
  if (*(this + 22))
  {
    v76 = *(this + 21);
    v77 = *(*(this + 20) + 8);
    v78 = *v76;
    *(v78 + 8) = v77;
    *v77 = v78;
    *(this + 22) = 0;
    if (v76 != (this + 160))
    {
      do
      {
        v79 = *(v76 + 1);
        operator delete(v76);
        v76 = v79;
      }

      while (v79 != (this + 160));
    }
  }

  if (*(this + 19))
  {
    v80 = *(this + 18);
    v81 = *(*(this + 17) + 8);
    v82 = *v80;
    *(v82 + 8) = v81;
    *v81 = v82;
    *(this + 19) = 0;
    if (v80 != (this + 136))
    {
      do
      {
        v83 = *(v80 + 1);
        operator delete(v80);
        v80 = v83;
      }

      while (v83 != (this + 136));
    }
  }

  if (*(this + 14))
  {
    v84 = *(this + 13);
    v85 = *(*(this + 12) + 8);
    v86 = *v84;
    *(v86 + 8) = v85;
    *v85 = v86;
    *(this + 14) = 0;
    if (v84 != v33)
    {
      do
      {
        v87 = *(v84 + 1);
        operator delete(v84);
        v84 = v87;
      }

      while (v87 != v33);
    }
  }

  HGObject::~HGObject(this);
}

{
  HGRenderQueue::~HGRenderQueue(this);

  HGObject::operator delete(v1);
}

uint64_t HGRenderQueue::AddRenderContext(HGRenderQueue *this, HGRenderContext *a2)
{
  v5 = *(this + 43);
  HGSynchronizable::Lock(v5);
  if (*(this + 4) != 3 && *(a2 + 9))
  {
    operator new();
  }

  HGSynchronizable::Unlock(v5);
  return 0;
}

void sub_25FD21F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  HGSynchronizer::~HGSynchronizer(va1);
  _Unwind_Resume(a1);
}

void sub_25FD21F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD21FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2666E9F00](v7, 0x10B1C403C2B9999);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD21FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD21FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, PCSharedCount a12, char a13, uint64_t a14, HGSynchronizable *a15)
{
  PCSharedCount::PCSharedCount(&a11);
  MEMORY[0x2666E9F00](v15, 0x10E1C404D8AC037);
  PCSharedCount::PCSharedCount(&a12);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a13);
  HGSynchronizer::~HGSynchronizer(&a15);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGRenderQueue::SetRunMode(uint64_t a1, int a2)
{
  v4 = *(a1 + 344);
  HGSynchronizable::Lock(v4);
  *(a1 + 12) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGSynchronizable *HGRenderQueue::SetPreferredResource(uint64_t a1, int a2)
{
  v4 = *(a1 + 344);
  HGSynchronizable::Lock(v4);
  *(a1 + 20) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGRenderQueue *HGRenderQueue::SetSerializeRendersFlag(HGRenderQueue *this, char a2)
{
  *(this + 73) = a2;
  *(this + 72) = a2;
  return this;
}

HGSynchronizable *HGRenderQueue::SetSerializeGPUReadbacksFlag(HGRenderQueue *this, char a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  *(this + 76) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGSynchronizable *HGRenderQueue::SetNumGPUReadbackExecUnitsPerGPURenderer(HGRenderQueue *this, uint64_t a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  *(this + 64) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGSynchronizable *HGRenderQueue::SetNumPBOsPerGPUReadbackExecUnit(HGRenderQueue *this, uint64_t a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  *(this + 65) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGSynchronizable *HGRenderQueue::SetGPUReadbackQueueThrottleSize(HGRenderQueue *this, uint64_t a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  *(this + 66) = a2;
  return HGSynchronizable::Unlock(v4);
}

HGSynchronizable *HGRenderQueue::Start(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 4);
  result = HGSynchronizable::Unlock(v2);
  if (v3 != 3)
  {
    v5 = *(this + 43);
    HGSynchronizable::Lock(v5);
    *(this + 4) = 1;
    for (i = *(this + 13); i != (this + 96); i = *(i + 8))
    {
      v7 = *(i + 16);
      if (!*(v7 + 24))
      {
        HGRenderExecUnit::StartRunLoop(*(i + 16));
        *(v7 + 24) = 1;
      }
    }

    for (j = *(this + 47); j != (this + 368); j = *(j + 8))
    {
      v9 = *(j + 16);
      if (!*(v9 + 8))
      {
        HGUserExecUnit::StartRunLoop(*(j + 16));
        *(v9 + 8) = 1;
      }
    }

    for (k = *(this + 61); k != (this + 480); k = *(k + 8))
    {
      v11 = *(k + 16);
      if (!*(v11 + 12))
      {
        HGGPUReadbackExecUnit::StartRunLoop(*(k + 16));
        *(v11 + 12) = 1;
      }
    }

    HGSynchronizable::Unlock(v5);
    v12 = *(this + 16);
    HGSynchronizable::Lock(v12);
    HGSynchronizable::NotifyAll(v12);
    HGSynchronizable::Unlock(v12);
    v13 = *(this + 15);
    HGSynchronizable::Lock(v13);
    HGSynchronizable::NotifyAll(v13);
    HGSynchronizable::Unlock(v13);
    v14 = *(this + 49);
    HGSynchronizable::Lock(v14);
    HGSynchronizable::NotifyAll(v14);
    HGSynchronizable::Unlock(v14);
    v15 = *(this + 63);
    HGSynchronizable::Lock(v15);
    HGSynchronizable::NotifyAll(v15);
    return HGSynchronizable::Unlock(v15);
  }

  return result;
}

BOOL HGRenderQueue::IsShuttingDown(HGRenderQueue *this)
{
  v1 = this;
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  LODWORD(v1) = *(v1 + 4);
  HGSynchronizable::Unlock(v2);
  return v1 == 3;
}

HGSynchronizable *HGRenderQueue::Pause(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  if (*(this + 4) != 3)
  {
    *(this + 4) = 2;
  }

  return HGSynchronizable::Unlock(v2);
}

HGSynchronizable *HGRenderQueue::Restart(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 4);
  if (v3 != 3)
  {
    for (i = *(this + 13); i != (this + 96); i = *(i + 8))
    {
      v5 = *(i + 16);
      if (!*(v5 + 24))
      {
        HGRenderExecUnit::StartRunLoop(*(i + 16));
        *(v5 + 24) = 1;
      }
    }

    for (j = *(this + 47); j != (this + 368); j = *(j + 8))
    {
      v7 = *(j + 16);
      if (!*(v7 + 8))
      {
        HGUserExecUnit::StartRunLoop(*(j + 16));
        *(v7 + 8) = 1;
      }
    }

    for (k = *(this + 61); k != (this + 480); k = *(k + 8))
    {
      v9 = *(k + 16);
      if (!*(v9 + 12))
      {
        HGGPUReadbackExecUnit::StartRunLoop(*(k + 16));
        *(v9 + 12) = 1;
      }
    }

    *(this + 4) = 1;
  }

  result = HGSynchronizable::Unlock(v2);
  if (v3 != 3)
  {
    v11 = *(this + 16);
    HGSynchronizable::Lock(v11);
    HGSynchronizable::NotifyAll(v11);
    HGSynchronizable::Unlock(v11);
    v12 = *(this + 15);
    HGSynchronizable::Lock(v12);
    HGSynchronizable::NotifyAll(v12);
    HGSynchronizable::Unlock(v12);
    v13 = *(this + 49);
    HGSynchronizable::Lock(v13);
    HGSynchronizable::NotifyAll(v13);
    HGSynchronizable::Unlock(v13);
    v14 = *(this + 63);
    HGSynchronizable::Lock(v14);
    HGSynchronizable::NotifyAll(v14);
    return HGSynchronizable::Unlock(v14);
  }

  return result;
}

HGSynchronizable *HGRenderQueue::Drain(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v28 = *(this + 14);
  *(this + 14) = 0;
  HGSynchronizable::Unlock(v2);
  v3 = mach_absolute_time();
  v4 = this + 96;
  v5 = this + 368;
  v6 = this + 480;
  do
  {
    v7 = *(this + 43);
    HGSynchronizable::Lock(v7);
    v8 = *(this + 42);
    HGSynchronizable::Unlock(v7);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = *(this + 13);
      if (v10 == v4)
      {
LABEL_10:
        v13 = *(this + 16);
        HGSynchronizable::Lock(v13);
        HGSynchronizable::NotifyAll(v13);
        HGSynchronizable::Unlock(v13);
        v14 = *(this + 15);
        HGSynchronizable::Lock(v14);
        HGSynchronizable::NotifyAll(v14);
        HGSynchronizable::Unlock(v14);
      }

      else
      {
        while (1)
        {
          v11 = *(*(v10 + 16) + 24);
          if (v11 != 4 && v11 != 1)
          {
            break;
          }

          v10 = *(v10 + 8);
          if (v10 == v4)
          {
            goto LABEL_10;
          }
        }
      }
    }

    v15 = *(this + 59);
    HGSynchronizable::Lock(v15);
    v16 = *(this + 58);
    HGSynchronizable::Unlock(v15);
    if (v16)
    {
      v17 = *(this + 47);
      if (v17 == v5)
      {
LABEL_15:
        v18 = *(this + 49);
        HGSynchronizable::Lock(v18);
        HGSynchronizable::NotifyAll(v18);
        HGSynchronizable::Unlock(v18);
      }

      else
      {
        while (*(*(v17 + 16) + 8) == 1)
        {
          v17 = *(v17 + 8);
          if (v17 == v5)
          {
            goto LABEL_15;
          }
        }
      }

      v9 = 0;
    }

    v19 = *(this + 73);
    HGSynchronizable::Lock(v19);
    v20 = *(this + 72);
    HGSynchronizable::Unlock(v19);
    if (v20)
    {
      v21 = *(this + 61);
      if (v21 == v6)
      {
LABEL_21:
        v22 = *(this + 63);
        HGSynchronizable::Lock(v22);
        HGSynchronizable::NotifyAll(v22);
        HGSynchronizable::Unlock(v22);
      }

      else
      {
        while (*(*(v21 + 16) + 12) == 1)
        {
          v21 = *(v21 + 8);
          if (v21 == v6)
          {
            goto LABEL_21;
          }
        }
      }

      v9 = 0;
    }

    v23 = mach_absolute_time();
    if (qword_280C5E4D8 != -1)
    {
      v25 = v23;
      HGRenderQueue::Drain();
      v23 = v25;
    }

    v24 = *&qword_280C5E4D0 * (v23 - v3) >= 5.0 || v9;
  }

  while ((v24 & 1) == 0);
  v26 = *(this + 43);
  HGSynchronizable::Lock(v26);
  *(this + 14) = v28;
  return HGSynchronizable::Unlock(v26);
}

void sub_25FD229E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD229FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetNumJobsInRenderQueue(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 42);
  HGSynchronizable::Unlock(v2);
  return v3;
}

void HGRenderQueue::Shutdown(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 43);
  HGSynchronizable::Lock(v3);
  v4 = *(this + 4);
  HGSynchronizable::Unlock(v3);
  if (v4)
  {
    *(this + 4) = 3;
  }

  HGSynchronizable::Unlock(v2);
  if (v4)
  {
    v5 = *(this + 16);
    HGSynchronizable::Lock(v5);
    HGSynchronizable::NotifyAll(v5);
    HGSynchronizable::Unlock(v5);
    v6 = *(this + 15);
    HGSynchronizable::Lock(v6);
    HGSynchronizable::NotifyAll(v6);
    HGSynchronizable::Unlock(v6);
    v7 = *(this + 49);
    HGSynchronizable::Lock(v7);
    HGSynchronizable::NotifyAll(v7);
    HGSynchronizable::Unlock(v7);
    v8 = *(this + 63);
    HGSynchronizable::Lock(v8);
    HGSynchronizable::NotifyAll(v8);
    HGSynchronizable::Unlock(v8);
    v9 = this + 96;
    v10 = this + 368;
    v11 = this + 480;
    while (1)
    {
      v12 = *(this + 43);
      HGSynchronizable::Lock(v12);
      v13 = *(this + 13);
      if (v13 == v9)
      {
LABEL_8:
        v15 = 1;
      }

      else
      {
        while (1)
        {
          v14 = *(*(v13 + 16) + 24);
          v15 = v14 == 5;
          if (v14 != 5)
          {
            break;
          }

          v13 = *(v13 + 8);
          if (v13 == v9)
          {
            goto LABEL_8;
          }
        }
      }

      HGSynchronizable::Unlock(v12);
      if (v15)
      {
        v16 = *(this + 59);
        HGSynchronizable::Lock(v16);
        v17 = *(this + 47);
        if (v17 == v10)
        {
LABEL_13:
          v19 = 1;
        }

        else
        {
          while (1)
          {
            v18 = *(*(v17 + 16) + 8);
            v19 = v18 == 3;
            if (v18 != 3)
            {
              break;
            }

            v17 = *(v17 + 8);
            if (v17 == v10)
            {
              goto LABEL_13;
            }
          }
        }

        HGSynchronizable::Unlock(v16);
        if (v19)
        {
          v20 = *(this + 43);
          HGSynchronizable::Lock(v20);
          v21 = *(this + 61);
          if (v21 == v11)
          {
LABEL_18:
            v23 = 1;
          }

          else
          {
            while (1)
            {
              v22 = *(*(v21 + 16) + 12);
              v23 = v22 == 3;
              if (v22 != 3)
              {
                break;
              }

              v21 = *(v21 + 8);
              if (v21 == v11)
              {
                goto LABEL_18;
              }
            }
          }

          HGSynchronizable::Unlock(v20);
          if (v23)
          {
            break;
          }
        }
      }
    }

    if ((*(this + 70) & 0x20) != 0)
    {
      v24 = *(this + 13);
      if (v24 != v9)
      {
        v25 = 0;
        do
        {
          v26 = *(v24 + 16);
          v27 = *(v26 + 48);
          if (*(v27 + 15) != *(v27 + 14) && (HGPixelBufferObj::format(v27) == 2 || !HGPixelBufferObj::format(*(v26 + 48))))
          {
            if (HGRenderContext::IsGPU(*(v26 + 48)))
            {
              v28 = *(v26 + 48);
              if (v28)
              {
              }

              FrameStats = PVRenderJob::GetFrameStats(v28);
              v31 = *FrameStats;
              v30 = *(FrameStats + 8);
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              TXParagraphStyleFolder_Factory::version(v31);
              HGGPUComputeDevice::GetGLVirtualScreen(v31);
              if (v30)
              {
                if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v30->__on_zero_shared)(v30);
                  std::__shared_weak_count::__release_weak(v30);
                }
              }

              printf("\nRender Times Histogram [ms]: GPU Render Context[%i]: vs=%d, attached=%d\n");
            }

            else
            {
              printf("\nRender Times Histogram [ms]: CPU Render Context[%i]\n");
            }

            HGRenderContext::DumpHistogram(*(v26 + 48));
          }

          ++v25;
          v24 = *(v24 + 8);
        }

        while (v24 != v9);
      }
    }
  }
}

void sub_25FD22DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD22E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGRenderQueue::DumpRenderJobQueues(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  printf("Queued RenderJobs: [");
  v3 = *(this + 38);
  if (*(this + 39) != v3)
  {
    v4 = *(this + 41);
    v5 = (v3 + 8 * (v4 >> 9));
    v6 = *v5 + 8 * (v4 & 0x1FF);
    v7 = *(v3 + (((*(this + 42) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 42) + v4) & 0x1FF);
    while (v6 != v7)
    {
      v8 = *(*v6 + 12);
      if (v8 <= 7 && ((0xBDu >> v8) & 1) != 0)
      {
        printf(off_279AA9408[v8]);
      }

      v6 += 8;
      if (v6 - *v5 == 4096)
      {
        v9 = v5[1];
        ++v5;
        v6 = v9;
      }
    }
  }

  putchar(93);
  printf(" : Active RenderJobs: [");
  for (i = *(this + 18); i != (this + 136); i = *(i + 8))
  {
    if (*(i + 16))
    {
      printf("REN,");
    }
  }

  for (j = *(this + 21); j != (this + 160); j = *(j + 8))
  {
    if (*(j + 16))
    {
      printf("CUS,");
    }
  }

  puts("]");
  return HGSynchronizable::Unlock(v2);
}

uint64_t HGRenderQueue::EnqueueRenderJob(HGRenderQueue *this, HGRenderJob *a2)
{
  v4 = *(a2 + 3);
  v5 = v4 == 8 || v4 == 1;
  if (v5 && !*(a2 + 37))
  {
    return 4294966304;
  }

  if (!*(this + 14))
  {
    return 4294966296;
  }

  (*(*a2 + 16))(a2);
  v6 = *(a2 + 38);
  if (*(a2 + 39) != v6)
  {
    v7 = 0;
    do
    {
      HGRenderNode::SetRenderQueue(*(v6 + 8 * v7++), this);
      v6 = *(a2 + 38);
    }

    while (v7 < (*(a2 + 39) - v6) >> 3);
  }

  v8 = this + 96;
  v9 = *(a2 + 22);
  if (!v9)
  {
    if (!HGRenderJob::SpecifiesComputeDevices(a2))
    {
      if (*(a2 + 4) == 1)
      {
        v137 = *(this + 13);
        if (v137 == v8)
        {
LABEL_81:
          v12 = 4294966299;
          goto LABEL_121;
        }

        while (*(*(v137 + 16) + 40) != 1)
        {
          v137 = *(v137 + 8);
          if (v137 == v8)
          {
            goto LABEL_81;
          }
        }
      }

      else
      {
        if (HGRenderJob::UsesOnlyGPUResource(a2))
        {
          v138 = *(this + 13);
          v12 = 4294966300;
          if (v138 == v8)
          {
            goto LABEL_121;
          }

          while (1)
          {
            v139 = *(v138 + 16);
            if (HGRenderContext::IsGPU(*(v139 + 48)))
            {
              if (*(a2 + 47))
              {
                FrameStats = PVRenderJob::GetFrameStats(*(v139 + 48));
                v141 = *FrameStats;
                v142 = *(FrameStats + 8);
                v159[0] = *FrameStats;
                v159[1] = v142;
                if (v142)
                {
                  atomic_fetch_add_explicit(v142 + 1, 1uLL, memory_order_relaxed);
                }

                GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v141);
                IsRequestedVirtualScreen = HGRenderJob::IsRequestedVirtualScreen(a2, GLVirtualScreen);
                v145 = IsRequestedVirtualScreen;
                if (IsRequestedVirtualScreen)
                {
                  v12 = HGRenderQueue::EnqueueRenderJobWithPriority(this, a2);
                }

                if (v142 && !atomic_fetch_add(v142 + 1, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (*(*v142 + 16))(v142);
                  std::__shared_weak_count::__release_weak(v142);
                }

                if (v145)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                if (*(a2 + 3) != 2)
                {
                  goto LABEL_119;
                }

                v146 = **(a2 + 38);
                if (*(v146 + 72))
                {
                  v147 = *(v139 + 48);
                  if (v147)
                  {
                  }

                  v148 = PVRenderJob::GetFrameStats(v147);
                  v149 = *v148;
                  v150 = v148[1];
                  v159[0] = *v148;
                  v159[1] = v150;
                  if (v150)
                  {
                    atomic_fetch_add_explicit(v150 + 1, 1uLL, memory_order_relaxed);
                  }

                  if (v149 == *(v146 + 72))
                  {
                    v12 = HGRenderQueue::EnqueueRenderJobWithPriority(this, a2);
                    std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v159);
                    if (!v12)
                    {
                      goto LABEL_122;
                    }

LABEL_121:
                    *(a2 + 28) = this;
                    HGRenderJob::SetState(a2, -999);
                    HGRenderJob::CallNotifyFunc(a2);
                    goto LABEL_122;
                  }

                  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v159);
                }

                else if (*(v146 + 88))
                {
                  v151 = *(v139 + 48);
                  if (v151)
                  {
                  }

                  v152 = PVRenderJob::GetFrameStats(v151);
                  v153 = *v152;
                  v154 = *(v152 + 8);
                  v159[0] = v153;
                  v159[1] = v154;
                  if (v154)
                  {
                    atomic_fetch_add_explicit(v154 + 1, 1uLL, memory_order_relaxed);
                  }

                  v155 = *(v146 + 88);
                  if (v155)
                  {
                    (*(*v155 + 16))(v155);
                    v153 = v159[0];
                  }

                  v156 = HGGPUComputeDevice::GetGLVirtualScreen(v153);
                  VirtualScreen = HGGLContext::getVirtualScreen(v155);
                  if (v156 == VirtualScreen)
                  {
                    v12 = HGRenderQueue::EnqueueRenderJobWithPriority(this, a2);
                  }

                  if (v155)
                  {
                    (*(*v155 + 24))(v155);
                  }

                  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v159);
                  if (v156 == VirtualScreen)
                  {
                    goto LABEL_120;
                  }
                }
              }
            }

            v138 = *(v138 + 8);
            if (v138 == v8)
            {
              goto LABEL_120;
            }
          }
        }

        if (*(a2 + 4))
        {
          v12 = 0;
          goto LABEL_122;
        }
      }

      goto LABEL_119;
    }

    v13 = *(this + 13);
    v12 = 4294966298;
    if (v13 == v8)
    {
      goto LABEL_121;
    }

    while (1)
    {
      v14 = *(*(*(v13 + 16) + 48) + 16);
      *v159 = v14;
      v15 = *(&v14 + 1);
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(a2 + 3);
      v17 = v14;
      if (v16)
      {
        v18 = v16 == v14;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
LABEL_66:
        v12 = HGRenderQueue::EnqueueRenderJobWithPriority(this, a2);
        v134 = 1;
        if (v15)
        {
          goto LABEL_69;
        }

        goto LABEL_71;
      }

      v19 = *(a2 + 10);
      v21 = *(a2 + 5);
      v20 = *(a2 + 6);
      if (v19 && v19 == v14)
      {
        if (v21 == v20)
        {
          goto LABEL_66;
        }

        v22 = v20 - v21 - 16;
        if (v22 < 0x40)
        {
          LOBYTE(v23) = 0;
          goto LABEL_64;
        }

        v29 = v22 >> 4;
        v30 = (v22 >> 4) + 1;
        if (v22 >= 0x200)
        {
          v82 = 32;
          if ((v30 & 0x1F) != 0)
          {
            v82 = v30 & 0x1F;
          }

          v31 = v30 - v82;
          v83 = vdupq_lane_s64(v14, 0);
          v84 = (v21 + 256);
          v85 = 0uLL;
          v86 = v30 - v82;
          v87 = 0uLL;
          do
          {
            v88 = v84 - 32;
            v89 = vld2q_f64(v88);
            v90 = v84 - 28;
            v91 = vld2q_f64(v90);
            v92 = v84 - 24;
            v93 = vld2q_f64(v92);
            v94 = v84 - 20;
            v95 = vld2q_f64(v94);
            v96 = v84 - 16;
            v97 = vld2q_f64(v96);
            v98 = v84 - 12;
            v99 = vld2q_f64(v98);
            v100 = v84 - 8;
            v101 = vld2q_f64(v100);
            v102 = v84 - 4;
            v103 = vld2q_f64(v102);
            v104 = v84;
            v105 = vld2q_f64(v104);
            v104 += 4;
            v106 = vuzp1q_s16(vuzp1q_s32(vceqq_s64(v83, v89), vceqq_s64(v83, v91)), vuzp1q_s32(vceqq_s64(v83, v93), vceqq_s64(v83, v95)));
            v107 = vld2q_f64(v104);
            v108 = v84 + 8;
            v109 = vuzp1q_s32(vceqq_s64(v83, v97), vceqq_s64(v83, v99));
            v110 = vld2q_f64(v108);
            v111 = v84 + 12;
            v112 = vld2q_f64(v111);
            v113 = vuzp1q_s8(v106, vuzp1q_s16(v109, vuzp1q_s32(vceqq_s64(v83, v101), vceqq_s64(v83, v103))));
            v114 = v84 + 16;
            v115 = vld2q_f64(v114);
            v116 = v84 + 20;
            v117 = vld2q_f64(v116);
            v118 = v84 + 24;
            v119 = vld2q_f64(v118);
            v120 = vuzp1q_s16(vuzp1q_s32(vceqq_s64(v83, v105), vceqq_s64(v83, v107)), vuzp1q_s32(vceqq_s64(v83, v110), vceqq_s64(v83, v112)));
            v121 = v84 + 28;
            v122 = vld2q_f64(v121);
            v85 = vorrq_s8(v85, v113);
            v87 = vorrq_s8(v87, vuzp1q_s8(v120, vuzp1q_s16(vuzp1q_s32(vceqq_s64(v83, v115), vceqq_s64(v83, v117)), vuzp1q_s32(vceqq_s64(v83, v119), vceqq_s64(v83, v122)))));
            v84 += 64;
            v86 -= 32;
          }

          while (v86);
          v23 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v87, v85), 7uLL))) & 1;
          if (v82 < 5)
          {
            v21 += 16 * v31;
            do
            {
LABEL_64:
              v133 = *v21;
              v21 += 16;
              LOBYTE(v23) = (v17 == v133) | v23;
            }

            while (v21 != v20);
            goto LABEL_65;
          }
        }

        else
        {
          v23 = 0;
          v31 = 0;
        }

        if ((v30 & 3) != 0)
        {
          v123 = v30 & 3;
        }

        else
        {
          v123 = 4;
        }

        v124 = &v21[16 * (v30 - v123)];
        v125 = vdup_n_s16(v23);
        v126 = vdupq_lane_s64(v14, 0);
        v127 = &v21[16 * v31];
        v128 = ~v29 + v31 + v123;
        do
        {
          v129 = v127 + 8;
          v131 = vld2q_f64(v127);
          v130 = v127 + 4;
          v132 = vld2q_f64(v130);
          v125 = vorr_s8(v125, vmovn_s32(vuzp1q_s32(vceqq_s64(v126, v131), vceqq_s64(v126, v132))));
          v127 = v129;
          v128 += 4;
        }

        while (v128);
        LOBYTE(v23) = vmaxv_u16(vcltz_s16(vshl_n_s16(v125, 0xFuLL))) & 1;
        v21 = v124;
        goto LABEL_64;
      }

      if (v21 == v20)
      {
        goto LABEL_68;
      }

      v24 = v20 - v21 - 16;
      if (v24 >= 0x40)
      {
        v25 = v24 >> 4;
        v26 = (v24 >> 4) + 1;
        v27 = vdupq_lane_s64(v14, 0);
        if (v24 < 0x200)
        {
          v23 = 0;
          v28 = 0;
LABEL_44:
          if ((v26 & 3) != 0)
          {
            v72 = v26 & 3;
          }

          else
          {
            v72 = 4;
          }

          v73 = &v21[16 * (v26 - v72)];
          v74 = vdup_n_s16(v23);
          v75 = &v21[16 * v28];
          v76 = ~v25 + v28 + v72;
          do
          {
            v77 = v75 + 8;
            v79 = vld2q_f64(v75);
            v78 = v75 + 4;
            v80 = vld2q_f64(v78);
            v74 = vorr_s8(v74, vmovn_s32(vuzp1q_s32(vceqq_s64(v27, v79), vceqq_s64(v27, v80))));
            v75 = v77;
            v76 += 4;
          }

          while (v76);
          LOBYTE(v23) = vmaxv_u16(vcltz_s16(vshl_n_s16(v74, 0xFuLL))) & 1;
          v21 = v73;
          goto LABEL_50;
        }

        v32 = 32;
        if ((v26 & 0x1F) != 0)
        {
          v32 = v26 & 0x1F;
        }

        v28 = v26 - v32;
        v33 = (v21 + 256);
        v34 = 0uLL;
        v35 = v26 - v32;
        v36 = 0uLL;
        do
        {
          v37 = v33 - 32;
          v38 = vld2q_f64(v37);
          v39 = v33 - 28;
          v40 = vld2q_f64(v39);
          v41 = v33 - 24;
          v42 = vld2q_f64(v41);
          v43 = v33 - 20;
          v44 = vld2q_f64(v43);
          v45 = v33 - 16;
          v46 = vld2q_f64(v45);
          v47 = v33 - 12;
          v48 = vld2q_f64(v47);
          v49 = v33 - 8;
          v50 = vld2q_f64(v49);
          v51 = v33 - 4;
          v52 = vld2q_f64(v51);
          v53 = v33;
          v54 = vld2q_f64(v53);
          v53 += 4;
          v55 = vuzp1q_s16(vuzp1q_s32(vceqq_s64(v27, v38), vceqq_s64(v27, v40)), vuzp1q_s32(vceqq_s64(v27, v42), vceqq_s64(v27, v44)));
          v56 = vld2q_f64(v53);
          v57 = v33 + 8;
          v58 = vld2q_f64(v57);
          v59 = v33 + 12;
          v60 = vld2q_f64(v59);
          v61 = v33 + 16;
          v62 = vceqq_s64(v27, v58);
          v63 = vld2q_f64(v61);
          v64 = v33 + 20;
          v65 = vld2q_f64(v64);
          v66 = v33 + 24;
          v67 = vld2q_f64(v66);
          v68 = vuzp1q_s16(vuzp1q_s32(vceqq_s64(v27, v54), vceqq_s64(v27, v56)), vuzp1q_s32(v62, vceqq_s64(v27, v60)));
          v69 = v33 + 28;
          v70 = vuzp1q_s32(vceqq_s64(v27, v63), vceqq_s64(v27, v65));
          v71 = vld2q_f64(v69);
          v34 = vorrq_s8(v34, vuzp1q_s8(v55, vuzp1q_s16(vuzp1q_s32(vceqq_s64(v27, v46), vceqq_s64(v27, v48)), vuzp1q_s32(vceqq_s64(v27, v50), vceqq_s64(v27, v52)))));
          v36 = vorrq_s8(v36, vuzp1q_s8(v68, vuzp1q_s16(v70, vuzp1q_s32(vceqq_s64(v27, v67), vceqq_s64(v27, v71)))));
          v33 += 64;
          v35 -= 32;
        }

        while (v35);
        v23 = vmaxvq_u8(vcltzq_s8(vshlq_n_s8(vorrq_s8(v36, v34), 7uLL))) & 1;
        if (v32 >= 5)
        {
          goto LABEL_44;
        }

        v21 += 16 * v28;
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      do
      {
LABEL_50:
        v81 = *v21;
        v21 += 16;
        LOBYTE(v23) = (v17 == v81) | v23;
      }

      while (v21 != v20);
LABEL_65:
      if (v23)
      {
        goto LABEL_66;
      }

LABEL_68:
      v134 = 0;
      if (v15)
      {
LABEL_69:
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }
      }

LABEL_71:
      if ((v134 & 1) == 0)
      {
        v13 = *(v13 + 8);
        if (v13 != v8)
        {
          continue;
        }
      }

      goto LABEL_120;
    }
  }

  v10 = *(this + 13);
  if (v10 == v8)
  {
LABEL_15:
    v12 = 4294966297;
    goto LABEL_121;
  }

  while (1)
  {
    v11 = *(v10 + 16);
    if (*(v11 + 56) == v9)
    {
      break;
    }

    v10 = *(v10 + 8);
    if (v10 == v8)
    {
      goto LABEL_15;
    }
  }

  if (!*(a2 + 3))
  {
    HGRenderExecUnit::AddEnqueuedRenderJob(*(v10 + 16), a2);
    if ((*(this + 69) & 4) != 0)
    {
      v135 = *(v11 + 8);
      v136 = HGRenderExecUnit::NumEnqueuedRenderJobs(v11);
      printf("RenderUnit<%d> Enqueue: Count: %lu\n", v135, v136);
    }
  }

LABEL_119:
  v12 = HGRenderQueue::EnqueueRenderJobWithPriority(this, a2);
LABEL_120:
  if (v12)
  {
    goto LABEL_121;
  }

LABEL_122:
  (*(*a2 + 24))(a2);
  return v12;
}

void sub_25FD239B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FD23A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::EnqueueRenderJobWithPriority(HGRenderQueue *this, HGRenderJob *a2)
{
  v34 = a2;
  if ((*(a2 + 4) - 3) <= 2)
  {
    if (qword_280C5E4C8 != -1)
    {
      HGRenderQueue::EnqueueRenderJobWithPriority();
    }

    *(a2 + 4) = 2;
  }

  if (*(a2 + 3) != 4)
  {
    (*(*a2 + 16))(a2);
    HGRenderJob::SetState(a2, 2);
    *(a2 + 28) = this;
    HGRenderJob::CallNotifyFunc(a2);
  }

  v4 = *(this + 43);
  v32 = v4;
  v33 = 0;
  HGSynchronizable::Lock(v4);
  v5 = *(this + 4);
  if (v5 != 3)
  {
    v6 = *(this + 41);
    v7 = *(this + 38);
    v8 = v7 + 8 * (v6 >> 9);
    if (*(this + 39) == v7)
    {
      v9 = 0;
      v12 = 0;
      v10 = (this + 336);
    }

    else
    {
      v9 = *v8 + 8 * (*(this + 41) & 0x1FFLL);
      v10 = (this + 336);
      v11 = *(v7 + (((*(this + 42) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 42) + v6) & 0x1FF);
      if (v9 == v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        while (*(a2 + 26) <= *(*v9 + 104))
        {
          v9 += 8;
          if (v9 - *v8 == 4096)
          {
            v13 = *(v8 + 8);
            v8 += 8;
            v9 = v13;
          }

          ++v12;
          if (v9 == v11)
          {
            v9 = v11;
            break;
          }
        }
      }
    }

    std::deque<HGRenderJob *>::insert(this + 37, v8, v9, &v34);
    if ((*(this + 69) & 4) != 0)
    {
      v14 = *v10;
      v15 = v34;
      TypeLabel = HGRenderJob::GetTypeLabel(v34);
      UserName = HGRenderJob::GetUserName(v34);
      printf("EnqueueJob: %p  Type: %s  Queue[%d,%d] '%s'\n", v15, TypeLabel, v12, v14, UserName);
    }

    v18 = v34;
    if (*(v34 + 3) <= 1u)
    {
      v19 = *(v34 + 38);
      if (*(v34 + 39) != v19)
      {
        v20 = 0;
        v21 = 1;
        do
        {
          *(*(v19 + 8 * v20) + 192) = v18;
          (*(*v18 + 16))(v18);
          v20 = v21;
          v18 = v34;
          v19 = *(v34 + 38);
          ++v21;
        }

        while (v20 < (*(v34 + 39) - v19) >> 3);
      }

      if ((*(this + 69) & 8) != 0 && *(this + 352) == 1)
      {
        *(this + 352) = 0;
        v22 = mach_absolute_time();
        v23 = *(this + 45);
        if (qword_280C5E4D8 != -1)
        {
          v31 = v22;
          HGRenderQueue::EnqueueRenderJobWithPriority();
          v22 = v31;
        }

        v24 = *&qword_280C5E4D0 * (v22 - v23) * 1000.0;
        printf("RenderJobQueue Empty Time (ms): %5.1f\n", v24);
      }
    }
  }

  HGSynchronizable::Unlock(v4);
  if (v5 == 3)
  {
    return 4294966305;
  }

  v26 = *(this + 43);
  HGSynchronizable::Lock(v26);
  v27 = *(this + 4);
  HGSynchronizable::Unlock(v26);
  if (v27 != 2)
  {
    if (HGRenderJob::UsesOnlyGPUResource(v34))
    {
      v32 = *(this + 16);
      v33 = 0;
      HGSynchronizable::Lock(v32);
      HGSynchronizable::NotifyAll(v32);
      HGSynchronizable::Unlock(v32);
      return 0;
    }

    if (HGRenderJob::UsesOnlyCPUResource(v34))
    {
      v32 = *(this + 15);
      v33 = 0;
      HGSynchronizable::Lock(v32);
      HGSynchronizable::NotifyAll(v32);
      HGSynchronizable::Unlock(v32);
      return 0;
    }

    v28 = *(this + 5);
    if (v28 == 2)
    {
      if (*(this + 42) == 1)
      {
        v32 = *(this + 15);
        v33 = 0;
        HGSynchronizable::Lock(v32);
        HGSynchronizable::NotifyAll(v32);
        HGSynchronizer::~HGSynchronizer(&v32);
        if (HGRenderQueue::GetNumJobsInRenderQueue(this) < 2)
        {
          return 0;
        }

        v30 = *(this + 16);
        v32 = v30;
        v33 = 0;
        HGSynchronizable::Lock(v30);
        HGSynchronizable::NotifyAll(v30);
        goto LABEL_44;
      }
    }

    else if (v28 == 1 && *(this + 41) == 1)
    {
      v32 = *(this + 16);
      v33 = 0;
      HGSynchronizable::Lock(v32);
      HGSynchronizable::NotifyAll(v32);
      HGSynchronizer::~HGSynchronizer(&v32);
      if (HGRenderQueue::GetNumJobsInRenderQueue(this) < 2)
      {
        return 0;
      }

      v29 = *(this + 15);
      v32 = v29;
      v33 = 0;
      HGSynchronizable::Lock(v29);
      HGSynchronizable::NotifyAll(v29);
LABEL_44:
      HGSynchronizer::~HGSynchronizer(&v32);
      return 0;
    }

    v32 = *(this + 16);
    v33 = 0;
    HGSynchronizable::Lock(v32);
    HGSynchronizable::NotifyAll(v32);
    HGSynchronizable::Unlock(v32);
    v32 = *(this + 15);
    v33 = 0;
    HGSynchronizable::Lock(v32);
    HGSynchronizable::NotifyAll(v32);
    HGSynchronizable::Unlock(v32);
  }

  return 0;
}

void sub_25FD23EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD23FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void *std::deque<HGRenderJob *>::insert(void *a1, char *a2, uint64_t a3, char *a4)
{
  v6 = a1[4];
  v7 = a1[1];
  v8 = a1[2];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
LABEL_3:
      v11 = 0;
      v12 = a1[5];
      v13 = v12;
      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = *v9 + 8 * (a1[4] & 0x1FFLL);
    if (a3 == v10)
    {
      goto LABEL_3;
    }
  }

  v11 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v10 - *v9) >> 3);
  v12 = a1[5];
  v13 = v12 - v11;
  if (v11 >= v12 - v11)
  {
LABEL_4:
    if (v8 == v7)
    {
      v14 = 0;
    }

    else
    {
      v14 = ((v8 - v7) << 6) - 1;
    }

    if (v14 == v12 + v6)
    {
      std::deque<HGRenderJob *>::__add_back_capacity(a1);
      v12 = a1[5];
      v13 = v12 - v11;
    }

    if (v12 == v11)
    {
      *(*(a1[1] + (((a1[4] + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[4] + v11) & 0x1FF)) = *a4;
      a1[5] = v11 + 1;
      v15 = a1[4];
      v16 = a1[1];
      result = (v16 + 8 * (v15 >> 9));
      if (a1[2] == v16)
      {
        goto LABEL_47;
      }

LABEL_55:
      v47 = *result + 8 * (v15 & 0x1FF);
      if (!v11)
      {
        return result;
      }

      goto LABEL_56;
    }

    v57 = a4;
    v24 = a1[4] + v12;
    v25 = a1[1];
    v26 = (v25 + 8 * (v24 >> 9));
    v27 = *v26;
    v28 = *v26 + 8 * (v24 & 0x1FF);
    if (a1[2] == v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = (v29 - v27) >> 3;
    if (v30 < 2)
    {
      v31 = &v26[-8 * ((512 - v30) >> 9)];
      v32 = (*v31 + 8 * (~(512 - v30) & 0x1FF));
      if (v32 != a4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = &v26[8 * ((v30 - 1) >> 9)];
      v32 = (*v31 + 8 * ((v30 - 1) & 0x1FF));
      if (v32 != a4)
      {
        goto LABEL_44;
      }
    }

    v57 = v29;
    a4 = v29;
LABEL_44:
    *v29 = *v32;
    a1[5] = v12 + 1;
    if (v13 >= 2)
    {
      v48 = v30 - v13;
      if (v48 < 1)
      {
        v55 = 511 - v48;
        v49 = &v26[-8 * (v55 >> 9)];
        v50 = (*v49 + 8 * (~v55 & 0x1FF));
      }

      else
      {
        v49 = &v26[8 * (v48 >> 9)];
        v50 = (*v49 + 8 * (v48 & 0x1FF));
      }

      v26 = std::deque<HGRenderJob *>::__move_backward_and_check(a1, v49, v50, v31, v32, v26, v29, &v57);
      v29 = v56;
      v45 = *v57;
      if (v56 != *v26)
      {
LABEL_46:
        *(v29 - 1) = v45;
        v15 = a1[4];
        v46 = a1[1];
        result = (v46 + 8 * (v15 >> 9));
        if (a1[2] == v46)
        {
          goto LABEL_47;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v45 = *a4;
      if (v29 != v27)
      {
        goto LABEL_46;
      }
    }

    v29 = (*(v26 - 1) + 4096);
    goto LABEL_46;
  }

LABEL_14:
  if (v6)
  {
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    std::deque<HGRenderJob *>::__add_front_capacity(a1);
    if (v11)
    {
LABEL_16:
      v57 = a4;
      v18 = a1[4];
      v19 = a1[1];
      v20 = (v19 + 8 * (v18 >> 9));
      if (a1[2] == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = (*v20 + 8 * (a1[4] & 0x1FFLL));
      }

      v22 = &v21[-*v20] >> 3;
      if (v22 < 2)
      {
        v23 = (*&v20[-8 * ((512 - v22) >> 9)] + 8 * (~(512 - v22) & 0x1FF));
        if (v21 != a4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = (*&v20[((v22 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v22 - 1) & 0x1FF));
        if (v21 != a4)
        {
          goto LABEL_38;
        }
      }

      v57 = v23;
      a4 = v23;
LABEL_38:
      *v23 = *v21;
      v39 = a1[5] + 1;
      a1[4] = v18 - 1;
      a1[5] = v39;
      if (v11 == 1)
      {
        goto LABEL_54;
      }

      if (v22 < 0)
      {
        v40 = &v20[-8 * ((510 - v22) >> 9)];
        v41 = (*v40 + 8 * (~(510 - v22) & 0x1FF));
        v42 = v22 + v11;
        if (v42 >= 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v40 = &v20[8 * ((v22 + 1) >> 9)];
        v41 = (*v40 + 8 * ((v22 + 1) & 0x1FF));
        v42 = v22 + v11;
        if (v42 >= 1)
        {
LABEL_41:
          v43 = &v20[8 * (v42 >> 9)];
          v44 = (*v43 + 8 * (v42 & 0x1FF));
LABEL_53:
          std::deque<HGRenderJob *>::__move_and_check(a1, v40, v41, v43, v44, v20, v21, &v57);
          v21 = v52;
          a4 = v57;
LABEL_54:
          *v21 = *a4;
          v15 = a1[4];
          v53 = a1[1];
          result = (v53 + 8 * (v15 >> 9));
          if (a1[2] == v53)
          {
            goto LABEL_47;
          }

          goto LABEL_55;
        }
      }

      v51 = 511 - v42;
      v43 = &v20[-8 * (v51 >> 9)];
      v44 = (*v43 + 8 * (~v51 & 0x1FF));
      goto LABEL_53;
    }
  }

  v33 = a1[4];
  v34 = a1[1];
  v35 = (v34 + 8 * (v33 >> 9));
  if (a1[2] == v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = *v35 + 8 * (a1[4] & 0x1FFLL);
  }

  if (v36 == *v35)
  {
    v36 = *(v35 - 1) + 4096;
  }

  *(v36 - 8) = *a4;
  v37 = a1[5] + 1;
  a1[4] = v33 - 1;
  a1[5] = v37;
  v15 = a1[4];
  v38 = a1[1];
  result = (v38 + 8 * (v15 >> 9));
  if (a1[2] != v38)
  {
    goto LABEL_55;
  }

LABEL_47:
  v47 = 0;
  if (!v11)
  {
    return result;
  }

LABEL_56:
  v54 = v11 + ((v47 - *result) >> 3);
  if (v54 < 1)
  {
    result -= (511 - v54) >> 9;
  }

  else
  {
    result += v54 >> 9;
  }

  return result;
}

uint64_t HGRenderQueue::CancelAllQueuedRenderJobs(HGRenderQueue *this)
{
  v38 = 0u;
  v39 = 0u;
  *__p = 0u;
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = *(this + 38);
  v4 = *(this + 39);
  v5 = (v3 + 8 * (*(this + 41) >> 9));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 8 * (*(this + 41) & 0x1FFLL);
  }

  v7 = 0;
  v8 = this + 96;
LABEL_5:
  v9 = v6;
  while (v4 != v3)
  {
    v10 = *(this + 42) + *(this + 41);
    if (v9 == (*(v3 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)))
    {
      goto LABEL_32;
    }

LABEL_10:
    v11 = *(*v9 + 3);
    if (v11 == 7)
    {
      goto LABEL_21;
    }

    if (!v11)
    {
      if (*(*v9 + 22))
      {
        v13 = *(this + 13);
        if (v13 != v8)
        {
          while (!HGRenderExecUnit::HasEnqueuedRenderJob(*(v13 + 16), *v9))
          {
            v13 = *(v13 + 8);
            if (v13 == v8)
            {
              goto LABEL_21;
            }
          }

          HGRenderExecUnit::RemoveEnqueuedRenderJob(*(v13 + 16), *v9);
          if ((*(this + 69) & 4) != 0)
          {
            v14 = *(v13 + 16);
            v15 = *(v14 + 2);
            v16 = HGRenderExecUnit::NumEnqueuedRenderJobs(v14);
            printf("RenderUnit<%d> Dequeue: Count: %lu\n", v15, v16);
          }
        }
      }

LABEL_21:
      v17 = *v9;
      HGRenderJob::SetState(v17, 6);
      v18 = *(v17 + 38);
      if (*(v17 + 39) == v18)
      {
        HGRenderJob::CallNotifyFunc(v17);
      }

      else
      {
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = *(v18 + 8 * v19);
          HGRenderNode::SetState(v21, 8);
          HGRenderNode::CallNotifyFunc(v21);
          HGRenderNode::NotifyRenderJobFinished(v21);
          v19 = v20;
          v18 = *(v17 + 38);
          ++v20;
        }

        while (v19 < (*(v17 + 39) - v18) >> 3);
      }

      v22 = __p[1];
      if (v38 == __p[1])
      {
        v23 = 0;
      }

      else
      {
        v23 = ((v38 - __p[1]) << 6) - 1;
      }

      v24 = *(&v39 + 1);
      v25 = *(&v39 + 1) + v39;
      if (v23 == *(&v39 + 1) + v39)
      {
        std::deque<HGRenderJob *>::__add_back_capacity(__p);
        v24 = *(&v39 + 1);
        v22 = __p[1];
        v25 = v39 + *(&v39 + 1);
      }

      *(*&v22[(v25 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v25 & 0x1FF)) = v17;
      *(&v39 + 1) = v24 + 1;
      v5 = std::deque<Pipeline *>::erase((this + 296), v5, v6);
      v6 = v26;
      v7 = (v7 + 1);
      v3 = *(this + 38);
      v4 = *(this + 39);
      goto LABEL_5;
    }

    ++v9;
    v6 += 8;
    if (*v5 + 4096 == v6)
    {
      v12 = v5[1];
      ++v5;
      v6 = v12;
      goto LABEL_5;
    }
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_32:
  HGSynchronizable::Unlock(v2);
  v27 = __p[1];
  v28 = v38;
  if (*(&v39 + 1))
  {
    v29 = __p[1] + 8 * (v39 >> 9);
    if (v38 == __p[1])
    {
      v30 = 0;
    }

    else
    {
      v30 = (*v29 + 8 * (v39 & 0x1FF));
    }

    while (1)
    {
      v27 = __p[1];
      v28 = v38;
      if (v38 == __p[1])
      {
        if (!v30)
        {
          break;
        }
      }

      else if ((*(__p[1] + (((*(&v39 + 1) + v39) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v39 + 1) + v39) & 0x1FF)) == v30)
      {
        break;
      }

      v32 = *v30;
      if (*(*v30 + 176))
      {
        *(v32 + 12) = 4;
        *(v32 + 104) = 10;
        HGRenderQueue::EnqueueRenderJob(this, v32);
      }

      else
      {
        (*(*v32 + 24))(*v30);
      }

      v29 = std::deque<Pipeline *>::erase(__p, v29, v30);
      v30 = v31;
    }
  }

  *(&v39 + 1) = 0;
  v33 = v28 - v27;
  if (v33 >= 3)
  {
    do
    {
      operator delete(*v27);
      v28 = v38;
      v27 = (__p[1] + 8);
      __p[1] = v27;
      v33 = (v38 - v27) >> 3;
    }

    while (v33 > 2);
  }

  if (v33 == 1)
  {
    v34 = 256;
LABEL_51:
    *&v39 = v34;
  }

  else if (v33 == 2)
  {
    v34 = 512;
    goto LABEL_51;
  }

  if (v27 != v28)
  {
    do
    {
      v35 = *v27++;
      operator delete(v35);
    }

    while (v27 != v28);
    if (v38 != __p[1])
    {
      *&v38 = v38 + ((__p[1] - v38 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_25FD24890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, HGSynchronizable *);
  v6 = va_arg(va1, void);
  HGSynchronizer::~HGSynchronizer(va);
  std::deque<HGNode *>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::CancelAllActiveRenderJobs(HGRenderQueue *this, int a2)
{
  v4 = *(this + 43);
  __rqtp.tv_sec = v4;
  LOBYTE(__rqtp.tv_nsec) = 0;
  HGSynchronizable::Lock(v4);
  v5 = this + 136;
  v6 = *(this + 18);
  if (v6 == (this + 136))
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    do
    {
      v8 = *(v6 + 16);
      (*(**(v8 + 176) + 120))(*(v8 + 176), 13, 1);
      *(v8 + 108) = 6;
      v7 = (v7 + 1);
      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }

  HGSynchronizable::Unlock(v4);
  v9 = *(this + 43);
  __rqtp.tv_sec = v9;
  LOBYTE(__rqtp.tv_nsec) = 0;
  HGSynchronizable::Lock(v9);
  v10 = this + 160;
  v11 = *(this + 21);
  if (v11 != (this + 160))
  {
    do
    {
      v12 = *(v11 + 16);
      (*(**(v12 + 176) + 120))(*(v12 + 176), 13, 1);
      *(v12 + 108) = 6;
      v7 = (v7 + 1);
      v11 = *(v11 + 8);
    }

    while (v11 != v10);
  }

  HGSynchronizable::Unlock(v9);
  if (a2)
  {
    LOBYTE(v13) = 0;
LABEL_11:
    v14 = *(this + 43);
    HGSynchronizable::Lock(v14);
    v15 = *(this + 18);
    if (v15 == v5)
    {
LABEL_14:
      v17 = 1;
    }

    else
    {
      while (1)
      {
        v16 = *(*(v15 + 16) + 108);
        v17 = v16 != 6;
        if (v16 == 6)
        {
          break;
        }

        v15 = *(v15 + 8);
        if (v15 == v5)
        {
          goto LABEL_14;
        }
      }
    }

    HGSynchronizable::Unlock(v14);
    if (v13)
    {
LABEL_16:
      v13 = 1;
      goto LABEL_23;
    }

    while (1)
    {
      v18 = *(this + 43);
      HGSynchronizable::Lock(v18);
      v19 = *(this + 21);
      if (v19 == v10)
      {
LABEL_21:
        v13 = 1;
      }

      else
      {
        while (1)
        {
          v20 = *(*(v19 + 16) + 108);
          v13 = v20 != 6;
          if (v20 == 6)
          {
            break;
          }

          v19 = *(v19 + 8);
          if (v19 == v10)
          {
            goto LABEL_21;
          }
        }
      }

      HGSynchronizable::Unlock(v18);
LABEL_23:
      if (v17 && v13)
      {
        break;
      }

      __rqtp = xmmword_260817840;
      nanosleep(&__rqtp, &__rmtp);
      if (!v17)
      {
        goto LABEL_11;
      }

      v17 = 1;
      if (v13)
      {
        goto LABEL_16;
      }
    }
  }

  return v7;
}

void sub_25FD24B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::CancelRenderJob(HGRenderQueue *this, HGRenderJob *a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  v5 = *(this + 38);
  if (*(this + 39) != v5)
  {
    v6 = *(this + 41);
    v7 = v5 + 8 * (v6 >> 9);
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    v9 = *(v5 + (((*(this + 42) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 42) + v6) & 0x1FF);
    while (1)
    {
      if (v8 == v9)
      {
        goto LABEL_7;
      }

      if (*v8 == a2)
      {
        break;
      }

      v8 += 8;
      if (&v8[-*v7] == 4096)
      {
        v10 = *(v7 + 8);
        v7 += 8;
        v8 = v10;
      }
    }

    std::deque<Pipeline *>::erase((this + 296), v7, v8);
    HGRenderJob::SetState(a2, 6);
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v13 == 8)
      {
LABEL_14:
        HGSynchronizable::NotifyAll(*(a2 + 37));
LABEL_28:
        (*(*a2 + 24))(a2);
        goto LABEL_29;
      }
    }

    else
    {
      if (*(a2 + 22))
      {
        v14 = *(this + 13);
        if (v14 != (this + 96))
        {
          while (!HGRenderExecUnit::HasEnqueuedRenderJob(*(v14 + 16), *v8))
          {
            v14 = *(v14 + 8);
            if (v14 == (this + 96))
            {
              goto LABEL_22;
            }
          }

          HGRenderExecUnit::RemoveEnqueuedRenderJob(*(v14 + 16), *v8);
          if ((*(this + 69) & 4) != 0)
          {
            v15 = *(v14 + 16);
            v16 = *(v15 + 2);
            v17 = HGRenderExecUnit::NumEnqueuedRenderJobs(v15);
            printf("RenderUnit<%d> Dequeue: Count: %lu\n", v16, v17);
          }
        }
      }

LABEL_22:
      if (*(a2 + 3) == 8)
      {
        goto LABEL_14;
      }
    }

    v18 = *(a2 + 38);
    if (*(a2 + 39) == v18)
    {
      HGRenderJob::CallNotifyFunc(a2);
    }

    else
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = *(v18 + 8 * v19);
        HGRenderNode::SetState(v21, 7);
        HGRenderNode::CallNotifyFunc(v21);
        HGRenderNode::NotifyRenderJobFinished(v21);
        v19 = v20;
        v18 = *(a2 + 38);
        ++v20;
      }

      while (v19 < (*(a2 + 39) - v18) >> 3);
    }

    goto LABEL_28;
  }

LABEL_7:
  v11 = *(this + 18);
  if (v11 == (this + 136))
  {
LABEL_10:
    v12 = 1;
  }

  else
  {
    while (*(v11 + 16) != a2)
    {
      v11 = *(v11 + 8);
      if (v11 == (this + 136))
      {
        goto LABEL_10;
      }
    }

    (*(**(a2 + 22) + 120))(*(a2 + 22), 13, 1);
    HGRenderJob::SetState(a2, 6);
LABEL_29:
    v12 = 0;
  }

  HGSynchronizable::Unlock(v4);
  if (v12)
  {
    v22 = *(this + 73);
    HGSynchronizable::Lock(v22);
    v23 = *(this + 68);
    v24 = (v23 + 8 * (*(this + 71) >> 9));
    v25 = *(this + 69);
    if (v25 == v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = *v24 + 8 * (*(this + 71) & 0x1FFLL);
    }

    v27 = 0;
LABEL_36:
    v28 = v26;
    while (1)
    {
      if (v25 == v23)
      {
        if (!v28)
        {
LABEL_45:
          HGSynchronizable::Unlock(v22);
          return v27;
        }
      }

      else
      {
        v29 = *(this + 72) + *(this + 71);
        if (v28 == (*(v23 + ((v29 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v29 & 0x1FF)))
        {
          goto LABEL_45;
        }
      }

      v30 = *v28;
      if (*(*(*v28 + 40) + 192) == a2)
      {
        v24 = std::deque<Pipeline *>::erase((this + 536), v24, v26);
        v26 = v32;
        HGRenderJob::SetState(a2, 6);
        v33 = v30[5];
        HGRenderNode::SetState(v33, 8);
        HGRenderNode::CallNotifyFunc(v33);
        HGRenderNode::NotifyRenderJobFinished(v33);
        (*(*v30 + 24))(v30);
        v23 = *(this + 68);
        v25 = *(this + 69);
        v27 = 1;
        goto LABEL_36;
      }

      v28 += 8;
      v26 += 8;
      if (*v24 + 4096 == v26)
      {
        v31 = v24[1];
        ++v24;
        v26 = v31;
        goto LABEL_36;
      }
    }
  }

  return 1;
}

void sub_25FD24F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD24FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::ExecuteRenderJob(HGRenderQueue *this, HGRenderJob *a2)
{
  v2 = *(a2 + 3);
  if (v2 == 8 || v2 == 1)
  {
    v5 = *(a2 + 22);
    if (v5)
    {
      if (((*(*v5 + 304))(v5) & 1) == 0)
      {
        *(a2 + 4) = 2;
        HGGPURenderer::GetCurrentContext(*(a2 + 22), &v7);
        HGGLContext::Share();
      }

      *(a2 + 4) = 1;
    }

    operator new();
  }

  return 4294966304;
}

void sub_25FD25190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGRenderQueue::GetNumActiveCPURenderJobs(HGRenderQueue *this)
{
  v2 = *(this + 43);
  HGSynchronizable::Lock(v2);
  v3 = this + 136;
  v4 = *(this + 18);
  if (v4 == (this + 136))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v5 += (*(**(*(v4 + 16) + 176) + 304))(*(*(v4 + 16) + 176));
      v4 = *(v4 + 8);
    }

    while (v4 != v3);
  }

  HGSynchronizable::Unlock(v2);
  return v5;
}

uint64_t HGRenderQueue::GetNumActiveGPURenderJobs(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 344);
  HGSynchronizable::Lock(v6);
  v7 = a1 + 136;
  v8 = *(a1 + 144);
  if (v8 == a1 + 136)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 16);
      if (((*(**(v10 + 176) + 304))(*(v10 + 176)) & 1) == 0 && *(v10 + 104) >= a3 && *(v10 + 184) == a2)
      {
        ++v9;
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v7);
  }

  HGSynchronizable::Unlock(v6);
  return v9;
}

uint64_t HGRenderQueue::GetNumActiveGPUCustomRenderJobs(HGRenderQueue *this)
{
  v2 = *(this + 43);
  v6[2] = v2;
  v7 = 0;
  HGSynchronizable::Lock(v2);
  for (i = *(this + 21); i != (this + 160); i = *(i + 8))
  {
    v4 = *(i + 16);
    if (((*(**(v4 + 176) + 304))(*(v4 + 176)) & 1) == 0)
    {
      HGGPURenderer::GetContext(*(v4 + 176), 24, v6);
      HGGLContext::Share();
    }
  }

  HGSynchronizable::Unlock(v2);
  return 0;
}

void sub_25FD254D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGRenderQueue::SetMinJobExecPriority(HGRenderQueue *this, int a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  v5 = *(this + 14);
  *(this + 14) = a2;
  result = HGSynchronizable::Unlock(v4);
  if (v5 > a2)
  {
    v7 = *(this + 16);
    HGSynchronizable::Lock(v7);
    HGSynchronizable::NotifyAll(v7);
    HGSynchronizable::Unlock(v7);
    v8 = *(this + 15);
    HGSynchronizable::Lock(v8);
    HGSynchronizable::NotifyAll(v8);
    return HGSynchronizable::Unlock(v8);
  }

  return result;
}

uint64_t HGRenderQueue::EnqueueDeleteRenderNode(HGRenderQueue *this, HGRenderNode *a2)
{
  v4 = *(a2 + 23);
  if (v4)
  {
    v5 = (*(*v4 + 304))(v4) ^ 1;
    v6 = *(a2 + 3);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 3);
    if (!v6)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if ((*(v6 + 12) & 0x10) == 0 || !*(v6 + 128))
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v7 = HGObject::operator new(0xD0uLL);
  HGRenderNode::HGRenderNode(v7);
  *(v7 + 3) = *(a2 + 3);
  *(a2 + 3) = 0;
  if (v5 && *(a2 + 23) == *(v6 + 128))
  {
    *(v7 + 2) = *(a2 + 2);
    *(a2 + 2) = 0;
  }

  v8 = HGObject::operator new(0x160uLL);
  HGRenderJob::HGRenderJob(v8);
  HGUserJob::SetPriority(v8, 5);
  HGRenderJob::SetRenderer(v8, *(v6 + 128));
  HGRenderJob::AddRenderNodeInternal(v8, v7);
  HGRenderJob::SetPriority(v8, 12);
  v6 = HGRenderQueue::EnqueueRenderJob(this, v8);
  (*(*v8 + 24))(v8);
  (*(*v7 + 24))(v7);
  if (v5)
  {
LABEL_14:
    if (*(a2 + 2))
    {
      v9 = HGObject::operator new(0xD0uLL);
      HGRenderNode::HGRenderNode(v9);
      *(v9 + 2) = *(a2 + 2);
      *(a2 + 2) = 0;
      v10 = HGObject::operator new(0x160uLL);
      HGRenderJob::HGRenderJob(v10);
      HGUserJob::SetPriority(v10, 5);
      HGRenderJob::SetRenderer(v10, *(a2 + 23));
      HGRenderJob::AddRenderNodeInternal(v10, v9);
      HGRenderJob::SetPriority(v10, 12);
      v6 = HGRenderQueue::EnqueueRenderJob(this, v10);
      (*(*v10 + 24))(v10);
      (*(*v9 + 24))(v9);
    }
  }

LABEL_16:
  v11 = *(a2 + 17);
  if (v11)
  {
    HGRenderQueue::ReleasePBOToSharedPool(this, v11);
    *(a2 + 17) = 0;
  }

  return v6;
}

HGSynchronizable *HGRenderQueue::ReleasePBOToSharedPool(HGRenderQueue *this, HGPixelBufferObj *a2)
{
  v4 = *(this + 80);
  HGSynchronizable::Lock(v4);
  (*(*a2 + 24))(a2);
  if ((*(this + 69) & 0x10) != 0)
  {
    HGGLContext::Share();
  }

  HGSynchronizable::Unlock(v4);
  v6 = *(this + 63);
  HGSynchronizable::Lock(v6);
  HGSynchronizable::NotifyAll(v6);
  return HGSynchronizable::Unlock(v6);
}

void sub_25FD25AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, uint64_t a14, HGSynchronizable *a15)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  HGSynchronizer::~HGSynchronizer(&a15);
  _Unwind_Resume(a1);
}

void *std::map<HGPixelBufferObj *,unsigned long long>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t HGRenderQueue::DeleteHGGLTexture(HGRenderQueue *this, HGGLTexture *a2)
{
  if (*(a2 + 16))
  {

    return HGRenderQueue::EnqueueDeleteHGGLTexture(this, a2);
  }

  else
  {
    (*(*a2 + 24))(a2);
    return 0;
  }
}

uint64_t HGRenderQueue::EnqueueDeleteHGGLTexture(HGRenderQueue *this, HGGLTexture *a2)
{
  v4 = HGObject::operator new(0xD0uLL);
  HGRenderNode::HGRenderNode(v4);
  HGRenderNode::SetBitmap(v4, a2);
  HGRenderNode::SetRenderer(v4, *(a2 + 16));
  (*(*a2 + 24))(a2);
  v5 = HGObject::operator new(0x160uLL);
  HGRenderJob::HGRenderJob(v5);
  HGUserJob::SetPriority(v5, 6);
  HGRenderJob::AddRenderNodeInternal(v5, v4);
  HGRenderJob::SetRenderer(v5, *(a2 + 16));
  HGRenderJob::SetPriority(v5, 12);
  v6 = HGRenderQueue::EnqueueRenderJob(this, v5);
  if (v6)
  {
    (*(*a2 + 16))(a2);
    HGRenderNode::SetBitmap(v4, 0);
  }

  (*(*v5 + 24))(v5);
  (*(*v4 + 24))(v4);
  return v6;
}

uint64_t HGRenderQueue::FindIdleRenderExecUnitForJobWithPreferredVirtualScreen(HGRenderQueue *this, HGRenderJob *a2)
{
  v4 = *(a2 + 10);
  if (v4)
  {
    GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v4);
    v6 = this + 96;
    v7 = *(this + 13);
    if (v7 == (this + 96))
    {
      return 0;
    }

    goto LABEL_5;
  }

  GLVirtualScreen = *(a2 + 48);
  v6 = this + 96;
  v7 = *(this + 13);
  if (v7 != (this + 96))
  {
LABEL_5:
    v8 = (this + 208);
    while (1)
    {
      v9 = *(v7 + 16);
      if (!HGRenderExecUnit::IsGPU(v9) || (*(v9 + 24) - 1) > 1 || !HGRenderExecUnit::CanPerformJobType(v9, *(a2 + 3)))
      {
        goto LABEL_6;
      }

      v10 = *(v9 + 48);
      if (!v10)
      {
        break;
      }

      if (v11)
      {
        FrameStats = PVRenderJob::GetFrameStats(v11);
        v13 = *FrameStats;
        v14 = *(FrameStats + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = HGGPUComputeDevice::GetGLVirtualScreen(v13);
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v16 = v15;
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
          if (v16 != GLVirtualScreen)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (GLVirtualScreen != -1)
      {
        goto LABEL_6;
      }

LABEL_20:
      v17 = *v8;
      if (!*v8)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v18 = v17;
          v19 = *(v17 + 7);
          if (GLVirtualScreen >= v19)
          {
            break;
          }

          v17 = *v18;
          if (!*v18)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= GLVirtualScreen)
        {
          break;
        }

        v17 = v18[1];
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      if ((v18[4] & 1) == 0 && !HGRenderExecUnit::NumEnqueuedRenderJobs(v9))
      {
        return 1;
      }

LABEL_6:
      v7 = *(v7 + 8);
      if (v7 == v6)
      {
        return 0;
      }
    }

    v15 = -1;
LABEL_19:
    if (v15 != GLVirtualScreen)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  return 0;
}

uint64_t HGRenderQueue::NotifyIdleRenderUnits(HGRenderQueue *this)
{
  atomic_exchange(this + 20, 0);
  v2 = atomic_load(this + 24);
  if (v2 && (*(this + 68) & 2) != 0)
  {
    v3 = mach_absolute_time();
    v4 = atomic_load(this + 24);
    if (qword_280C5E4D8 != -1)
    {
      v9 = v3;
      HGRenderQueue::Drain();
      v3 = v9;
    }

    v5 = *&qword_280C5E4D0 * (v3 - v4) * 1000.0;
    printf("HGRenderQueue::NotifyIdleRenderUnits: Elapsed time: %7.1f (ms)\n", v5);
  }

  v6 = *(this + 16);
  HGSynchronizable::Lock(v6);
  HGSynchronizable::NotifyAll(v6);
  HGSynchronizable::Unlock(v6);
  v7 = *(this + 15);
  HGSynchronizable::Lock(v7);
  HGSynchronizable::NotifyAll(v7);
  HGSynchronizable::Unlock(v7);
  result = mach_absolute_time();
  atomic_store(result, this + 24);
  return result;
}

void sub_25FD261A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD261C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetThrottleFlagOnVirtualScreen(HGRenderQueue *this, int a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  v5 = *(this + 26);
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 7);
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v6 + 32);
  HGSynchronizable::Unlock(v4);
  return v8;
}

HGSynchronizable *HGRenderQueue::SetThrottleFlagOnVirtualScreen(HGRenderQueue *this, int a2, char a3)
{
  v6 = *(this + 43);
  HGSynchronizable::Lock(v6);
  v7 = *(this + 26);
  if (!v7)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      v9 = *(v7 + 7);
      if (v9 <= a2)
      {
        break;
      }

      v7 = *v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 32) = a3;
  if ((a3 & 1) == 0)
  {
    HGSynchronizable::NotifyAll(*(this + 16));
  }

  return HGSynchronizable::Unlock(v6);
}

uint64_t HGRenderQueue::GetLockFlagOnVirtualScreen(HGRenderQueue *this, int a2)
{
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  v5 = *(this + 29);
  if (!v5)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 7);
      if (v7 <= a2)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v6 + 32);
  HGSynchronizable::Unlock(v4);
  return v8;
}

uint64_t HGRenderQueue::GetRenderJob(HGRenderQueue *this, HGRenderExecUnit *a2, HGRenderJob **a3)
{
  v6 = 120;
  if (!*(a2 + 10))
  {
    v6 = 128;
  }

  v7 = *(this + v6);
  v29 = v7;
  v30 = 0;
  HGSynchronizable::Lock(v7);
  while (1)
  {
    RenderJobFromQueue = HGRenderQueue::GetRenderJobFromQueue(this, a2, a3);
    if (RenderJobFromQueue)
    {
      break;
    }

    if (*(a2 + 6) != 4)
    {
      *(a2 + 6) = 1;
      *(a2 + 12) = mach_absolute_time();
      if (*(this + 68))
      {
        LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(a2);
        printf("%s : going idle\n", LUTEnd);
      }

      v10 = *(this + 43);
      HGSynchronizable::Lock(v10);
      v11 = *(this + 4) + 1;
      *(this + 4) = v11;
      v12 = *(this + 42) && v11 >= 2 && *(*(*(*(this + 38) + ((*(this + 41) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 41) & 0x1FFLL)) + 104) >= *(this + 14);
      HGSynchronizable::Unlock(v10);
      if (v12 && !atomic_fetch_or(this + 20, 1u))
      {
        global_queue = dispatch_get_global_queue(0, 0);
        dispatch_group_enter(*(this + 93));
        v14 = dispatch_time(0, 2000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN13HGRenderQueue12GetRenderJobEP16HGRenderExecUnitPP11HGRenderJob_block_invoke;
        block[3] = &__block_descriptor_tmp_41;
        block[4] = this;
        dispatch_after(v14, global_queue, block);
      }
    }

    v7 = v29;
    HGSynchronizable::Wait(v29);
    v15 = *(this + 43);
    HGSynchronizable::Lock(v15);
    v16 = *(this + 4);
    HGSynchronizable::Unlock(v15);
    if (v16 == 3)
    {
      goto LABEL_25;
    }

    if (*(a2 + 6) != 4)
    {
      v17 = *(this + 43);
      HGSynchronizable::Lock(v17);
      --*(this + 4);
      HGSynchronizable::Unlock(v17);
      *(a2 + 6) = 2;
      *(a2 + 13) = mach_absolute_time();
      if ((*(this + 68) & 2) != 0 && HGRenderExecUnit::IsGPU(a2) && (*(*(a2 + 6) + 40) | 2) == 2)
      {
        v18 = mach_absolute_time();
        v19 = *(this + 11);
        if (qword_280C5E4D8 != -1)
        {
          HGRenderQueue::EnqueueRenderJobWithPriority();
        }

        v20 = *&qword_280C5E4D0;
        v21 = *(a2 + 12);
        v22 = *(a2 + 13);
        v23 = *&qword_280C5E4D0;
        v24 = PCICCTransferFunctionLUT::getLUTEnd(a2);
        v25 = v23 * (v22 - v21) * 1000.0;
        v26 = v20 * (v18 - v19) * 1000.0;
        printf("%s : woke up : %5.2f (ms) :  queue time : %6.1f (ms) : ", v24, v25, v26);
        HGRenderQueue::DumpRenderJobQueues(this);
      }
    }
  }

  *(a2 + 6) = 3;
LABEL_25:
  if ((v30 & 1) == 0)
  {
    HGSynchronizable::Unlock(v7);
  }

  return RenderJobFromQueue;
}

void sub_25FD26858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD2686C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD26884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD268A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetRenderJobFromQueue(HGRenderQueue *this, HGRenderExecUnit *a2, HGRenderJob **a3)
{
  v96 = *(this + 43);
  v97 = 0;
  HGSynchronizable::Lock(v96);
  v90 = a3;
  *a3 = 0;
  if (!*(this + 42) || *(a2 + 6) == 4 || (v6 = *(a2 + 6), v6[8] == 3) || (*(this + 4) & 0xFFFFFFFE) == 2 || *(this + 3) == 1 && !*(this + 6))
  {
    v7 = 0;
    goto LABEL_6;
  }

  v94 = 0;
  v95 = 0;
  if (*(a2 + 10))
  {
    GLVirtualScreen = -1;
  }

  else
  {
    v9 = v6;
    if (v10)
    {
      FrameStats = PVRenderJob::GetFrameStats(v10);
      std::shared_ptr<HGComputeDevice const>::operator=[abi:ne200100]<HGGPUComputeDevice const,0>(&v94, FrameStats);
      GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v94);
      v6 = *(a2 + 6);
    }

    else
    {
      GLVirtualScreen = -1;
      v6 = v9;
    }
  }

  v12 = HGPixelBufferObj::format(v6);
  v13 = v12;
  v14 = *(this + 38);
  v15 = *(this + 39);
  v16 = v14 + 8 * (*(this + 41) >> 9);
  if (v15 == v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = (*v16 + 8 * (*(this + 41) & 0x1FFLL));
  }

  v18 = 0;
  v19 = 0;
  v20 = this + 136;
  v88 = a2;
  v87 = v12;
  while (1)
  {
    if (v15 == v14)
    {
      if (!v17)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v21 = *(this + 42) + *(this + 41);
      if (v17 == (*(v14 + ((v21 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v21 & 0x1FF)))
      {
        goto LABEL_183;
      }
    }

    if ((*(this + 17) & 0x80000000) != 0)
    {
      v23 = *v17;
      TypeLabel = HGRenderJob::GetTypeLabel(*v17);
      printf("GetRenderJobFromQueue: Job<%p> type %s priority [%d] :  min exec priority [%d]\n", v23, TypeLabel, *(*v17 + 26), *(this + 14));
      v22 = *v17;
      if (*(*v17 + 27) != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *v17;
      if (*(*v17 + 27) != 6)
      {
        goto LABEL_29;
      }
    }

    if (*(v22 + 3) != 4)
    {
      goto LABEL_121;
    }

LABEL_29:
    if (v13 == 1 && (*(v22 + 3) - 2) >= 5)
    {
      break;
    }

    if (*(v22 + 26) < *(this + 14))
    {
      if ((*(this + 68) & 0x40) == 0)
      {
        goto LABEL_164;
      }

      printf("GetRenderJobFromQueue: Job<%p> not executed: priority [%d] is lower than min priority [%d]\n");
      goto LABEL_175;
    }

    v25 = *(v22 + 3);
    switch(v25)
    {
      case 1:
        if (!*(v22 + 4))
        {
          v31 = v19;
          v18 = "Synchronous Render Job: ANY resource requested.";
          goto LABEL_97;
        }

        if (HGRenderJob::UsesOnlyCPUResource(v22) && HGRenderExecUnit::IsCPU(a2))
        {
          v22 = *v17;
          *v90 = *v17;
          v18 = "Synchronous Render Job: CPU resource requested.";
          if (!v22)
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (!HGRenderJob::UsesOnlyGPUResource(*v17) || !HGRenderExecUnit::IsGPU(a2))
          {
            goto LABEL_121;
          }

          v36 = *v17;
          if (!*(*v17 + 47))
          {
            *v90 = v36;
            v18 = "Synchronous Render Job: GPU resource requested.";
            goto LABEL_184;
          }

          if (!HGRenderJob::IsRequestedVirtualScreen(v36, GLVirtualScreen))
          {
            goto LABEL_121;
          }

          v22 = *v17;
          *v90 = *v17;
          v18 = "Synchronous Render Job: GPU Renderer/VScreen specified.";
          if (!v22)
          {
            goto LABEL_139;
          }
        }

        break;
      case 3:
        IsGPU = HGRenderExecUnit::IsGPU(a2);
        if (v13)
        {
          v33 = IsGPU;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          goto LABEL_52;
        }

        v22 = *v17;
        v34 = *(*v17 + 3);
        if (!v34 || v34 != *(*(a2 + 6) + 16))
        {
          goto LABEL_52;
        }

        v31 = v19;
        v18 = "XGMI Buffer Copy Job: Destination compute device match";
        goto LABEL_97;
      case 2:
        v26 = HGRenderExecUnit::IsGPU(a2);
        if (v13)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        if (!v27)
        {
          goto LABEL_52;
        }

        IsRequestedVirtualScreen = HGRenderJob::IsRequestedVirtualScreen(*v17, GLVirtualScreen);
        v22 = *v17;
        v29 = *(*v17 + 22);
        if (v29)
        {
          LODWORD(v29) = v29 == *(a2 + 7);
        }

        v30 = *(v22 + 3);
        if (v30)
        {
          LOBYTE(v30) = v30 == *(*(a2 + 6) + 16);
        }

        if (((IsRequestedVirtualScreen | v29) & 1) == 0 && (v30 & 1) == 0)
        {
LABEL_52:
          v18 = 0;
          goto LABEL_139;
        }

        v31 = v19;
        v18 = "CPU Buffer Copy To GPU Job: Virtual Screen, Renderer, or Compute Device Match";
        goto LABEL_97;
      default:
        v35 = *(v22 + 22);
        if (v35)
        {
          if (v35 != *(a2 + 7))
          {
            if (!v25 && ((*(*v35 + 304))(*(v22 + 22)) & 1) == 0 && HGRenderExecUnit::IsGPU(a2))
            {
              HGGPURenderer::GetContext(*(*v17 + 22), 24, &v93);
              HGGLContext::Share();
            }

LABEL_121:
            v18 = 0;
LABEL_122:
            v22 = *v90;
            if (!*v90)
            {
              goto LABEL_139;
            }

            break;
          }

          v31 = (v25 == 4) & v19;
          if (v25 != 4)
          {
            v18 = "Renderer Specified";
            if ((v19 ^ 1))
            {
              goto LABEL_97;
            }

            v18 = 0;
            v19 = 1;
            goto LABEL_122;
          }

          v18 = "Renderer Specified";
LABEL_97:
          *v90 = v22;
          v19 = v31;
          break;
        }

        if (HGRenderJob::SpecifiesComputeDevices(v22))
        {
          v37 = *(a2 + 6);
          v38 = *(v37 + 16);
          v39 = *(v37 + 24);
          v98 = v38;
          v99 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
          }

          v40 = *v17;
          if (*(*v17 + 3) != v38)
          {
            v41 = *(v40 + 10);
            if (v41)
            {
              if (v41 == v38)
              {
                *v90 = v40;
                v18 = "Preferred GPU Compute Device Specified";
                goto LABEL_118;
              }

              if (HGRenderQueue::FindIdleRenderExecUnitForJobWithPreferredVirtualScreen(this, v40))
              {
                v18 = 0;
LABEL_118:
                std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&v98);
                goto LABEL_122;
              }

              v42 = v13;
              v47 = *(*v17 + 5);
              v48 = *(*v17 + 6);
              if (v47 == v48)
              {
                *v90 = *v17;
                v18 = "Preferred Compute Device Not Available. Using Alternate Compute Device.";
              }

              else
              {
                while (1)
                {
                  v49 = *v47;
                  v50 = v47[1];
                  v91 = *v47;
                  v92 = v50;
                  if (v50)
                  {
                    atomic_fetch_add_explicit(&v50->var1.__sig, 1uLL, memory_order_relaxed);
                  }

                  if (v49 == v98)
                  {
                    break;
                  }

                  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&v91);
                  v47 += 2;
                  if (v47 == v48)
                  {
                    goto LABEL_110;
                  }
                }

                *v90 = *v17;
                std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&v91);
                v18 = "Preferred Compute Device Not Available. Using Alternate Compute Device From List.";
              }
            }

            else
            {
              v42 = v13;
              v43 = *(v40 + 5);
              v44 = *(v40 + 6);
              if (v43 == v44)
              {
LABEL_110:
                v18 = 0;
              }

              else
              {
                while (1)
                {
                  v45 = *v43;
                  v46 = v43[1];
                  v91 = *v43;
                  v92 = v46;
                  if (v46)
                  {
                    atomic_fetch_add_explicit(&v46->var1.__sig, 1uLL, memory_order_relaxed);
                  }

                  if (v45 == v98)
                  {
                    break;
                  }

                  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&v91);
                  v43 += 2;
                  if (v43 == v44)
                  {
                    goto LABEL_110;
                  }
                }

                *v90 = *v17;
                std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&v91);
                v18 = "Compute Device Selected from Compute Device List";
              }
            }

            v13 = v42;
            goto LABEL_118;
          }

          *v90 = v40;
          v18 = "Compute Device Specified";
          goto LABEL_118;
        }

        v22 = *v17;
        if (!*(*v17 + 4))
        {
          v31 = v19;
          v18 = "Any Resource";
          goto LABEL_97;
        }

        if (HGRenderJob::UsesOnlyCPUResource(v22) && HGRenderExecUnit::IsCPU(a2))
        {
          v22 = *v17;
          *v90 = *v17;
          v18 = "CPU Resource";
          if (!v22)
          {
            goto LABEL_139;
          }
        }

        else
        {
          if (!HGRenderJob::UsesOnlyGPUResource(*v17) || !HGRenderExecUnit::IsGPU(a2))
          {
            goto LABEL_121;
          }

          v22 = *v17;
          if (*(*v17 + 47))
          {
            if (!HGRenderJob::IsRequestedVirtualScreen(v22, GLVirtualScreen))
            {
              goto LABEL_121;
            }

            v22 = *v17;
            *v90 = *v17;
            v18 = "GPU Resource, VScreen requested and was available";
            if (!v22)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v51 = *(v22 + 48);
            if (v51 < 0)
            {
              v31 = v19;
              v18 = "GPU Resource, Any screen";
              goto LABEL_97;
            }

            if (v51 == GLVirtualScreen)
            {
              v31 = v19;
              v18 = "GPU Resource, Preferred VScreen requested and was available";
              goto LABEL_97;
            }

            if (HGRenderQueue::FindIdleRenderExecUnitForJobWithPreferredVirtualScreen(this, *v17))
            {
              goto LABEL_121;
            }

            v22 = *v17;
            *v90 = *v17;
            v18 = "GPU Resource, Preferred VScreen requested but was not available";
            if (!v22)
            {
              goto LABEL_139;
            }
          }
        }

        break;
    }

    v52 = *(v22 + 3);
    if (v52 != 2)
    {
      if (v52 >= 2)
      {
        if (v52 != 7)
        {
          goto LABEL_183;
        }

        if (*(this + 75) == 1)
        {
          if (HGRenderQueue::GetNumActiveGPUCustomRenderJobs(this))
          {
            if ((*(this + 68) & 0x10) != 0)
            {
              PCICCTransferFunctionLUT::getLUTEnd(a2);
              HGRenderJob::GetUserName(*v90);
              printf("%s : NOT DEQUEUED : kTypeCustom : (%s) :  Reason: Serialize custom jobs. '%s'\n");
            }

            goto LABEL_214;
          }

          v22 = *v90;
        }

        if (!*(v22 + 22))
        {
          *(v22 + 22) = *(a2 + 7);
        }
      }

      else if (*(a2 + 10))
      {
        if (HGRenderQueue::GetLockFlagOnVirtualScreen(this, -1))
        {
          if ((*(this + 68) & 0x10) != 0)
          {
            PCICCTransferFunctionLUT::getLUTEnd(a2);
            HGRenderJob::GetUserName(*v90);
            printf("%s :NOT DEQUEUED: kTypeRender : (%s) :  Reason: CPU Locked by Client. '%s'\n");
          }

LABEL_214:
          v7 = 0;
          *v90 = 0;
          goto LABEL_215;
        }

        if (*(this + 73) == 1 && HGRenderQueue::GetNumActiveCPURenderJobs(this))
        {
          if ((*(this + 68) & 0x10) != 0)
          {
            PCICCTransferFunctionLUT::getLUTEnd(a2);
            HGRenderJob::GetUserName(*v90);
            printf("%s :NOT DEQUEUED: kTypeRender : (%s) :  Reason: Serializing CPU renders. '%s'\n");
          }

          goto LABEL_214;
        }

        if (!*(*v90 + 22))
        {
          *(*v90 + 22) = *(a2 + 7);
        }
      }

      else
      {
        if (HGRenderQueue::GetThrottleFlagOnVirtualScreen(this, GLVirtualScreen))
        {
          if (*(this + 69))
          {
            PCICCTransferFunctionLUT::getLUTEnd(a2);
            HGRenderJob::GetUserName(*v90);
            printf("%s :NOT DEQUEUED: kTypeRender : (%s) :  Reason: Throttle for PBO downloads. '%s'\n");
          }

          goto LABEL_214;
        }

        if (HGRenderQueue::GetLockFlagOnVirtualScreen(this, GLVirtualScreen))
        {
          if ((*(this + 68) & 0x10) != 0)
          {
            PCICCTransferFunctionLUT::getLUTEnd(a2);
            HGRenderJob::GetUserName(*v90);
            printf("%s :NOT DEQUEUED: kTypeRender : (%s) :  Reason: Virtual Screen Locked by Client. '%s'\n");
          }

          goto LABEL_214;
        }

        if (*(this + 72) == 1)
        {
          if (*(this + 74) == 1)
          {
            v79 = *(*v90 + 26);
          }

          else
          {
            v79 = 0;
          }

          if (!HGRenderQueue::GetNumActiveGPURenderJobs(this, GLVirtualScreen, v79))
          {
            v84 = *v90;
            *(v84 + 46) = GLVirtualScreen;
            if (*(v84 + 22))
            {
              HGRenderExecUnit::RemoveEnqueuedRenderJob(a2, v84);
              if ((*(this + 69) & 4) != 0)
              {
                v85 = *(a2 + 2);
                v86 = HGRenderExecUnit::NumEnqueuedRenderJobs(a2);
                printf("RenderUnit<%d> Execute: Count: %lu\n", v85, v86);
              }
            }

            else
            {
              *(v84 + 22) = *(a2 + 7);
            }

            std::list<HGRenderJob *>::push_back();
          }

          if ((*(this + 68) & 0x10) != 0)
          {
            PCICCTransferFunctionLUT::getLUTEnd(a2);
            HGRenderJob::GetUserName(*v90);
            printf("%s : NOT DEQUEUED : kTypeRender : (%s) :  Reason: Serialize renders. '%s'\n");
          }

          goto LABEL_214;
        }

        v80 = *v90;
        *(v80 + 46) = GLVirtualScreen;
        if (*(v80 + 22))
        {
          HGRenderExecUnit::RemoveEnqueuedRenderJob(a2, v80);
          if ((*(this + 69) & 4) != 0)
          {
            v81 = *(a2 + 2);
            v82 = HGRenderExecUnit::NumEnqueuedRenderJobs(a2);
            printf("RenderUnit<%d> Execute: Count: %lu\n", v81, v82);
          }
        }

        else
        {
          *(v80 + 22) = *(a2 + 7);
        }
      }

LABEL_182:
      std::list<HGRenderJob *>::push_back();
    }

    if (*(this + 77) != 1)
    {
      *(v22 + 46) = GLVirtualScreen;
      if (!*(v22 + 22))
      {
        *(v22 + 22) = *(a2 + 7);
      }

      v64 = *(v22 + 8);
      v63 = (v22 + 64);
      if (!v64)
      {
        std::shared_ptr<HGComputeDevice const>::operator=[abi:ne200100]<HGGPUComputeDevice const,0>(v63, (*(a2 + 6) + 16));
      }

      goto LABEL_183;
    }

    v53 = *(this + 43);
    v98 = v53;
    LOBYTE(v99) = 0;
    HGSynchronizable::Lock(v53);
    v54 = v18;
    v55 = *(this + 18);
    if (v55 == v20)
    {
      v59 = v13;
      v58 = 1;
    }

    else
    {
      v56 = 0;
      do
      {
        v57 = *(v55 + 16);
        if (((*(**(v57 + 176) + 304))(*(v57 + 176)) & 1) == 0 && (*(v57 + 104) & 0x80000000) == 0 && *(v57 + 184) == GLVirtualScreen)
        {
          ++v56;
        }

        v55 = *(v55 + 8);
      }

      while (v55 != v20);
      v58 = v56 == 0;
      v59 = v87;
      a2 = v88;
    }

    HGSynchronizable::Unlock(v53);
    if (v58)
    {
      v65 = *v90;
      *(v65 + 46) = GLVirtualScreen;
      if (!*(v65 + 22))
      {
        *(v65 + 22) = *(a2 + 7);
      }

      v67 = *(v65 + 8);
      v66 = (v65 + 64);
      if (!v67)
      {
        std::shared_ptr<HGComputeDevice const>::operator=[abi:ne200100]<HGGPUComputeDevice const,0>(v66, (*(a2 + 6) + 16));
      }

      goto LABEL_182;
    }

    v13 = v59;
    v18 = v54;
    if ((*(this + 68) & 0x10) != 0)
    {
      LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(a2);
      UserName = HGRenderJob::GetUserName(*v90);
      printf("%s :NOT DEQUEUED: kTypeCopyCPUBitmapToGPUTexture : (%s) :  Reason: Serialize renders/uploads. '%s'\n", LUTEnd, v54, UserName);
    }

    *v90 = 0;
LABEL_139:
    if ((++v17 - *v16) == 4096)
    {
      v62 = *(v16 + 8);
      v16 += 8;
      v17 = v62;
    }

    v14 = *(this + 38);
    v15 = *(this + 39);
  }

  if ((*(this + 69) & 0x40) == 0)
  {
LABEL_164:
    v18 = 0;
    goto LABEL_183;
  }

  printf("GetRenderJobFromQueue: Job<%p> not executed: Work unit only performs CPU to GPU buffer copy/delete jobs \n");
LABEL_175:
  v18 = 0;
LABEL_183:
  if (*v90)
  {
LABEL_184:
    std::deque<Pipeline *>::erase((this + 296), v16, v17);
    v68 = *(*v90 + 22);
    if (v68)
    {
      (*(*v68 + 120))(v68, 13, 0);
    }

    if ((*(this + 71) & 0x40) != 0)
    {
      v69 = PCICCTransferFunctionLUT::getLUTEnd(a2);
      v70 = HGRenderJob::GetTypeLabel(*v90);
      v71 = *v90;
      v72 = HGRenderJob::GetUserName(*v90);
      printf("%s : DequeueJob: %s : %s (job %p) '%s'\n", v69, v70, v18, v71, v72);
    }

    if (*(this + 3) == 1)
    {
      --*(this + 6);
    }

    if ((*(this + 69) & 8) == 0 || *(*v90 + 3))
    {
      goto LABEL_192;
    }

    v7 = 1;
    if ((*(this + 352) & 1) == 0)
    {
      *(this + 352) = 1;
      v73 = *(this + 38);
      if (*(this + 39) != v73)
      {
        v74 = *(this + 41);
        v75 = (v73 + 8 * (v74 >> 9));
        v76 = *v75 + 8 * (v74 & 0x1FF);
        v77 = *(v73 + (((*(this + 42) + v74) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 42) + v74) & 0x1FF);
        while (v76 != v77)
        {
          if (!*(*v76 + 12))
          {
            *(this + 352) = 0;
            goto LABEL_192;
          }

          v76 += 8;
          if (v76 - *v75 == 4096)
          {
            v78 = v75[1];
            ++v75;
            v76 = v78;
          }
        }
      }

      *(this + 45) = mach_absolute_time();
LABEL_192:
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_215:
  v83 = v95;
  if (v95 && !atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v83->__on_zero_shared)(v83);
    std::__shared_weak_count::__release_weak(v83);
  }

  if ((v97 & 1) == 0)
  {
LABEL_6:
    HGSynchronizable::Unlock(v96);
  }

  return v7;
}

void sub_25FD276D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, PCSharedCount a21, char a22, uint64_t a23, HGSynchronizable *a24)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a22);
  HGSynchronizer::~HGSynchronizer(&a24);
  _Unwind_Resume(a1);
}

void ___ZN13HGRenderQueue12GetRenderJobEP16HGRenderExecUnitPP11HGRenderJob_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  HGRenderQueue::NotifyIdleRenderUnits(v1);
  v2 = *(v1 + 744);

  dispatch_group_leave(v2);
}

void sub_25FD27920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, HGSynchronizable *a9)
{
  MEMORY[0x2666E9F00](v9, 0x10A1C4022CE9198);
  HGSynchronizer::~HGSynchronizer(&a9);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::EnqueueUserJob(HGRenderQueue *this, HGUserJob *a2)
{
  v20 = a2;
  v4 = *(this + 43);
  HGSynchronizable::Lock(v4);
  if (*(this + 4) == 3)
  {
    v5 = 0;
    v6 = 4294966305;
  }

  else if (*(this + 43) == 1)
  {
    v7 = *(a2 + 5);
    if (v7)
    {
      v8 = *(this + 47);
      if (v8 == (this + 368))
      {
LABEL_8:
        v5 = 0;
      }

      else
      {
        while (1)
        {
          v9 = *(*(v8 + 16) + 24);
          v5 = v9 == v7;
          if (v9 == v7)
          {
            break;
          }

          v8 = *(v8 + 8);
          if (v8 == (this + 368))
          {
            goto LABEL_8;
          }
        }
      }

      v6 = 4294966302;
    }

    else
    {
      v6 = 4294966302;
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 4294966301;
  }

  HGSynchronizable::Unlock(v4);
  if (v5)
  {
    (*(*a2 + 16))(a2);
    HGUserJob::SetState(a2, 2);
    *(a2 + 7) = this;
    HGUserJob::CallNotifyFunc(a2);
    v10 = *(this + 59);
    HGSynchronizable::Lock(v10);
    v11 = *(this + 57);
    v12 = *(this + 54);
    v13 = v12 + 8 * (v11 >> 9);
    if (*(this + 55) == v12)
    {
      v14 = 0;
      v15 = (this + 464);
    }

    else
    {
      v14 = *v13 + 8 * (*(this + 57) & 0x1FFLL);
      v15 = (this + 464);
      v16 = *(v12 + (((*(this + 58) + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 58) + v11) & 0x1FF);
      if (v14 != v16)
      {
        while (*(a2 + 3) <= *(*v14 + 12))
        {
          v14 += 8;
          if (v14 - *v13 == 4096)
          {
            v17 = *(v13 + 8);
            v13 += 8;
            v14 = v17;
          }

          if (v14 == v16)
          {
            v14 = v16;
            break;
          }
        }
      }
    }

    std::deque<HGUserJob *>::insert(this + 53, v13, v14, &v20);
    if (*(this + 17))
    {
      printf("EnqueueUserJob: User Queue Size: %lu\n", *v15);
    }

    HGSynchronizable::Unlock(v10);
    v19 = *(this + 49);
    HGSynchronizable::Lock(v19);
    HGSynchronizable::NotifyAll(v19);
    HGSynchronizable::Unlock(v19);
    return 0;
  }

  return v6;
}

void sub_25FD27B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD27B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void *std::deque<HGUserJob *>::insert(void *a1, char *a2, uint64_t a3, char *a4)
{
  v6 = a1[4];
  v7 = a1[1];
  v8 = a1[2];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
LABEL_3:
      v11 = 0;
      v12 = a1[5];
      v13 = v12;
      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = *v9 + 8 * (a1[4] & 0x1FFLL);
    if (a3 == v10)
    {
      goto LABEL_3;
    }
  }

  v11 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v10 - *v9) >> 3);
  v12 = a1[5];
  v13 = v12 - v11;
  if (v11 >= v12 - v11)
  {
LABEL_4:
    if (v8 == v7)
    {
      v14 = 0;
    }

    else
    {
      v14 = ((v8 - v7) << 6) - 1;
    }

    if (v14 == v12 + v6)
    {
      std::deque<HGUserJob *>::__add_back_capacity(a1);
      v12 = a1[5];
      v13 = v12 - v11;
    }

    if (v12 == v11)
    {
      *(*(a1[1] + (((a1[4] + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[4] + v11) & 0x1FF)) = *a4;
      a1[5] = v11 + 1;
      v15 = a1[4];
      v16 = a1[1];
      result = (v16 + 8 * (v15 >> 9));
      if (a1[2] == v16)
      {
        goto LABEL_47;
      }

LABEL_55:
      v47 = *result + 8 * (v15 & 0x1FF);
      if (!v11)
      {
        return result;
      }

      goto LABEL_56;
    }

    v57 = a4;
    v24 = a1[4] + v12;
    v25 = a1[1];
    v26 = (v25 + 8 * (v24 >> 9));
    v27 = *v26;
    v28 = *v26 + 8 * (v24 & 0x1FF);
    if (a1[2] == v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = (v29 - v27) >> 3;
    if (v30 < 2)
    {
      v31 = &v26[-8 * ((512 - v30) >> 9)];
      v32 = (*v31 + 8 * (~(512 - v30) & 0x1FF));
      if (v32 != a4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = &v26[8 * ((v30 - 1) >> 9)];
      v32 = (*v31 + 8 * ((v30 - 1) & 0x1FF));
      if (v32 != a4)
      {
        goto LABEL_44;
      }
    }

    v57 = v29;
    a4 = v29;
LABEL_44:
    *v29 = *v32;
    a1[5] = v12 + 1;
    if (v13 >= 2)
    {
      v48 = v30 - v13;
      if (v48 < 1)
      {
        v55 = 511 - v48;
        v49 = &v26[-8 * (v55 >> 9)];
        v50 = (*v49 + 8 * (~v55 & 0x1FF));
      }

      else
      {
        v49 = &v26[8 * (v48 >> 9)];
        v50 = (*v49 + 8 * (v48 & 0x1FF));
      }

      v26 = std::deque<HGRenderJob *>::__move_backward_and_check(a1, v49, v50, v31, v32, v26, v29, &v57);
      v29 = v56;
      v45 = *v57;
      if (v56 != *v26)
      {
LABEL_46:
        *(v29 - 1) = v45;
        v15 = a1[4];
        v46 = a1[1];
        result = (v46 + 8 * (v15 >> 9));
        if (a1[2] == v46)
        {
          goto LABEL_47;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v45 = *a4;
      if (v29 != v27)
      {
        goto LABEL_46;
      }
    }

    v29 = (*(v26 - 1) + 4096);
    goto LABEL_46;
  }

LABEL_14:
  if (v6)
  {
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    std::deque<HGUserJob *>::__add_front_capacity(a1);
    if (v11)
    {
LABEL_16:
      v57 = a4;
      v18 = a1[4];
      v19 = a1[1];
      v20 = (v19 + 8 * (v18 >> 9));
      if (a1[2] == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = (*v20 + 8 * (a1[4] & 0x1FFLL));
      }

      v22 = &v21[-*v20] >> 3;
      if (v22 < 2)
      {
        v23 = (*&v20[-8 * ((512 - v22) >> 9)] + 8 * (~(512 - v22) & 0x1FF));
        if (v21 != a4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = (*&v20[((v22 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v22 - 1) & 0x1FF));
        if (v21 != a4)
        {
          goto LABEL_38;
        }
      }

      v57 = v23;
      a4 = v23;
LABEL_38:
      *v23 = *v21;
      v39 = a1[5] + 1;
      a1[4] = v18 - 1;
      a1[5] = v39;
      if (v11 == 1)
      {
        goto LABEL_54;
      }

      if (v22 < 0)
      {
        v40 = &v20[-8 * ((510 - v22) >> 9)];
        v41 = (*v40 + 8 * (~(510 - v22) & 0x1FF));
        v42 = v22 + v11;
        if (v42 >= 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v40 = &v20[8 * ((v22 + 1) >> 9)];
        v41 = (*v40 + 8 * ((v22 + 1) & 0x1FF));
        v42 = v22 + v11;
        if (v42 >= 1)
        {
LABEL_41:
          v43 = &v20[8 * (v42 >> 9)];
          v44 = (*v43 + 8 * (v42 & 0x1FF));
LABEL_53:
          std::deque<HGRenderJob *>::__move_and_check(a1, v40, v41, v43, v44, v20, v21, &v57);
          v21 = v52;
          a4 = v57;
LABEL_54:
          *v21 = *a4;
          v15 = a1[4];
          v53 = a1[1];
          result = (v53 + 8 * (v15 >> 9));
          if (a1[2] == v53)
          {
            goto LABEL_47;
          }

          goto LABEL_55;
        }
      }

      v51 = 511 - v42;
      v43 = &v20[-8 * (v51 >> 9)];
      v44 = (*v43 + 8 * (~v51 & 0x1FF));
      goto LABEL_53;
    }
  }

  v33 = a1[4];
  v34 = a1[1];
  v35 = (v34 + 8 * (v33 >> 9));
  if (a1[2] == v34)
  {
    v36 = 0;
  }

  else
  {
    v36 = *v35 + 8 * (a1[4] & 0x1FFLL);
  }

  if (v36 == *v35)
  {
    v36 = *(v35 - 1) + 4096;
  }

  *(v36 - 8) = *a4;
  v37 = a1[5] + 1;
  a1[4] = v33 - 1;
  a1[5] = v37;
  v15 = a1[4];
  v38 = a1[1];
  result = (v38 + 8 * (v15 >> 9));
  if (a1[2] != v38)
  {
    goto LABEL_55;
  }

LABEL_47:
  v47 = 0;
  if (!v11)
  {
    return result;
  }

LABEL_56:
  v54 = v11 + ((v47 - *result) >> 3);
  if (v54 < 1)
  {
    result -= (511 - v54) >> 9;
  }

  else
  {
    result += v54 >> 9;
  }

  return result;
}

uint64_t HGRenderQueue::CancelUserJobs(HGRenderQueue *this, int a2)
{
  v33 = 0u;
  v34 = 0u;
  *__p = 0u;
  v4 = *(this + 59);
  __rqtp.tv_sec = v4;
  LOBYTE(__rqtp.tv_nsec) = 0;
  HGSynchronizable::Lock(v4);
  v5 = *(this + 54);
  v6 = (v5 + 8 * (*(this + 57) >> 9));
  if (*(this + 55) == v5)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v7 = (*v6 + 8 * (*(this + 57) & 0x1FFLL));
  v8 = 0;
  while (1)
  {
    v9 = *(this + 58) + *(this + 57);
    if (v7 == (*(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)))
    {
      break;
    }

    while (1)
    {
      v10 = *v7;
      HGUserJob::SetState(*v7, 4);
      HGUserJob::CallNotifyFunc(v10);
      v11 = __p[1];
      if (v33 == __p[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = ((v33 - __p[1]) << 6) - 1;
      }

      v13 = *(&v34 + 1);
      v14 = *(&v34 + 1) + v34;
      if (v12 == *(&v34 + 1) + v34)
      {
        std::deque<HGUserJob *>::__add_back_capacity(__p);
        v13 = *(&v34 + 1);
        v11 = __p[1];
        v14 = v34 + *(&v34 + 1);
      }

      *(*&v11[(v14 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v14 & 0x1FF)) = v10;
      *(&v34 + 1) = v13 + 1;
      v6 = std::deque<Pipeline *>::erase((this + 424), v6, v7);
      v7 = v15;
      ++v8;
      v5 = *(this + 54);
      if (*(this + 55) != v5)
      {
        break;
      }

LABEL_6:
      if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  HGSynchronizable::Unlock(v4);
  if (*(&v34 + 1))
  {
    v16 = __p[1] + 8 * (v34 >> 9);
    if (v33 == __p[1])
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + 8 * (v34 & 0x1FF));
    }

    while (1)
    {
      if (v33 == __p[1])
      {
        if (!v17)
        {
          break;
        }
      }

      else if ((*(__p[1] + (((*(&v34 + 1) + v34) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v34 + 1) + v34) & 0x1FF)) == v17)
      {
        break;
      }

      (*(**v17 + 24))();
      v16 = std::deque<Pipeline *>::erase(__p, v16, v17);
      v17 = v18;
    }
  }

  v19 = *(this + 59);
  __rqtp.tv_sec = v19;
  LOBYTE(__rqtp.tv_nsec) = 0;
  HGSynchronizable::Lock(v19);
  v20 = this + 400;
  v21 = *(this + 51);
  if (v21 != (this + 400))
  {
    do
    {
      HGUserJob::SetState(*(v21 + 16), 4);
      ++v8;
      v21 = *(v21 + 8);
    }

    while (v21 != v20);
  }

  HGSynchronizable::Unlock(v19);
  if (a2)
  {
    while (1)
    {
      v22 = *(this + 59);
      HGSynchronizable::Lock(v22);
      v23 = *(this + 51);
      if (v23 == v20)
      {
        break;
      }

      while (*(*(v23 + 16) + 16) != 4)
      {
        v23 = *(v23 + 8);
        if (v23 == v20)
        {
          goto LABEL_31;
        }
      }

      HGSynchronizable::Unlock(v22);
      __rqtp = xmmword_260817850;
      nanosleep(&__rqtp, &__rmtp);
    }

LABEL_31:
    HGSynchronizable::Unlock(v22);
  }

  v24 = __p[1];
  v25 = v33;
  *(&v34 + 1) = 0;
  v26 = (v33 - __p[1]) >> 3;
  if (v26 >= 3)
  {
    do
    {
      operator delete(*v24);
      v25 = v33;
      v24 = (__p[1] + 8);
      __p[1] = v24;
      v26 = (v33 - v24) >> 3;
    }

    while (v26 > 2);
  }

  if (v26 == 1)
  {
    v27 = 256;
    goto LABEL_38;
  }

  if (v26 == 2)
  {
    v27 = 512;
LABEL_38:
    *&v34 = v27;
  }

  if (v24 != v25)
  {
    do
    {
      v28 = *v24++;
      operator delete(v28);
    }

    while (v24 != v25);
    if (v33 != __p[1])
    {
      *&v33 = v33 + ((__p[1] - v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_25FD28434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<HGNode *>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FD28468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, HGSynchronizable *);
  v8 = va_arg(va1, void);
  HGSynchronizer::~HGSynchronizer(va);
  std::deque<HGNode *>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetUserJob(HGRenderQueue *this, HGUserExecUnit *a2, HGUserJob **a3)
{
  v6 = *(this + 49);
  HGSynchronizable::Lock(v6);
  while ((HGRenderQueue::GetUserJobFromQueue(this, a2, a3) & 1) == 0)
  {
    *(a2 + 2) = 1;
    HGSynchronizable::Wait(v6);
    v7 = *(this + 43);
    HGSynchronizable::Lock(v7);
    v8 = *(this + 4);
    HGSynchronizable::Unlock(v7);
    if (v8 == 3)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:
  HGSynchronizable::Unlock(v6);
  return v9;
}

uint64_t HGRenderQueue::GetUserJobFromQueue(HGRenderQueue *this, HGUserExecUnit *a2, HGUserJob **a3)
{
  v6 = *(this + 59);
  HGSynchronizable::Lock(v6);
  *a3 = 0;
  if (*(this + 17))
  {
    printf("GetUserJobFromQueue: User Queue Size: %lu\n", *(this + 58));
  }

  if (*(this + 58))
  {
    v7 = *(this + 43);
    HGSynchronizable::Lock(v7);
    v8 = *(this + 4);
    HGSynchronizable::Unlock(v7);
    if (v8 != 2)
    {
      if (*(this + 58))
      {
        v9 = 0;
        while (1)
        {
          v10 = *(*(*(this + 54) + (((v9 + *(this + 57)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v9 + *(this + 57)) & 0x1FF));
          AlphaOperation = HGGLBlendingInfo::GetAlphaOperation(v10);
          if (!AlphaOperation)
          {
            break;
          }

          if (AlphaOperation == *(a2 + 6))
          {
            *a3 = v10;
            v16 = *(this + 54);
            v17 = (v16 + 8 * (*(this + 57) >> 9));
            if (*(this + 55) == v16)
            {
              v18 = 0;
              if (!v9)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v18 = (*v17 + 8 * (*(this + 57) & 0x1FFLL));
              if (!v9)
              {
                goto LABEL_31;
              }
            }

            v21 = &v18[-*v17] >> 3;
            v22 = v21 + v9;
            if (v21 + v9 < 1)
            {
              v24 = 511 - v9 - v21;
              LOWORD(v22) = ~v24;
              v17 -= 8 * (v24 >> 9);
            }

            else
            {
              v17 += 8 * (v22 >> 9);
            }

            v18 = (*v17 + 8 * (v22 & 0x1FF));
LABEL_31:
            std::deque<Pipeline *>::erase((this + 424), v17, v18);
            operator new();
          }

          if (++v9 >= *(this + 58))
          {
            goto LABEL_10;
          }
        }

        *a3 = v10;
        v13 = *(this + 54);
        v14 = (v13 + 8 * (*(this + 57) >> 9));
        if (*(this + 55) == v13)
        {
          v15 = 0;
          if (!v9)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v15 = (*v14 + 8 * (*(this + 57) & 0x1FFLL));
          if (!v9)
          {
            goto LABEL_28;
          }
        }

        v19 = &v15[-*v14] >> 3;
        v20 = v19 + v9;
        if (v19 + v9 < 1)
        {
          v23 = 511 - v9 - v19;
          LOWORD(v20) = ~v23;
          v14 -= 8 * (v23 >> 9);
        }

        else
        {
          v14 += 8 * (v20 >> 9);
        }

        v15 = (*v14 + 8 * (v20 & 0x1FF));
LABEL_28:
        std::deque<Pipeline *>::erase((this + 424), v14, v15);
        operator new();
      }

LABEL_10:
      if (*(this + 17))
      {
        puts("GetUserJobFromQueue: Incompatible user exec unit.");
      }

      v25 = *(this + 49);
      HGSynchronizable::Lock(v25);
      HGSynchronizable::NotifyAll(v25);
      HGSynchronizable::Unlock(v25);
    }
  }

  HGSynchronizable::Unlock(v6);
  return 0;
}

void sub_25FD2880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD2884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, HGSynchronizable *);
  v6 = va_arg(va1, void);
  HGSynchronizer::~HGSynchronizer(va);
  HGSynchronizer::~HGSynchronizer(va1);
  _Unwind_Resume(a1);
}

void sub_25FD28868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

HGSynchronizable *HGRenderQueue::EnqueueGPUReadbackJob(HGRenderQueue *this, HGGLContext **a2)
{
  v4 = *(this + 73);
  HGSynchronizable::Lock(v4);
  v5 = *(this + 69);
  v6 = *(this + 68);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(this + 72);
  v9 = v8 + *(this + 71);
  if (v7 == v9)
  {
    std::deque<HGGPUReadbackJob *>::__add_back_capacity(this + 67);
    v8 = *(this + 72);
    v6 = *(this + 68);
    v9 = *(this + 71) + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = a2;
  *(this + 72) = v8 + 1;
  (*(*a2 + 2))(a2);
  v10 = *(this + 17);
  if ((v10 & 0x1000) != 0)
  {
    v11 = *(this + 72);
LABEL_11:
    printf("EnqueueGPUReadbackJob: GPU Readback Queue Size: %lu\n", v11);
    goto LABEL_12;
  }

  if ((v10 & 0x2000) != 0)
  {
    v11 = *(this + 72);
    if (v11 >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  VirtualScreen = HGGLContext::getVirtualScreen(a2[4]);
  if (*(this + 72))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (HGGLContext::getVirtualScreen(*(*(*(*(this + 68) + (((v14 + *(this + 71)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + *(this + 71)) & 0x1FF)) + 32)) == VirtualScreen)
      {
        ++v13;
      }

      ++v14;
    }

    while (v14 < *(this + 72));
    v15 = v13 > *(this + 66);
  }

  else
  {
    v15 = 0;
  }

  HGRenderQueue::SetThrottleFlagOnVirtualScreen(this, VirtualScreen, v15);
  HGSynchronizable::Unlock(v4);
  v17 = *(this + 63);
  HGSynchronizable::Lock(v17);
  HGSynchronizable::NotifyAll(v17);
  return HGSynchronizable::Unlock(v17);
}

void sub_25FD28A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetGPUReadbackJob(HGRenderQueue *this, HGGLContext **a2, HGGPUReadbackJob **a3)
{
  v6 = *(this + 63);
  HGSynchronizable::Lock(v6);
  while ((HGRenderQueue::GetGPUReadbackJobFromQueue(this, a2, a3) & 1) == 0)
  {
    HGSynchronizable::Wait(v6);
    v7 = *(this + 43);
    HGSynchronizable::Lock(v7);
    v8 = *(this + 4);
    HGSynchronizable::Unlock(v7);
    if (v8 == 3)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:
  HGSynchronizable::Unlock(v6);
  return v9;
}

uint64_t HGRenderQueue::GetGPUReadbackJobFromQueue(HGRenderQueue *this, HGGLContext **a2, HGGPUReadbackJob **a3)
{
  *a3 = 0;
  if (*(this + 76) != 1)
  {
    goto LABEL_10;
  }

  VirtualScreen = HGGLContext::getVirtualScreen(a2[6]);
  v7 = *(this + 73);
  HGSynchronizable::Lock(v7);
  v8 = *(this + 75);
  if (v8 == (this + 592))
  {
    v10 = 1;
  }

  else
  {
    v9 = 0;
    do
    {
      if (HGGLContext::getVirtualScreen(*(*(v8 + 16) + 32)) == VirtualScreen)
      {
        ++v9;
      }

      v8 = *(v8 + 8);
    }

    while (v8 != (this + 592));
    v10 = v9 == 0;
  }

  HGSynchronizable::Unlock(v7);
  if (v10)
  {
LABEL_10:
    v11 = *(this + 73);
    HGSynchronizable::Lock(v11);
    if (*(this + 72))
    {
      v12 = *(this + 43);
      HGSynchronizable::Lock(v12);
      v13 = *(this + 4);
      HGSynchronizable::Unlock(v12);
      if (v13 != 2)
      {
        v14 = *(this + 72);
        if (v14)
        {
          v15 = 0;
          v16 = *(this + 71);
          v17 = *(this + 68);
          while (1)
          {
            v18 = *(*(v17 + (((v16 + v15) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v16 + v15) & 0x1FF));
            if (*(v18 + 16) == a2[2])
            {
              break;
            }

            if (++v15 >= v14)
            {
              goto LABEL_24;
            }
          }

          if ((*(*(*(v18 + 40) + 24) + 12) & 0x10) == 0)
          {
LABEL_21:
            *a3 = v18;
            v19 = (v17 + 8 * (v16 >> 9));
            if (*(this + 69) == v17)
            {
              v20 = 0;
              if (!v15)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v20 = (*v19 + 8 * (v16 & 0x1FF));
              if (!v15)
              {
                goto LABEL_30;
              }
            }

            v22 = (&v20[-*v19] >> 3) + v15;
            if (v22 < 1)
            {
              v23 = 511 - v22;
              v19 -= 8 * (v23 >> 9);
              v20 = (*v19 + 8 * (~v23 & 0x1FF));
            }

            else
            {
              v19 += 8 * (v22 >> 9);
              v20 = (*v19 + 8 * (v22 & 0x1FF));
            }

LABEL_30:
            std::deque<Pipeline *>::erase((this + 536), v19, v20);
            if ((*(this + 69) & 0x10) != 0)
            {
              printf("GetGPUReadbackJobFromQueue<%p>: GPU Readback Queue Size: %lu\n", a2, *(this + 72));
            }

            v24 = HGGLContext::getVirtualScreen(*(v18 + 32));
            if (HGRenderQueue::GetThrottleFlagOnVirtualScreen(this, v24))
            {
              if (!*(this + 72))
              {
                goto LABEL_39;
              }

              v25 = 0;
              v26 = 0;
              do
              {
                if (HGGLContext::getVirtualScreen(*(*(*(*(this + 68) + (((v26 + *(this + 71)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v26 + *(this + 71)) & 0x1FF)) + 32)) == v24)
                {
                  ++v25;
                }

                ++v26;
              }

              while (v26 < *(this + 72));
              if (v25 <= *(this + 66))
              {
LABEL_39:
                HGRenderQueue::SetThrottleFlagOnVirtualScreen(this, v24, 0);
              }
            }

            operator new();
          }

          if (HGRenderQueue::GetPBOFromSharedPool(this, a2, *(*(v17 + (((v16 + v15) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v16 + v15) & 0x1FF))))
          {
            v17 = *(this + 68);
            v16 = *(this + 71);
            goto LABEL_21;
          }
        }
      }
    }

LABEL_24:
    HGSynchronizable::Unlock(v11);
  }

  return 0;
}

void sub_25FD28EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void sub_25FD28F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderQueue::GetPBOFromSharedPool(HGRenderQueue *this, HGGPUReadbackExecUnit *a2, HGGLContext **a3)
{
  VirtualScreen = HGGLContext::getVirtualScreen(*(a2 + 6));
  if (VirtualScreen != HGGLContext::getVirtualScreen(a3[4]))
  {
    return 0;
  }

  v7 = (a2 + 64);
  if (*(a2 + 8))
  {
    return 1;
  }

  v12 = *(this + 80);
  v13 = 0;
  HGSynchronizable::Lock(v12);
  if ((*(this + 69) & 0x10) != 0)
  {
    if (*(this + 86))
    {
      v11.var0 = *(*(*(*(*(this + 82) + ((*(this + 85) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 85) & 0x1FFLL)) + 16) + 8);
      HGGLContext::Share();
    }

    printf("GetPBOFromSharedPool<%p>: Getting PBO for virtual screen %d.\n", a2, VirtualScreen);
    printf("GetPBOFromSharedPool<%p>: Num available PBOs : vs0: %d/%d  vs1: %d/%d\n", a2, 0, 0, 0, 0);
  }

  if (*(this + 86))
  {
    v10.var0 = *(*(*(*(*(this + 82) + ((*(this + 85) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 85) & 0x1FFLL)) + 16) + 8);
    HGGLContext::Share();
  }

  if (!*v7 && *(a2 + 9) < *(this + 65))
  {
    HGGLContext::context(&v9, *(a2 + 6));
    HGGLContext::Create();
  }

  if ((*(this + 69) & 0x30) != 0)
  {
    printf("GetPBOFromSharedPool<%p>: Warning: Max num PBOs in use (%lu in use: pboUnit for vs-%d).\n", a2, *(a2 + 9), VirtualScreen);
  }

  result = 0;
  *v7 = 0;
  if ((v13 & 1) == 0)
  {
    HGSynchronizable::Unlock(v12);
    return 0;
  }

  return result;
}

void sub_25FD29490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, PCSharedCount a14, char a15, PCSharedCount a16, char a17, uint64_t a18, HGSynchronizable *a19)
{
  PCSharedCount::PCSharedCount(&a14);
  HGObject::operator delete(v19);
  if (a18)
  {
    (*(*a18 + 24))(a18);
  }

  HGSynchronizer::~HGSynchronizer(&a19);
  _Unwind_Resume(a1);
}

void *std::deque<HGPixelBufferObj *>::push_back(void *result, void *a2)
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
    result = std::deque<HGPixelBufferObj *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t std::deque<HGRef<HGGLContext>>::push_back(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    std::deque<HGRef<HGGLContext>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = v7 + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  if (result)
  {
    result = (*(*result + 16))(result);
    v7 = a1[5];
  }

  a1[5] = v7 + 1;
  return result;
}

double HGTiming::GetMachTimeConversionFactor(HGTiming *this)
{
  if (qword_280C5E4D8 != -1)
  {
    HGRenderQueue::Drain();
  }

  return *&qword_280C5E4D0;
}

double ___ZN8HGTiming27GetMachTimeConversionFactorEv_block_invoke()
{
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result * 0.000000001 / v1;
    qword_280C5E4D0 = *&result;
  }

  return result;
}

void **std::deque<HGRef<HGGLContext>>::~deque[abi:ne200100](void **a1)
{
  std::deque<HGRef<HGGLContext>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<HGRef<HGGLContext>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v9 = v3 - v2;
    if (v9 < 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = a1[4];
  v5 = &v2[v4 >> 9];
  v6 = *v5 + 8 * (v4 & 0x1FF);
  v7 = *(v2 + (((a1[5] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v4) & 0x1FF);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 24))(*v6);
      }

      if (++v6 - *v5 == 4096)
      {
        v8 = v5[1];
        ++v5;
        v6 = v8;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v9 = v3 - v2;
  if (v9 >= 3)
  {
    do
    {
LABEL_11:
      operator delete(*v2);
      v10 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v9 = (v10 - v2) >> 3;
    }

    while (v9 > 2);
  }

LABEL_12:
  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = 512;
  }

  a1[4] = v11;
}

const void **std::deque<HGRenderJob *>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 32) = v5 + 512;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<HGNode **>::emplace_front<HGNode **>(a1, &v11);
}

void sub_25FD29D00(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

char *std::deque<HGRenderJob *>::__move_and_check(int a1, char *a2, char *__src, char *a4, char *a5, char *a6, char *__dst, unint64_t *a8)
{
  if (a5 != __src)
  {
    v10 = __src;
    v11 = a2;
    v12 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - (&__src[-*a2] >> 3);
    if (v12 >= 1)
    {
      do
      {
        v16 = *v11;
        v17 = *v11 + 4096;
        v18 = (v17 - v10) >> 3;
        if (v18 >= v12)
        {
          v19 = v12;
        }

        else
        {
          v19 = (v17 - v10) >> 3;
        }

        if (v18 <= v12)
        {
          v20 = *v11 + 4096;
        }

        else
        {
          v20 = &v10[8 * v12];
        }

        v21 = *a8;
        if (v10 <= *a8 && v21 < v20)
        {
          if (v10 != __dst)
          {
            v23 = (&__dst[-*a6] >> 3) - ((&v10[-v16] >> 3) + ((v11 - a6) << 6));
            if (v23)
            {
              v24 = v23 + ((v21 - v16) >> 3);
              if (v24 < 1)
              {
                v21 = *&v11[-8 * ((511 - v24) >> 9)] + 8 * (~(511 - v24) & 0x1FF);
              }

              else
              {
                v21 = *&v11[(v24 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v24 & 0x1FF);
              }
            }
          }

          *a8 = v21;
        }

        if (v10 != v20)
        {
          v33 = v19;
          v26 = *a6;
          a6 += 8;
          v25 = v26;
          v27 = v10;
          while (1)
          {
            v28 = (v25 - __dst + 4096) >> 3;
            if ((v20 - v27) >> 3 < v28)
            {
              v28 = (v20 - v27) >> 3;
            }

            v29 = 8 * v28;
            if (v28)
            {
              memmove(__dst, v27, 8 * v28);
            }

            v27 += v29;
            if (v27 == v20)
            {
              break;
            }

            v30 = *a6;
            a6 += 8;
            v25 = v30;
            __dst = v30;
          }

          __dst += v29;
          if ((*(a6 - 1) + 4096) == __dst)
          {
            __dst = *a6;
          }

          else
          {
            a6 -= 8;
          }

          v19 = v33;
        }

        if (v17 != v10)
        {
          v31 = v19 + (&v10[-*v11] >> 3);
          if (v31 < 1)
          {
            v14 = 511 - v31;
            v11 -= 8 * (v14 >> 9);
            v10 = (*v11 + 8 * (~v14 & 0x1FF));
          }

          else
          {
            v11 += 8 * (v31 >> 9);
            v10 = (*v11 + 8 * (v31 & 0x1FF));
          }
        }

        v15 = v12 <= v19;
        v12 -= v19;
      }

      while (!v15);
    }
  }

  return a6;
}

void *std::deque<HGRenderJob *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FD2A2CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

char *std::deque<HGRenderJob *>::__move_backward_and_check(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v10 = a5;
    v11 = a4;
    v12 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - (&a3[-*a2] >> 3);
    if (v12 >= 1)
    {
      while (1)
      {
        v14 = *v11;
        if (v10 == *v11)
        {
          v15 = *(v11 - 1);
          v11 -= 8;
          v14 = v15;
          v10 = v15 + 4096;
        }

        v16 = v10 - 8;
        v17 = (v10 - v14) >> 3;
        v18 = v17 >= v12 ? v12 : (v10 - v14) >> 3;
        v19 = v17 <= v12 ? v14 : &v10[-8 * v12];
        v20 = *a8;
        v21 = *a8 >= v10 || v19 > v20;
        if (!v21)
        {
          break;
        }

        if (v19 == v10)
        {
          goto LABEL_34;
        }

LABEL_25:
        v24 = *a6;
        while (1)
        {
          v25 = &a7[-v24] >> 3;
          if ((v10 - v19) >> 3 < v25)
          {
            v25 = (v10 - v19) >> 3;
          }

          v10 -= 8 * v25;
          a7 -= 8 * v25;
          if (v25)
          {
            memmove(a7, v10, 8 * v25);
          }

          if (v10 == v19)
          {
            break;
          }

          v26 = *(a6 - 1);
          a6 -= 8;
          v24 = v26;
          a7 = (v26 + 4096);
        }

        if ((*a6 + 4096) == a7)
        {
          v29 = *(a6 + 1);
          a6 += 8;
          a7 = v29;
          v27 = v18 - 1;
          if (v18 != 1)
          {
LABEL_35:
            v28 = (&v16[-*v11] >> 3) - v27;
            if (v28 < 1)
            {
              v30 = 511 - v28;
              v11 -= 8 * (v30 >> 9);
              v10 = (*v11 + 8 * (~v30 & 0x1FF));
            }

            else
            {
              v11 += 8 * (v28 >> 9);
              v10 = (*v11 + 8 * (v28 & 0x1FF));
            }

            goto LABEL_5;
          }
        }

        else
        {
LABEL_34:
          v27 = v18 - 1;
          if (v18 != 1)
          {
            goto LABEL_35;
          }
        }

        v10 = v16;
LABEL_5:
        v21 = v12 <= v18;
        v12 -= v18;
        if (v21)
        {
          return a6;
        }
      }

      if (v16 == a7)
      {
        v23 = ((v20 - v14) >> 3) - 1;
        if (v23 >= 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v22 = ~((v16 - v14) >> 3) + ((a6 - v11) << 6) + (&a7[-*a6] >> 3);
        if (!v22)
        {
LABEL_24:
          *a8 = v20;
          goto LABEL_25;
        }

        v23 = v22 + ((v20 - v14) >> 3);
        if (v23 >= 1)
        {
LABEL_21:
          v20 = *&v11[(v23 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v23 & 0x1FF);
          goto LABEL_24;
        }
      }

      v20 = *&v11[-8 * ((511 - v23) >> 9)] + 8 * (~(511 - v23) & 0x1FF);
      goto LABEL_24;
    }
  }

  return a6;
}

const void **std::deque<HGUserJob *>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 32) = v5 + 512;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<HGNode **>::emplace_front<HGNode **>(a1, &v11);
}

void sub_25FD2A908(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::deque<HGUserJob *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FD2ACB4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::deque<HGGPUReadbackJob *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FD2B07C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::deque<HGPixelBufferObj *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(a1, &v11);
}

void sub_25FD2B444(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::deque<HGRef<HGGLContext>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FD2B804(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void HGRenderQueue::EnqueueRenderJobWithPriority()
{
  dispatch_once(&qword_280C5E4C8, &__block_literal_global_31);
}

{
  dispatch_once(&qword_280C5E4D8, &__block_literal_global_90);
}

const char *HGNode::RenderPageDeluxeMetalTextures(uint64_t a1, HGGPURenderer **a2)
{
  MetalContext = HGGPURenderer::GetMetalContext(*a2);
  v5 = (*(*a1 + 520))(a1);
  switch(v5)
  {
    case 2:
      v12 = [*(MetalContext + 32) commandBuffer];
      (*(*a1 + 552))(a1, a2, v12);
      [v12 commit];
      HGGPURenderer::SetLastMetalCmdBuffer(*a2);
    case 3:
      v10 = *(MetalContext + 32);
      v11 = *(*a1 + 560);

      return v11(a1, a2, v10);
    case 4:
      v8 = *(*a1 + 568);

      return v8(a1, a2);
    default:

      return HGLogger::warning("HGNode::RenderPageDeluxeMetalTextures() could not find a valid rendering path.", v6, v7);
  }
}

void HGComicStroke::HGComicStroke(HGComicStroke *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872258E8;
  *(v1 + 408) = xmmword_2603427D0;
  *(v1 + 16) |= 0x620u;
}

void HGComicStroke::~HGComicStroke(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicStroke::SetParameter(HGComicStroke *this, int a2, float a3, float a4, float a5, float a6)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (*(this + 104) != a3)
      {
        *(this + 104) = a3;
        return 1;
      }
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      if (*(this + 105) != a3)
      {
        *(this + 105) = a3;
        return 1;
      }
    }

    return 0;
  }

  if (!a2)
  {
    if (*(this + 102) != a3)
    {
      *(this + 102) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return result;
  }

  if (*(this + 103) == a3)
  {
    return 0;
  }

  *(this + 103) = a3;
  return 1;
}

uint64_t HGComicStroke::GetDOD(HGComicStroke *this, HGRenderer *a2, int a3, HGRect a4)
{
  v13 = a4;
  if (a3)
  {
    return 0;
  }

  if (HGRect::IsInfinite(&v13))
  {
    return *&v13.var0;
  }

  v6 = *(this + 105);
  HGTransform::HGTransform(v12);
  HGTransform::Scale(v12, v6, v6, 1.0);
  v7 = *&v13.var0;
  v8 = *&v13.var2;
  v10 = HGTransformUtils::MinW(v9);
  *&v14.var0 = v8;
  DOD = HGTransformUtils::GetDOD(v12, v7, v14, 0.5, v10);
  HGTransform::~HGTransform(v12);
  return DOD;
}

uint64_t HGComicStroke::GetROI(HGComicStroke *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    v19 = a4;
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v16 = v15;
    *&v22.var0 = v14;
    *&v22.var2 = v16;
    HGRect::Grow(&v19, v22);
  }

  else if (a3)
  {
    v19 = HGRectNull;
  }

  else
  {
    v5 = *&a4.var0;
    v6 = *&a4.var2;
    v7 = 1.0 / *(this + 105);
    HGTransform::HGTransform(v18);
    HGTransform::Scale(v18, v7, v7, 1.0);
    *&v19.var0 = 0;
    *&v19.var2 = 0;
    v9 = HGTransformUtils::MinW(v8);
    *&v23.var0 = v6;
    *&v19.var0 = HGTransformUtils::GetROI(v18, v5, v23, 0.5, v9);
    *&v19.var2 = *&v20.var0;
    LODWORD(v10) = vcvtps_s32_f32(*(this + 102) + *(this + 102));
    *&v20.var2 = v10 | (v10 << 32);
    v20.var0 = -v10;
    v20.var1 = -v10;
    HGRect::Grow(&v19, v20);
    v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v13 = v12;
    *&v21.var0 = v11;
    *&v21.var2 = v13;
    HGRect::Grow(&v19, v21);
    HGTransform::~HGTransform(v18);
  }

  return *&v19.var0;
}

uint64_t HGComicStroke::RenderTile(HGComicStroke *this, HGTile *a2)
{
  v4 = *(this + 105);
  v5 = HGTile::Renderer(a2);
  v6 = (*(*this + 312))(this, v5);
  v8 = *a2;
  v91 = *(a2 + 3) - HIDWORD(*a2);
  if (v91 >= 1)
  {
    v94 = (*(a2 + 2) - v8.i32[0]);
    if (v94 >= 1)
    {
      v9 = v6;
      v10 = 0;
      *v11.f32 = vadd_f32(vcvt_f32_s32(v8), 0x3F0000003F000000);
      v11.i64[1] = 0x3F80000000000000;
      v12 = *(this + 102);
      v13 = 1.0 / (v12 * (v12 * 3.0));
      v14 = (v12 + v12);
      v15 = *(a2 + 2);
      v16 = -v14;
      v7.i64[0] = 0;
      v17 = 0uLL;
      __asm { FMOV            V6.4S, #-1.0 }

      v23 = 1.0 / v4;
      v24 = v11;
      v97 = _Q6;
      v98 = v11;
      v96 = 1.0 / v4;
      do
      {
        v93 = v10;
        v25 = 0;
        v92 = v24;
        v26 = v24;
        do
        {
          v31 = *(a2 + 10);
          v32 = *(a2 + 22);
          v33 = vsubq_f32(vmulq_n_f32(v26, v23), v11);
          if (v9)
          {
            v34 = vaddq_s32(vcvtq_s32_f32(v33), vcltzq_f32(v33));
            v35 = vsubq_f32(v33, vcvtq_f32_s32(v34)).u64[0];
            v36 = (v31 + 16 * (v34.i32[0] + v34.i32[1] * v32));
            v37 = vaddq_f32(*v36, vmulq_n_f32(vsubq_f32(v36[1], *v36), v35.f32[0]));
            v38 = vaddq_f32(v37, vmulq_lane_f32(vsubq_f32(vaddq_f32(v36[v32], vmulq_n_f32(vsubq_f32(v36[v32 + 1], v36[v32]), v35.f32[0])), v37), v35, 1));
          }

          else
          {
            v39.i64[0] = 0x3F0000003F000000;
            v39.i64[1] = 0x3F0000003F000000;
            v40 = vaddq_f32(v33, v39);
            v41 = vcvtq_s32_f32(v40);
            v40.i64[0] = vaddq_s32(v41, vcgtq_f32(vcvtq_f32_s32(v41), v40)).u64[0];
            v38 = *(v31 + 16 * (v40.i32[0] + v40.i32[1] * v32));
          }

          v42 = vdupq_lane_s32(*v38.i8, 1);
          v43 = v38;
          v43.i32[1] = 0;
          v44 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v7, v42), vcgeq_f32(v42, v7))), 0), v43, v38);
          v45 = vdupq_laneq_s32(v44, 2);
          v46 = v44;
          v46.i32[2] = 0;
          v7 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v7, v45), vcgeq_f32(v45, v7))), 0), v46, v44);
          v47 = v7;
          if (*(this + 104) != 0.0)
          {
            v48 = *(a2 + 12);
            v49 = *(a2 + 26);
            v50 = vsubq_f32(v26, v11);
            if (!v9)
            {
              v76.i64[0] = 0x3F0000003F000000;
              v76.i64[1] = 0x3F0000003F000000;
              v77 = vaddq_f32(v50, v76);
              v78 = vcvtq_s32_f32(v77);
              v46 = vcvtq_f32_s32(v78);
              v77.i64[0] = vaddq_s32(v78, vcgtq_f32(v46, v77)).u64[0];
              v47 = *(v48 + 16 * (v77.i32[0] + v77.i32[1] * v49));
              v95 = v47;
              v55 = 0.5;
              __asm { FMOV            V3.4S, #1.0 }

              if (v14 <= 1)
              {
                goto LABEL_6;
              }

              goto LABEL_14;
            }

            v51 = vaddq_s32(vcvtq_s32_f32(v50), vcltzq_f32(v50));
            v52 = vsubq_f32(v50, vcvtq_f32_s32(v51)).u64[0];
            v53 = (v48 + 16 * (v51.i32[0] + v51.i32[1] * v49));
            v54 = vaddq_f32(*v53, vmulq_n_f32(vsubq_f32(v53[1], *v53), v52.f32[0]));
            v46 = vsubq_f32(vaddq_f32(v53[v49], vmulq_n_f32(vsubq_f32(v53[v49 + 1], v53[v49]), v52.f32[0])), v54);
            v47 = vaddq_f32(v54, vmulq_lane_f32(v46, v52, 1));
          }

          v95 = v47;
          v55 = 0.5;
          __asm { FMOV            V3.4S, #1.0 }

          if (v14 <= 1)
          {
            goto LABEL_6;
          }

LABEL_14:
          v57 = vextq_s8(v7, v17, 4uLL).u64[0];
          v58 = vmaxnmq_f32(vminnmq_f32(vaddq_f32(vaddq_f32(v57, v57), _Q6), _Q3), _Q6);
          v59 = vnegq_f32(v58);
          v60 = vdup_n_s32(v32);
          v99 = _Q3;
          v100 = v26;
          if (v9)
          {
            v61 = -1;
            v62 = v32;
            do
            {
              v101 = v59;
              v103 = v58;
              v105 = v7;
              v63 = expf(v13 * v61);
              v26 = v100;
              v23 = v96;
              v11 = v98;
              v64 = vsubq_f32(vmulq_n_f32(vaddq_f32(v100, v103), v96), v98);
              v65 = vaddq_s32(vcvtq_s32_f32(v64), vcltzq_f32(v64));
              v64.i64[0] = vsubq_f32(v64, vcvtq_f32_s32(v65)).u64[0];
              v66 = vsubq_f32(vmulq_n_f32(vaddq_f32(v100, v101), v96), v98);
              v67 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
              *v65.i8 = vmla_s32(vzip1_s32(*v65.i8, *v67.i8), vzip2_s32(*v65.i8, *v67.i8), v60);
              v68 = v65.i32[1];
              v66.i64[0] = vsubq_f32(v66, vcvtq_f32_s32(v67)).u64[0];
              v69 = (v31 + 16 * v65.i32[0]);
              v55 = v55 + v63;
              v70 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), v64.f32[0]));
              _Q6 = v97;
              v71 = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v62], vmulq_n_f32(vsubq_f32(v69[v62 + 1], v69[v62]), v64.f32[0])), v70), *v64.f32, 1));
              v72 = (v31 + 16 * v68);
              v73 = vaddq_f32(*v72, vmulq_n_f32(vsubq_f32(v72[1], *v72), v66.f32[0]));
              v17 = 0uLL;
              v7 = v105;
              v46 = vaddq_f32(v73, vmulq_lane_f32(vsubq_f32(vaddq_f32(v72[v62], vmulq_n_f32(vsubq_f32(v72[v62 + 1], v72[v62]), v66.f32[0])), v73), *v66.f32, 1));
              _Q3 = v99;
              v7.f32[0] = v105.f32[0] + (v63 * vaddq_f32(v71, v46).f32[0]);
              v74 = vextq_s8(v71, 0, 4uLL).u64[0];
              v58 = vaddq_f32(v103, vmaxnmq_f32(vminnmq_f32(vaddq_f32(vaddq_f32(v74, v74), v97), v99), v97));
              v75 = vextq_s8(v46, 0, 4uLL).u64[0];
              v47 = vmaxnmq_f32(vminnmq_f32(vaddq_f32(vaddq_f32(v75, v75), v97), v99), v97);
              v59 = vaddq_f32(v101, v47);
              --v61;
            }

            while (v16 != v61);
          }

          else
          {
            v79 = -1;
            do
            {
              v102 = v59;
              v104 = v58;
              v106 = v7;
              v80 = expf(v13 * v79);
              v26 = v100;
              v23 = v96;
              _Q6 = v97;
              v11 = v98;
              v81.i64[0] = 0x3F0000003F000000;
              v81.i64[1] = 0x3F0000003F000000;
              v82 = vaddq_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(v100, v104), v96), v98), v81);
              v83 = vcvtq_s32_f32(v82);
              v84 = vaddq_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(v100, v102), v96), v98), v81);
              v85 = vcvtq_s32_f32(v84);
              v17 = 0uLL;
              *v84.f32 = vadd_s32(*v85.i8, *&vcgtq_f32(vcvtq_f32_s32(v85), v84));
              v7 = v106;
              *v82.f32 = vadd_s32(*v83.i8, *&vcgtq_f32(vcvtq_f32_s32(v83), v82));
              *v82.f32 = vmla_s32(vzip1_s32(*v82.f32, *v84.f32), vzip2_s32(*v82.f32, *v84.f32), v60);
              v86 = v82.i32[1];
              v87 = *(v31 + 16 * v82.i32[0]);
              v55 = v55 + v80;
              v46 = *(v31 + 16 * v86);
              _Q3 = v99;
              v7.f32[0] = v106.f32[0] + (v80 * vaddq_f32(v87, v46).f32[0]);
              v88 = vextq_s8(v87, 0, 4uLL).u64[0];
              v58 = vaddq_f32(v104, vmaxnmq_f32(vminnmq_f32(vaddq_f32(vaddq_f32(v88, v88), v97), v99), v97));
              v89 = vextq_s8(v46, 0, 4uLL).u64[0];
              v47 = vmaxnmq_f32(vminnmq_f32(vaddq_f32(vaddq_f32(v89, v89), v97), v99), v97);
              v59 = vaddq_f32(v102, v47);
              --v79;
            }

            while (v16 != v79);
          }

LABEL_6:
          v47.f32[0] = ((v7.f32[0] * 0.5) / v55) / 0.8;
          v7.i64[0] = 0;
          v46.i32[0] = 1.0;
          v47.f32[0] = fminf(fmaxf(v47.f32[0], 0.0), 1.0);
          v47.f32[0] = (v47.f32[0] * v47.f32[0]) * (3.0 - (v47.f32[0] + v47.f32[0]));
          v27 = vdupq_lane_s32(*v47.f32, 0);
          v28 = v95;
          v27.i32[3] = v95.i32[3];
          v29 = vmaxnmq_f32(vminnmq_f32(v27, _Q3), v17);
          v28.i32[0] = *(this + 103);
          v30 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v28, v46), 0), vmulq_laneq_f32(v29, v29, 3), v29);
          v30.i32[3] = v29.i32[3];
          *(v15 + 16 * v25) = v30;
          v26 = vaddq_f32(v26, xmmword_2603429B0);
          ++v25;
        }

        while (v25 != v94);
        v24 = vaddq_f32(v92, xmmword_2603429C0);
        v15 += 16 * *(a2 + 6);
        v10 = v93 + 1;
      }

      while (v93 + 1 != v91);
    }
  }

  return 0;
}

HGComicStroke *HGComicStroke::GetOutput(HGComicStroke *this, HGRenderer *a2, char *a3)
{
  HGNode::SetParameter(this, 0, *(this + 102), 0.0, 0.0, 0.0, a3);
  if (*(this + 103) == 1.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  HGNode::SetParameter(this, 1, v5, 0.0, 0.0, 0.0, v4);
  if (*(this + 104) == 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  HGNode::SetParameter(this, 2, v7, 0.0, 0.0, 0.0, v6);
  if (*(this + 104) == 0.0)
  {
    v9 = (*(*this + 128))(this, 0);
    (*(*this + 120))(this, 1, v9);
  }

  return this;
}

const char *HGComicStroke::GetProgram(HGComicStroke *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return "//Metal1.0     \n//LEN=0000000a29\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],   // color\n                                  texture2d< half >      hg_Texture1 [[ texture(1) ]],   // alpha replace\n                                  sampler                hg_Sampler0 [[ sampler(0) ]],\n                                  sampler                hg_Sampler1 [[ sampler(1) ]])\n{\n    const half sigma {static_cast<half>(hg_Params[0].x)};\n    const BOOL AlphaPremultiplyOutput {static_cast<BOOL>(hg_Params[1].x)};\n    const BOOL alphaReplaceEnabled {static_cast<BOOL>(hg_Params[2].x)};\n    \n    const half4 texel = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    const float alpha = alphaReplaceEnabled ? hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).a\n                                            : texel.a;\n    \n    // Get the 0'th normal (e0, for an exponent value of 0, so the coeff is 1.0)\n    float2 pointer = float2(texel.yz) * 2.0f - 1.0f;\n    float2 pointerRBack = -pointer;\n    \n    half acc = texel.x;\n    half norma = {0.5h};\n\n    half sigma3 = 1.0h / (3.0h * sigma * sigma);\n    half limit = 2.0h * sigma;\n    for (half i = 1.0h; i < limit; i++)\n    {\n        half coeff = exp(-i * sigma3);\n        norma += coeff;\n        \n        const float2 uPos = frag._texCoord0.xy + pointer;\n        const float2 uNeg = frag._texCoord0.xy + pointerRBack;\n        \n        const float2 acc_ptrTexCoord = uPos;\n        const float2 acc_ptrBackTexCoord = uNeg;\n        \n        const float2 grad_ptrTexCoord = uPos;\n        const float2 grad_ptrBackTexCoord = uNeg;\n\n    \n        acc += coeff * (hg_Texture0.sample(hg_Sampler0, acc_ptrTexCoord).x +\n                        hg_Texture0.sample(hg_Sampler0, acc_ptrBackTexCoord).x);\n\n        pointer += float2(hg_Texture0.sample(hg_Sampler0, grad_ptrTexCoord).yz * 2.0f) - 1.0f;\n        pointerRBack -= float2(hg_Texture0.sample(hg_Sampler0, grad_ptrBackTexCoord).yz * 2.0f) - 1.0f;\n    }\n\n    half result {smoothstep(0.0h, 0.8h, acc * 0.5h / norma)};\n \n    if (AlphaPremultiplyOutput)\n        result *= alpha;\n \n    FragmentOut out {float4(result, result, result, alpha)};\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n\n    return out;\n}\n//MD5=cf23531d:c7d2f03d:785bd60d:1958694a\n//SIG=00000000:00000000:00000000:00000003:0010:0003:0000:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return "//GLfs1.0      \n//LEN=0000000944\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#define defaultp mediump\n#endif\n \nprecision highp float;\nprecision highp int;\n\nuniform defaultp sampler2DRect hg_Texture0; // color\nuniform defaultp sampler2DRect hg_Texture1; // alpha replace\n\nuniform highp vec4 hg_ProgramLocal0;    // {.x == sigma}\nuniform highp vec4 hg_ProgramLocal1;    // {.x == alpha premultiply output toggle}\nuniform highp vec4 hg_ProgramLocal2;    // {.x == alpha replace toggle}\n\nvoid main() \n{\n    float sigma = hg_ProgramLocal0.x;\n    float alphaPremultiplyOutput = hg_ProgramLocal1.x;\n    float alphaReplaceEnabled = hg_ProgramLocal2.x;\n \n    vec4 texel = texture2DRect(hg_Texture0, gl_TexCoord[0].xy);\n    float alpha = (alphaReplaceEnabled != 0.0)  ? texture2DRect(hg_Texture1, gl_TexCoord[1].xy).a\n                                                : texel.a;\n    \n\n    float acc = texel.x;\n    float norma = 0.5;\n    \n    vec2 gradient = texel.yz;\n    vec2 vdire = vec2(gradient.x * 2.0 - 1.0, gradient.y * 2.0 - 1.0);\n    vec2 pointer = vec2(vdire.x, vdire.y);\n\n    vdire = vec2(-(gradient.x * 2.0 - 1.0), -(gradient.y * 2.0 - 1.0));\n    vec2 pointerRBack = vec2(vdire.x, vdire.y);\n\n    float sigma3 = 1.0 / (3.0 * sigma * sigma);\n    float limit = 2.0 * sigma;\n    for (float i = 1.0; i < limit; i++)\n    {\n        float coeff = exp(-i * sigma3);\n        \n        vec2 uPos = gl_TexCoord[0].xy + pointer;\n        vec2 uNeg = gl_TexCoord[0].xy + pointerRBack;\n\n        acc +=coeff * (texture2DRect(hg_Texture0, uPos).x +\n                       texture2DRect(hg_Texture0, uNeg).x);\n\n        norma += coeff;\n\n        gradient = texture2DRect(hg_Texture0, uPos).yz;\n        vdire = vec2(gradient.x * 2.0 - 1.0, gradient.y * 2.0 - 1.0);\n        pointer += vdire;\n\n        gradient = texture2DRect(hg_Texture0, uNeg).yz;\n        vdire = vec2(-(gradient.x * 2.0 - 1.0),-(gradient.y * 2.0 - 1.0));\n        pointerRBack += vdire;\n    }\n\n    float result = smoothstep(0.0, 0.8, acc * 0.5 / norma);\n \n    if (alphaPremultiplyOutput == 1.0)\n        result *= alpha;\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(vec4(result, result, result, alpha), 0.0, 1.0);\n}\n//MD5=3f28c492:3ede71fa:6537a9ca:f282928b\n//SIG=00000000:00000000:00000000:00000000:0038:0003:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  return 0;
}

uint64_t HGComicStroke::BindTexture(HGComicStroke *this, HGHandler *a2, uint64_t a3)
{
  if (a3)
  {
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
  }

  else
  {
    v5 = 1.0 / *(this + 105);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    (*(*a2 + 104))(a2, v5, v5, 1.0);
  }

  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t HGCSolidColor::GetDOD(HGCSolidColor *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = (this + 416);
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void HGSolidColor::HGSolidColor(HGSolidColor *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287225B50;
  v2 = HGObject::operator new(0x1B0uLL);
  HgcSolidColor::HgcSolidColor(v2);
}

void sub_25FD2C7F0(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGSolidColor::HGSolidColor(HGSolidColor *this, HGRect a2)
{
  HGNode::HGNode(this);
  *v2 = &unk_287225B50;
  v3 = HGObject::operator new(0x1B0uLL);
  HgcSolidColor::HgcSolidColor(v3);
}

void sub_25FD2C8A8(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGSolidColor::~HGSolidColor(HGSolidColor *this)
{
  *this = &unk_287225B50;
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  *this = &unk_287225B50;
  (*(**(this + 51) + 24))(*(this + 51));
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGSolidColor::GetOutput(HGNode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 51);
}

void HGCSolidColor::~HGCSolidColor(HGNode *this)
{
  HgcSolidColor::~HgcSolidColor(this);

  HGObject::operator delete(v1);
}

void HGCVBufferPairStorage::HGCVBufferPairStorage(HGCVBufferPairStorage *this, HGCVBitmap *a2, __CVBuffer *a3)
{
  HGObject::HGObject(this);
  *v6 = &unk_287226020;
  v6[2] = a2;
  v6[3] = a3;
  (*(*a2 + 16))(a2);
  CFRetain(*(this + 3));
}

void HGCVBufferPairStorage::~HGCVBufferPairStorage(CFTypeRef *this)
{
  *this = &unk_287226020;
  CFRelease(this[3]);
  (*(*this[2] + 24))(this[2]);

  HGObject::~HGObject(this);
}

{
  *this = &unk_287226020;
  CFRelease(this[3]);
  (*(*this[2] + 24))(this[2]);
  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

uint64_t HGApplyNDLUTInfo::HGApplyNDLUTInfo(uint64_t result, uint64_t a2, unint64_t a3, int a4, float a5, float a6)
{
  *result = &unk_287226070;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *(result + 32) = a4;
  if (a3 <= 3)
  {
    if (a3 == 3)
    {
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  *(result + 16) = v6;
  return result;
}

void *HGApplyNDLUTInfo::isEqual(uint64_t a1, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    if (*(a1 + 8) == *(result + 1) && *(a1 + 16) == *(result + 2) && vabds_f32(*(a1 + 24), *(result + 6)) < 0.0001 && vabds_f32(*(a1 + 28), *(result + 7)) < 0.0001)
    {
      return (*(a1 + 32) == *(result + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void HGApplyNDLUTInfo::colorAtIndex(HGApplyNDLUTInfo *this, float a2, float a3, float a4, float *a5, float *a6, float *a7, float *a8)
{
  *a5 = 0.0;
  *a6 = 0.0;
  *a7 = 0.0;
  *a8 = 0.0;
}

void *HGApplyNDLUTEntry::HGApplyNDLUTEntry(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = HGLUTCache::LUTEntry::LUTEntry(a1, a2, a3);
  *v5 = &unk_2872260C0;
  v5[3] = 0;
  v6 = (v5 + 3);
  v5[4] = 0;
  if (v3)
  {
  }

  v7 = *(v3 + 2);
  if (*(v3 + 2) == 1)
  {
    v9 = HGRectMake4i(0, 0, v7 + 1, 1u);
    v10 = v8;
    if ((v8 - v9) < 0x801uLL)
    {
      goto LABEL_8;
    }

    v11 = HGRectMake4i(0, 0, 0x800u, ((v8 - v9) >> 11) + 1);
  }

  else
  {
    v11 = HGRectMake4i(0, 0, v7 * v7 + 1, v7 + 1);
  }

  v9 = v11;
  v10 = v12;
LABEL_8:
  v13 = *(v3 + 8);
  if (v13 == 1)
  {
    v14 = 27;
  }

  else
  {
    v14 = 28;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 25;
  }

  v16 = HGFormatUtils::bytesPerPixel(v15);
  v17 = HGObject::operator new(0x20uLL);
  HGMemory::StorageObject::StorageObject(v17, ((HIDWORD(v10) - HIDWORD(v9)) * (v10 - v9) * v16));
  v18 = *(v17 + 2);
  v19 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v19, v9, v10, v15, v18);
  v20 = *v6;
  if (*v6 == v19)
  {
    if (v19)
    {
      (*(*v19 + 24))(v19);
      v20 = *v6;
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 24))(v20);
    }

    *v6 = v19;
    v20 = v19;
  }

  HGBitmap::SetStorage(v20, v17);
  HGApplyNDLUTEntry::CopyData(a1, v3);
  (*(*v17 + 24))(v17);
  return a1;
}

void sub_25FD2CFF8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  if (*v2)
  {
    (*(**v2 + 24))(*v2);
  }

  HGLUTCache::LUTEntry::~LUTEntry(v1);
  _Unwind_Resume(a1);
}

uint64_t HGApplyNDLUTEntry::CopyData(uint64_t this, const HGApplyNDLUTInfo *a2)
{
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  v5 = *(a2 + 7);
  v6 = *(a2 + 6) / (v4 - 1);
  *v62 = 0;
  v61 = 0.0;
  v60 = 0.0;
  v50 = this;
  v7 = *(this + 24);
  v8 = *(v7 + 16);
  if (v3 == 1)
  {
    v9 = *(v7 + 80);
    if (v8 == 27)
    {
      if (v4)
      {
        v10 = 0.0;
        v54 = vdupq_n_s32(0x47800000u);
        v57 = vdupq_n_s32(0xC7800000);
        v51 = vdupq_n_s32(0x7800000u);
        do
        {
          this = (*(*a2 + 32))(a2, &v62[1], v62, &v61, &v60, v5 + (v6 * v10), 0.0, 0.0);
          v11.i64[0] = __PAIR64__(v62[0], v62[1]);
          v11.i64[1] = __PAIR64__(LODWORD(v60), LODWORD(v61));
          v12 = vbslq_s8(vcgtq_f32(v57, v11), v57, v11);
          v13 = vmulq_f32(vbslq_s8(vcgtq_f32(v12, v54), v54, v12), v51);
          *v9++ = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v13, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v13, xmmword_260816CD0), xmmword_260816CE0)));
          v10 = v10 + 1.0;
          --v4;
        }

        while (v4);
      }

      else
      {
        v11 = 0uLL;
      }

      v44 = vdupq_n_s32(0xC7800000);
      v45 = vbslq_s8(vcgtq_f32(v44, v11), v44, v11);
      v46 = vdupq_n_s32(0x47800000u);
      v47 = vmulq_f32(vbslq_s8(vcgtq_f32(v45, v46), v46, v45), vdupq_n_s32(0x7800000u));
      *v9 = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v47, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v47, xmmword_260816CD0), xmmword_260816CE0)));
    }

    else
    {
      if (v4)
      {
        v22 = 0.0;
        v23 = *(v7 + 80);
        do
        {
          this = (*(*a2 + 32))(a2, &v62[1], v62, &v61, &v60, v5 + (v6 * v22), 0.0, 0.0);
          v24 = v62[1];
          v23->i32[0] = v62[1];
          v25 = v61;
          v23->i32[1] = v62[0];
          *v23[1].i32 = v25;
          v9 = v23 + 2;
          *&v23[1].i32[1] = v60;
          v22 = v22 + 1.0;
          v23 += 2;
          --v4;
        }

        while (v4);
      }

      else
      {
        v24 = 0;
      }

      v9->i32[0] = v24;
      v48 = v61;
      v9->i32[1] = v62[0];
      *v9[1].i32 = v48;
      *&v9[1].i32[1] = v60;
    }
  }

  else if (v8 == 25)
  {
    if (v4)
    {
      v32 = 0;
      v53 = *(v7 + 80);
      __asm { FMOV            V1.4S, #1.0 }

      v56 = vdupq_n_s32(0x477FFF00u);
      v59 = _Q1;
      do
      {
        v38 = 0;
        v39 = v53 + *(*(v50 + 24) + 64) * v32;
        do
        {
          v40 = 0;
          for (i = 0; i != v4; ++i)
          {
            this = (*(*a2 + 32))(a2, &v62[1], v62, &v61, &v60, v5 + (v6 * i), v5 + (v6 * v38), v5 + (v6 * v32));
            v42.i64[0] = __PAIR64__(v62[0], v62[1]);
            v42.i64[1] = __PAIR64__(LODWORD(v60), LODWORD(v61));
            v43 = vmulq_f32(vmaxnmq_f32(vminnmq_f32(v42, v59), 0), v56);
            *v62 = __PAIR64__(v43.u32[0], v43.u32[1]);
            v60 = v43.f32[3];
            v61 = v43.f32[2];
            *(v39 + 8 * i) = vmovn_s32(vcvtq_u32_f32(v43));
            v40 -= 8;
          }

          ++v38;
          v39 -= v40;
        }

        while (v38 != v4);
        ++v32;
      }

      while (v32 != v4);
    }
  }

  else if (v8 == 28)
  {
    if (v4)
    {
      v26 = 0;
      v27 = *(v7 + 80);
      do
      {
        v28 = 0;
        v29 = (v27 + *(*(v50 + 24) + 64) * v26);
        do
        {
          for (j = 0; j != v4; ++j)
          {
            this = (*(*a2 + 32))(a2, &v62[1], v62, &v61, &v60, v5 + (v6 * j), v5 + (v6 * v28), v5 + (v6 * v26));
            *v29 = (*&v62[1] - v5) / v6;
            v31 = (v61 - v5) / v6;
            v29[1] = (*v62 - v5) / v6;
            v29[2] = v31;
            v29[3] = (v60 - v5) / v6;
            v29 += 4;
          }

          ++v28;
        }

        while (v28 != v4);
        ++v26;
      }

      while (v26 != v4);
    }
  }

  else if (v8 == 27 && v4)
  {
    v14 = 0;
    v49 = *(v7 + 80);
    v55 = vdupq_n_s32(0x47800000u);
    v58 = vdupq_n_s32(0xC7800000);
    v52 = vdupq_n_s32(0x7800000u);
    do
    {
      v15 = 0;
      v16 = v49 + *(*(v50 + 24) + 64) * v14;
      do
      {
        v17 = 0;
        for (k = 0; k != v4; ++k)
        {
          this = (*(*a2 + 32))(a2, &v62[1], v62, &v61, &v60, v5 + (v6 * k), v5 + (v6 * v15), v5 + (v6 * v14));
          v19.i64[0] = __PAIR64__(v62[0], v62[1]);
          v19.i64[1] = __PAIR64__(LODWORD(v60), LODWORD(v61));
          v20 = vbslq_s8(vcgtq_f32(v58, v19), v58, v19);
          v21 = vmulq_f32(vbslq_s8(vcgtq_f32(v20, v55), v55, v20), v52);
          *(v16 + 8 * k) = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v21, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v21, xmmword_260816CD0), xmmword_260816CE0)));
          v17 -= 8;
        }

        ++v15;
        v16 -= v17;
      }

      while (v15 != v4);
      ++v14;
    }

    while (v14 != v4);
  }

  return this;
}

void HGApplyNDLUTEntry::~HGApplyNDLUTEntry(HGApplyNDLUTEntry *this)
{
  *this = &unk_2872260C0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);
}

{
  *this = &unk_2872260C0;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t HGApplyNDLUTEntry::GetBitmap(HGApplyNDLUTEntry *this)
{
  v2 = *(this + 2);
  {
    v6 = *(this + 3);
    v7 = this + 24;
    if (!v6)
    {
      return *v7;
    }

    goto LABEL_11;
  }

  v7 = this + 32;
  v6 = *(this + 4);
  if (v6)
  {
    goto LABEL_11;
  }

  MetalContext = HGGPURenderer::GetMetalContext(v5);
  HGMetalTexture::createWithCopy(*(*(MetalContext + 16) + 16), 0, *(this + 3), *(*(this + 3) + 20), *(*(this + 3) + 28), 0, 0, &v11);
  v9 = *(this + 4);
  v6 = v11;
  if (v9 == v11)
  {
    if (!v9)
    {
      return *v7;
    }

    (*(*v11 + 24))();
    v6 = *v7;
    if (!*v7)
    {
      return *v7;
    }

LABEL_11:
    (*(*v6 + 16))(v6);
    return *v7;
  }

  if (v9)
  {
    (*(*v9 + 24))(*(this + 4));
    v6 = v11;
  }

  *v7 = v6;
  if (v6)
  {
    goto LABEL_11;
  }

  return *v7;
}

void sub_25FD2DA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void HGInvertAlpha::HGInvertAlpha(HGInvertAlpha *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287226100;
  v3 = HGObject::operator new(0x1A0uLL);
  HgcInvertAlpha::HgcInvertAlpha(v3);
  *(this + 51) = v3;
}

void sub_25FD2DB38(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGInvertAlpha::~HGInvertAlpha(HGInvertAlpha *this)
{
  *this = &unk_287226100;
  (*(**(this + 51) + 24))(*(this + 51));

  HGNode::~HGNode(this);
}

{
  *this = &unk_287226100;
  (*(**(this + 51) + 24))(*(this + 51));
  HGNode::~HGNode(this);

  HGObject::operator delete(v2);
}

uint64_t HGInvertAlpha::GetOutput(HGInvertAlpha *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  v4 = (*(*this + 128))(this, 0);
  (*(*v3 + 120))(v3, 0, v4);
  return *(this + 51);
}

const char *HGFractured::GetProgram(HGNode *this, HGRenderer *a2)
{
  v4 = *(this + 432);
  Input = HGRenderer::GetInput(a2, this, 1u);
  v6 = *(this + 53);
  if (v4)
  {
    if (Input)
    {
      if (*(v6 + 140))
      {
        if ((*(v6 + 144) & 1) != 0 || *(v6 + 136) != 0.0)
        {
          if ((*(*a2 + 128))(a2, 46))
          {
            return "//GLfs1.0      \n//LEN=000000054d\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nuniform vec4 hg_ProgramLocal2;\nuniform vec4 hg_ProgramLocal3;\nuniform vec4 hg_ProgramLocal4;\nuniform vec4 hg_ProgramLocal5;\nuniform vec4 hg_ProgramLocal6;\nvoid main()\n{\n    vec3 N = gl_TexCoord[2].xyz*sign(gl_TexCoord[2].z);\n    vec4 color;\n    if (gl_TexCoord[2].w >= 0.) { color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w); color.w *= hg_ProgramLocal0.y; } else { color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, -1. - gl_TexCoord[2].w); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=048203a4:140c5dea:13afe2b7:7d78bf90\n//SIG=01000000:00000000:00000000:00000000:0008:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
          }

          else
          {
            return "//GLfs2.0      \n//LEN=0000000621\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvoid main()\n{\n    defaultp vec3 N = hg_TexCoord2.xyz*sign(hg_TexCoord2.z);\n    defaultp vec4 color;\n    if (hg_TexCoord2.w >= 0.) { color = texture2D(hg_Texture0, hg_TexCoord0.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w); color.w *= hg_ProgramLocal0.y; } else { color = texture2D(hg_Texture1, hg_TexCoord1.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, -1. - hg_TexCoord2.w); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=6d683b18:e19499dd:89a80eed:33f6c6d3\n//SIG=01000000:00000000:00000000:00000000:0008:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
          }
        }

        else if ((*(*a2 + 128))(a2, 46))
        {
          return "//GLfs1.0      \n//LEN=000000053e\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nuniform vec4 hg_ProgramLocal2;\nuniform vec4 hg_ProgramLocal3;\nuniform vec4 hg_ProgramLocal4;\nuniform vec4 hg_ProgramLocal5;\nuniform vec4 hg_ProgramLocal6;\nvoid main()\n{\n    vec3 N = gl_TexCoord[2].xyz*sign(gl_TexCoord[2].z);\n    vec4 color;\n    if (gl_TexCoord[2].w >= 0.) { color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(gl_TexCoord[2].z >= 0.)); color.w *= hg_ProgramLocal0.y; } else { color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(gl_TexCoord[2].z >= 0.)); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=96f478a4:68ca6376:eca3120a:0382949c\n//SIG=01000000:00000000:00000000:00000000:000b:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
        }

        else
        {
          return "//GLfs2.0      \n//LEN=0000000640\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvoid main()\n{\n\n    defaultp vec3 N = hg_TexCoord2.xyz*sign(hg_TexCoord2.z);\n    defaultp vec4 color;\n    if (hg_TexCoord2.w >= 0.) { color = texture2D(hg_Texture0, hg_TexCoord0.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(hg_TexCoord2.z >= 0.)); color.w *= hg_ProgramLocal0.y; } else { color = texture2D(hg_Texture1, hg_TexCoord1.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(hg_TexCoord2.z >= 0.)); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=6512e0e9:9aceb198:492c6c92:460f64b9\n//SIG=01000000:00000000:00000000:00000000:000b:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
        }
      }

      else if ((*(*a2 + 128))(a2, 46))
      {
        return "//GLfs1.0      \n//LEN=00000004b6\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nuniform vec4 hg_ProgramLocal2;\nuniform vec4 hg_ProgramLocal3;\nuniform vec4 hg_ProgramLocal4;\nuniform vec4 hg_ProgramLocal5;\nuniform vec4 hg_ProgramLocal6;\nvoid main()\n{\n    vec3 N = gl_TexCoord[2].xyz*sign(gl_TexCoord[2].z);\n    vec4 color;\n    if (gl_TexCoord[2].z > 0.) color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); else color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=1ffc5b22:dfce327a:09069485:c32701b3\n//SIG=01000000:00000000:00000000:00000000:0007:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }

      else
      {
        return "//GLfs2.0      \n//LEN=00000005ba\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvoid main()\n{\n    defaultp vec3 N = hg_TexCoord2.xyz*sign(hg_TexCoord2.z);\n    defaultp vec4 color;\n    if (hg_TexCoord2.z >= 0.) color = texture2D(hg_Texture0, hg_TexCoord0.xy); else color = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=730c0ffa:a53248be:33a85183:f0cac4ce\n//SIG=01000000:00000000:00000000:00000000:0007:0007:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }
    }

    v8 = *(v6 + 144);
    v9 = (*(*a2 + 128))(a2, 46);
    v10 = "//GLfs1.0      \n//LEN=000000046a\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nuniform vec4 hg_ProgramLocal2;\nuniform vec4 hg_ProgramLocal3;\nuniform vec4 hg_ProgramLocal4;\nuniform vec4 hg_ProgramLocal5;\nuniform vec4 hg_ProgramLocal6;\nvoid main()\n{\n    vec3 N = gl_TexCoord[2].xyz*sign(gl_TexCoord[2].z);\n    vec4 color;\n    color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=50bcc0cd:7bd315ab:4e84c0b7:5357fb32\n//SIG=01000000:00000000:00000000:00000000:0006:0007:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    v11 = v9 == 0;
    v12 = "//GLfs1.0      \n//LEN=00000004aa\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nuniform vec4 hg_ProgramLocal2;\nuniform vec4 hg_ProgramLocal3;\nuniform vec4 hg_ProgramLocal4;\nuniform vec4 hg_ProgramLocal5;\nuniform vec4 hg_ProgramLocal6;\nvoid main()\n{\n    vec3 N = gl_TexCoord[2].xyz*sign(gl_TexCoord[2].z);\n    vec4 color;\n    color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy);\n    if (gl_TexCoord[2].z < 0.) color.xyz = hg_ProgramLocal1.xyz;\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=84c0772d:b3f43045:cf620bf2:2131a68a\n//SIG=01000000:00000000:00000000:00000000:0007:0007:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    if (!v9)
    {
      v10 = "//GLfs2.0      \n//LEN=0000000522\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvoid main()\n{\n    defaultp vec3 N = hg_TexCoord2.xyz*sign(hg_TexCoord2.z);\n    defaultp vec4 color;\n    color = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=3d5aef97:d57d9f0c:eb222e68:4e70c3a7\n//SIG=01000000:00000000:00000000:00000000:0006:0007:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    }

    v13 = "//GLfs2.0      \n//LEN=0000000560\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvoid main()\n{\n    defaultp vec3 N = hg_TexCoord2.xyz*sign(hg_TexCoord2.z);\n    defaultp vec4 color;\n    color = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    if (hg_TexCoord2.z < 0.) color.xyz = hg_ProgramLocal1.xyz;\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t color.xyz *= hg_ProgramLocal4.w*max(dot(N, hg_ProgramLocal4.xyz), 0.);\n    color.xyz += hg_ProgramLocal3.w*hg_ProgramLocal3.xyz;\n    color.xyz += hg_ProgramLocal5.xyz*pow(max(reflect(-hg_ProgramLocal6.xyz, N).z, 0.), hg_ProgramLocal5.w);\n    color.xyz = mix(color.xyz, hg_ProgramLocal2.xyz, clamp(hg_ProgramLocal6.w*(1. - gl_FragCoord.w), 0., 1.));\n    gl_FragColor = color;\n}\n//MD5=db130e93:74ff1d49:d5dadf6b:55aa0d76\n//SIG=01000000:00000000:00000000:00000000:0007:0007:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
  }

  else
  {
    if (Input)
    {
      if (*(v6 + 140))
      {
        if ((*(v6 + 144) & 1) != 0 || *(v6 + 136) != 0.0)
        {
          if ((*(*a2 + 128))(a2, 46))
          {
            return "//GLfs1.0      \n//LEN=0000000319\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nvoid main()\n{\n    vec4 color;\n    if (gl_TexCoord[2].w >= 0.) { color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w); color.w *= hg_ProgramLocal0.y; } else { color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, -1. - gl_TexCoord[2].w); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=f673426c:e4b2910d:9e07361f:3e827073\n//SIG=01000000:00000000:00000000:00000000:0003:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
          }

          else
          {
            return "//GLfs2.0      \n//LEN=00000003bc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvoid main()\n{\n\n    defaultp vec4 color;\n    if (hg_TexCoord2.w >= 0.) { color = texture2D(hg_Texture0, hg_TexCoord0.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w); color.w *= hg_ProgramLocal0.y; } else { color = texture2D(hg_Texture1, hg_TexCoord1.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, -1. - hg_TexCoord2.w); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=d7802c70:56f4148a:7de1731f:a6628685\n//SIG=01000000:00000000:00000000:00000000:0003:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
          }
        }

        else if ((*(*a2 + 128))(a2, 46))
        {
          return "//GLfs1.0      \n//LEN=000000030a\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nvoid main()\n{\n    vec4 color;\n    if (gl_TexCoord[2].w >= 0.) { color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(gl_TexCoord[2].z >= 0.)); color.w *= hg_ProgramLocal0.y; } else { color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(gl_TexCoord[2].z >= 0.)); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=153a8d02:f92fde9d:5699771f:c33d93d6\n//SIG=01000000:00000000:00000000:00000000:0006:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
        }

        else
        {
          return "//GLfs2.0      \n//LEN=00000003da\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvoid main()\n{\n\n    defaultp vec4 color;\n    if (hg_TexCoord2.w >= 0.) { color = texture2D(hg_Texture0, hg_TexCoord0.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(hg_TexCoord2.z >= 0.)); color.w *= hg_ProgramLocal0.y; } else { color = texture2D(hg_Texture1, hg_TexCoord1.xy); color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, 1. - float(hg_TexCoord2.z >= 0.)); color.w *= hg_ProgramLocal0.w; }\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=b073f2bb:326233fb:1e6214d5:44610998\n//SIG=01000000:00000000:00000000:00000000:0006:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
        }
      }

      else if ((*(*a2 + 128))(a2, 46))
      {
        return "//GLfs1.0      \n//LEN=00000002b0\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform sampler2DRect hg_Texture1;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nvoid main()\n{\n    vec4 color;\n    if (gl_TexCoord[2].z >= 0.) color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy); else color = texture2DRect(hg_Texture1, gl_TexCoord[1].xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=8e12dae5:052ec9c0:5f3a6a16:1b06dafe\n//SIG=01000000:00000000:00000000:00000000:0002:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }

      else
      {
        return "//GLfs2.0      \n//LEN=0000000355\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvoid main()\n{\n\n    defaultp vec4 color;\n    if (hg_TexCoord2.z >= 0.) color = texture2D(hg_Texture0, hg_TexCoord0.xy); else color = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=fb2a20d4:43fc0741:04bdeaa2:d1f82ff2\n//SIG=01000000:00000000:00000000:00000000:0002:0002:0000:0000:0000:0000:0000:0000:0003:02:0:1:0\n";
      }
    }

    v8 = *(v6 + 144);
    v14 = (*(*a2 + 128))(a2, 46);
    v10 = "//GLfs1.0      \n//LEN=0000000236\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nvoid main()\n{\n    vec4 color;\n    color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=d2fdd930:3bbc72e9:2dad14b9:097199ac\n//SIG=01000000:00000000:00000000:00000000:0001:0002:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    v11 = v14 == 0;
    v12 = "//GLfs1.0      \n//LEN=0000000276\n#extension GL_ARB_texture_rectangle : enable\nuniform sampler2DRect hg_Texture0;\nuniform vec4 hg_ProgramLocal0;\nuniform vec4 hg_ProgramLocal1;\nvoid main()\n{\n    vec4 color;\n    color = texture2DRect(hg_Texture0, gl_TexCoord[0].xy);\n    if (gl_TexCoord[2].z < 0.) color.xyz = hg_ProgramLocal1.xyz;\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, gl_TexCoord[2].w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=10e54296:9caf9cc8:d7817b0a:892592fe\n//SIG=01000000:00000000:00000000:00000000:0002:0002:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    if (!v14)
    {
      v10 = "//GLfs2.0      \n//LEN=00000002bd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvoid main()\n{\n\n    defaultp vec4 color;\n    color = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=fdbbe725:fdd32d95:d5c4f9b0:c807ee7e\n//SIG=01000000:00000000:00000000:00000000:0001:0002:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
    }

    v13 = "//GLfs2.0      \n//LEN=00000002fb\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvoid main()\n{\n\n    defaultp vec4 color;\n    color = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    if (hg_TexCoord2.z < 0.) color.xyz = hg_ProgramLocal1.xyz;\n    color.xyz = mix(color.xyz, hg_ProgramLocal1.xyz, hg_TexCoord2.w);\n    color.w *= hg_ProgramLocal0.y;\n    if (color.w == 0.) discard;\n\t gl_FragColor = color;\n}\n//MD5=56c28ca8:08fd1fcd:e3cb6cf8:3365155c\n//SIG=01000000:00000000:00000000:00000000:0002:0002:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
  }

  if (!v11)
  {
    v13 = v12;
  }

  if (v8)
  {
    return v10;
  }

  else
  {
    return v13;
  }
}

uint64_t HGFractured::BindTexture(HGFractured::Effect **this, HGHandler *a2, uint64_t a3)
{
  v8[16] = *MEMORY[0x277D85DE8];
  HGFractured::Effect::GetTextureMatrix(this[53], v8);
  if (a3 == 1)
  {
    v5 = a2;
    v6 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = a2;
    v6 = 0;
  }

  HGHandler::TexCoord(v5, v6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 112))(a2, v8);
  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t HGFractured::Bind(HGFractured *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (*(this + 432) == 1)
  {
    v4 = *(this + 51);
    v5 = *(*a2 + 144);
    if (*(*(this + 53) + 145) == 1)
    {
      v5(a2, 0, v4, 4);
      (*(*a2 + 136))(a2, 4, *(*(this + 51) + 64), -*(*(this + 51) + 68), *(*(this + 51) + 72), *(*(this + 51) + 76));
      (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
      (*(*a2 + 136))(a2, 6, *(*(this + 51) + 96), -*(*(this + 51) + 100), *(*(this + 51) + 104), *(*(this + 51) + 108));
    }

    else
    {
      v5(a2, 0, v4, 7);
    }

    return 0;
  }

  else
  {
    (*(*a2 + 144))(a2, 0, *(this + 51), 2);
    return 0;
  }
}

HGFractured *HGFractured::GetOutput(HGFractured *this, HGRenderer *a2)
{
  v3 = *(this + 53);
  if (!v3)
  {
    return 0;
  }

  if (HGFractured::Effect::isCropped(v3))
  {
    Rect = HGFractured::Effect::GetRect(*(this + 53));
    v7 = v6;
  }

  else
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    Rect = HGRenderer::GetDOD(a2, Input);
    v7 = v10;
    *&v35.var0 = Rect;
    *&v35.var2 = v7;
    HGFractured::Effect::SetRect(*(this + 53), v35);
  }

  v11 = *(this + 51);
  v12 = *v11;
  v13 = *(v11 + 8);
  if ((*(*a2 + 304))(a2))
  {
    v20 = (v12 * ((1.0 / fminf((v7 - Rect), (HIDWORD(v7) - HIDWORD(Rect)))) + -1.0)) + 1.0;
    *(*(this + 51) + 116) = v20;
    *(*(this + 51) + 112) = v20;
    *(*(this + 51) + 128) = vcvts_n_f32_s32(v7 - Rect, 1uLL) * (1.0 - v20);
    *(*(this + 51) + 132) = vcvts_n_f32_s32(HIDWORD(v7) - HIDWORD(Rect), 1uLL) * (1.0 - v20);
  }

  else
  {
    HGFractured::Effect::init(*(this + 53), v14, v15, v16, v17, v18, v19);
    HGFractured::Effect::build(*(this + 53));
    LODWORD(v21) = v13;
    HGFractured::Effect::apply(*(this + 53), v12, v21, v29, v30, v31, v32, v33, v34, v22, v23, v24, v25, v26, v27, v28);
  }

  return this;
}

char *HGFractured::RenderPage(HGNode *this, HGPage *a2)
{
  v23[16] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  Buffer = *(a2 + 1);
  Input = HGRenderer::GetInput(*a2, this, 0);
  v7 = HGRenderer::GetInput(v5, this, 1u);
  v8 = HGRenderer::GetInput(v5, this, 2u);
  if (Input)
  {
    NodeTexture = HGGPURenderer::GetNodeTexture(v5, Input, *(a2 + 36), 0, 1u);
    *(a2 + 21) = NodeTexture;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_18:
    *(a2 + 22) = 0;
    if (!Buffer)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  NodeTexture = 0;
  *(a2 + 21) = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v7 == Input)
  {
    *(a2 + 22) = NodeTexture;
    (*(*NodeTexture + 16))(NodeTexture);
    if (!Buffer)
    {
      goto LABEL_19;
    }

LABEL_5:
    (*(*Buffer + 16))(Buffer);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_20:
    (*(*v5 + 144))(v5, Buffer);
    HGGPURenderer::Clear(v5, *(a2 + 1), (*(this + 51) + 32), v19);
    v13 = *(a2 + 21);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_21:
    v14 = 0;
    v15 = *(a2 + 22);
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(a2 + 22) = HGGPURenderer::GetNodeTexture(v5, v7, *(a2 + 52), 0, 1u);
  if (Buffer)
  {
    goto LABEL_5;
  }

LABEL_19:
  Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), *(a2 + 8), 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
  *(a2 + 1) = Buffer;
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_6:
  NodeBitmap = HGGPURenderer::GetNodeBitmap(v5, v8, *(a2 + 1), Buffer, 1u);
  if (NodeBitmap != Buffer)
  {
    v11 = HGGPURenderer::ConvertToTexture(v5, *(a2 + 1), NodeBitmap);
    (*(*v5 + 144))(v5, Buffer);
    (*(*v5 + 152))(v5, 0, v11, 0, 0);
    HGGPURenderer::Copy(v5, *(a2 + 1), 0, v12);
    if (v11 && v11 != NodeBitmap)
    {
      (*(*v11 + 24))(v11);
    }

    (*(*v5 + 152))(v5, 0, 0, 0, 0);
  }

  if (NodeBitmap)
  {
    (*(*NodeBitmap + 24))(NodeBitmap);
  }

  v13 = *(a2 + 21);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_14:
  (*(*v5 + 152))(v5, 0, v13, 0, 0);
  (*(**(a2 + 21) + 24))(*(a2 + 21));
  v14 = 1;
  v15 = *(a2 + 22);
  if (v15)
  {
LABEL_15:
    (*(*v5 + 152))(v5, 1, v15, 0, 0);
    (*(**(a2 + 22) + 24))(*(a2 + 22));
    v14 |= 2u;
  }

LABEL_16:
  HGTransform::HGTransform(v22);
  ProjectionMatrix = HGGPURenderer::GetProjectionMatrix(v5);
  HGTransform::LoadTransform(v22, ProjectionMatrix);
  HGTransform::HGTransform(v21);
  HGFractured::Effect::GetProjectionMatrix(*(this + 53), v23, *(a2 + 1));
  HGTransform::LoadMatrixd(v21, v23);
  HGTransform::HGTransform(v20);
  HGFractured::Effect::GetModelviewMatrix(*(this + 53), v23);
  HGTransform::LoadMatrixd(v20, v23);
  HGTransform::PreMultiply(v21, v20);
  HGGPURenderer::SetProjectionMatrix(v5, v21);
  v17 = (*(*v5 + 368))(v5, *(this + 8), this);
  (*(*this + 488))(this, a2, 0, v17);
  HGFractured::Effect::Render(*(this + 53), v5, *(a2 + 1), *(*(this + 51) + 4), *(*(this + 51) + 12), v14);
  (*(*this + 496))(this, a2, 0, v17);
  HGGPURenderer::SetProjectionMatrix(v5, v22);
  HGTransform::~HGTransform(v20);
  HGTransform::~HGTransform(v21);
  HGTransform::~HGTransform(v22);
  return Buffer;
}

void sub_25FD2EA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  HGTransform::~HGTransform(&a28);
  HGTransform::~HGTransform(&a46);
  _Unwind_Resume(a1);
}

void sub_25FD2EAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  HGTransform::~HGTransform(&a10);
  HGTransform::~HGTransform(&a28);
  HGTransform::~HGTransform(&a46);
  _Unwind_Resume(a1);
}

uint64_t HGFractured::RenderTile(HGFractured *this, float32x4_t **a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  *v6.f32 = vadd_f32(vcvt_f32_s32(*a2), 0x3F0000003F000000);
  v6.i64[1] = 0x3F80000000000000;
  v7 = *(a2 + 2) - *a2;
  v8 = *(a2 + 3) - (*a2 >> 32);
  v9 = a2[2];
  v10 = *(a2 + 6);
  v11 = **(this + 51);
  v12 = a2[14];
  if (v12)
  {
    if (v8 >= 1)
    {
      v13 = 0;
      v14 = 16 * *(a2 + 30);
      v15 = 16 * v10;
      v16.i64[0] = 0x3F0000003F000000;
      v16.i64[1] = 0x3F0000003F000000;
      v17 = v6;
      do
      {
        if (v7 < 4)
        {
          v18 = 0;
          v21 = v17;
        }

        else
        {
          v18 = 0;
          v19 = 2;
          v20 = v7;
          v21 = v17;
          do
          {
            v49 = vaddq_f32(v21, xmmword_2603429B0);
            v50 = vaddq_f32(v49, xmmword_2603429B0);
            v51 = vaddq_f32(v50, xmmword_2603429B0);
            v52 = *(this + 51);
            v54 = v52[7];
            v53 = v52[8];
            v55 = vaddq_f32(v53, vmulq_f32(v21, v54));
            v56 = vaddq_f32(v53, vmulq_f32(v49, v54));
            v57 = vaddq_f32(v53, vmulq_f32(v50, v54));
            v58 = vaddq_f32(v53, vmulq_f32(v51, v54));
            v59 = a2[10];
            v60 = *(a2 + 22);
            v61 = vsubq_f32(v55, v6);
            if (v5)
            {
              v22 = vaddq_s32(vcvtq_s32_f32(v61), vcltzq_f32(v61));
              v23 = vsubq_f32(v61, vcvtq_f32_s32(v22)).u64[0];
              v24 = vsubq_f32(v56, v6);
              v25 = vaddq_s32(vcvtq_s32_f32(v24), vcltzq_f32(v24));
              v26 = vsubq_f32(v24, vcvtq_f32_s32(v25)).u64[0];
              v27 = vdup_n_s32(v60);
              *v22.i8 = vmla_s32(vzip1_s32(*v22.i8, *v25.i8), vzip2_s32(*v22.i8, *v25.i8), v27);
              v28 = &v59[v22.i32[0]];
              v29 = vaddq_f32(*v28, vmulq_n_f32(vsubq_f32(v28[1], *v28), v23.f32[0]));
              v30 = v60;
              v31 = vaddq_f32(v29, vmulq_lane_f32(vsubq_f32(vaddq_f32(v28[v30], vmulq_n_f32(vsubq_f32(v28[v30 + 1], v28[v30]), v23.f32[0])), v29), v23, 1));
              v32 = &v59[v22.i32[1]];
              v33 = vaddq_f32(*v32, vmulq_n_f32(vsubq_f32(v32[1], *v32), v26.f32[0]));
              v34 = vaddq_f32(v33, vmulq_lane_f32(vsubq_f32(vaddq_f32(v32[v30], vmulq_n_f32(vsubq_f32(v32[v30 + 1], v32[v30]), v26.f32[0])), v33), v26, 1));
              v35 = vsubq_f32(v57, v6);
              v36 = vaddq_s32(vcvtq_s32_f32(v35), vcltzq_f32(v35));
              v35.i64[0] = vsubq_f32(v35, vcvtq_f32_s32(v36)).u64[0];
              v37 = vsubq_f32(v58, v6);
              v38 = vaddq_s32(vcvtq_s32_f32(v37), vcltzq_f32(v37));
              *v36.i8 = vmla_s32(vzip1_s32(*v36.i8, *v38.i8), vzip2_s32(*v36.i8, *v38.i8), v27);
              v39 = &v59[v36.i32[0]];
              v38.i64[0] = vsubq_f32(v37, vcvtq_f32_s32(v38)).u64[0];
              v40 = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(v39[1], *v39), v35.f32[0]));
              v41 = vaddq_f32(v40, vmulq_lane_f32(vsubq_f32(vaddq_f32(v39[v30], vmulq_n_f32(vsubq_f32(v39[v30 + 1], v39[v30]), v35.f32[0])), v40), *v35.f32, 1));
              v42 = &v59[v36.i32[1]];
              v43 = vaddq_f32(*v42, vmulq_n_f32(vsubq_f32(v42[1], *v42), *v38.i32));
              v44 = vaddq_f32(v43, vmulq_lane_f32(vsubq_f32(vaddq_f32(v42[v30], vmulq_n_f32(vsubq_f32(v42[v30 + 1], v42[v30]), *v38.i32)), v43), *v38.i8, 1));
            }

            else
            {
              v62 = vaddq_f32(v61, v16);
              v63 = vcvtq_s32_f32(v62);
              v64 = vaddq_f32(vsubq_f32(v56, v6), v16);
              v65 = vcvtq_s32_f32(v64);
              *v62.f32 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
              *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
              *v65.i8 = vdup_n_s32(v60);
              *v64.f32 = vmla_s32(vzip1_s32(*v62.f32, *v64.f32), vzip2_s32(*v62.f32, *v64.f32), *v65.i8);
              v66 = v64.i32[1];
              v31 = v59[v64.i32[0]];
              v34 = v59[v66];
              v67 = vaddq_f32(vsubq_f32(v57, v6), v16);
              v68 = vcvtq_s32_f32(v67);
              v69 = vaddq_f32(vsubq_f32(v58, v6), v16);
              v70 = vcvtq_s32_f32(v69);
              *v69.f32 = vadd_s32(*v70.i8, *&vcgtq_f32(vcvtq_f32_s32(v70), v69));
              *v67.f32 = vadd_s32(*v68.i8, *&vcgtq_f32(vcvtq_f32_s32(v68), v67));
              *v69.f32 = vmla_s32(vzip1_s32(*v67.f32, *v69.f32), vzip2_s32(*v67.f32, *v69.f32), *v65.i8);
              v71 = v69.i32[1];
              v41 = v59[v69.i32[0]];
              v44 = v59[v71];
            }

            v45 = vaddq_f32(v34, vmulq_lane_f32(vsubq_f32(v12[v19 - 1], v34), *&v11, 1));
            v46 = vaddq_f32(v41, vmulq_lane_f32(vsubq_f32(v12[v19], v41), *&v11, 1));
            v47 = vaddq_f32(v44, vmulq_lane_f32(vsubq_f32(v12[v19 + 1], v44), *&v11, 1));
            v48 = &v9[v19];
            v48[-2] = vaddq_f32(v31, vmulq_lane_f32(vsubq_f32(v12[v19 - 2], v31), *&v11, 1));
            v48[-1] = v45;
            *v48 = v46;
            v48[1] = v47;
            v21 = vaddq_f32(v51, xmmword_2603429B0);
            v20 -= 4;
            v18 += 4;
            v19 += 4;
          }

          while (v20 > 3);
        }

        if (v18 < v7)
        {
          if (v5)
          {
            do
            {
              v72 = *(a2 + 22);
              v73 = vsubq_f32(vaddq_f32(*(*(this + 51) + 128), vmulq_f32(v21, *(*(this + 51) + 112))), v6);
              v74 = vaddq_s32(vcvtq_s32_f32(v73), vcltzq_f32(v73));
              v73.i64[0] = vsubq_f32(v73, vcvtq_f32_s32(v74)).u64[0];
              v75 = &a2[10][v74.i32[0] + v74.i32[1] * v72];
              v76 = vaddq_f32(*v75, vmulq_n_f32(vsubq_f32(v75[1], *v75), v73.f32[0]));
              v77 = vaddq_f32(v76, vmulq_lane_f32(vsubq_f32(vaddq_f32(v75[v72], vmulq_n_f32(vsubq_f32(v75[v72 + 1], v75[v72]), v73.f32[0])), v76), *v73.f32, 1));
              v9[v18] = vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(v12[v18], v77), *&v11, 1));
              v21 = vaddq_f32(v21, xmmword_2603429B0);
              ++v18;
            }

            while (v18 < v7);
          }

          else
          {
            do
            {
              v78 = vaddq_f32(vsubq_f32(vaddq_f32(*(*(this + 51) + 128), vmulq_f32(v21, *(*(this + 51) + 112))), v6), v16);
              v79 = vcvtq_s32_f32(v78);
              v78.i64[0] = vaddq_s32(v79, vcgtq_f32(vcvtq_f32_s32(v79), v78)).u64[0];
              v80 = a2[10][v78.i32[0] + v78.i32[1] * *(a2 + 22)];
              v9[v18] = vaddq_f32(v80, vmulq_lane_f32(vsubq_f32(v12[v18], v80), *&v11, 1));
              v21 = vaddq_f32(v21, xmmword_2603429B0);
              ++v18;
            }

            while (v18 < v7);
          }
        }

        v17 = vaddq_f32(v17, xmmword_2603429C0);
        ++v13;
        v12 = (v12 + v14);
        v9 = (v9 + v15);
      }

      while (v13 != v8);
    }
  }

  else if (v8 >= 1)
  {
    v81 = 0;
    v82 = v9 + 2;
    v83 = 16 * v10;
    v84.i64[0] = 0x3F0000003F000000;
    v84.i64[1] = 0x3F0000003F000000;
    v85 = v6;
    do
    {
      if (v7 < 4)
      {
        v86 = 0;
        v89 = v85;
      }

      else
      {
        v86 = 0;
        v87 = v82;
        v88 = v7;
        v89 = v85;
        do
        {
          v114 = vaddq_f32(v89, xmmword_2603429B0);
          v115 = vaddq_f32(v114, xmmword_2603429B0);
          v116 = vaddq_f32(v115, xmmword_2603429B0);
          v117 = *(this + 51);
          v119 = v117[7];
          v118 = v117[8];
          v120 = vaddq_f32(v118, vmulq_f32(v89, v119));
          v121 = vaddq_f32(v118, vmulq_f32(v114, v119));
          v122 = vaddq_f32(v118, vmulq_f32(v115, v119));
          v123 = vaddq_f32(v118, vmulq_f32(v116, v119));
          v124 = a2[10];
          v125 = *(a2 + 22);
          v126 = vsubq_f32(v120, v6);
          if (v5)
          {
            v90 = vaddq_s32(vcvtq_s32_f32(v126), vcltzq_f32(v126));
            v91 = vsubq_f32(v126, vcvtq_f32_s32(v90)).u64[0];
            v92 = vsubq_f32(v121, v6);
            v93 = vaddq_s32(vcvtq_s32_f32(v92), vcltzq_f32(v92));
            v94 = vsubq_f32(v92, vcvtq_f32_s32(v93)).u64[0];
            v95 = vdup_n_s32(v125);
            *v90.i8 = vmla_s32(vzip1_s32(*v90.i8, *v93.i8), vzip2_s32(*v90.i8, *v93.i8), v95);
            v96 = &v124[v90.i32[0]];
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v91.f32[0]));
            v98 = v125;
            v99 = vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v98], vmulq_n_f32(vsubq_f32(v96[v98 + 1], v96[v98]), v91.f32[0])), v97), v91, 1));
            v100 = &v124[v90.i32[1]];
            v101 = vaddq_f32(*v100, vmulq_n_f32(vsubq_f32(v100[1], *v100), v94.f32[0]));
            v102 = vaddq_f32(v101, vmulq_lane_f32(vsubq_f32(vaddq_f32(v100[v98], vmulq_n_f32(vsubq_f32(v100[v98 + 1], v100[v98]), v94.f32[0])), v101), v94, 1));
            v103 = vsubq_f32(v122, v6);
            v104 = vaddq_s32(vcvtq_s32_f32(v103), vcltzq_f32(v103));
            v103.i64[0] = vsubq_f32(v103, vcvtq_f32_s32(v104)).u64[0];
            v105 = vsubq_f32(v123, v6);
            v106 = vaddq_s32(vcvtq_s32_f32(v105), vcltzq_f32(v105));
            *v104.i8 = vmla_s32(vzip1_s32(*v104.i8, *v106.i8), vzip2_s32(*v104.i8, *v106.i8), v95);
            v107 = &v124[v104.i32[0]];
            v106.i64[0] = vsubq_f32(v105, vcvtq_f32_s32(v106)).u64[0];
            v108 = vaddq_f32(*v107, vmulq_n_f32(vsubq_f32(v107[1], *v107), v103.f32[0]));
            v109 = vaddq_f32(v108, vmulq_lane_f32(vsubq_f32(vaddq_f32(v107[v98], vmulq_n_f32(vsubq_f32(v107[v98 + 1], v107[v98]), v103.f32[0])), v108), *v103.f32, 1));
            v110 = &v124[v104.i32[1]];
            v111 = vaddq_f32(*v110, vmulq_n_f32(vsubq_f32(v110[1], *v110), *v106.i32));
            v112 = vaddq_f32(v111, vmulq_lane_f32(vsubq_f32(vaddq_f32(v110[v98], vmulq_n_f32(vsubq_f32(v110[v98 + 1], v110[v98]), *v106.i32)), v111), *v106.i8, 1));
          }

          else
          {
            v127 = vaddq_f32(v126, v84);
            v128 = vcvtq_s32_f32(v127);
            v129 = vaddq_f32(vsubq_f32(v121, v6), v84);
            v130 = vcvtq_s32_f32(v129);
            *v127.f32 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v129.f32 = vadd_s32(*v130.i8, *&vcgtq_f32(vcvtq_f32_s32(v130), v129));
            *v130.i8 = vdup_n_s32(v125);
            *v129.f32 = vmla_s32(vzip1_s32(*v127.f32, *v129.f32), vzip2_s32(*v127.f32, *v129.f32), *v130.i8);
            v131 = v129.i32[1];
            v99 = v124[v129.i32[0]];
            v102 = v124[v131];
            v132 = vaddq_f32(vsubq_f32(v122, v6), v84);
            v133 = vcvtq_s32_f32(v132);
            v134 = vaddq_f32(vsubq_f32(v123, v6), v84);
            v135 = vcvtq_s32_f32(v134);
            *v134.f32 = vadd_s32(*v135.i8, *&vcgtq_f32(vcvtq_f32_s32(v135), v134));
            *v132.f32 = vadd_s32(*v133.i8, *&vcgtq_f32(vcvtq_f32_s32(v133), v132));
            *v134.f32 = vmla_s32(vzip1_s32(*v132.f32, *v134.f32), vzip2_s32(*v132.f32, *v134.f32), *v130.i8);
            v136 = v134.i32[1];
            v109 = v124[v134.i32[0]];
            v112 = v124[v136];
          }

          v113 = v117[14];
          v87[-2] = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(v113, v99), *&v11, 1));
          v87[-1] = vaddq_f32(v102, vmulq_lane_f32(vsubq_f32(v113, v102), *&v11, 1));
          *v87 = vaddq_f32(v109, vmulq_lane_f32(vsubq_f32(v113, v109), *&v11, 1));
          v87[1] = vaddq_f32(v112, vmulq_lane_f32(vsubq_f32(v113, v112), *&v11, 1));
          v87 += 4;
          v89 = vaddq_f32(v116, xmmword_2603429B0);
          v88 -= 4;
          v86 += 4;
        }

        while (v88 > 3);
      }

      if (v86 < v7)
      {
        if (v5)
        {
          do
          {
            v137 = *(this + 51);
            v138 = vsubq_f32(vaddq_f32(v137[8], vmulq_f32(v89, v137[7])), v6);
            v139 = vaddq_s32(vcvtq_s32_f32(v138), vcltzq_f32(v138));
            v140 = *(a2 + 22);
            v138.i64[0] = vsubq_f32(v138, vcvtq_f32_s32(v139)).u64[0];
            v141 = &a2[10][v139.i32[0] + v139.i32[1] * v140];
            v142 = vaddq_f32(*v141, vmulq_n_f32(vsubq_f32(v141[1], *v141), v138.f32[0]));
            v143 = vaddq_f32(v142, vmulq_lane_f32(vsubq_f32(vaddq_f32(v141[v140], vmulq_n_f32(vsubq_f32(v141[v140 + 1], v141[v140]), v138.f32[0])), v142), *v138.f32, 1));
            v9[v86] = vaddq_f32(v143, vmulq_lane_f32(vsubq_f32(v137[14], v143), *&v11, 1));
            v89 = vaddq_f32(v89, xmmword_2603429B0);
            ++v86;
          }

          while (v86 < v7);
        }

        else
        {
          do
          {
            v144 = *(this + 51);
            v145 = vaddq_f32(vsubq_f32(vaddq_f32(v144[8], vmulq_f32(v89, v144[7])), v6), v84);
            v146 = vcvtq_s32_f32(v145);
            v145.i64[0] = vaddq_s32(v146, vcgtq_f32(vcvtq_f32_s32(v146), v145)).u64[0];
            v147 = a2[10][v145.i32[0] + v145.i32[1] * *(a2 + 22)];
            v9[v86] = vaddq_f32(v147, vmulq_lane_f32(vsubq_f32(v144[14], v147), *&v11, 1));
            v89 = vaddq_f32(v89, xmmword_2603429B0);
            ++v86;
          }

          while (v86 < v7);
        }
      }

      v85 = vaddq_f32(v85, xmmword_2603429C0);
      ++v81;
      v82 = (v82 + v83);
      v9 = (v9 + v83);
    }

    while (v81 != v8);
  }

  return 0;
}