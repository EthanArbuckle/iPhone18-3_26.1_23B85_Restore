@interface PFMetadataImage
+ (id)defaultOptionsForCGImageSource;
+ (id)stringByRemovingImageIoDotSuffixFromString:(id)string;
- (BOOL)_anyImageHasProcessingFlag:(unint64_t)flag;
- (BOOL)_configureWithImageData:(id)data cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData;
- (BOOL)_configureWithImageProperties:(id)properties;
- (BOOL)_configureWithImageSource:(CGImageSource *)source cacheImageSource:(BOOL)imageSource;
- (BOOL)_configureWithImageURL:(id)l cacheImageSource:(BOOL)source cacheImageData:(BOOL)data;
- (BOOL)_hasFFCDimensions;
- (BOOL)_hasScreenshotDimensions;
- (BOOL)_isSpatialStereoGroup:(id)group inImageSource:(CGImageSource *)source;
- (BOOL)configureWithMetadataPlist:(id)plist;
- (BOOL)containsCustomStylesMetadataBlob;
- (BOOL)containsSpatialCameraHEIFMetadata;
- (BOOL)flashFired;
- (BOOL)hasAlphaChannel;
- (BOOL)hasDepthDataAndIsNotRenderedSDOF;
- (BOOL)hasHDRGainMap;
- (BOOL)hasISOGainMap;
- (BOOL)hasSmartStyle;
- (BOOL)isDeferredPhotoProxyExpectingDepth;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFrontFacingCamera;
- (BOOL)isHDR;
- (BOOL)isHDR_ExtendedRange;
- (BOOL)isHDR_TS22028_5;
- (BOOL)isPhotoBooth;
- (BOOL)isPortrait;
- (BOOL)isScreenshot;
- (BOOL)isSpatialMedia;
- (BOOL)sourceIsImageSourceProxy;
- (CGColorSpace)cgColorSpace;
- (NSNumber)exposureTime;
- (NSNumber)fNumber;
- (NSNumber)iso;
- (NSNumber)whiteBalance;
- (NSString)cameraSerialNumber;
- (PFMetadataImage)initWithEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadataImage)initWithImageData:(id)data contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData;
- (PFMetadataImage)initWithImageProperties:(id)properties contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup;
- (PFMetadataImage)initWithImageSource:(CGImageSource *)source contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)imageSource;
- (PFMetadataImage)initWithImageSourceProxyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadataImage)initWithImageSourceProxyOrEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadataImage)initWithImageURL:(id)l contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)data;
- (id)GIFDelayTime;
- (id)HEICSDelayTime;
- (id)_formatValue:(id)value withPrecision:(unint64_t)precision;
- (id)_imageSourceProperties;
- (id)_makeGPSProperties;
- (id)altitudeRef;
- (id)artworkContentDescription;
- (id)brightness;
- (id)burstUuid;
- (id)cameraMake;
- (id)cameraModel;
- (id)captionAbstract;
- (id)ciffDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)credit;
- (id)deferredPhotoProcessingIdentifier;
- (id)digitalZoomRatio;
- (id)exifAuxDictionary;
- (id)exifDictionary;
- (id)exposureBias;
- (id)firmware;
- (id)flashCompensation;
- (id)flashValue;
- (id)focalLength;
- (id)focalLengthIn35mm;
- (id)focusDistance;
- (id)focusMode;
- (id)focusPoints;
- (id)generativeAIImageType;
- (id)gifDictionary;
- (id)gpsDictionary;
- (id)gpsHPositioningError;
- (id)groupingUuid;
- (id)hdrGain;
- (id)hdrGainMap;
- (id)hdrGainMapPercentageValue;
- (id)imageCaptureRequestIdentifier;
- (id)imageDirection;
- (id)imageDirectionRef;
- (id)imageSourceProxyData;
- (id)iptcDictionary;
- (id)keywords;
- (id)lensMake;
- (id)lensMaximumMM;
- (id)lensMinimumMM;
- (id)lensModel;
- (id)lightSource;
- (id)livePhotoPairingIdentifier;
- (id)makerAppleDictionary;
- (id)makerCanonDictionary;
- (id)makerNikonDictionary;
- (id)metadataForImagePropertiesAtIndex:(unint64_t)index;
- (id)meteringMode;
- (id)nrfSrlStatus;
- (id)originatingAssetIdentifier;
- (id)ownerName;
- (id)photoProcessingIdentifier;
- (id)playbackVariation;
- (id)plistForEncoding;
- (id)portraitInLandscapeCamera;
- (id)profileName;
- (id)rawDictionary;
- (id)renderOriginatingAssetIdentifier;
- (id)semanticStylePreset;
- (id)semanticStyleRenderingVersion;
- (id)semanticStyleToneBias;
- (id)semanticStyleWarmthBias;
- (id)smartStyleColorBias;
- (id)smartStyleExpectingReversibility;
- (id)smartStyleIntensity;
- (id)smartStyleIsReversible;
- (id)smartStyleRenderingVersion;
- (id)smartStyleToneBias;
- (id)software;
- (id)spatialOverCaptureIdentifier;
- (id)speedRef;
- (id)syndicationProperties;
- (id)tiffDictionary;
- (id)title;
- (id)userComment;
- (id)whiteBalanceIndex;
- (int64_t)cameraUsedForCapture;
- (int64_t)customRendered;
- (signed)smartStyleCast;
- (unint64_t)photoCaptureFlags;
- (unint64_t)photoProcessingFlags;
- (unint64_t)photosAppFeatureFlags;
- (void)_computeCameraSerialNumber;
- (void)_computeExposureTime;
- (void)_computeFNumberValue;
- (void)_computeISOSetting;
- (void)_computeWhiteBalanceValue;
- (void)dealloc;
- (void)enumerateRawThumbnailInfoWithBlock:(id)block;
- (void)fixupGPSWithDate:(id)date time:(id)time;
- (void)setCgImageMetadata:(CGImageMetadata *)metadata;
- (void)setImageSource:(CGImageSource *)source;
- (void)setKeysAndValues:(id)values inDictionary:(id)dictionary;
@end

@implementation PFMetadataImage

- (id)rawDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:@"{raw}" fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)iptcDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DD90] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)tiffDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DF28] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)gpsDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DBF0] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)gifDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DB70] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)ciffDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696D438] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)makerCanonDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DE38] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)makerNikonDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DE50] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)makerAppleDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DE30] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)exifAuxDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696D8B0] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)exifDictionary
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696D9B0] fromProperties:self->_cgImageProperties];

  return v4;
}

