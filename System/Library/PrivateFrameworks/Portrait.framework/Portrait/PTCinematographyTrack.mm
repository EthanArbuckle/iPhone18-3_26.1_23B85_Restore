@interface PTCinematographyTrack
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeRangeEndForTime:(SEL)a3;
- ($69C59A32909E13F94AB58097350E6BB9)timeRange;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeAtIndex:(SEL)a3;
- ($69C59A32909E13F94AB58097350E6BB9)timeRangeForTime:(SEL)a3;
- (PTCinematographyScript)script;
- (PTCinematographyTrack)initWithDetectionType:(unint64_t)a3;
- (id)_asCinematographyDictionary;
- (id)_asMutableCinematographyDictionary;
- (id)_calculateTimeRanges;
- (id)_initWithCinematographyDictionary:(id)a3;
- (id)_initWithTrack:(id)a3;
- (id)debugTrackIdentifierString;
- (id)detectionInFrame:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)timeRangeCount;
- (void)_addStartTime:(id *)a3 endTime:(id *)a4 toTimeRanges:(id)a5;
@end

@implementation PTCinematographyTrack

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithTrack:self];
}

- (id)_initWithTrack:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTCinematographyTrack;
  v5 = [(PTCinematographyTrack *)&v10 init];
  if (v5)
  {
    v6 = [v4 script];
    objc_storeWeak(&v5->_script, v6);

    v7 = [v4 timeRanges];
    timeRanges = v5->_timeRanges;
    v5->_timeRanges = v7;

    v5->_detectionType = [v4 detectionType];
    v5->_trackIdentifier = [v4 trackIdentifier];
    v5->_groupIdentifier = [v4 groupIdentifier];
    v5->_userCreated = [v4 isUserCreated];
  }

  return v5;
}

