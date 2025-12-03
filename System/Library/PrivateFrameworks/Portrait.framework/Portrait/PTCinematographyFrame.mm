@interface PTCinematographyFrame
+ (id)_frameFromInnerAtomStream:(id)stream;
+ (id)_frameHeaderFromAtomStream:(id)stream;
+ (id)_framesWithCinematographyDictionaries:(id)dictionaries;
+ (id)objectFromAtomStream:(id)stream;
+ (void)_debugLogFrame:(id)frame label:(id)label;
+ (void)_debugLogFrames:(id)frames label:(id)label;
+ (void)initialize;
+ (void)registerForSerialization;
- (BOOL)_copyToFrameHeaderData_0:(FrameHeaderData_0 *)data_0;
- (BOOL)_writeHeaderToAtomWriter:(id)writer options:(id)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFocusStrong;
- (BOOL)writeToAtomWriter:(id)writer options:(id)options;
- (NSSet)_detectionTrackNumberSet;
- (NSString)debugDescription;
- (NSString)description;
- (PTCinematographyFocusBlend)focusBlend;
- (id)_asCinematographyDictionary;
- (id)_detectionsByFocusIdentifier;
- (id)_detectionsByTrackIdentifier;
- (id)_focusDetectionFromCoefficientsDictionary:(id)dictionary coefficient:(float *)coefficient;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithCinematographyDictionary:(id)dictionary time:(id *)time;
- (id)_initWithFrameHeaderData_0:(FrameHeaderData_0 *)data_0;
- (id)bestDetectionForGroupIdentifier:(int64_t)identifier;
- (id)detectionAtPoint:(CGPoint)point;
- (id)detectionForFocusIdentifier:(id)identifier;
- (id)detectionForTrack:(id)track;
- (id)detectionForTrackIdentifier:(int64_t)identifier;
- (id)detectionForTrackNumber:(id)number;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)focusGroupIdentifier;
- (int64_t)focusTrackIdentifier;
- (unint64_t)hash;
- (unint64_t)sizeOfSerializedObjectWithOptions:(id)options;
- (void)_addDetection:(id)detection;
- (void)_flushCachedDetectionsDictionaries;
- (void)_focusFromDetection:(id)detection toDetection:(id)toDetection rawFocusDistance:(float)distance focusDistance:(float)focusDistance transitionCoefficient:(float)coefficient elapsedTime:(float)time duration:(float)duration;
- (void)_removeDetection:(id)detection;
- (void)_removeDetectionWithTrackIdentifier:(int64_t)identifier;
- (void)_restoreOriginal;
- (void)_updateDetectionTimes;
- (void)focusOnDetection:(id)detection;
- (void)focusOnDetection:(id)detection focusPuller:(id)puller;
- (void)focusOnNothing;
- (void)setAllDetections:(id)detections;
- (void)setDetections:(id)detections;
- (void)setTime:(id *)time;
@end

@implementation PTCinematographyFrame

- (BOOL)isFocusStrong
{
  userFocusTrackNumber = [(PTCinematographyFrame *)self userFocusTrackNumber];

  if (!userFocusTrackNumber)
  {
    return 0;
  }

  return [(PTCinematographyFrame *)self isUserFocusStrong];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [PTSerialization registerSerializationClass:self];
  }
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
  [(PTCinematographyFrame *)self _updateDetectionTimes];
}

- (void)setAllDetections:(id)detections
{
  v4 = [detections copy];
  allDetections = self->_allDetections;
  self->_allDetections = v4;

  [(PTCinematographyFrame *)self _updateDetectionTimes];
}

