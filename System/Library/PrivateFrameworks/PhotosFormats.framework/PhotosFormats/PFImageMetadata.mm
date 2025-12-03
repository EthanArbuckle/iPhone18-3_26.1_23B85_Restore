@interface PFImageMetadata
+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)l error:(id *)error block:(id)block;
+ (BOOL)imageSourceIsSpatial:(CGImageSource *)spatial;
+ (BOOL)queryImagePropertiesOfFileAtURL:(id)l error:(id *)error block:(id)block;
+ (BOOL)readMetadataType:(unsigned __int8)type fromCGImageProperties:(id)properties value:(id *)value error:(id *)error;
+ (BOOL)readMetadataType:(unsigned __int8)type fromFileURL:(id)l value:(id *)value error:(id *)error;
+ (BOOL)readMetadataValueFromImageAtFileURL:(id)l dictionaryKey:(const void *)key key:(const void *)a5 value:(id *)value error:(id *)error;
+ (BOOL)writeMetadataType:(unsigned __int8)type value:(id)value toCGImageProperties:(id)properties error:(id *)error;
+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)info;
+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)source;
+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index;
+ (id)cIImageFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)cIImageFromPixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)imagePropertiesByRemovingKey:(const void *)key dictionaryKey:(const void *)dictionaryKey fromImageProperties:(id)properties;
+ (id)valueFromCGImageProperties:(id)properties dictionaryKey:(const void *)key key:(const void *)a5;
@end

@implementation PFImageMetadata

+ (BOOL)imageSourceIsSpatial:(CGImageSource *)spatial
{
  v3 = [[PFMetadata alloc] initWithImageSource:spatial contentType:0 options:13 timeZoneLookup:0 cacheImageSource:1];
  isSpatialMedia = [(PFMetadata *)v3 isSpatialMedia];

  return isSpatialMedia;
}

+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  v5 = [self cIImageFromPixelBuffer:buffer applyingOrientation:*&orientation scaleFactor:factor];
  if (v5)
  {
    context = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [context createCGImage:v5 fromRect:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cIImageFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  v6 = *&orientation;
  v8 = [self createPixelBufferFromAuxiliaryImageInfo:info];
  if (v8)
  {
    v9 = v8;
    v10 = [self cIImageFromPixelBuffer:v8 applyingOrientation:v6 scaleFactor:factor];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)info
{
  v15 = 0;
  v3 = *MEMORY[0x1E696D220];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:v3];

  v6 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696D430])];
  v7 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DFB8])];
  v8 = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DD58])];
  LODWORD(v5) = [CFDictionaryGetValue(v5 *MEMORY[0x1E696DEC0])];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E696D218]];

  v10 = *MEMORY[0x1E695E480];
  bytes = [v9 bytes];
  v12 = v9;
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, bytes, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)cIImageFromPixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  if (buffer)
  {
    v6 = *&orientation;
    v7 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:?];
    v8 = [v7 imageByApplyingCGOrientation:v6];

    if (vabdd_f64(1.0, factor) > 2.22044605e-16)
    {
      CGAffineTransformMakeScale(&v11, factor, factor);
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

+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  v5 = [self cIImageFromAuxiliaryImageInfo:info applyingOrientation:*&orientation scaleFactor:factor];
  if (v5)
  {
    context = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [context createCGImage:v5 fromRect:?];
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

+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index
{
  v6 = [self auxiliaryImagesToPreserveForDerivativesFromImageSource:? imageIndex:?];
  if ([v6 count])
  {
    v7 = CGImageSourceCopyPropertiesAtIndex(source, index, 0);
    v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    v9 = v8;
    if (v8)
    {
      intValue = [v8 intValue];
    }

    else
    {
      intValue = 1;
    }

    v12 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v12 doubleValue];
    v14 = v13;
    v15 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v15 doubleValue];
    v17 = v16;

    array = [MEMORY[0x1E695DF70] array];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__PFImageMetadata_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke;
    v20[3] = &unk_1E7B64C18;
    v24 = intValue;
    v22 = v14;
    v23 = v17;
    v11 = array;
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

+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)source
{
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);

  return [self auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:source imageIndex:PrimaryImageIndex];
}

+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index
{
  v20 = *MEMORY[0x1E69E9840];
  if (source)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    auxiliaryImageIdentifiersToPreserveForDerivatives = [self auxiliaryImageIdentifiersToPreserveForDerivatives];
    v7 = [auxiliaryImageIdentifiersToPreserveForDerivatives countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      dictionary = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(auxiliaryImageIdentifiersToPreserveForDerivatives);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(source, index, v12);
          if (v13)
          {
            if (!dictionary)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
            }

            [dictionary setObject:v13 forKeyedSubscript:v12];
          }
        }

        v8 = [auxiliaryImageIdentifiersToPreserveForDerivatives countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)l error:(id *)error block:(id)block
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v9 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v9)
  {
    v12 = 0;
    if (!error)
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
      blockCopy[2](blockCopy, v10, v14 - 1, &v19);
      if (v14 >= v13)
      {
        break;
      }

      ++v14;
    }

    while ((v19 & 1) == 0);
  }

  CFRelease(v10);
  if (error)
  {
LABEL_9:
    if (!v12)
    {
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to access input media through URL %@", lCopy];
      v21[0] = lCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:1 userInfo:v17];
    }
  }

LABEL_11:

  return v12;
}

