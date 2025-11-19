@interface OZFxPlugTimingAPI
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOffsetForImageParameter:(SEL)a3;
- ($43B88956A48E07FA4329DDDD387A1517)invalidTime;
- ($43B88956A48E07FA4329DDDD387A1517)zeroTime;
- (OZFxPlugTimingAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)a3;
- (double)durationForEffect:(id)a3;
- (double)durationOfImageParm:(unsigned int)a3 forEffect:(id)a4;
- (double)durationOfInputToFilter:(id)a3;
- (double)imageTimeForParmId:(unsigned int)a3 forEffect:(id)a4 fromTimelineTime:(double)a5;
- (double)inPointOfTimelineForEffect:(id)a3;
- (double)inputTimeForFilter:(id)a3 fromTimelineTime:(double)a4;
- (double)outPointOfTimelineForEffect:(id)a3;
- (double)startTimeForEffect:(id)a3;
- (double)startTimeOfImageParm:(unsigned int)a3 forEffect:(id)a4;
- (double)startTimeOfInputToFilter:(id)a3;
- (double)timelineDurationForEffect:(id)a3;
- (double)timelineTimeFromImageTime:(double)a3 forParmId:(unsigned int)a4 forEffect:(id)a5;
- (double)timelineTimeFromInputTime:(double)a3 forFilter:(id)a4;
- (id).cxx_construct;
- (unint64_t)fieldOrderForImageParm:(unsigned int)a3 forEffect:(id)a4;
- (unint64_t)fieldOrderForInputToFilter:(id)a3;
- (unint64_t)timelineFpsDenominatorForEffect:(id)a3;
- (unint64_t)timelineFpsNumeratorForEffect:(id)a3;
- (void)copyFxTime:(id)a3 toFxTime:(id *)a4;
- (void)durationFxTime:(id *)a3 ofImageParm:(unsigned int)a4;
- (void)durationFxTimeForEffect:(id *)a3;
- (void)durationFxTimeOfInputToFilter:(id *)a3;
- (void)imageFxTime:(id *)a3 forParmId:(unsigned int)a4 fromTimelineTime:(id)a5;
- (void)inPointFxTimeOfTimelineForEffect:(id *)a3;
- (void)inputFxTime:(id *)a3 fromTimelineTime:(id)a4;
- (void)outPointFxTimeOfTimelineForEffect:(id *)a3;
- (void)sampleDuration:(id *)a3;
- (void)scene;
- (void)startFxTime:(id *)a3 ofImageParam:(unsigned int)a4;
- (void)startFxTimeForEffect:(id *)a3;
- (void)startFxTimeOfInputToFilter:(id *)a3;
- (void)timelineFxTime:(id *)a3 fromImageTime:(id)a4 forParmId:(unsigned int)a5;
- (void)timelineFxTime:(id *)a3 fromInputTime:(id)a4;
@end

@implementation OZFxPlugTimingAPI

- (OZFxPlugTimingAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = OZFxPlugTimingAPI;
  v4 = [(OZFxPlugTimingAPI *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_fxPlugLock.__cntrl_;
    v5->_fxPlugLock.__ptr_ = v7;
    v5->_fxPlugLock.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (void)copyFxTime:(id)a3 toFxTime:(id *)a4
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v11, &ptr);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*v11[0])
  {
    if ((*(**v11[0] + 160))(*v11[0]))
    {
      var1 = a4->var1;
      v8 = *a3.var1;
      *(var1 + 2) = *(a3.var1 + 2);
      *var1 = v8;
    }

    else
    {
      a4->var0 = a3.var0;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
}

- ($43B88956A48E07FA4329DDDD387A1517)invalidTime
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0] && !(*(**v7[0] + 160))(*v7[0]))
  {
    FxTimeInvalid = 0xBFF0000000000000;
  }

  else
  {
    FxTimeInvalid = getFxTimeInvalid();
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return FxTimeInvalid;
}

- ($43B88956A48E07FA4329DDDD387A1517)zeroTime
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0] && !(*(**v7[0] + 160))(*v7[0]))
  {
    FxTimeZero = 0;
  }

  else
  {
    FxTimeZero = getFxTimeZero();
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return FxTimeZero;
}

- (double)startTimeOfInputToFilter:(id)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v13 = cntrl;
  v14 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v10, &ptr);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v4 = *v10;
  if (*v10)
  {
    if (!(v4->var0[5].isa)(*v10))
    {
      PCMakeNSRefAndRetain<EAGLContext *>(v4[4].var0, &v8[0].var0);
      ProCore_Impl::PCNSRefImpl::release(&v8[0].var0);
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v10);
      (*(*[v14 getSceneNode] + 1128))(&v10);
      *&v8[0].var0 = v10;
      v9 = v11;
      v6 = COERCE_DOUBLE([v14 figTimeToFxTime:v8 withConversionData:0]);
      goto LABEL_10;
    }

    PCString::PCString(v8, v4 + 19);
    v5 = PCString::ns_str(v8);
    NSLog(&cfstr_ThePlugInCalle.isa, v5);
    PCString::~PCString(v8);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v10);
  v6 = -1.0;
LABEL_10:
  ProCore_Impl::PCNSRefImpl::release(&v14);
  return v6;
}

- (double)startTimeOfImageParm:(unsigned int)a3 forEffect:(id)a4
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v27 = cntrl;
  v28 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v24, &ptr);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v6 = *v24;
  if (!*v24)
  {
    goto LABEL_8;
  }

  if ((v6->var0[5].isa)(*v24))
  {
    PCString::PCString(v22, v6 + 19);
    v7 = PCString::ns_str(v22);
    NSLog(&cfstr_ThePlugInCalle_0.isa, v7);
    PCString::~PCString(v22);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v24);
    v8 = -1.0;
    goto LABEL_9;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v6[4].var0, &v22[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v28, &v22[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v22[0].var0);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v24);
  v10 = [v28 channelMap];
  v13 = *(v10 + 8);
  v11 = v10 + 8;
  v12 = v13;
  v8 = 0.0;
  if (v13)
  {
    v14 = v11;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= a3;
      v17 = v15 < a3;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != v11 && *(v14 + 32) <= a3)
    {
      v18 = *(v14 + 40);
      if (v18)
      {
        ImageNode = OZChanElementOrFootageRef::getImageNode(v18);
        if (ImageNode)
        {
          v20 = (*(*ImageNode + 104))(ImageNode);
          v21 = (*(*v20 + 232))(v20);
          if (v21)
          {
            (*(*v21 + 1128))(&v24);
            *&v22[0].var0 = v24;
            v23 = v25;
            v8 = COERCE_DOUBLE([v28 figTimeToFxTime:v22 withConversionData:0]);
          }
        }
      }
    }
  }

