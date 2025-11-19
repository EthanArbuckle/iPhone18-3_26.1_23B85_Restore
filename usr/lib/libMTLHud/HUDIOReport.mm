@interface HUDIOReport
+ (id)instance;
- (BOOL)_createIOReportSubscription;
- (BOOL)_createTimer:(unint64_t)a3;
- (BOOL)_loadIOReportChannels:(id)a3 subGroup:(id)a4 channels:(__CFDictionary *)a5;
- (BOOL)_parseCPUChannel:(id)a3 sampleIndex:(unsigned int)a4;
- (HUDIOReport)init;
- (id).cxx_construct;
- (void)_addSamplesToRecords:(double *)a3 numSample:(unsigned int)a4 totalPackge:(double)a5;
- (void)dealloc;
- (void)sample;
- (void)startSampling:(unint64_t)a3;
- (void)suspendSampling;
@end

@implementation HUDIOReport

+ (id)instance
{
  if (+[HUDIOReport instance]::onceToken != -1)
  {
    +[HUDIOReport instance];
  }

  v3 = +[HUDIOReport instance]::report;

  return v3;
}

void __23__HUDIOReport_instance__block_invoke(id a1)
{
  +[HUDIOReport instance]::report = objc_alloc_init(HUDIOReport);

  _objc_release_x1();
}

- (HUDIOReport)init
{
  if (MTLHudIsInternalInstall())
  {
    v12.receiver = self;
    v12.super_class = HUDIOReport;
    v3 = [(HUDIOReport *)&v12 init];
    v4 = v3;
    if (v3)
    {
      if (![(HUDIOReport *)v3 _createIOReportSubscription])
      {
        v10 = 0;
        self = v4;
        goto LABEL_12;
      }

      v5 = &v4->_records[0].bucketCounts[11];
      v6 = 8;
      do
      {
        HUDValueHistoryRecordInit((v5 - 274), 0.0, 100.0, 2.0);
        *v5 = 120;
        v5 += 282;
        --v6;
      }

      while (v6);
      v7 = &v4->_records[7].bucketCounts[5];
      v8 = 20;
      v9 = 1440;
      do
      {
        HUDValueHistoryRecordInit(v7, 0.0, 100.0, 20.0);
        *(&v4->super.isa + v9) = 120;
        v7 += 1128;
        v9 += 1128;
        --v8;
      }

      while (v8);
      mach_timebase_info(&v4->_timebase);
      v4->_previousSample.time = 0;
    }

    self = v4;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (BOOL)_loadIOReportChannels:(id)a3 subGroup:(id)a4 channels:(__CFDictionary *)a5
{
  v6 = a3;
  v7 = a4;
  if (IOReportCopyChannelsInGroup() && IOReportMergeChannels() != 1)
  {
    v8 = 1;
  }

  else
  {
    CFRelease(0);
    v8 = 0;
  }

  return v8;
}

- (BOOL)_parseCPUChannel:(id)a3 sampleIndex:(unsigned int)a4
{
  v4 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v6, "(DIE_([0-9]+)_|)([EP])ACC([0-9]*)_(CPU|CPM)([0-9]*)", 0);
}

- (BOOL)_createIOReportSubscription
{
  Aggregate = IOReportCreateAggregate();
  if (![(HUDIOReport *)self _loadIOReportChannels:@"Energy Model" subGroup:0 channels:Aggregate])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&off_6F310 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(&off_6F310);
      }

      if (![(HUDIOReport *)self _loadIOReportChannels:@"GPU Stats" subGroup:*(*(&v11 + 1) + 8 * v6) channels:Aggregate])
      {
        return 0;
      }

      if (v4 == ++v6)
      {
        v4 = [&off_6F310 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  *&v7 = 0xFFFFFFFFLL;
  *(&v7 + 1) = 0xFFFFFFFFLL;
  *&self->_samplePoints.gpuSampleIndex = v7;
  *&self->_samplePoints.totalPackageSampleIndex = v7;
  IOReportPrune();
  CFAllocatorGetDefault();
  self->_energySubscription = IOReportCreateSubscription();
  CFRelease(Aggregate);
  energySubscription = self->_energySubscription;
  v9 = energySubscription != 0;
  if (!energySubscription)
  {
    CFRelease(0);
  }

  return v9;
}

uint64_t __42__HUDIOReport__createIOReportSubscription__block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) _parseChannel:a2 sampleIndex:*(*(a1 + 32) + 24)])
  {
    return 16;
  }

  result = 0;
  ++*(*(a1 + 32) + 24);
  return result;
}

