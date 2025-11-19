@interface IPAVideoPlaybackSettings
+ (Class)operationClassForIdentifier:(id)a3;
+ (id)playbackSettingsForAdjustments:(id)a3;
+ (void)initialize;
- ($222789CE95D16A76D31543149FD45E96)naturalPlaybackRange;
- ($222789CE95D16A76D31543149FD45E96)scaledPlaybackRangeForScaledDuration:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalTimeForPosterFrame;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalTimeFromScaledTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)scaledDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)scaledTimeFromNaturalTime:(SEL)a3;
- (BOOL)isEqualToDescription:(id)a3;
- (IPAVideoPlaybackSettings)initWithOperations:(id)a3;
- (IPAVideoPlaybackSettings)initWithOperations:(id)a3 naturalDuration:(id *)a4;
- (id)archivalRepresentation;
- (id)debugDescription;
- (id)descriptionByAddingOperation:(id)a3;
- (id)descriptionByAddingOperation:(id)a3 atIndex:(unint64_t)a4;
- (id)descriptionByInsertingOrReplacingOperation:(id)a3;
- (id)descriptionByReplacingOperation:(id)a3 atIndex:(unint64_t)a4;
- (id)descriptionWithOperations:(id)a3;
@end

@implementation IPAVideoPlaybackSettings

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalTimeForPosterFrame
{
  *retstr = **&MEMORY[0x277CC08F0];
  v6 = [(IPAVideoPlaybackSettings *)self posterFrameOperation];
  v4 = [(IPAVideoPlaybackSettings *)self trimOperation];
  if (v6)
  {
    [v6 frameTime];
  }

  else if (v4)
  {
    [v4 startTime];
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalTimeFromScaledTime:(SEL)a3
{
  *retstr = *a4;
  v7 = [(IPAVideoPlaybackSettings *)self slomoOperation];
  v8 = v7;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  if (v7)
  {
    [v7 timeRange];
    if ((BYTE12(v18) & 1) == 0 || (BYTE4(v19[1]) & 1) == 0 || *(&v19[1] + 1) || (*(&v19[0] + 1) & 0x8000000000000000) != 0 || (v11 = *(v19 + 8), *&v12 = *(&v19[1] + 1), time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&v11, &time2)))
    {
      memset(&time2, 0, sizeof(time2));
      [(IPAVideoPlaybackSettings *)self naturalDuration];
      [v8 rate];
      v15 = *&a4->var0;
      var3 = a4->var3;
      v14 = time2;
      v11 = v18;
      v12 = v19[0];
      v13 = v19[1];
      IPANaturalTimeFromScaledTime(&v15, &v14.value, &v11, retstr, v9);
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)scaledTimeFromNaturalTime:(SEL)a3
{
  [(IPAVideoPlaybackSettings *)self naturalPlaybackRange];
  time2 = *a4;
  IPAClipTime(&time2, v19, &v12);
  *&a4->var0 = v12;
  v7 = v13;
  a4->var3 = v13;
  *&retstr->var0 = *&a4->var0;
  retstr->var3 = v7;
  v8 = [(IPAVideoPlaybackSettings *)self slomoOperation];
  v9 = v8;
  memset(v19, 0, sizeof(v19));
  if (v8)
  {
    [v8 timeRange];
    if ((BYTE12(v19[0]) & 1) == 0 || (BYTE4(v19[2]) & 1) == 0 || *(&v19[2] + 1) || (*(&v19[1] + 1) & 0x8000000000000000) != 0 || (v12 = *(&v19[1] + 8), *&v13 = *(&v19[2] + 1), time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&v12, &time2)))
    {
      memset(&time2, 0, sizeof(time2));
      [(IPAVideoPlaybackSettings *)self naturalDuration];
      [v9 rate];
      v16 = *&a4->var0;
      var3 = a4->var3;
      v15 = time2;
      v12 = v19[0];
      v13 = v19[1];
      v14 = v19[2];
      IPAScaledTimeFromNaturalTime(&v16, &v15.value, &v12, retstr, v10);
    }
  }

  return result;
}

- ($222789CE95D16A76D31543149FD45E96)scaledPlaybackRangeForScaledDuration:(SEL)a3
{
  if (a4->var2)
  {
    memset(&time, 0, sizeof(time));
    [(IPAVideoPlaybackSettings *)self naturalPlaybackRange];
    start = time.start;
    memset(&v17, 0, sizeof(v17));
    range = time;
    CMTimeRangeGetEnd(&v17, &range);
    memset(&range, 0, 24);
    memset(&v15, 0, sizeof(v15));
    v7 = [(IPAVideoPlaybackSettings *)self slomoOperation];
    if (v7)
    {
      time1 = start;
      time2 = **&MEMORY[0x277CC08F0];
      CMTimeMaximum(&range.start, &time1, &time2);
      memset(&time1, 0, sizeof(time1));
      time2 = v17;
      [(IPAVideoPlaybackSettings *)self scaledTimeFromNaturalTime:&time2];
      time2 = time1;
      v12 = *a4;
      CMTimeMinimum(&v15, &time2, &v12);
    }

    else
    {
      range.start = start;
      v15 = v17;
    }

    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
    time1 = range.start;
    time2 = v15;
    CMTimeRangeFromTimeToTime(retstr, &time1, &time2);
  }

  else
  {
    time.start = *a4;
    CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time.start);
    v9 = _PFAssertFailHandler();
    return [(IPAVideoPlaybackSettings *)v11 naturalPlaybackRange];
  }

  return result;
}

- ($222789CE95D16A76D31543149FD45E96)naturalPlaybackRange
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(IPAVideoPlaybackSettings *)self trimOperation];
  memset(&v19, 0, sizeof(v19));
  [(IPAVideoPlaybackSettings *)self naturalDuration];
  *&start.start.value = *MEMORY[0x277CC08F0];
  start.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  CMTimeRangeMake(&v19, &start.start, &duration.start);
  if (!v5)
  {
    goto LABEL_4;
  }

  memset(&start, 0, sizeof(start));
  [v5 trimRange];
  if ((start.start.flags & 1) == 0 || (start.duration.flags & 1) == 0 || start.duration.epoch || start.duration.value < 0)
  {
    duration = start;
    v15 = CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &duration);
    _PFAssertContinueHandler();