LABEL_9:
  ProCore_Impl::PCNSRefImpl::release(&v28);
  return v8;
}

- (double)durationOfInputToFilter:(id)a3
{
  v16 = *MEMORY[0x277CC08F0];
  v17 = *(MEMORY[0x277CC08F0] + 16);
  [(OZFxPlugTimingAPI *)self invalidTime];
  v15 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v14 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v5 = *v9[0];
  if (*v9[0])
  {
    if (!(v5->var0[5].isa)(*v9[0]))
    {
      PCMakeNSRefAndRetain<EAGLContext *>(v5[4].var0, &v12.var0);
      ProCore_Impl::PCNSRefImpl::operator=(&v15, &v12.var0);
      ProCore_Impl::PCNSRefImpl::release(&v12.var0);
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
      (*(*[v15 getSceneNode] + 1128))(v9);
      v16 = v10;
      v17 = v11;
      v7 = COERCE_DOUBLE([v15 figTimeToFxTime:&v16 withConversionData:0]);
      goto LABEL_10;
    }

    PCString::PCString(&v12, v5 + 19);
    v6 = PCString::ns_str(&v12);
    NSLog(&cfstr_ThePlugInCalle_1.isa, v6);
    PCString::~PCString(&v12);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  v7 = -1.0;
LABEL_10:
  ProCore_Impl::PCNSRefImpl::release(&v15);
  return v7;
}

- (double)durationOfImageParm:(unsigned int)a3 forEffect:(id)a4
{
  v32 = 0;
  v33 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v31 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v27, &ptr);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v6 = *v27[0];
  if (!*v27[0])
  {
    goto LABEL_8;
  }

  if ((v6->var0[5].isa)(*v27[0]))
  {
    PCString::PCString(v25, v6 + 19);
    v7 = PCString::ns_str(v25);
    NSLog(&cfstr_ThePlugInCalle_2.isa, v7);
    PCString::~PCString(v25);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v27);
    v8 = -1.0;
    goto LABEL_9;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v6[4].var0, &v25[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v33, &v25[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v25[0].var0);
  v10 = [v33 channelMap];
  v14 = *(v10 + 8);
  v12 = v10 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v12;
  do
  {
    v16 = *(v13 + 32);
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * v18);
  }

  while (v13);
  if (v15 != v12 && *(v15 + 32) <= a3 && (v19 = *(v15 + 40)) != 0)
  {
  }

  else
  {
LABEL_20:
    v20 = 0;
  }

  Instance = TXParagraphStyleFolder_Factory::createInstance(v6, v11);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v25[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v32, &v25[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v25[0].var0);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v27);
  v8 = -1.0;
  if (v20)
  {
    ImageNode = OZChanElementOrFootageRef::getImageNode(v20);
    if (ImageNode)
    {
      v23 = (*(*ImageNode + 104))(ImageNode);
      v24 = (*(*v23 + 232))(v23);
      if (v24)
      {
        (*(*v24 + 1128))(v27);
        *&v25[0].var0 = v28;
        v26 = v29;
        v8 = COERCE_DOUBLE([v33 figDurationToFxDuration:v25 withConversionData:0]);
      }
    }
  }

LABEL_9:
  ProCore_Impl::PCNSRefImpl::release(&v32);
  ProCore_Impl::PCNSRefImpl::release(&v33);
  return v8;
}

- (unint64_t)timelineFpsNumeratorForEffect:(id)a3
{
  if (![(OZFxPlugTimingAPI *)self scene])
  {
    return 30;
  }

  v4 = [(OZFxPlugTimingAPI *)self sceneSettings];
  v5 = v4[4];
  v6 = ceil(v5) * 1000.0;
  v7 = v5 * 600.0;
  if (*(v4 + 40))
  {
    return v6;
  }

  return v7;
}

- (unint64_t)timelineFpsDenominatorForEffect:(id)a3
{
  if (![(OZFxPlugTimingAPI *)self scene])
  {
    return 600;
  }

  if (*([(OZFxPlugTimingAPI *)self sceneSettings]+ 40))
  {
    return 1001;
  }

  return 600;
}

- (double)inPointOfTimelineForEffect:(id)a3
{
  v15 = 0;
  v14 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v12 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v13, &ptr);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v4 = *v13[0];
  if (*v13[0])
  {
    if (!(v4->var0[5].isa)(*v13[0]))
    {
      PCMakeNSRefAndRetain<EAGLContext *>(v4[4].var0, &v10.var0);
      ProCore_Impl::PCNSRefImpl::operator=(&v15, &v10.var0);
      ProCore_Impl::PCNSRefImpl::release(&v10.var0);
      Instance = TXParagraphStyleFolder_Factory::createInstance(v4, v7);
      PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v10.var0);
      ProCore_Impl::PCNSRefImpl::operator=(&v14, &v10.var0);
      ProCore_Impl::PCNSRefImpl::release(&v10.var0);
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
      v6 = 0.0;
      OZScene::getPlayRange([v15 getScene]);
      goto LABEL_10;
    }

    PCString::PCString(&v10, v4 + 19);
    v5 = PCString::ns_str(&v10);
    NSLog(&cfstr_ThePlugInCalle_3.isa, v5);
    PCString::~PCString(&v10);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
  v6 = -1.0;
LABEL_10:
  ProCore_Impl::PCNSRefImpl::release(&v14);
  ProCore_Impl::PCNSRefImpl::release(&v15);
  return v6;
}