- (NSSet)_detectionTrackNumberSet
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allDetections);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "trackIdentifier")}];
        [v3 addObject:v9];
      }

      v6 = [allDetections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_updateDetectionTimes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v4 = [allDetections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allDetections);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        [(PTCinematographyFrame *)self time];
        v9 = v11;
        v10 = v12;
        [v8 setTime:&v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [allDetections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (int64_t)focusTrackIdentifier
{
  focusTrackNumber = [(PTCinematographyFrame *)self focusTrackNumber];
  v4 = PTTrackIDFromNumber(focusTrackNumber);

  focusDetection = [(PTCinematographyFrame *)self focusDetection];

  if (focusDetection)
  {
    focusDetection2 = [(PTCinematographyFrame *)self focusDetection];
    if ([focusDetection2 trackIdentifier] != v4)
    {
      [PTCinematographyFrame focusTrackIdentifier];
    }
  }

  return v4;
}

- (int64_t)focusGroupIdentifier
{
  focusDetection = [(PTCinematographyFrame *)self focusDetection];
  if (focusDetection)
  {
    focusDetection2 = [(PTCinematographyFrame *)self focusDetection];
    groupIdentifier = [focusDetection2 groupIdentifier];
  }

  else
  {
    groupIdentifier = -1;
  }

  return groupIdentifier;
}

- (id)detectionForTrackIdentifier:(int64_t)identifier
{
  _detectionsByTrackIdentifier = [(PTCinematographyFrame *)self _detectionsByTrackIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:identifier];
  v6 = [_detectionsByTrackIdentifier objectForKeyedSubscript:v5];

  return v6;
}

- (id)bestDetectionForGroupIdentifier:(int64_t)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allDetections);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 groupIdentifier] == identifier && (!v7 || PTDetectionTypeIsBetter(objc_msgSend(v10, "detectionType"), objc_msgSend(v7, "detectionType"))))
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [allDetections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDetections:(id)detections
{
  allValues = [detections allValues];
  v4 = [allValues copy];
  [(PTCinematographyFrame *)self setAllDetections:v4];
}

- (id)detectionForFocusIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _detectionsByFocusIdentifier = [(PTCinematographyFrame *)self _detectionsByFocusIdentifier];
  v6 = [_detectionsByFocusIdentifier objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (PTCinematographyFocusBlend)focusBlend
{
  v3 = [PTCinematographyFocusBlend alloc];
  focusDetection = [(PTCinematographyFrame *)self focusDetection];
  v5 = [(PTCinematographyFocusBlend *)v3 initFocusedOnDetection:focusDetection];

  return v5;
}

- (id)detectionForTrack:(id)track
{
  trackIdentifier = [track trackIdentifier];

  return [(PTCinematographyFrame *)self detectionForTrackIdentifier:trackIdentifier];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  [(PTCinematographyFrame *)self time];
  v4 = NSStringFromCMTime(&v13);
  focusDetection = [(PTCinematographyFrame *)self focusDetection];
  focusIdentifier = [focusDetection focusIdentifier];
  v7 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self focusDistance];
  v8 = [v7 numberWithFloat:?];
  v9 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self aperture];
  v10 = [v9 numberWithFloat:?];
  v11 = [v3 stringWithFormat:@"Frame: %@ [%@] (%@, %@)", v4, focusIdentifier, v8, v10];

  return v11;
}

