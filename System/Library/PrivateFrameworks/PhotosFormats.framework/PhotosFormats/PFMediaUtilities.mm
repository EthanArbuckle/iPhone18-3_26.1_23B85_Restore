@interface PFMediaUtilities
+ (BOOL)audioChannelLayoutIsCinematicVideoRender:(const AudioChannelLayout *)render;
+ (BOOL)canGenerateImageDerivativesFromType:(id)type;
+ (BOOL)canLoadAssetAsRawForInteractiveEditingWithImageProperties:(id)properties;
+ (BOOL)embeddedJPEGSuitableForDerivativesInImageOfType:(id)type url:(id)url imageProperties:(id)properties;
+ (BOOL)embeddedJPEGSuitableForDerivativesInRawImageSource:(CGImageSource *)source enforcePixelCountLimits:(BOOL)limits timeZoneLookup:(id)lookup;
+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)l error:(id *)error block:(id)block;
+ (BOOL)insertTimeRange:(id *)range ofAsset:(id)asset atTime:(id *)time intoMutableComposition:(id)composition error:(id *)error;
+ (BOOL)isValidAVFileForURL:(id)l;
+ (BOOL)isValidImageFileForURL:(id)l;
+ (BOOL)typeRequiresRasterization:(id)rasterization;
+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (CGSize)maximumImageSizeFromProperties:(id)properties;
+ (__CVBuffer)_createPixelBufferFromAuxiliaryImageInfo:(id)info;
+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)info;
+ (double)gainMapHeadroomForHDRGain:(double)gain gainMapValue:(double)value;
+ (id)_cIImageFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)_cIImageFromPixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)_debugDescriptionForAssetURL:(id)l;
+ (id)_debugDescriptionForAssetVariants:(id)variants;
+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)source;
+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)source imageIndex:(unint64_t)index;
+ (id)cIImageFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)cIImageFromPixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor;
+ (id)channelLayoutNameForAudioTrackFormatDescription:(opaqueCMFormatDescription *)description;
+ (id)debugDescriptionForAssetOrPlayerItemTracks:(id)tracks asset:(id)asset duration:(id *)duration;
+ (id)debugDescriptionForPlayerItem:(id)item;
+ (id)dictionaryRepresentationForAuxiliaryImagePixelBuffer:(__CVBuffer *)buffer metadata:(CGImageMetadata *)metadata colorSpace:(CGColorSpace *)space compatibilityMetadata:(CGImageMetadata *)compatibilityMetadata;
+ (id)formatDebugDescriptionForAudioTrack:(id)track;
+ (id)formatDebugDescriptionForMetadataTrack:(id)track;
+ (id)formatDebugDescriptionForVideoTrack:(id)track;
+ (id)formattedCameraModelFromCameraModel:(id)model cameraMake:(id)make;
+ (id)hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:(id)l metadata:(id)metadata error:(id *)error;
+ (id)hevcProfileInformationForVideoTrackFormatDescription:(opaqueCMFormatDescription *)description;
+ (id)imagePropertiesFromImageSource:(CGImageSource *)source atIndex:(unint64_t)index;
+ (id)mainVideoTrackForAsset:(id)asset;
+ (id)outOfBandHintsForURL:(id)l;
+ (id)outOfBandHintsForVideoAsset:(id)asset;
+ (id)segmentIdentifierDescriptionForMetadataTrack:(id)track;
+ (id)stringFromFourCharCode:(unsigned int)code;
+ (id)transformAuxiliaryImages:(id)images scaleFactor:(double)factor applyingOrientation:(unsigned int)orientation;
+ (id)urlByAttachingOutOfBandHintsBase64String:(id)string toVideoURL:(id)l;
+ (int64_t)devicePerformanceMemoryClass;
+ (int64_t)rawSourceMaximumPixelCountForBackgroundProcessing;
+ (int64_t)rawSourceMaximumPixelCountForInteractiveEditing;
+ (void)appendMetadataItemsFromAsset:(id)asset toDebugDescription:(id)description;
+ (void)enumerateVideoTrackFormatDescriptionsInAsset:(id)asset withBlock:(id)block;
+ (void)preserveTrackAssociations:(id)associations ofAsset:(id)asset forMutableComposition:(id)composition assetToCompositionTrackID:(id)d;
@end

@implementation PFMediaUtilities

+ (double)gainMapHeadroomForHDRGain:(double)gain gainMapValue:(double)value
{
  if (gain >= 1.0)
  {
    if (value <= 0.01)
    {
      return exp2(value * -70.0 + 3.0);
    }

    v4 = value * -0.303030303 + 2.0;
    v5 = 0.303030303;
  }

  else
  {
    if (value <= 0.01)
    {
      return exp2(value * -20.0 + 1.8);
    }

    v4 = value * -0.101010101 + 1.5;
    v5 = 0.101010101;
  }

  return exp2(v4 + v5);
}

+ (id)_cIImageFromPixelBuffer:(__CVBuffer *)buffer applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
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

+ (__CVBuffer)_createPixelBufferFromAuxiliaryImageInfo:(id)info
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
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, bytes, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback_3598, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)_cIImageFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  v6 = *&orientation;
  v8 = [self _createPixelBufferFromAuxiliaryImageInfo:info];
  if (v8)
  {
    v9 = v8;
    v10 = [self _cIImageFromPixelBuffer:v8 applyingOrientation:v6 scaleFactor:factor];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)info applyingOrientation:(unsigned int)orientation scaleFactor:(double)factor
{
  v5 = [self _cIImageFromAuxiliaryImageInfo:info applyingOrientation:*&orientation scaleFactor:factor];
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
      *error = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:v17];
    }
  }

LABEL_11:

  return v12;
}

+ (id)stringFromFourCharCode:(unsigned int)code
{
  v5[0] = HIBYTE(code);
  v5[1] = BYTE2(code);
  v5[2] = BYTE1(code);
  v5[3] = code;
  v5[4] = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v5 encoding:30];

  return v3;
}

