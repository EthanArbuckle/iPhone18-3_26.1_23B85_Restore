@interface PFMediaUtilities
+ (BOOL)audioChannelLayoutIsCinematicVideoRender:(const AudioChannelLayout *)a3;
+ (BOOL)canGenerateImageDerivativesFromType:(id)a3;
+ (BOOL)canLoadAssetAsRawForInteractiveEditingWithImageProperties:(id)a3;
+ (BOOL)embeddedJPEGSuitableForDerivativesInImageOfType:(id)a3 url:(id)a4 imageProperties:(id)a5;
+ (BOOL)embeddedJPEGSuitableForDerivativesInRawImageSource:(CGImageSource *)a3 enforcePixelCountLimits:(BOOL)a4 timeZoneLookup:(id)a5;
+ (BOOL)enumerateImageSourceIndexesOfFileAtURL:(id)a3 error:(id *)a4 block:(id)a5;
+ (BOOL)insertTimeRange:(id *)a3 ofAsset:(id)a4 atTime:(id *)a5 intoMutableComposition:(id)a6 error:(id *)a7;
+ (BOOL)isValidAVFileForURL:(id)a3;
+ (BOOL)isValidImageFileForURL:(id)a3;
+ (BOOL)typeRequiresRasterization:(id)a3;
+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (CGImage)createImageRefFromAuxiliaryImagePixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (CGSize)maximumImageSizeFromProperties:(id)a3;
+ (__CVBuffer)_createPixelBufferFromAuxiliaryImageInfo:(id)a3;
+ (__CVBuffer)createPixelBufferFromAuxiliaryImageInfo:(id)a3;
+ (double)gainMapHeadroomForHDRGain:(double)a3 gainMapValue:(double)a4;
+ (id)_cIImageFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)_cIImageFromPixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)_debugDescriptionForAssetURL:(id)a3;
+ (id)_debugDescriptionForAssetVariants:(id)a3;
+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4;
+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)a3;
+ (id)auxiliaryImagesToPreserveForDerivativesFromImageSource:(CGImageSource *)a3 imageIndex:(unint64_t)a4;
+ (id)cIImageFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)cIImageFromPixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5;
+ (id)channelLayoutNameForAudioTrackFormatDescription:(opaqueCMFormatDescription *)a3;
+ (id)debugDescriptionForAssetOrPlayerItemTracks:(id)a3 asset:(id)a4 duration:(id *)a5;
+ (id)debugDescriptionForPlayerItem:(id)a3;
+ (id)dictionaryRepresentationForAuxiliaryImagePixelBuffer:(__CVBuffer *)a3 metadata:(CGImageMetadata *)a4 colorSpace:(CGColorSpace *)a5 compatibilityMetadata:(CGImageMetadata *)a6;
+ (id)formatDebugDescriptionForAudioTrack:(id)a3;
+ (id)formatDebugDescriptionForMetadataTrack:(id)a3;
+ (id)formatDebugDescriptionForVideoTrack:(id)a3;
+ (id)formattedCameraModelFromCameraModel:(id)a3 cameraMake:(id)a4;
+ (id)hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:(id)a3 metadata:(id)a4 error:(id *)a5;
+ (id)hevcProfileInformationForVideoTrackFormatDescription:(opaqueCMFormatDescription *)a3;
+ (id)imagePropertiesFromImageSource:(CGImageSource *)a3 atIndex:(unint64_t)a4;
+ (id)mainVideoTrackForAsset:(id)a3;
+ (id)outOfBandHintsForURL:(id)a3;
+ (id)outOfBandHintsForVideoAsset:(id)a3;
+ (id)segmentIdentifierDescriptionForMetadataTrack:(id)a3;
+ (id)stringFromFourCharCode:(unsigned int)a3;
+ (id)transformAuxiliaryImages:(id)a3 scaleFactor:(double)a4 applyingOrientation:(unsigned int)a5;
+ (id)urlByAttachingOutOfBandHintsBase64String:(id)a3 toVideoURL:(id)a4;
+ (int64_t)devicePerformanceMemoryClass;
+ (int64_t)rawSourceMaximumPixelCountForBackgroundProcessing;
+ (int64_t)rawSourceMaximumPixelCountForInteractiveEditing;
+ (void)appendMetadataItemsFromAsset:(id)a3 toDebugDescription:(id)a4;
+ (void)enumerateVideoTrackFormatDescriptionsInAsset:(id)a3 withBlock:(id)a4;
+ (void)preserveTrackAssociations:(id)a3 ofAsset:(id)a4 forMutableComposition:(id)a5 assetToCompositionTrackID:(id)a6;
@end

