@interface PXConcreteAudioCueSource
- ($5AE9311B7D11E2B60DB273BE003E250F)bestCueInRange:(SEL)range preferredTime:(id *)time;
- ($5AE9311B7D11E2B60DB273BE003E250F)firstCueFollowingTime:(SEL)time;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)cueTimeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (BOOL)isEqual:(id)equal;
- (PXConcreteAudioCueSource)initWithNumberOfCues:(int64_t)cues configuration:(id)configuration;
- (id)diagnosticStringForTimeRange:(id *)range indicatorTime:(id *)time rangeIndicatorTimeRange:(id *)timeRange stringLength:(int64_t)length;
- (int64_t)_indexOfFirstCueFollowingTime:(id *)time;
- (int64_t)_indexOfFirstCueInRange:(id *)range;
- (int64_t)firstCueIndex;
- (void)dealloc;
- (void)enumerateCuesInRange:(id *)range withBlock:(id)block;
@end

@implementation PXConcreteAudioCueSource

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

- (int64_t)firstCueIndex
{
  if ([(PXConcreteAudioCueSource *)self numberOfCues]<= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)cueTimeRange
{
  result = [(PXConcreteAudioCueSource *)self numberOfCues];
  if (result)
  {
    v6 = result;
    cues = [(PXConcreteAudioCueSource *)self cues];
    v8 = &cues[v6];
    v9 = *&cues->var0.var0;
    start.epoch = cues->var0.var3;
    *&start.value = v9;
    v10 = *&v8[-1].var0.var0;
    v13.epoch = v8[-1].var0.var3;
    *&v13.value = v10;
    return CMTimeRangeFromTimeToTime(retstr, &start, &v13);
  }

  else
  {
    v11 = MEMORY[0x1E6960C98];
    v12 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v12;
    *&retstr->var1.var1 = *(v11 + 32);
  }

  return result;
}

- (int64_t)_indexOfFirstCueInRange:(id *)range
{
  if ((range->var0.var2 & 1) == 0)
  {
    return [(PXConcreteAudioCueSource *)self firstCueIndex];
  }

  if ((range->var1.var2 & 1) == 0)
  {
    return [(PXConcreteAudioCueSource *)self firstCueIndex];
  }

  if (range->var1.var3)
  {
    return [(PXConcreteAudioCueSource *)self firstCueIndex];
  }

  if (range->var1.var0 < 0)
  {
    return [(PXConcreteAudioCueSource *)self firstCueIndex];
  }

  [(PXConcreteAudioCueSource *)self cueTimeRange];
  v7 = *&range->var0.var3;
  *&v12.start.value = *&range->var0.var0;
  *&v12.start.epoch = v7;
  *&v12.duration.timescale = *&range->var1.var1;
  if (CMTimeRangeContainsTimeRange(&v12, &otherRange))
  {
    return [(PXConcreteAudioCueSource *)self firstCueIndex];
  }

  cues = [(PXConcreteAudioCueSource *)self cues];
  *&otherRange.start.value = *&range->var0.var0;
  otherRange.start.epoch = range->var0.var3;
  v9 = [(PXConcreteAudioCueSource *)self _indexOfFirstCueFollowingTime:&otherRange];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v9;
  v10 = &cues[v9];
  v11 = *&range->var0.var3;
  *&otherRange.start.value = *&range->var0.var0;
  *&otherRange.start.epoch = v11;
  *&otherRange.duration.timescale = *&range->var1.var1;
  *&v12.start.value = *&v10->var0.var0;
  v12.start.epoch = v10->var0.var3;
  if (!PXCMTimeRangeContainsTimeInclusive(&otherRange, &v12))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (int64_t)_indexOfFirstCueFollowingTime:(id *)time
{
  [(PXConcreteAudioCueSource *)self cues];
  [(PXConcreteAudioCueSource *)self numberOfCues];
  PXFirstIndexInSortedRangePassingTest();
}

BOOL __58__PXConcreteAudioCueSource__indexOfFirstCueFollowingTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) + 32 * a2;
  v3 = *v2;
  time1.epoch = *(v2 + 16);
  *&time1.value = v3;
  v5 = *(a1 + 40);
  return CMTimeCompare(&time1, &v5) >= 0;
}

