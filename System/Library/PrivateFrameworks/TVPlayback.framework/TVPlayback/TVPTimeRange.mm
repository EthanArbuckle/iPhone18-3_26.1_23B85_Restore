@interface TVPTimeRange
+ ($A0D62BC7BB322857EA05296DE7D5C3FF)forwardmostCMTimeRangeInCMTimeRanges:(SEL)ranges;
- (BOOL)containsTime:(double)time;
- (BOOL)isEqual:(id)equal;
- (TVPTimeRange)initWithCMTimeRange:(id *)range;
- (TVPTimeRange)initWithStartTime:(double)time duration:(double)duration;
- (double)endTime;
- (id)description;
- (id)intersectTimeRange:(id)range;
@end

@implementation TVPTimeRange

+ ($A0D62BC7BB322857EA05296DE7D5C3FF)forwardmostCMTimeRangeInCMTimeRanges:(SEL)ranges
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 count];
  if (!v5 || !v6)
  {
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    firstObject = [v5 firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      [firstObject CMTimeRangeValue];
    }

    else
    {
      *&retstr->var0.var3 = 0u;
      *&retstr->var1.var1 = 0u;
      *&retstr->var0.var0 = 0u;
    }

    goto LABEL_26;
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  *start = *MEMORY[0x277CC08A0];
  *&start[16] = *(MEMORY[0x277CC08A0] + 16);
  duration = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(retstr, start, &duration);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v24 = 0u;
        memset(start, 0, sizeof(start));
        if (v14)
        {
          [v14 CMTimeRangeValue];
          if (start[12])
          {
            v15 = vceqq_s32(vandq_s8(vdupq_lane_s64(__SPAIR64__(*&start[12], DWORD1(v24)), 0), xmmword_26CF4C4C0), xmmword_26CF4C4D0);
            v16 = vmovn_s32(vmvnq_s8(v15));
            v16.i16[3] = vmovn_s32(v15).i16[3];
            if ((vminv_u16(v16) & 1) != 0 && (BYTE4(v24) & 0x1D) == 1 && (*&start[24] & 0x8000000000000000) == 0 && !*(&v24 + 1))
            {
              duration = *start;
              time2 = retstr->var0;
              if (CMTimeCompare(&duration, &time2) >= 1)
              {
                v17 = *&start[16];
                *&retstr->var0.var0 = *start;
                *&retstr->var0.var3 = v17;
                *&retstr->var1.var1 = v24;
              }
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  if ((retstr->var0.var2 & 0x1D) != 1 || (retstr->var1.var2 & 0x1D) != 1)
  {
LABEL_23:
    v18 = MEMORY[0x277CC08E0];
    v19 = *(MEMORY[0x277CC08E0] + 16);
    *&retstr->var0.var0 = *MEMORY[0x277CC08E0];
    *&retstr->var0.var3 = v19;
    *&retstr->var1.var1 = *(v18 + 32);
  }

LABEL_26:

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (TVPTimeRange)initWithCMTimeRange:(id *)range
{
  Seconds = 0.0;
  if ((range->var0.var2 & 1) != 0 && (range->var1.var2 & 1) != 0 && !range->var1.var3 && ((range->var1.var2 & 0x1D) == 1 ? (v8 = (range->var0.var2 & 0x1D) == 1) : (v8 = 0), v8))
  {
    v6 = 0.0;
    if ((range->var1.var0 & 0x8000000000000000) == 0)
    {
      var0 = range->var0;
      Seconds = CMTimeGetSeconds(&var0);
      var0 = range->var1;
      v6 = CMTimeGetSeconds(&var0);
    }
  }

  else
  {
    v6 = 0.0;
  }

  return [(TVPTimeRange *)self initWithStartTime:Seconds duration:v6];
}

- (TVPTimeRange)initWithStartTime:(double)time duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = TVPTimeRange;
  result = [(TVPTimeRange *)&v7 init];
  if (result)
  {
    result->_startTime = time;
    result->_duration = duration;
  }

  return result;
}

- (double)endTime
{
  [(TVPTimeRange *)self startTime];
  v4 = v3;
  [(TVPTimeRange *)self duration];
  return v4 + v5;
}

- (BOOL)containsTime:(double)time
{
  [(TVPTimeRange *)self startTime];
  if (v5 > time)
  {
    return 0;
  }

  [(TVPTimeRange *)self endTime];
  return v7 > time;
}

- (id)intersectTimeRange:(id)range
{
  rangeCopy = range;
  v5 = [[TVPTimeRange alloc] initWithStartTime:0.0 duration:0.0];
  if (rangeCopy)
  {
    memset(&v17, 0, sizeof(v17));
    [(TVPTimeRange *)self startTime];
    CMTimeMakeWithSeconds(&start.start, v6, 1000000);
    [(TVPTimeRange *)self duration];
    CMTimeMakeWithSeconds(&duration.start, v7, 1000000);
    CMTimeRangeMake(&v17, &start.start, &duration.start);
    memset(&start, 0, sizeof(start));
    [rangeCopy startTime];
    CMTimeMakeWithSeconds(&duration.start, v8, 1000000);
    [rangeCopy duration];
    CMTimeMakeWithSeconds(&v14.start, v9, 1000000);
    CMTimeRangeMake(&start, &duration.start, &v14.start);
    v14 = v17;
    memset(&duration, 0, sizeof(duration));
    v13 = start;
    CMTimeRangeGetIntersection(&duration, &v14, &v13);
    v10 = [TVPTimeRange alloc];
    v14 = duration;
    v11 = [(TVPTimeRange *)v10 initWithCMTimeRange:&v14];

    v5 = v11;
  }

  return v5;
}

- (id)description
{
  [(TVPTimeRange *)self startTime];
  v4 = v3;
  [(TVPTimeRange *)self duration];
  v6 = v5;
  [(TVPTimeRange *)self endTime];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"Start time: %f End time: %f Duration: %f", v4, v7, v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 startTime];
    v7 = v6;
    [(TVPTimeRange *)self startTime];
    if (v7 == v8)
    {
      [v5 duration];
      v10 = v9;
      [(TVPTimeRange *)self duration];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end