@implementation PFMediaUtilities

+ (double)gainMapHeadroomForHDRGain:(double)a3 gainMapValue:(double)a4
{
  if (a3 >= 1.0)
  {
    if (a4 <= 0.01)
    {
      return exp2(a4 * -70.0 + 3.0);
    }

    v4 = a4 * -0.303030303 + 2.0;
    v5 = 0.303030303;
  }

  else
  {
    if (a4 <= 0.01)
    {
      return exp2(a4 * -20.0 + 1.8);
    }

    v4 = a4 * -0.101010101 + 1.5;
    v5 = 0.101010101;
  }

  return exp2(v4 + v5);
}

+ (id)_cIImageFromPixelBuffer:(__CVBuffer *)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
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

+ (__CVBuffer)_createPixelBufferFromAuxiliaryImageInfo:(id)a3
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
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, v11, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback_3598, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)_cIImageFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  v6 = *&a4;
  v8 = [a1 _createPixelBufferFromAuxiliaryImageInfo:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 _cIImageFromPixelBuffer:v8 applyingOrientation:v6 scaleFactor:a5];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGImage)createImageRefFromAuxiliaryImageInfo:(id)a3 applyingOrientation:(unsigned int)a4 scaleFactor:(double)a5
{
  v5 = [a1 _cIImageFromAuxiliaryImageInfo:a3 applyingOrientation:*&a4 scaleFactor:a5];
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
      *a4 = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:2 userInfo:v17];
    }
  }

LABEL_11:

  return v12;
}

+ (id)stringFromFourCharCode:(unsigned int)a3
{
  v5[0] = HIBYTE(a3);
  v5[1] = BYTE2(a3);
  v5[2] = BYTE1(a3);
  v5[3] = a3;
  v5[4] = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v5 encoding:30];

  return v3;
}

+ (id)urlByAttachingOutOfBandHintsBase64String:(id)a3 toVideoURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v6 resolvingAgainstBaseURL:0];
    [v7 setFragment:v5];
    v8 = [v7 URL];
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

+ (id)outOfBandHintsForURL:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v4 = [v3 fragment];

  if (![v4 length])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
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
      v14 = v4;
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
      v14 = v4;
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

+ (id)outOfBandHintsForVideoAsset:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 URL];
    if (v6 || ([v5 resolvedURL], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [a1 outOfBandHintsForURL:v6];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else if ([v7 isFileURL])
      {
        v11 = [[PFMetadata alloc] initWithAVAsset:v5 options:12 timeZoneLookup:0];
        v10 = [(PFMetadata *)v11 outOfBandHints];
      }

      else
      {
        v10 = 0;
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

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AVAsset is not URL-based: %{public}@", &v13, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_debugDescriptionForAssetVariants:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v33 = [MEMORY[0x1E696AD60] string];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v4;
    obj = v4;
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
          v7 = [MEMORY[0x1E695DF70] array];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v8 = [v6 videoAttributes];
          v9 = [v8 codecTypes];

          v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                  objc_enumerationMutation(v9);
                }

                v14 = [a1 stringFromFourCharCode:{objc_msgSend(*(*(&v35 + 1) + 8 * j), "unsignedIntValue")}];
                [v7 addObject:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v11);
          }

          v15 = [v7 componentsJoinedByString:@"|"];
          v16 = [v6 videoAttributes];
          [v16 presentationSize];
          v18 = v17;
          v20 = v19;

          [v6 averageBitRate];
          v21 = v18;
          v22 = MEMORY[0x1E696AD98];
          v24 = v23 / 1000000.0;
          v25 = [v6 videoAttributes];
          [v25 nominalFrameRate];
          v26 = [v22 numberWithDouble:?];
          v27 = [v6 videoAttributes];
          v28 = [v27 videoRange];
          [(__CFString *)v33 appendFormat:@"- %.02fmbit/s %@ %dx%d %@fps %@\n", *&v24, v15, v21, v20, v26, v28];
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    v4 = v30;
  }

  else
  {
    v33 = @"(none)\n";
  }

  return v33;
}

