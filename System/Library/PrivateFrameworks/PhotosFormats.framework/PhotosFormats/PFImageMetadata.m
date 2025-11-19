@interface PFImageMetadata
+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)a3 error:(id *)a4 block:(id)a5;
+ (BOOL)imageSourceIsSpatial:(CGImageSource *)a3;
+ (BOOL)queryImagePropertiesOfFileAtURL:(id)a3 error:(id *)a4 block:(id)a5;
+ (BOOL)readMetadataType:(unsigned __int8)a3 fromCGImageProperties:(id)a4 value:(id *)a5 error:(id *)a6;
+ (BOOL)readMetadataType:(unsigned __int8)a3 fromFileURL:(id)a4 value:(id *)a5 error:(id *)a6;
+ (BOOL)readMetadataValueFromImageAtFileURL:(id)a3 dictionaryKey:(const void *)a4 key:(const void *)a5 value:(id *)a6 error:(id *)a7;
+ (BOOL)writeMetadataType:(unsigned __int8)a3 value:(id)a4 toCGImageProperties:(id)a5 error:(id *)a6;
+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)a3;
+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)a3;
+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4;
+ (id)cIImageFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)cIImageFromPixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)imagePropertiesByRemovingKey:(const void *)a3 dictionaryKey:(const void *)a4 fromImageProperties:(id)a5;
+ (id)valueFromCGImageProperties:(id)a3 dictionaryKey:(const void *)a4 key:(const void *)a5;
@end

@implementation PFImageMetadata

+ (BOOL)imageSourceIsSpatial:(CGImageSource *)a3
{
  v3 = [[PFMetadata alloc] initWithImageSource:a3 contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1];
  v4 = [(PFMetadata *)v3 isSpatialMedia];

  return v4;
}

+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  v5 = [a1 cIImageFromPixelBuffer:a3 applyingOrientation:*&a4 scaleFactor:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [v6 createCGImage:v5 fromRect:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cIImageFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  v6 = *&a4;
  v8 = [a1 createPixelBufferFromAuxiliaryImageInfo:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 cIImageFromPixelBuffer:v8 applyingOrientation:v6 scaleFactor:a5];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)a3
{
  v15 = 0;
  v3 = *MEMORY[0x1E696D220];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696D430])];
  v7 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DFB8])];
  v8 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DD58])];
  LODWORD(v5) = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DEC0])];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696D218]];

  v10 = *MEMORY[0x1E695E480];
  v11 = [v9 bytes];
  v12 = v9;
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, v11, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)cIImageFromPixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  if (a3)
  {
    v6 = *&a4;
    v7 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:?];
    v8 = [v7 imageByApplyingCGOrientation:v6];

    if (vabdd_f64(1.0, a5) > 2.22044605e-16)
    {
      CGAffineTransformMakeScale(&v11, a5, a5);
      v9 = [v8 imageByApplyingTransform:&v11];

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  v5 = [a1 cIImageFromAuxiliaryImageInfo:a3 applyingOrientation:*&a4 scaleFactor:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [v6 createCGImage:v5 fromRect:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E696D270];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4
{
  v6 = [a1 auxiliaryImagesToPreserveForDerivativesFromImageSource:? imageIndex:?];
  if ([v6 count])
  {
    v7 = CGImageSourceCopyPropertiesAtIndex(a3, a4, 0);
    v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 intValue];
    }

    else
    {
      v10 = 1;
    }

    v12 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v12 doubleValue];
    v14 = v13;
    v15 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v15 doubleValue];
    v17 = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__PFImageMetadata_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke;
    v20[3] = &unk_1E7B64C18;
    v24 = v10;
    v22 = v14;
    v23 = v17;
    v11 = v18;
    v21 = v11;
    [v6 enumerateKeysAndObjectsUsingBlock:v20];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

void __91__PFImageMetadata_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setAuxiliaryImageInfo:v5];

  [v7 setIdentifier:v6];
  [v7 setSourceImageOrientation:*(a1 + 56)];
  [v7 setSourceImageSize:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) addObject:v7];
}