+ (id)urlByAttachingOutOfBandHintsBase64String:(id)string toVideoURL:(id)l
{
  stringCopy = string;
  lCopy = l;
  if ([stringCopy length])
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    [v7 setFragment:stringCopy];
    v8 = [v7 URL];
  }

  else
  {
    v8 = lCopy;
  }

  return v8;
}

+ (id)outOfBandHintsForURL:(id)l
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  fragment = [v3 fragment];

  if (![fragment length])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:fragment options:0];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = fragment;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Ignoring unexpected hints format: %@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v12];
  v7 = v12;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = fragment;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error decoding hints plist (%@): %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v14 = fragment;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error decoding hints plist (%@), unexpected type %@", buf, 0x16u);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = v6;
LABEL_15:

LABEL_16:
LABEL_17:

  return v8;
}

+ (id)outOfBandHintsForVideoAsset:(id)asset
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = assetCopy;
    v6 = [v5 URL];
    if (v6 || ([v5 resolvedURL], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [self outOfBandHintsForURL:v6];
      v9 = v8;
      if (v8)
      {
        outOfBandHints = v8;
      }

      else if ([v7 isFileURL])
      {
        v11 = [[PFMetadata alloc] initWithAVAsset:v5 options:12 timeZoneLookup:0];
        outOfBandHints = [(PFMetadata *)v11 outOfBandHints];
      }

      else
      {
        outOfBandHints = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected nil URL for AVURLAsset %@", &v13, 0xCu);
      }

      outOfBandHints = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = assetCopy;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AVAsset is not URL-based: %{public}@", &v13, 0xCu);
    }

    outOfBandHints = 0;
  }

  return outOfBandHints;
}

+ (id)_debugDescriptionForAssetVariants:(id)variants
{
  v45 = *MEMORY[0x1E69E9840];
  variantsCopy = variants;
  if ([variantsCopy count])
  {
    string = [MEMORY[0x1E696AD60] string];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = variantsCopy;
    obj = variantsCopy;
    v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v32 = *v40;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v39 + 1) + 8 * i);
          array = [MEMORY[0x1E695DF70] array];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          videoAttributes = [v6 videoAttributes];
          codecTypes = [videoAttributes codecTypes];

          v10 = [codecTypes countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v36;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v36 != v12)
                {
                  objc_enumerationMutation(codecTypes);
                }

                v14 = [self stringFromFourCharCode:{objc_msgSend(*(*(&v35 + 1) + 8 * j), "unsignedIntValue")}];
                [array addObject:v14];
              }

              v11 = [codecTypes countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v11);
          }

          v15 = [array componentsJoinedByString:@"|"];
          videoAttributes2 = [v6 videoAttributes];
          [videoAttributes2 presentationSize];
          v18 = v17;
          v20 = v19;

          [v6 averageBitRate];
          v21 = v18;
          v22 = MEMORY[0x1E696AD98];
          v24 = v23 / 1000000.0;
          videoAttributes3 = [v6 videoAttributes];
          [videoAttributes3 nominalFrameRate];
          v26 = [v22 numberWithDouble:?];
          videoAttributes4 = [v6 videoAttributes];
          videoRange = [videoAttributes4 videoRange];
          [(__CFString *)string appendFormat:@"- %.02fmbit/s %@ %dx%d %@fps %@\n", *&v24, v15, v21, v20, v26, videoRange];
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    variantsCopy = v30;
  }

  else
  {
    string = @"(none)\n";
  }

  return string;
}

+ (id)_debugDescriptionForAssetURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    string = [MEMORY[0x1E696AD60] string];
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    scheme = [v5 scheme];
    [(__CFString *)string appendFormat:@"Scheme: %@\n", scheme];

    host = [v5 host];
    [(__CFString *)string appendFormat:@"Host: %@\n", host];

    path = [v5 path];
    [(__CFString *)string appendFormat:@"Path: %@\n", path];

    [(__CFString *)string appendFormat:@"Query:\n"];
    queryItems = [v5 queryItems];
    v10 = [queryItems sortedArrayUsingComparator:&__block_literal_global_245];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          name = [v16 name];
          value = [v16 value];
          [(__CFString *)string appendFormat:@"- %@=%@\n", name, value, v28];
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    fragment = [v5 fragment];
    v20 = fragment;
    if (fragment)
    {
      v21 = fragment;
      v22 = [PFMediaUtilities outOfBandHintsForURL:lCopy];
      v23 = v22;
      if (v22)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = [v22 description];
        v26 = [v24 stringWithFormat:@"Out of band hints: %@\n", v25];

        v21 = v26;
      }

      [(__CFString *)string appendFormat:@"Fragment: %@\n", v21];
    }

    [(__CFString *)string appendFormat:@"\n%@\n", lCopy];
  }

  else
  {
    string = @"(none)";
  }

  return string;
}

uint64_t __49__PFMediaUtilities__debugDescriptionForAssetURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

+ (void)appendMetadataItemsFromAsset:(id)asset toDebugDescription:(id)description
{
  v41 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  descriptionCopy = description;
  [descriptionCopy appendFormat:@"\n*** Metadata ***\n"];
  metadata = [assetCopy metadata];
  if ([metadata count])
  {
    v30 = descriptionCopy;
    v28 = assetCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = metadata;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    v27 = metadata;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          identifier = [v14 identifier];
          if (v11 <= [identifier length])
          {
            identifier2 = [v14 identifier];
            v11 = [identifier2 length];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v10);
      v17 = (v11 + 1);
    }

    else
    {
      v17 = 1;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v18 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          value = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [value base64EncodedStringWithOptions:0];

            value = v24;
          }

          identifier3 = [v22 identifier];
          v26 = [identifier3 stringByAppendingString:@":"];
          [v30 appendFormat:@"%-*s %@\n", v17, objc_msgSend(v26, "UTF8String"), value];
        }

        v19 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    metadata = v27;
    assetCopy = v28;
    descriptionCopy = v30;
  }

  else
  {
    [descriptionCopy appendFormat:@"(none)\n"];
  }
}