+ (id)_debugDescriptionForAssetURL:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v6 = [v5 scheme];
    [(__CFString *)v4 appendFormat:@"Scheme: %@\n", v6];

    v7 = [v5 host];
    [(__CFString *)v4 appendFormat:@"Host: %@\n", v7];

    v8 = [v5 path];
    [(__CFString *)v4 appendFormat:@"Path: %@\n", v8];

    [(__CFString *)v4 appendFormat:@"Query:\n"];
    v9 = [v5 queryItems];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_245];

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
          v17 = [v16 name];
          v18 = [v16 value];
          [(__CFString *)v4 appendFormat:@"- %@=%@\n", v17, v18, v28];
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v19 = [v5 fragment];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [PFMediaUtilities outOfBandHintsForURL:v3];
      v23 = v22;
      if (v22)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = [v22 description];
        v26 = [v24 stringWithFormat:@"Out of band hints: %@\n", v25];

        v21 = v26;
      }

      [(__CFString *)v4 appendFormat:@"Fragment: %@\n", v21];
    }

    [(__CFString *)v4 appendFormat:@"\n%@\n", v3];
  }

  else
  {
    v4 = @"(none)";
  }

  return v4;
}

uint64_t __49__PFMediaUtilities__debugDescriptionForAssetURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

+ (void)appendMetadataItemsFromAsset:(id)a3 toDebugDescription:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v6 appendFormat:@"\n*** Metadata ***\n"];
  v7 = [v5 metadata];
  if ([v7 count])
  {
    v30 = v6;
    v28 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    v27 = v7;
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
          v15 = [v14 identifier];
          if (v11 <= [v15 length])
          {
            v16 = [v14 identifier];
            v11 = [v16 length];
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
          v23 = [v22 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v23 base64EncodedStringWithOptions:0];

            v23 = v24;
          }

          v25 = [v22 identifier];
          v26 = [v25 stringByAppendingString:@":"];
          [v30 appendFormat:@"%-*s %@\n", v17, objc_msgSend(v26, "UTF8String"), v23];
        }

        v19 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    v7 = v27;
    v5 = v28;
    v6 = v30;
  }

  else
  {
    [v6 appendFormat:@"(none)\n"];
  }
}

+ (id)debugDescriptionForAssetOrPlayerItemTracks:(id)a3 asset:(id)a4 duration:(id *)a5
{
  v8 = a4;
  v9 = MEMORY[0x1E696AD60];
  v10 = a3;
  v11 = [v9 string];
  time = *a5;
  [v11 appendFormat:@"Duration: %.02fs\n\n", CMTimeGetSeconds(&time)];
  [v11 appendString:@"*** Tracks ***\n"];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __78__PFMediaUtilities_debugDescriptionForAssetOrPlayerItemTracks_asset_duration___block_invoke;
  v26 = &unk_1E7B64C40;
  v12 = v11;
  v27 = v12;
  [v10 enumerateObjectsUsingBlock:&v23];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v8;
    v14 = [v13 variants];
    v15 = [v14 count];
    [v12 appendFormat:@"\n*** Variants (%tu) ***\n", v15, v23, v24, v25, v26];
    v16 = [a1 _debugDescriptionForAssetVariants:v14];
    [v12 appendString:v16];

    [v12 appendFormat:@"\n*** URL ***\n"];
    v17 = [v13 URL];

    v18 = [a1 _debugDescriptionForAssetURL:v17];
    [v12 appendString:v18];
  }

  else
  {
    v19 = objc_opt_class();
    v14 = NSStringFromClass(v19);
    [v12 appendFormat:@"\n(no URL/variants info because asset is of type '%@')\n", v14, v23, v24, v25, v26];
  }

  [a1 appendMetadataItemsFromAsset:v8 toDebugDescription:v12];
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

+ (id)debugDescriptionForPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [v4 tracks];
  v6 = [v5 valueForKey:@"assetTrack"];

  v7 = [v4 asset];
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [a1 debugDescriptionForAssetOrPlayerItemTracks:v6 asset:v7 duration:v10];

  return v8;
}

+ (void)enumerateVideoTrackFormatDescriptionsInAsset:(id)a3 withBlock:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v33 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 tracks];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v10 = *MEMORY[0x1E6987608];
    v23 = *v30;
    v24 = v6;
    v22 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 mediaType];
        v14 = [v13 isEqual:v10];

        if (v14)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [v12 formatDescriptions];
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v25 + 1) + 8 * j);
                MediaSubType = CMFormatDescriptionGetMediaSubType(v20);
                v5[2](v5, v12, v20, MediaSubType, &v33);
                if (v33)
                {

                  v6 = v24;
                  goto LABEL_20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v9 = v23;
          v6 = v24;
          v10 = v22;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

LABEL_20:
}