- (void)setKeysAndValues:(id)values inDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  dictionaryCopy = dictionary;
  selfCopy = self;
  v8 = [(NSDictionary *)self->_cgImageProperties mutableCopy];
  v9 = v8;
  if (dictionaryCopy)
  {
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:dictionaryCopy];
    v11 = [v10 mutableCopy];

    [(NSDictionary *)v9 setObject:v11 forKeyedSubscript:dictionaryCopy];
  }

  else
  {
    v11 = v8;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = valuesCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        [(NSDictionary *)v11 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  cgImageProperties = selfCopy->_cgImageProperties;
  selfCopy->_cgImageProperties = v9;
}

- (void)fixupGPSWithDate:(id)date time:(id)time
{
  v12[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  timeCopy = time;
  gpsDateTime = [(PFMetadata *)self gpsDateTime];

  if (!gpsDateTime)
  {
    v9 = *MEMORY[0x1E696DC70];
    v11[0] = *MEMORY[0x1E696DBA8];
    v11[1] = v9;
    v12[0] = dateCopy;
    v12[1] = timeCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(PFMetadataImage *)self setKeysAndValues:v10 inDictionary:*MEMORY[0x1E696DBF0]];

    [(PFMetadata *)self computeGPSValues];
  }
}

- (BOOL)isEqual:(id)equal
{
  v24 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = PFMetadataImage;
  if ([(PFMetadata *)&v19 isEqual:equalCopy])
  {
    v5 = equalCopy;
    cgImageProperties = self->_cgImageProperties;
    v7 = v5[25];
    if (v7)
    {
      v8 = cgImageProperties == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = (cgImageProperties != 0) ^ (v7 == 0);
    }

    else if ([(NSDictionary *)cgImageProperties isEqualToDictionary:?])
    {
      v9 = 1;
    }

    else
    {
      v11 = [PFMetadata differencesBetweenDictionary:self->_cgImageProperties andDictionary:v5[25]];
      if ([v11 count])
      {
        v12 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_debug_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_DEBUG, "metadata != otherMetadata: %@", buf, 0xCu);
        }
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
    {
      v14 = v10;
      v15 = objc_opt_class();
      v16 = v15;
      v17 = objc_opt_class();
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      v18 = v17;
      _os_log_debug_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_DEBUG, "Root object (%@ : %@) are not equal.", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PFMetadataImage;
  v4 = [(PFMetadata *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 25, self->_cgImageProperties);
  [v4 setImageSource:self->_imageSource];
  objc_storeStrong(v4 + 27, self->_imageData);
  [v4 setCgImageMetadata:self->_cgImageMetadata];
  return v4;
}

- (void)setImageSource:(CGImageSource *)source
{
  if (source)
  {
    CFRetain(source);
  }

  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  self->_imageSource = source;
}

- (id)plistForEncoding
{
  v6.receiver = self;
  v6.super_class = PFMetadataImage;
  plistForEncoding = [(PFMetadata *)&v6 plistForEncoding];
  v4 = [plistForEncoding mutableCopy];

  [v4 setObject:self->_cgImageProperties forKeyedSubscript:PFMetadataPlistCgImageProperties];

  return v4;
}

- (id)_imageSourceProperties
{
  if (!self->_cachedImageSourceProperties)
  {
    imageSource = self->_imageSource;
    if (imageSource)
    {
      v4 = 0;
    }

    else
    {
      fileURL = [(PFMetadata *)self fileURL];

      if (!fileURL)
      {
        goto LABEL_8;
      }

      fileURL2 = [(PFMetadata *)self fileURL];
      imageSource = CGImageSourceCreateWithURL(fileURL2, 0);

      v4 = imageSource;
      if (!imageSource)
      {
        goto LABEL_8;
      }
    }

    v5 = CGImageSourceCopyProperties(imageSource, 0);
    cachedImageSourceProperties = self->_cachedImageSourceProperties;
    self->_cachedImageSourceProperties = v5;

    self->_cachedImageSourcePrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(imageSource);
    if (v4)
    {
      CFRelease(v4);
    }
  }

LABEL_8:
  v9 = self->_cachedImageSourceProperties;

  return v9;
}

- (BOOL)_hasScreenshotDimensions
{
  [(PFMetadata *)self exifPixelSize];
  v4 = v3;
  [(PFMetadata *)self exifPixelSize];
  if (v4 == 320.0 && v5 == 480.0)
  {
    return 1;
  }

  if (v5 == 320.0 && v4 == 480.0)
  {
    return 1;
  }

  v8 = v5 == 480.0;
  if (v4 != 960.0)
  {
    v8 = 0;
  }

  v9 = v5 == 960.0 && v4 == 640.0;
  result = 1;
  if (!v9 && !v8 && (v4 != 768.0 || v5 != 1024.0) && (v5 != 768.0 || v4 != 1024.0) && (v4 != 1536.0 || v5 != 2048.0))
  {
    v11 = v5 == 768.0;
    v12 = v4 == 640.0;
    if (v5 != 1136.0)
    {
      v12 = 0;
    }

    if (v4 != 1136.0)
    {
      v11 = 0;
    }

    v13 = v4 == 2048.0 && v5 == 640.0;
    if (!v13 && !v12 && !v11 && (v4 != 750.0 || v5 != 1334.0) && (v5 != 750.0 || v4 != 1334.0) && (v4 != 1080.0 || v5 != 1920.0) && (v5 != 1080.0 || v4 != 1920.0) && (v4 != 1242.0 || v5 != 2208.0) && (v5 != 1242.0 || v4 != 2208.0) && (v4 != 1125.0 || v5 != 2001.0) && (v5 != 1125.0 || v4 != 2001.0) && (v4 != 312.0 || v5 != 390.0) && (v5 != 312.0 || v4 != 390.0) && (v4 != 272.0 || v5 != 340.0))
    {
      v14 = v5 == 2732.0 && v4 == 2048.0;
      v15 = v4 == 2732.0 && v5 == 2048.0;
      v16 = v4 == 340.0 && v5 == 272.0;
      if (!v16 && !v14 && !v15 && (v4 != 1668.0 || v5 != 2224.0))
      {
        v17 = v5 == 1125.0;
        v18 = v4 == 1125.0;
        if (v5 != 2436.0)
        {
          v18 = 0;
        }

        if (v4 != 2436.0)
        {
          v17 = 0;
        }

        v19 = v4 == 2224.0 && v5 == 1668.0;
        if (!v19 && !v18 && !v17 && (v4 != 324.0 || v5 != 394.0) && (v5 != 324.0 || v4 != 394.0) && (v4 != 368.0 || v5 != 448.0))
        {
          v20 = v5 == 1242.0;
          v21 = v4 == 1242.0;
          if (v5 != 2688.0)
          {
            v21 = 0;
          }

          if (v4 != 2688.0)
          {
            v20 = 0;
          }

          v22 = v4 == 448.0 && v5 == 368.0;
          if (!v22 && !v21 && !v20 && (v4 != 828.0 || v5 != 1792.0))
          {
            v23 = v4 == 1668.0;
            if (v5 != 2388.0)
            {
              v23 = 0;
            }

            v24 = v4 == 1792.0 && v5 == 828.0;
            if (!v24 && !v23)
            {
              return v4 == 2388.0 && v5 == 1668.0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)_hasFFCDimensions
{
  [(PFMetadata *)self exifPixelSize];
  v4 = v3;
  [(PFMetadata *)self exifPixelSize];
  if (v4 == 640.0 && v5 == 480.0)
  {
    return 1;
  }

  v7 = v5 == 640.0 && v4 == 480.0;
  if (v7 || v4 == 1280.0 && v5 == 960.0)
  {
    return 1;
  }

  if (v4 == 960.0)
  {
    return v5 == 1280.0;
  }

  return 0;
}

- (id)_formatValue:(id)value withPrecision:(unint64_t)precision
{
  v5 = MEMORY[0x1E696AEC0];
  [value doubleValue];
  v7 = [v5 stringWithFormat:@"%.*f", precision, v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_makeGPSProperties
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DBF0] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)syndicationProperties
{
  v5.receiver = self;
  v5.super_class = PFMetadataImage;
  syndicationProperties = [(PFMetadata *)&v5 syndicationProperties];
  v3 = [syndicationProperties mutableCopy];

  return v3;
}

- (void)_computeExposureTime
{
  v29[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D9B0];
  v5 = *MEMORY[0x1E696DAF0];
  v29[0] = *MEMORY[0x1E696D9B0];
  v29[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [typeVerifier valueForKeyPath:v7 fromProperties:self->_cgImageProperties];
  v9 = [v8 objectAtIndex:1];

  if (v9)
  {
    goto LABEL_3;
  }

  typeVerifier2 = [(PFMetadata *)self typeVerifier];
  v11 = *MEMORY[0x1E696D9E0];
  v28[0] = v4;
  v28[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v13 = [v12 componentsJoinedByString:@"."];
  v9 = [typeVerifier2 valueForKeyPath:v13 fromProperties:self->_cgImageProperties];

  if (v9)
  {
    goto LABEL_3;
  }

  typeVerifier3 = [(PFMetadata *)self typeVerifier];
  v17 = *MEMORY[0x1E696DAE8];
  v27[0] = v4;
  v27[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v19 = [v18 componentsJoinedByString:@"."];
  v14 = [typeVerifier3 valueForKeyPath:v19 fromProperties:self->_cgImageProperties];

  if (!v14)
  {
    v9 = 0;
    goto LABEL_77;
  }

  [v14 doubleValue];
  v21 = v20;
  v22 = exp2(-v20);
  v23 = 1.0 / v22;
  if (v21 == floor(v21))
  {
    if (v23 > 1.0)
    {
      v22 = v22 * 1.024;
    }

    if (v22 == 0.016)
    {
      v22 = 0.0166666667;
    }

    v24 = 0.0333333333;
    if (v22 != 0.032)
    {
      v24 = v22;
    }

    if (v24 != 0.064)
    {
      goto LABEL_75;
    }
  }

  else
  {
    if (v23 > 3100.0 && v23 < 3300.0)
    {
      v24 = 0.0003125;
      goto LABEL_75;
    }

    if (v23 > 2400.0 && v23 < 2600.0)
    {
      v24 = 0.0004;
      goto LABEL_75;
    }

    if (v23 > 1500.0 && v23 < 1700.0)
    {
      v24 = 0.000625;
      goto LABEL_75;
    }

    if (v23 > 1100.0 && v23 < 1300.0)
    {
      v24 = 0.0008;
      goto LABEL_75;
    }

    if (v23 > 700.0 && v23 < 900.0)
    {
      v24 = 0.00125;
      goto LABEL_75;
    }

    if (v23 > 600.0 && v23 < 700.0)
    {
      v24 = 0.0015625;
      goto LABEL_75;
    }

    if (v23 > 350.0 && v23 < 450.0)
    {
      v24 = 0.0025;
      goto LABEL_75;
    }

    if (v23 > 300.0 && v23 < 350.0)
    {
      v24 = 0.003125;
      goto LABEL_75;
    }

    if (v23 > 175.0 && v23 < 225.0)
    {
      v24 = 0.005;
      goto LABEL_75;
    }

    if (v23 > 150.0 && v23 < 170.0)
    {
      v24 = 0.00625;
      goto LABEL_75;
    }

    if (v23 > 115.0 && v23 < 135.0)
    {
      v24 = 0.008;
      goto LABEL_75;
    }

    if (v23 > 90.0 && v23 < 110.0)
    {
      v24 = 0.01;
      goto LABEL_75;
    }

    if (v23 > 70.0 && v23 < 90.0)
    {
      v24 = 0.0125;
      goto LABEL_75;
    }

    if (v23 > 55.0 && v23 < 65.0)
    {
      v24 = 0.0166666667;
      goto LABEL_75;
    }

    if (v23 > 45.0 && v23 < 55.0)
    {
      v24 = 0.02;
      goto LABEL_75;
    }

    if (v23 > 35.0 && v23 < 45.0)
    {
      v24 = 0.025;
      goto LABEL_75;
    }

    if (v23 > 27.0 && v23 < 33.0)
    {
      v24 = 0.0333333333;
      goto LABEL_75;
    }

    if (v23 > 23.0 && v23 < 27.0)
    {
      v24 = 0.04;
      goto LABEL_75;
    }

    if (v23 > 18.0 && v23 < 22.0)
    {
      v24 = 0.05;
      goto LABEL_75;
    }

    if (v23 <= 14.0 || v23 >= 17.0)
    {
      if (v23 <= 12.0 || v23 >= 14.0)
      {
        if (v23 <= 9.0 || v23 >= 11.0)
        {
          if (v23 <= 6.0 || v23 >= 7.0)
          {
            if (v23 <= 5.0 || v23 >= 6.0)
            {
              if (v23 <= 3.0 || v23 >= 4.0)
              {
                if (v23 <= 2.3 || v23 >= 3.0)
                {
                  v25 = v23 < 1.0;
                  v24 = v22;
                  if (v25)
                  {
                    if (v22 <= 27.0 || (v24 = 30.0, v22 >= 33.0))
                    {
                      if (v22 <= 23.0 || (v24 = 25.0, v22 >= 27.0))
                      {
                        if (v22 <= 18.0 || (v24 = 20.0, v22 >= 22.0))
                        {
                          if (v22 <= 14.0 || (v24 = 15.0, v22 >= 17.0))
                          {
                            if (v22 <= 12.0 || (v24 = 13.0, v22 >= 14.0))
                            {
                              if (v22 <= 9.0 || (v24 = 10.0, v22 >= 11.0))
                              {
                                v24 = 6.0;
                                if (v22 <= 6.0 || v22 >= 7.0)
                                {
                                  v24 = 5.0;
                                  if (v22 <= 5.0 || v22 >= 6.0)
                                  {
                                    v24 = 3.0;
                                    if (v22 <= 3.0 || v22 >= 4.0)
                                    {
                                      v26 = v22 >= 3.0 || v22 <= 2.3;
                                      v24 = 2.5;
                                      if (v26)
                                      {
                                        v24 = v22;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
                  v24 = 0.4;
                }
              }

              else
              {
                v24 = 0.333333333;
              }
            }

            else
            {
              v24 = 0.2;
            }
          }

          else
          {
            v24 = 0.166666667;
          }
        }

        else
        {
          v24 = 0.1;
        }
      }

      else
      {
        v24 = 0.0769230769;
      }

      goto LABEL_75;
    }
  }

  v24 = 0.0666666667;
LABEL_75:
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v24];

  if (v9)
  {
LABEL_3:
    v14 = [(PFMetadataImage *)self _formatValue:v9 withPrecision:8];
    v15 = 0;
    goto LABEL_4;
  }

  v14 = 0;
LABEL_77:
  v15 = 1;
LABEL_4:
  objc_storeStrong(&self->_exposureTime, v14);
  if ((v15 & 1) == 0)
  {
  }
}

- (void)_computeCameraSerialNumber
{
  v14[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v14[0] = *MEMORY[0x1E696D9B0];
  v14[1] = @"CameraSerialNumber";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  if (!v6)
  {
    typeVerifier2 = [(PFMetadata *)self typeVerifier];
    v8 = *MEMORY[0x1E696D958];
    v13[0] = *MEMORY[0x1E696D8B0];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v10 = [v9 componentsJoinedByString:@"."];
    v6 = [typeVerifier2 valueForKeyPath:v10 fromProperties:self->_cgImageProperties];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    stringValue = [v6 stringValue];

    v6 = stringValue;
  }

  cameraSerialNumber = self->_cameraSerialNumber;
  self->_cameraSerialNumber = v6;
}

- (void)_computeISOSetting
{
  v37[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D9B0];
  v5 = *MEMORY[0x1E696DAB8];
  v37[0] = *MEMORY[0x1E696D9B0];
  v37[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [typeVerifier valueForKeyPath:v7 fromProperties:self->_cgImageProperties];
  iso = self->_iso;
  self->_iso = v8;

  if (!self->_iso)
  {
    typeVerifier2 = [(PFMetadata *)self typeVerifier];
    v11 = *MEMORY[0x1E696DE58];
    v36[0] = *MEMORY[0x1E696DE50];
    v36[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v13 = [v12 componentsJoinedByString:@"."];
    v14 = [typeVerifier2 valueForKeyPath:v13 fromProperties:self->_cgImageProperties];

    if (v14)
    {
      v15 = [v14 count];
      if (v15)
      {
        v16 = v15;
        typeVerifier3 = [(PFMetadata *)self typeVerifier];
        v18 = [typeVerifier3 valueAtIndex:v16 - 1 forKey:v11 fromArray:v14];
        v19 = self->_iso;
        self->_iso = v18;
      }
    }

    if (!self->_iso)
    {
      typeVerifier4 = [(PFMetadata *)self typeVerifier];
      v21 = *MEMORY[0x1E696DA28];
      v35[0] = v4;
      v35[1] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v23 = [v22 componentsJoinedByString:@"."];
      v24 = [typeVerifier4 valueForKeyPath:v23 fromProperties:self->_cgImageProperties];
      v25 = self->_iso;
      self->_iso = v24;

      if (!self->_iso)
      {
        typeVerifier5 = [(PFMetadata *)self typeVerifier];
        v27 = *MEMORY[0x1E696DA40];
        v34[0] = v4;
        v34[1] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        v29 = [v28 componentsJoinedByString:@"."];
        v30 = [typeVerifier5 valueForKeyPath:v29 fromProperties:self->_cgImageProperties];

        if (v30)
        {
          if ([v30 count])
          {
            typeVerifier6 = [(PFMetadata *)self typeVerifier];
            v32 = [typeVerifier6 valueAtIndex:0 forKey:v27 fromArray:v30];
            v33 = self->_iso;
            self->_iso = v32;
          }
        }
      }
    }
  }
}

- (void)_computeWhiteBalanceValue
{
  v15[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DB50];
  v15[0] = *MEMORY[0x1E696D9B0];
  v15[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  if ([(NSNumber *)v7 isEqualToNumber:&unk_1F2AAB470])
  {
    whiteBalance = self->_whiteBalance;
    self->_whiteBalance = v7;
    v9 = v7;
LABEL_5:
    v11 = v9;
LABEL_6:

    goto LABEL_7;
  }

  lightSource = [(PFMetadataImage *)self lightSource];

  if (lightSource)
  {
    whiteBalance = self->_whiteBalance;
    self->_whiteBalance = lightSource;
    v9 = lightSource;
    goto LABEL_5;
  }

  whiteBalanceIndex = [(PFMetadataImage *)self whiteBalanceIndex];
  v11 = whiteBalanceIndex;
  if (whiteBalanceIndex)
  {
    integerValue = [(NSNumber *)whiteBalanceIndex integerValue];
    if (integerValue <= 0x15)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_computeWhiteBalanceValue_canonWhiteBalance[integerValue]];
      whiteBalance = self->_whiteBalance;
      self->_whiteBalance = v14;
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)_computeFNumberValue
{
  v21[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v5 = *MEMORY[0x1E696D8A8];
  v21[0] = *MEMORY[0x1E696D9B0];
  v4 = v21[0];
  v21[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [typeVerifier valueForKeyPath:v7 fromProperties:self->_cgImageProperties];

  typeVerifier2 = [(PFMetadata *)self typeVerifier];
  v10 = *MEMORY[0x1E696D9E8];
  v20[0] = v4;
  v20[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v12 = [v11 componentsJoinedByString:@"."];
  v13 = [typeVerifier2 valueForKeyPath:v12 fromProperties:self->_cgImageProperties];

  if (v8)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    [v8 doubleValue];
    v16 = round(exp2(v15 * 0.5) * 10.0) / 10.0;
    if (v16 == 0.0)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.8f", *&v16];
    if (v17)
    {
      v13 = [MEMORY[0x1E696AB90] decimalNumberWithString:v17];
    }

    else
    {
      v13 = 0;
    }
  }

  if (v13)
  {
    v18 = [(PFMetadataImage *)self _formatValue:v13 withPrecision:3];
    v19 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v18 = 0;
  v19 = 1;
LABEL_15:
  objc_storeStrong(&self->_fNumber, v18);
  if ((v19 & 1) == 0)
  {
  }
}

- (BOOL)hasAlphaChannel
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DD50] fromProperties:self->_cgImageProperties];

  LOBYTE(typeVerifier) = [v4 BOOLValue];
  return typeVerifier;
}

- (BOOL)containsCustomStylesMetadataBlob
{
  selfCopy = self;
  v47[2] = *MEMORY[0x1E69E9840];
  _imageSourceProperties = [(PFMetadataImage *)self _imageSourceProperties];
  if (_imageSourceProperties)
  {
    typeVerifier = [(PFMetadata *)selfCopy typeVerifier];
    v5 = *MEMORY[0x1E696DDE8];
    v47[0] = *MEMORY[0x1E696DB58];
    v47[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v7 = [v6 componentsJoinedByString:@"."];
    v8 = [typeVerifier valueForKeyPath:v7 fromProperties:_imageSourceProperties];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v8;
    v35 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v35)
    {
      v33 = _imageSourceProperties;
      v10 = 0;
      v11 = *v42;
      v12 = *MEMORY[0x1E696D410];
      v13 = *MEMORY[0x1E696D418];
      v14 = *MEMORY[0x1E69919F8];
      v31 = *v42;
      v32 = selfCopy;
      v34 = v9;
      v30 = *MEMORY[0x1E696D410];
      do
      {
        v15 = 0;
        v16 = v10;
        do
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v41 + 1) + 8 * v15);
          v18 = [(PFMetadata *)selfCopy typeVerifier:v30];
          v10 = [v18 valueForKeyPath:v12 fromProperties:v17];

          if (v10)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v19 = v10;
            v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v38;
              while (2)
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v38 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = [*(*(&v37 + 1) + 8 * i) objectForKeyedSubscript:v13];
                  v25 = [v24 isEqual:v14];

                  if (v25)
                  {

                    v27 = 1;
                    _imageSourceProperties = v33;
                    goto LABEL_27;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v31;
            selfCopy = v32;
            v9 = v34;
            v12 = v30;
          }

          ++v15;
          v16 = v10;
        }

        while (v15 != v35);
        v35 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v35);

      _imageSourceProperties = v33;
    }

    v26 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, v26, OS_LOG_TYPE_ERROR, "No custom styles metadata present.", buf, 2u);
    }
  }

  else
  {
    v28 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, v28, OS_LOG_TYPE_ERROR, "No fileURL associated with metadata to extract custom metadata.", buf, 2u);
    }
  }

  v27 = 0;
LABEL_27:

  return v27;
}

- (int64_t)cameraUsedForCapture
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E69867B8];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (id)imageSourceProxyData
{
  if (self->_imageSource)
  {
    v3 = 0;
  }

  else
  {
    fileURL = [(PFMetadata *)self fileURL];

    if (fileURL)
    {
      fileURL2 = [(PFMetadata *)self fileURL];
      v3 = CGImageSourceCreateWithURL(fileURL2, 0);
    }

    else
    {
      v3 = 0;
    }
  }

  ProxyData = CGImageSourceCreateProxyData();
  if (v3)
  {
    CFRelease(v3);
  }

  return ProxyData;
}

- (id)credit
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DD80];
  v9[0] = *MEMORY[0x1E696DD90];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)generativeAIImageType
{
  v11[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DDB8];
  v11[0] = *MEMORY[0x1E696DD90];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  lastPathComponent = [v7 lastPathComponent];

  if ([lastPathComponent isEqualToString:@"trainedAlgorithmicMedia"])
  {
    v9 = &unk_1F2AAB440;
  }

  else
  {
    v9 = &unk_1F2AAB428;
  }

  if ([lastPathComponent isEqualToString:@"compositeWithTrainedAlgorithmicMedia"])
  {
    v9 = &unk_1F2AAB458;
  }

  return v9;
}

- (BOOL)containsSpatialCameraHEIFMetadata
{
  v26[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DD40];
  v5 = *MEMORY[0x1E696E1E8];
  v26[0] = *MEMORY[0x1E696DD40];
  v26[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [typeVerifier valueForKeyPath:v7 fromProperties:self->_cgImageProperties];

  if (v8)
  {
    typeVerifier2 = [(PFMetadata *)self typeVerifier];
    v10 = [typeVerifier2 valueForKey:*MEMORY[0x1E696E188] fromProperties:v8];

    typeVerifier3 = [(PFMetadata *)self typeVerifier];
    v12 = [typeVerifier3 valueForKey:*MEMORY[0x1E696E198] fromProperties:v8];

    if (v10)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      typeVerifier4 = [(PFMetadata *)self typeVerifier];
      v16 = *MEMORY[0x1E696E1F0];
      v25[0] = v4;
      v25[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v18 = [v17 componentsJoinedByString:@"."];
      v19 = [typeVerifier4 valueForKeyPath:v18 fromProperties:self->_cgImageProperties];

      if (v19)
      {
        typeVerifier5 = [(PFMetadata *)self typeVerifier];
        v21 = [typeVerifier5 valueForKey:*MEMORY[0x1E696E1C0] fromProperties:v19];

        typeVerifier6 = [(PFMetadata *)self typeVerifier];
        v23 = [typeVerifier6 valueForKey:*MEMORY[0x1E696E1D0] fromProperties:v19];

        v14 = 0;
        if (v21 && v23)
        {
          v14 = ([v23 isEqualToString:*MEMORY[0x1E696E1A0]] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E696E1B8]);
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_anyImageHasProcessingFlag:(unint64_t)flag
{
  if (([(PFMetadataImage *)self photoProcessingFlags]& flag) != 0)
  {
    return 1;
  }

  if (![(PFMetadataImage *)self imageSource])
  {
    return 0;
  }

  Count = CGImageSourceGetCount([(PFMetadataImage *)self imageSource]);
  if (Count < 2)
  {
    return 0;
  }

  v7 = Count;
  v8 = +[PFMetadataImage defaultOptionsForCGImageSource];
  v9 = 0;
  v10 = *MEMORY[0x1E696DE30];
  v17 = *MEMORY[0x1E69867F8];
  while (1)
  {
    v11 = CGImageSourceCopyPropertiesAtIndex([(PFMetadataImage *)self imageSource], v9, v8);
    v12 = [(__CFDictionary *)v11 objectForKeyedSubscript:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:v17];
      unsignedIntValue = [v14 unsignedIntValue];

      if ((flag & ~unsignedIntValue) == 0)
      {
        break;
      }
    }

    if (v7 == ++v9)
    {
      v5 = 0;
      goto LABEL_12;
    }
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (BOOL)_isSpatialStereoGroup:(id)group inImageSource:(CGImageSource *)source
{
  v44 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (!source)
  {
    v25 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, v25, OS_LOG_TYPE_ERROR, "Unexpected missing image source for spatial stereo group check", buf, 2u);
    }

    v24 = 0;
    goto LABEL_33;
  }

  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8 = [typeVerifier valueForKey:*MEMORY[0x1E696DCE0] fromProperties:groupCopy];

  if (!v8 || ![v8 isEqualToString:*MEMORY[0x1E696DCF0]])
  {
    v24 = 0;
    goto LABEL_32;
  }

  typeVerifier2 = [(PFMetadata *)self typeVerifier];
  v10 = *MEMORY[0x1E696DC90];
  v11 = [typeVerifier2 valueForKey:*MEMORY[0x1E696DC90] fromProperties:groupCopy];

  if (!v11)
  {
    v26 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v37 = v10;
      v38 = 2114;
      v39 = groupCopy;
      _os_log_impl(&dword_1B35C1000, v26, OS_LOG_TYPE_INFO, "Not recognizing stereo group as spatial because %{public}@ key is missing: %{public}@", buf, 0x16u);
    }

    v24 = 0;
    goto LABEL_31;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = *MEMORY[0x1E696DCB8];
  v42[0] = *MEMORY[0x1E696DCA0];
  v42[1] = v12;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v13 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (!v13)
  {
    v24 = 1;
    goto LABEL_30;
  }

  v14 = v13;
  v15 = *v33;
  v30 = v11;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      typeVerifier3 = [(PFMetadata *)self typeVerifier];
      v19 = [typeVerifier3 valueForKey:v17 fromProperties:groupCopy];

      if (!v19)
      {
        v27 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v37 = v17;
          v38 = 2114;
          v39 = groupCopy;
          _os_log_error_impl(&dword_1B35C1000, v27, OS_LOG_TYPE_ERROR, "Unexpected missing image index key %{public}@ in stereo group: %{public}@", buf, 0x16u);
        }

        goto LABEL_29;
      }

      unsignedIntegerValue = [v19 unsignedIntegerValue];
      v21 = [(PFMetadataImage *)self metadataForImagePropertiesAtIndex:unsignedIntegerValue];
      if (!v21)
      {
        v28 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v37 = unsignedIntegerValue;
          v38 = 2114;
          v39 = v17;
          v40 = 2114;
          v41 = groupCopy;
          _os_log_error_impl(&dword_1B35C1000, v28, OS_LOG_TYPE_ERROR, "Unable to get image properties for image index %tu for image index key %{public}@ in stereo group: %{public}@", buf, 0x20u);
        }

LABEL_29:
        v24 = 0;
        v11 = v30;
        goto LABEL_30;
      }

      v22 = v21;
      containsSpatialCameraHEIFMetadata = [v21 containsSpatialCameraHEIFMetadata];

      if (!containsSpatialCameraHEIFMetadata)
      {
        goto LABEL_29;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    v24 = 1;
    v11 = v30;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:
  return v24;
}

- (BOOL)isSpatialMedia
{
  v32 = *MEMORY[0x1E69E9840];
  isSpatialMediaValue = self->_isSpatialMediaValue;
  if (!isSpatialMediaValue)
  {
    _imageSourceProperties = [(PFMetadataImage *)self _imageSourceProperties];
    if (_imageSourceProperties)
    {
      imageSource = [(PFMetadataImage *)self imageSource];
      typeVerifier = [(PFMetadata *)self typeVerifier];
      v7 = [typeVerifier valueForKey:*MEMORY[0x1E696DD00] fromProperties:_imageSourceProperties];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if ([(PFMetadataImage *)self _isSpatialStereoGroup:*(*(&v26 + 1) + 8 * i) inImageSource:imageSource, v26])
            {
              v13 = self->_isSpatialMediaValue;
              self->_isSpatialMediaValue = MEMORY[0x1E695E118];

              goto LABEL_13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      if (self->_isSpatialMediaValue)
      {
        goto LABEL_22;
      }
    }

    else
    {
      typeVerifier2 = [(PFMetadata *)self typeVerifier];
      v15 = *MEMORY[0x1E696E1E8];
      v30[0] = *MEMORY[0x1E696DD40];
      v30[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
      v17 = [v16 componentsJoinedByString:@"."];
      v8 = [typeVerifier2 valueForKeyPath:v17 fromProperties:self->_cgImageProperties];

      v18 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696E178]];
      if (v18)
      {
        v19 = v18;
        v20 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696E188]];
        if (v20)
        {
          v21 = v20;
          v22 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696E198]];

          if (v22)
          {
            v23 = MEMORY[0x1E695E118];
LABEL_21:
            v24 = self->_isSpatialMediaValue;
            self->_isSpatialMediaValue = v23;

LABEL_22:
            isSpatialMediaValue = self->_isSpatialMediaValue;
            return [(NSNumber *)isSpatialMediaValue BOOLValue];
          }
        }

        else
        {
        }
      }
    }

    v23 = MEMORY[0x1E695E110];
    goto LABEL_21;
  }

  return [(NSNumber *)isSpatialMediaValue BOOLValue];
}

- (id)metadataForImagePropertiesAtIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  imageSource = [(PFMetadataImage *)self imageSource];
  Count = CGImageSourceGetCount(imageSource);
  if (Count <= index)
  {
    v11 = Count;
    v12 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218240;
      indexCopy2 = index;
      v17 = 2048;
      v18 = v11;
      _os_log_error_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_ERROR, "Invalid request for per-image-index %tu sub-metadata for image source with count %tu", &v15, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v7 = CGImageSourceCopyPropertiesAtIndex(imageSource, index, +[PFMetadataImage defaultOptionsForCGImageSource]);
    if (v7)
    {
      v8 = [PFMetadata alloc];
      timeZoneLookup = [(PFMetadata *)self timeZoneLookup];
      v10 = [(PFMetadata *)v8 initWithImageProperties:v7 contentType:0 timeZoneLookup:timeZoneLookup];
    }

    else
    {
      v13 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        v15 = 134217984;
        indexCopy2 = index;
        _os_log_error_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_ERROR, "Unable to get per-image-index %tu properties", &v15, 0xCu);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (void)enumerateRawThumbnailInfoWithBlock:(id)block
{
  v42[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  _imageSourceProperties = [(PFMetadataImage *)self _imageSourceProperties];
  if (_imageSourceProperties)
  {
    typeVerifier = [(PFMetadata *)self typeVerifier];
    v42[0] = @"{raw}";
    v42[1] = @"Thumbnails";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v8 = [v7 componentsJoinedByString:@"."];
    v32 = _imageSourceProperties;
    v9 = [typeVerifier valueForKeyPath:v8 fromProperties:_imageSourceProperties];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = *MEMORY[0x1E696DFB8];
      v35 = *v38;
      v12 = *MEMORY[0x1E696DD58];
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        typeVerifier2 = [(PFMetadata *)self typeVerifier];
        v16 = [typeVerifier2 valueForKeyPath:v34 fromProperties:v14];
        [v16 floatValue];
        v18 = v17;

        typeVerifier3 = [(PFMetadata *)self typeVerifier];
        v20 = [typeVerifier3 valueForKeyPath:v12 fromProperties:v14];
        [v20 floatValue];
        v22 = v21;

        typeVerifier4 = [(PFMetadata *)self typeVerifier];
        v24 = [typeVerifier4 valueForKeyPath:@"JPEGOffset" fromProperties:v14];
        unsignedIntegerValue = [v24 unsignedIntegerValue];

        typeVerifier5 = [(PFMetadata *)self typeVerifier];
        v27 = [typeVerifier5 valueForKeyPath:@"JPEGLength" fromProperties:v14];
        unsignedIntegerValue2 = [v27 unsignedIntegerValue];

        typeVerifier6 = [(PFMetadata *)self typeVerifier];
        v30 = [typeVerifier6 valueForKeyPath:@"Orientation" fromProperties:v14];
        intValue = [v30 intValue];

        v36 = 0;
        blockCopy[2](blockCopy, unsignedIntegerValue, unsignedIntegerValue2, intValue, &v36, v18, v22);
        if (v36)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _imageSourceProperties = v32;
  }
}

- (id)nrfSrlStatus
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990AD0];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (unint64_t)photosAppFeatureFlags
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986800];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)smartStyleExpectingReversibility
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesIsExpectingReversibility;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)smartStyleIsReversible
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesIsReversible;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (signed)smartStyleCast
{
  selfCopy = self;
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesCast;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:selfCopy->_cgImageProperties];
  LOWORD(selfCopy) = [v6 intValue];

  return selfCopy;
}

- (id)smartStyleIntensity
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesIntensity;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)smartStyleColorBias
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesColorBias;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)smartStyleToneBias
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesToneBias;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)smartStyleRenderingVersion
{
  v8[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v8[2] = kPFImagePropertyMakerAppleSmartStylesRenderingVersion;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (BOOL)hasSmartStyle
{
  v8[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696DE30];
  v8[1] = kPFImagePropertyMakerAppleSmartStyles;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6 != 0;
}

- (id)semanticStylePreset
{
  v9[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986828];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v9[2] = *MEMORY[0x1E6986830];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)semanticStyleRenderingVersion
{
  v9[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986828];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v9[2] = *MEMORY[0x1E6986838];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)semanticStyleWarmthBias
{
  v9[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986828];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v9[2] = *MEMORY[0x1E6986848];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)semanticStyleToneBias
{
  v9[3] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986828];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v9[2] = *MEMORY[0x1E6986840];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)speedRef
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DC60];
  v9[0] = *MEMORY[0x1E696DBF0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)imageDirectionRef
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DC10];
  v9[0] = *MEMORY[0x1E696DBF0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)imageDirection
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DC08];
  v9[0] = *MEMORY[0x1E696DBF0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)gpsHPositioningError
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DC00];
  v9[0] = *MEMORY[0x1E696DBF0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)altitudeRef
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DB90];
  v9[0] = *MEMORY[0x1E696DBF0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)HEICSDelayTime
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DD18];
  v9[0] = *MEMORY[0x1E696DD20];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)GIFDelayTime
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DB68];
  v9[0] = *MEMORY[0x1E696DB70];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)lightSource
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA68];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)profileName
{
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = [typeVerifier valueForKey:*MEMORY[0x1E696DEF0] fromProperties:self->_cgImageProperties];

  return v4;
}