+ (id)debugDescriptionForAssetOrPlayerItemTracks:(id)tracks asset:(id)asset duration:(id *)duration
{
  assetCopy = asset;
  v9 = MEMORY[0x1E696AD60];
  tracksCopy = tracks;
  string = [v9 string];
  time = *duration;
  [string appendFormat:@"Duration: %.02fs\n\n", CMTimeGetSeconds(&time)];
  [string appendString:@"*** Tracks ***\n"];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __78__PFMediaUtilities_debugDescriptionForAssetOrPlayerItemTracks_asset_duration___block_invoke;
  v26 = &unk_1E7B64C40;
  v12 = string;
  v27 = v12;
  [tracksCopy enumerateObjectsUsingBlock:&v23];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = assetCopy;
    variants = [v13 variants];
    v15 = [variants count];
    [v12 appendFormat:@"\n*** Variants (%tu) ***\n", v15, v23, v24, v25, v26];
    v16 = [self _debugDescriptionForAssetVariants:variants];
    [v12 appendString:v16];

    [v12 appendFormat:@"\n*** URL ***\n"];
    v17 = [v13 URL];

    v18 = [self _debugDescriptionForAssetURL:v17];
    [v12 appendString:v18];
  }

  else
  {
    v19 = objc_opt_class();
    variants = NSStringFromClass(v19);
    [v12 appendFormat:@"\n(no URL/variants info because asset is of type '%@')\n", variants, v23, v24, v25, v26];
  }

  [self appendMetadataItemsFromAsset:assetCopy toDebugDescription:v12];
  v20 = +[PFMediaCapabilities currentDeviceIsEligibleForHDRPlayback];
  v21 = @"no";
  if (v20)
  {
    v21 = @"yes";
  }

  [v12 appendFormat:@"\nCurrent Device Eligible for HDR Playback: %@\n\n", v21];

  return v12;
}

void __78__PFMediaUtilities_debugDescriptionForAssetOrPlayerItemTracks_asset_duration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 mediaType];
  [*(a1 + 32) appendFormat:@"%2tu\t%@: "], a3 + 1, v5);
  if ([v5 isEqual:*MEMORY[0x1E6987608]])
  {
    v6 = *(a1 + 32);
    v7 = [PFMediaUtilities formatDebugDescriptionForVideoTrack:v9];
  }

  else if ([v5 isEqual:*MEMORY[0x1E69875A0]])
  {
    v6 = *(a1 + 32);
    v7 = [PFMediaUtilities formatDebugDescriptionForAudioTrack:v9];
  }

  else
  {
    if (![v5 isEqual:*MEMORY[0x1E69875D0]])
    {
      goto LABEL_8;
    }

    v6 = *(a1 + 32);
    v7 = [PFMediaUtilities formatDebugDescriptionForMetadataTrack:v9];
  }

  v8 = v7;
  [v6 appendString:v7];

LABEL_8:
  [*(a1 + 32) appendString:@"\n"];
}

+ (id)debugDescriptionForPlayerItem:(id)item
{
  itemCopy = item;
  tracks = [itemCopy tracks];
  v6 = [tracks valueForKey:@"assetTrack"];

  asset = [itemCopy asset];
  if (itemCopy)
  {
    [itemCopy duration];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [self debugDescriptionForAssetOrPlayerItemTracks:v6 asset:asset duration:v10];

  return v8;
}

+ (void)enumerateVideoTrackFormatDescriptionsInAsset:(id)asset withBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v33 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  tracks = [asset tracks];
  v7 = [tracks countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v10 = *MEMORY[0x1E6987608];
    v23 = *v30;
    v24 = tracks;
    v22 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(tracks);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        mediaType = [v12 mediaType];
        v14 = [mediaType isEqual:v10];

        if (v14)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          formatDescriptions = [v12 formatDescriptions];
          v16 = [formatDescriptions countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(formatDescriptions);
                }

                v20 = *(*(&v25 + 1) + 8 * j);
                MediaSubType = CMFormatDescriptionGetMediaSubType(v20);
                blockCopy[2](blockCopy, v12, v20, MediaSubType, &v33);
                if (v33)
                {

                  tracks = v24;
                  goto LABEL_20;
                }
              }

              v17 = [formatDescriptions countByEnumeratingWithState:&v25 objects:v34 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v9 = v23;
          tracks = v24;
          v10 = v22;
        }
      }

      v8 = [tracks countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

LABEL_20:
}