+ (id)hevcProfileInformationForVideoTrackFormatDescription:(opaqueCMFormatDescription *)a3
{
  if (CMFormatDescriptionGetMediaSubType(a3) == 1752589105)
  {
    v4 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69600A0]);
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

+ (id)segmentIdentifierDescriptionForMetadataTrack:(id)a3
{
  v3 = a3;
  v4 = [v3 asset];
  v19 = 0;
  v5 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:v4 error:&v19];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v3 outputSettings:0];
    v7 = [objc_alloc(MEMORY[0x1E6987E98]) initWithAssetReaderTrackOutput:v6];
    if ([v5 canAddOutput:v6] && (objc_msgSend(v5, "addOutput:", v6), objc_msgSend(v5, "startReading")))
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = [v7 nextTimedMetadataGroup];
      if (v9)
      {
        v10 = v9;
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
          [v8 addObject:v13];

          v14 = [v7 nextTimedMetadataGroup];

          v10 = v14;
        }

        while (v14);
      }

      [v5 cancelReading];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)formatDebugDescriptionForMetadataTrack:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 formatDescriptions];
    v6 = [v5 firstObject];

    v35 = [MEMORY[0x1E695DF70] array];
    v7 = CMFormatDescriptionGetExtensions(v6);
    v8 = v7;
    v9 = 0x1E696A000uLL;
    if (v7)
    {
      v26 = v6;
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
            [v35 addObject:v19];

            if ([v17 isEqualToString:v30])
            {
              v20 = [a1 segmentIdentifierDescriptionForMetadataTrack:v28];
              if (v20)
              {
                [v35 addObjectsFromArray:v20];
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
      v6 = v26;
    }

    v21 = *(v9 + 3776);
    v22 = [PFMediaUtilities stringFromFourCharCode:CMFormatDescriptionGetMediaSubType(v6)];
    v23 = [v35 componentsJoinedByString:&stru_1F2A8EB68];
    v24 = [v21 stringWithFormat:@"%@ %@", v22, v23];
  }

  else
  {
    v24 = @"(nil metadata track)";
  }

  return v24;
}

+ (BOOL)audioChannelLayoutIsCinematicVideoRender:(const AudioChannelLayout *)a3
{
  if (a3->mChannelLayoutTag || a3->mNumberChannelDescriptions != 5)
  {
    return 0;
  }

  v3 = 0;
  mChannelDescriptions = a3->mChannelDescriptions;
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

+ (id)channelLayoutNameForAudioTrackFormatDescription:(opaqueCMFormatDescription *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  sizeOut = 0;
  ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a3, &sizeOut);
  if (!ChannelLayout)
  {
    v12 = @"(unable to get channel layout)";
    goto LABEL_15;
  }

  v6 = ChannelLayout;
  v18 = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(a3, &v18);
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
    if ([a1 audioChannelLayoutIsCinematicVideoRender:v6])
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

+ (id)formatDebugDescriptionForAudioTrack:(id)a3
{
  if (a3)
  {
    v4 = [a3 formatDescriptions];
    v5 = [v4 firstObject];

    v6 = [a1 channelLayoutNameForAudioTrackFormatDescription:v5];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [PFMediaUtilities stringFromFourCharCode:CMFormatDescriptionGetMediaSubType(v5)];
    v9 = [v7 stringWithFormat:@"%@ channel layout: %@", v8, v6];
  }

  else
  {
    v9 = @"(nil audio track)";
  }

  return v9;
}

+ (id)formatDebugDescriptionForVideoTrack:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v17 = @"(nil video track)";
    goto LABEL_25;
  }

  v6 = [v4 formatDescriptions];
  v7 = [v6 firstObject];

  v8 = CMFormatDescriptionGetExtension(v7, *MEMORY[0x1E6965F30]);
  v41 = CMFormatDescriptionGetExtension(v7, *MEMORY[0x1E6965D88]);
  v9 = CMFormatDescriptionGetExtensions(v7);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"BitsPerComponent"];
    v12 = [v11 integerValue];

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
    v12 = 0;
  }

  v15 = @"no";