- (id)diagnosticStringForTimeRange:(id *)range indicatorTime:(id *)time rangeIndicatorTimeRange:(id *)timeRange stringLength:(int64_t)length
{
  v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:length];
  var1 = range->var1;
  memset(&v31, 0, sizeof(v31));
  v12 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v12;
  *&range.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v31, &range);
  memset(&v29, 0, sizeof(v29));
  range.start = var1;
  CMTimeMultiplyByRatio(&v29, &range.start, 1, length);
  numberOfCues = [(PXConcreteAudioCueSource *)self numberOfCues];
  [(PXConcreteAudioCueSource *)self cues];
  var0 = range->var0;
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v13 appendString:@"           "];
  v14 = [v13 length];
  if ((timeRange->var0.var2 & 1) == 0 || (timeRange->var1.var2 & 1) == 0 || timeRange->var1.var3 || timeRange->var1.var0 < 0)
  {
    v15 = *&range->var0.var0;
    v16 = *&range->var1.var1;
    *&timeRange->var0.var3 = *&range->var0.var3;
    *&timeRange->var1.var1 = v16;
    *&timeRange->var0.var0 = v15;
    v17 = @" ";
    v23 = @" ";
  }

  else
  {
    v17 = @"{";
    v23 = @"}";
  }

  while (1)
  {
    lhs = timeRange->var0;
    rhs = v29;
    CMTimeSubtract(&range.start, &lhs, &rhs);
    lhs = var0;
    if ((CMTimeCompare(&lhs, &range.start) & 0x80000000) == 0 || v14 >= length)
    {
      break;
    }

    range.start = var0;
    lhs = v29;
    CMTimeAdd(&var0, &range.start, &lhs);
    [v13 appendString:@" "];
    v14 = [v13 length];
  }

  if (v14 >= length)
  {
    goto LABEL_14;
  }

  range.start = var0;
  lhs = timeRange->var0;
  if ((CMTimeCompare(&range.start, &lhs) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  lhs = var0;
  rhs = v29;
  CMTimeAdd(&range.start, &lhs, &rhs);
  var0 = range.start;
  while (1)
  {
    [v13 appendString:v17];
    v14 = [v13 length];
LABEL_14:
    lhs = *time;
    rhs = v29;
    CMTimeSubtract(&range.start, &lhs, &rhs);
    lhs = var0;
    if ((CMTimeCompare(&lhs, &range.start) & 0x80000000) == 0 || v14 >= length)
    {
      break;
    }

    lhs = var0;
    rhs = v29;
    CMTimeAdd(&range.start, &lhs, &rhs);
    var0 = range.start;
    v17 = @" ";
  }

  if (v14 >= length)
  {
    goto LABEL_21;
  }

  range.start = var0;
  lhs = *time;
  if ((CMTimeCompare(&range.start, &lhs) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  lhs = var0;
  rhs = v29;
  CMTimeAdd(&range.start, &lhs, &rhs);
  var0 = range.start;
  for (i = @"◎"; ; i = @" ")
  {
    [v13 appendString:i];
    v14 = [v13 length];
LABEL_21:
    v19 = *&timeRange->var0.var3;
    *&range.start.value = *&timeRange->var0.var0;
    *&range.start.epoch = v19;
    *&range.duration.timescale = *&timeRange->var1.var1;
    CMTimeRangeGetEnd(&lhs, &range);
    rhs = v29;
    CMTimeSubtract(&range.start, &lhs, &rhs);
    lhs = var0;
    if ((CMTimeCompare(&lhs, &range.start) & 0x80000000) == 0 || v14 >= length)
    {
      break;
    }

    lhs = var0;
    rhs = v29;
    CMTimeAdd(&range.start, &lhs, &rhs);
    var0 = range.start;
  }

  if (v14 >= length)
  {
    v21 = v24;
  }

  else
  {
    v20 = *&timeRange->var0.var3;
    *&range.start.value = *&timeRange->var0.var0;
    *&range.start.epoch = v20;
    *&range.duration.timescale = *&timeRange->var1.var1;
    CMTimeRangeGetEnd(&lhs, &range);
    range.start = var0;
    v21 = v24;
    if (CMTimeCompare(&range.start, &lhs) < 0)
    {
      [v13 appendString:v23];
      v14 = [v13 length];
    }
  }

  if (v14 < length)
  {
    do
    {
      [v13 appendString:@" "];
    }

    while ([v13 length] < length);
  }

  [v21 appendString:v13];
  [v21 appendString:@"\n"];
  if (numberOfCues >= 1)
  {
    *&range.start.value = *&range->var0.var0;
    range.start.epoch = range->var0.var3;
    PXFirstIndexInSortedRangePassingTest();
  }

  [v21 appendString:@"  Cues: --\n"];

  return v21;
}

BOOL __108__PXConcreteAudioCueSource_diagnosticStringForTimeRange_indicatorTime_rangeIndicatorTimeRange_stringLength___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) + 32 * a2;
  v3 = *v2;
  time1.epoch = *(v2 + 16);
  *&time1.value = v3;
  v5 = *(a1 + 40);
  return CMTimeCompare(&time1, &v5) >= 0;
}

- (void)enumerateCuesInRange:(id *)range withBlock:(id)block
{
  blockCopy = block;
  v20 = 0;
  v17 = *&range->var0.var0;
  *&v18 = range->var0.var3;
  v7 = [(PXConcreteAudioCueSource *)self _indexOfFirstCueFollowingTime:&v17];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    cues = [(PXConcreteAudioCueSource *)self cues];
    if (v8 < [(PXConcreteAudioCueSource *)self numberOfCues])
    {
      v10 = &cues[v8];
      do
      {
        v11 = *&range->var0.var3;
        v17 = *&range->var0.var0;
        v18 = v11;
        v19 = *&range->var1.var1;
        v15 = *&v10->var0.var0;
        var3 = v10->var0.var3;
        if (!PXCMTimeRangeContainsTimeInclusive(&v17, &v15))
        {
          break;
        }

        if (v20)
        {
          break;
        }

        v12 = blockCopy[2];
        v13 = *&v10->var0.var0;
        v14 = *&v10->var0.var3;
        ++v10;
        v17 = v13;
        v18 = v14;
        v12(blockCopy, &v17, &v20);
        ++v8;
      }

      while (v8 < [(PXConcreteAudioCueSource *)self numberOfCues]);
    }
  }
}