- (NSString)debugDescription
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allDetections);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) debugDescription];
        [v3 addObject:v9];
      }

      v6 = [allDetections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self, v3];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PTCinematographyFrame *)self time];
      if (v5)
      {
        [(PTCinematographyFrame *)v5 time];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      if (!CMTimeCompare(&time1, &v22) && ([(PTCinematographyFrame *)self aperture], v9 = v8, [(PTCinematographyFrame *)v5 aperture], v9 == v10) && ([(PTCinematographyFrame *)self focusDistance], v12 = v11, [(PTCinematographyFrame *)v5 focusDistance], v12 == v13) && (v14 = [(PTCinematographyFrame *)self focusTrackIdentifier], v14 == [(PTCinematographyFrame *)v5 focusTrackIdentifier]))
      {
        allDetections = [(PTCinematographyFrame *)self allDetections];
        allDetections2 = [(PTCinematographyFrame *)v5 allDetections];
        if ([allDetections isEqual:allDetections2] && (-[PTCinematographyFrame transitionCoefficient](self, "transitionCoefficient"), v18 = v17, -[PTCinematographyFrame transitionCoefficient](v5, "transitionCoefficient"), v18 == v19))
        {
          focusDetection = [(PTCinematographyFrame *)self focusDetection];
          focusDetection2 = [(PTCinematographyFrame *)v5 focusDetection];
          v6 = [focusDetection isEqual:focusDetection2];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  [(PTCinematographyFrame *)self time];
  Seconds = CMTimeGetSeconds(&time);
  [(PTCinematographyFrame *)self aperture];
  v5 = v4 + Seconds * 600.0;
  [(PTCinematographyFrame *)self focusDistance];
  return (v5 + v6);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PTCinematographyFrame);
  if (v4)
  {
    [(PTCinematographyFrame *)self time];
    v15 = v17;
    v16 = v18;
    [(PTCinematographyFrame *)v4 setTime:&v15];
    [(PTCinematographyFrame *)self aperture];
    [(PTCinematographyFrame *)v4 setAperture:?];
    [(PTCinematographyFrame *)self focusDistance];
    [(PTCinematographyFrame *)v4 setFocusDistance:?];
    allDetections = [(PTCinematographyFrame *)self allDetections];
    v6 = [allDetections copy];
    [(PTCinematographyFrame *)v4 setAllDetections:v6];

    focusTrackNumber = [(PTCinematographyFrame *)self focusTrackNumber];
    [(PTCinematographyFrame *)v4 setFocusTrackNumber:focusTrackNumber];

    baseFocusTrackNumber = [(PTCinematographyFrame *)self baseFocusTrackNumber];
    [(PTCinematographyFrame *)v4 setBaseFocusTrackNumber:baseFocusTrackNumber];

    userFocusTrackNumber = [(PTCinematographyFrame *)self userFocusTrackNumber];
    [(PTCinematographyFrame *)v4 setUserFocusTrackNumber:userFocusTrackNumber];

    [(PTCinematographyFrame *)v4 setUserFocusStrong:[(PTCinematographyFrame *)self isUserFocusStrong]];
    [(PTCinematographyFrame *)v4 setUserFocusGroup:[(PTCinematographyFrame *)self isUserFocusGroup]];
    focusDetection = [(PTCinematographyFrame *)self focusDetection];
    [(PTCinematographyFrame *)v4 setFocusDetection:focusDetection];

    [(PTCinematographyFrame *)self transitionCoefficient];
    [(PTCinematographyFrame *)v4 setTransitionCoefficient:?];
    [(PTCinematographyFrame *)self transitionElapsedTime];
    [(PTCinematographyFrame *)v4 setTransitionElapsedTime:?];
    [(PTCinematographyFrame *)self transitionDuration];
    [(PTCinematographyFrame *)v4 setTransitionDuration:?];
    _frameNumber = [(PTCinematographyFrame *)self _frameNumber];
    [(PTCinematographyFrame *)v4 _setFrameNumber:_frameNumber];

    [(PTCinematographyFrame *)v4 _setSnapshotPolicy:[(PTCinematographyFrame *)self _snapshotPolicy]];
    _snapshot = [(PTCinematographyFrame *)self _snapshot];
    v13 = [_snapshot copy];
    [(PTCinematographyFrame *)v4 _setSnapshot:v13];
  }

  return v4;
}

- (id)detectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v6 = [allDetections countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    v10 = INFINITY;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(allDetections);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        [v12 rect];
        v13 = v31.origin.x;
        v14 = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
        v30.x = x;
        v30.y = y;
        if (CGRectContainsPoint(v31, v30))
        {
          detectionType = [v12 detectionType];
          v18 = detectionType > 0xB || ((1 << detectionType) & 0x83E) == 0;
          if (!v18 || detectionType == 102)
          {
            Area = CGRectGetArea(v13, v14, width, height);
            if (Area < v10)
            {
              v20 = Area;
              v21 = v12;

              v10 = v20;
              v8 = v21;
            }
          }
        }
      }

      v7 = [allDetections countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_detectionsByTrackIdentifier
{
  cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  if (!cachedDetectionsByTrackIdentifier)
  {
    allDetections = [(PTCinematographyFrame *)self allDetections];
    v5 = [PTCinematographyDetection _detectionsByTrackIdentifierFromArray:allDetections];
    v6 = self->_cachedDetectionsByTrackIdentifier;
    self->_cachedDetectionsByTrackIdentifier = v5;

    cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  }

  return cachedDetectionsByTrackIdentifier;
}

- (id)_detectionsByFocusIdentifier
{
  cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  if (!cachedDetectionsByFocusIdentifier)
  {
    allDetections = [(PTCinematographyFrame *)self allDetections];
    v5 = [PTCinematographyDetection _detectionsByFocusIdentifierFromArray:allDetections];
    v6 = self->_cachedDetectionsByFocusIdentifier;
    self->_cachedDetectionsByFocusIdentifier = v5;

    cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  }

  return cachedDetectionsByFocusIdentifier;
}

- (id)detectionForTrackNumber:(id)number
{
  if (number)
  {
    v4 = -[PTCinematographyFrame detectionForTrackIdentifier:](self, "detectionForTrackIdentifier:", [number integerValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_addDetection:(id)detection
{
  detectionCopy = detection;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v7 = [allDetections mutableCopy];

  [v7 addObject:detectionCopy];
  v6 = [v7 copy];
  [(PTCinematographyFrame *)self setAllDetections:v6];

  [(PTCinematographyFrame *)self _flushCachedDetectionsDictionaries];
}

- (void)_removeDetection:(id)detection
{
  detectionCopy = detection;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v7 = [allDetections mutableCopy];

  [v7 removeObject:detectionCopy];
  v6 = [v7 copy];
  [(PTCinematographyFrame *)self setAllDetections:v6];

  [(PTCinematographyFrame *)self _flushCachedDetectionsDictionaries];
}

- (void)_removeDetectionWithTrackIdentifier:(int64_t)identifier
{
  v4 = [(PTCinematographyFrame *)self detectionForTrackIdentifier:identifier];
  if (v4)
  {
    [(PTCinematographyFrame *)self _removeDetection:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_flushCachedDetectionsDictionaries
{
  cachedDetectionsByFocusIdentifier = self->_cachedDetectionsByFocusIdentifier;
  self->_cachedDetectionsByFocusIdentifier = 0;

  cachedDetectionsByTrackIdentifier = self->_cachedDetectionsByTrackIdentifier;
  self->_cachedDetectionsByTrackIdentifier = 0;
}

+ (id)_framesWithCinematographyDictionaries:(id)dictionaries
{
  v20 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PTCinematographyFrame alloc];
        v12 = [(PTCinematographyFrame *)v11 _initWithCinematographyDictionary:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)_focusDetectionFromCoefficientsDictionary:(id)dictionary coefficient:(float *)coefficient
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v8 = [allDetections countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allDetections);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        focusIdentifier = [v14 focusIdentifier];
        v16 = [dictionaryCopy objectForKeyedSubscript:focusIdentifier];
        [v16 floatValue];
        v18 = v17;

        if (v18 > v12)
        {
          v19 = v14;

          v10 = v19;
          v12 = v18;
        }
      }

      v9 = [allDetections countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v12 = 0.0;
  }

  if (coefficient)
  {
    *coefficient = v12;
  }

  return v10;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = PTCinematographyFrame;
  v5 = [(PTCinematographyFrame *)&v49 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"trackers"];
    allValues = [v6 allValues];
    v8 = [PTCinematographyDetection _detectionsFromCinematographyArray:allValues];
    v9 = *(v5 + 10);
    *(v5 + 10) = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"focus_track_id"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"focus_track_id"];
      v12 = *(v5 + 11);
      *(v5 + 11) = v11;

      v13 = [v5 detectionForTrackNumber:*(v5 + 11)];
      v14 = *(v5 + 9);
      *(v5 + 9) = v13;

      v15 = [dictionaryCopy objectForKeyedSubscript:@"transition_coefficient"];
      [v15 floatValue];
      *(v5 + 6) = v16;
    }

    else
    {
      LODWORD(v48.value) = 0;
      v15 = [dictionaryCopy objectForKeyedSubscript:@"coefficients"];
      v17 = [v5 _focusDetectionFromCoefficientsDictionary:v15 coefficient:&v48];
      v18 = *(v5 + 9);
      *(v5 + 9) = v17;

      trackNumber = [*(v5 + 9) trackNumber];
      v20 = *(v5 + 11);
      *(v5 + 11) = trackNumber;

      *(v5 + 6) = 1.0 - *&v48.value;
      if (!*(v5 + 9))
      {
        v21 = _PTLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [(PTCinematographyFrame(Private) *)v15 _initWithCinematographyDictionary:v21];
        }
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"transition_elapsed_time"];
    [v22 floatValue];
    *(v5 + 7) = v23;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"transition_duration"];
    [v24 floatValue];
    *(v5 + 8) = v25;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"base_track_id"];
    v27 = v26;
    if (!v26)
    {
      v27 = *(v5 + 11);
    }

    objc_storeStrong(v5 + 12, v27);

    v28 = [dictionaryCopy objectForKeyedSubscript:@"user_track_id"];
    v29 = *(v5 + 13);
    *(v5 + 13) = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"user_focus_strong"];
    v5[8] = [v30 BOOLValue];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"user_focus_group"];
    v5[9] = [v31 BOOLValue];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"frame"];
    v33 = *(v5 + 5);
    *(v5 + 5) = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"ptime"];
    CMTimeFromPTCinematographyDictionary(&v48, v34);
    *(v5 + 136) = v48;

    v35 = [dictionaryCopy objectForKeyedSubscript:@"aperture"];
    [v35 floatValue];
    *(v5 + 3) = v36;

    v37 = [dictionaryCopy objectForKeyedSubscript:@"disparity"];
    [v37 floatValue];
    *(v5 + 4) = v38;

    v39 = [dictionaryCopy objectForKeyedSubscript:@"_raw_disparity"];
    if (objc_opt_respondsToSelector())
    {
      [v39 floatValue];
    }

    else
    {
      v41 = *(v5 + 9);
      if (v41)
      {
        [v41 focusDistance];
      }

      else
      {
        v40 = *(v5 + 4);
      }
    }

    *(v5 + 5) = v40;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"_snapshot"];
    v43 = *(v5 + 6);
    *(v5 + 6) = v42;

    v44 = [dictionaryCopy objectForKeyedSubscript:@"_snapshot_policy"];
    *(v5 + 7) = [v44 unsignedIntegerValue];

    v45 = [dictionaryCopy objectForKeyedSubscript:@"detector_did_run"];
    v46 = *(v5 + 8);
    *(v5 + 8) = v45;
  }

  return v5;
}