LABEL_4:
    v6 = *&v19.start.epoch;
    *&retstr->var0.var0 = *&v19.start.value;
    *&retstr->var0.var3 = v6;
    v7 = *&v19.duration.timescale;
    goto LABEL_5;
  }

  duration = start;
  range2 = v19;
  memset(&v17, 0, sizeof(v17));
  IPAClipTimeRange(&duration, &range2, &v17);
  duration = start;
  range2 = v17;
  if (!CMTimeRangeEqual(&duration, &range2))
  {
    v9 = IPAVideoGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      duration = start;
      v10 = *MEMORY[0x277CBECE8];
      v11 = CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &duration);
      duration = v19;
      v12 = CMTimeRangeCopyDescription(v10, &duration);
      duration = v17;
      v13 = CMTimeRangeCopyDescription(v10, &duration);
      LODWORD(duration.start.value) = 138412802;
      *(&duration.start.value + 4) = v11;
      LOWORD(duration.start.flags) = 2112;
      *(&duration.start.flags + 2) = v12;
      HIWORD(duration.start.epoch) = 2112;
      duration.duration.value = v13;
      _os_log_impl(&dword_25E5BB000, v9, OS_LOG_TYPE_DEBUG, "trimRange %@ falls outside of natural playback range %@; clipping to %@ ", &duration, 0x20u);
    }
  }

  v14 = *&v17.start.epoch;
  *&retstr->var0.var0 = *&v17.start.value;
  *&retstr->var0.var3 = v14;
  v7 = *&v17.duration.timescale;
LABEL_5:
  *&retstr->var1.var1 = v7;

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)scaledDuration
{
  memset(&v14, 0, sizeof(v14));
  [(IPAVideoPlaybackSettings *)self naturalPlaybackRange];
  *retstr = v14.duration;
  v5 = [(IPAVideoPlaybackSettings *)self slomoOperation];
  if (v5)
  {
    v12 = *&v14.start.value;
    epoch = v14.start.epoch;
    memset(&v11, 0, sizeof(v11));
    range = v14;
    CMTimeRangeGetEnd(&v11, &range);
    memset(&v9[1], 0, sizeof(CMTime));
    *&range.start.value = v12;
    range.start.epoch = epoch;
    [(IPAVideoPlaybackSettings *)self scaledTimeFromNaturalTime:&range];
    memset(v9, 0, 24);
    range.start = v11;
    [(IPAVideoPlaybackSettings *)self scaledTimeFromNaturalTime:&range];
    memset(&range, 0, sizeof(range));
    start = v9[1];
    v7 = v9[0];
    CMTimeRangeFromTimeToTime(&range, &start, &v7);
    *retstr = range.duration;
  }

  return result;
}

