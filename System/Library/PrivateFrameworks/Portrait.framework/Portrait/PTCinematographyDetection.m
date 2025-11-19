@interface PTCinematographyDetection
+ (BOOL)writeArray:(id)a3 toAtomWriter:(id)a4 options:(id)a5;
+ (id)_cinematographyArrayFromDetections:(id)a3;
+ (id)_detectionsByFocusIdentifierFromArray:(id)a3;
+ (id)_detectionsByTrackIdentifierFromArray:(id)a3;
+ (id)_detectionsFromCinematographyArray:(id)a3;
+ (id)_detectionsFromInnerAtomStream:(id)a3;
+ (id)_prefixForDetectionType:(unint64_t)a3;
+ (id)objectFromAtomStream:(id)a3;
+ (id)objectsFromAtomStream:(id)a3;
+ (unint64_t)_detectionTypeForPrefix:(id)a3;
+ (unint64_t)sizeOfSerializedArray:(id)a3 options:(id)a4;
+ (void)initialize;
+ (void)registerForSerialization;
- (BOOL)_copyToDetectionData_0:(DetectionData_0 *)a3;
- (BOOL)_fixMissingTrackIdentifier:(int64_t)a3;
- (BOOL)_isEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)writeToAtomWriter:(id)a3 options:(id)a4;
- (CGRect)rect;
- (NSString)accessibilityLabel;
- (NSString)debugDescription;
- (NSString)description;
- (PTCinematographyDetection)initWithTime:(id *)a3 rect:(CGRect)a4 focusDistance:(float)a5;
- (id)_asCinematographyDictionary;
- (id)_detectionByChangingTime:(id *)a3;
- (id)_initWithCinematographyDictionary:(id)a3;
- (id)_initWithDetectionData_0:(DetectionData_0 *)a3;
- (id)focusIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)trackIdentifier;
- (unint64_t)hash;
- (void)_clearCachedFocusIdentifier;
- (void)_setInvalid:(BOOL)a3;
- (void)setDetectionType:(unint64_t)a3;
- (void)setTime:(id *)a3;
- (void)setTrackIdentifier:(int64_t)a3;
- (void)setTrackNumber:(id)a3;
@end

@implementation PTCinematographyDetection

+ (void)registerForSerialization
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__PTCinematographyDetection_Serialization__registerForSerialization__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)_initWithDetectionData_0:(DetectionData_0 *)a3
{
  v11.receiver = self;
  v11.super_class = PTCinematographyDetection;
  v4 = [(PTCinematographyDetection *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(PTCinematographyDetection *)v4 setTrackIdentifier:bswap64(a3->var0)];
    [(PTCinematographyDetection *)v5 setGroupIdentifier:bswap64(a3->var1)];
    [(PTCinematographyDetection *)v5 setDetectionType:bswap32(a3->var2)];
    *&v6 = _PTSwapBigGetFloat(&a3->var3);
    [(PTCinematographyDetection *)v5 setFocusDistance:v6];
    Float = _PTSwapBigGetFloat(a3->var4);
    v8 = _PTSwapBigGetFloat(&a3->var4[1]);
    v9 = _PTSwapBigGetFloat(&a3->var4[2]);
    [(PTCinematographyDetection *)v5 setRect:Float, v8, v9, _PTSwapBigGetFloat(&a3->var4[3])];
  }

  return v5;
}

- (BOOL)_copyToDetectionData_0:(DetectionData_0 *)a3
{
  a3->var0 = bswap64([(PTCinematographyDetection *)self trackIdentifier]);
  a3->var1 = bswap64([(PTCinematographyDetection *)self groupIdentifier]);
  a3->var2 = bswap32([(PTCinematographyDetection *)self detectionType]);
  [(PTCinematographyDetection *)self focusDistance];
  _PTSwapBigAssignFloat(&a3->var3, v5);
  [(PTCinematographyDetection *)self rect];
  *&v6 = v6;
  _PTSwapBigAssignFloat(a3->var4, *&v6);
  [(PTCinematographyDetection *)self rect];
  v8 = v7;
  _PTSwapBigAssignFloat(&a3->var4[1], v8);
  [(PTCinematographyDetection *)self rect];
  v10 = v9;
  _PTSwapBigAssignFloat(&a3->var4[2], v10);
  [(PTCinematographyDetection *)self rect];
  v12 = v11;
  _PTSwapBigAssignFloat(&a3->var4[3], v12);
  return 1;
}