- (id)_initWithCinematographyDictionary:(id)dictionary time:(id *)time
{
  v5 = [(PTCinematographyFrame *)self _initWithCinematographyDictionary:dictionary];
  v6 = v5;
  if (v5)
  {
    v8 = *&time->var0;
    var3 = time->var3;
    [v5 setTime:&v8];
  }

  return v6;
}

- (id)_asCinematographyDictionary
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(allDetections);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        focusIdentifier = [v9 focusIdentifier];
        _asCinematographyDictionary = [v9 _asCinematographyDictionary];
        [v3 setObject:_asCinematographyDictionary forKeyedSubscript:focusIdentifier];
      }

      v6 = [allDetections countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v6);
  }

  v12 = objc_opt_new();
  baseFocusTrackNumber = [(PTCinematographyFrame *)self baseFocusTrackNumber];
  [v12 setObject:baseFocusTrackNumber forKeyedSubscript:@"base_track_id"];

  userFocusTrackNumber = [(PTCinematographyFrame *)self userFocusTrackNumber];
  [v12 setObject:userFocusTrackNumber forKeyedSubscript:@"user_track_id"];

  if ([(PTCinematographyFrame *)self isUserFocusStrong])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[PTCinematographyFrame isUserFocusStrong](self, "isUserFocusStrong")}];
    [v12 setObject:v15 forKeyedSubscript:@"user_focus_strong"];
  }

  else
  {
    [v12 setObject:0 forKeyedSubscript:@"user_focus_strong"];
  }

  if ([(PTCinematographyFrame *)self isUserFocusGroup])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[PTCinematographyFrame isUserFocusGroup](self, "isUserFocusGroup")}];
    [v12 setObject:v16 forKeyedSubscript:@"user_focus_group"];
  }

  else
  {
    [v12 setObject:0 forKeyedSubscript:@"user_focus_group"];
  }

  _frameNumber = [(PTCinematographyFrame *)self _frameNumber];
  [v12 setObject:_frameNumber forKeyedSubscript:@"frame"];

  [(PTCinematographyFrame *)self time];
  v18 = PTCinematographyDictionaryFromCMTime(v37);
  [v12 setObject:v18 forKeyedSubscript:@"ptime"];

  v19 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self aperture];
  v20 = [v19 numberWithFloat:?];
  [v12 setObject:v20 forKeyedSubscript:@"aperture"];

  v21 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self focusDistance];
  v22 = [v21 numberWithFloat:?];
  [v12 setObject:v22 forKeyedSubscript:@"disparity"];

  v23 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self rawFocusDistance];
  v24 = [v23 numberWithFloat:?];
  [v12 setObject:v24 forKeyedSubscript:@"_raw_disparity"];

  v25 = [v3 copy];
  [v12 setObject:v25 forKeyedSubscript:@"trackers"];

  _snapshot = [(PTCinematographyFrame *)self _snapshot];
  [v12 setObject:_snapshot forKeyedSubscript:@"_snapshot"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyFrame _snapshotPolicy](self, "_snapshotPolicy")}];
  [v12 setObject:v27 forKeyedSubscript:@"_snapshot_policy"];

  _detectorDidRun = [(PTCinematographyFrame *)self _detectorDidRun];
  [v12 setObject:_detectorDidRun forKeyedSubscript:@"detector_did_run"];

  focusTrackNumber = [(PTCinematographyFrame *)self focusTrackNumber];
  [v12 setObject:focusTrackNumber forKeyedSubscript:@"focus_track_id"];

  v30 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self transitionCoefficient];
  v31 = [v30 numberWithFloat:?];
  [v12 setObject:v31 forKeyedSubscript:@"transition_coefficient"];

  v32 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self transitionElapsedTime];
  v33 = [v32 numberWithFloat:?];
  [v12 setObject:v33 forKeyedSubscript:@"transition_elapsed_time"];

  v34 = MEMORY[0x277CCABB0];
  [(PTCinematographyFrame *)self transitionDuration];
  v35 = [v34 numberWithFloat:?];
  [v12 setObject:v35 forKeyedSubscript:@"transition_duration"];

  return v12;
}