+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)a3
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a3);

  return [a1 auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:a3 imageIndex:PrimaryImageIndex];
}

+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a1 auxiliaryImageIdentifiersToPreserveForDerivatives];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a3, a4, v12);
          if (v13)
          {
            if (!v9)
            {
              v9 = [MEMORY[0x1E695DF90] dictionary];
            }

            [v9 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)a3 error:(id *)a4 block:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = CGImageSourceCreateWithURL(v7, 0);
  if (!v9)
  {
    v12 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = v9;
  Count = CGImageSourceGetCount(v9);
  v12 = Count != 0;
  v19 = 0;
  if (Count)
  {
    v13 = Count;
    v14 = 1;
    do
    {
      v8[2](v8, v10, v14 - 1, &v19);
      if (v14 >= v13)
      {
        break;
      }

      ++v14;
    }

    while ((v19 & 1) == 0);
  }

  CFRelease(v10);
  if (a4)
  {
LABEL_9:
    if (!v12)
    {
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to access input media through URL %@", v7];
      v21[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a4 = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:1 userInfo:v17];
    }
  }

LABEL_11:

  return v12;
}

+ (BOOL)queryImagePropertiesOfFileAtURL:(id)a3 error:(id *)a4 block:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v22 = *MEMORY[0x1E696E0A8];
  v23[0] = MEMORY[0x1E695E110];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PFImageMetadata_queryImagePropertiesOfFileAtURL_error_block___block_invoke;
  v14[3] = &unk_1E7B64BC0;
  v11 = v10;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v18;
  [a1 enumerateImageSourceIndexesOfFileAtURL:v8 error:a4 block:v14];
  LOBYTE(a4) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return a4 & 1;
}

void __63__PFImageMetadata_queryImagePropertiesOfFileAtURL_error_block___block_invoke(uint64_t a1, CGImageSourceRef isrc, size_t index, _BYTE *a4)
{
  v6 = CGImageSourceCopyPropertiesAtIndex(isrc, index, *(a1 + 32));
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 40) + 16))();
    CFRelease(v7);
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (BOOL)writeMetadataType:(unsigned __int8)a3 value:(id)a4 toCGImageProperties:(id)a5 error:(id *)a6
{
  v8 = a3;
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if ([a1 metadataTypeRequiresImageSource:v8])
  {
    if (a6)
    {
      v12 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A278];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is only available when using URL-based methods", v8];
      v31[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *a6 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v14];

LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (v11)
    {
      v15 = convertTypeToKey(v8, 0);
      if (v15)
      {
        v13 = v15;
        if (v10)
        {
          v16 = *MEMORY[0x1E696DE30];
          v17 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [v17 mutableCopy];
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v25 = v18;
          [v11 setObject:v18 forKeyedSubscript:v16];
          [v25 setObject:v10 forKeyedSubscript:v13];

          v20 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (a6)
        {
          v21 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A278];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", v8, "image"];
          v27 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a6 = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v23];
        }

        v13 = 0;
      }

      goto LABEL_16;
    }

    if (a6)
    {
      v19 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A278];
      v29 = @"Invalid nil input properties";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [v19 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:v13];
      *a6 = v20 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v20 = 0;
LABEL_18:

  return v20;
}