- (BOOL)writeToAtomWriter:(id)a3 options:(id)a4
{
  v5 = a3;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if ([(PTCinematographyDetection *)self _copyToDetectionData_0:v9])
  {
    [v5 beginAtomOfType:1685349236];
    [v5 appendVersion:0 flags:0];
    [v5 appendBytes:v9 size:40];
    [v5 endAtom];
    v6 = [v5 error];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_detectionsFromInnerAtomStream:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (![v4 hasAtom])
  {
    goto LABEL_10;
  }

  while ([v4 atomType] != 1685349236)
  {
LABEL_5:
    [v4 advanceToNextAtom];
    if (([v4 hasAtom] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v6 = [a1 objectFromAtomStream:v4];
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

+ (unint64_t)sizeOfSerializedArray:(id)a3 options:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 += [*(*(&v13 + 1) + 8 * i) sizeOfSerializedObjectWithOptions:v6];
      }

      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  if (objc_opt_class() == a1)
  {

    [PTSerialization registerSerializationClass:a1];
  }
}

- (PTCinematographyDetection)initWithTime:(id *)a3 rect:(CGRect)a4 focusDistance:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = PTCinematographyDetection;
  result = [(PTCinematographyDetection *)&v13 init];
  if (result)
  {
    v12 = *&a3->var0;
    result->_time.epoch = a3->var3;
    *&result->_time.value = v12;
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_focusDistance = a5;
    result->_groupIdentifier = -1;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PTCinematographyDetection *)self focusIdentifier];
  [(PTCinematographyDetection *)self time];
  v5 = NSStringFromCMTime(&v11);
  v6 = MEMORY[0x277CCAE60];
  [(PTCinematographyDetection *)self rect];
  v7 = [v6 valueWithRect:?];
  [(PTCinematographyDetection *)self focusDistance];
  v9 = [v3 stringWithFormat:@"%@: %@: %@ focus: %g", v4, v5, v7, v8];

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
  v9 = [(PTCinematographyDetection *)self trackNumber];
  v10 = [v3 stringWithFormat:@"%@, rect: %@, focusDistance: %@, trackID: %@", v4, v6, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PTCinematographyDetection *)self trackIdentifier];
      if (v6 != [(PTCinematographyDetection *)v5 trackIdentifier])
      {
        goto LABEL_12;
      }

      v7 = [(PTCinematographyDetection *)self detectionType];
      if (v7 != [(PTCinematographyDetection *)v5 detectionType])
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
  v3 = [(PTCinematographyDetection *)self trackIdentifier];
  v4 = ([(PTCinematographyDetection *)self detectionType]+ v3);
  [(PTCinematographyDetection *)self time];
  v5 = v4 + CMTimeGetSeconds(&time) * 600.0;
  [(PTCinematographyDetection *)self rect];
  v7 = v5 + v6;
  [(PTCinematographyDetection *)self rect];
  return (v7 + v8);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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
    v16 = [(PTCinematographyDetection *)self trackNumber];
    [(PTCinematographyDetection *)v15 setTrackNumber:v16];

    [(PTCinematographyDetection *)v15 setGroupIdentifier:[(PTCinematographyDetection *)self groupIdentifier]];
    v17 = [(PTCinematographyDetection *)self _namedSignals];
    v18 = [v17 copy];
    [(PTCinematographyDetection *)v15 set_namedSignals:v18];

    if ([(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
    {
      [(PTCinematographyDetection *)v15 setCachedFocusIdentifierWasSetByClient:[(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient]];
      v19 = [(PTCinematographyDetection *)self cachedFocusIdentifier];
      [(PTCinematographyDetection *)v15 setCachedFocusIdentifier:v19];
    }
  }

  return v15;
}

- (void)setDetectionType:(unint64_t)a3
{
  if (self->_detectionType != a3)
  {
    self->_detectionType = a3;
    [(PTCinematographyDetection *)self _clearCachedFocusIdentifier];
  }
}

- (int64_t)trackIdentifier
{
  v2 = [(PTCinematographyDetection *)self trackNumber];
  v3 = PTTrackIDFromNumber(v2);

  return v3;
}

- (void)setTrackIdentifier:(int64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 == 0xFFFFFFFFLL)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_impl(&dword_2243FB000, v4, OS_LOG_TYPE_DEFAULT, "trackIdentifier missing from original detection %@", buf, 0xCu);
    }

    [(PTCinematographyDetection *)self setTrackNumber:0];
  }

  else
  {
    v5 = NSNumberFromPTTrackID(a3);
    [(PTCinematographyDetection *)self setTrackNumber:?];
  }
}

- (void)setTrackNumber:(id)a3
{
  objc_storeStrong(&self->_trackNumber, a3);

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
  v4 = [(PTCinematographyDetection *)self detectionType];

  return [v3 accessibilityLabelForDetectionType:v4];
}