- (void)_restoreOriginal
{
  v14 = *MEMORY[0x277D85DE8];
  [(PTCinematographyFrame *)self rawFocusDistance];
  if (v3 > 0.0)
  {
    [(PTCinematographyFrame *)self rawFocusDistance];
    [(PTCinematographyFrame *)self setFocusDistance:?];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allDetections = [(PTCinematographyFrame *)self allDetections];
  v5 = [allDetections countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allDetections);
        }

        [*(*(&v9 + 1) + 8 * v8++) _restoreOriginal];
      }

      while (v6 != v8);
      v6 = [allDetections countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)_debugLogFrames:(id)frames label:(id)label
{
  v17 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  labelCopy = label;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [framesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(framesCopy);
        }

        [self _debugLogFrame:*(*(&v12 + 1) + 8 * v11++) label:labelCopy];
      }

      while (v9 != v11);
      v9 = [framesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)_debugLogFrame:(id)frame label:(id)label
{
  v59 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  labelCopy = label;
  focusDetection = [frameCopy focusDetection];
  focusIdentifier = [focusDetection focusIdentifier];

  focusTrackNumber = [frameCopy focusTrackNumber];
  focusDetection2 = [frameCopy focusDetection];
  [focusDetection2 rect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = _PTLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    _frameNumber = [frameCopy _frameNumber];
    v20 = MEMORY[0x277CCABB0];
    [frameCopy focusDistance];
    v21 = [v20 numberWithFloat:?];
    v22 = MEMORY[0x277CCABB0];
    [frameCopy aperture];
    v23 = [v22 numberWithFloat:?];
    userFocusTrackNumber = [frameCopy userFocusTrackNumber];
    v25 = &stru_2837D16E8;
    if (userFocusTrackNumber)
    {
      v33 = MEMORY[0x277CCACA8];
      [frameCopy userFocusTrackNumber];
      v26 = v34 = v23;
      v27 = v21;
      if ([frameCopy isUserFocusGroup])
      {
        v28 = @"g";
      }

      else
      {
        v28 = &stru_2837D16E8;
      }

      isUserFocusStrong = [frameCopy isUserFocusStrong];
      v30 = @"+";
      if (!isUserFocusStrong)
      {
        v30 = &stru_2837D16E8;
      }

      v32 = v28;
      v21 = v27;
      v35 = v26;
      v31 = v26;
      v23 = v34;
      v25 = [v33 stringWithFormat:@" userFocusTrackNumber: %@ %@%@", v31, v32, v30];;
    }

    *buf = 138414850;
    v38 = labelCopy;
    v39 = 2112;
    v40 = _frameNumber;
    v41 = 2112;
    v42 = focusIdentifier;
    v43 = 2112;
    v44 = focusTrackNumber;
    v45 = 2112;
    v46 = v21;
    v47 = 2112;
    v48 = v23;
    v49 = 2112;
    v50 = v25;
    v51 = 2048;
    v52 = v12;
    v53 = 2048;
    v54 = v14;
    v55 = 2048;
    v56 = v16;
    v57 = 2048;
    v58 = v18;
    _os_log_debug_impl(&dword_2243FB000, v19, OS_LOG_TYPE_DEBUG, "%@ Frame %@: focus %@ (%@), disparity %@, aperture %@%@ rect { %.3f, %.3f, %.3f, %.3f }", buf, 0x70u);
    if (userFocusTrackNumber)
    {
    }
  }
}