+ (id)hevcProfileInformationForVideoTrackFormatDescription:(opaqueCMFormatDescription *)description
{
  if (CMFormatDescriptionGetMediaSubType(description) == 1752589105)
  {
    v4 = CMFormatDescriptionGetExtension(description, *MEMORY[0x1E69600A0]);
    v5 = [v4 objectForKeyedSubscript:@"hvcC"];
    if (!v5 || FigHEVCBridge_GetHEVCParameterSetAtIndex() || FigHEVCBridge_GetSPSProfileTierLevel())
    {
      v6 = 0;
    }

    else
    {
      v6 = objc_opt_new();
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:0];
      [v6 setProfile:v8];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:0];
      [v6 setTier:v9];

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:0];
      [v6 setLevel:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)segmentIdentifierDescriptionForMetadataTrack:(id)track
{
  trackCopy = track;
  asset = [trackCopy asset];
  v19 = 0;
  v5 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:asset error:&v19];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:trackCopy outputSettings:0];
    v7 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v6];
    if ([v5 canAddOutput:v6] && (objc_msgSend(v5, "addOutput:", v6), objc_msgSend(v5, "startReading")))
    {
      array = [MEMORY[0x1E695DF70] array];
      nextTimedMetadataGroup = [v7 nextTimedMetadataGroup];
      if (nextTimedMetadataGroup)
      {
        v10 = nextTimedMetadataGroup;
        do
        {
          memset(v18, 0, sizeof(v18));
          v17 = 0u;
          [v10 timeRange];
          v11 = MEMORY[0x1E696AEC0];
          *&time.value = v17;
          time.epoch = *&v18[0];
          Seconds = CMTimeGetSeconds(&time);
          time = *(v18 + 8);
          v13 = [v11 stringWithFormat:@"\n\t  - Segment start %.02fs duration %.02fs", *&Seconds, CMTimeGetSeconds(&time)];
          [array addObject:v13];

          nextTimedMetadataGroup2 = [v7 nextTimedMetadataGroup];

          v10 = nextTimedMetadataGroup2;
        }

        while (nextTimedMetadataGroup2);
      }

      [v5 cancelReading];
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)formatDebugDescriptionForMetadataTrack:(id)track
{
  v41 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  v4 = trackCopy;
  if (trackCopy)
  {
    formatDescriptions = [trackCopy formatDescriptions];
    firstObject = [formatDescriptions firstObject];

    array = [MEMORY[0x1E695DF70] array];
    v7 = CMFormatDescriptionGetExtensions(firstObject);
    v8 = v7;
    v9 = 0x1E696A000uLL;
    if (v7)
    {
      v26 = firstObject;
      v28 = v4;
      v27 = v7;
      v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695FFE0]];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v34 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v34)
      {
        v33 = *v37;
        v32 = *MEMORY[0x1E6960318];
        v31 = *MEMORY[0x1E6960330];
        v30 = *MEMORY[0x1E69603B8];
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v37 != v33)
            {
              objc_enumerationMutation(v10);
            }

            v12 = [v10 objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
            v13 = [v12 objectForKeyedSubscript:v32];
            v14 = +[PFMediaUtilities stringFromFourCharCode:](PFMediaUtilities, "stringFromFourCharCode:", [v13 unsignedIntValue]);
            v15 = [v12 objectForKeyedSubscript:v31];
            if (v15)
            {
              v16 = [objc_alloc(*(v9 + 3776)) initWithData:v15 encoding:30];
            }

            else
            {
              v16 = @"(unknown metadata key value)";
            }

            v17 = [MEMORY[0x1E6987FE0] identifierForKey:v16 keySpace:v14];
            v18 = v9;
            v19 = [*(v9 + 3776) stringWithFormat:@"\n\t- %@", v17];
            [array addObject:v19];

            if ([v17 isEqualToString:v30])
            {
              v20 = [self segmentIdentifierDescriptionForMetadataTrack:v28];
              if (v20)
              {
                [array addObjectsFromArray:v20];
              }
            }

            v9 = v18;
          }

          v34 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v34);
      }

      v8 = v27;
      v4 = v28;
      firstObject = v26;
    }

    v21 = *(v9 + 3776);
    v22 = [PFMediaUtilities stringFromFourCharCode:CMFormatDescriptionGetMediaSubType(firstObject)];
    v23 = [array componentsJoinedByString:&stru_1F2A8EB68];
    v24 = [v21 stringWithFormat:@"%@ %@", v22, v23];
  }

  else
  {
    v24 = @"(nil metadata track)";
  }

  return v24;
}

+ (BOOL)audioChannelLayoutIsCinematicVideoRender:(const AudioChannelLayout *)render
{
  if (render->mChannelLayoutTag || render->mNumberChannelDescriptions != 5)
  {
    return 0;
  }

  v3 = 0;
  mChannelDescriptions = render->mChannelDescriptions;
  do
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    result = mChannelLabel == dword_1B36A1FE8[v3];
    v7 = mChannelLabel != dword_1B36A1FE8[v3] || v3 == 4;
    ++v3;
  }

  while (!v7);
  return result;
}

+ (id)channelLayoutNameForAudioTrackFormatDescription:(opaqueCMFormatDescription *)description
{
  v26 = *MEMORY[0x1E69E9840];
  sizeOut = 0;
  ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(description, &sizeOut);
  if (!ChannelLayout)
  {
    v12 = @"(unable to get channel layout)";
    goto LABEL_15;
  }

  v6 = ChannelLayout;
  v18 = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(description, &v18);
  ioPropertyDataSize = 8;
  v16 = 0;
  if (v18 < 0x30)
  {
    Property = AudioFormatGetProperty(0x6C6F6E6Du, sizeOut, v6, &ioPropertyDataSize, &v16);
    if (Property)
    {
      v14 = Property;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        inSpecifier = 67109120;
        LODWORD(v22) = v14;
        v10 = MEMORY[0x1E69E9C10];
        p_inSpecifier = &inSpecifier;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v25 = 0;
    v24 = 0;
    inSpecifier = FormatList->mChannelLayoutTag;
    v8 = AudioFormatGetProperty(0x6C6F6E6Du, 0x20u, &inSpecifier, &ioPropertyDataSize, &v16);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20[0] = 67109120;
        v20[1] = v9;
        v10 = MEMORY[0x1E69E9C10];
        p_inSpecifier = v20;
LABEL_19:
        _os_log_error_impl(&dword_1B35C1000, v10, OS_LOG_TYPE_ERROR, "AudioFormatGetProperty returned non-success status %d", p_inSpecifier, 8u);
      }
    }
  }

  v12 = v16;
  if (!v16)
  {
    if ([self audioChannelLayoutIsCinematicVideoRender:v6])
    {
      v12 = @"Cinematic Video Render";
    }

    else if (v6->mChannelLayoutTag == -266338299)
    {
      v12 = @"Non-POR Cinematic Video Render";
    }

    else
    {
      v12 = @"(unknown channel layout)";
    }
  }

LABEL_15:

  return v12;
}