- (double)outPointOfTimelineForEffect:(id)a3
{
  v19 = 0;
  v20 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v18 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v23, &ptr);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v4 = *v23.value;
  if (*v23.value)
  {
    if (!(v4->var0[5].isa)(v4))
    {
      PCMakeNSRefAndRetain<EAGLContext *>(v4[4].var0, &v22);
      ProCore_Impl::PCNSRefImpl::operator=(&v19, &v22);
      ProCore_Impl::PCNSRefImpl::release(&v22);
      Instance = TXParagraphStyleFolder_Factory::createInstance(v4, v8);
      PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v22);
      ProCore_Impl::PCNSRefImpl::operator=(&v20, &v22);
      ProCore_Impl::PCNSRefImpl::release(&v22);
      v10 = [v19 getScene];
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
      PlayRange = OZScene::getPlayRange(v10);
      memset(v16, 0, sizeof(v16));
      OZSceneSettings::getFrameDuration((v10 + 336), &v14);
      v23 = *PlayRange;
      v22 = *(PlayRange + 24);
      PC_CMTimeSaferAdd(&v23, &v22, &v21);
      v23 = v21;
      *&v22.value = v14;
      v22.epoch = v15;
      v12 = PC_CMTimeSaferSubtract(&v23, &v22, v16);
      v7 = COERCE_DOUBLE([v19 figTimeToFxTime:v16 withConversionData:{0, v12}]);
      goto LABEL_10;
    }

    PCString::PCString(&v22, v4 + 19);
    v6 = PCString::ns_str(v5);
    NSLog(&cfstr_ThePlugInCalle_4.isa, v6);
    PCString::~PCString(&v22);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
  v7 = -1.0;
LABEL_10:
  ProCore_Impl::PCNSRefImpl::release(&v19);
  ProCore_Impl::PCNSRefImpl::release(&v20);
  return v7;
}

- (double)timelineDurationForEffect:(id)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v14 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v15, &ptr);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v5 = *v15[0];
  v6 = -1.0;
  if (*v15[0])
  {
    if ((v5->var0[5].isa)(v5))
    {
      PCString::PCString(v11, v5 + 19);
      v7 = PCString::ns_str(v11);
      NSLog(&cfstr_ThePlugInCalle_5.isa, v7);
      PCString::~PCString(v11);
    }

    else
    {
      PlayRange = OZScene::getPlayRange([(OZFxPlugTimingAPI *)self scene]);
      var0 = v5[4].var0;
      *&v11[0].var0 = *(PlayRange + 24);
      v12 = *(PlayRange + 40);
      v6 = COERCE_DOUBLE([(__CFString *)var0 figTimeToFxTime:v11 withConversionData:0]);
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v15);
  return v6;
}

- (double)startTimeForEffect:(id)a3
{
  v20 = 0;
  v16 = *MEMORY[0x277CC08F0];
  v17 = *(MEMORY[0x277CC08F0] + 16);
  v18 = v16;
  v19 = v17;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v14 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v15, &ptr);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v4 = *v15[0];
  if (!*v15[0])
  {
    goto LABEL_8;
  }

  if ((v4->var0[5].isa)(*v15[0]))
  {
    PCString::PCString(v11, v4 + 19);
    v5 = PCString::ns_str(v11);
    NSLog(&cfstr_ThePlugInCalle_6.isa, v5);
    PCString::~PCString(v11);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v15);
    v6 = -1.0;
    goto LABEL_13;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v4[4].var0, &v11[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v20, &v11[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v11[0].var0);
  if (v7)
  {
    v9 = (*v7 + 592);
  }

  else
  {
    v9 = (*v8 + 1128);
    v7 = v8;
  }

  (*v9)(v11, v7);
  v16 = *&v11[0].var0;
  v17 = v12;
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v15);
  *&v11[0].var0 = v16;
  v12 = v17;
  v6 = COERCE_DOUBLE([v20 figTimeToFxTime:v11 withConversionData:0]);
LABEL_13:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  return v6;
}

- (double)durationForEffect:(id)a3
{
  *&v22.value = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  *&v23.value = *&v22.value;
  v22.epoch = v3;
  v23.epoch = v3;
  v20 = 0;
  v21 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v19 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v24, &ptr);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v5 = *v24.value;
  if (!*v24.value)
  {
    goto LABEL_8;
  }

  if ((v5->var0[5].isa)(v5))
  {
    PCString::PCString(v17, v5 + 19);
    v6 = PCString::ns_str(v17);
    NSLog(&cfstr_ThePlugInCalle_7.isa, v6);
    PCString::~PCString(v17);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v24);
    v7 = -1.0;
    goto LABEL_15;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v5[4].var0, v17);
  ProCore_Impl::PCNSRefImpl::operator=(&v20, v17);
  ProCore_Impl::PCNSRefImpl::release(v17);
  Instance = TXParagraphStyleFolder_Factory::createInstance(v5, v8);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, v17);
  ProCore_Impl::PCNSRefImpl::operator=(&v21, v17);
  ProCore_Impl::PCNSRefImpl::release(v17);
  if (v10)
  {
    (*(*v10 + 592))(v17);
  }

  else
  {
    (*(v11 + 1128))(v17);
  }

  v22 = v17[0];
  v23 = v17[1];
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v24);
  if (v21)
  {
    v16 = v22;
    memset(v15, 0, sizeof(v15));
    v17[0] = v22;
    v24 = v23;
    v12 = PC_CMTimeSaferAdd(v17, &v24, v15);
    v13 = COERCE_DOUBLE([v20 figTimeToFxTime:&v16 withConversionData:{0, v12}]);
    v7 = COERCE_DOUBLE([v20 figTimeToFxTime:v15 withConversionData:0]) - v13;
  }

  else
  {
    v17[0] = v23;
    v7 = COERCE_DOUBLE([v20 figTimeToFxTime:v17 withConversionData:0]);
  }

LABEL_15:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  ProCore_Impl::PCNSRefImpl::release(&v21);
  return v7;
}