- (void)focusOnNothing
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(PTCinematographyFrame(Private) *)v3 focusOnNothing];
  }

  v4 = _PTLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyFrame(Private) *)v6 focusOnNothing];
    }
  }

  [(PTCinematographyFrame *)self setRawFocusDistance:0.0];
  [(PTCinematographyFrame *)self setFocusDistance:0.0];
  [(PTCinematographyFrame *)self setFocusDetection:0];
  [(PTCinematographyFrame *)self setFocusTrackNumber:0];
  [(PTCinematographyFrame *)self setTransitionCoefficient:0.0];
  [(PTCinematographyFrame *)self setTransitionElapsedTime:0.0];
  [(PTCinematographyFrame *)self setTransitionDuration:0.0];
}

- (void)focusOnDetection:(id)detection
{
  if (detection)
  {
    [(PTCinematographyFrame *)self focusOnDetection:detection focusPuller:0];
  }

  else
  {
    [(PTCinematographyFrame *)self focusOnNothing];
  }
}

- (void)focusOnDetection:(id)detection focusPuller:(id)puller
{
  pullerCopy = puller;
  detectionCopy = detection;
  [detectionCopy focusDistance];
  v9 = LODWORD(v8);
  v10 = LODWORD(v8);
  if (pullerCopy)
  {
    [(PTCinematographyFrame *)self time];
    LODWORD(v11) = v9;
    [pullerCopy pullTowardFocusDistance:v14 time:v11];
    v10 = LODWORD(v8);
  }

  LODWORD(v8) = v9;
  [(PTCinematographyFrame *)self setRawFocusDistance:v8];
  LODWORD(v12) = v10;
  [(PTCinematographyFrame *)self setFocusDistance:v12];
  [(PTCinematographyFrame *)self setFocusDetection:detectionCopy];
  trackNumber = [detectionCopy trackNumber];

  [(PTCinematographyFrame *)self setFocusTrackNumber:trackNumber];
  [(PTCinematographyFrame *)self setTransitionCoefficient:0.0];
  [(PTCinematographyFrame *)self setTransitionElapsedTime:0.0];
  [(PTCinematographyFrame *)self setTransitionDuration:0.0];
}

