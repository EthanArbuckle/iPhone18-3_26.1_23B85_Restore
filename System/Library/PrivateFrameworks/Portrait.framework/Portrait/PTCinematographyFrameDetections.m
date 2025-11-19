@interface PTCinematographyFrameDetections
+ (id)frameDetections:(id)a3 detectorDidRun:(id)a4 presentationTime:(id *)a5;
- (NSArray)allFocusIdentifiers;
- (NSArray)allTrackIdentifiers;
- (NSArray)allTrackIdentifiersForCinematicChoice;
- (PTCinematographyDetection)autoFocusDetection;
- (PTCinematographyDetection)customDetection;
- (PTCinematographyFrameDetections)initWithDetections:(id)a3 detectorDidRun:(id)a4 presentationTime:(id *)a5;
- (id)_detectionsByFocusIdentifier;
- (id)_detectionsByTrackIdentifier;
- (id)bestDetectionForGroupIdentifier:(int64_t)a3 options:(unint64_t)a4;
- (id)debugDescription;
- (id)detectionForFocusIdentifier:(id)a3;
- (id)detectionForTrackIdentifier:(int64_t)a3;
- (void)addDetection:(id)a3;
- (void)flushCachedDetectionsDictionaries;
@end

@implementation PTCinematographyFrameDetections

+ (id)frameDetections:(id)a3 detectorDidRun:(id)a4 presentationTime:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [PTCinematographyFrameDetections alloc];
  v12 = *a5;
  v10 = [(PTCinematographyFrameDetections *)v9 initWithDetections:v8 detectorDidRun:v7 presentationTime:&v12];

  return v10;
}

- (PTCinematographyFrameDetections)initWithDetections:(id)a3 detectorDidRun:(id)a4 presentationTime:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PTCinematographyFrameDetections;
  v10 = [(PTCinematographyFrameDetections *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = *(v10 + 2);
    *(v10 + 2) = v11;

    v13 = [v9 copy];
    v14 = *(v10 + 3);
    *(v10 + 3) = v13;

    v15 = *&a5->var0;
    *(v10 + 11) = a5->var3;
    *(v10 + 72) = v15;
  }

  return v10;
}

- (id)detectionForTrackIdentifier:(int64_t)a3
{
  v4 = [(PTCinematographyFrameDetections *)self _detectionsByTrackIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)bestDetectionForGroupIdentifier:(int64_t)a3 options:(unint64_t)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PTCinematographyFrameDetections *)self detections];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = v7;
  v10 = 0;
  v11 = *v19;
  *&v8 = 138412546;
  v17 = v8;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      if ([v13 groupIdentifier] == a3)
      {
        if ((v4 & 1) != 0 && [v13 _isExcludedAsCinematicChoice])
        {
          v14 = _PTLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
            *buf = v17;
            v23 = v13;
            v24 = 2112;
            v25 = v15;
            _os_log_debug_impl(&dword_2243FB000, v14, OS_LOG_TYPE_DEBUG, "excluding %@ as best detection for group %@", buf, 0x16u);
          }

          goto LABEL_14;
        }

        if (!v10 || PTDetectionTypeIsBetter([v13 detectionType], -[NSObject detectionType](v10, "detectionType")))
        {
          v14 = v10;
          v10 = v13;
LABEL_14:

          continue;
        }
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  }

  while (v9);
LABEL_19:

  return v10;
}

- (id)detectionForFocusIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyFrameDetections *)self _detectionsByFocusIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSArray)allTrackIdentifiers
{
  v2 = [(PTCinematographyFrameDetections *)self _detectionsByTrackIdentifier];
  v3 = [v2 allKeys];

  return v3;
}

- (NSArray)allTrackIdentifiersForCinematicChoice
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(PTCinematographyFrameDetections *)self allTrackIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(PTCinematographyFrameDetections *)self detectionForTrackIdentifier:PTTrackIDFromNumber(v9)];
        v11 = v10;
        if (v10 && ([v10 _isExcludedAsCinematicChoice] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)_detectionsByTrackIdentifier
{
  cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  if (!cachedDetectionsByTrackIdentifier)
  {
    v4 = [(PTCinematographyFrameDetections *)self detections];
    v5 = [PTCinematographyDetection _detectionsByTrackIdentifierFromArray:v4];
    v6 = self->_cachedDetectionsByTrackIdentifier;
    self->_cachedDetectionsByTrackIdentifier = v5;

    cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  }

  return cachedDetectionsByTrackIdentifier;
}

- (NSArray)allFocusIdentifiers
{
  v2 = [(PTCinematographyFrameDetections *)self _detectionsByFocusIdentifier];
  v3 = [v2 allKeys];

  return v3;
}

- (id)_detectionsByFocusIdentifier
{
  cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  if (!cachedDetectionsByFocusIdentifier)
  {
    v4 = [(PTCinematographyFrameDetections *)self detections];
    v5 = [PTCinematographyDetection _detectionsByFocusIdentifierFromArray:v4];
    v6 = self->_cachedDetectionsByFocusIdentifier;
    self->_cachedDetectionsByFocusIdentifier = v5;

    cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  }

  return cachedDetectionsByFocusIdentifier;
}

- (PTCinematographyDetection)autoFocusDetection
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(PTCinematographyFrameDetections *)self didCacheAutoFocusDetection])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(PTCinematographyFrameDetections *)self detections];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isAutoFocusDetection])
          {
            [(PTCinematographyFrameDetections *)self setCachedAutoFocusDetection:v8];
            [(PTCinematographyFrameDetections *)self setDidCacheAutoFocusDetection:1];
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v9 = [(PTCinematographyFrameDetections *)self cachedAutoFocusDetection];

  return v9;
}

- (PTCinematographyDetection)customDetection
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(PTCinematographyFrameDetections *)self didCacheCustomDetection])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(PTCinematographyFrameDetections *)self detections];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isCustomDetection])
          {
            [(PTCinematographyFrameDetections *)self setCachedCustomDetection:v8];
            [(PTCinematographyFrameDetections *)self setDidCacheCustomDetection:1];
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v9 = [(PTCinematographyFrameDetections *)self cachedCustomDetection];

  return v9;
}

- (void)addDetection:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyFrameDetections *)self detections];
  v8 = [v5 mutableCopy];

  [v8 addObject:v4];
  v6 = [v8 copy];
  detections = self->_detections;
  self->_detections = v6;

  [(PTCinematographyFrameDetections *)self flushCachedDetectionsDictionaries];
}

- (void)flushCachedDetectionsDictionaries
{
  cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  self->_cachedDetectionsByFocusIdentifier = 0;

  cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  self->_cachedDetectionsByTrackIdentifier = 0;
}

- (id)debugDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(PTCinematographyFrameDetections *)self detections];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) debugDescription];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(PTCinematographyFrameDetections *)self detectorDidRun];
  [(PTCinematographyFrameDetections *)self presentationTime];
  v12 = NSStringFromCMTime(&v15);
  v13 = [v10 stringWithFormat:@"%@ (DDR:%@, pts:%@)\n%@", self, v11, v12, v3];

  return v13;
}

@end