- (double)timelineTimeFromInputTime:(double)a3 forFilter:(id)a4
{
  v26 = 0;
  v27 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v25 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v22, &ptr);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v7 = *v22;
  v8 = -1.0;
  if (!*v22)
  {
    goto LABEL_20;
  }

  if ((v7->var0[5].isa)(v7))
  {
    PCString::PCString(v20, v7 + 19);
    v9 = PCString::ns_str(v20);
    NSLog(&cfstr_ThePlugInCalle_8.isa, v9);
    PCString::~PCString(v20);
LABEL_20:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v22);
    a3 = v8;
    goto LABEL_21;
  }

  {
    v8 = 0.0;
    goto LABEL_20;
  }

  Instance = TXParagraphStyleFolder_Factory::createInstance(v7, v10);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v20[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v27, &v20[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v20[0].var0);
  PCMakeNSRefAndRetain<EAGLContext *>(v7[4].var0, &v20[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v26, &v20[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v20[0].var0);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v22);
  if (!v27)
  {
    v22 = 0uLL;
    v23 = 0;
    if (v26)
    {
      [v26 fxTimeToFigTime:*&a3 withConversionData:0];
    }

    v12 = self->_fxPlugLock.__cntrl_;
    v17 = self->_fxPlugLock.__ptr_;
    v18 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v19, &v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (*v19[0])
    {
      (*(*v13 + 608))(&v15);
      *&v20[0].var0 = v15;
      v21 = v16;
    }

    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v19);
    a3 = COERCE_DOUBLE([v26 figTimeToFxTime:v20 withConversionData:0]);
  }

LABEL_21:
  ProCore_Impl::PCNSRefImpl::release(&v26);
  ProCore_Impl::PCNSRefImpl::release(&v27);
  return a3;
}

- (double)timelineTimeFromImageTime:(double)a3 forParmId:(unsigned int)a4 forEffect:(id)a5
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v28 = cntrl;
  v29 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v26, &ptr);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v8 = *v26[0].value;
  if (!*v26[0].value)
  {
    goto LABEL_8;
  }

  if ((v8->var0[5].isa)(*v26[0].value))
  {
    PCString::PCString(v32, v8 + 19);
    v10 = PCString::ns_str(v9);
    NSLog(&cfstr_ThePlugInCalle_9.isa, v10);
    PCString::~PCString(v32);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
    a3 = -1.0;
    goto LABEL_25;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v8[4].var0, &v32[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v29, &v32[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v32[0].var0);
  v11 = [v29 channelMap];
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v12;
  do
  {
    v16 = *(v13 + 32);
    v17 = v16 >= a4;
    v18 = v16 < a4;
    if (v17)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * v18);
  }

  while (v13);
  if (v15 != v12 && *(v15 + 32) <= a4 && (v19 = *(v15 + 40)) != 0)
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
    if (v20)
    {
      ImageNode = OZChanElementOrFootageRef::getImageNode(v20);
      if (ImageNode)
      {
        v22 = (*(*ImageNode + 104))(ImageNode);
        v23 = (*(*v22 + 232))(v22);
        if (v23)
        {
          (*(*v23 + 1128))(v26);
          memset(&v25, 0, sizeof(v25));
          if (v29)
          {
            [v29 fxTimeToFigTime:*&a3 withConversionData:0];
          }

          v30 = v26[0];
          v31 = v25;
          PC_CMTimeSaferAdd(&v31, &v30, v32);
          *&v25.value = *&v32[0].var0;
          v25.epoch = v33;
          a3 = COERCE_DOUBLE([v29 figTimeToFxTime:&v25 withConversionData:0]);
        }
      }
    }
  }

  else
  {
LABEL_24:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
  }

LABEL_25:
  ProCore_Impl::PCNSRefImpl::release(&v29);
  return a3;
}

- (double)inputTimeForFilter:(id)a3 fromTimelineTime:(double)a4
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v26 = cntrl;
  v27 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v23, &ptr);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v7 = *v23;
  v8 = -1.0;
  if (!*v23)
  {
    goto LABEL_10;
  }

  if ((v7->var0[5].isa)(v7))
  {
    PCString::PCString(v21, v7 + 19);
    v10 = PCString::ns_str(v21);
    NSLog(&cfstr_ThePlugInCalle_10.isa, v10);
    PCString::~PCString(v21);
LABEL_10:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
    goto LABEL_11;
  }

  if (TXParagraphStyleFolder_Factory::createInstance(v7, v9))
  {
    v8 = a4;
    goto LABEL_10;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v7[4].var0, &v21[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v27, &v21[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v21[0].var0);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
  v23 = 0uLL;
  v24 = 0;
  if (v27)
  {
    [v27 fxTimeToFigTime:*&a4 withConversionData:0];
  }

  v12 = self->_fxPlugLock.__cntrl_;
  v18 = self->_fxPlugLock.__ptr_;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v20, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v13 = *v20[0];
  if (*v20[0])
  {
    if (v14)
    {
      (*(*v14 + 600))(&v16);
    }

    else
    {
      (*(*v15 + 1144))(&v16);
    }

    *&v21[0].var0 = v16;
    v22 = v17;
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
    v8 = COERCE_DOUBLE([v27 figTimeToFxTime:v21 withConversionData:0]);
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
    v8 = 0.0;
  }

LABEL_11:
  ProCore_Impl::PCNSRefImpl::release(&v27);
  return v8;
}

- (double)imageTimeForParmId:(unsigned int)a3 forEffect:(id)a4 fromTimelineTime:(double)a5
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v28 = cntrl;
  v29 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v26, &ptr);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v8 = *v26[0].value;
  if (!*v26[0].value)
  {
    goto LABEL_8;
  }

  if ((v8->var0[5].isa)(*v26[0].value))
  {
    PCString::PCString(v32, v8 + 19);
    v10 = PCString::ns_str(v9);
    NSLog(&cfstr_ThePlugInCalle_11.isa, v10);
    PCString::~PCString(v32);
LABEL_8:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
    a5 = -1.0;
    goto LABEL_25;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v8[4].var0, &v32[0].var0);
  ProCore_Impl::PCNSRefImpl::operator=(&v29, &v32[0].var0);
  ProCore_Impl::PCNSRefImpl::release(&v32[0].var0);
  v11 = [v29 channelMap];
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v12;
  do
  {
    v16 = *(v13 + 32);
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * v18);
  }

  while (v13);
  if (v15 != v12 && *(v15 + 32) <= a3 && (v19 = *(v15 + 40)) != 0)
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
    if (v20)
    {
      ImageNode = OZChanElementOrFootageRef::getImageNode(v20);
      if (ImageNode)
      {
        v22 = (*(*ImageNode + 104))(ImageNode);
        v23 = (*(*v22 + 232))(v22);
        if (v23)
        {
          (*(*v23 + 1128))(v26);
          memset(&v25, 0, sizeof(v25));
          if (v29)
          {
            [v29 fxTimeToFigTime:*&a5 withConversionData:0];
          }

          v30 = v26[0];
          v31 = v25;
          PC_CMTimeSaferSubtract(&v31, &v30, v32);
          *&v25.value = *&v32[0].var0;
          v25.epoch = v33;
          a5 = COERCE_DOUBLE([v29 figTimeToFxTime:&v25 withConversionData:0]);
        }
      }
    }
  }

  else
  {
LABEL_24:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
  }

