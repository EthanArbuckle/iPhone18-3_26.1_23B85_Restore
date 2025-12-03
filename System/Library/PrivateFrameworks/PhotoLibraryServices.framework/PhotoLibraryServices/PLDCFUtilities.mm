@interface PLDCFUtilities
+ (BOOL)fileName:(id)name matchesRegex:(id)regex;
+ (BOOL)isRenderFileName:(id)name;
+ (BOOL)isSpatialOverCaptureFileName:(id)name;
+ (BOOL)isValidDCFFileName:(id)name;
+ (id)convertHash:(unsigned int)hash usingPlaceValues:(id)values;
+ (id)dcfCompliantNameForFileName:(id)name createDate:(id)date fileSize:(unint64_t)size filenameMarker:(id)marker;
+ (id)dcfRegex;
+ (id)dcfRegexForAuxiliaryResourceFilenameMarker:(id)marker;
+ (id)encodeFileNameFromHash:(unsigned int)hash;
+ (id)fileNameByRemovingRenderMarkerInFileName:(id)name;
+ (id)fileNameByRemovingSpatialOverCaptureMarkerInFileName:(id)name;
+ (id)insertAuxiliaryResourceTypeMarker:(id)marker intoFileName:(id)name;
+ (id)makeDCFFileNameByHashingFileName:(id)name createDate:(id)date fileSize:(unint64_t)size;
+ (id)makeDCFFileNameFromFileName:(id)name createDate:(id)date fileSize:(unint64_t)size;
+ (id)placeValuesFromBases:(id)bases;
+ (unsigned)hashForFileName:(id)name createDate:(id)date fileSize:(unint64_t)size;
+ (void)computeSHA256OfString:(id)string intoBuffer:(char *)buffer;
@end

@implementation PLDCFUtilities

+ (id)placeValuesFromBases:(id)bases
{
  basesCopy = bases;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(basesCopy, "count")}];
  v5 = [basesCopy count];
  if (v5 >= 1)
  {
    v6 = (v5 & 0x7FFFFFFF) + 1;
    v7 = 1;
    do
    {
      v8 = [basesCopy objectAtIndexedSubscript:v6 - 2];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v4 addObject:v9];

      v7 *= [v8 unsignedIntegerValue];
      --v6;
    }

    while (v6 > 1);
  }

  return v4;
}

+ (id)convertHash:(unsigned int)hash usingPlaceValues:(id)values
{
  valuesCopy = values;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v7 = [valuesCopy count];
  if (v7 >= 1)
  {
    v8 = (v7 & 0x7FFFFFFF) + 1;
    do
    {
      v9 = [valuesCopy objectAtIndexedSubscript:v8 - 2];
      [v9 doubleValue];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtmd_u64_f64(hash / v10)];
      [v6 addObject:v11];

      hash %= [v9 unsignedIntegerValue];
      --v8;
    }

    while (v8 > 1);
  }

  return v6;
}

+ (id)encodeFileNameFromHash:(unsigned int)hash
{
  v3 = *&hash;
  pl_dispatch_once();
  v5 = [self convertHash:v3 usingPlaceValues:encodeFileNameFromHash__pl_once_object_17];
  v21 = MEMORY[0x1E696AEC0];
  v23 = [v5 objectAtIndexedSubscript:0];
  v19 = [v23 unsignedIntValue] + 65;
  v22 = [v5 objectAtIndexedSubscript:1];
  v18 = [v22 unsignedIntValue] + 65;
  v20 = [v5 objectAtIndexedSubscript:2];
  v17 = [v20 unsignedIntValue] + 65;
  v6 = [v5 objectAtIndexedSubscript:3];
  v7 = [v6 unsignedIntValue] + 65;
  v8 = [v5 objectAtIndexedSubscript:4];
  v9 = [v8 unsignedIntValue] + 48;
  v10 = [v5 objectAtIndexedSubscript:5];
  v11 = [v10 unsignedIntValue] + 48;
  v12 = [v5 objectAtIndexedSubscript:6];
  v13 = [v12 unsignedIntValue] + 48;
  v14 = [v5 objectAtIndexedSubscript:7];
  v15 = [v21 stringWithFormat:@"%c%c%c%c%c%c%c%c", v19, v18, v17, v7, v9, v11, v13, objc_msgSend(v14, "unsignedIntValue") + 48];

  return v15;
}

void __41__PLDCFUtilities_encodeFileNameFromHash___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) placeValuesFromBases:&unk_1F0FBF640];
  v1 = [v3 copy];
  v2 = encodeFileNameFromHash__pl_once_object_17;
  encodeFileNameFromHash__pl_once_object_17 = v1;
}

+ (void)computeSHA256OfString:(id)string intoBuffer:(char *)buffer
{
  uTF8String = [string UTF8String];
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  v6 = strlen(uTF8String);
  CC_SHA256_Update(&v7, uTF8String, v6);
  CC_SHA256_Final(buffer, &v7);
}

+ (unsigned)hashForFileName:(id)name createDate:(id)date fileSize:(unint64_t)size
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%llu", name, date, size];
  [self computeSHA256OfString:v6 intoBuffer:buf];
  LODWORD(self) = crc32(0, buf, 0x20u);

  return self;
}

+ (id)insertAuxiliaryResourceTypeMarker:(id)marker intoFileName:(id)name
{
  nameCopy = name;
  markerCopy = marker;
  v7 = [nameCopy substringToIndex:4];
  v8 = [nameCopy substringFromIndex:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, markerCopy, v8];

  return v9;
}