- (id)descriptionByInsertingOrReplacingOperation:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
  }

  v27 = v4;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self;
  v5 = [(IPAEditDescription *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v5)
  {
    v7 = 0;
    v28 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v28 = 0;
  v8 = 0;
  v9 = *v37;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v36 + 1) + 8 * i);
      v12 = objc_opt_class();
      if (v12 == objc_opt_class())
      {
        v13 = v8;
        v14 = v7;
        v8 = v11;
      }

      else if (v12 == objc_opt_class())
      {
        v13 = v28;
        v14 = v7;
        v28 = v11;
      }

      else
      {
        v13 = v7;
        v14 = v11;
        if (v12 != objc_opt_class())
        {
          continue;
        }
      }

      v15 = v11;

      v7 = v14;
    }

    v6 = [(IPAEditDescription *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v6);
LABEL_18:

  v16 = objc_opt_class();
  if (v16 == objc_opt_class())
  {
    v19 = v27;

    v18 = v28;
    v8 = v19;
  }

  else if (v16 == objc_opt_class())
  {
    v18 = v27;

    if (v7)
    {
      memset(&v35[1], 0, sizeof(CMTimeRange));
      [v7 timeRange];
      memset(v35, 0, 48);
      [v18 trimRange];
      time1 = v35[1];
      memset(&v34, 0, sizeof(v34));
      time2 = v35[0];
      IPAClipTimeRange(&time1, &time2, &v34);
      if ((v34.start.flags & 1) != 0 && (v34.duration.flags & 1) != 0 && !v34.duration.epoch && (v34.duration.value & 0x8000000000000000) == 0)
      {
        time1.start = v34.duration;
        v29 = *MEMORY[0x277CC08F0];
        *&time2.start.value = *MEMORY[0x277CC08F0];
        v24 = *(MEMORY[0x277CC08F0] + 16);
        time2.start.epoch = v24;
        if (!CMTimeCompare(&time1.start, &time2.start))
        {
          *&time1.start.value = *&v35[0].start.value;
          time1.start.epoch = v35[0].start.epoch;
          *&time2.start.value = v29;
          time2.start.epoch = v24;
          CMTimeRangeMake(&v34, &time1.start, &time2.start);
        }
      }

      time1 = v35[1];
      time2 = v34;
      if (!CMTimeRangeEqual(&time1, &time2))
      {
        v25 = [IPASloMoOperation alloc];
        [v7 rate];
        time1 = v34;
        v26 = [(IPASloMoOperation *)v25 initWithTimeRange:&time1 rate:?];

        v7 = v26;
      }

      if (v8)
      {
        memset(&time2, 0, 24);
        [v8 frameTime];
        time1 = v35[0];
        time = time2.start;
        if (!CMTimeRangeContainsTime(&time1, &time))
        {

          v8 = 0;
        }
      }
    }
  }

  else
  {
    if (v16 == objc_opt_class())
    {
      v17 = v27;

      v7 = v17;
    }

    v18 = v28;
  }

  v20 = objc_opt_new();
  v21 = v20;
  if (v8)
  {
    [v20 addObject:v8];
  }

  if (v18)
  {
    [v21 addObject:v18];
  }

  if (v7)
  {
    [v21 addObject:v7];
  }

  v22 = [(IPAVideoPlaybackSettings *)obj descriptionWithOperations:v21];

  return v22;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = [(IPAVideoPlaybackSettings *)self posterFrameOperation];
  v6 = [(IPAVideoPlaybackSettings *)self trimOperation];
  v7 = [(IPAVideoPlaybackSettings *)self slomoOperation];
  [v3 appendFormat:@"<%@:%p pf=%@ trim=%@ slomo=%@>", v4, self, v5, v6, v7];

  return v3;
}

- (id)archivalRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self;
  v5 = [(IPAEditDescription *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) archivalRepresentation];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 addObject:v9];
          }

          else
          {
            v12 = v9;
            _PFAssertContinueHandler();
          }
        }
      }

      v6 = [(IPAEditDescription *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  [v10 setAdjustments:v3];

  return v10;
}

- (id)descriptionByReplacingOperation:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a3;
  v5 = _PFAssertFailHandler();
  return [(IPAVideoPlaybackSettings *)v5 descriptionByAddingOperation:v6, v7];
}

- (id)descriptionByAddingOperation:(id)a3
{
  v3 = a3;
  v4 = _PFAssertFailHandler();
  return [(IPAVideoPlaybackSettings *)v4 descriptionByAddingOperation:v5 atIndex:v6, v7];
}

- (id)descriptionByAddingOperation:(id)a3 atIndex:(unint64_t)a4
{
  v4 = a3;
  v5 = _PFAssertFailHandler();
  return [(IPAVideoPlaybackSettings *)v5 descriptionWithOperations:v6, v7];
}

- (id)descriptionWithOperations:(id)a3
{
  v7.receiver = self;
  v7.super_class = IPAVideoPlaybackSettings;
  v4 = [(IPAEditDescription *)&v7 descriptionWithOperations:a3];
  if (v4)
  {
    epoch = self->_naturalDuration.epoch;
    *(v4 + 16) = *&self->_naturalDuration.value;
    *(v4 + 32) = epoch;
  }

  return v4;
}