LABEL_11:
  MediaSubType = CMFormatDescriptionGetMediaSubType(v7);
  v40 = v10;
  if (MediaSubType == 1752589105)
  {
    v19 = [a1 hevcProfileInformationForVideoTrackFormatDescription:v7];
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
  if (v12)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tdbit ", v12];
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

+ (id)mainVideoTrackForAsset:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:a3, 0];
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

+ (BOOL)isValidAVFileForURL:(id)a3
{
  v3 = a3;
  if ([v3 checkResourceIsReachableAndReturnError:0])
  {
    v4 = [MEMORY[0x1E6988168] URLAssetWithURL:v3 options:0];
    v5 = [v4 isReadable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)formattedCameraModelFromCameraModel:(id)a3 cameraMake:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [v6 componentsSeparatedByString:@" "];
    if ([v7 count] == 1)
    {
      v8 = [v6 componentsSeparatedByString:@"/"];

      v7 = v8;
    }

    if ([v7 count] == 1)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v11 = [v9 stringByTrimmingCharactersInSet:v10];

      if ([v5 rangeOfString:v11] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v5];

        v5 = v12;
      }
    }

    else
    {
      v11 = v6;
    }

    v6 = v11;
  }

  return v5;
}

+ (int64_t)rawSourceMaximumPixelCountForInteractiveEditing
{
  if ([a1 devicePerformanceMemoryClass] >= 6)
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
  if ([a1 devicePerformanceMemoryClass] < 2)
  {
    return 25000000;
  }

  if ([a1 devicePerformanceMemoryClass] >= 6)
  {
    return 60217344;
  }

  return 52664320;
}

+ (BOOL)canLoadAssetAsRawForInteractiveEditingWithImageProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696E090]];

  if (v5)
  {
    [a1 maximumImageSizeFromProperties:v4];
    v8 = [a1 rawSourceMaximumPixelCountForInteractiveEditing] >= (v6 * v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGSize)maximumImageSizeFromProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"RawPixelWidth"];
  v5 = [v3 objectForKey:@"RawPixelHeight"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;
  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  [v10 doubleValue];
  v12 = v11;
  v13 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];
  [v16 doubleValue];
  v18 = v17;
  v19 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];

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
  CVPixelBufferCreateWithBytes(v10, v7, v8, v5, v11, v6, _AuxiliaryImageCVPixelBufferReleaseBytesCallback_3598, v12, 0, &v15);
  v13 = v15;

  return v13;
}

+ (id)dictionaryRepresentationForAuxiliaryImagePixelBuffer:(__CVBuffer *)a3 metadata:(CGImageMetadata *)a4 colorSpace:(CGColorSpace *)a5 compatibilityMetadata:(CGImageMetadata *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v14 = 0;
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

            [v16 setObject:a3 forKeyedSubscript:*v17];
          }

          else
          {
            v28 = a4;
            v14 = [MEMORY[0x1E695DF88] dataWithLength:v15 * Height];
            if (!v14)
            {
LABEL_18:

              goto LABEL_19;
            }

            v27 = a5;
            v18 = CVPixelBufferLockBaseAddress(a3, 1uLL);
            if (v18)
            {
              v19 = v18;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v32 = v19;
                _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed (%d)", buf, 8u);
              }

              v14 = 0;
              goto LABEL_18;
            }

            BaseAddress = CVPixelBufferGetBaseAddress(a3);
            memcpy([v14 mutableBytes], BaseAddress, v15 * Height);
            CVPixelBufferUnlockBaseAddress(a3, 1uLL);
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
            [v16 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696D218]];

            a5 = v27;
            a4 = v28;
          }

          [v16 setObject:a4 forKeyedSubscript:*MEMORY[0x1E696D228]];
          [v16 setObject:a5 forKeyedSubscript:*MEMORY[0x1E696D210]];
          if (a6)
          {
            [v16 setObject:a6 forKeyedSubscript:*MEMORY[0x1E696D230]];
          }

          v14 = v16;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:

  return v14;
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

