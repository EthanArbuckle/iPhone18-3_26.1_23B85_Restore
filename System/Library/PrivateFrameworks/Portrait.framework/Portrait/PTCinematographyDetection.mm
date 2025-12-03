@interface PTCinematographyDetection
+ (BOOL)writeArray:(id)array toAtomWriter:(id)writer options:(id)options;
+ (id)_cinematographyArrayFromDetections:(id)detections;
+ (id)_detectionsByFocusIdentifierFromArray:(id)array;
+ (id)_detectionsByTrackIdentifierFromArray:(id)array;
+ (id)_detectionsFromCinematographyArray:(id)array;
+ (id)_detectionsFromInnerAtomStream:(id)stream;
+ (id)_prefixForDetectionType:(unint64_t)type;
+ (id)objectFromAtomStream:(id)stream;
+ (id)objectsFromAtomStream:(id)stream;
+ (unint64_t)_detectionTypeForPrefix:(id)prefix;
+ (unint64_t)sizeOfSerializedArray:(id)array options:(id)options;
+ (void)initialize;
+ (void)registerForSerialization;
- (BOOL)_copyToDetectionData_0:(DetectionData_0 *)data_0;
- (BOOL)_fixMissingTrackIdentifier:(int64_t)identifier;
- (BOOL)_isEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToAtomWriter:(id)writer options:(id)options;
- (CGRect)rect;
- (NSString)accessibilityLabel;
- (NSString)debugDescription;
- (NSString)description;
- (PTCinematographyDetection)initWithTime:(id *)time rect:(CGRect)rect focusDistance:(float)distance;
- (id)_asCinematographyDictionary;
- (id)_detectionByChangingTime:(id *)time;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithDetectionData_0:(DetectionData_0 *)data_0;
- (id)focusIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)trackIdentifier;
- (unint64_t)hash;
- (void)_clearCachedFocusIdentifier;
- (void)_setInvalid:(BOOL)invalid;
- (void)setDetectionType:(unint64_t)type;
- (void)setTime:(id *)time;
- (void)setTrackIdentifier:(int64_t)identifier;
- (void)setTrackNumber:(id)number;
@end

@implementation PTCinematographyDetection

+ (void)registerForSerialization
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__PTCinematographyDetection_Serialization__registerForSerialization__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerForSerialization_onceToken != -1)
  {
    dispatch_once(&registerForSerialization_onceToken, block);
  }
}

void __68__PTCinematographyDetection_Serialization__registerForSerialization__block_invoke(uint64_t a1)
{
  [PTSerialization registerType:1685349236 providerClass:*(a1 + 32)];
  v2 = [[PTSerializationTypeInfo alloc] initWithType:1685349235 providerClass:*(a1 + 32)];
  [(PTSerializationTypeInfo *)v2 setIsAtomContainerType:1];
  [PTSerialization registerTypeInfo:v2];
}

- (id)_initWithDetectionData_0:(DetectionData_0 *)data_0
{
  v11.receiver = self;
  v11.super_class = PTCinematographyDetection;
  v4 = [(PTCinematographyDetection *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(PTCinematographyDetection *)v4 setTrackIdentifier:bswap64(data_0->var0)];
    [(PTCinematographyDetection *)v5 setGroupIdentifier:bswap64(data_0->var1)];
    [(PTCinematographyDetection *)v5 setDetectionType:bswap32(data_0->var2)];
    *&v6 = _PTSwapBigGetFloat(&data_0->var3);
    [(PTCinematographyDetection *)v5 setFocusDistance:v6];
    Float = _PTSwapBigGetFloat(data_0->var4);
    v8 = _PTSwapBigGetFloat(&data_0->var4[1]);
    v9 = _PTSwapBigGetFloat(&data_0->var4[2]);
    [(PTCinematographyDetection *)v5 setRect:Float, v8, v9, _PTSwapBigGetFloat(&data_0->var4[3])];
  }

  return v5;
}

- (BOOL)_copyToDetectionData_0:(DetectionData_0 *)data_0
{
  data_0->var0 = bswap64([(PTCinematographyDetection *)self trackIdentifier]);
  data_0->var1 = bswap64([(PTCinematographyDetection *)self groupIdentifier]);
  data_0->var2 = bswap32([(PTCinematographyDetection *)self detectionType]);
  [(PTCinematographyDetection *)self focusDistance];
  _PTSwapBigAssignFloat(&data_0->var3, v5);
  [(PTCinematographyDetection *)self rect];
  *&v6 = v6;
  _PTSwapBigAssignFloat(data_0->var4, *&v6);
  [(PTCinematographyDetection *)self rect];
  v8 = v7;
  _PTSwapBigAssignFloat(&data_0->var4[1], v8);
  [(PTCinematographyDetection *)self rect];
  v10 = v9;
  _PTSwapBigAssignFloat(&data_0->var4[2], v10);
  [(PTCinematographyDetection *)self rect];
  v12 = v11;
  _PTSwapBigAssignFloat(&data_0->var4[3], v12);
  return 1;
}