- (id)whiteBalanceIndex
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D440];
  v9[0] = *MEMORY[0x1E696D438];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (NSNumber)whiteBalance
{
  whiteBalance = self->_whiteBalance;
  if (!whiteBalance)
  {
    [(PFMetadataImage *)self _computeWhiteBalanceValue];
    whiteBalance = self->_whiteBalance;
  }

  return whiteBalance;
}

- (NSNumber)exposureTime
{
  exposureTime = self->_exposureTime;
  if (!exposureTime)
  {
    [(PFMetadataImage *)self _computeExposureTime];
    exposureTime = self->_exposureTime;
  }

  [(NSNumber *)exposureTime doubleValue];
  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_exposureTime;
  }

  return v5;
}

- (id)meteringMode
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA80];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (NSString)cameraSerialNumber
{
  cameraSerialNumber = self->_cameraSerialNumber;
  if (!cameraSerialNumber)
  {
    [(PFMetadataImage *)self _computeCameraSerialNumber];
    cameraSerialNumber = self->_cameraSerialNumber;
  }

  return cameraSerialNumber;
}

- (id)lensMaximumMM
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D8C8];
  v9[0] = *MEMORY[0x1E696D8B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 index:1 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)lensMinimumMM
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D8C8];
  v9[0] = *MEMORY[0x1E696D8B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 index:0 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)lensMake
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA50];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)lensModel
{
  v13[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA58];
  v13[0] = *MEMORY[0x1E696D9B0];
  v13[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  if (!v7)
  {
    typeVerifier2 = [(PFMetadata *)self typeVerifier];
    v12[0] = *MEMORY[0x1E696D8B0];
    v12[1] = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [v9 componentsJoinedByString:@"."];
    v7 = [typeVerifier2 valueForKeyPath:v10 fromProperties:self->_cgImageProperties];
  }

  return v7;
}

- (id)portraitInLandscapeCamera
{
  cameraModel = [(PFMetadataImage *)self cameraModel];
  cameraMake = [(PFMetadataImage *)self cameraMake];
  if ([cameraModel isEqualToString:@"Canon PowerShot S95"])
  {
    v5 = @"S95";
  }

  else if ([cameraMake isEqualToString:@"OLYMPUS IMAGING CORP.  "] && (objc_msgSend(cameraModel, "isEqualToString:", @"E-5             ") & 1) != 0)
  {
    v5 = @"OLYMPUSE5";
  }

  else if ([cameraModel isEqualToString:@"Canon PowerShot G12"])
  {
    v5 = @"G12";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)iso
{
  iso = self->_iso;
  if (!iso)
  {
    [(PFMetadataImage *)self _computeISOSetting];
    iso = self->_iso;
  }

  return iso;
}

- (id)focusDistance
{
  v8[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696D8B0];
  v8[1] = @"FocusDistance";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)focusMode
{
  v8[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696D8B0];
  v8[1] = @"FocusMode";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)focusPoints
{
  v8[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v8[0] = *MEMORY[0x1E696D8B0];
  v8[1] = @"AFInfo";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v4 componentsJoinedByString:@"."];
  v6 = [typeVerifier valueForKeyPath:v5 fromProperties:self->_cgImageProperties];

  return v6;
}

- (id)digitalZoomRatio
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D9C0];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)focalLengthIn35mm
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA08];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)focalLength
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DA18];
  v10[0] = *MEMORY[0x1E696D9B0];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  if (v7)
  {
    v8 = [(PFMetadataImage *)self _formatValue:v7 withPrecision:2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)flashFired
{
  flashCompensation = [(PFMetadataImage *)self flashCompensation];
  v4 = flashCompensation;
  if (flashCompensation)
  {
    flashValue = flashCompensation;
  }

  else
  {
    flashValue = [(PFMetadataImage *)self flashValue];
  }

  v6 = flashValue;

  integerValue = [v6 integerValue];
  return integerValue & 1;
}

- (id)flashCompensation
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D8C0];
  v9[0] = *MEMORY[0x1E696D8B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)flashValue
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D9F0];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (CGColorSpace)cgColorSpace
{
  result = self->_cgColorSpace;
  if (!result)
  {
    result = [(PFMetadataImage *)self _imageSourceProperties];
    if (result)
    {
      v4 = result;
      v5 = [(CGColorSpace *)result objectForKeyedSubscript:*MEMORY[0x1E696DB58]];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DDE8]];
        v8 = v7;
        if (v7 && [v7 count])
        {
          cachedImageSourcePrimaryImageIndex = self->_cachedImageSourcePrimaryImageIndex;
          if (cachedImageSourcePrimaryImageIndex >= [v8 count])
          {
            v10 = 0;
          }

          else
          {
            v10 = self->_cachedImageSourcePrimaryImageIndex;
          }

          v11 = [v8 objectAtIndexedSubscript:v10];
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696DE70]];
          if (v12)
          {
            v13 = v12;
            self->_cgColorSpace = CGColorSpaceCreateWithName(v12);

            return self->_cgColorSpace;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

- (id)brightness
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D960];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)exposureBias
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D9C8];
  v10[0] = *MEMORY[0x1E696D9B0];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  if (v7)
  {
    v8 = [(PFMetadataImage *)self _formatValue:v7 withPrecision:2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)fNumber
{
  fNumber = self->_fNumber;
  if (!fNumber)
  {
    [(PFMetadataImage *)self _computeFNumberValue];
    fNumber = self->_fNumber;
  }

  [(NSNumber *)fNumber doubleValue];
  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_fNumber;
  }

  return v5;
}