+ (id)transformAuxiliaryImages:(id)a3 scaleFactor:(double)a4 applyingOrientation:(unsigned int)a5
{
  v5 = *&a5;
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v31 = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v7;
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
        v12 = [a1 cIImageFromAuxiliaryImageInfo:v11 applyingOrientation:v5 scaleFactor:a4];
        v13 = v12;
        if (v12)
        {
          [v12 extent];
          v15 = v14;
          v17 = v16;
          v18 = [v11 objectForKeyedSubscript:v38];
          v19 = [v18 objectForKeyedSubscript:v37];
          v20 = [v19 unsignedIntValue];

          v55 = v36;
          v56 = MEMORY[0x1E695E0F8];
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          pixelBufferOut = 0;
          v22 = CVPixelBufferCreate(0, v15, v17, v20, v21, &pixelBufferOut);
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
              v52 = v20;
              v53 = 1024;
              v54 = v23;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate CVPixelBuffer of size: %dx%d, format: %d, error: %d", buf, 0x1Au);
            }
          }

          else
          {
            v24 = [MEMORY[0x1E695F620] context];
            [v24 render:v13 toCVPixelBuffer:pixelBufferOut];

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

            v28 = [a1 dictionaryRepresentationForAuxiliaryImagePixelBuffer:pixelBufferOut metadata:v25 colorSpace:v26 compatibilityMetadata:v27];
            if (v28)
            {
              [v31 setObject:v28 forKeyedSubscript:v10];
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

  return v31;
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
    v20[2] = __92__PFMediaUtilities_auxiliaryImageRecordsToPreserveForDerivativesFromImageSource_imageIndex___block_invoke;
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

+ (id)auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:(CGImageSource *)a3
{
  if (a3)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a3);
  }

  else
  {
    PrimaryImageIndex = 0;
  }

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

+ (id)auxiliaryImageIdentifiersToPreserveForDerivatives
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E696D270];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)imagePropertiesFromImageSource:(CGImageSource *)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    if (imagePropertiesFromImageSource_atIndex__onceToken != -1)
    {
      dispatch_once(&imagePropertiesFromImageSource_atIndex__onceToken, &__block_literal_global_82_3737);
    }

    v6 = CGImageSourceCopyPropertiesAtIndex(a3, a4, imagePropertiesFromImageSource_atIndex__options);
    if (!v6)
    {
      v6 = CGImageSourceCopyPropertiesAtIndex(a3, a4, imagePropertiesFromImageSource_atIndex__optionsFallback);
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

+ (id)hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && !v9)
  {
    v10 = [[PFMetadata alloc] initWithImageURL:v8 contentType:0 timeZoneLookup:0];
  }

  v11 = [(PFMetadata *)v10 contentType];
  if (![v11 conformsToType:*MEMORY[0x1E6982D58]])
  {

    v13 = MEMORY[0x1E695E110];
    goto LABEL_18;
  }

  v12 = [(PFMetadata *)v10 isProRAW];

  v13 = MEMORY[0x1E695E110];
  if (!v12)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    if (a5)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to check for presence of embedded preview: invalid URL: %@", 0, *MEMORY[0x1E696A278]];
      v27 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22 = v19;
      v23 = 2;
LABEL_16:
      *a5 = [v22 errorWithDomain:@"com.apple.PhotosFormats" code:v23 userInfo:v21];
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v14 = CGImageSourceCreateWithURL(v8, 0);
  if (!v14)
  {
    if (a5)
    {
      v24 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A278];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to check for presence of embedded preview: unable to create image source from %@", v8];
      v29[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v22 = v24;
      v23 = 1;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = v14;
  v16 = objc_autoreleasePoolPush();
  v17 = [a1 embeddedJPEGSuitableForDerivativesInRawImageSource:v15 enforcePixelCountLimits:0 timeZoneLookup:0];
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

+ (BOOL)embeddedJPEGSuitableForDerivativesInImageOfType:(id)a3 url:(id)a4 imageProperties:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PFMetadata alloc] initWithImageProperties:v8 contentType:v10 timeZoneLookup:0];

  v12 = [a1 hasEmbeddedJPEGSuitableForDerivativesInImageAtURL:v9 metadata:v11 error:0];

  LOBYTE(v9) = [v12 BOOLValue];
  return v9;
}

+ (BOOL)embeddedJPEGSuitableForDerivativesInRawImageSource:(CGImageSource *)a3 enforcePixelCountLimits:(BOOL)a4 timeZoneLookup:(id)a5
{
  v5 = a4;
  v7 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = [[PFMetadata alloc] initWithImageSource:a3 contentType:0 options:13 timeZoneLookup:v7 cacheImageSource:1];
  v9 = v8;
  if (v5)
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

+ (BOOL)typeRequiresRasterization:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 conformsToType:*MEMORY[0x1E6982F10]] & 1) != 0 || (+[PFUniformTypeUtilities adobeIllustratorType](PFUniformTypeUtilities, "adobeIllustratorType"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "conformsToType:", v5), v5, (v6))
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