- (BOOL)isEqualToDescription:(id)a3
{
  v4 = a3;
  [(IPAVideoPlaybackSettings *)self naturalDuration];
  if (v4)
  {
    [v4 naturalDuration];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  if (CMTimeCompare(&time1, &v20) || (v5 = [v4 operationCount], v5 != -[IPAEditDescription operationCount](self, "operationCount")))
  {
    v10 = 0;
  }

  else
  {
    v6 = [(IPAVideoPlaybackSettings *)self posterFrameOperation];
    v7 = [v4 posterFrameOperation];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }

    else
    {
      v9 = (v6 | v7) == 0;
    }

    v12 = [(IPAVideoPlaybackSettings *)self trimOperation:v20.value];
    v13 = [v4 trimOperation];
    v14 = v13;
    if (v12 && v13)
    {
      v15 = [v12 isEqual:v13];
    }

    else
    {
      v15 = (v12 | v13) == 0;
    }

    v16 = [(IPAVideoPlaybackSettings *)self slomoOperation];
    v17 = [v4 slomoOperation];
    v18 = v17;
    if (v16 && v17)
    {
      v19 = [v16 isEqual:v17];
    }

    else
    {
      v19 = (v16 | v17) == 0;
    }

    v10 = v9 & v15 & v19;
  }

  return v10;
}

- (IPAVideoPlaybackSettings)initWithOperations:(id)a3 naturalDuration:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CC08F0];
  if ((a4->var2 & 0x1D) != 1 || (time1 = *a4, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2) < 0))
  {
    v8 = IPAVideoGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      time1 = *a4;
      v9 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time1);
      LODWORD(time1.value) = 138412290;
      *(&time1.value + 4) = v9;
      _os_log_impl(&dword_25E5BB000, v8, OS_LOG_TYPE_DEBUG, "%@ is either invalid, non-numeric or negative", &time1, 0xCu);
    }

    *&a4->var0 = *v7;
    a4->var3 = *(v7 + 16);
  }

  v10 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        [v10 setObject:v16 forKeyedSubscript:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  v19 = [v10 allValues];
  v23.receiver = self;
  v23.super_class = IPAVideoPlaybackSettings;
  v20 = [(IPAEditDescription *)&v23 initWithOperations:v19];

  if (v20)
  {
    var3 = a4->var3;
    *&v20->_naturalDuration.value = *&a4->var0;
    v20->_naturalDuration.epoch = var3;
  }

  return v20;
}

- (IPAVideoPlaybackSettings)initWithOperations:(id)a3
{
  v3 = a3;
  v4 = _PFAssertFailHandler();
  return [(IPAVideoPlaybackSettings *)v4 presetifyAdjustmentStack:v5, v6];
}

+ (Class)operationClassForIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [s_identifierToClassMapping objectForKeyedSubscript:v3];
    v6 = v5;

    return v5;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAVideoPlaybackSettings *)v8 playbackSettingsForAdjustments:v9, v10];
  }
}

+ (id)playbackSettingsForAdjustments:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v22 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v3;
    v4 = [v3 adjustments];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [IPAVideoPlaybackSettings operationClassForIdentifier:v10];

          if (v11)
          {
            v12 = [v11 alloc];
            v13 = [v9 settings];
            v14 = [v12 initWithSettingsDictionary:v13];

            if (v14)
            {
              [v22 addObject:v14];
            }

            else
            {
              v16 = IPAVideoGetLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v9 settings];
                *buf = 138412546;
                v28 = v17;
                v29 = 2112;
                v30 = v11;
                _os_log_impl(&dword_25E5BB000, v16, OS_LOG_TYPE_DEFAULT, "failed to unarchive %@ via %@", buf, 0x16u);
              }

              v14 = 0;
            }
          }

          else
          {
            v14 = IPAVideoGetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v9 identifier];
              *buf = 138412290;
              v28 = v15;
              _os_log_impl(&dword_25E5BB000, v14, OS_LOG_TYPE_DEFAULT, "missing adjustment class for identifier %@", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v6);
    }

    v18 = [IPAVideoPlaybackSettings alloc];
    v3 = v21;
    [v21 naturalDuration];
    v19 = [(IPAVideoPlaybackSettings *)v18 initWithOperations:v22 naturalDuration:buf];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)initialize
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (!s_identifierToClassMapping)
  {
    v4[0] = @"PosterFrame";
    v5[0] = objc_opt_class();
    v4[1] = @"Trim";
    v5[1] = objc_opt_class();
    v4[2] = @"SloMo";
    v5[2] = objc_opt_class();
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
    v3 = s_identifierToClassMapping;
    s_identifierToClassMapping = v2;
  }
}

@end