- (BOOL)writeToAtomWriter:(id)writer options:(id)options
{
  writerCopy = writer;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if ([(PTCinematographyDetection *)self _copyToDetectionData_0:v9])
  {
    [writerCopy beginAtomOfType:1685349236];
    [writerCopy appendVersion:0 flags:0];
    [writerCopy appendBytes:v9 size:40];
    [writerCopy endAtom];
    error = [writerCopy error];
    v7 = error == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_detectionsFromInnerAtomStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_opt_new();
  if (![streamCopy hasAtom])
  {
    goto LABEL_10;
  }

  while ([streamCopy atomType] != 1685349236)
  {
LABEL_5:
    [streamCopy advanceToNextAtom];
    if (([streamCopy hasAtom] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v6 = [self objectFromAtomStream:streamCopy];
  if (v6)
  {
    v7 = v6;
    [v5 addObject:v6];

    goto LABEL_5;
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PTCinematographyDetection(Serialization) _detectionsFromInnerAtomStream:v8];
  }

LABEL_10:
  v9 = [v5 copy];

  return v9;
}

+ (unint64_t)sizeOfSerializedArray:(id)array options:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  optionsCopy = options;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v10 = 12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 += [*(*(&v13 + 1) + 8 * i) sizeOfSerializedObjectWithOptions:optionsCopy];
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 12;
  }

  return v10;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [PTSerialization registerSerializationClass:self];
  }
}