- (id)firmware
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D8B8];
  v9[0] = *MEMORY[0x1E696D8B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)ownerName
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D8D0];
  v9[0] = *MEMORY[0x1E696D8B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (void)setCgImageMetadata:(CGImageMetadata *)metadata
{
  if (metadata)
  {
    CFRetain(metadata);
  }

  cgImageMetadata = self->_cgImageMetadata;
  if (cgImageMetadata)
  {
    CFRelease(cgImageMetadata);
  }

  self->_cgImageMetadata = metadata;
}

- (id)hdrGainMap
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6586;
  v16 = __Block_byref_object_dispose__6587;
  v17 = 0;
  fileURL = [(PFMetadata *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(PFMetadata *)self fileURL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__PFMetadataImage_hdrGainMap__block_invoke;
    v10[3] = &unk_1E7B656E0;
    v10[5] = &v12;
    v11 = 0;
    v10[4] = self;
    v5 = [PFMediaUtilities enumerateImageSourceIndexesOfFileAtURL:fileURL2 error:&v11 block:v10];
    v6 = v11;

    if (!v5)
    {
      v7 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_error_impl(&dword_1B35C1000, v7, OS_LOG_TYPE_ERROR, "Failed to get HDR gain map from auxiliary image (Error: %@)", buf, 0xCu);
      }
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __29__PFMetadataImage_hdrGainMap__block_invoke(uint64_t a1, CGImageSourceRef isrc, size_t index, _BYTE *a4)
{
  v6 = *MEMORY[0x1E696D270];
  v7 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(isrc, index, *MEMORY[0x1E696D270]);
  if (v7)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) typeVerifier];
    v11 = [v10 verifiedImageValue:*(*(*(a1 + 40) + 8) + 40) forKey:v6];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }
}