- (PTCinematographyTrack)initWithDetectionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PTCinematographyTrack;
  result = [(PTCinematographyTrack *)&v5 init];
  if (result)
  {
    result->_trackIdentifier = -1;
    result->_groupIdentifier = -1;
    result->_detectionType = a3;
    result->_userCreated = 1;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeRangeEndForTime:(SEL)a3
{
  memset(&v7[1], 0, sizeof(CMTimeRange));
  v7[0].start = *a4;
  result = [(PTCinematographyTrack *)self timeRangeForTime:v7];
  if ((v7[1].start.flags & 1) == 0 || (v7[1].duration.flags & 1) == 0 || v7[1].duration.epoch || v7[1].duration.value < 0)
  {
    v6 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    retstr->var3 = *(v6 + 16);
  }

  else
  {
    v7[0] = v7[1];
    return CMTimeRangeGetEnd(retstr, v7);
  }

  return result;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeForTime:(SEL)a3
{
  v7 = MEMORY[0x277CC08C8];
  v8 = *(MEMORY[0x277CC08C8] + 16);
  v14 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = *(v7 + 32);
  result = [(PTCinematographyTrack *)self timeRangeCount];
  v10 = &result[-1].var1.var3 + 7;
  if (&result[-1].var1.var3 + 7 >= 0)
  {
    v11 = 0;
    while (1)
    {
      v12 = &v10[v11] >> 1;
      memset(&v17, 0, sizeof(v17));
      [(PTCinematographyTrack *)self timeRangeAtIndex:v12];
      range = v17;
      time = *a4;
      result = CMTimeRangeContainsTime(&range, &time);
      if (result)
      {
        break;
      }

      *&range.start.value = *&a4->var0;
      range.start.epoch = a4->var3;
      *&time.value = v14;
      time.epoch = *(v7 + 16);
      result = CMTimeCompare(&range.start, &time);
      if (result >= 0)
      {
        v11 = v12 + 1;
      }

      else
      {
        v10 = (v12 - 1);
      }

      if (v11 > v10)
      {
        return result;
      }
    }

    v13 = *&v17.start.epoch;
    *&retstr->var0.var0 = *&v17.start.value;
    *&retstr->var0.var3 = v13;
    *&retstr->var1.var1 = *&v17.duration.timescale;
  }

  return result;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRange
{
  result = [(PTCinematographyTrack *)self timeRangeCount];
  if (result)
  {
    [(PTCinematographyTrack *)self timeRangeAtIndex:0];
    v13 = v11;
    v14 = v12;
    memset(&v10, 0, sizeof(v10));
    [(PTCinematographyTrack *)self timeRangeAtIndex:[(PTCinematographyTrack *)self timeRangeCount]- 1];
    CMTimeRangeGetEnd(&v10, &range);
    *&range.start.value = v13;
    range.start.epoch = v14;
    v8 = v10;
    return CMTimeRangeFromTimeToTime(retstr, &range.start, &v8);
  }

  else
  {
    v6 = MEMORY[0x277CC08E0];
    v7 = *(MEMORY[0x277CC08E0] + 16);
    *&retstr->var0.var0 = *MEMORY[0x277CC08E0];
    *&retstr->var0.var3 = v7;
    *&retstr->var1.var1 = *(v6 + 32);
  }

  return result;
}

- (unint64_t)timeRangeCount
{
  v3 = [(PTCinematographyTrack *)self timeRanges];

  if (!v3)
  {
    v4 = [(PTCinematographyTrack *)self _calculateTimeRanges];
    timeRanges = self->_timeRanges;
    self->_timeRanges = v4;
  }

  v6 = [(PTCinematographyTrack *)self timeRanges];
  v7 = [v6 count];

  return v7;
}

- ($69C59A32909E13F94AB58097350E6BB9)timeRangeAtIndex:(SEL)a3
{
  v7 = [(PTCinematographyTrack *)self timeRanges];

  if (!v7)
  {
    v8 = [(PTCinematographyTrack *)self _calculateTimeRanges];
    timeRanges = self->_timeRanges;
    self->_timeRanges = v8;
  }

  v13 = [(PTCinematographyTrack *)self timeRanges];
  v10 = [v13 objectAtIndexedSubscript:a4];
  v11 = v10;
  if (v10)
  {
    [v10 CMTimeRangeValue];
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (id)detectionInFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 detectionForTrackIdentifier:{-[PTCinematographyTrack trackIdentifier](self, "trackIdentifier")}];

  return v5;
}

- (id)_calculateTimeRanges
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&v31, 0, sizeof(v31));
  CMTimeMake(&v31, 1, 1);
  v3 = objc_opt_new();
  v4 = [(PTCinematographyTrack *)self script];
  v5 = [(PTCinematographyTrack *)self script];
  v6 = v5;
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v7 = [v4 framesInTimeRange:&lhs];

  start = **&MEMORY[0x277CC0898];
  v28 = start;
  v27 = start;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (!v9)
  {

    goto LABEL_41;
  }

  v10 = v9;
  v11 = 0;
  LOBYTE(v12) = 0;
  v13 = *v24;
  do
  {
    v14 = 0;
    do
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      v16 = [(PTCinematographyTrack *)self detectionInFrame:v15];

      if (v16)
      {
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          if (v15)
          {
            [v15 time];
          }

          else
          {
            memset(&lhs, 0, 24);
          }

          v11 = 0;
          start = lhs.start;
        }

        goto LABEL_20;
      }

      if (v12)
      {
        if ((v11 & 1) == 0)
        {
          if (v15)
          {
            [v15 time];
          }

          else
          {
            memset(&lhs, 0, 24);
          }

          v28 = lhs.start;
          v22 = v31;
          CMTimeAdd(&v27, &lhs.start, &v22);
        }

        if (v15)
        {
          [v15 time];
        }

        else
        {
          memset(&lhs, 0, 24);
        }

        v22 = v27;
        if (CMTimeCompare(&lhs.start, &v22) < 1)
        {
          v11 = 1;
LABEL_20:
          v12 = 1;
          goto LABEL_29;
        }

        lhs.start = start;
        v22 = v28;
        [(PTCinematographyTrack *)self _addStartTime:&lhs endTime:&v22 toTimeRanges:v3];
        v11 = 0;
      }

      v12 = 0;
LABEL_29:
      ++v14;
    }

    while (v10 != v14);
    v17 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    v10 = v17;
  }

  while (v17);

  if (v12)
  {
    if ((v11 & 1) == 0)
    {
      v18 = [(PTCinematographyTrack *)self script];
      v19 = v18;
      if (v18)
      {
        [v18 timeRange];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      CMTimeRangeGetEnd(&v28, &lhs);
    }

    lhs.start = start;
    v22 = v28;
    [(PTCinematographyTrack *)self _addStartTime:&lhs endTime:&v22 toTimeRanges:v3];
  }

LABEL_41:
  v20 = [v3 copy];

  return v20;
}