LABEL_25:
  ProCore_Impl::PCNSRefImpl::release(&v29);
  return a5;
}

- (unint64_t)fieldOrderForInputToFilter:(id)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v13 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v14, &ptr);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  {
    v11 = **&MEMORY[0x277CC08F0];
    FieldDominance = OZFootage::getFieldDominance(Footage, &v11);
    if (FieldDominance == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (FieldDominance == 2);
    }
  }

  else
  {
    v9 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v14);
  return v9;
}

- (unint64_t)fieldOrderForImageParm:(unsigned int)a3 forEffect:(id)a4
{
  v23 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v22 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v19, &ptr);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (!*v19.value)
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v19);
LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(*(*v19.value + 32), &v20);
  ProCore_Impl::PCNSRefImpl::operator=(&v23, &v20);
  ProCore_Impl::PCNSRefImpl::release(&v20);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v19);
  if (!v23)
  {
    goto LABEL_21;
  }

  v6 = [v23 channelMap];
  v9 = *(v6 + 8);
  v7 = v6 + 8;
  v8 = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v7;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == v7)
  {
    goto LABEL_21;
  }

  if (*(v10 + 32) > a3)
  {
    goto LABEL_21;
  }

  ImageNode = OZChanElementOrFootageRef::getImageNode(*(v10 + 40));
  if (!ImageNode)
  {
    goto LABEL_21;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v19 = **&MEMORY[0x277CC08F0];
  FieldDominance = OZFootage::getFieldDominance(v15, &v19);
  if (FieldDominance == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * (FieldDominance == 2);
  }

LABEL_22:
  ProCore_Impl::PCNSRefImpl::release(&v23);
  return v17;
}

- (void)sampleDuration:(id *)a3
{
  v18 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v17 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v14, &ptr);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v5 = *v14.n128_u64[0];
  if (*v14.n128_u64[0])
  {
    v6 = (*(*v5 + 32))(*v14.n128_u64[0]);
    v7 = (*(*v5 + 160))(v5);
    Instance = TXParagraphStyleFolder_Factory::createInstance(v5, v8);
    PCMakeNSRefAndRetain<EAGLContext *>(Instance, v13);
    ProCore_Impl::PCNSRefImpl::operator=(&v18, v13);
    ProCore_Impl::PCNSRefImpl::release(v13);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v14);
    if (v6)
    {
      v10 = (*(*v6 + 272))(v6);
      v11 = v10;
      if (v10)
      {
        if (v7)
        {
          v14 = 0uLL;
          v15 = 0;
          OZSceneSettings::getFrameDuration((v10 + 336), &v14);
          if (*(v11 + 480))
          {
            operator/(&v14, 2, v13);
          }
        }

        else
        {
          if (*(v10 + 480))
          {
            v12 = 0x3FE0000000000000;
          }

          else
          {
            v12 = 0x3FF0000000000000;
          }

          a3->var1 = v12;
        }
      }
    }
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v14);
  }

  ProCore_Impl::PCNSRefImpl::release(&v18);
}

- (void)startFxTimeForEffect:(id *)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v20 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v21, &ptr);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v6 = *v21[0];
  if (*v21[0])
  {
    if ((*(*v6 + 160))(v6))
    {
      Instance = TXParagraphStyleFolder_Factory::createInstance(v6, v9);
      if (v7)
      {
        (*(*v7 + 592))(&v15, v7);
      }

      else
      {
        (*(*v8 + 1128))(&v15, v8);
      }

      v17 = v15;
      v18 = v16;
      if (Instance)
      {
        v12 = [*(v6 + 32) figTimeToFxTime:&v17 withConversionData:0];
      }

      else
      {
        v12 = &v17;
      }

      var1 = a3->var1;
      v14 = *v12;
      *(var1 + 2) = *(v12 + 2);
      *var1 = v14;
    }

    else
    {
      [(OZFxPlugTimingAPI *)self startTimeForEffect:*(v6 + 24)];
      a3->var1 = v11;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v21);
}