+ (id)makeDCFFileNameByHashingFileName:(id)name createDate:(id)date fileSize:(unint64_t)size
{
  nameCopy = name;
  v9 = [self encodeFileNameFromHash:{objc_msgSend(self, "hashForFileName:createDate:fileSize:", nameCopy, date, size)}];
  pathExtension = [nameCopy pathExtension];

  uppercaseString = [pathExtension uppercaseString];
  v12 = uppercaseString;
  v13 = &stru_1F0F06D80;
  if (uppercaseString)
  {
    v13 = uppercaseString;
  }

  v14 = v13;

  v15 = [v9 stringByAppendingPathExtension:v14];

  return v15;
}

+ (id)makeDCFFileNameFromFileName:(id)name createDate:(id)date fileSize:(unint64_t)size
{
  dateCopy = date;
  nameCopy = name;
  if ([self isValidDCFFileName:nameCopy])
  {
    [nameCopy uppercaseString];
  }

  else
  {
    [self makeDCFFileNameByHashingFileName:nameCopy createDate:dateCopy fileSize:size];
  }
  v10 = ;

  return v10;
}

+ (BOOL)fileName:(id)name matchesRegex:(id)regex
{
  if (!name)
  {
    return 0;
  }

  regexCopy = regex;
  nameCopy = name;
  v7 = [regexCopy numberOfMatchesInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];

  return v7 == 1;
}

+ (id)fileNameByRemovingSpatialOverCaptureMarkerInFileName:(id)name
{
  nameCopy = name;
  if ([self isRenderFileName:nameCopy])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [nameCopy substringToIndex:4];
    v7 = [nameCopy substringFromIndex:5];
    v8 = [v5 stringWithFormat:@"%@%@", v6, v7];
  }

  else
  {
    v8 = nameCopy;
  }

  return v8;
}

+ (BOOL)isSpatialOverCaptureFileName:(id)name
{
  v4 = PLAuxiliaryResourceFilenameMarkerSpatialOverCapture;
  nameCopy = name;
  v6 = [self dcfRegexForAuxiliaryResourceFilenameMarker:v4];
  LOBYTE(self) = [self fileName:nameCopy matchesRegex:v6];

  return self;
}

+ (id)fileNameByRemovingRenderMarkerInFileName:(id)name
{
  nameCopy = name;
  if ([self isRenderFileName:nameCopy])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [nameCopy substringToIndex:4];
    v7 = [nameCopy substringFromIndex:5];
    v8 = [v5 stringWithFormat:@"%@%@", v6, v7];
  }

  else
  {
    v8 = nameCopy;
  }

  return v8;
}

+ (BOOL)isRenderFileName:(id)name
{
  nameCopy = name;
  renderDCFRegex = [self renderDCFRegex];
  LOBYTE(self) = [self fileName:nameCopy matchesRegex:renderDCFRegex];

  return self;
}

+ (id)dcfRegexForAuxiliaryResourceFilenameMarker:(id)marker
{
  markerCopy = marker;
  if (!markerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDCFUtilities.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"marker"}];
  }

  pl_dispatch_once();
  v6 = [dcfRegexForAuxiliaryResourceFilenameMarker__markerToRegexMap objectForKeyedSubscript:markerCopy];
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDCFUtilities.m" lineNumber:98 description:{@"Unknown auxiliary resource type marker: %@", markerCopy}];
  }

  return v6;
}

void __61__PLDCFUtilities_dcfRegexForAuxiliaryResourceFilenameMarker___block_invoke()
{
  v15[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = dcfRegexForAuxiliaryResourceFilenameMarker__markerToRegexMap;
  dcfRegexForAuxiliaryResourceFilenameMarker__markerToRegexMap = v0;

  v15[0] = PLAuxiliaryResourceFilenameMarkerRender;
  v15[1] = PLAuxiliaryResourceFilenameMarkerAdjustmentBase;
  v15[2] = PLAuxiliaryResourceFilenameMarkerOriginalAdjustment;
  v15[3] = PLAuxiliaryResourceFilenameMarkerSpatialOverCapture;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^ [[A-Z][_][0-9]]{4}     (?# alphanumeric + '_' x4)%@                       (?# render marker)[0-9]{4}                 (?# digit x4)\\.[[A-Z][0-9]]{3, 4} $   (?# alphanumeric x3 or x4)", v7];
        v9 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:v8 options:3 error:0];
        [dcfRegexForAuxiliaryResourceFilenameMarker__markerToRegexMap setObject:v9 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (id)dcfCompliantNameForFileName:(id)name createDate:(id)date fileSize:(unint64_t)size filenameMarker:(id)marker
{
  markerCopy = marker;
  v11 = [self makeDCFFileNameFromFileName:name createDate:date fileSize:size];
  if (markerCopy)
  {
    v12 = [self insertAuxiliaryResourceTypeMarker:markerCopy intoFileName:v11];

    v11 = v12;
  }

  return v11;
}

+ (BOOL)isValidDCFFileName:(id)name
{
  nameCopy = name;
  dcfRegex = [self dcfRegex];
  LOBYTE(self) = [self fileName:nameCopy matchesRegex:dcfRegex];

  return self;
}

+ (id)dcfRegex
{
  pl_dispatch_once();
  v2 = dcfRegex_regex;

  return v2;
}

void __26__PLDCFUtilities_dcfRegex__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^ [[A-Z][_][0-9]]{4}   (?# alphanumeric + '_' x4)[0-9]{4}               (?# digit x4)\\.[[A-Z][0-9]]{3 options:4} $ (?# alphanumeric x3 or x4)" error:{3, 0}];
  v1 = dcfRegex_regex;
  dcfRegex_regex = v0;
}

@end