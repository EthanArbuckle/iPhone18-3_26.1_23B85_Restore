@interface PTCinematographyExistingTrack
- (PTCinematographyExistingTrack)initWithDetectionType:(unint64_t)a3 trackIdentifier:(int64_t)a4 groupIdentifier:(int64_t)a5;
- (id)_initWithExistingTrack:(id)a3;
- (id)detectionAtOrBeforeTime:(id *)a3;
- (id)detectionInFrame:(id)a3;
- (id)detectionNearestTime:(id *)a3;
- (id)detectionsInTimeRange:(id *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation PTCinematographyExistingTrack

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithExistingTrack:self];
}

- (id)_initWithExistingTrack:(id)a3
{
  v4 = a3;
  v5 = [v4 detectionType];
  v6 = [v4 trackIdentifier];
  v7 = [v4 groupIdentifier];

  return [(PTCinematographyExistingTrack *)self initWithDetectionType:v5 trackIdentifier:v6 groupIdentifier:v7];
}

- (PTCinematographyExistingTrack)initWithDetectionType:(unint64_t)a3 trackIdentifier:(int64_t)a4 groupIdentifier:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = PTCinematographyExistingTrack;
  v7 = [(PTCinematographyTrack *)&v10 initWithDetectionType:a3];
  v8 = v7;
  if (v7)
  {
    [(PTCinematographyTrack *)v7 setTrackIdentifier:a4];
    [(PTCinematographyTrack *)v8 setGroupIdentifier:a5];
    [(PTCinematographyTrack *)v8 setUserCreated:0];
  }

  return v8;
}

- (id)detectionInFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 detectionForTrackIdentifier:{-[PTCinematographyTrack trackIdentifier](self, "trackIdentifier")}];

  return v5;
}

- (id)detectionNearestTime:(id *)a3
{
  time2.start = *a3;
  v5 = [(PTCinematographyExistingTrack *)self detectionAtOrBeforeTime:&time2];
  v6 = v5;
  if (v5)
  {
    [v5 time];
  }

  else
  {
    memset(&time2, 0, 24);
  }

  *&time1.start.value = *&a3->var0;
  time1.start.epoch = a3->var3;
  if (CMTimeCompare(&time1.start, &time2.start))
  {
    memset(&v17, 0, sizeof(v17));
    if (v6)
    {
      [v6 time];
    }

    else
    {
      memset(&time2, 0, 24);
    }

    *&time1.start.value = *&a3->var0;
    time1.start.epoch = a3->var3;
    CMTimeSubtract(&v17, &time1.start, &time2.start);
    memset(&time2, 0, sizeof(time2));
    *&time1.start.value = *&a3->var0;
    time1.start.epoch = a3->var3;
    duration = v17;
    CMTimeRangeMake(&time2, &time1.start, &duration);
    time1 = time2;
    v7 = [(PTCinematographyExistingTrack *)self detectionsInTimeRange:&time1];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = v8;
      if (v8)
      {
        [v8 time];
      }

      else
      {
        memset(&duration, 0, sizeof(duration));
      }

      v13 = *a3;
      CMTimeSubtract(&time1.start, &duration, &v13);
      duration = v17;
      v10 = CMTimeCompare(&time1.start, &duration);

      if (v10 < 0)
      {
        v11 = [v7 objectAtIndexedSubscript:0];

        v6 = v11;
      }
    }
  }

  return v6;
}

- (id)detectionAtOrBeforeTime:(id *)a3
{
  v5 = [(PTCinematographyTrack *)self script];
  v6 = [(PTCinematographyTrack *)self trackIdentifier];
  v9 = *a3;
  v7 = [v5 _detectionWithTrackIdentifier:v6 atOrBeforeTime:&v9];

  return v7;
}

- (id)detectionsInTimeRange:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(PTCinematographyTrack *)self script];
  v6 = *&a3->var0.var3;
  v21[0] = *&a3->var0.var0;
  v21[1] = v6;
  v21[2] = *&a3->var1.var1;
  v7 = [v5 framesInTimeRange:v21];

  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(PTCinematographyExistingTrack *)self detectionInFrame:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

@end