+ (BOOL)readMetadataType:(unsigned __int8)a3 fromCGImageProperties:(id)a4 value:(id *)a5 error:(id *)a6
{
  v8 = a3;
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (![a1 metadataTypeRequiresImageSource:v8])
  {
    if (v10)
    {
      v14 = convertTypeToKey(v8, 0);
      if (!v14)
      {
        if (a6)
        {
          v17 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A278];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", v8, "image"];
          v22 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          *a6 = [v17 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v19];
        }

        v12 = 0;
        goto LABEL_13;
      }

      v12 = v14;
      *a5 = [a1 valueFromCGImageProperties:v10 dictionaryKey:*MEMORY[0x1E696DE30] key:v14];
      v15 = 1;
    }

    else
    {
      if (!a6)
      {
        goto LABEL_9;
      }

      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A278];
      v24 = @"Invalid nil input properties";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v16 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:v12];
      *a6 = v15 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (a6)
  {
    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is only available when using URL-based methods", v8];
    v26[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a6 = [v11 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v13];

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)readMetadataType:(unsigned __int8)a3 fromFileURL:(id)a4 value:(id *)a5 error:(id *)a6
{
  v8 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = convertTypeToKey(v8, 0);
  if (v11)
  {
    if ([a1 metadataTypeRequiresImageSource:v8])
    {
      *a5 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__PFImageMetadata_readMetadataType_fromFileURL_value_error___block_invoke;
      v16[3] = &unk_1E7B64B98;
      v19 = v8;
      v17 = v11;
      v18 = a5;
      LOBYTE(a6) = [a1 enumerateImageSourceIndexesOfFileAtURL:v10 error:a6 block:v16];
    }

    else
    {
      LOBYTE(a6) = [a1 readMetadataValueFromImageAtFileURL:v10 dictionaryKey:*MEMORY[0x1E696DE30] key:v11 value:a5 error:a6];
    }
  }

  else if (a6)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", v8, "image"];
    v21[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a6 = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v14];

    LOBYTE(a6) = 0;
  }

  return a6;
}

CFDictionaryRef __60__PFImageMetadata_readMetadataType_fromFileURL_value_error___block_invoke(CFDictionaryRef result, CGImageSourceRef isrc, size_t index, _BYTE *a4)
{
  if (*(result + 48) == 18)
  {
    v5 = result;
    result = CGImageSourceCopyAuxiliaryDataInfoAtIndex(isrc, index, *(result + 4));
    if (result)
    {
      result = result;
      **(v5 + 5) = result;
      *a4 = 1;
    }
  }

  return result;
}

+ (id)imagePropertiesByRemovingKey:(const void *)a3 dictionaryKey:(const void *)a4 fromImageProperties:(id)a5
{
  v7 = a5;
  v8 = v7;
  v9 = v7;
  if (a4)
  {
    v10 = [v7 objectForKey:a4];
    v9 = v8;
    if (v10)
    {
      objc_opt_class();
      v9 = v8;
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:a3];
        v9 = v8;
        if (v11)
        {
          v9 = [v8 mutableCopy];
          v12 = [v10 mutableCopy];
          [v12 removeObjectForKey:a3];
          [v9 setObject:v12 forKey:a4];
        }
      }
    }
  }

  return v9;
}

+ (BOOL)readMetadataValueFromImageAtFileURL:(id)a3 dictionaryKey:(const void *)a4 key:(const void *)a5 value:(id *)a6 error:(id *)a7
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PFImageMetadata_readMetadataValueFromImageAtFileURL_dictionaryKey_key_value_error___block_invoke;
  v8[3] = &__block_descriptor_64_e22_v16__0__NSDictionary_8l;
  v8[4] = a6;
  v8[5] = a1;
  v8[6] = a4;
  v8[7] = a5;
  return [a1 queryImagePropertiesOfFileAtURL:a3 error:a7 block:v8];
}

id __85__PFImageMetadata_readMetadataValueFromImageAtFileURL_dictionaryKey_key_value_error___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) valueFromCGImageProperties:a2 dictionaryKey:*(a1 + 48) key:*(a1 + 56)];
  **(a1 + 32) = result;
  return result;
}

+ (id)valueFromCGImageProperties:(id)a3 dictionaryKey:(const void *)a4 key:(const void *)a5
{
  Value = 0;
  if (a3 && a4)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a3, a4);
      if (Value)
      {
        v8 = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v8, a5);
          if (Value)
          {
            Value = Value;
          }
        }

        else
        {
          Value = 0;
        }
      }
    }

    v5 = vars8;
  }

  return Value;
}

@end