- (int64_t)customRendered
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696D988];
  v10[0] = *MEMORY[0x1E696D9B0];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (BOOL)isScreenshot
{
  isImage = [(PFMetadataImage *)self isImage];
  if (isImage)
  {
    userComment = [(PFMetadataImage *)self userComment];
    v5 = [userComment isEqualToString:@"Screenshot"];

    if (v5)
    {
      LOBYTE(isImage) = 1;
    }

    else
    {
      contentType = [(PFMetadata *)self contentType];
      v7 = [contentType conformsToType:*MEMORY[0x1E6982F28]];

      if (v7)
      {

        LOBYTE(isImage) = [(PFMetadataImage *)self _hasScreenshotDimensions];
      }

      else
      {
        LOBYTE(isImage) = 0;
      }
    }
  }

  return isImage;
}

- (BOOL)isDeferredPhotoProxyExpectingDepth
{
  LODWORD(v3) = [(PFMetadataImage *)self isDeferredPhotoProxy];
  if (v3)
  {
    return ([(PFMetadataImage *)self photoCaptureFlags]>> 11) & 1;
  }

  return v3;
}

- (BOOL)hasDepthDataAndIsNotRenderedSDOF
{
  if (([(PFMetadataImage *)self photoProcessingFlags]& 0x60) != 0)
  {
    return ![(PFMetadataImage *)self isSDOF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPortrait
{
  if (([(PFMetadataImage *)self photoProcessingFlags]& 0x60) != 0)
  {
    return 1;
  }

  return [(PFMetadataImage *)self isSDOF];
}

- (unint64_t)photoCaptureFlags
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990B30];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)photoProcessingFlags
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E69867F8];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)photoProcessingIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990AE8];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)imageCaptureRequestIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990A88];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)deferredPhotoProcessingIdentifier
{
  imageCaptureRequestIdentifier = [(PFMetadataImage *)self imageCaptureRequestIdentifier];
  photoProcessingIdentifier = [(PFMetadataImage *)self photoProcessingIdentifier];
  v5 = photoProcessingIdentifier;
  v6 = 0;
  if (imageCaptureRequestIdentifier && photoProcessingIdentifier)
  {
    v7 = [imageCaptureRequestIdentifier stringByAppendingString:@"/"];
    v6 = [v7 stringByAppendingString:v5];
  }

  return v6;
}

