@interface PTCinematographyCustomTrack
- (PTCinematographyCustomTrack)initWithDetections:(id)detections;
- (id)_asCinematographyDictionary;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithCustomTrack:(id)track;
- (id)_trackByTrimmingToTimeRange:(id *)range subtracting:(id *)subtracting;
- (id)detectionAtOrBeforeTime:(id *)time;
- (id)detectionInFrame:(id)frame;
- (id)detectionNearestTime:(id *)time;
- (id)detectionsInTimeRange:(id *)range;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyDetectionSmoothing;
@end

@implementation PTCinematographyCustomTrack

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithCustomTrack:self];
}

- (id)_initWithCustomTrack:(id)track
{
  v22 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v20.receiver = self;
  v20.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v20 _initWithTrack:trackCopy];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    detections = [trackCopy detections];
    v8 = [detections countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(detections);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) copy];
          [array addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [detections countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
    v14 = v5[8];
    v5[8] = v13;
  }

  return v5;
}

- (PTCinematographyCustomTrack)initWithDetections:(id)detections
{
  detectionsCopy = detections;
  v9.receiver = self;
  v9.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v9 init];
  if (v5)
  {
    v6 = [detectionsCopy copy];
    detections = v5->_detections;
    v5->_detections = v6;
  }

  return v5;
}

- (void)applyDetectionSmoothing
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(PTCinematographyFocusSmoother);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allDetections = [(PTCinematographyCustomTrack *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(allDetections);
        }

        [*(*(&v19 + 1) + 8 * v8) focusDistance];
        [(PTCinematographyFocusSmoother *)v3 addSample:?];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allDetections countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [(PTCinematographyFocusSmoother *)v3 endSamples];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allDetections2 = [(PTCinematographyCustomTrack *)self allDetections];
  v10 = [allDetections2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allDetections2);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        [(PTCinematographyFocusSmoother *)v3 nextSmoothedSample];
        [v14 setFocusDistance:?];
        ++v13;
      }

      while (v11 != v13);
      v11 = [allDetections2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)detectionAtOrBeforeTime:(id *)time
{
  detections = [(PTCinematographyCustomTrack *)self detections];
  time2 = *time;
  v6 = [detections _firstIndexAtOrAfterTime:&time2];

  detections2 = [(PTCinematographyCustomTrack *)self detections];
  if (v6 == [detections2 count])
  {
  }

  else
  {
    detections3 = [(PTCinematographyCustomTrack *)self detections];
    v9 = [detections3 objectAtIndexedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      [v9 time];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v15 = *time;
    v11 = CMTimeCompare(&v15, &time2);

    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (v6)
  {
    --v6;
LABEL_9:
    detections4 = [(PTCinematographyCustomTrack *)self detections];
    v13 = [detections4 objectAtIndexedSubscript:v6];

    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)detectionNearestTime:(id *)time
{
  detections = [(PTCinematographyCustomTrack *)self detections];
  v12 = *time;
  v6 = [detections _indexNearestTime:&v12];

  detections2 = [(PTCinematographyCustomTrack *)self detections];
  v8 = [detections2 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    detections3 = [(PTCinematographyCustomTrack *)self detections];
    v10 = [detections3 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)detectionsInTimeRange:(id *)range
{
  detections = [(PTCinematographyCustomTrack *)self detections];
  v6 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v6;
  v13[2] = *&range->var1.var1;
  v7 = [detections _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    detections2 = [(PTCinematographyCustomTrack *)self detections];
    v11 = [detections2 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)detectionInFrame:(id)frame
{
  frameCopy = frame;
  v5 = frameCopy;
  if (frameCopy)
  {
    [frameCopy time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v6 = [(PTCinematographyCustomTrack *)self detectionNearestTime:&time1];
  v7 = v6;
  if (v6)
  {
    [v6 time];
    if (v5)
    {
      [v5 time];
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
    }

    if (CMTimeCompare(&time1, &v9))
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)_trackByTrimmingToTimeRange:(id *)range subtracting:(id *)subtracting
{
  v6 = *&range->var0.var3;
  *time1 = *&range->var0.var0;
  *&time1[16] = v6;
  v19 = *&range->var1.var1;
  v7 = [(PTCinematographyCustomTrack *)self detectionsInTimeRange:time1];
  v8 = [v7 mutableCopy];

  if ((subtracting->var2 & 0x1D) == 1)
  {
    *time1 = *&subtracting->var0;
    *&time1[16] = subtracting->var3;
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(time1, &time2))
    {
      if ([v8 count])
      {
        v9 = 0;
        do
        {
          memset(time1, 0, 24);
          v10 = [v8 objectAtIndexedSubscript:v9];
          v11 = v10;
          if (v10)
          {
            [v10 time];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          v16 = *subtracting;
          CMTimeSubtract(time1, &time2, &v16);

          v12 = [v8 objectAtIndexedSubscript:v9];
          time2 = *time1;
          v13 = [v12 _detectionByChangingTime:&time2];
          [v8 setObject:v13 atIndexedSubscript:v9];

          ++v9;
        }

        while (v9 < [v8 count]);
      }
    }
  }

  v14 = [[PTCinematographyCustomTrack alloc] initWithDetections:v8];
  [(PTCinematographyTrack *)v14 setTrackIdentifier:[(PTCinematographyTrack *)self trackIdentifier]];
  [(PTCinematographyTrack *)v14 setGroupIdentifier:[(PTCinematographyTrack *)self groupIdentifier]];

  return v14;
}

- (id)_asCinematographyDictionary
{
  v8.receiver = self;
  v8.super_class = PTCinematographyCustomTrack;
  _asMutableCinematographyDictionary = [(PTCinematographyTrack *)&v8 _asMutableCinematographyDictionary];
  allDetections = [(PTCinematographyCustomTrack *)self allDetections];
  v5 = [PTCinematographyDetection _cinematographyArrayFromDetections:allDetections];
  [_asMutableCinematographyDictionary setObject:v5 forKeyedSubscript:@"detections"];

  v6 = [_asMutableCinematographyDictionary copy];

  return v6;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v10 _initWithCinematographyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"detections"];
    v7 = [PTCinematographyDetection _detectionsFromCinematographyArray:v6];
    v8 = v5[8];
    v5[8] = v7;
  }

  return v5;
}

@end