+ (BOOL)queryImagePropertiesOfFileAtURL:(id)l error:(id *)error block:(id)block
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
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
  v12 = blockCopy;
  v16 = v12;
  v17 = &v18;
  [self enumerateImageSourceIndexesOfFileAtURL:lCopy error:error block:v14];
  LOBYTE(error) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return error & 1;
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

+ (BOOL)writeMetadataType:(unsigned __int8)type value:(id)value toCGImageProperties:(id)properties error:(id *)error
{
  typeCopy = type;
  v31[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertiesCopy = properties;
  if ([self metadataTypeRequiresImageSource:typeCopy])
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A278];
      typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is only available when using URL-based methods", typeCopy];
      v31[0] = typeCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v14];

LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (propertiesCopy)
    {
      v15 = convertTypeToKey(typeCopy, 0);
      if (v15)
      {
        typeCopy = v15;
        if (valueCopy)
        {
          v16 = *MEMORY[0x1E696DE30];
          v17 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [v17 mutableCopy];
          }

          else
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v25 = v18;
          [propertiesCopy setObject:v18 forKeyedSubscript:v16];
          [v25 setObject:valueCopy forKeyedSubscript:typeCopy];

          v20 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (error)
        {
          v21 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A278];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", typeCopy, "image"];
          v27 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *error = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v23];
        }

        typeCopy = 0;
      }

      goto LABEL_16;
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A278];
      v29 = @"Invalid nil input properties";
      typeCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [v19 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:typeCopy];
      *error = v20 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v20 = 0;
LABEL_18:

  return v20;
}

+ (BOOL)readMetadataType:(unsigned __int8)type fromCGImageProperties:(id)properties value:(id *)value error:(id *)error
{
  typeCopy = type;
  v26[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (![self metadataTypeRequiresImageSource:typeCopy])
  {
    if (propertiesCopy)
    {
      v14 = convertTypeToKey(typeCopy, 0);
      if (!v14)
      {
        if (error)
        {
          v17 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A278];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", typeCopy, "image"];
          v22 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          *error = [v17 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v19];
        }

        typeCopy = 0;
        goto LABEL_13;
      }

      typeCopy = v14;
      *value = [self valueFromCGImageProperties:propertiesCopy dictionaryKey:*MEMORY[0x1E696DE30] key:v14];
      v15 = 1;
    }

    else
    {
      if (!error)
      {
        goto LABEL_9;
      }

      v16 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A278];
      v24 = @"Invalid nil input properties";
      typeCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v16 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:typeCopy];
      *error = v15 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is only available when using URL-based methods", typeCopy];
    v26[0] = typeCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *error = [v11 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v13];

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v15 = 0;
LABEL_15:

  return v15;
}

+ (BOOL)readMetadataType:(unsigned __int8)type fromFileURL:(id)l value:(id *)value error:(id *)error
{
  typeCopy = type;
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = convertTypeToKey(typeCopy, 0);
  if (v11)
  {
    if ([self metadataTypeRequiresImageSource:typeCopy])
    {
      *value = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__PFImageMetadata_readMetadataType_fromFileURL_value_error___block_invoke;
      v16[3] = &unk_1E7B64B98;
      v19 = typeCopy;
      v17 = v11;
      valueCopy = value;
      LOBYTE(error) = [self enumerateImageSourceIndexesOfFileAtURL:lCopy error:error block:v16];
    }

    else
    {
      LOBYTE(error) = [self readMetadataValueFromImageAtFileURL:lCopy dictionaryKey:*MEMORY[0x1E696DE30] key:v11 value:value error:error];
    }
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", typeCopy, "image"];
    v21[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v14];

    LOBYTE(error) = 0;
  }

  return error;
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

+ (id)imagePropertiesByRemovingKey:(const void *)key dictionaryKey:(const void *)dictionaryKey fromImageProperties:(id)properties
{
  propertiesCopy = properties;
  v8 = propertiesCopy;
  v9 = propertiesCopy;
  if (dictionaryKey)
  {
    v10 = [propertiesCopy objectForKey:dictionaryKey];
    v9 = v8;
    if (v10)
    {
      objc_opt_class();
      v9 = v8;
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:key];
        v9 = v8;
        if (v11)
        {
          v9 = [v8 mutableCopy];
          v12 = [v10 mutableCopy];
          [v12 removeObjectForKey:key];
          [v9 setObject:v12 forKey:dictionaryKey];
        }
      }
    }
  }

  return v9;
}

+ (BOOL)readMetadataValueFromImageAtFileURL:(id)l dictionaryKey:(const void *)key key:(const void *)a5 value:(id *)value error:(id *)error
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PFImageMetadata_readMetadataValueFromImageAtFileURL_dictionaryKey_key_value_error___block_invoke;
  v8[3] = &__block_descriptor_64_e22_v16__0__NSDictionary_8l;
  v8[4] = value;
  v8[5] = self;
  v8[6] = key;
  v8[7] = a5;
  return [self queryImagePropertiesOfFileAtURL:l error:error block:v8];
}

id __85__PFImageMetadata_readMetadataValueFromImageAtFileURL_dictionaryKey_key_value_error___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) valueFromCGImageProperties:a2 dictionaryKey:*(a1 + 48) key:*(a1 + 56)];
  **(a1 + 32) = result;
  return result;
}

+ (id)valueFromCGImageProperties:(id)properties dictionaryKey:(const void *)key key:(const void *)a5
{
  Value = 0;
  if (properties && key)
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(properties, key);
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