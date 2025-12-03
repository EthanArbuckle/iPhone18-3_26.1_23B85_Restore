@interface PTCinematographyFrameDetections
+ (id)frameDetections:(id)detections detectorDidRun:(id)run presentationTime:(id *)time;
- (NSArray)allFocusIdentifiers;
- (NSArray)allTrackIdentifiers;
- (NSArray)allTrackIdentifiersForCinematicChoice;
- (PTCinematographyDetection)autoFocusDetection;
- (PTCinematographyDetection)customDetection;
- (PTCinematographyFrameDetections)initWithDetections:(id)detections detectorDidRun:(id)run presentationTime:(id *)time;
- (id)_detectionsByFocusIdentifier;
- (id)_detectionsByTrackIdentifier;
- (id)bestDetectionForGroupIdentifier:(int64_t)identifier options:(unint64_t)options;
- (id)debugDescription;
- (id)detectionForFocusIdentifier:(id)identifier;
- (id)detectionForTrackIdentifier:(int64_t)identifier;
- (void)addDetection:(id)detection;
- (void)flushCachedDetectionsDictionaries;
@end

@implementation PTCinematographyFrameDetections

+ (id)frameDetections:(id)detections detectorDidRun:(id)run presentationTime:(id *)time
{
  runCopy = run;
  detectionsCopy = detections;
  v9 = [PTCinematographyFrameDetections alloc];
  v12 = *time;
  v10 = [(PTCinematographyFrameDetections *)v9 initWithDetections:detectionsCopy detectorDidRun:runCopy presentationTime:&v12];

  return v10;
}

- (PTCinematographyFrameDetections)initWithDetections:(id)detections detectorDidRun:(id)run presentationTime:(id *)time
{
  detectionsCopy = detections;
  runCopy = run;
  v17.receiver = self;
  v17.super_class = PTCinematographyFrameDetections;
  v10 = [(PTCinematographyFrameDetections *)&v17 init];
  if (v10)
  {
    v11 = [detectionsCopy copy];
    v12 = *(v10 + 2);
    *(v10 + 2) = v11;

    v13 = [runCopy copy];
    v14 = *(v10 + 3);
    *(v10 + 3) = v13;

    v15 = *&time->var0;
    *(v10 + 11) = time->var3;
    *(v10 + 72) = v15;
  }

  return v10;
}

- (id)detectionForTrackIdentifier:(int64_t)identifier
{
  _detectionsByTrackIdentifier = [(PTCinematographyFrameDetections *)self _detectionsByTrackIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v6 = [_detectionsByTrackIdentifier objectForKeyedSubscript:v5];

  return v6;
}

- (id)bestDetectionForGroupIdentifier:(int64_t)identifier options:(unint64_t)options
{
  optionsCopy = options;
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  detections = [(PTCinematographyFrameDetections *)self detections];
  v7 = [detections countByEnumeratingWithState:&v18 objects:v26 count:16];
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
        objc_enumerationMutation(detections);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      if ([v13 groupIdentifier] == identifier)
      {
        if ((optionsCopy & 1) != 0 && [v13 _isExcludedAsCinematicChoice])
        {
          v14 = _PTLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
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

    v9 = [detections countByEnumeratingWithState:&v18 objects:v26 count:16];
  }

  while (v9);
LABEL_19:

  return v10;
}

- (id)detectionForFocusIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _detectionsByFocusIdentifier = [(PTCinematographyFrameDetections *)self _detectionsByFocusIdentifier];
  v6 = [_detectionsByFocusIdentifier objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (NSArray)allTrackIdentifiers
{
  _detectionsByTrackIdentifier = [(PTCinematographyFrameDetections *)self _detectionsByTrackIdentifier];
  allKeys = [_detectionsByTrackIdentifier allKeys];

  return allKeys;
}

- (NSArray)allTrackIdentifiersForCinematicChoice
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allTrackIdentifiers = [(PTCinematographyFrameDetections *)self allTrackIdentifiers];
  v5 = [allTrackIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allTrackIdentifiers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(PTCinematographyFrameDetections *)self detectionForTrackIdentifier:PTTrackIDFromNumber(v9)];
        v11 = v10;
        if (v10 && ([v10 _isExcludedAsCinematicChoice] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allTrackIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    detections = [(PTCinematographyFrameDetections *)self detections];
    v5 = [PTCinematographyDetection _detectionsByTrackIdentifierFromArray:detections];
    v6 = self->_cachedDetectionsByTrackIdentifier;
    self->_cachedDetectionsByTrackIdentifier = v5;

    cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  }

  return cachedDetectionsByTrackIdentifier;
}

- (NSArray)allFocusIdentifiers
{
  _detectionsByFocusIdentifier = [(PTCinematographyFrameDetections *)self _detectionsByFocusIdentifier];
  allKeys = [_detectionsByFocusIdentifier allKeys];

  return allKeys;
}

- (id)_detectionsByFocusIdentifier
{
  cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  if (!cachedDetectionsByFocusIdentifier)
  {
    detections = [(PTCinematographyFrameDetections *)self detections];
    v5 = [PTCinematographyDetection _detectionsByFocusIdentifierFromArray:detections];
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
    detections = [(PTCinematographyFrameDetections *)self detections];
    v4 = [detections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(detections);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isAutoFocusDetection])
          {
            [(PTCinematographyFrameDetections *)self setCachedAutoFocusDetection:v8];
            [(PTCinematographyFrameDetections *)self setDidCacheAutoFocusDetection:1];
            goto LABEL_12;
          }
        }

        v5 = [detections countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  cachedAutoFocusDetection = [(PTCinematographyFrameDetections *)self cachedAutoFocusDetection];

  return cachedAutoFocusDetection;
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
    detections = [(PTCinematographyFrameDetections *)self detections];
    v4 = [detections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(detections);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isCustomDetection])
          {
            [(PTCinematographyFrameDetections *)self setCachedCustomDetection:v8];
            [(PTCinematographyFrameDetections *)self setDidCacheCustomDetection:1];
            goto LABEL_12;
          }
        }

        v5 = [detections countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  cachedCustomDetection = [(PTCinematographyFrameDetections *)self cachedCustomDetection];

  return cachedCustomDetection;
}

- (void)addDetection:(id)detection
{
  detectionCopy = detection;
  detections = [(PTCinematographyFrameDetections *)self detections];
  v8 = [detections mutableCopy];

  [v8 addObject:detectionCopy];
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
  detections = [(PTCinematographyFrameDetections *)self detections];
  v5 = [detections countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(detections);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) debugDescription];
        [v3 addObject:v9];
      }

      v6 = [detections countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x277CCACA8];
  detectorDidRun = [(PTCinematographyFrameDetections *)self detectorDidRun];
  [(PTCinematographyFrameDetections *)self presentationTime];
  v12 = NSStringFromCMTime(&v15);
  v13 = [v10 stringWithFormat:@"%@ (DDR:%@, pts:%@)\n%@", self, detectorDidRun, v12, v3];

  return v13;
}

@end