- ($5AE9311B7D11E2B60DB273BE003E250F)bestCueInRange:(SEL)range preferredTime:(id *)time
{
  result = [(PXConcreteAudioCueSource *)self numberOfCues];
  if (result && (v10 = *&time->var0.var3, v32 = *&time->var0.var0, v33 = v10, v34 = *&time->var1.var1, result = [(PXConcreteAudioCueSource *)self _indexOfFirstCueInRange:&v32], result != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = result;
    cues = [(PXConcreteAudioCueSource *)self cues];
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x4010000000;
    *(&v33 + 1) = &unk_1A561E057;
    v13 = &cues[v11];
    v14 = *&v13->var0.var3;
    v34 = *&v13->var0.var0;
    v35 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PXConcreteAudioCueSource_bestCueInRange_preferredTime___block_invoke;
    aBlock[3] = &__block_descriptor_56_e20_d40__0______qiIq_q_8l;
    v30 = *&a5->var0;
    var3 = a5->var3;
    v15 = _Block_copy(aBlock);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v16 = v15[2];
    v17 = *(*(&v32 + 1) + 48);
    v21 = *(*(&v32 + 1) + 32);
    v22 = v17;
    v28[3] = v16(v15, &v21);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __57__PXConcreteAudioCueSource_bestCueInRange_preferredTime___block_invoke_2;
    v24[3] = &unk_1E773EA98;
    v18 = v15;
    v25 = v18;
    v26 = v28;
    v27 = &v32;
    v19 = *&time->var0.var3;
    v21 = *&time->var0.var0;
    v22 = v19;
    v23 = *&time->var1.var1;
    [(PXConcreteAudioCueSource *)self enumerateCuesInRange:&v21 withBlock:v24];
    v20 = *(*(&v32 + 1) + 48);
    *&retstr->var0.var0 = *(*(&v32 + 1) + 32);
    *&retstr->var0.var3 = v20;

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    *&retstr->var0.var0 = 0u;
    *&retstr->var0.var3 = 0u;
  }

  return result;
}

double __57__PXConcreteAudioCueSource_bestCueInRange_preferredTime___block_invoke(uint64_t a1, CMTime *a2)
{
  *&time1.value = *&a2->value;
  value = a2[1].value;
  time1.epoch = a2->epoch;
  memset(&time2, 0, sizeof(time2));
  if (!CMTimeCompare(&time1, &time2) && !value)
  {
    return 2.22507386e-308;
  }

  v5 = a2[1].value;
  if ((*(a1 + 44) & 0x1D) == 1)
  {
    time2 = *a2;
    v7 = *(a1 + 32);
    CMTimeSubtract(&time1, &time2, &v7);
    return v5 + fabs(CMTimeGetSeconds(&time1)) * -2.22044605e-16;
  }

  return v5;
}

__n128 __57__PXConcreteAudioCueSource_bestCueInRange_preferredTime___block_invoke_2(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  v7 = *(v6 + 16);
  v8 = a2[1];
  v13[0] = *a2;
  v13[1] = v8;
  result.n128_f64[0] = v7(v6, v13, a3, a4);
  v10 = *(a1[5] + 8);
  if (result.n128_f64[0] > *(v10 + 24))
  {
    *(v10 + 24) = result.n128_u64[0];
    v11 = *(a1[6] + 8);
    result = *a2;
    v12 = a2[1];
    *(v11 + 32) = *a2;
    *(v11 + 48) = v12;
  }

  return result;
}

- ($5AE9311B7D11E2B60DB273BE003E250F)firstCueFollowingTime:(SEL)time
{
  v10 = *a4;
  result = [(PXConcreteAudioCueSource *)self _indexOfFirstCueFollowingTime:&v10];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    *&retstr->var0.var0 = 0u;
    *&retstr->var0.var3 = 0u;
  }

  else
  {
    v7 = result;
    result = [(PXConcreteAudioCueSource *)self cues];
    v8 = &result[v7];
    v9 = *&v8->var0.var3;
    *&retstr->var0.var0 = *&v8->var0.var0;
    *&retstr->var0.var3 = v9;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numberOfCues = [(PXConcreteAudioCueSource *)v5 numberOfCues];
      if (numberOfCues == [(PXConcreteAudioCueSource *)self numberOfCues])
      {
        if (v5)
        {
          [(PXConcreteAudioCueSource *)v5 timeRange];
        }

        else
        {
          memset(&range1, 0, sizeof(range1));
        }

        [(PXConcreteAudioCueSource *)self timeRange];
        if (CMTimeRangeEqual(&range1, &v17))
        {
          cues = [(PXConcreteAudioCueSource *)self cues];
          cues2 = [(PXConcreteAudioCueSource *)v5 cues];
          numberOfCues2 = [(PXConcreteAudioCueSource *)self numberOfCues];
          v7 = 1;
          if (cues == cues2)
          {
            goto LABEL_24;
          }

          if (!numberOfCues2)
          {
            goto LABEL_24;
          }

          v7 = 0;
          if (!cues || !cues2)
          {
            goto LABEL_24;
          }

          v11 = numberOfCues2 - 1;
          while (1)
          {
            v21 = *&cues->var0.var0;
            var1 = cues->var1;
            var3 = cues->var0.var3;
            v19 = *cues2;
            v13 = *(cues2 + 24);
            v20 = *(cues2 + 16);
            *&range1.start.value = v21;
            range1.start.epoch = var3;
            *&v17.start.value = v19;
            v17.start.epoch = v20;
            if (CMTimeCompare(&range1.start, &v17.start))
            {
              break;
            }

            v15 = v11-- != 0;
            v7 = var1 == v13;
            if (v7)
            {
              cues2 += 32;
              ++cues;
              if (v15)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }
      }

      v7 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v7 = 0;
  }

LABEL_25:

  return v7;
}

- (void)dealloc
{
  free(self->_cues);
  v3.receiver = self;
  v3.super_class = PXConcreteAudioCueSource;
  [(PXConcreteAudioCueSource *)&v3 dealloc];
}

- (PXConcreteAudioCueSource)initWithNumberOfCues:(int64_t)cues configuration:(id)configuration
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = PXConcreteAudioCueSource;
  v7 = [(PXConcreteAudioCueSource *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_numberOfCues = cues;
    if (cues >= 1)
    {
      v9 = malloc_type_calloc(cues, 0x20uLL, 0x1000040E0EAB150uLL);
      v8->_cues = v9;
      cuesCopy = cues;
      do
      {
        *&v9->var0.var0 = 0uLL;
        *&v9->var0.var3 = 0uLL;
        ++v9;
        --cuesCopy;
      }

      while (cuesCopy);
      (configurationCopy)[2](configurationCopy, v8->_cues);
      cues = v8->_cues;
      v12 = &cues[cues];
      v13 = *&cues->var0.var0;
      start.epoch = cues->var0.var3;
      *&start.value = v13;
      v14 = *&v12[-1].var0.var0;
      v18.epoch = v12[-1].var0.var3;
      *&v18.value = v14;
      CMTimeRangeFromTimeToTime(&v20, &start, &v18);
      v16 = *&v20.start.epoch;
      v15 = *&v20.duration.timescale;
      *&v8->_timeRange.start.value = *&v20.start.value;
      *&v8->_timeRange.start.epoch = v16;
      *&v8->_timeRange.duration.timescale = v15;
    }
  }

  return v8;
}

@end