- (PTCinematographyDetection)initWithTime:(id *)time rect:(CGRect)rect focusDistance:(float)distance
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13.receiver = self;
  v13.super_class = PTCinematographyDetection;
  result = [(PTCinematographyDetection *)&v13 init];
  if (result)
  {
    v12 = *&time->var0;
    result->_time.epoch = time->var3;
    *&result->_time.value = v12;
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusDistance = distance;
    result->_groupIdentifier = -1;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  focusIdentifier = [(PTCinematographyDetection *)self focusIdentifier];
  [(PTCinematographyDetection *)self time];
  v5 = NSStringFromCMTime(&v11);
  v6 = MEMORY[0x277CCAE60];
  [(PTCinematographyDetection *)self rect];
  v7 = [v6 valueWithRect:?];
  [(PTCinematographyDetection *)self focusDistance];
  v9 = [v3 stringWithFormat:@"%@: %@: %@ focus: %g", focusIdentifier, v5, v7, v8];

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PTCinematographyDetection *)self description];
  v5 = MEMORY[0x277CCAE60];
  [(PTCinematographyDetection *)self rect];
  v6 = [v5 valueWithRect:?];
  v7 = MEMORY[0x277CCABB0];
  [(PTCinematographyDetection *)self focusDistance];
  v8 = [v7 numberWithFloat:?];
  trackNumber = [(PTCinematographyDetection *)self trackNumber];
  v10 = [v3 stringWithFormat:@"%@, rect: %@, focusDistance: %@, trackID: %@", v4, v6, v8, trackNumber];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      trackIdentifier = [(PTCinematographyDetection *)self trackIdentifier];
      if (trackIdentifier != [(PTCinematographyDetection *)v5 trackIdentifier])
      {
        goto LABEL_12;
      }

      detectionType = [(PTCinematographyDetection *)self detectionType];
      if (detectionType != [(PTCinematographyDetection *)v5 detectionType])
      {
        goto LABEL_12;
      }

      [(PTCinematographyDetection *)self focusDistance];
      v9 = v8;
      [(PTCinematographyDetection *)v5 focusDistance];
      if (v9 != v10)
      {
        goto LABEL_12;
      }

      [(PTCinematographyDetection *)self time];
      if (v5)
      {
        [(PTCinematographyDetection *)v5 time];
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
      }

      if (!CMTimeCompare(&time1, &v32) && ([(PTCinematographyDetection *)self rect], v14 = v13, v16 = v15, v18 = v17, v20 = v19, [(PTCinematographyDetection *)v5 rect], v24 = v14, *&v25 = v25, v24 == *&v25) && (v26 = v16, v27 = v21, v26 == v27) && (v28 = v18, v29 = v22, v28 == v29))
      {
        v30 = v20;
        v31 = v23;
        v11 = v30 == v31;
      }

      else
      {
LABEL_12:
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  trackIdentifier = [(PTCinematographyDetection *)self trackIdentifier];
  v4 = ([(PTCinematographyDetection *)self detectionType]+ trackIdentifier);
  [(PTCinematographyDetection *)self time];
  v5 = v4 + CMTimeGetSeconds(&time) * 600.0;
  [(PTCinematographyDetection *)self rect];
  v7 = v5 + v6;
  [(PTCinematographyDetection *)self rect];
  return (v7 + v8);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PTCinematographyDetection alloc];
  [(PTCinematographyDetection *)self time];
  [(PTCinematographyDetection *)self rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PTCinematographyDetection *)self focusDistance];
  LODWORD(v14) = v13;
  v15 = [(PTCinematographyDetection *)v4 initWithTime:v21 rect:v6 focusDistance:v8, v10, v12, v14];
  if (v15)
  {
    [(PTCinematographyDetection *)v15 setDetectionType:[(PTCinematographyDetection *)self detectionType]];
    trackNumber = [(PTCinematographyDetection *)self trackNumber];
    [(PTCinematographyDetection *)v15 setTrackNumber:trackNumber];

    [(PTCinematographyDetection *)v15 setGroupIdentifier:[(PTCinematographyDetection *)self groupIdentifier]];
    _namedSignals = [(PTCinematographyDetection *)self _namedSignals];
    v18 = [_namedSignals copy];
    [(PTCinematographyDetection *)v15 set_namedSignals:v18];

    if ([(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
    {
      [(PTCinematographyDetection *)v15 setCachedFocusIdentifierWasSetByClient:[(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient]];
      cachedFocusIdentifier = [(PTCinematographyDetection *)self cachedFocusIdentifier];
      [(PTCinematographyDetection *)v15 setCachedFocusIdentifier:cachedFocusIdentifier];
    }
  }

  return v15;
}

- (void)setDetectionType:(unint64_t)type
{
  if (self->_detectionType != type)
  {
    self->_detectionType = type;
    [(PTCinematographyDetection *)self _clearCachedFocusIdentifier];
  }
}

- (int64_t)trackIdentifier
{
  trackNumber = [(PTCinematographyDetection *)self trackNumber];
  v3 = PTTrackIDFromNumber(trackNumber);

  return v3;
}

- (void)setTrackIdentifier:(int64_t)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  if (identifier == 0xFFFFFFFFLL)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2243FB000, v4, OS_LOG_TYPE_DEFAULT, "trackIdentifier missing from original detection %@", buf, 0xCu);
    }

    [(PTCinematographyDetection *)self setTrackNumber:0];
  }

  else
  {
    v5 = NSNumberFromPTTrackID(identifier);
    [(PTCinematographyDetection *)self setTrackNumber:?];
  }
}

- (void)setTrackNumber:(id)number
{
  objc_storeStrong(&self->_trackNumber, number);

  [(PTCinematographyDetection *)self _clearCachedFocusIdentifier];
}

- (id)focusIdentifier
{
  cachedFocusIdentifier = self->_cachedFocusIdentifier;
  if (!cachedFocusIdentifier)
  {
    v4 = _PTFocusIdentifierMake([(PTCinematographyDetection *)self detectionType], [(PTCinematographyDetection *)self trackIdentifier]);
    v5 = self->_cachedFocusIdentifier;
    self->_cachedFocusIdentifier = v4;

    cachedFocusIdentifier = self->_cachedFocusIdentifier;
  }

  return cachedFocusIdentifier;
}

- (NSString)accessibilityLabel
{
  v3 = objc_opt_class();
  detectionType = [(PTCinematographyDetection *)self detectionType];

  return [v3 accessibilityLabelForDetectionType:detectionType];
}

