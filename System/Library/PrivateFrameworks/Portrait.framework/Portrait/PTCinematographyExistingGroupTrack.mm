@interface PTCinematographyExistingGroupTrack
- (PTCinematographyExistingGroupTrack)initWithDetectionType:(unint64_t)type groupIdentifier:(int64_t)identifier;
- (id)_calculateTrackDecisions;
- (id)_initWithExistingGroupTrack:(id)track;
- (id)detectionAtOrBeforeTime:(id *)time;
- (id)detectionInFrame:(id)frame;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)trackDecisionsInTimeRange:(id *)range;
@end

@implementation PTCinematographyExistingGroupTrack

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithExistingGroupTrack:self];
}

- (id)_initWithExistingGroupTrack:(id)track
{
  trackCopy = track;
  detectionType = [trackCopy detectionType];
  groupIdentifier = [trackCopy groupIdentifier];

  return [(PTCinematographyExistingGroupTrack *)self initWithDetectionType:detectionType groupIdentifier:groupIdentifier];
}

- (PTCinematographyExistingGroupTrack)initWithDetectionType:(unint64_t)type groupIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = PTCinematographyExistingGroupTrack;
  return [(PTCinematographyExistingTrack *)&v5 initWithDetectionType:type trackIdentifier:-1 groupIdentifier:identifier];
}

- (id)detectionInFrame:(id)frame
{
  frameCopy = frame;
  v5 = [frameCopy bestDetectionForGroupIdentifier:{-[PTCinematographyTrack groupIdentifier](self, "groupIdentifier")}];

  return v5;
}

- (id)detectionAtOrBeforeTime:(id *)time
{
  script = [(PTCinematographyTrack *)self script];
  groupIdentifier = [(PTCinematographyTrack *)self groupIdentifier];
  v9 = *time;
  v7 = [script _detectionWithGroupIdentifier:groupIdentifier atOrBeforeTime:&v9];

  return v7;
}

- (id)trackDecisionsInTimeRange:(id *)range
{
  trackDecisions = [(PTCinematographyExistingGroupTrack *)self trackDecisions];

  if (!trackDecisions)
  {
    _calculateTrackDecisions = [(PTCinematographyExistingGroupTrack *)self _calculateTrackDecisions];
    trackDecisions = self->_trackDecisions;
    self->_trackDecisions = _calculateTrackDecisions;
  }

  trackDecisions2 = [(PTCinematographyExistingGroupTrack *)self trackDecisions];
  v9 = *&range->var0.var3;
  v16[0] = *&range->var0.var0;
  v16[1] = v9;
  v16[2] = *&range->var1.var1;
  v10 = [trackDecisions2 _indexRangeOfTimeRange:v16];
  v12 = v11;

  trackDecisions3 = [(PTCinematographyExistingGroupTrack *)self trackDecisions];
  v14 = [trackDecisions3 subarrayWithRange:{v10, v12}];

  return v14;
}

- (id)_calculateTrackDecisions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  script = [(PTCinematographyTrack *)self script];
  script2 = [(PTCinematographyTrack *)self script];
  v6 = script2;
  if (script2)
  {
    [script2 timeRange];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  v7 = [script framesInTimeRange:&v25];

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