- (void)_focusFromDetection:(id)detection toDetection:(id)toDetection rawFocusDistance:(float)distance focusDistance:(float)focusDistance transitionCoefficient:(float)coefficient elapsedTime:(float)time duration:(float)duration
{
  detectionCopy = detection;
  *&v16 = distance;
  [(PTCinematographyFrame *)self setRawFocusDistance:v16];
  *&v17 = focusDistance;
  [(PTCinematographyFrame *)self setFocusDistance:v17];
  [(PTCinematographyFrame *)self setFocusDetection:detectionCopy];
  trackNumber = [detectionCopy trackNumber];

  [(PTCinematographyFrame *)self setFocusTrackNumber:trackNumber];
  *&v19 = coefficient;
  [(PTCinematographyFrame *)self setTransitionCoefficient:v19];
  *&v20 = time;
  [(PTCinematographyFrame *)self setTransitionElapsedTime:v20];
  *&v21 = duration;

  [(PTCinematographyFrame *)self setTransitionDuration:v21];
}

+ (void)registerForSerialization
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PTCinematographyFrame_Serialization__registerForSerialization__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerForSerialization_onceToken_0 != -1)
  {
    dispatch_once(&registerForSerialization_onceToken_0, block);
  }
}

BOOL __64__PTCinematographyFrame_Serialization__registerForSerialization__block_invoke(uint64_t a1)
{
  [PTSerialization registerType:1718775141 providerClass:*(a1 + 32)];
  v1 = objc_opt_class();

  return [PTSerialization registerSerializationClass:v1];
}

- (id)_initWithFrameHeaderData_0:(FrameHeaderData_0 *)data_0
{
  v17.receiver = self;
  v17.super_class = PTCinematographyFrame;
  v4 = [(PTCinematographyFrame *)&v17 init];
  if (v4)
  {
    v5 = NSNumberFromPTTrackID(bswap64(data_0->var0));
    [(PTCinematographyFrame *)v4 setFocusTrackNumber:v5];

    v6 = NSNumberFromPTTrackID(bswap64(data_0->var1));
    [(PTCinematographyFrame *)v4 setBaseFocusTrackNumber:v6];

    v7 = NSNumberFromPTTrackID(bswap64(data_0->var2));
    [(PTCinematographyFrame *)v4 setUserFocusTrackNumber:v7];

    *&v8 = _PTSwapBigGetFloat(&data_0->var3);
    [(PTCinematographyFrame *)v4 setAperture:v8];
    *&v9 = _PTSwapBigGetFloat(&data_0->var4);
    [(PTCinematographyFrame *)v4 setFocusDistance:v9];
    *&v10 = _PTSwapBigGetFloat(&data_0->var5);
    [(PTCinematographyFrame *)v4 setRawFocusDistance:v10];
    *&v11 = _PTSwapBigGetFloat(&data_0->var6);
    [(PTCinematographyFrame *)v4 setTransitionCoefficient:v11];
    *&v12 = _PTSwapBigGetFloat(&data_0->var7);
    [(PTCinematographyFrame *)v4 setTransitionElapsedTime:v12];
    *&v13 = _PTSwapBigGetFloat(&data_0->var8);
    [(PTCinematographyFrame *)v4 setTransitionDuration:v13];
    v14 = bswap32(data_0->var9);
    if ((v14 & 2) != 0)
    {
      [(PTCinematographyFrame *)v4 _setDetectorDidRun:0];
    }

    else
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
      [(PTCinematographyFrame *)v4 _setDetectorDidRun:v15];
    }

    [(PTCinematographyFrame *)v4 setUserFocusStrong:(v14 >> 2) & 1];
    [(PTCinematographyFrame *)v4 setUserFocusGroup:(v14 >> 3) & 1];
    [(PTCinematographyFrame *)v4 setUserFocusEnd:(v14 >> 4) & 1];
  }

  return v4;
}

- (BOOL)_copyToFrameHeaderData_0:(FrameHeaderData_0 *)data_0
{
  data_0->var0 = bswap64([(PTCinematographyFrame *)self focusTrackIdentifier]);
  baseFocusTrackNumber = [(PTCinematographyFrame *)self baseFocusTrackNumber];
  data_0->var1 = bswap64(PTTrackIDFromNumber(baseFocusTrackNumber));

  userFocusTrackNumber = [(PTCinematographyFrame *)self userFocusTrackNumber];
  data_0->var2 = bswap64(PTTrackIDFromNumber(userFocusTrackNumber));

  [(PTCinematographyFrame *)self aperture];
  _PTSwapBigAssignFloat(&data_0->var3, v7);
  [(PTCinematographyFrame *)self focusDistance];
  _PTSwapBigAssignFloat(&data_0->var4, v8);
  [(PTCinematographyFrame *)self rawFocusDistance];
  _PTSwapBigAssignFloat(&data_0->var5, v9);
  [(PTCinematographyFrame *)self transitionCoefficient];
  _PTSwapBigAssignFloat(&data_0->var6, v10);
  [(PTCinematographyFrame *)self transitionElapsedTime];
  _PTSwapBigAssignFloat(&data_0->var7, v11);
  [(PTCinematographyFrame *)self transitionDuration];
  _PTSwapBigAssignFloat(&data_0->var8, v12);
  _detectorDidRun = [(PTCinematographyFrame *)self _detectorDidRun];
  v14 = _detectorDidRun == 0;

  _detectorDidRun2 = [(PTCinematographyFrame *)self _detectorDidRun];
  bOOLValue = [_detectorDidRun2 BOOLValue];

  if ([(PTCinematographyFrame *)self isUserFocusStrong])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  if ([(PTCinematographyFrame *)self isUserFocusGroup])
  {
    v18 = 8;
  }

  else
  {
    v18 = 0;
  }

  if ([(PTCinematographyFrame *)self isUserFocusEnd])
  {
    v19 = 16;
  }

  else
  {
    v19 = 0;
  }

  data_0->var9 = (bOOLValue | (2 * v14) | v17 | v18 | v19) << 24;
  return 1;
}

