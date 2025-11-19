@interface PLDCFUtilities
+ (BOOL)fileName:(id)a3 matchesRegex:(id)a4;
+ (BOOL)isRenderFileName:(id)a3;
+ (BOOL)isSpatialOverCaptureFileName:(id)a3;
+ (BOOL)isValidDCFFileName:(id)a3;
+ (id)convertHash:(unsigned int)a3 usingPlaceValues:(id)a4;
+ (id)dcfCompliantNameForFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5 filenameMarker:(id)a6;
+ (id)dcfRegex;
+ (id)dcfRegexForAuxiliaryResourceFilenameMarker:(id)a3;
+ (id)encodeFileNameFromHash:(unsigned int)a3;
+ (id)fileNameByRemovingRenderMarkerInFileName:(id)a3;
+ (id)fileNameByRemovingSpatialOverCaptureMarkerInFileName:(id)a3;
+ (id)insertAuxiliaryResourceTypeMarker:(id)a3 intoFileName:(id)a4;
+ (id)makeDCFFileNameByHashingFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5;
+ (id)makeDCFFileNameFromFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5;
+ (id)placeValuesFromBases:(id)a3;
+ (unsigned)hashForFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5;
+ (void)computeSHA256OfString:(id)a3 intoBuffer:(char *)a4;
@end

@implementation PLDCFUtilities

+ (id)placeValuesFromBases:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [v3 count];
  if (v5 >= 1)
  {
    v6 = (v5 & 0x7FFFFFFF) + 1;
    v7 = 1;
    do
    {
      v8 = [v3 objectAtIndexedSubscript:v6 - 2];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v4 addObject:v9];

      v7 *= [v8 unsignedIntegerValue];
      --v6;
    }

    while (v6 > 1);
  }

  return v4;
}

+ (id)convertHash:(unsigned int)a3 usingPlaceValues:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [v5 count];
  if (v7 >= 1)
  {
    v8 = (v7 & 0x7FFFFFFF) + 1;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8 - 2];
      [v9 doubleValue];
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtmd_u64_f64(a3 / v10)];
      [v6 addObject:v11];

      a3 %= [v9 unsignedIntegerValue];
      --v8;
    }

    while (v8 > 1);
  }

  return v6;
}

+ (id)encodeFileNameFromHash:(unsigned int)a3
{
  v3 = *&a3;
  pl_dispatch_once();
  v5 = [a1 convertHash:v3 usingPlaceValues:encodeFileNameFromHash__pl_once_object_17];
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

+ (void)computeSHA256OfString:(id)a3 intoBuffer:(char *)a4
{
  v5 = [a3 UTF8String];
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  v6 = strlen(v5);
  CC_SHA256_Update(&v7, v5, v6);
  CC_SHA256_Final(a4, &v7);
}

+ (unsigned)hashForFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%llu", a3, a4, a5];
  [a1 computeSHA256OfString:v6 intoBuffer:buf];
  LODWORD(a1) = crc32(0, buf, 0x20u);

  return a1;
}

+ (id)insertAuxiliaryResourceTypeMarker:(id)a3 intoFileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 substringToIndex:4];
  v8 = [v5 substringFromIndex:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, v6, v8];

  return v9;
}

+ (id)makeDCFFileNameByHashingFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 encodeFileNameFromHash:{objc_msgSend(a1, "hashForFileName:createDate:fileSize:", v8, a4, a5)}];
  v10 = [v8 pathExtension];

  v11 = [v10 uppercaseString];
  v12 = v11;
  v13 = &stru_1F0F06D80;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [v9 stringByAppendingPathExtension:v14];

  return v15;
}

+ (id)makeDCFFileNameFromFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  if ([a1 isValidDCFFileName:v9])
  {
    [v9 uppercaseString];
  }

  else
  {
    [a1 makeDCFFileNameByHashingFileName:v9 createDate:v8 fileSize:a5];
  }
  v10 = ;

  return v10;
}

+ (BOOL)fileName:(id)a3 matchesRegex:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = [v5 numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v7 == 1;
}

+ (id)fileNameByRemovingSpatialOverCaptureMarkerInFileName:(id)a3
{
  v4 = a3;
  if ([a1 isRenderFileName:v4])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 substringToIndex:4];
    v7 = [v4 substringFromIndex:5];
    v8 = [v5 stringWithFormat:@"%@%@", v6, v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

+ (BOOL)isSpatialOverCaptureFileName:(id)a3
{
  v4 = PLAuxiliaryResourceFilenameMarkerSpatialOverCapture;
  v5 = a3;
  v6 = [a1 dcfRegexForAuxiliaryResourceFilenameMarker:v4];
  LOBYTE(a1) = [a1 fileName:v5 matchesRegex:v6];

  return a1;
}

+ (id)fileNameByRemovingRenderMarkerInFileName:(id)a3
{
  v4 = a3;
  if ([a1 isRenderFileName:v4])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 substringToIndex:4];
    v7 = [v4 substringFromIndex:5];
    v8 = [v5 stringWithFormat:@"%@%@", v6, v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

+ (BOOL)isRenderFileName:(id)a3
{
  v4 = a3;
  v5 = [a1 renderDCFRegex];
  LOBYTE(a1) = [a1 fileName:v4 matchesRegex:v5];

  return a1;
}

+ (id)dcfRegexForAuxiliaryResourceFilenameMarker:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLDCFUtilities.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"marker"}];
  }

  pl_dispatch_once();
  v6 = [dcfRegexForAuxiliaryResourceFilenameMarker__markerToRegexMap objectForKeyedSubscript:v5];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLDCFUtilities.m" lineNumber:98 description:{@"Unknown auxiliary resource type marker: %@", v5}];
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

+ (id)dcfCompliantNameForFileName:(id)a3 createDate:(id)a4 fileSize:(unint64_t)a5 filenameMarker:(id)a6
{
  v10 = a6;
  v11 = [a1 makeDCFFileNameFromFileName:a3 createDate:a4 fileSize:a5];
  if (v10)
  {
    v12 = [a1 insertAuxiliaryResourceTypeMarker:v10 intoFileName:v11];

    v11 = v12;
  }

  return v11;
}

+ (BOOL)isValidDCFFileName:(id)a3
{
  v4 = a3;
  v5 = [a1 dcfRegex];
  LOBYTE(a1) = [a1 fileName:v4 matchesRegex:v5];

  return a1;
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