+ (id)formatDebugDescriptionForAudioTrack:(id)track
{
  if (track)
  {
    formatDescriptions = [track formatDescriptions];
    firstObject = [formatDescriptions firstObject];

    v6 = [self channelLayoutNameForAudioTrackFormatDescription:firstObject];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [PFMediaUtilities stringFromFourCharCode:CMFormatDescriptionGetMediaSubType(firstObject)];
    v9 = [v7 stringWithFormat:@"%@ channel layout: %@", v8, v6];
  }

  else
  {
    v9 = @"(nil audio track)";
  }

  return v9;
}

+ (id)formatDebugDescriptionForVideoTrack:(id)track
{
  v43 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  v5 = trackCopy;
  if (!trackCopy)
  {
    v17 = @"(nil video track)";
    goto LABEL_25;
  }

  formatDescriptions = [trackCopy formatDescriptions];
  firstObject = [formatDescriptions firstObject];

  v8 = CMFormatDescriptionGetExtension(firstObject, *MEMORY[0x1E6965F30]);
  v41 = CMFormatDescriptionGetExtension(firstObject, *MEMORY[0x1E6965D88]);
  v9 = CMFormatDescriptionGetExtensions(firstObject);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"BitsPerComponent"];
    integerValue = [v11 integerValue];

    if ([v8 isEqualToString:*MEMORY[0x1E6960148]])
    {
      v13 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69600A0]];
      v14 = v13;
      v15 = @"no";
      if (v13)
      {
        v16 = [v13 objectForKeyedSubscript:@"dvvC"];

        if (v16)
        {
          v15 = @"yes";
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    integerValue = 0;
  }

  v15 = @"no";
LABEL_11:
  MediaSubType = CMFormatDescriptionGetMediaSubType(firstObject);
  v40 = v10;
  if (MediaSubType == 1752589105)
  {
    v19 = [self hevcProfileInformationForVideoTrackFormatDescription:firstObject];
    v20 = v19;
    if (v19)
    {
      [v19 summaryDescription];
      v22 = v21 = v8;
      v39 = [@" " stringByAppendingString:v22];

      v8 = v21;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v5;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to get HEVC profile/tier/level for video track %@", &buf, 0xCu);
      }

      v39 = @" (profile/tier/level unavailable)";
    }
  }

  else
  {
    v39 = &stru_1F2A8EB68;
  }

  v23 = v8;
  if (integerValue)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tdbit ", integerValue];
  }

  else
  {
    v38 = &stru_1F2A8EB68;
  }

  VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
  v25 = @"SDR";
  if (VideoDynamicRange > 1)
  {
    v25 = @"HDR";
  }

  v26 = v25;
  [v5 naturalSize];
  v28 = v27;
  [v5 naturalSize];
  v30 = v29;
  [v5 preferredTransform];
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v28;
  v45.size.height = v30;
  v46 = CGRectApplyAffineTransform(v45, &buf);
  width = v46.size.width;
  height = v46.size.height;
  v33 = MEMORY[0x1E696AEC0];
  v34 = [PFMediaUtilities stringFromFourCharCode:MediaSubType, v46.origin.x, v46.origin.y];
  v35 = MEMORY[0x1E696AD98];
  [v5 nominalFrameRate];
  v36 = [v35 numberWithFloat:?];
  v17 = [v33 stringWithFormat:@"%@ %@%@%@ %dx%d %@fps transfer=%@ color=%@ dv84=%@", v34, v38, v26, v39, width, height, v36, v23, v41, v15];

LABEL_25:

  return v17;
}

+ (id)mainVideoTrackForAsset:(id)asset
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:asset, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)isValidAVFileForURL:(id)l
{
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
    v4 = [MEMORY[0x1E6988168] URLAssetWithURL:lCopy options:0];
    isReadable = [v4 isReadable];
  }

  else
  {
    isReadable = 0;
  }

  return isReadable;
}

+ (id)formattedCameraModelFromCameraModel:(id)model cameraMake:(id)make
{
  modelCopy = model;
  makeCopy = make;
  if ([makeCopy length])
  {
    v7 = [makeCopy componentsSeparatedByString:@" "];
    if ([v7 count] == 1)
    {
      v8 = [makeCopy componentsSeparatedByString:@"/"];

      v7 = v8;
    }

    if ([v7 count] == 1)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      if ([modelCopy rangeOfString:v11] == 0x7FFFFFFFFFFFFFFFLL)
      {
        modelCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, modelCopy];

        modelCopy = modelCopy;
      }
    }

    else
    {
      v11 = makeCopy;
    }

    makeCopy = v11;
  }

  return modelCopy;
}

+ (int64_t)rawSourceMaximumPixelCountForInteractiveEditing
{
  if ([self devicePerformanceMemoryClass] >= 6)
  {
    return 60217344;
  }

  else
  {
    return 52664320;
  }
}

+ (int64_t)rawSourceMaximumPixelCountForBackgroundProcessing
{
  if ([self devicePerformanceMemoryClass] < 2)
  {
    return 25000000;
  }

  if ([self devicePerformanceMemoryClass] >= 6)
  {
    return 60217344;
  }

  return 52664320;
}

