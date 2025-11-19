@interface PTCinematographyCustomTrack
- (PTCinematographyCustomTrack)initWithDetections:(id)a3;
- (id)_asCinematographyDictionary;
- (id)_initWithCinematographyDictionary:(id)a3;
- (id)_initWithCustomTrack:(id)a3;
- (id)_trackByTrimmingToTimeRange:(id *)a3 subtracting:(id *)a4;
- (id)detectionAtOrBeforeTime:(id *)a3;
- (id)detectionInFrame:(id)a3;
- (id)detectionNearestTime:(id *)a3;
- (id)detectionsInTimeRange:(id *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)applyDetectionSmoothing;
@end

@implementation PTCinematographyCustomTrack

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithCustomTrack:self];
}

- (id)_initWithCustomTrack:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v20 _initWithTrack:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 detections];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) copy];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    v14 = v5[8];
    v5[8] = v13;
  }

  return v5;
}

- (PTCinematographyCustomTrack)initWithDetections:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v4 = [(PTCinematographyCustomTrack *)self allDetections];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * v8) focusDistance];
        [(PTCinematographyFocusSmoother *)v3 addSample:?];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [(PTCinematographyFocusSmoother *)v3 endSamples];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(PTCinematographyCustomTrack *)self allDetections];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        [(PTCinematographyFocusSmoother *)v3 nextSmoothedSample];
        [v14 setFocusDistance:?];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)detectionAtOrBeforeTime:(id *)a3
{
  v5 = [(PTCinematographyCustomTrack *)self detections];
  time2 = *a3;
  v6 = [v5 _firstIndexAtOrAfterTime:&time2];

  v7 = [(PTCinematographyCustomTrack *)self detections];
  if (v6 == [v7 count])
  {
  }

  else
  {
    v8 = [(PTCinematographyCustomTrack *)self detections];
    v9 = [v8 objectAtIndexedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      [v9 time];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    v15 = *a3;
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
    v12 = [(PTCinematographyCustomTrack *)self detections];
    v13 = [v12 objectAtIndexedSubscript:v6];

    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)detectionNearestTime:(id *)a3
{
  v5 = [(PTCinematographyCustomTrack *)self detections];
  v12 = *a3;
  v6 = [v5 _indexNearestTime:&v12];

  v7 = [(PTCinematographyCustomTrack *)self detections];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(PTCinematographyCustomTrack *)self detections];
    v10 = [v9 objectAtIndexedSubscript:v6];
  }

  return v10;
}

- (id)detectionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyCustomTrack *)self detections];
  v6 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v6;
  v13[2] = *&a3->var1.var1;
  v7 = [v5 _indexRangeOfTimeRange:v13];
  v9 = v8;

  if (v9)
  {
    v10 = [(PTCinematographyCustomTrack *)self detections];
    v11 = [v10 subarrayWithRange:{v7, v9}];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (id)detectionInFrame:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 time];
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

- (id)_trackByTrimmingToTimeRange:(id *)a3 subtracting:(id *)a4
{
  v6 = *&a3->var0.var3;
  *time1 = *&a3->var0.var0;
  *&time1[16] = v6;
  v19 = *&a3->var1.var1;
  v7 = [(PTCinematographyCustomTrack *)self detectionsInTimeRange:time1];
  v8 = [v7 mutableCopy];

  if ((a4->var2 & 0x1D) == 1)
  {
    *time1 = *&a4->var0;
    *&time1[16] = a4->var3;
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

          v16 = *a4;
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
  v3 = [(PTCinematographyTrack *)&v8 _asMutableCinematographyDictionary];
  v4 = [(PTCinematographyCustomTrack *)self allDetections];
  v5 = [PTCinematographyDetection _cinematographyArrayFromDetections:v4];
  [v3 setObject:v5 forKeyedSubscript:@"detections"];

  v6 = [v3 copy];

  return v6;
}

- (id)_initWithCinematographyDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTCinematographyCustomTrack;
  v5 = [(PTCinematographyTrack *)&v10 _initWithCinematographyDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"detections"];
    v7 = [PTCinematographyDetection _detectionsFromCinematographyArray:v6];
    v8 = v5[8];
    v5[8] = v7;
  }

  return v5;
}

@end