- (void)_addStartTime:(id *)a3 endTime:(id *)a4 toTimeRanges:(id)a5
{
  memset(&v9, 0, sizeof(v9));
  v7.start = *a3;
  end = *a4;
  v5 = a5;
  CMTimeRangeFromTimeToTime(&v9, &v7.start, &end);
  v7 = v9;
  v6 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&v7];
  [v5 addObject:v6];
}

- (id)debugTrackIdentifierString
{
  v3 = [(PTCinematographyTrack *)self cachedTrackIdentifierString];

  if (!v3)
  {
    v4 = _PTFocusIdentifierMake([(PTCinematographyTrack *)self detectionType], [(PTCinematographyTrack *)self trackIdentifier]);
    cachedTrackIdentifierString = self->_cachedTrackIdentifierString;
    self->_cachedTrackIdentifierString = v4;
  }

  return [(PTCinematographyTrack *)self cachedTrackIdentifierString];
}

- (id)_asMutableCinematographyDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PTCinematographyTrack isUserCreated](self, "isUserCreated")}];
  [v3 setObject:v4 forKeyedSubscript:@"user_created"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyTrack trackType](self, "trackType")}];
  [v3 setObject:v5 forKeyedSubscript:@"track_type"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyTrack trackIdentifier](self, "trackIdentifier")}];
  [v3 setObject:v6 forKeyedSubscript:@"track_id"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyTrack groupIdentifier](self, "groupIdentifier")}];
  [v3 setObject:v7 forKeyedSubscript:@"group_id"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyTrack detectionType](self, "detectionType")}];
  [v3 setObject:v8 forKeyedSubscript:@"detection_type"];

  return v3;
}

- (id)_asCinematographyDictionary
{
  v2 = [(PTCinematographyTrack *)self _asMutableCinematographyDictionary];
  v3 = [v2 copy];

  return v3;
}

- (id)_initWithCinematographyDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v12 = [v4 objectForKeyedSubscript:@"track_type"];
    v13 = [v12 unsignedIntegerValue];

    if (v13 == 3)
    {
      v14 = PTCinematographyFixedFocusTrack;
    }

    else
    {
      if (v13 != 2)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v14 = PTCinematographyCustomTrack;
    }

    v11 = [[v14 alloc] _initWithCinematographyDictionary:v4];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PTCinematographyTrack;
    v6 = [(PTCinematographyTrack *)&v17 init];
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"user_created"];
      v6->_userCreated = [v7 BOOLValue];

      v8 = [v4 objectForKeyedSubscript:@"track_id"];
      v6->_trackIdentifier = [v8 integerValue];

      v9 = [v4 objectForKeyedSubscript:@"group_id"];
      v6->_groupIdentifier = [v9 integerValue];

      v10 = [v4 objectForKeyedSubscript:@"detection_type"];
      v6->_detectionType = [v10 unsignedIntegerValue];
    }

    v11 = v6;
    self = v11;
  }

  v15 = v11;
LABEL_11:

  return v15;
}

- (PTCinematographyScript)script
{
  WeakRetained = objc_loadWeakRetained(&self->_script);

  return WeakRetained;
}

@end