- (id)groupingUuid
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E69867C8];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)burstUuid
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E69867B0];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)userComment
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DB40];
  v9[0] = *MEMORY[0x1E696D9B0];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (BOOL)isPhotoBooth
{
  keywords = [(PFMetadataImage *)self keywords];
  v3 = [keywords containsObject:@"Photo Booth"];

  return v3;
}

- (BOOL)isFrontFacingCamera
{
  cameraUsedForCapture = [(PFMetadataImage *)self cameraUsedForCapture];
  if ((cameraUsedForCapture - 5) >= 2)
  {
    if (cameraUsedForCapture)
    {
      return 0;
    }

    lensMake = [(PFMetadataImage *)self lensMake];
    lensModel = [(PFMetadataImage *)self lensModel];
    lowercaseString = [lensModel lowercaseString];

    if (lensMake && lowercaseString)
    {
      if ([lensMake isEqualToString:@"Apple"] && objc_msgSend(lowercaseString, "containsString:", @"front"))
      {
        _hasFFCDimensions = [lowercaseString containsString:@"camera"];
LABEL_14:

        return _hasFFCDimensions;
      }
    }

    else
    {
      cameraMake = [(PFMetadataImage *)self cameraMake];
      if ([cameraMake isEqualToString:@"Apple"])
      {
        _hasFFCDimensions = [(PFMetadataImage *)self _hasFFCDimensions];

        goto LABEL_14;
      }
    }

    _hasFFCDimensions = 0;
    goto LABEL_14;
  }

  return 1;
}

- (id)keywords
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DDD0];
  v9[0] = *MEMORY[0x1E696DD90];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)title
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DDD8];
  v9[0] = *MEMORY[0x1E696DD90];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)hdrGainMapPercentageValue
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990AB8];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (BOOL)hasHDRGainMap
{
  hdrGainMapPercentageValue = [(PFMetadataImage *)self hdrGainMapPercentageValue];
  v3 = hdrGainMapPercentageValue != 0;

  return v3;
}