- (BOOL)_createTimer:(unint64_t)a3
{
  timer = self->_timer;
  if (timer)
  {
    if (self->_sampleInterval == a3)
    {
      return 0;
    }

    self->_sampleInterval = a3;
    dispatch_source_cancel(timer);
    v6 = self->_timer;
    self->_timer = 0;
  }

  else
  {
    self->_sampleInterval = a3;
  }

  v7 = HUDDispatchQueueGet(timer);
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);
  v9 = self->_timer;
  self->_timer = v8;

  v10 = dispatch_time(0, 0);
  dispatch_source_set_timer(self->_timer, v10, self->_sampleInterval, 0);
  objc_initWeak(&location, self);
  v11 = self->_timer;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __28__HUDIOReport__createTimer___block_invoke;
  v12[3] = &unk_696C0;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v11, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return 1;
}

void __28__HUDIOReport__createTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained sample];
  }
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = HUDIOReport;
  [(HUDIOReport *)&v4 dealloc];
}

- (void)startSampling:(unint64_t)a3
{
  if ([(HUDIOReport *)self _createTimer:a3])
  {
    timer = self->_timer;
    if (timer)
    {

      dispatch_resume(timer);
    }
  }
}

- (void)suspendSampling
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_suspend(timer);
    self->_sampleInterval = 0;
  }
}

- (void)_addSamplesToRecords:(double *)a3 numSample:(unsigned int)a4 totalPackge:(double)a5
{
  v8 = [(HUDIOReport *)self _currentTime];
  v9 = v8;
  begin = self->_samplePoints.dies.__begin_;
  end = self->_samplePoints.dies.__end_;
  if (begin == end)
  {
    v18 = 0.0;
    v17 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      for (i = *(begin + 3); i != *(begin + 4); i += 56)
      {
        for (j = *i; j != *(i + 8); ++j)
        {
          if (*j < a4)
          {
            v15 = v15 + a3[*j];
          }
        }

        for (k = *(i + 24); k != *(i + 32); ++k)
        {
          if (*k < a4)
          {
            v14 = v14 + a3[*k];
          }
        }
      }

      if (*begin >= a4)
      {
        v13 = v15 + v14;
      }

      else
      {
        v13 = v13 + a3[*begin];
      }

      v22 = *(begin + 2);
      if (v22 < a4)
      {
        v17 = v17 + a3[v22];
      }

      v23 = *(begin + 1);
      if (v23 < a4)
      {
        v16 = v16 + a3[v23];
      }

      for (m = *(begin + 6); m != *(begin + 7); ++m)
      {
        if (*m < a4)
        {
          v18 = v18 + a3[*m];
        }
      }

      v12 = v17 + v12 + v13 + v16 + v18;
      begin = (begin + 72);
    }

    while (begin != end);
  }

  time = self->_previousSample.time;
  if (time)
  {
    v26 = (v8 - time) / 1000000000.0;
    v27 = (v15 - self->_previousSample.samples[1]) / v26;
    v35 = (v14 - self->_previousSample.samples[2]) / v26;
    v36 = (v16 - self->_previousSample.samples[5]) / v26;
    v37 = (v17 - self->_previousSample.samples[4]) / v26;
    v38 = (v18 - self->_previousSample.samples[6]) / v26;
    HUDValueHistoryRecordAddValue(self->_records, (v13 - self->_previousSample.samples[0]) / v26);
    HUDValueHistoryRecordAddValue(&self->_records[0].valuesMaxSinceBeginning, v27);
    HUDValueHistoryRecordAddValue(&self->_records[1].valuesMinSinceBeginning, v35);
    HUDValueHistoryRecordAddValue(&self->_records[4].bucketCounts[11], v36);
    HUDValueHistoryRecordAddValue(&self->_records[3].totalNumValues, v37);
    HUDValueHistoryRecordAddValue(&self->_records[5].bucketCounts[9], v38);
  }

  self->_previousSample.samples[0] = v13;
  self->_previousSample.samples[1] = v15;
  self->_previousSample.samples[2] = v14;
  self->_previousSample.samples[4] = v17;
  self->_previousSample.samples[5] = v16;
  self->_previousSample.samples[6] = v18;
  gpuSampleIndex = self->_samplePoints.gpuSampleIndex;
  v29 = 0.0;
  if (gpuSampleIndex < a4)
  {
    v29 = a3[gpuSampleIndex] + 0.0;
  }

  v30 = self->_previousSample.time;
  if (!v30)
  {
    self->_previousSample.samples[3] = v29;
    v32 = v12 + v29;
    goto LABEL_41;
  }

  HUDValueHistoryRecordAddValue(&self->_records[2].averageSinceBeginning, (v29 - self->_previousSample.samples[3]) / ((v9 - v30) / 1000000000.0));
  v31 = self->_previousSample.time;
  self->_previousSample.samples[3] = v29;
  v32 = v12 + v29;
  if (!v31)
  {
LABEL_41:
    v33 = a5;
    goto LABEL_42;
  }

  v33 = a5;
  if (a5 != 0.0)
  {
    v32 = a5;
  }

  HUDValueHistoryRecordAddValue(&self->_records[6].bucketCounts[7], (v32 - self->_previousSample.samples[7]) / ((v9 - v31) / 1000000000.0));