+ (BOOL)canLoadAssetAsRawForInteractiveEditingWithImageProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  if (v5)
  {
    [self maximumImageSizeFromProperties:propertiesCopy];
    v8 = [self rawSourceMaximumPixelCountForInteractiveEditing] >= (v6 * v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGSize)maximumImageSizeFromProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKey:@"RawPixelWidth"];
  v5 = [propertiesCopy objectForKey:@"RawPixelHeight"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;
  v10 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  [v10 doubleValue];
  v12 = v11;
  v13 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];
  [v16 doubleValue];
  v18 = v17;
  v19 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];

  [v19 doubleValue];
  v21 = v20;

  v22 = *MEMORY[0x1E695F060];
  v23 = *(MEMORY[0x1E695F060] + 8);
  if (v7 * v9 > *MEMORY[0x1E695F060] * v23)
  {
    v23 = v9;
    v22 = v7;
  }

  if (v12 * v15 > v22 * v23)
  {
    v23 = v15;
    v22 = v12;
  }

  if (v18 * v21 <= v22 * v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if (v18 * v21 <= v22 * v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  v26 = v25;
  v27 = v24;
  result.height = v27;
  result.width = v26;
  return result;
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
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, bytes, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback_3598, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)dictionaryRepresentationForAuxiliaryImagePixelBuffer:(__CVBuffer *)buffer metadata:(CGImageMetadata *)metadata colorSpace:(CGColorSpace *)space compatibilityMetadata:(CGImageMetadata *)compatibilityMetadata
{
  v33 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  height = 0;
  if (PixelFormatType)
  {
    if (Width)
    {
      if (Height)
      {
        v15 = BytesPerRow;
        if (BytesPerRow)
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if (ImageIOLibraryCore() && getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc())
          {
            v17 = getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc();
            if (!v17)
            {
              dlerror();
              abort_report_np();
            }

            [v16 setObject:buffer forKeyedSubscript:*v17];
          }

          else
          {
            metadataCopy = metadata;
            height = [MEMORY[0x1E695DF88] dataWithLength:v15 * Height];
            if (!height)
            {
LABEL_18:

              goto LABEL_19;
            }

            spaceCopy = space;
            v18 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
            if (v18)
            {
              v19 = v18;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v32 = v19;
                _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed (%d)", buf, 8u);
              }

              height = 0;
              goto LABEL_18;
            }

            BaseAddress = CVPixelBufferGetBaseAddress(buffer);
            memcpy([height mutableBytes], BaseAddress, v15 * Height);
            CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
            v29[0] = *MEMORY[0x1E696DEC0];
            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
            v30[0] = v21;
            v29[1] = *MEMORY[0x1E696DFB8];
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
            v30[1] = v22;
            v29[2] = *MEMORY[0x1E696DD58];
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
            v30[2] = v23;
            v29[3] = *MEMORY[0x1E696D430];
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v15];
            v30[3] = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

            [v16 setObject:v25 forKeyedSubscript:*MEMORY[0x1E696D220]];
            [v16 setObject:height forKeyedSubscript:*MEMORY[0x1E696D218]];

            space = spaceCopy;
            metadata = metadataCopy;
          }

          [v16 setObject:metadata forKeyedSubscript:*MEMORY[0x1E696D228]];
          [v16 setObject:space forKeyedSubscript:*MEMORY[0x1E696D210]];
          if (compatibilityMetadata)
          {
            [v16 setObject:compatibilityMetadata forKeyedSubscript:*MEMORY[0x1E696D230]];
          }

          height = v16;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:

  return height;
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

+ (id)transformAuxiliaryImages:(id)images scaleFactor:(double)factor applyingOrientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v58 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = imagesCopy;
  v40 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v40)
  {
    v39 = *v44;
    v38 = *MEMORY[0x1E696D220];
    v37 = *MEMORY[0x1E696DEC0];
    v36 = *MEMORY[0x1E69660D8];
    v34 = *MEMORY[0x1E696D228];
    v33 = *MEMORY[0x1E696D210];
    v32 = *MEMORY[0x1E696D280];
    v30 = *MEMORY[0x1E696D230];
    v35 = v5;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = [v8 objectForKeyedSubscript:v10];
        v12 = [self cIImageFromAuxiliaryImageInfo:v11 applyingOrientation:v5 scaleFactor:factor];
        v13 = v12;
        if (v12)
        {
          [v12 extent];
          v15 = v14;
          v17 = v16;
          v18 = [v11 objectForKeyedSubscript:v38];
          v19 = [v18 objectForKeyedSubscript:v37];
          unsignedIntValue = [v19 unsignedIntValue];

          v55 = v36;
          v56 = MEMORY[0x1E695E0F8];
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          pixelBufferOut = 0;
          v22 = CVPixelBufferCreate(0, v15, v17, unsignedIntValue, v21, &pixelBufferOut);
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109888;
              v48 = v15;
              v49 = 1024;
              v50 = v17;
              v51 = 1024;
              v52 = unsignedIntValue;
              v53 = 1024;
              v54 = v23;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate CVPixelBuffer of size: %dx%d, format: %d, error: %d", buf, 0x1Au);
            }
          }

          else
          {
            context = [MEMORY[0x1E695F620] context];
            [context render:v13 toCVPixelBuffer:pixelBufferOut];

            v25 = [v11 objectForKeyedSubscript:v34];

            v26 = [v11 objectForKeyedSubscript:v33];

            if ([v10 isEqualToString:v32])
            {
              v27 = [v11 objectForKeyedSubscript:v30];
            }

            else
            {
              v27 = 0;
            }

            v28 = [self dictionaryRepresentationForAuxiliaryImagePixelBuffer:pixelBufferOut metadata:v25 colorSpace:v26 compatibilityMetadata:v27];
            if (v28)
            {
              [dictionary setObject:v28 forKeyedSubscript:v10];
            }

            CVPixelBufferRelease(pixelBufferOut);

            v5 = v35;
          }
        }
      }

      v40 = [v8 countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v40);
  }

  return dictionary;
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
    v20[2] = __92__PFMediaUtilities_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke;
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

void __92__PFMediaUtilities_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke(uint64_t a1, void *a2, void *a3)
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
  if (source)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
  }

  else
  {
    PrimaryImageIndex = 0;
  }

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