- (void)_clearCachedFocusIdentifier
{
  if (![(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
  {
    cachedFocusIdentifier = self->_cachedFocusIdentifier;
    self->_cachedFocusIdentifier = 0;
  }
}

- (void)_setInvalid:(BOOL)invalid
{
  invalidCopy = invalid;
  trackIdentifier = [(PTCinematographyDetection *)self trackIdentifier];
  if (invalidCopy)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0x8000000000000000 | trackIdentifier & 0x7FFFFFFFFFFFFFFFLL;

  [(PTCinematographyDetection *)self setTrackIdentifier:v7];
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PTCinematographyDetection;
  v5 = [(PTCinematographyDetection *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    v7 = [v6 objectForKeyedSubscript:@"ptime"];
    CMTimeFromPTCinematographyDictionary(&v24, v7);
    *(v5 + 56) = v24;

    v8 = [v6 objectForKeyedSubscript:@"rect"];
    v9 = v8;
    if (!v8)
    {
      v8 = v6;
    }

    *(v5 + 10) = CGRectFromPTCinematographyDictionary(v8);
    *(v5 + 11) = v10;
    *(v5 + 12) = v11;
    *(v5 + 13) = v12;

    v13 = [v6 objectForKeyedSubscript:@"disparity"];
    [v13 floatValue];
    *(v5 + 3) = v14;

    v15 = [v6 objectForKeyedSubscript:@"detected_object_id"];
    [v5 setTrackNumber:v15];

    v16 = [v6 objectForKeyedSubscript:@"focus_id"];
    v17 = *(v5 + 5);
    *(v5 + 5) = v16;

    v5[8] = *(v5 + 5) != 0;
    v18 = [v6 objectForKeyedSubscript:@"group_id"];
    v19 = v18;
    if (v18)
    {
      integerValue = [v18 integerValue];
    }

    else
    {
      integerValue = -1;
    }

    *(v5 + 3) = integerValue;
    v21 = [v6 objectForKeyedSubscript:@"label"];
    *(v5 + 2) = [v21 integerValue];

    v22 = [v6 objectForKeyedSubscript:@"MLSignals"];
    [v5 set_namedSignals:v22];
  }

  return v5;
}

- (id)_asCinematographyDictionary
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  trackNumber = [(PTCinematographyDetection *)self trackNumber];
  [v3 setObject:trackNumber forKeyedSubscript:@"detected_object_id"];

  [(PTCinematographyDetection *)self time];
  v5 = PTCinematographyDictionaryFromCMTime(&v20);
  [v3 setObject:v5 forKeyedSubscript:@"ptime"];

  if ([(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
  {
    cachedFocusIdentifier = [(PTCinematographyDetection *)self cachedFocusIdentifier];
    [v3 setObject:cachedFocusIdentifier forKeyedSubscript:@"focus_id"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyDetection detectionType](self, "detectionType")}];
  [v3 setObject:v7 forKeyedSubscript:@"label"];

  v8 = MEMORY[0x277CCABB0];
  [(PTCinematographyDetection *)self focusDistance];
  v9 = [v8 numberWithFloat:?];
  [v3 setObject:v9 forKeyedSubscript:@"disparity"];

  if (([(PTCinematographyDetection *)self groupIdentifier]& 0x8000000000000000) == 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyDetection groupIdentifier](self, "groupIdentifier")}];
    [v3 setObject:v10 forKeyedSubscript:@"group_id"];
  }

  [(PTCinematographyDetection *)self rect];
  v15 = PTCinematographyDictionaryFromCGRect(v11, v12, v13, v14);
  [v3 setObject:v15 forKeyedSubscript:@"rect"];
  _namedSignals = [(PTCinematographyDetection *)self _namedSignals];
  [v3 setObject:_namedSignals forKeyedSubscript:@"MLSignals"];

  v21 = @"attributes";
  v17 = [v3 copy];
  v22[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  return v18;
}

+ (id)_detectionsFromCinematographyArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
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
        v11 = [PTCinematographyDetection alloc];
        v12 = [(PTCinematographyDetection *)v11 _initWithCinematographyDictionary:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)_cinematographyArrayFromDetections:(id)detections
{
  v18 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = detectionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        _asCinematographyDictionary = [*(*(&v13 + 1) + 8 * i) _asCinematographyDictionary];
        [v4 addObject:_asCinematographyDictionary];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)_fixMissingTrackIdentifier:(int64_t)identifier
{
  trackNumber = [(PTCinematographyDetection *)self trackNumber];

  if (!trackNumber)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyDetection(Private) *)self _fixMissingTrackIdentifier:v6];
    }

    0xFF00000000 = [MEMORY[0x277CCABB0] numberWithInteger:identifier | 0xFF00000000];
    [(PTCinematographyDetection *)self setTrackNumber:0xFF00000000];
  }

  return trackNumber == 0;
}

+ (id)_detectionsByTrackIdentifierFromArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v9 += [v11 _fixMissingTrackIdentifier:{v9, v15}];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "trackIdentifier")}];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)_detectionsByFocusIdentifierFromArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v9 += [v11 _fixMissingTrackIdentifier:{v9, v15}];
        focusIdentifier = [v11 focusIdentifier];
        [v4 setObject:v11 forKeyedSubscript:focusIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  if ([(PTCinematographyDetection *)self isEqual:equalCopy])
  {
    v5 = equalCopy;
    trackNumber = [(PTCinematographyDetection *)self trackNumber];
    trackNumber2 = [v5 trackNumber];
    v8 = trackNumber;
    v9 = trackNumber2;
    v10 = v9;
    if (v8 | v9)
    {
      if (!v8 || !v9)
      {

        goto LABEL_13;
      }

      v29 = [v8 isEqual:v9];

      if (!v29)
      {
        goto LABEL_13;
      }
    }

    groupIdentifier = [(PTCinematographyDetection *)self groupIdentifier];
    if (groupIdentifier == [v5 groupIdentifier])
    {
      detectionType = [(PTCinematographyDetection *)self detectionType];
      if (detectionType == [v5 detectionType])
      {
        [(PTCinematographyDetection *)self focusDistance];
        v14 = v13;
        [v5 focusDistance];
        if (v14 == v15)
        {
          [(PTCinematographyDetection *)self rect];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          [v5 rect];
          v32.origin.x = v24;
          v32.origin.y = v25;
          v32.size.width = v26;
          v32.size.height = v27;
          v31.origin.x = v17;
          v31.origin.y = v19;
          v31.size.width = v21;
          v31.size.height = v23;
          v28 = CGRectEqualToRect(v31, v32);
LABEL_14:

          goto LABEL_15;
        }
      }
    }

LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v28 = 0;
LABEL_15:

  return v28;
}

- (id)_detectionByChangingTime:(id *)time
{
  v4 = [(PTCinematographyDetection *)self copy];
  v6 = *time;
  [v4 setTime:&v6];

  return v4;
}

+ (id)_prefixForDetectionType:(unint64_t)type
{
  if (type > 9)
  {
    if (type > 99)
    {
      switch(type)
      {
        case 'd':
          return @"A";
        case 'e':
          return @"X";
        case 'f':
          return @"T";
      }
    }

    else
    {
      switch(type)
      {
        case 0xAuLL:
          return @"DH";
        case 0xBuLL:
          return @"SB";
        case 0xCuLL:
          return @"HFB";
      }
    }
  }

  else if (type > 3)
  {
    switch(type)
    {
      case 4uLL:
        return @"C";
      case 5uLL:
        return @"D";
      case 9uLL:
        return @"CH";
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        return @"F";
      case 2uLL:
        return @"H";
      case 3uLL:
        return @"B";
    }
  }

  return @"U";
}

+ (unint64_t)_detectionTypeForPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [&unk_2837F3AC8 objectForKeyedSubscript:prefixCopy];
  if (v4)
  {
    v5 = [&unk_2837F3AF0 objectForKeyedSubscript:prefixCopy];
    unsignedLongValue = [v5 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 0;
  }

  return unsignedLongValue;
}

+ (id)objectFromAtomStream:(id)stream
{
  streamCopy = stream;
  error = [streamCopy error];

  if (error || [streamCopy atomType] != 1685349236 || (objc_msgSend(streamCopy, "readCurrentAtomVersionAndFlags"), objc_msgSend(streamCopy, "atomVersion")) || (v10 = 0, memset(v9, 0, sizeof(v9)), objc_msgSend(streamCopy, "readCurrentAtomDataBytes:size:offset:", v9, 40, 0), objc_msgSend(streamCopy, "error"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [[self alloc] _initWithDetectionData_0:v9];
  }

  return v7;
}

+ (id)objectsFromAtomStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy atomType] != 1685349235 || (objc_msgSend(streamCopy, "readCurrentAtomVersionAndFlags"), objc_msgSend(streamCopy, "atomVersion")))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [[PTAtomStream alloc] initWithParent:streamCopy];
    v6 = [self _detectionsFromInnerAtomStream:v5];
  }

  return v6;
}

+ (BOOL)writeArray:(id)array toAtomWriter:(id)writer options:(id)options
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  writerCopy = writer;
  optionsCopy = options;
  [writerCopy beginAtomOfType:1685349235];
  [writerCopy appendVersion:0 flags:0];
  v10 = [[PTAtomWriter alloc] initWithParent:writerCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = arrayCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (![*(*(&v19 + 1) + 8 * i) writeToAtomWriter:v10 options:{optionsCopy, v19}])
        {
          v17 = 0;
          error = v11;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  [writerCopy endAtom];
  error = [writerCopy error];
  v17 = error == 0;
LABEL_11:

  return v17;
}

@end