LABEL_42:
  if (v33 == 0.0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  self->_previousSample.samples[7] = v34;
  self->_previousSample.time = v9;
}

- (void)sample
{
  v24 = 0;
  energySubscription = self->_energySubscription;
  energyChannels = self->_energyChannels;
  Samples = IOReportCreateSamples();
  if (Samples)
  {
    v6 = Samples;
    v17 = 0;
    v18 = &v17;
    v19 = 0x4812000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = &unk_5D621;
    std::vector<double>::vector[abi:ne200100](v23, self->_energySampleCount);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 0;
    IOReportIterate();
    CFRelease(v6);
    [(HUDIOReport *)self _addSamplesToRecords:v18[6] numSample:*(v14 + 6) totalPackge:v10[3]];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }
  }

  else
  {
    CFRelease(v24);
  }
}

uint64_t __21__HUDIOReport_sample__block_invoke(void *a1)
{
  IntegerValue = IOReportSimpleGetIntegerValue();
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 24);
  if (*(v3 + 88) == v4)
  {
    *(*(a1[6] + 8) + 24) = IntegerValue / 1000000000.0;
    *(*(a1[7] + 8) + 24) = 1;
    v5 = a1[5];
    v6 = *(*(a1[6] + 8) + 24);
    v7 = *(a1[8] + 8);
LABEL_20:
    *(*(v7 + 48) + 8 * *(*(v5 + 8) + 24)) = v6;
    goto LABEL_21;
  }

  if (*(v3 + 96) != v4)
  {
    IOReportScaleValue();
    v7 = *(a1[8] + 8);
    v5 = a1[5];
    goto LABEL_20;
  }

  Count = IOReportStateGetCount();
  memset(v31, 0, sizeof(v31));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v10 = IOReportStateGetNameForIndex();
      v11 = [v10 substringFromIndex:1];
      v12 = [v11 intValue];

      if (v12 <= 0x13)
      {
        *(v31 + v12) = IOReportStateGetResidency();
      }
    }
  }

  v13 = a1[4];
  if (*(v13 + 176))
  {
    v14 = 0;
    v15 = v13 + 184;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v16 = vaddq_s64(*(v15 + v14 * 16), v16);
      v17 = vaddq_s64(v31[v14++], v17);
    }

    while (v14 != 10);
    v18 = vaddvq_s64(v16);
    v19 = vaddvq_s64(v17);
    v20 = v19 >= v18;
    v21 = v19 - v18;
    if (v21 != 0 && v20)
    {
      v22 = v21;
      v23 = v31;
      v24 = 23;
      v25 = 9368;
      do
      {
        v26 = a1[4];
        v27 = *(v26 + 8 * v24);
        v28 = *v23;
        v20 = *v23 >= v27;
        v29 = *v23 - v27;
        if (!v20)
        {
          v29 = 0;
        }

        HUDValueHistoryRecordAddValue(v26 + v25, v29 / v22 * 100.0);
        *(a1[4] + 8 * v24++) = v28;
        v25 += 1128;
        ++v23;
      }

      while (v24 != 43);
    }
  }

LABEL_21:
  ++*(*(a1[5] + 8) + 24);
  return 0;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

@end