- (void)durationFxTimeForEffect:(id *)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v24 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v25, &ptr);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v6 = *v25[0];
  if (*v25[0])
  {
    if ((*(*v6 + 160))(v6))
    {
      Instance = TXParagraphStyleFolder_Factory::createInstance(v6, v9);
      if (v7)
      {
        (*(*v7 + 592))(v20, v7);
      }

      else
      {
        (*(*v8 + 1128))(v20, v8);
      }

      v21 = v20[0];
      v22 = v20[1];
      if (Instance)
      {
        memset(&v19, 0, sizeof(v19));
        v20[0] = v21;
        v26 = v22;
        PC_CMTimeSaferAdd(v20, &v26, &v19);
        v18 = v21;
        v17 = v19;
        v12 = v6[4];
        [v12 figTimeToFxTime:&v18 withConversionData:0];
        [v12 figTimeToFxTime:&v17 withConversionData:0];
        v20[0] = v17;
        v26 = v18;
        PC_CMTimeSaferSubtract(v20, &v26, &v15);
        var1 = a3->var1;
        v14 = v15;
        *(var1 + 2) = v16;
        *var1 = v14;
      }

      else
      {
        *a3->var1 = v22;
      }
    }

    else
    {
      [(OZFxPlugTimingAPI *)self durationForEffect:v6[3]];
      a3->var1 = v11;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
}

- (void)startFxTimeOfInputToFilter:(id *)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v15 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v16, &ptr);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v5 = *v16[0];
  if (*v16[0])
  {
    v6 = v5[4];
    (*(*[v6 getSceneNode] + 1128))(&v12);
    v10 = v12;
    v11 = v13;
    v7 = [v6 figTimeToFxTime:&v10 withConversionData:0];
    if ((*(*v5 + 160))(v5))
    {
      var1 = a3->var1;
      v9 = *v7;
      *(var1 + 2) = *(v7 + 16);
      *var1 = v9;
    }

    else
    {
      a3->var1 = v7;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v16);
}

- (void)durationFxTimeOfInputToFilter:(id *)a3
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v18 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v13, &ptr);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v6 = *v13[0];
  if (*v13[0])
  {
    v7 = (*(*v6 + 20))(*v13[0]);
    PCMakeNSRefAndRetain<EAGLContext *>(v6[4], &v16);
    ProCore_Impl::PCNSRefImpl::operator=(&v21, &v16);
    ProCore_Impl::PCNSRefImpl::release(&v16);
    Instance = TXParagraphStyleFolder_Factory::createInstance(v6, v8);
    PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v16);
    ProCore_Impl::PCNSRefImpl::operator=(&v20, &v16);
    ProCore_Impl::PCNSRefImpl::release(&v16);
    PCMakeNSRefAndRetain<EAGLContext *>(v6[3], &v16);
    ProCore_Impl::PCNSRefImpl::operator=(&v19, &v16);
    ProCore_Impl::PCNSRefImpl::release(&v16);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
    if (v7)
    {
      (*(*[v21 getSceneNode] + 1128))(v13);
      var1 = a3->var1;
      v11 = v14;
      *(var1 + 2) = v15;
      *var1 = v11;
    }

    else
    {
      [(OZFxPlugTimingAPI *)self durationOfInputToFilter:v19];
      a3->var1 = v12;
    }
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
  }

  ProCore_Impl::PCNSRefImpl::release(&v19);
  ProCore_Impl::PCNSRefImpl::release(&v20);
  ProCore_Impl::PCNSRefImpl::release(&v21);
}

- (void)startFxTime:(id *)a3 ofImageParam:(unsigned int)a4
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v25 = cntrl;
  v26 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v22, &ptr);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (!*v22)
  {
    goto LABEL_14;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(*(*v22 + 32), &v20);
  ProCore_Impl::PCNSRefImpl::operator=(&v26, &v20);
  ProCore_Impl::PCNSRefImpl::release(&v20);
  v8 = [v26 channelMap];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 32);
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v15);
  }

  while (v10);
  if (v12 != v9 && *(v12 + 32) <= a4)
  {
    v16 = *(v12 + 40);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v22);
    if (v16)
    {
      Node = OZChanSceneNodeRef::getNode(v16);
      if (Node)
      {
        (*(*Node + 1128))(&v22);
        v20 = v22;
        v21 = v23;
        -[OZFxPlugTimingAPI copyFxTime:toFxTime:](self, "copyFxTime:toFxTime:", [v26 figTimeToFxTime:&v20 withConversionData:0], a3);
      }

      else
      {
        var1 = a3->var1;
        v19 = *MEMORY[0x277CC0898];
        *(var1 + 2) = *(MEMORY[0x277CC0898] + 16);
        *var1 = v19;
      }
    }
  }

  else
  {
LABEL_14:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v22);
  }

  ProCore_Impl::PCNSRefImpl::release(&v26);
}

- (void)durationFxTime:(id *)a3 ofImageParm:(unsigned int)a4
{
  v4 = *&a4;
  v36 = 0;
  v37 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v35 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v33, &ptr);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v8 = *v33[0].value;
  if (!*v33[0].value)
  {
    goto LABEL_18;
  }

  if (((*(*v8 + 160))(*v33[0].value) & 1) == 0)
  {
    [(OZFxPlugTimingAPI *)self durationOfImageParm:v4 forEffect:*(v8 + 3)];
    a3->var1 = v20;
LABEL_18:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v33);
    goto LABEL_29;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(*(v8 + 4), &v39);
  ProCore_Impl::PCNSRefImpl::operator=(&v36, &v39);
  ProCore_Impl::PCNSRefImpl::release(&v39);
  v9 = [v36 channelMap];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v11;
  do
  {
    v15 = *(v12 + 32);
    v16 = v15 >= v4;
    v17 = v15 < v4;
    if (v16)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * v17);
  }

  while (v12);
  if (v14 != v11 && *(v14 + 32) <= v4 && (v18 = *(v14 + 40)) != 0)
  {
  }

  else
  {
LABEL_19:
    v19 = 0;
  }

  Instance = TXParagraphStyleFolder_Factory::createInstance(v8, v10);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v39);
  ProCore_Impl::PCNSRefImpl::operator=(&v37, &v39);
  ProCore_Impl::PCNSRefImpl::release(&v39);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v33);
  if (v19)
  {
    ImageNode = OZChanElementOrFootageRef::getImageNode(v19);
    if (!ImageNode)
    {
      goto LABEL_27;
    }

    if (v37 && v23)
    {
      OZImageElement::isBackgroundDropZone(v23);
    }

    Node = OZChanSceneNodeRef::getNode(v19);
    if (Node)
    {
      (*(*Node + 1128))(v33);
      v32 = v33[0];
      memset(&v31, 0, sizeof(v31));
      v39 = v33[1];
      v38 = v33[0];
      v25 = PC_CMTimeSaferAdd(&v39, &v38, &v31);
      [v36 figTimeToFxTime:&v32 withConversionData:{0, v25}];
      [v36 figTimeToFxTime:&v31 withConversionData:0];
      v29 = 0uLL;
      v30 = 0;
      v39 = v31;
      v38 = v32;
      PC_CMTimeSaferSubtract(&v39, &v38, &v29);
      var1 = a3->var1;
      v27 = v29;
      v28 = v30;
    }

    else
    {
LABEL_27:
      var1 = a3->var1;
      v27 = *MEMORY[0x277CC0898];
      v28 = *(MEMORY[0x277CC0898] + 16);
    }

    *(var1 + 2) = v28;
    *var1 = v27;
  }