- (id)hdrGain
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6990AB0];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (BOOL)hasISOGainMap
{
  selfCopy = self;
  v42[2] = *MEMORY[0x1E69E9840];
  _imageSourceProperties = [(PFMetadataImage *)self _imageSourceProperties];
  if (_imageSourceProperties)
  {
    typeVerifier = [(PFMetadata *)selfCopy typeVerifier];
    v5 = *MEMORY[0x1E696DDE8];
    v42[0] = *MEMORY[0x1E696DB58];
    v42[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v7 = [v6 componentsJoinedByString:@"."];
    v31 = _imageSourceProperties;
    v8 = [typeVerifier valueForKeyPath:v7 fromProperties:_imageSourceProperties];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = v8;
    v30 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v30)
    {
      v10 = *v37;
      v11 = *MEMORY[0x1E696D410];
      v12 = *MEMORY[0x1E696D418];
      v13 = *MEMORY[0x1E696D280];
      v28 = *v37;
      v29 = selfCopy;
      v27 = *MEMORY[0x1E696D410];
      do
      {
        v14 = 0;
        do
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          typeVerifier2 = [(PFMetadata *)selfCopy typeVerifier];
          v17 = [typeVerifier2 valueForKeyPath:v11 fromProperties:v15];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v32 + 1) + 8 * i) objectForKeyedSubscript:v12];
                v24 = [v23 isEqual:v13];

                if (v24)
                {

                  v25 = 1;
                  goto LABEL_21;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          ++v14;
          selfCopy = v29;
          v11 = v27;
          v10 = v28;
        }

        while (v14 != v30);
        v25 = 0;
        v30 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v30);
    }

    else
    {
      v25 = 0;
    }

LABEL_21:

    _imageSourceProperties = v31;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isHDR_ExtendedRange
{
  cgColorSpace = [(PFMetadataImage *)self cgColorSpace];
  if (cgColorSpace)
  {

    return CGColorSpaceUsesExtendedRange(cgColorSpace);
  }

  else
  {
    contentType = [(PFMetadata *)self contentType];
    if (contentType && (+[PFUniformTypeUtilities openEXRImageType](PFUniformTypeUtilities, "openEXRImageType"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [contentType conformsToType:v6], v6, (v7 & 1) != 0))
    {
      bOOLValue = 1;
    }

    else
    {
      typeVerifier = [(PFMetadata *)self typeVerifier];
      v10 = [typeVerifier valueForKey:*MEMORY[0x1E696DDF0] fromProperties:self->_cgImageProperties];

      bOOLValue = [v10 BOOLValue];
    }

    return bOOLValue;
  }
}

- (BOOL)isHDR_TS22028_5
{
  v16 = *MEMORY[0x1E69E9840];
  cgColorSpace = [(PFMetadataImage *)self cgColorSpace];
  if (cgColorSpace)
  {

    return CGColorSpaceUsesITUR_2100TF(cgColorSpace);
  }

  else
  {
    profileName = [(PFMetadataImage *)self profileName];
    if (profileName && (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v6 = [&unk_1F2AAB938 countByEnumeratingWithState:&v11 objects:v15 count:16]) != 0))
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(&unk_1F2AAB938);
          }

          if ([profileName containsString:*(*(&v11 + 1) + 8 * i)])
          {
            v10 = 1;
            goto LABEL_17;
          }
        }

        v7 = [&unk_1F2AAB938 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v10 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_17:

    return v10;
  }
}

- (BOOL)isHDR
{
  if ([(PFMetadataImage *)self _customRenderedIsHDR]|| ([(PFMetadataImage *)self isHDR_TS22028]& 1) != 0)
  {
    return 1;
  }

  return [(PFMetadataImage *)self isHDR_ExtendedRange];
}

- (id)spatialOverCaptureIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986888];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)artworkContentDescription
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DDA8];
  v9[0] = *MEMORY[0x1E696DD90];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)captionAbstract
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DD68];
  v9[0] = *MEMORY[0x1E696DD90];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)renderOriginatingAssetIdentifier
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986818];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  v8 = [objc_opt_class() stringByRemovingImageIoDotSuffixFromString:v7];

  return v8;
}

- (id)originatingAssetIdentifier
{
  v10[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986808];
  v10[0] = *MEMORY[0x1E696DE30];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  v8 = [objc_opt_class() stringByRemovingImageIoDotSuffixFromString:v7];

  return v8;
}

- (id)software
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DF68];
  v9[0] = *MEMORY[0x1E696DF28];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)cameraModel
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DF50];
  v9[0] = *MEMORY[0x1E696DF28];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)cameraMake
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E696DF48];
  v9[0] = *MEMORY[0x1E696DF28];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)playbackVariation
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E6986810];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (id)livePhotoPairingIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v4 = *MEMORY[0x1E69867A8];
  v9[0] = *MEMORY[0x1E696DE30];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v5 componentsJoinedByString:@"."];
  v7 = [typeVerifier valueForKeyPath:v6 fromProperties:self->_cgImageProperties];

  return v7;
}

- (BOOL)_configureWithImageProperties:(id)properties
{
  objc_storeStrong(&self->_cgImageProperties, properties);
  [(PFMetadata *)self setSourceType:4];
  return self->_cgImageProperties != 0;
}

- (BOOL)sourceIsImageSourceProxy
{
  if ([(PFMetadata *)self sourceType]!= 3 || ![(PFMetadataImage *)self imageSource])
  {
    return 0;
  }

  return MEMORY[0x1EEDC8DE0]();
}

- (BOOL)_configureWithImageSource:(CGImageSource *)source cacheImageSource:(BOOL)imageSource
{
  if (source)
  {
    imageSourceCopy = imageSource;
    v7 = CGImageSourceGetType(source);
    if (v7 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v7], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "conformsToType:", *MEMORY[0x1E6982F88]), v8, (v9 & 1) != 0))
    {
      PrimaryImageIndex = 0;
    }

    else
    {
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(source);
    }

    v11 = +[PFMetadataImage defaultOptionsForCGImageSource];
    v12 = CGImageSourceCopyPropertiesAtIndex(source, PrimaryImageIndex, v11);
    v13 = [(__CFDictionary *)v12 mutableCopy];

    v14 = [(PFMetadataImage *)self _configureWithImageProperties:v13];
    if (v14)
    {
      self->_cachedImageSourcePrimaryImageIndex = PrimaryImageIndex;
      if (imageSourceCopy)
      {
        [(PFMetadataImage *)self setImageSource:source];
      }

      if ([(PFMetadata *)self shouldLookForXmpSidecar])
      {
        v15 = CGImageSourceCopyMetadataPropertiesAtIndex();
        if (v15)
        {
          v16 = CGImageMetadataCreateFromMetadataProperties();
          if (v16)
          {
            v17 = v16;
            [(PFMetadataImage *)self setCgImageMetadata:v16];
            CFRelease(v17);
          }
        }
      }
    }

    [(PFMetadata *)self setSourceType:3];
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)_configureWithImageData:(id)data cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData
{
  imageDataCopy = imageData;
  sourceCopy = source;
  dataCopy = data;
  if (dataCopy)
  {
    v10 = +[PFMetadataImage defaultOptionsForCGImageSource];
    v11 = [v10 mutableCopy];

    contentType = [(PFMetadata *)self contentType];

    if (contentType)
    {
      contentType2 = [(PFMetadata *)self contentType];
      identifier = [contentType2 identifier];
      [v11 setObject:identifier forKeyedSubscript:*MEMORY[0x1E696E118]];
    }

    v15 = CGImageSourceCreateWithData(dataCopy, v11);
    if (v15)
    {
      v16 = v15;
      v17 = [(PFMetadataImage *)self _configureWithImageSource:v15 cacheImageSource:sourceCopy];
      if (v17 && imageDataCopy)
      {
        objc_storeStrong(&self->_imageData, data);
        LOBYTE(v17) = 1;
      }

      CFRelease(v16);
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    [(PFMetadata *)self setSourceType:2];
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)_configureWithImageURL:(id)l cacheImageSource:(BOOL)source cacheImageData:(BOOL)data
{
  dataCopy = data;
  sourceCopy = source;
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    [(PFMetadata *)self setFileURL:lCopy];
    if ([(PFMetadata *)self noFileAccess])
    {
      contentType = [(PFMetadata *)self contentType];

      if (!contentType)
      {
        v42 = 0;
        v10 = [PFUniformTypeUtilities typeForURL:lCopy error:&v42];
        v11 = v42;
        [(PFMetadata *)self setContentType:v10];

        contentType2 = [(PFMetadata *)self contentType];

        if (!contentType2)
        {
          v13 = metadataLog;
          if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
          {
            v43.st_dev = 138412290;
            *&v43.st_mode = v11;
            _os_log_error_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_ERROR, "Failed to get a content type (%@)", &v43, 0xCu);
          }
        }
      }
    }

    fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
    v15 = [fileSystemProperties objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
    unsignedLongLongValue = [v15 unsignedLongLongValue];

    if ([(PFMetadata *)self useJpegFastPath])
    {
      if (unsignedLongLongValue)
      {
        contentType3 = [(PFMetadata *)self contentType];
        if (contentType3)
        {
          v18 = contentType3;
          contentType4 = [(PFMetadata *)self contentType];
          if ([contentType4 conformsToType:*MEMORY[0x1E6982E58]])
          {

            if (!sourceCopy && !dataCopy)
            {
              path = [lCopy path];
              v21 = CopyMetadataFromFileAtPath();
              v22 = [v21 mutableCopy];

              v23 = [(PFMetadataImage *)self _configureWithImageProperties:v22];
LABEL_40:

              [(PFMetadata *)self setSourceType:1];
              goto LABEL_41;
            }
          }

          else
          {
          }
        }
      }
    }

    v24 = +[PFMetadataImage defaultOptionsForCGImageSource];
    v22 = [v24 mutableCopy];

    if ([(PFMetadata *)self shouldLookForXmpSidecar])
    {
      path2 = [lCopy path];
      stringByDeletingPathExtension = [path2 stringByDeletingPathExtension];

      v27 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"xmp"];
      memset(&v43, 0, sizeof(v43));
      if (!stat([v27 fileSystemRepresentation], &v43) && v43.st_mode < 0 || (objc_msgSend(stringByDeletingPathExtension, "stringByAppendingPathExtension:", @"XMP"), v28 = objc_claimAutoreleasedReturnValue(), v27, memset(&v43, 0, sizeof(v43)), v27 = v28, v29 = stat(objc_msgSend(v28, "fileSystemRepresentation"), &v43), v30 = 0, !v29) && v43.st_mode < 0)
      {
        v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v27];
        if (v30)
        {
          if (*MEMORY[0x1E696E140])
          {
            [v22 setObject:v30 forKeyedSubscript:?];
          }
        }
      }
    }

    if (dataCopy && ![(PFMetadata *)self noFileAccess])
    {
      v41 = 0;
      v35 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:&v41];
      v36 = v41;
      v23 = [(PFMetadataImage *)self _configureWithImageData:v35 cacheImageSource:sourceCopy cacheImageData:1];
      if (!v23)
      {
        v37 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          v39 = v37;
          contentType5 = [(PFMetadata *)self contentType];
          v43.st_dev = 134218754;
          *&v43.st_mode = v35;
          WORD2(v43.st_ino) = 2048;
          *(&v43.st_ino + 6) = contentType5;
          HIWORD(v43.st_gid) = 2112;
          *&v43.st_rdev = lCopy;
          LOWORD(v43.st_atimespec.tv_sec) = 2112;
          *(&v43.st_atimespec.tv_sec + 2) = v36;
          _os_log_error_impl(&dword_1B35C1000, v39, OS_LOG_TYPE_ERROR, "Asked to cache image data. Unable to configure with data (%p) and contentType (%p) from path '%@'. (%@)", &v43, 0x2Au);
        }
      }
    }

    else
    {
      v31 = CGImageSourceCreateWithURL(lCopy, v22);
      if (v31)
      {
        v32 = v31;
        v23 = [(PFMetadataImage *)self _configureWithImageSource:v31 cacheImageSource:sourceCopy];
        if (!v23)
        {
          v33 = metadataLog;
          if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
          {
            v43.st_dev = 138412290;
            *&v43.st_mode = lCopy;
            _os_log_error_impl(&dword_1B35C1000, v33, OS_LOG_TYPE_ERROR, "Failed to get an image source from path '%@'", &v43, 0xCu);
          }
        }

        CFRelease(v32);
      }

      else
      {
        v34 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          v43.st_dev = 138412290;
          *&v43.st_mode = lCopy;
          _os_log_error_impl(&dword_1B35C1000, v34, OS_LOG_TYPE_ERROR, "Failed to get an image source from path '%@'", &v43, 0xCu);
        }

        v23 = 0;
      }
    }

    goto LABEL_40;
  }

  v23 = 0;