+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E696D270];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)imagePropertiesFromImageSource:(CGImageSource *)source atIndex:(unint64_t)index
{
  if (source)
  {
    if (imagePropertiesFromImageSource_atIndex__onceToken != -1)
    {
      dispatch_once(&imagePropertiesFromImageSource_atIndex__onceToken, &__block_literal_global_82_3737);
    }

    v6 = CGImageSourceCopyPropertiesAtIndex(source, index, imagePropertiesFromImageSource_atIndex__options);
    if (!v6)
    {
      v6 = CGImageSourceCopyPropertiesAtIndex(source, index, imagePropertiesFromImageSource_atIndex__optionsFallback);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "NULL image source, unable to query image properties", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __59__PFMediaUtilities_imagePropertiesFromImageSource_atIndex___block_invoke()
{
  v11[5] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E696DFD8];
  v7[1] = @"kCGImageSourceKeepOriginalProfile";
  v11[0] = MEMORY[0x1E695E118];
  v11[1] = MEMORY[0x1E695E118];
  v1 = *MEMORY[0x1E696E0C0];
  v8 = *MEMORY[0x1E696E0E0];
  v0 = v8;
  v9 = v1;
  v11[2] = MEMORY[0x1E695E118];
  v11[3] = MEMORY[0x1E695E118];
  v10 = *MEMORY[0x1E696E080];
  v11[4] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v7 count:5];
  v3 = imagePropertiesFromImageSource_atIndex__options;
  imagePropertiesFromImageSource_atIndex__options = v2;

  v4 = [imagePropertiesFromImageSource_atIndex__options mutableCopy];
  v5 = imagePropertiesFromImageSource_atIndex__optionsFallback;
  imagePropertiesFromImageSource_atIndex__optionsFallback = v4;

  return [imagePropertiesFromImageSource_atIndex__optionsFallback setObject:MEMORY[0x1E695E110] forKeyedSubscript:v0];
}

+ (id)hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:(id)l metadata:(id)metadata error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  v10 = metadataCopy;
  if (lCopy && !metadataCopy)
  {
    v10 = [[PFMetadata alloc] initWithImageURL:lCopy contentType:0 timeZoneLookup:0];
  }

  contentType = [(PFMetadata *)v10 contentType];
  if (![contentType conformsToType:*MEMORY[0x1E6982D58]])
  {

    v13 = MEMORY[0x1E695E110];
    goto LABEL_18;
  }

  isProRAW = [(PFMetadata *)v10 isProRAW];

  v13 = MEMORY[0x1E695E110];
  if (!isProRAW)
  {
    goto LABEL_18;
  }

  if (!lCopy)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to check for presence of embedded preview: invalid URL: %@", 0, *MEMORY[0x1E696A278]];
      v27 = lCopy;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22 = v19;
      v23 = 2;
LABEL_16:
      *error = [v22 errorWithDomain:@"com.apple.PhotosFormats" code:v23 userInfo:v21];
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v14 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v14)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A278];
      lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to check for presence of embedded preview: unable to create image source from %@", lCopy];
      v29[0] = lCopy;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v22 = v24;
      v23 = 1;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = v14;
  v16 = objc_autoreleasePoolPush();
  v17 = [self embeddedJPEGSuitableForDerivativesInRawImageSource:v15 enforcePixelCountLimits:0 timeZoneLookup:0];
  objc_autoreleasePoolPop(v16);
  CFRelease(v15);
  v18 = MEMORY[0x1E695E118];
  if (!v17)
  {
    v18 = v13;
  }

  v13 = v18;
LABEL_18:

  return v13;
}

+ (BOOL)embeddedJPEGSuitableForDerivativesInImageOfType:(id)type url:(id)url imageProperties:(id)properties
{
  propertiesCopy = properties;
  urlCopy = url;
  typeCopy = type;
  v11 = [[PFMetadata alloc] initWithImageProperties:propertiesCopy contentType:typeCopy timeZoneLookup:0];

  v12 = [self hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:urlCopy metadata:v11 error:0];

  LOBYTE(urlCopy) = [v12 BOOLValue];
  return urlCopy;
}

+ (BOOL)embeddedJPEGSuitableForDerivativesInRawImageSource:(CGImageSource *)source enforcePixelCountLimits:(BOOL)limits timeZoneLookup:(id)lookup
{
  limitsCopy = limits;
  lookupCopy = lookup;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = [[PFMetadata alloc] initWithImageSource:source contentType:0 options:13 timeZoneLookup:lookupCopy cacheImageSource:1];
  v9 = v8;
  if (limitsCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110__PFMediaUtilities_embeddedJPEGSuitableForDerivativesInRawImageSource_enforcePixelCountLimits_timeZoneLookup___block_invoke;
    v12[3] = &unk_1E7B64BF0;
    v12[4] = &v13;
    [(PFMetadata *)v8 enumerateRawThumbnailInfoWithBlock:v12];
    v10 = *(v14 + 24);
  }

  else
  {
    v10 = 1;
    *(v14 + 24) = 1;
  }

  _Block_object_dispose(&v13, 8);
  return v10 & 1;
}

uint64_t __110__PFMediaUtilities_embeddedJPEGSuitableForDerivativesInRawImageSource_enforcePixelCountLimits_timeZoneLookup___block_invoke(uint64_t result, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a2 * a3) - 1000001 <= 0xD59F7E)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