LABEL_29:
  ProCore_Impl::PCNSRefImpl::release(&v36);
  ProCore_Impl::PCNSRefImpl::release(&v37);
}

- (void)inPointFxTimeOfTimelineForEffect:(id *)a3
{
  v17 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v16 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v12, &ptr);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v7 = *v12;
  if (!*v12)
  {
    goto LABEL_12;
  }

  if (TXParagraphStyleFolder_Factory::createInstance(*v12, v6))
  {
    if ((*(*v7 + 20))(v7))
    {
      var1 = a3->var1;
      v9 = *MEMORY[0x277CC08F0];
      *(var1 + 2) = *(MEMORY[0x277CC08F0] + 16);
      *var1 = v9;
    }

    else
    {
      a3->var1 = 0;
    }

LABEL_12:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v12);
    goto LABEL_13;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v7[4], &v14);
  ProCore_Impl::PCNSRefImpl::operator=(&v17, &v14);
  ProCore_Impl::PCNSRefImpl::release(&v14);
  v10 = [v17 getScene];
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v12);
  if (v10)
  {
    PlayRange = OZScene::getPlayRange(v10);
    v12 = *PlayRange;
    v13 = *(PlayRange + 16);
    -[OZFxPlugTimingAPI copyFxTime:toFxTime:](self, "copyFxTime:toFxTime:", [v17 figTimeToFxTime:&v12 withConversionData:0], a3);
  }

LABEL_13:
  ProCore_Impl::PCNSRefImpl::release(&v17);
}

- (void)outPointFxTimeOfTimelineForEffect:(id *)a3
{
  v20 = 0;
  v21 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v19 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v23, &ptr);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v6 = *v23.value;
  if (!*v23.value)
  {
    goto LABEL_10;
  }

  if (((*(*v6 + 20))(v6) & 1) == 0)
  {
    [(OZFxPlugTimingAPI *)self outPointOfTimelineForEffect:v6[3]];
    a3->var1 = v15;
LABEL_10:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
    goto LABEL_13;
  }

  Instance = TXParagraphStyleFolder_Factory::createInstance(v6, v7);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v22);
  ProCore_Impl::PCNSRefImpl::operator=(&v21, &v22);
  ProCore_Impl::PCNSRefImpl::release(&v22);
  PCMakeNSRefAndRetain<EAGLContext *>(v6[4], &v22);
  ProCore_Impl::PCNSRefImpl::operator=(&v20, &v22);
  ProCore_Impl::PCNSRefImpl::release(&v22);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
  v9 = [(OZFxPlugTimingAPI *)self scene];
  if (v9)
  {
    PlayRange = OZScene::getPlayRange(v9);
    v22 = *PlayRange;
    v16 = 0uLL;
    v17 = 0;
    v23 = *(PlayRange + 24);
    v11 = PC_CMTimeSaferAdd(&v23, &v22, &v16);
    [v20 figTimeToFxTime:&v16 withConversionData:{0, v11}];
    var1 = a3->var1;
    v13 = v16;
    v14 = v17;
  }

  else
  {
    var1 = a3->var1;
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
  }

  *(var1 + 2) = v14;
  *var1 = v13;
LABEL_13:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  ProCore_Impl::PCNSRefImpl::release(&v21);
}

- (void)timelineFxTime:(id *)a3 fromInputTime:(id)a4
{
  v29 = 0;
  v30 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v28 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v25, &ptr);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v8 = *v25;
  if (!*v25)
  {
    v15 = &v25;
    goto LABEL_18;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v8[4], &v23);
  ProCore_Impl::PCNSRefImpl::operator=(&v30, &v23);
  ProCore_Impl::PCNSRefImpl::release(&v23);
  Instance = TXParagraphStyleFolder_Factory::createInstance(v8, v10);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v23);
  ProCore_Impl::PCNSRefImpl::operator=(&v29, &v23);
  ProCore_Impl::PCNSRefImpl::release(&v23);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v25);
  v12.var1 = [(OZFxPlugTimingAPI *)self zeroTime];
  v25 = *MEMORY[0x277CC0898];
  v26 = *(MEMORY[0x277CC0898] + 16);
  if (v9)
  {
    v23 = 0uLL;
    v24 = 0;
    if (v30)
    {
      [v30 fxTimeToFigTime:a4.var1 withConversionData:0];
    }

    v13 = self->_fxPlugLock.__cntrl_;
    v20 = self->_fxPlugLock.__ptr_;
    v21 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v22, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (*v22[0])
    {
      v16 = v23;
      v17 = v24;
      (*(*v14 + 608))(&v18);
      v25 = v18;
      v26 = v19;
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v22);
      v12.var1 = [v30 figTimeToFxTime:&v25 withConversionData:{0, v16, v17}];
      goto LABEL_15;
    }

    v15 = v22;
LABEL_18:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v15);
    goto LABEL_19;
  }

LABEL_15:
  [(OZFxPlugTimingAPI *)self copyFxTime:v12.var1 toFxTime:a3];
LABEL_19:
  ProCore_Impl::PCNSRefImpl::release(&v29);
  ProCore_Impl::PCNSRefImpl::release(&v30);
}