- (unint64_t)sizeOfSerializedObjectWithOptions:(id)options
{
  optionsCopy = options;
  allDetections = [(PTCinematographyFrame *)self allDetections];

  if (allDetections)
  {
    allDetections2 = [(PTCinematographyFrame *)self allDetections];
    v7 = [PTCinematographyDetection sizeOfSerializedArray:allDetections2 options:optionsCopy]+ 76;
  }

  else
  {
    v7 = 76;
  }

  return v7;
}

- (BOOL)_writeHeaderToAtomWriter:(id)writer options:(id)options
{
  writerCopy = writer;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v6 = [(PTCinematographyFrame *)self _copyToFrameHeaderData_0:v10];
  v7 = 0;
  if (v6)
  {
    [writerCopy beginAtomOfType:1718775144];
    [writerCopy appendVersion:0 flags:0];
    [writerCopy appendBytes:v10 size:52];
    [writerCopy endAtom];
    error = [writerCopy error];
    v7 = error == 0;
  }

  return v7;
}

+ (id)_frameFromInnerAtomStream:(id)stream
{
  streamCopy = stream;
  v5 = 0;
  v6 = 0;
  while ([streamCopy hasAtom])
  {
    if ([streamCopy atomType] == 1718775144)
    {
      v7 = [self _frameHeaderFromAtomStream:streamCopy];
      v8 = v5;
      v5 = v7;
    }

    else
    {
      if ([streamCopy atomType] != 1685349235)
      {
        goto LABEL_8;
      }

      v9 = [PTCinematographyDetection objectsFromAtomStream:streamCopy];
      v8 = v6;
      v6 = v9;
    }

LABEL_8:
    [streamCopy advanceToNextAtom];
    if (v5 && v6)
    {
      break;
    }
  }

  [v5 setAllDetections:v6];

  return v5;
}

- (BOOL)writeToAtomWriter:(id)writer options:(id)options
{
  writerCopy = writer;
  optionsCopy = options;
  [writerCopy beginAtomOfType:1718775141];
  [writerCopy appendVersion:0 flags:0];
  error = [writerCopy error];

  if (error)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[PTAtomWriter alloc] initWithParent:writerCopy];
    if (![(PTCinematographyFrame *)self _writeHeaderToAtomWriter:v9 options:optionsCopy]|| ([(PTCinematographyFrame *)self allDetections], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && ([(PTCinematographyFrame *)self allDetections], v11 = objc_claimAutoreleasedReturnValue(), v12 = [PTCinematographyDetection writeArray:v11 toAtomWriter:v9 options:optionsCopy], v11, !v12))
    {
      v14 = 0;
      goto LABEL_7;
    }

    [writerCopy endAtom];
  }

  error2 = [writerCopy error];
  v14 = error2 == 0;

LABEL_7:
  return v14;
}

+ (id)objectFromAtomStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy atomType] != 1718775141 || (objc_msgSend(streamCopy, "readCurrentAtomVersionAndFlags"), objc_msgSend(streamCopy, "atomVersion")))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [[PTAtomStream alloc] initWithParent:streamCopy];
    v6 = [self _frameFromInnerAtomStream:v5];
    v7 = [v6 detectionForTrackIdentifier:{objc_msgSend(v6, "focusTrackIdentifier")}];
    [v6 setFocusDetection:v7];
  }

  return v6;
}

+ (id)_frameHeaderFromAtomStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy atomType] != 1718775144 || (objc_msgSend(streamCopy, "readCurrentAtomVersionAndFlags"), objc_msgSend(streamCopy, "atomVersion")) || (v9 = 0, memset(v8, 0, sizeof(v8)), objc_msgSend(streamCopy, "readCurrentAtomDataBytes:size:offset:", v8, 52, 0), objc_msgSend(streamCopy, "error"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = [[self alloc] _initWithFrameHeaderData_0:v8];
  }

  return v6;
}

@end