+ (BOOL)typeRequiresRasterization:(id)rasterization
{
  rasterizationCopy = rasterization;
  v4 = rasterizationCopy;
  if (rasterizationCopy)
  {
    if ([rasterizationCopy conformsToType:*MEMORY[0x1E6982F10]] & 1) != 0 || (+[PFUniformTypeUtilities adobeIllustratorType](PFUniformTypeUtilities, "adobeIllustratorType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "conformsToType:", v5), v5, (v6))
    {
      v7 = 1;
    }

    else
    {
      v7 = [v4 conformsToType:*MEMORY[0x1E6982FB8]];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isValidImageFileForURL:(id)l
{
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:0] && (v4 = CGImageSourceCreateWithURL(lCopy, 0)) != 0)
  {
    v5 = v4;
    v6 = [PFUniformTypeUtilities typeWithIdentifier:CGImageSourceGetType(v4)];
    v7 = [v6 conformsToType:*MEMORY[0x1E6982E30]];
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)devicePerformanceMemoryClass
{
  if (devicePerformanceMemoryClass_onceToken != -1)
  {
    dispatch_once(&devicePerformanceMemoryClass_onceToken, &__block_literal_global_3750);
  }

  return devicePerformanceMemoryClass_deviceMemoryClass;
}

void __48__PFMediaUtilities_devicePerformanceMemoryClass__block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = [v1 objectForKeyedSubscript:@"DevicePerformanceMemoryClass"];
  devicePerformanceMemoryClass_deviceMemoryClass = [v0 integerValue];
}

+ (BOOL)canGenerateImageDerivativesFromType:(id)type
{
  typeCopy = type;
  if ([typeCopy conformsToType:*MEMORY[0x1E6982E30]] & 1) != 0 || (objc_msgSend(typeCopy, "conformsToType:", *MEMORY[0x1E6982EE8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy conformsToType:*MEMORY[0x1E6982F10]];
  }

  return v4;
}

+ (BOOL)insertTimeRange:(id *)range ofAsset:(id)asset atTime:(id *)time intoMutableComposition:(id)composition error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  compositionCopy = composition;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = assetCopy;
  obj = [assetCopy tracks];
  v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    v36 = *MEMORY[0x1E69875A0];
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        mediaType = [v17 mediaType];
        v19 = compositionCopy;
        v20 = [compositionCopy addMutableTrackWithMediaType:mediaType preferredTrackID:{objc_msgSend(v17, "trackID")}];

        LODWORD(mediaType) = [v20 trackID];
        if (mediaType != [v17 trackID])
        {
          if (error)
          {
            errorCopy = error;
            v29 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A278];
            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to preserve trackID"];
            v45 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *errorCopy = [v29 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v31];
          }

LABEL_16:
          v27 = 0;
          v26 = v34;
          compositionCopy = v19;
          goto LABEL_17;
        }

        mediaType2 = [v17 mediaType];
        v22 = [mediaType2 isEqualToString:v36];

        if (v22)
        {
          [v20 setAlternateGroupID:{objc_msgSend(v17, "alternateGroupID")}];
          languageCode = [v17 languageCode];
          [v20 setLanguageCode:languageCode];
        }

        v24 = *&range->var0.var3;
        v39[0] = *&range->var0.var0;
        v39[1] = v24;
        v39[2] = *&range->var1.var1;
        v37 = *MEMORY[0x1E6960CC0];
        v38 = *(MEMORY[0x1E6960CC0] + 16);
        v25 = [v20 insertTimeRange:v39 ofTrack:v17 atTime:&v37 error:error];

        if (!v25)
        {
          goto LABEL_16;
        }

        compositionCopy = v19;
      }

      v14 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v26 = v34;
  [objc_opt_class() preserveTrackAssociations:0 ofAsset:v34 forMutableComposition:compositionCopy assetToCompositionTrackID:0];
  v27 = 1;
LABEL_17:

  return v27;
}

+ (void)preserveTrackAssociations:(id)associations ofAsset:(id)asset forMutableComposition:(id)composition assetToCompositionTrackID:(id)d
{
  v59 = *MEMORY[0x1E69E9840];
  associationsCopy = associations;
  assetCopy = asset;
  compositionCopy = composition;
  dCopy = d;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __140__PFMediaUtilities_DeprecatedAVFoundationSyncAPIHelpers__preserveTrackAssociations_ofAsset_forMutableComposition_assetToCompositionTrackID___block_invoke;
  v52[3] = &unk_1E7B64C88;
  v27 = dCopy;
  v53 = v27;
  v12 = MEMORY[0x1B8C64C40](v52);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = assetCopy;
  obj = [assetCopy tracks];
  v31 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v31)
  {
    v30 = *v49;
    v34 = associationsCopy;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = [compositionCopy trackWithTrackID:{(v12)[2](v12, v14)}];
        if (v15)
        {
          v32 = i;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          availableTrackAssociationTypes = [v14 availableTrackAssociationTypes];
          v37 = [availableTrackAssociationTypes countByEnumeratingWithState:&v44 objects:v55 count:16];
          if (v37)
          {
            v35 = v14;
            v36 = *v45;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v45 != v36)
                {
                  objc_enumerationMutation(availableTrackAssociationTypes);
                }

                v17 = *(*(&v44 + 1) + 8 * j);
                if (!associationsCopy || [associationsCopy containsObject:*(*(&v44 + 1) + 8 * j)])
                {
                  v38 = j;
                  v42 = 0u;
                  v43 = 0u;
                  v40 = 0u;
                  v41 = 0u;
                  v18 = [PFMediaUtilities associatedTracksOfTypeForTrack:v14 trackAssociationType:v17];
                  v19 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *v41;
                    do
                    {
                      for (k = 0; k != v20; ++k)
                      {
                        if (*v41 != v21)
                        {
                          objc_enumerationMutation(v18);
                        }

                        v23 = *(*(&v40 + 1) + 8 * k);
                        v24 = [compositionCopy trackWithTrackID:{(v12)[2](v12, v23)}];
                        if (!v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                        {
                          trackID = [v23 trackID];
                          *buf = 67109120;
                          v57 = trackID;
                          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Could not find associated composition track for asset track %i, skipping", buf, 8u);
                        }

                        [v15 addTrackAssociationToTrack:v24 type:v17];
                      }

                      v20 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
                    }

                    while (v20);
                  }

                  associationsCopy = v34;
                  v14 = v35;
                  j = v38;
                }
              }

              v37 = [availableTrackAssociationTypes countByEnumeratingWithState:&v44 objects:v55 count:16];
            }

            while (v37);
          }

          i = v32;
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          trackID2 = [v14 trackID];
          *buf = 67109120;
          v57 = trackID2;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Could not find composition track for asset track %i, skipping", buf, 8u);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v31);
  }
}

uint64_t __140__PFMediaUtilities_DeprecatedAVFoundationSyncAPIHelpers__preserveTrackAssociations_ofAsset_forMutableComposition_assetToCompositionTrackID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 trackID];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "trackID")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v4 = [v7 intValue];
    }
  }

  return v4;
}

@end