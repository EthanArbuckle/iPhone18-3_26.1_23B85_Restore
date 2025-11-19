@interface PTCinematographyExistingGroupTrack
- (PTCinematographyExistingGroupTrack)initWithDetectionType:(unint64_t)a3 groupIdentifier:(int64_t)a4;
- (id)_calculateTrackDecisions;
- (id)_initWithExistingGroupTrack:(id)a3;
- (id)detectionAtOrBeforeTime:(id *)a3;
- (id)detectionInFrame:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)trackDecisionsInTimeRange:(id *)a3;
@end

@implementation PTCinematographyExistingGroupTrack

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithExistingGroupTrack:self];
}

- (id)_initWithExistingGroupTrack:(id)a3
{
  v4 = a3;
  v5 = [v4 detectionType];
  v6 = [v4 groupIdentifier];

  return [(PTCinematographyExistingGroupTrack *)self initWithDetectionType:v5 groupIdentifier:v6];
}

- (PTCinematographyExistingGroupTrack)initWithDetectionType:(unint64_t)a3 groupIdentifier:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = PTCinematographyExistingGroupTrack;
  return [(PTCinematographyExistingTrack *)&v5 initWithDetectionType:a3 trackIdentifier:-1 groupIdentifier:a4];
}

- (id)detectionInFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 bestDetectionForGroupIdentifier:{-[PTCinematographyTrack groupIdentifier](self, "groupIdentifier")}];

  return v5;
}

- (id)detectionAtOrBeforeTime:(id *)a3
{
  v5 = [(PTCinematographyTrack *)self script];
  v6 = [(PTCinematographyTrack *)self groupIdentifier];
  v9 = *a3;
  v7 = [v5 _detectionWithGroupIdentifier:v6 atOrBeforeTime:&v9];

  return v7;
}

- (id)trackDecisionsInTimeRange:(id *)a3
{
  v5 = [(PTCinematographyExistingGroupTrack *)self trackDecisions];

  if (!v5)
  {
    v6 = [(PTCinematographyExistingGroupTrack *)self _calculateTrackDecisions];
    trackDecisions = self->_trackDecisions;
    self->_trackDecisions = v6;
  }

  v8 = [(PTCinematographyExistingGroupTrack *)self trackDecisions];
  v9 = *&a3->var0.var3;
  v16[0] = *&a3->var0.var0;
  v16[1] = v9;
  v16[2] = *&a3->var1.var1;
  v10 = [v8 _indexRangeOfTimeRange:v16];
  v12 = v11;

  v13 = [(PTCinematographyExistingGroupTrack *)self trackDecisions];
  v14 = [v13 subarrayWithRange:{v10, v12}];

  return v14;
}

- (id)_calculateTrackDecisions
{
  v29 = *MEMORY[0x277D85DE8];
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
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v7 = [v4 framesInTimeRange:&v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v14 = v11;
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v11 = [(PTCinematographyExistingGroupTrack *)self detectionInFrame:v15, v21];
        if (v11)
        {
          if (!v14 || (v16 = [v14 trackIdentifier], v16 != objc_msgSend(v11, "trackIdentifier")))
          {
            v17 = [PTCinematographyDecision alloc];
            if (v15)
            {
              [v15 time];
            }

            else
            {
              v25 = 0uLL;
              *&v26 = 0;
            }

            v18 = -[PTCinematographyDecision initWithTime:trackIdentifier:options:](v17, "initWithTime:trackIdentifier:options:", &v25, [v11 trackIdentifier], 0);
            [(PTCinematographyDecision *)v18 setGroupIdentifier:[(PTCinematographyTrack *)self groupIdentifier]];
            [v3 addObject:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v3 copy];

  return v19;
}

@end