LABEL_41:

  return v23;
}

- (BOOL)configureWithMetadataPlist:(id)plist
{
  plistCopy = plist;
  v8.receiver = self;
  v8.super_class = PFMetadataImage;
  if ([(PFMetadata *)&v8 configureWithMetadataPlist:plistCopy])
  {
    v5 = [plistCopy objectForKeyedSubscript:PFMetadataPlistCgImageProperties];
    v6 = [(PFMetadataImage *)self _configureWithImageProperties:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PFMetadataImage)initWithImageProperties:(id)properties contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup
{
  optionsCopy = options;
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = PFMetadataImage;
  v11 = [(PFMetadata *)&v14 initWithContentType:type options:optionsCopy timeZoneLookup:lookup];
  v12 = v11;
  if (v11 && ![(PFMetadataImage *)v11 _configureWithImageProperties:propertiesCopy])
  {

    v12 = 0;
  }

  return v12;
}

- (PFMetadataImage)initWithImageSourceProxyOrEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  dataCopy = data;
  typeCopy = type;
  lookupCopy = lookup;
  v11 = [(PFMetadataImage *)self initWithImageSourceProxyData:dataCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [[PFMetadataImage alloc] initWithEncodedImagePropertyData:dataCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  }

  v14 = v13;

  return v14;
}

- (PFMetadataImage)initWithImageSourceProxyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  typeCopy = type;
  lookupCopy = lookup;
  selfCopy = CGImageSourceCreateWithProxyData();
  if (selfCopy)
  {
    v10 = [(PFMetadataImage *)self initWithImageSource:selfCopy contentType:typeCopy options:12 timeZoneLookup:lookupCopy cacheImageSource:1];
    CFRelease(selfCopy);
    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (PFMetadataImage)initWithEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = [(PFMetadata *)self initWithContentType:type options:12 timeZoneLookup:lookup];
  if (v9)
  {
    v16 = 0;
    v10 = [PFMetadataImage propertyListObjectFromEncodedData:dataCopy expectedClass:objc_opt_class() options:0 error:&v16];
    v11 = v16;
    if (![(PFMetadataImage *)v9 _configureWithImageProperties:v10])
    {
      v12 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        v14 = v12;
        v15 = [dataCopy length];
        *buf = 134218498;
        v18 = dataCopy;
        v19 = 2048;
        v20 = v15;
        v21 = 2114;
        v22 = v11;
        _os_log_error_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_ERROR, "failed to deserialize a property list object from plist data: %p, length: %lu, error: %{public}@", buf, 0x20u);
      }

      v9 = 0;
    }

    [(PFMetadata *)v9 setSourceType:5];
  }

  return v9;
}

- (PFMetadataImage)initWithImageSource:(CGImageSource *)source contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)imageSource
{
  imageSourceCopy = imageSource;
  v9 = [(PFMetadata *)self initWithContentType:type options:options timeZoneLookup:lookup];
  v10 = v9;
  if (v9 && ![(PFMetadataImage *)v9 _configureWithImageSource:source cacheImageSource:imageSourceCopy])
  {

    return 0;
  }

  return v10;
}

- (PFMetadataImage)initWithImageData:(id)data contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData
{
  imageDataCopy = imageData;
  sourceCopy = source;
  optionsCopy = options;
  dataCopy = data;
  v15 = [(PFMetadata *)self initWithContentType:type options:optionsCopy timeZoneLookup:lookup];
  v16 = v15;
  if (v15 && ![(PFMetadataImage *)v15 _configureWithImageData:dataCopy cacheImageSource:sourceCopy cacheImageData:imageDataCopy])
  {

    v16 = 0;
  }

  return v16;
}

- (PFMetadataImage)initWithImageURL:(id)l contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)data
{
  dataCopy = data;
  sourceCopy = source;
  optionsCopy = options;
  lCopy = l;
  v15 = [(PFMetadata *)self initWithContentType:type options:optionsCopy timeZoneLookup:lookup];
  v16 = v15;
  if (v15 && ![(PFMetadataImage *)v15 _configureWithImageURL:lCopy cacheImageSource:sourceCopy cacheImageData:dataCopy])
  {

    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  cgImageMetadata = self->_cgImageMetadata;
  if (cgImageMetadata)
  {
    CFRelease(cgImageMetadata);
  }

  cgColorSpace = self->_cgColorSpace;
  if (cgColorSpace)
  {
    CFRelease(cgColorSpace);
  }

  v6.receiver = self;
  v6.super_class = PFMetadataImage;
  [(PFMetadataImage *)&v6 dealloc];
}

+ (id)defaultOptionsForCGImageSource
{
  if (defaultOptionsForCGImageSource_onceToken != -1)
  {
    dispatch_once(&defaultOptionsForCGImageSource_onceToken, &__block_literal_global_6639);
  }

  v2 = [defaultOptionsForCGImageSource_options mutableCopy];

  return v2;
}

void __49__PFMetadataImage_defaultOptionsForCGImageSource__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E696DFD8];
  v2[1] = @"kCGImageSourceKeepOriginalProfile";
  v3[0] = MEMORY[0x1E695E118];
  v3[1] = MEMORY[0x1E695E118];
  v2[2] = *MEMORY[0x1E696E0E0];
  v3[2] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = defaultOptionsForCGImageSource_options;
  defaultOptionsForCGImageSource_options = v0;
}

+ (id)stringByRemovingImageIoDotSuffixFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasSuffix:@"."])
  {
    v4 = [stringCopy stringByReplacingOccurrencesOfString:@"." withString:&stru_1F2A8EB68];

    stringCopy = v4;
  }

  return stringCopy;
}

@end