- (void)_clearCachedFocusIdentifier
{
  if (![(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
  {
    cachedFocusIdentifier = self->_cachedFocusIdentifier;
    self->_cachedFocusIdentifier = 0;
  }
}

- (void)_setInvalid:(BOOL)a3
{
  v3 = a3;
  v5 = [(PTCinematographyDetection *)self trackIdentifier];
  if (v3)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0x8000000000000000 | v5 & 0x7FFFFFFFFFFFFFFFLL;

  [(PTCinematographyDetection *)self setTrackIdentifier:v7];
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
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

- (id)_initWithCinematographyDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PTCinematographyDetection;
  v5 = [(PTCinematographyDetection *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"attributes"];
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
      v20 = [v18 integerValue];
    }

    else
    {
      v20 = -1;
    }

    *(v5 + 3) = v20;
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
  v4 = [(PTCinematographyDetection *)self trackNumber];
  [v3 setObject:v4 forKeyedSubscript:@"detected_object_id"];

  [(PTCinematographyDetection *)self time];
  v5 = PTCinematographyDictionaryFromCMTime(&v20);
  [v3 setObject:v5 forKeyedSubscript:@"ptime"];

  if ([(PTCinematographyDetection *)self cachedFocusIdentifierWasSetByClient])
  {
    v6 = [(PTCinematographyDetection *)self cachedFocusIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"focus_id"];
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
  v16 = [(PTCinematographyDetection *)self _namedSignals];
  [v3 setObject:v16 forKeyedSubscript:@"MLSignals"];

  v21 = @"attributes";
  v17 = [v3 copy];
  v22[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  return v18;
}

+ (id)_detectionsFromCinematographyArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

+ (id)_cinematographyArrayFromDetections:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) _asCinematographyDictionary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)_fixMissingTrackIdentifier:(int64_t)a3
{
  v5 = [(PTCinematographyDetection *)self trackNumber];

  if (!v5)
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyDetection(Private) *)self _fixMissingTrackIdentifier:v6];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3 | 0xFF00000000];
    [(PTCinematographyDetection *)self setTrackNumber:v7];
  }

  return v5 == 0;
}

+ (id)_detectionsByTrackIdentifierFromArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

+ (id)_detectionsByFocusIdentifierFromArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v12 = [v11 focusIdentifier];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  if ([(PTCinematographyDetection *)self isEqual:v4])
  {
    v5 = v4;
    v6 = [(PTCinematographyDetection *)self trackNumber];
    v7 = [v5 trackNumber];
    v8 = v6;
    v9 = v7;
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

    v11 = [(PTCinematographyDetection *)self groupIdentifier];
    if (v11 == [v5 groupIdentifier])
    {
      v12 = [(PTCinematographyDetection *)self detectionType];
      if (v12 == [v5 detectionType])
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

- (id)_detectionByChangingTime:(id *)a3
{
  v4 = [(PTCinematographyDetection *)self copy];
  v6 = *a3;
  [v4 setTime:&v6];

  return v4;
}

+ (id)_prefixForDetectionType:(unint64_t)a3
{
  if (a3 > 9)
  {
    if (a3 > 99)
    {
      switch(a3)
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
      switch(a3)
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

  else if (a3 > 3)
  {
    switch(a3)
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
    switch(a3)
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

+ (unint64_t)_detectionTypeForPrefix:(id)a3
{
  v3 = a3;
  v4 = [&unk_2837F3AC8 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [&unk_2837F3AF0 objectForKeyedSubscript:v3];
    v6 = [v5 unsignedLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)objectFromAtomStream:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5 || [v4 atomType] != 1685349236 || (objc_msgSend(v4, "readCurrentAtomVersionAndFlags"), objc_msgSend(v4, "atomVersion")) || (v10 = 0, memset(v9, 0, sizeof(v9)), objc_msgSend(v4, "readCurrentAtomDataBytes:size:offset:", v9, 40, 0), objc_msgSend(v4, "error"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [[a1 alloc] _initWithDetectionData_0:v9];
  }

  return v7;
}

+ (id)objectsFromAtomStream:(id)a3
{
  v4 = a3;
  if ([v4 atomType] != 1685349235 || (objc_msgSend(v4, "readCurrentAtomVersionAndFlags"), objc_msgSend(v4, "atomVersion")))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [[PTAtomStream alloc] initWithParent:v4];
    v6 = [a1 _detectionsFromInnerAtomStream:v5];
  }

  return v6;
}

+ (BOOL)writeArray:(id)a3 toAtomWriter:(id)a4 options:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 beginAtomOfType:1685349235];
  [v8 appendVersion:0 flags:0];
  v10 = [[PTAtomWriter alloc] initWithParent:v8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v7;
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

        if (![*(*(&v19 + 1) + 8 * i) writeToAtomWriter:v10 options:{v9, v19}])
        {
          v17 = 0;
          v16 = v11;
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

  [v8 endAtom];
  v16 = [v8 error];
  v17 = v16 == 0;
LABEL_11:

  return v17;
}

@end