+ (BOOL)isValidImageFileForURL:(id)a3
{
  v3 = a3;
  if ([v3 checkResourceIsReachableAndReturnError:0] && (v4 = CGImageSourceCreateWithURL(v3, 0)) != 0)
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

+ (BOOL)canGenerateImageDerivativesFromType:(id)a3
{
  v3 = a3;
  if ([v3 conformsToType:*MEMORY[0x1E6982E30]] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982EE8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 conformsToType:*MEMORY[0x1E6982F10]];
  }

  return v4;
}

+ (BOOL)insertTimeRange:(id *)a3 ofAsset:(id)a4 atTime:(id *)a5 intoMutableComposition:(id)a6 error:(id *)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = v11;
  obj = [v11 tracks];
  v13 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    v36 = *MEMORY[0x1E69875A0];
    v33 = a1;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = [v17 mediaType];
        v19 = v12;
        v20 = [v12 addMutableTrackWithMediaType:v18 preferredTrackID:{objc_msgSend(v17, "trackID")}];

        LODWORD(v18) = [v20 trackID];
        if (v18 != [v17 trackID])
        {
          if (a7)
          {
            v28 = a7;
            v29 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A278];
            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to preserve trackID"];
            v45 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *v28 = [v29 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v31];
          }

LABEL_16:
          v27 = 0;
          v26 = v34;
          v12 = v19;
          goto LABEL_17;
        }

        v21 = [v17 mediaType];
        v22 = [v21 isEqualToString:v36];

        if (v22)
        {
          [v20 setAlternateGroupID:{objc_msgSend(v17, "alternateGroupID")}];
          v23 = [v17 languageCode];
          [v20 setLanguageCode:v23];
        }

        v24 = *&a3->var0.var3;
        v39[0] = *&a3->var0.var0;
        v39[1] = v24;
        v39[2] = *&a3->var1.var1;
        v37 = *MEMORY[0x1E6960CC0];
        v38 = *(MEMORY[0x1E6960CC0] + 16);
        v25 = [v20 insertTimeRange:v39 ofTrack:v17 atTime:&v37 error:a7];

        if (!v25)
        {
          goto LABEL_16;
        }

        v12 = v19;
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
  [objc_opt_class() preserveTrackAssociations:0 ofAsset:v34 forMutableComposition:v12 assetToCompositionTrackID:0];
  v27 = 1;
LABEL_17:

  return v27;
}

+ (void)preserveTrackAssociations:(id)a3 ofAsset:(id)a4 forMutableComposition:(id)a5 assetToCompositionTrackID:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v39 = a5;
  v11 = a6;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __140__PFMediaUtilities_DeprecatedAVFoundationSyncAPIHelpers__preserveTrackAssociations_ofAsset_forMutableComposition_assetToCompositionTrackID___block_invoke;
  v52[3] = &unk_1E7B64C88;
  v27 = v11;
  v53 = v27;
  v12 = MEMORY[0x1B8C64C40](v52);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = v10;
  obj = [v10 tracks];
  v31 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v31)
  {
    v30 = *v49;
    v34 = v9;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = [v39 trackWithTrackID:{(v12)[2](v12, v14)}];
        if (v15)
        {
          v32 = i;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v33 = [v14 availableTrackAssociationTypes];
          v37 = [v33 countByEnumeratingWithState:&v44 objects:v55 count:16];
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
                  objc_enumerationMutation(v33);
                }

                v17 = *(*(&v44 + 1) + 8 * j);
                if (!v9 || [v9 containsObject:*(*(&v44 + 1) + 8 * j)])
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
                        v24 = [v39 trackWithTrackID:{(v12)[2](v12, v23)}];
                        if (!v24 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                        {
                          v25 = [v23 trackID];
                          *buf = 67109120;
                          v57 = v25;
                          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Could not find associated composition track for asset track %i, skipping", buf, 8u);
                        }

                        [v15 addTrackAssociationToTrack:v24 type:v17];
                      }

                      v20 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
                    }

                    while (v20);
                  }

                  v9 = v34;
                  v14 = v35;
                  j = v38;
                }
              }

              v37 = [v33 countByEnumeratingWithState:&v44 objects:v55 count:16];
            }

            while (v37);
          }

          i = v32;
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v26 = [v14 trackID];
          *buf = 67109120;
          v57 = v26;
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