- (void)timelineFxTime:(id *)a3 fromImageTime:(id)a4 forParmId:(unsigned int)a5
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v26 = cntrl;
  v27 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v24, &ptr);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*v24[0].value)
  {
    PCMakeNSRefAndRetain<EAGLContext *>(*(*v24[0].value + 32), &v30);
    ProCore_Impl::PCNSRefImpl::operator=(&v27, &v30);
    ProCore_Impl::PCNSRefImpl::release(&v30);
    v10 = [v27 channelMap];
    v13 = *(v10 + 8);
    v11 = v10 + 8;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= a5;
      v17 = v15 < a5;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != v11 && *(v14 + 32) <= a5 && (v18 = *(v14 + 40)) != 0)
    {
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
      if (v19)
      {
        ImageNode = OZChanElementOrFootageRef::getImageNode(v19);
        if (ImageNode)
        {
          v21 = (*(*ImageNode + 104))(ImageNode);
          v22 = (*(*v21 + 232))(v21);
          if (v22)
          {
            (*(*v22 + 1128))(v24);
            memset(&v23, 0, sizeof(v23));
            if (v27)
            {
              [v27 fxTimeToFigTime:a4.var1 withConversionData:0];
            }

            v28 = v24[0];
            v29 = v23;
            PC_CMTimeSaferAdd(&v29, &v28, &v30);
            v23 = v30;
            a4.var1 = [v27 figTimeToFxTime:&v23 withConversionData:0];
          }
        }
      }
    }

    else
    {
LABEL_21:
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
    }

    [(OZFxPlugTimingAPI *)self copyFxTime:a4.var1 toFxTime:a3];
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
  }

  ProCore_Impl::PCNSRefImpl::release(&v27);
}

- (void)inputFxTime:(id *)a3 fromTimelineTime:(id)a4
{
  v27 = 0;
  v28 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v26 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v23, &ptr);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v8 = *v23;
  if (!*v23)
  {
    v11 = &v23;
LABEL_18:
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
    goto LABEL_21;
  }

  PCMakeNSRefAndRetain<EAGLContext *>(v8[4], &v21);
  ProCore_Impl::PCNSRefImpl::operator=(&v28, &v21);
  ProCore_Impl::PCNSRefImpl::release(&v21);
  Instance = TXParagraphStyleFolder_Factory::createInstance(v8, v9);
  PCMakeNSRefAndRetain<EAGLContext *>(Instance, &v21);
  ProCore_Impl::PCNSRefImpl::operator=(&v27, &v21);
  ProCore_Impl::PCNSRefImpl::release(&v21);
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v23);
  if (v28)
  {
    [v28 fxTimeToFigTime:a4.var1 withConversionData:0];
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  v23 = v19;
  v24 = v20;
  v12 = self->_fxPlugLock.__cntrl_;
  v16 = self->_fxPlugLock.__ptr_;
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v18, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v13 = *v18[0];
  if (!*v18[0])
  {
    v11 = v18;
    goto LABEL_18;
  }

  if (v14)
  {
    (*(*v14 + 600))(&v19);
  }

  else
  {
    (*(*v15 + 1144))(&v19);
  }

  v21 = v19;
  v22 = v20;
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v18);
  -[OZFxPlugTimingAPI copyFxTime:toFxTime:](self, "copyFxTime:toFxTime:", [v28 figTimeToFxTime:&v21 withConversionData:0], a3);
LABEL_21:
  ProCore_Impl::PCNSRefImpl::release(&v27);
  ProCore_Impl::PCNSRefImpl::release(&v28);
}

- (void)imageFxTime:(id *)a3 forParmId:(unsigned int)a4 fromTimelineTime:(id)a5
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v26 = cntrl;
  v27 = 0;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v24, &ptr);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (*v24[0].value)
  {
    PCMakeNSRefAndRetain<EAGLContext *>(*(*v24[0].value + 32), &v30);
    ProCore_Impl::PCNSRefImpl::operator=(&v27, &v30);
    ProCore_Impl::PCNSRefImpl::release(&v30);
    v10 = [v27 channelMap];
    v13 = *(v10 + 8);
    v11 = v10 + 8;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 32);
      v16 = v15 >= a4;
      v17 = v15 < a4;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * v17);
    }

    while (v12);
    if (v14 != v11 && *(v14 + 32) <= a4 && (v18 = *(v14 + 40)) != 0)
    {
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
      if (v19)
      {
        ImageNode = OZChanElementOrFootageRef::getImageNode(v19);
        if (ImageNode)
        {
          v21 = (*(*ImageNode + 104))(ImageNode);
          v22 = (*(*v21 + 232))(v21);
          if (v22)
          {
            (*(*v22 + 1128))(v24);
            memset(&v23, 0, sizeof(v23));
            if (v27)
            {
              [v27 fxTimeToFigTime:a5.var1 withConversionData:0];
            }

            v28 = v24[0];
            v29 = v23;
            PC_CMTimeSaferSubtract(&v29, &v28, &v30);
            v23 = v30;
            a5.var1 = [v27 figTimeToFxTime:&v23 withConversionData:0];
          }
        }
      }
    }

    else
    {
LABEL_21:
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
    }

    [(OZFxPlugTimingAPI *)self copyFxTime:a5.var1 toFxTime:a3];
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
  }

  ProCore_Impl::PCNSRefImpl::release(&v27);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeOffsetForImageParameter:(SEL)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v25 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v26, &ptr);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (!*v26[0])
  {
    goto LABEL_18;
  }

  v7 = [*(*v26[0] + 32) channelMap];
  v10 = *(v7 + 8);
  v8 = v7 + 8;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 32);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * v14);
  }

  while (v9);
  if (v11 == v8 || *(v11 + 32) > a4 || (v15 = *(v11 + 40)) == 0)
  {
LABEL_18:
    v20 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    v19 = *(v20 + 16);
    goto LABEL_19;
  }

  v17 = MEMORY[0x277CC0898];
  *&retstr->var0 = *MEMORY[0x277CC0898];
  retstr->var3 = *(v17 + 16);
  if (v16)
  {
    Node = OZChanSceneNodeRef::getNode(v16);
    if (Node)
    {
      (*(*Node + 1128))(&v22);
      *&retstr->var0 = v22;
      v19 = v23;
LABEL_19:
      retstr->var3 = v19;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
  return result;
}

- (void)scene
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0])
  {
    v3 = [*(*v7[0] + 32) getScene];
  }

  else
  {
    v3 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end