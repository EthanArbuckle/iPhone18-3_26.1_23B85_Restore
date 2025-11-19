@interface PFMetadata
+ (BOOL)_canEncodeInPropertyList:(id)a3;
+ (id)_filterArray:(id)a3;
+ (id)_filterDictionary:(id)a3;
+ (id)_filterPropertyListObject:(id)a3;
+ (id)differencesBetweenDictionary:(id)a3 andDictionary:(id)a4;
+ (id)encodedDataWithPropertyListObject:(id)a3;
+ (id)propertyListObjectFromEncodedData:(id)a3 expectedClass:(Class)a4 options:(unint64_t)a5 error:(id *)a6;
+ (void)firstAudioTrackForAsset:(id)a3 resultBlock:(id)a4;
+ (void)firstVideoTrackForAsset:(id)a3 resultBlock:(id)a4;
+ (void)metadataForAsset:(id)a3 completionHandler:(id)a4;
- (BOOL)_convertTimeZoneOffsetString:(id)a3 toSeconds:(double *)a4;
- (BOOL)configureWithMetadataPlist:(id)a3;
- (BOOL)isAnimatedImage;
- (BOOL)isAutoloop;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLongExposure;
- (BOOL)isLoopingVideo;
- (BOOL)isMirror;
- (BOOL)isSameForURL:(id)a3 andOptions:(unsigned __int16)a4;
- (CGSize)exifPixelSize;
- (CGSize)orientedPixelSize;
- (CLLocation)gpsLocation;
- (NSDate)creationDate;
- (NSDate)fileCreationDate;
- (NSDate)fileModificationDate;
- (NSDate)gpsDateTime;
- (NSDate)utcCreationDate;
- (NSDictionary)fileSystemProperties;
- (NSDictionary)syndicationProperties;
- (NSNumber)altitude;
- (NSNumber)durationTimeInterval;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)speed;
- (NSNumber)srlCompensationValue;
- (NSNumber)timeZoneOffset;
- (NSString)creationDateString;
- (NSString)defaultProfileName;
- (NSString)originalFileName;
- (NSString)timeZoneName;
- (NSTimeZone)timeZone;
- (PFMetadata)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4;
- (PFMetadata)initWithAVURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithContentType:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithEncodedImagePropertyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithImageCaptureMovieProperties:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithImageData:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7 cacheImageData:(BOOL)a8;
- (PFMetadata)initWithImageProperties:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6;
- (PFMetadata)initWithImageSource:(CGImageSource *)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7;
- (PFMetadata)initWithImageSourceProxyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithImageSourceProxyOrEncodedImagePropertyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
- (PFMetadata)initWithImageURL:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7 cacheImageData:(BOOL)a8;
- (PFMetadata)initWithMediaURL:(id)a3 detail:(unsigned __int16)a4 timeZoneLookup:(id)a5 shouldCache:(BOOL)a6;
- (PFMetadata)initWithMediaURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5 shouldCache:(BOOL)a6;
- (PFMetadata)initWithMetadataPlist:(id)a3 timeZoneLookup:(id)a4;
- (PFMetadata)initWithPropertyListRepresentationData:(id)a3 timeZoneLookup:(id)a4;
- (PFMetadata)initWithSyndicationProperties:(id)a3;
- (PFTimeZoneLookup)timeZoneLookup;
- (UTType)contentType;
- (id)_dateTimeOffsetOriginalForSyndicationProperties;
- (id)_dateTimeOriginalForSyndicationProperties;
- (id)_dateTimeSubsecOriginalForSyndicationProperties;
- (id)burstUuidMetadataKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)hdrGainFromValue:(id)a3;
- (id)hdrGainMetadataKey;
- (id)initForLimitedPropertiesWithPath:(id)a3;
- (id)jsonFormattedDescriptionWithError:(id *)a3;
- (id)livePhotoPairingIdentifierMetadataKey;
- (id)originatingAssetIdentifierMetadataKey;
- (id)photoProcessingFlagsMetadataKey;
- (id)photosFeatureFlagsMetadataKey;
- (id)pixelHeight;
- (id)pixelWidth;
- (id)playbackVariationMetadataKey;
- (id)plistForEncoding;
- (id)propertyListRepresentationData;
- (id)renderOriginatingAssetIdentifierMetadataKey;
- (id)sourceTypeName;
- (id)spatialOverCaptureIdentifierMetadataKey;
- (int64_t)creationDateSource;
- (int64_t)orientation;
- (unint64_t)fileSize;
- (void)_addCommonPropertiesToSyndicationProperties:(id)a3;
- (void)_addImageGPSPropertiesToSyndicationProperties:(id)a3;
- (void)_addImageLivePhotoPropertiesToSyndicationProperties:(id)a3;
- (void)_addImageMiscPropertiesToSyndicationProperties:(id)a3;
- (void)_addImagePropertiesToSyndicationProperties:(id)a3;
- (void)_addImageSemanticStylePropertiesToSyndicationProperties:(id)a3;
- (void)_addImageSmartStylePropertiesToSyndicationProperties:(id)a3;
- (void)_addMoviePropertiesToSyndicationProperties:(id)a3;
- (void)_computeAlttitude:(id)a3;
- (void)_computeGPSLocation;
- (void)_computeGPSTimeStamp:(id)a3;
- (void)_computeLattitudeLongitude:(id)a3;
- (void)_computeOrientationValue;
- (void)_computePixelWidthAndHeightValue;
- (void)_computeSpeed:(id)a3;
- (void)_computeSubSecondString:(id *)a3 timeZoneOffsetString:(id *)a4 unqualifiedDateString:(id *)a5 fromProperties:(id)a6;
- (void)_computeTimeZoneFromString:(id)a3;
- (void)_computeUnqualifiedDateFromDateString:(id)a3 subSecondString:(id)a4;
- (void)computeDateTimeValues;
- (void)computeGPSValues;
- (void)loadMetadataWithCompletionHandler:(id)a3;
@end

@implementation PFMetadata

- (void)loadMetadataWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_ERROR, "Called on base class. This should not happen.", v5, 2u);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v3[2](v3);
  }

LABEL_4:
}

- (id)sourceTypeName
{
  v2 = [(PFMetadata *)self sourceType];
  if ((v2 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B64A00[v2 - 1];
  }
}

- (BOOL)isEqual:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    v7 = v6;
    options = self->_options;
    if (options == v6->_options)
    {
      fileURL = self->_fileURL;
      if ((fileURL != 0) != (v6->_fileURL == 0))
      {
        if (fileURL && ([(NSURL *)self->_fileURL isEqual:?]& 1) == 0)
        {
          v33 = metadataLog;
          if (!os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_46;
          }

          v34 = self->_fileURL;
          v23 = v33;
          v24 = [(PFMetadata *)v7 fileURL];
          v45 = 138412546;
          v46 = v34;
          v47 = 2112;
          v48 = v24;
          v29 = "PFMetadata object not equal: fileURL %@ != %@";
        }

        else
        {
          contentType = self->_contentType;
          if ((contentType != 0) != (v7->_contentType == 0))
          {
            if (!contentType || ([(PFMetadata *)v7 contentType], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(UTType *)contentType isEqual:v11], v11, (v12 & 1) != 0))
            {
              v13 = [(PFMetadata *)self fileSystemProperties];
              v14 = [(PFMetadata *)v7 fileSystemProperties];
              v15 = (v13 != 0) ^ (v14 == 0);

              if (v15)
              {
                v16 = [(PFMetadata *)self fileSystemProperties];
                if (!v16 || (v17 = v16, -[PFMetadata fileSystemProperties](self, "fileSystemProperties"), v18 = objc_claimAutoreleasedReturnValue(), -[PFMetadata fileSystemProperties](v7, "fileSystemProperties"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v18 isEqual:v19], v19, v18, v17, (v20 & 1) != 0))
                {
                  v21 = 1;
LABEL_47:

                  goto LABEL_48;
                }

                v44 = metadataLog;
                if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
                {
                  v36 = v44;
                  v37 = [(PFMetadata *)self fileSystemProperties];
                  v39 = [(PFMetadata *)v7 fileSystemProperties];
                  v45 = 138412546;
                  v46 = v37;
                  v47 = 2112;
                  v48 = v39;
LABEL_51:
                  _os_log_debug_impl(&dword_1B35C1000, v36, OS_LOG_TYPE_DEBUG, "PFMetadata object not equal: fileSystemProperties %@ != %@", &v45, 0x16u);
                }
              }

              else
              {
                v35 = metadataLog;
                if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
                {
                  v36 = v35;
                  v37 = [(PFMetadata *)self fileSystemProperties];
                  if (v37)
                  {
                    v38 = @"not nil";
                  }

                  else
                  {
                    v38 = @"nil";
                  }

                  v39 = [(PFMetadata *)v7 fileSystemProperties];
                  if (v39)
                  {
                    v40 = @"not nil";
                  }

                  else
                  {
                    v40 = @"nil";
                  }

                  v45 = 138412546;
                  v46 = v38;
                  v47 = 2112;
                  v48 = v40;
                  goto LABEL_51;
                }
              }

LABEL_46:
              v21 = 0;
              goto LABEL_47;
            }

            v41 = metadataLog;
            if (!os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            v42 = self->_contentType;
            v23 = v41;
            v24 = [(PFMetadata *)v7 contentType];
            v45 = 138412546;
            v46 = v42;
            v47 = 2112;
            v48 = v24;
            v29 = "PFMetadata object not equal: contentType %@ != %@";
          }

          else
          {
            v30 = metadataLog;
            if (!os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            if (contentType)
            {
              v31 = @"not nil";
            }

            else
            {
              v31 = @"nil";
            }

            v23 = v30;
            v24 = [(PFMetadata *)v7 contentType];
            if (v24)
            {
              v32 = @"not nil";
            }

            else
            {
              v32 = @"nil";
            }

            v45 = 138412546;
            v46 = v31;
            v47 = 2112;
            v48 = v32;
            v29 = "PFMetadata object not equal: contentType %@ != %@";
          }
        }
      }

      else
      {
        v26 = metadataLog;
        if (!os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_46;
        }

        if (fileURL)
        {
          v27 = @"not nil";
        }

        else
        {
          v27 = @"nil";
        }

        v23 = v26;
        v24 = [(PFMetadata *)v7 fileURL];
        if (v24)
        {
          v28 = @"not nil";
        }

        else
        {
          v28 = @"nil";
        }

        v45 = 138412546;
        v46 = v27;
        v47 = 2112;
        v48 = v28;
        v29 = "PFMetadata object not equal: fileURL %@ != %@";
      }

      _os_log_debug_impl(&dword_1B35C1000, v23, OS_LOG_TYPE_DEBUG, v29, &v45, 0x16u);
    }

    else
    {
      v22 = metadataLog;
      if (!os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_46;
      }

      v23 = v22;
      v24 = PFMetadataStringForMetadataLoadOptions(options);
      v25 = PFMetadataStringForMetadataLoadOptions(v7->_options);
      v45 = 138412546;
      v46 = v24;
      v47 = 2112;
      v48 = v25;
      _os_log_debug_impl(&dword_1B35C1000, v23, OS_LOG_TYPE_DEBUG, "PFMetadata object not equal: detail %@ != %@", &v45, 0x16u);
    }

    goto LABEL_46;
  }

  v21 = 1;
LABEL_48:

  return v21;
}

- (id)description
{
  v2 = [(PFMetadata *)self plistForEncoding];
  v3 = [v2 description];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 40), self->_cachedTimeZoneLookup);
  *(v4 + 32) = self->_options;
  objc_storeStrong((v4 + 64), self->_fileURL);
  objc_storeStrong((v4 + 72), self->_contentType);
  v5 = [(PFMetadata *)self fileSystemProperties];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  return v4;
}

- (id)jsonFormattedDescriptionWithError:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(PFMetadata *)self plistForEncoding];
  v5 = [v4 mutableCopy];

  cleanJSON(v5);
  v12[0] = 0;
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    goto LABEL_8;
  }

  v9 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_error_impl(&dword_1B35C1000, v9, OS_LOG_TYPE_ERROR, "Invalid JSON output from metadata description. Error: %@", buf, 0xCu);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    v10 = v7;
    v8 = 0;
    *a3 = v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)plistForEncoding
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v5 = [(NSURL *)fileURL path];
    [v3 setObject:v5 forKeyedSubscript:PFMetadataPlistFilePath];
  }

  v6 = [(UTType *)self->_contentType identifier];

  if (v6)
  {
    v7 = [(UTType *)self->_contentType identifier];
    [v3 setObject:v7 forKeyedSubscript:PFMetadataPlistContentTypeIdentifier];
  }

  v8 = [(PFMetadata *)self creationDate];

  if (v8)
  {
    v9 = [(PFMetadata *)self creationDate];
    [v3 setObject:v9 forKeyedSubscript:PFMetadataPlistCreationDate];
  }

  v10 = [(PFMetadata *)self fileSystemProperties];

  if (v10)
  {
    v11 = [(PFMetadata *)self fileSystemProperties];
    [v3 setObject:v11 forKeyedSubscript:PFMetadataPlistFileSystemProperties];
  }

  v12 = [(PFMetadata *)self orientation];
  if ((v12 - 1) >= 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(PFMetadata *)self orientation];
  if ((v14 - 1) >= 8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = PFOrientationName_names[v15];
  [v3 setObject:v16 forKeyedSubscript:PFMetadataPlistOrientation];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata sourceType](self, "sourceType")}];
  [v3 setObject:v17 forKeyedSubscript:PFMetadataPlistSourceType];

  v18 = [(PFMetadata *)self sourceType];
  if ((v18 - 1) > 0xA)
  {
    v19 = @"Unknown";
  }

  else
  {
    v19 = off_1E7B64A00[v18 - 1];
  }

  v20 = v19;
  [v3 setObject:v20 forKeyedSubscript:PFMetadataPlistSourceTypeName];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_options];
  [v3 setObject:v21 forKeyedSubscript:PFMetadataPlistOptions];

  v22 = PFMetadataStringForMetadataLoadOptions(self->_options);
  [v3 setObject:v22 forKeyedSubscript:PFMetadataPlistOptionsString];

  return v3;
}

- (id)propertyListRepresentationData
{
  v2 = [(PFMetadata *)self plistForEncoding];
  v3 = [PFMetadata encodedDataWithPropertyListObject:v2];

  return v3;
}

- (id)hdrGainFromValue:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD98];
    [a3 floatValue];
    v5 = [v4 numberWithFloat:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_convertTimeZoneOffsetString:(id)a3 toSeconds:(double *)a4
{
  v5 = [a3 componentsSeparatedByString:@":"];
  v6 = [v5 count];
  if (v6 == 2)
  {
    v7 = [v5 objectAtIndex:0];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v5 objectAtIndex:1];
    [v10 doubleValue];
    v12 = v11;

    if (a4)
    {
      v13 = 1.0;
      if (v9 < 0)
      {
        v13 = -1.0;
      }

      *a4 = v13 * (v12 * 60.0 + (v13 * v9) * 3600.0);
    }
  }

  return v6 == 2;
}

- (id)_dateTimeSubsecOriginalForSyndicationProperties
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DB28];
  v13[0] = *MEMORY[0x1E696D9B0];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:v3];

  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0.%@", v8];
    [v10 doubleValue];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_dateTimeOffsetOriginalForSyndicationProperties
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DAA0];
  v13[0] = *MEMORY[0x1E696D9B0];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:v3];

  if (v8)
  {
    v12 = 0.0;
    v9 = [(PFMetadata *)self _convertTimeZoneOffsetString:v8 toSeconds:&v12];
    v10 = 0;
    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_dateTimeOriginalForSyndicationProperties
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696D998];
  v11[0] = *MEMORY[0x1E696D9B0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:v3];

  if (v8)
  {
    v9 = PFDateFromString(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_computeSpeed:(id)a3
{
  v13 = a3;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC58] fromProperties:?];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC60] fromProperties:v13];
    v9 = v8;
    if (v8)
    {
      if ([v8 isEqualToString:@"K"])
      {
        v10 = 0.277777778;
      }

      else if ([v9 isEqualToString:@"M"])
      {
        v10 = 0.44704;
      }

      else
      {
        v11 = [v9 isEqualToString:@"N"];
        v10 = 0.51444;
        if (!v11)
        {
          v10 = 1.0;
        }
      }
    }

    else
    {
      v10 = 1.0;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * v10];
    [(PFMetadata *)self setSpeed:v12];
  }
}

- (void)_computeAlttitude:(id)a3
{
  v13 = a3;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DB88] fromProperties:?];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DB90] fromProperties:v13];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 integerValue];
      if (v7 > 0.0 && v10 == 1)
      {
        v7 = -v7;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [(PFMetadata *)self setAltitude:v12];
  }
}

- (void)_computeGPSTimeStamp:(id)a3
{
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DC70];
  v6 = a3;
  v14 = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:v5 fromProperties:v6];
  v7 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DBA8] fromProperties:v6];

  if (v7)
  {
    v8 = v14 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, v14];
    v10 = PFGMTTimeZone();
    v11 = PFDateFromStringTimeZoneFormat(v9, v10, @"yyyy:MM:dd HH:mm:ss.SSSS");

    if (!v11)
    {
      v12 = PFGMTTimeZone();
      v11 = PFDateFromStringTimeZoneFormat(v9, v12, 0);
    }

    gpsDateTime = self->_gpsDateTime;
    self->_gpsDateTime = v11;
  }
}

- (void)_computeLattitudeLongitude:(id)a3
{
  v25 = a3;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC18] fromProperties:v25];
  v5 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC28] fromProperties:v25];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v4 doubleValue];
    v9 = v8;
    [v6 doubleValue];
    v11 = v10;
    v27.latitude = v9;
    v27.longitude = v11;
    if (CLLocationCoordinate2DIsValid(v27))
    {
      v12 = v9 != 0.0;
      if (v11 != 0.0)
      {
        v12 = 1;
      }

      if (v12 && (v9 != 40.0 || v11 != -100.0))
      {
        [v4 doubleValue];
        v15 = v14;
        v16 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC20] fromProperties:v25];
        v17 = v16;
        if (v16 && ([v16 isEqualToString:@"S"] & (v15 > 0.0)) != 0)
        {
          v15 = -v15;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
        latitude = self->_latitude;
        self->_latitude = v18;

        [v6 doubleValue];
        v21 = v20;
        v22 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC30] fromProperties:v25];

        if (v22 && ([v22 isEqualToString:@"W"] & (v21 > 0.0)) != 0)
        {
          v21 = -v21;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
        longitude = self->_longitude;
        self->_longitude = v23;
      }
    }
  }
}

- (void)computeGPSValues
{
  v3 = [(PFMetadata *)self _makeGPSProperties];
  [(PFMetadata *)self _computeLattitudeLongitude:v3];
  [(PFMetadata *)self _computeGPSTimeStamp:v3];
  [(PFMetadata *)self _computeAlttitude:v3];
  [(PFMetadata *)self _computeSpeed:v3];
}

- (void)_computeGPSLocation
{
  v25 = [(PFMetadata *)self latitude];
  v3 = [(PFMetadata *)self longitude];
  if (v25 && v3)
  {
    [v25 doubleValue];
    v5 = v4;
    [v3 doubleValue];
    v7 = v6;
    v8 = [(PFMetadata *)self gpsHPositioningError];
    [v8 doubleValue];
    v10 = v9;

    if (v10 == 0.0)
    {
      v10 = -1.0;
    }

    v11 = objc_alloc(MEMORY[0x1E6985C40]);
    v12 = [(PFMetadata *)self altitude];
    [v12 doubleValue];
    v14 = v13;
    v15 = [(PFMetadata *)self imageDirection];
    [v15 doubleValue];
    v17 = v16;
    v18 = [(PFMetadata *)self speed];
    [v18 doubleValue];
    v20 = v19;
    v21 = [(PFMetadata *)self gpsDateTime];
    v22 = v21;
    if (!v21)
    {
      v22 = [(PFMetadata *)self creationDate];
    }

    v23 = [v11 initWithCoordinate:v22 altitude:v5 horizontalAccuracy:v7 verticalAccuracy:v14 course:v10 speed:0.0 timestamp:{v17, v20}];
    gpsLocation = self->_gpsLocation;
    self->_gpsLocation = v23;

    if (!v21)
    {
    }
  }
}

- (void)_computeUnqualifiedDateFromDateString:(id)a3 subSecondString:(id)a4
{
  v30 = a3;
  v7 = a4;
  if (v30)
  {
    objc_storeStrong(&self->_creationDateString, a3);
    v8 = PFGMTTimeZone();
    v9 = PFDateFromStringTimeZoneFormat(v30, v8, 0);

    self->_creationDateSource = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PFMetadata *)self gpsDateTime];
  v11 = v10;
  if (!v9 && v10)
  {
    v12 = PFStringFromDateTimeZoneFormat(v10, self->_timeZone, 0);
    creationDateString = self->_creationDateString;
    self->_creationDateString = v12;

    v9 = PFDateFromGMTDateTimeZone(v11, self->_timeZone);
    self->_creationDateSource = 2;
  }

  if (v9)
  {
    if (v7)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0.%@", v7];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v9 dateByAddingTimeInterval:v16];

      v9 = v17;
    }

    v18 = PFGMTDateFromDateTimeZone(v9, self->_timeZone);
    utcCreationDate = self->_utcCreationDate;
    self->_utcCreationDate = v18;
  }

  v20 = self->_utcCreationDate;
  if (v20 || (-[PFMetadata fileCreationDate](self, "fileCreationDate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = self->_utcCreationDate, self->_utcCreationDate = v21, v22, [MEMORY[0x1E695DFE8] localTimeZone], v23 = objc_claimAutoreleasedReturnValue(), v24 = self->_timeZone, self->_timeZone = v23, v24, self->_creationDateSource = 3, (v20 = self->_utcCreationDate) != 0))
  {
    timeZone = self->_timeZone;
    if (timeZone)
    {
      v26 = PFDateFromGMTDateTimeZone(v20, timeZone);
      creationDate = self->_creationDate;
      self->_creationDate = v26;

      if (!self->_creationDateString)
      {
        v28 = PFStringFromDate(self->_creationDate);
        v29 = self->_creationDateString;
        self->_creationDateString = v28;
      }
    }
  }
}

- (void)_computeTimeZoneFromString:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 componentsSeparatedByString:@":"];
    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndex:0];
      [v7 doubleValue];
      v9 = v8;
      v10 = v8;

      if (v10 >= 0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = -1.0;
      }

      v12 = (v11 * v9);
      v13 = [v6 objectAtIndex:1];
      [v13 doubleValue];
      v15 = v14;

      v16 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:(v11 * ((3600 * v12) + v15 * 60.0))];
      timeZone = self->_timeZone;
      self->_timeZone = v16;
    }

    else
    {
      v18 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
      {
        v32 = 138412290;
        v33 = v5;
        _os_log_debug_impl(&dword_1B35C1000, v18, OS_LOG_TYPE_DEBUG, "ERROR: timezone offset string has invalid format (%@).", &v32, 0xCu);
      }
    }
  }

  if (!self->_timeZone)
  {
    if ((self->_options & 0x80) != 0)
    {
      goto LABEL_18;
    }

    v19 = [(PFMetadata *)self longitude];
    v20 = [(PFMetadata *)self latitude];
    v21 = v20;
    if (v19 && v20)
    {
      [v20 doubleValue];
      v23 = v22;
      [v19 doubleValue];
      v25 = CLLocationCoordinate2DMake(v23, v24);
      v26 = [(PFMetadata *)self timeZoneLookup];
      v27 = [v26 timeZoneNameForCoordinate:{v25.latitude, v25.longitude}];

      if (v27)
      {
        v28 = [MEMORY[0x1E695DFE8] timeZoneWithName:v27];
        v29 = self->_timeZone;
        self->_timeZone = v28;
      }
    }

    if (!self->_timeZone)
    {
LABEL_18:
      v30 = [MEMORY[0x1E695DFE8] localTimeZone];
      v31 = self->_timeZone;
      self->_timeZone = v30;
    }
  }
}

- (void)_computeSubSecondString:(id *)a3 timeZoneOffsetString:(id *)a4 unqualifiedDateString:(id *)a5 fromProperties:(id)a6
{
  v18 = a6;
  v10 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696D9B0] fromProperties:?];
  v11 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696D998] fromProperties:v10];
  *a5 = v11;
  typeVerifier = self->_typeVerifier;
  if (v11)
  {
    *a3 = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:*MEMORY[0x1E696DB28] fromProperties:v10];
    v13 = self->_typeVerifier;
    v14 = MEMORY[0x1E696DAA0];
LABEL_5:
    *a4 = [(PFMetadataTypeVerifier *)v13 valueForKey:*v14 fromProperties:v10];
    goto LABEL_6;
  }

  v15 = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:*MEMORY[0x1E696D990] fromProperties:v10];
  *a5 = v15;
  v16 = self->_typeVerifier;
  if (v15)
  {
    *a3 = [(PFMetadataTypeVerifier *)v16 valueForKey:*MEMORY[0x1E696DB20] fromProperties:v10];
    v13 = self->_typeVerifier;
    v14 = MEMORY[0x1E696DA90];
    goto LABEL_5;
  }

  v17 = [(PFMetadataTypeVerifier *)v16 valueForKey:*MEMORY[0x1E696DF28] fromProperties:v18];
  *a5 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DF20] fromProperties:v17];

LABEL_6:
}

- (void)computeDateTimeValues
{
  v3 = [(PFMetadata *)self _makeDateTimeProperties];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [(PFMetadata *)self _computeSubSecondString:&v9 timeZoneOffsetString:&v8 unqualifiedDateString:&v7 fromProperties:v3];
  v4 = v9;
  v5 = v8;
  v6 = v7;
  [(PFMetadata *)self _computeTimeZoneFromString:v5];
  [(PFMetadata *)self _computeUnqualifiedDateFromDateString:v6 subSecondString:v4];
}

- (void)_computeOrientationValue
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadata *)self _makeGeometryProperties];
  v4 = [(PFMetadata *)self typeVerifier];
  v5 = [v4 valueForKey:*MEMORY[0x1E696DE78] fromProperties:v3];

  if (!v5)
  {
    v6 = [(PFMetadata *)self typeVerifier];
    v7 = *MEMORY[0x1E696DF58];
    v12[0] = *MEMORY[0x1E696DF28];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v8 componentsJoinedByString:@"."];
    v5 = [v6 valueForKeyPath:v9 fromProperties:v3];
  }

  v10 = [v5 integerValue];
  if ((v10 - 1) >= 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  self->_orientation = v11;
}

- (void)_computePixelWidthAndHeightValue
{
  v50[2] = *MEMORY[0x1E69E9840];
  v3 = [(PFMetadata *)self _makeGeometryProperties];
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DED8] fromProperties:v3];
  [v4 floatValue];
  v6 = v5;

  v7 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DEC8] fromProperties:v3];
  [v7 floatValue];
  v9 = v8;

  if (v6 != 0.0 && v9 != 0.0 || (v10 = *MEMORY[0x1E696DAA8], -[PFMetadataTypeVerifier valueForKey:fromProperties:](self->_typeVerifier, "valueForKey:fromProperties:", *MEMORY[0x1E696DAA8], v3), v11 = objc_claimAutoreleasedReturnValue(), [v11 floatValue], v6 = v12, v11, v13 = *MEMORY[0x1E696DAB0], -[PFMetadataTypeVerifier valueForKey:fromProperties:](self->_typeVerifier, "valueForKey:fromProperties:", *MEMORY[0x1E696DAB0], v3), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "floatValue"), v9 = v15, v14, v6 != 0.0) && v9 != 0.0)
  {
    Width = v6;
    Height = v9;
    goto LABEL_6;
  }

  typeVerifier = self->_typeVerifier;
  v50[0] = *MEMORY[0x1E696D9B0];
  v23 = v50[0];
  v50[1] = v10;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v25 = [v24 componentsJoinedByString:@"."];
  v26 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v25 fromProperties:v3];
  [v26 floatValue];
  v28 = v27;
  Width = v27;

  v29 = self->_typeVerifier;
  v49[0] = v23;
  v49[1] = v13;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v31 = [v30 componentsJoinedByString:@"."];
  v32 = [(PFMetadataTypeVerifier *)v29 valueForKeyPath:v31 fromProperties:v3];
  [v32 floatValue];
  v34 = v33;
  Height = v33;

  if (v28 == 0.0 || v34 == 0.0)
  {
    v35 = [(PFMetadata *)self imageSource];
    if (v35)
    {
      goto LABEL_10;
    }

    v38 = [(PFMetadata *)self fileURL];

    if (!v38)
    {
      goto LABEL_6;
    }

    v39 = [(PFMetadata *)self fileURL];
    v47 = *MEMORY[0x1E696DFE8];
    v48 = MEMORY[0x1E695E118];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v35 = CGImageSourceCreateWithURL(v39, v40);

    if (v35)
    {
      CFAutorelease(v35);
LABEL_10:
      v36 = +[PFMetadataImage defaultOptionsForCGImageSource];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v35, 0, v36);

      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        CGImageRelease(ImageAtIndex);
      }

      goto LABEL_6;
    }

    v41 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      v42 = v41;
      v43 = [(PFMetadata *)self fileURL];
      v44 = [v43 path];
      v45 = 138412290;
      v46 = v44;
      _os_log_error_impl(&dword_1B35C1000, v42, OS_LOG_TYPE_ERROR, "Unable to create image source for %@", &v45, 0xCu);
    }
  }

LABEL_6:
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:Width];
  pixelWidth = self->_pixelWidth;
  self->_pixelWidth = v18;

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:Height];
  pixelHeight = self->_pixelHeight;
  self->_pixelHeight = v20;
}

- (BOOL)isLoopingVideo
{
  if ([(PFMetadata *)self isAutoloop])
  {
    return 1;
  }

  return [(PFMetadata *)self isMirror];
}

- (BOOL)isLongExposure
{
  v2 = [(PFMetadata *)self playbackVariation];
  v3 = [v2 unsignedIntegerValue] == 3;

  return v3;
}

- (BOOL)isMirror
{
  v2 = [(PFMetadata *)self playbackVariation];
  v3 = [v2 unsignedIntegerValue] == 2;

  return v3;
}

- (BOOL)isAutoloop
{
  v2 = [(PFMetadata *)self playbackVariation];
  v3 = [v2 unsignedIntegerValue] == 1;

  return v3;
}

- (NSNumber)durationTimeInterval
{
  memset(&v4[1], 0, sizeof(CMTime));
  [(PFMetadata *)self duration];
  v2 = 0;
  if (v4[1].flags)
  {
    v4[0] = v4[1];
    v2 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(v4)];
  }

  return v2;
}

- (NSString)defaultProfileName
{
  v2 = [(PFMetadata *)self profileName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"sRGB IEC61966-2.1";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)_addMoviePropertiesToSyndicationProperties:(id)a3
{
  v4 = a3;
  v5 = [(PFMetadata *)self videoDynamicRange];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"videoDynamicRange"];
  }

  if ([(PFMetadata *)self isCinematicVideo])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isCinematicVideo](self, "isCinematicVideo")}];
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:@"videoContainsCinematicData"];
    }
  }

  [(PFMetadata *)self duration];
  v7 = [(PFMetadata *)self nominalFrameRate];
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"framesPerSecond"];
  }

  v8 = [(PFMetadata *)self firstVideoTrackCodecString];
  if (v8)
  {
    [v4 setObject:v8 forKeyedSubscript:@"fourCharCode"];
  }

  v9 = [(PFMetadata *)self captureMode];
  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"com.apple.photos.captureMode"];
  }

  v10 = [(PFMetadata *)self montageString];
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"isMontage"];
  }

  v11 = [(PFMetadata *)self audioDataRate];
  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:@"estimatedDataRate"];
  }

  v12 = [(PFMetadata *)self audioTrackFormat];
  if (v12)
  {
    [v4 setObject:v12 forKeyedSubscript:@"audioTrackFormat"];
  }

  v13 = [(PFMetadata *)self audioSampleRate];
  if (v13)
  {
    [v4 setObject:v13 forKeyedSubscript:@"audioTrackSampleRate"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isProRes](self, "isProRes")}];
  if (v14)
  {
    [v4 setObject:v14 forKeyedSubscript:@"isProRes"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isTimelapse](self, "isTimelapse")}];
  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"Time-lapse"];
  }
}

- (void)_addImageSmartStylePropertiesToSyndicationProperties:(id)a3
{
  v13 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithShort:{-[PFMetadata smartStyleCast](self, "smartStyleCast")}];
  if (v4)
  {
    [v13 setObject:v4 forKeyedSubscript:@"smartStyleCast"];
  }

  v5 = [(PFMetadata *)self smartStyleIntensity];
  if (v5)
  {
    [v13 setObject:v5 forKeyedSubscript:@"smartStyleIntensity"];
  }

  v6 = [(PFMetadata *)self smartStyleToneBias];
  if (v6)
  {
    [v13 setObject:v6 forKeyedSubscript:@"smartStyleToneBias"];
  }

  v7 = [(PFMetadata *)self smartStyleColorBias];
  if (v7)
  {
    [v13 setObject:v7 forKeyedSubscript:@"smartStyleColorBias"];
  }

  v8 = [(PFMetadata *)self smartStyleRenderingVersion];
  if (v8)
  {
    [v13 setObject:v8 forKeyedSubscript:@"smartStyleRenderingVersion"];
  }

  v9 = [(PFMetadata *)self smartStyleIsReversible];
  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:@"smartStyleIsReversible"];
  }

  v10 = [(PFMetadata *)self smartStyleExpectingReversibility];
  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:@"smartStyleExpectingReversibility"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasSmartStyle](self, "hasSmartStyle")}];
  if (v11)
  {
    [v13 setObject:v11 forKeyedSubscript:@"hasSmartStyle"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithShort:{-[PFMetadata smartStyleVideoCastValue](self, "smartStyleVideoCastValue")}];
  if (v12)
  {
    [v13 setObject:v12 forKeyedSubscript:@"smartStyleVideoCastValue"];
  }
}

- (void)_addImageGPSPropertiesToSyndicationProperties:(id)a3
{
  v11 = a3;
  v4 = [(PFMetadata *)self speed];
  if (v4 && *MEMORY[0x1E696DC58])
  {
    [v11 setObject:v4 forKeyedSubscript:?];
  }

  v5 = [(PFMetadata *)self speedRef];
  if (v5 && *MEMORY[0x1E696DC60])
  {
    [v11 setObject:v5 forKeyedSubscript:?];
  }

  v6 = [(PFMetadata *)self gpsDateTime];
  if (v6)
  {
    [v11 setObject:v6 forKeyedSubscript:@"gpsDateTime"];
  }

  v7 = [(PFMetadata *)self gpsHPositioningError];
  if (v7 && *MEMORY[0x1E696DC00])
  {
    [v11 setObject:v7 forKeyedSubscript:?];
  }

  v8 = [(PFMetadata *)self altitude];
  if (v8 && *MEMORY[0x1E696DB88])
  {
    [v11 setObject:v8 forKeyedSubscript:?];
  }

  v9 = [(PFMetadata *)self imageDirection];
  if (v9 && *MEMORY[0x1E696DC08])
  {
    [v11 setObject:v9 forKeyedSubscript:?];
  }

  v10 = [(PFMetadata *)self imageDirectionRef];
  if (v10 && *MEMORY[0x1E696DC10])
  {
    [v11 setObject:v10 forKeyedSubscript:?];
  }
}

- (void)_addImageLivePhotoPropertiesToSyndicationProperties:(id)a3
{
  v4 = a3;
  [(PFMetadata *)self duration];
  [(PFMetadata *)self stillImageDisplayTime];
  v5 = [(PFMetadata *)self livePhotoPairingIdentifier];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"livePhotoParingIdentifier"];
  }

  v6 = [(PFMetadata *)self playbackVariation];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"playbackVariation"];
  }
}

- (void)_addImageMiscPropertiesToSyndicationProperties:(id)a3
{
  v39 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isFrontFacingCamera](self, "isFrontFacingCamera")}];
  if (v4)
  {
    [v39 setObject:v4 forKeyedSubscript:@"kPFImagePropertyFrontFacingCamera"];
  }

  v5 = [(PFMetadata *)self focalLengthIn35mm];
  if (v5 && *MEMORY[0x1E696DA08])
  {
    [v39 setObject:v5 forKeyedSubscript:?];
  }

  v6 = [(PFMetadata *)self digitalZoomRatio];
  if (v6 && *MEMORY[0x1E696D9C0])
  {
    [v39 setObject:v6 forKeyedSubscript:?];
  }

  v7 = [(PFMetadata *)self profileName];
  if (v7 && *MEMORY[0x1E696DEF0])
  {
    [v39 setObject:v7 forKeyedSubscript:?];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFMetadata photoProcessingFlags](self, "photoProcessingFlags")}];
  if (v8)
  {
    [v39 setObject:v8 forKeyedSubscript:@"photoProcessingFlags"];
  }

  if ([(PFMetadata *)self hasCustomRendered])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata customRendered](self, "customRendered")}];
    if (v9 && *MEMORY[0x1E696D988])
    {
      [v39 setObject:v9 forKeyedSubscript:?];
    }
  }

  v10 = [(PFMetadata *)self fNumber];
  if (v10 && *MEMORY[0x1E696D9E8])
  {
    [v39 setObject:v10 forKeyedSubscript:?];
  }

  v11 = [(PFMetadata *)self exposureBias];
  if (v11 && *MEMORY[0x1E696D9C8])
  {
    [v39 setObject:v11 forKeyedSubscript:?];
  }

  v12 = [(PFMetadata *)self flashValue];
  if (v12 && *MEMORY[0x1E696D9F0])
  {
    [v39 setObject:v12 forKeyedSubscript:?];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata flashFired](self, "flashFired")}];
  if (v13)
  {
    [v39 setObject:v13 forKeyedSubscript:@"flashFired"];
  }

  v14 = [(PFMetadata *)self flashCompensation];
  if (v14 && *MEMORY[0x1E696D8C0])
  {
    [v39 setObject:v14 forKeyedSubscript:?];
  }

  v15 = [(PFMetadata *)self focalLength];
  if (v15 && *MEMORY[0x1E696DA18])
  {
    [v39 setObject:v15 forKeyedSubscript:?];
  }

  v16 = [(PFMetadata *)self iso];
  if (v16 && *MEMORY[0x1E696DA28])
  {
    [v39 setObject:v16 forKeyedSubscript:?];
  }

  v17 = [(PFMetadata *)self meteringMode];
  if (v17 && *MEMORY[0x1E696DA80])
  {
    [v39 setObject:v17 forKeyedSubscript:?];
  }

  v18 = [(PFMetadata *)self exposureTime];
  if (v18 && *MEMORY[0x1E696D9E0])
  {
    [v39 setObject:v18 forKeyedSubscript:?];
  }

  v19 = [(PFMetadata *)self whiteBalance];
  if (v19 && *MEMORY[0x1E696DB50])
  {
    [v39 setObject:v19 forKeyedSubscript:?];
  }

  v20 = [(PFMetadata *)self lightSource];
  if (v20 && *MEMORY[0x1E696DA68])
  {
    [v39 setObject:v20 forKeyedSubscript:?];
  }

  v21 = [(PFMetadata *)self whiteBalanceIndex];
  if (v21 && *MEMORY[0x1E696D440])
  {
    [v39 setObject:v21 forKeyedSubscript:?];
  }

  v22 = [(PFMetadata *)self GIFDelayTime];
  if (v22 && *MEMORY[0x1E696DB68])
  {
    [v39 setObject:v22 forKeyedSubscript:?];
  }

  v23 = [(PFMetadata *)self HEICSDelayTime];
  if (v23 && *MEMORY[0x1E696DD18])
  {
    [v39 setObject:v23 forKeyedSubscript:?];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isHDR](self, "isHDR")}];
  if (v24)
  {
    [v39 setObject:v24 forKeyedSubscript:@"isHDR"];
  }

  v25 = [(PFMetadata *)self hdrGain];
  if (v25)
  {
    [v39 setObject:v25 forKeyedSubscript:@"hdrGain"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasHDRGainMap](self, "hasHDRGainMap")}];
  if (v26)
  {
    [v39 setObject:v26 forKeyedSubscript:@"hasHDRGainMap"];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isPhotoBooth](self, "isPhotoBooth")}];
  if (v27)
  {
    [v39 setObject:v27 forKeyedSubscript:@"isPhotoBooth"];
  }

  v28 = [(PFMetadata *)self userComment];
  if (v28 && *MEMORY[0x1E696DB40])
  {
    [v39 setObject:v28 forKeyedSubscript:?];
  }

  v29 = [(PFMetadata *)self burstUuid];
  if (v29)
  {
    [v39 setObject:v29 forKeyedSubscript:@"burstUuid"];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasISOGainMap](self, "hasISOGainMap")}];
  if (v30)
  {
    [v39 setObject:v30 forKeyedSubscript:@"hasISOGainMap"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isAnimatedImage](self, "isAnimatedImage")}];
  if (v31)
  {
    [v39 setObject:v31 forKeyedSubscript:@"isAnimatedImage"];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFMetadata photoCaptureFlags](self, "photoCaptureFlags")}];
  if (v32)
  {
    [v39 setObject:v32 forKeyedSubscript:@"stillImageCaptureFlags"];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata cameraUsedForCapture](self, "cameraUsedForCapture")}];
  if (v33)
  {
    [v39 setObject:v33 forKeyedSubscript:@"cameraUsedForCapture"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasSpatialAudio](self, "hasSpatialAudio")}];
  if (v34)
  {
    [v39 setObject:v34 forKeyedSubscript:@"hasSpatialAudio"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isAlchemist](self, "isAlchemist")}];
  if (v35)
  {
    [v39 setObject:v35 forKeyedSubscript:@"isAlchemist"];
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isThreeImageStereoHEIC](self, "isThreeImageStereoHEIC")}];
  if (v36)
  {
    [v39 setObject:v36 forKeyedSubscript:@"isThreeImageStereoHEIC"];
  }

  v37 = [(PFMetadata *)self generativeAIImageType];
  if (v37)
  {
    [v39 setObject:v37 forKeyedSubscript:@"generativeAIImageType"];
  }

  v38 = [(PFMetadata *)self credit];
  if (v38 && *MEMORY[0x1E696DD80])
  {
    [v39 setObject:v38 forKeyedSubscript:?];
  }
}

- (void)_addImageSemanticStylePropertiesToSyndicationProperties:(id)a3
{
  v8 = a3;
  v4 = [(PFMetadata *)self semanticStyleToneBias];
  if (v4)
  {
    [v8 setObject:v4 forKeyedSubscript:@"semanticStyleToneBias"];
  }

  v5 = [(PFMetadata *)self semanticStyleWarmthBias];
  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:@"semanticStyleWarmthBias"];
  }

  v6 = [(PFMetadata *)self semanticStyleRenderingVersion];
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:@"semanticStyleRenderingVersion"];
  }

  v7 = [(PFMetadata *)self semanticStylePreset];
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"semanticStylePreset"];
  }
}

- (void)_addImagePropertiesToSyndicationProperties:(id)a3
{
  v4 = a3;
  [(PFMetadata *)self _addImageSemanticStylePropertiesToSyndicationProperties:v4];
  [(PFMetadata *)self _addImageLivePhotoPropertiesToSyndicationProperties:v4];
  [(PFMetadata *)self _addImageMiscPropertiesToSyndicationProperties:v4];
  [(PFMetadata *)self _addImageGPSPropertiesToSyndicationProperties:v4];
  [(PFMetadata *)self _addImageSmartStylePropertiesToSyndicationProperties:v4];
}

- (void)_addCommonPropertiesToSyndicationProperties:(id)a3
{
  v24 = a3;
  v4 = [(PFMetadata *)self contentType];
  v5 = [v4 identifier];
  if (v5)
  {
    [v24 setObject:v5 forKeyedSubscript:@"uti"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PFMetadata fileSize](self, "fileSize")}];
  if (v6 && *MEMORY[0x1E696A3B8])
  {
    [v24 setObject:v6 forKeyedSubscript:?];
  }

  v7 = [(PFMetadata *)self originalFileName];
  if (v7)
  {
    [v24 setObject:v7 forKeyedSubscript:@"originalFilename"];
  }

  v8 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self exifPixelSize];
  v9 = [v8 numberWithDouble:?];
  if (v9 && *MEMORY[0x1E696DED8])
  {
    [v24 setObject:v9 forKeyedSubscript:?];
  }

  v10 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self exifPixelSize];
  v12 = [v10 numberWithDouble:v11];
  if (v12 && *MEMORY[0x1E696DEC8])
  {
    [v24 setObject:v12 forKeyedSubscript:?];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata orientation](self, "orientation")}];
  if (v13 && *MEMORY[0x1E696DE78])
  {
    [v24 setObject:v13 forKeyedSubscript:?];
  }

  v14 = [(PFMetadata *)self lensModel];
  if (v14 && *MEMORY[0x1E696DA58])
  {
    [v24 setObject:v14 forKeyedSubscript:?];
  }

  v15 = [(PFMetadata *)self lensMake];
  if (v15 && *MEMORY[0x1E696DA50])
  {
    [v24 setObject:v15 forKeyedSubscript:?];
  }

  v16 = [(PFMetadata *)self _dateTimeOriginalForSyndicationProperties];
  if (v16)
  {
    [v24 setObject:v16 forKeyedSubscript:@"creationDate"];
  }

  v17 = [(PFMetadata *)self _dateTimeOffsetOriginalForSyndicationProperties];
  if (v17)
  {
    [v24 setObject:v17 forKeyedSubscript:@"timeZoneOffset"];
  }

  v18 = [(PFMetadata *)self _dateTimeSubsecOriginalForSyndicationProperties];
  if (v18 && *MEMORY[0x1E696DB28])
  {
    [v24 setObject:v18 forKeyedSubscript:?];
  }

  v19 = [(PFMetadata *)self cameraModel];
  if (v19 && *MEMORY[0x1E696DF50])
  {
    [v24 setObject:v19 forKeyedSubscript:?];
  }

  v20 = [(PFMetadata *)self cameraMake];
  if (v20 && *MEMORY[0x1E696DF48])
  {
    [v24 setObject:v20 forKeyedSubscript:?];
  }

  v21 = [(PFMetadata *)self longitude];
  if (v21 && *MEMORY[0x1E696DC28])
  {
    [v24 setObject:v21 forKeyedSubscript:?];
  }

  v22 = [(PFMetadata *)self latitude];
  if (v22 && *MEMORY[0x1E696DC18])
  {
    [v24 setObject:v22 forKeyedSubscript:?];
  }

  v23 = [(PFMetadata *)self spatialOverCaptureIdentifier];
  if (v23)
  {
    [v24 setObject:v23 forKeyedSubscript:@"socIdentifier"];
  }
}

- (NSDictionary)syndicationProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PFMetadata *)self _addCommonPropertiesToSyndicationProperties:v3];
  [(PFMetadata *)self _addImagePropertiesToSyndicationProperties:v3];
  [(PFMetadata *)self _addMoviePropertiesToSyndicationProperties:v3];

  return v3;
}

- (NSString)originalFileName
{
  v2 = [(PFMetadata *)self fileURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (NSNumber)speed
{
  speed = self->_speed;
  if (!speed)
  {
    [(PFMetadata *)self computeGPSValues];
    speed = self->_speed;
  }

  return speed;
}

- (NSNumber)altitude
{
  altitude = self->_altitude;
  if (!altitude)
  {
    [(PFMetadata *)self computeGPSValues];
    altitude = self->_altitude;
  }

  return altitude;
}

- (NSNumber)latitude
{
  latitude = self->_latitude;
  if (!latitude)
  {
    [(PFMetadata *)self computeGPSValues];
    latitude = self->_latitude;
  }

  return latitude;
}

- (NSNumber)longitude
{
  longitude = self->_longitude;
  if (!longitude)
  {
    [(PFMetadata *)self computeGPSValues];
    longitude = self->_longitude;
  }

  return longitude;
}

- (NSDate)gpsDateTime
{
  gpsDateTime = self->_gpsDateTime;
  if (!gpsDateTime)
  {
    [(PFMetadata *)self computeGPSValues];
    gpsDateTime = self->_gpsDateTime;
  }

  return gpsDateTime;
}

- (CLLocation)gpsLocation
{
  gpsLocation = self->_gpsLocation;
  if (!gpsLocation)
  {
    [(PFMetadata *)self _computeGPSLocation];
    gpsLocation = self->_gpsLocation;
  }

  return gpsLocation;
}

- (NSString)creationDateString
{
  creationDateString = self->_creationDateString;
  if (!creationDateString)
  {
    [(PFMetadata *)self computeDateTimeValues];
    creationDateString = self->_creationDateString;
  }

  return creationDateString;
}

- (NSNumber)timeZoneOffset
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(PFMetadata *)self timeZone];
  v5 = [(PFMetadata *)self creationDate];
  v6 = [v3 numberWithInteger:{objc_msgSend(v4, "secondsFromGMTForDate:", v5)}];

  return v6;
}

- (NSString)timeZoneName
{
  v2 = [(PFMetadata *)self timeZone];
  v3 = [v2 name];

  return v3;
}

- (NSTimeZone)timeZone
{
  timeZone = self->_timeZone;
  if (!timeZone)
  {
    [(PFMetadata *)self computeDateTimeValues];
    timeZone = self->_timeZone;
  }

  return timeZone;
}

- (NSDate)creationDate
{
  creationDate = self->_creationDate;
  if (!creationDate)
  {
    [(PFMetadata *)self computeDateTimeValues];
    creationDate = self->_creationDate;
  }

  return creationDate;
}

- (int64_t)creationDateSource
{
  if (!self->_creationDate)
  {
    [(PFMetadata *)self computeDateTimeValues];
  }

  return self->_creationDateSource;
}

- (NSDate)utcCreationDate
{
  utcCreationDate = self->_utcCreationDate;
  if (!utcCreationDate)
  {
    [(PFMetadata *)self computeDateTimeValues];
    utcCreationDate = self->_utcCreationDate;
  }

  return utcCreationDate;
}

- (int64_t)orientation
{
  result = self->_orientation;
  if (!result)
  {
    [(PFMetadata *)self _computeOrientationValue];
    return self->_orientation;
  }

  return result;
}

- (CGSize)orientedPixelSize
{
  v3 = [(PFMetadata *)self orientation];
  [(PFMetadata *)self exifPixelSize];
  if ((v3 - 5) >= 4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ((v3 - 5) < 4)
  {
    v5 = v4;
  }

  v7 = v6;
  result.height = v5;
  result.width = v7;
  return result;
}

- (CGSize)exifPixelSize
{
  v3 = [(PFMetadata *)self pixelWidth];
  [v3 floatValue];
  v5 = v4;
  v6 = [(PFMetadata *)self pixelHeight];
  [v6 floatValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)pixelHeight
{
  pixelHeight = self->_pixelHeight;
  if (!pixelHeight)
  {
    [(PFMetadata *)self _computePixelWidthAndHeightValue];
    pixelHeight = self->_pixelHeight;
  }

  return pixelHeight;
}

- (id)pixelWidth
{
  pixelWidth = self->_pixelWidth;
  if (!pixelWidth)
  {
    [(PFMetadata *)self _computePixelWidthAndHeightValue];
    pixelWidth = self->_pixelWidth;
  }

  return pixelWidth;
}

- (UTType)contentType
{
  v16 = *MEMORY[0x1E69E9840];
  contentType = self->_contentType;
  if (!contentType)
  {
    if ((self->_options & 0x80) != 0 || (v4 = self->_fileURL) == 0)
    {
      contentType = 0;
    }

    else
    {
      v11 = 0;
      v5 = [PFUniformTypeUtilities typeForURL:v4 error:&v11];
      v6 = v11;
      v7 = self->_contentType;
      self->_contentType = v5;

      if (!self->_contentType)
      {
        v8 = metadataLog;
        if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
        {
          fileURL = self->_fileURL;
          *buf = 138412546;
          v13 = fileURL;
          v14 = 2112;
          v15 = v6;
        }
      }

      contentType = self->_contentType;
    }
  }

  return contentType;
}

- (NSDate)fileModificationDate
{
  v2 = [(PFMetadata *)self fileSystemProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A350]];

  return v3;
}

- (NSDate)fileCreationDate
{
  v3 = [(PFMetadata *)self fileSystemProperties];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PFMetadata *)self fileSystemProperties];
    v6 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  }

  return v6;
}

- (unint64_t)fileSize
{
  v2 = [(PFMetadata *)self fileSystemProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (NSDictionary)fileSystemProperties
{
  fileSystemProperties = self->_fileSystemProperties;
  if (fileSystemProperties || (self->_options & 0x80) != 0)
  {
    v10 = fileSystemProperties;
  }

  else
  {
    v4 = [(PFMetadata *)self fileURL];
    if (v4)
    {
      v5 = [(PFMetadata *)self fileURL];
      v23 = 0;
      v6 = [MEMORY[0x1E695DFF8] bookmarkDataWithContentsOfURL:v5 error:&v23];
      v7 = v23;
      if (v6)
      {
        v22 = v7;
        v8 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v6 options:768 relativeToURL:v5 bookmarkDataIsStale:0 error:&v22];
        v9 = v22;

        v7 = v9;
      }

      else
      {
        v8 = v5;
      }

      if (v8)
      {
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [v8 path];
        v21 = 0;
        v4 = [v12 attributesOfItemAtPath:v13 error:&v21];

        v14 = *MEMORY[0x1E696A308];
        v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
        v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-*MEMORY[0x1E695E460]];
        if ([v15 isEqualToDate:v16])
        {
          v17 = [v4 mutableCopy];
          v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
          [v17 setObject:v18 forKeyedSubscript:v14];

          v4 = v17;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v19 = [v4 copy];
    v20 = self->_fileSystemProperties;
    self->_fileSystemProperties = v19;

    v10 = self->_fileSystemProperties;
  }

  return v10;
}

- (NSNumber)srlCompensationValue
{
  v2 = [(PFMetadata *)self nrfSrlStatus];
  v3 = v2;
  if (v2 && (v4 = [v2 unsignedIntValue], v4 >= 0x80000001))
  {
    *&v5 = vcvts_n_f32_u32(v4, 8uLL);
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAnimatedImage
{
  v3 = [(PFMetadata *)self contentType];
  v4 = [v3 isEqual:*MEMORY[0x1E6982DE8]];
  if (v4)
  {
    v5 = [(PFMetadata *)self GIFDelayTime];
    if (v5)
    {
      v6 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v7 = [(PFMetadata *)self contentType];
  v8 = +[PFUniformTypeUtilities heicSequenceType];
  if ([v7 isEqual:v8])
  {
    v9 = [(PFMetadata *)self HEICSDelayTime];
    v6 = v9 != 0;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (PFTimeZoneLookup)timeZoneLookup
{
  cachedTimeZoneLookup = self->_cachedTimeZoneLookup;
  if (!cachedTimeZoneLookup)
  {
    v4 = objc_alloc_init(PFTimeZoneLookup);
    v5 = self->_cachedTimeZoneLookup;
    self->_cachedTimeZoneLookup = v4;

    v6 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B35C1000, v6, OS_LOG_TYPE_ERROR, "Initialialized PFMetadata without a PFTimeZoneLookup. It is better performance to use a cached instance.", v8, 2u);
    }

    cachedTimeZoneLookup = self->_cachedTimeZoneLookup;
  }

  return cachedTimeZoneLookup;
}

- (BOOL)configureWithMetadataPlist:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = PFMetadataPlistFilePath;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v4 fileURLWithPath:v7];
  fileURL = self->_fileURL;
  self->_fileURL = v8;

  v10 = [v6 objectForKeyedSubscript:PFMetadataPlistCreationDate];
  creationDate = self->_creationDate;
  self->_creationDate = v10;

  v12 = [v6 objectForKeyedSubscript:PFMetadataPlistFileSystemProperties];
  fileSystemProperties = self->_fileSystemProperties;
  self->_fileSystemProperties = v12;

  v14 = [v6 objectForKeyedSubscript:PFMetadataPlistSourceType];

  self->_sourceType = [v14 integerValue];
  return self->_sourceType != 0;
}

- (BOOL)isSameForURL:(id)a3 andOptions:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PFMetadata *)self fileURL];
  v8 = [v7 isEqual:v6];

  return v8 && (v4 & ~self->_options) == 0;
}

- (PFMetadata)initWithImageCaptureMovieProperties:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;

  v11 = [[PFMetadataImageCaptureMovieProperties alloc] initWithImageCaptureMovieProperties:v10 contentType:v9 timeZoneLookup:v8];
  return &v11->super;
}

- (PFMetadata)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;

  v10 = [[PFMetadataMovie alloc] initWithAVAsset:v9 options:v5 timeZoneLookup:v8];
  return &v10->super;
}

- (PFMetadata)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[PFMetadataMovie alloc] initWithAVProxyData:v6 timeZoneLookup:v7];
  if (!v8)
  {
    v8 = [[PFMetadataLegacyMovieProperties alloc] initWithAVProxyData:v6 timeZoneLookup:v7];
  }

  return &v8->super;
}

- (PFMetadata)initWithAVURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;

  v10 = [[PFMetadataMovie alloc] initWithAVURL:v9 options:v5 timeZoneLookup:v8];
  return &v10->super;
}

- (PFMetadata)initWithImageProperties:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;

  v13 = [[PFMetadataImage alloc] initWithImageProperties:v12 contentType:v11 options:v6 timeZoneLookup:v10];
  return &v13->super;
}

- (PFMetadata)initWithImageSourceProxyOrEncodedImagePropertyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;

  v11 = [[PFMetadataImage alloc] initWithImageSourceProxyOrEncodedImagePropertyData:v10 contentType:v9 timeZoneLookup:v8];
  return &v11->super;
}

- (PFMetadata)initWithImageSourceProxyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;

  v11 = [[PFMetadataImage alloc] initWithImageSourceProxyData:v10 contentType:v9 timeZoneLookup:v8];
  return &v11->super;
}

- (PFMetadata)initWithEncodedImagePropertyData:(id)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;

  v11 = [[PFMetadataImage alloc] initWithEncodedImagePropertyData:v10 contentType:v9 timeZoneLookup:v8];
  return &v11->super;
}

- (PFMetadata)initWithImageSource:(CGImageSource *)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v12 = a6;
  v13 = a4;

  v14 = [[PFMetadataImage alloc] initWithImageSource:a3 contentType:v13 options:v8 timeZoneLookup:v12 cacheImageSource:v7];
  return &v14->super;
}

- (PFMetadata)initWithImageData:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7 cacheImageData:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a5;
  v14 = a6;
  v15 = a4;
  v16 = a3;

  v17 = [[PFMetadataImage alloc] initWithImageData:v16 contentType:v15 options:v10 timeZoneLookup:v14 cacheImageSource:v9 cacheImageData:v8];
  return &v17->super;
}

- (PFMetadata)initWithImageURL:(id)a3 contentType:(id)a4 options:(unsigned __int16)a5 timeZoneLookup:(id)a6 cacheImageSource:(BOOL)a7 cacheImageData:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (!v15)
  {
    v21 = 0;
    v15 = [PFUniformTypeUtilities typeForURL:v14 error:&v21];
    v17 = v21;
    if (!v15)
    {
      v18 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v23 = v14;
        v24 = 2112;
        v25 = v17;
        _os_log_fault_impl(&dword_1B35C1000, v18, OS_LOG_TYPE_FAULT, "Failed to get a content type for URL '%@' (ERROR: %@)", buf, 0x16u);
      }
    }
  }

  v19 = [[PFMetadataImage alloc] initWithImageURL:v14 contentType:v15 options:v11 timeZoneLookup:v16 cacheImageSource:v9 cacheImageData:v8];
  return &v19->super;
}

- (PFMetadata)initWithContentType:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PFMetadata;
  v11 = [(PFMetadata *)&v17 init];
  if (v11)
  {
    if (initWithContentType_options_timeZoneLookup__onceToken[0] != -1)
    {
      dispatch_once(initWithContentType_options_timeZoneLookup__onceToken, &__block_literal_global_2913);
    }

    objc_storeStrong(&v11->_contentType, a3);
    v11->_options = a4;
    if (v10)
    {
      WeakRetained = v10;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&gDefaultTimeZoneLookup);
    }

    cachedTimeZoneLookup = v11->_cachedTimeZoneLookup;
    v11->_cachedTimeZoneLookup = WeakRetained;

    v14 = objc_alloc_init(PFMetadataTypeVerifier);
    typeVerifier = v11->_typeVerifier;
    v11->_typeVerifier = v14;
  }

  return v11;
}

uint64_t __57__PFMetadata_initWithContentType_options_timeZoneLookup___block_invoke()
{
  metadataLog = os_log_create("com.apple.photos.photosformats.pfmetadata", "PFMetadata");

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForLimitedPropertiesWithPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v6 = +[PFMetadataImage defaultOptionsForCGImageSource];
    v7 = CGImageSourceCreateWithURL(v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, v6);
      v10 = objc_alloc_init(PFTimeZoneLookup);
      if (v9)
      {
        v11 = [(PFMetadata *)self initWithImageProperties:v9 contentType:0 options:460 timeZoneLookup:v10];

        if (v11)
        {
          [(PFMetadata *)v11 setFileURL:v5];
        }
      }

      else
      {
        v11 = [(PFMetadata *)self initWithAVURL:v5 options:460 timeZoneLookup:v10];
      }

      CFRelease(v8);

      self = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_ERROR, "Expected path to be non-nil", v14, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (PFMetadata)initWithMetadataPlist:(id)a3 timeZoneLookup:(id)a4
{
  v6 = a3;
  v7 = PFMetadataPlistContentTypeIdentifier;
  v8 = a4;
  v9 = [v6 objectForKeyedSubscript:v7];
  v10 = [PFUniformTypeUtilities typeWithIdentifier:v9];

  v11 = [v6 objectForKeyedSubscript:PFMetadataPlistOptions];
  v12 = -[PFMetadata initWithContentType:options:timeZoneLookup:](self, "initWithContentType:options:timeZoneLookup:", v10, [v11 integerValue], v8);

  if (v12 && ![(PFMetadata *)v12 configureWithMetadataPlist:v6])
  {

    v12 = 0;
  }

  return v12;
}

- (PFMetadata)initWithPropertyListRepresentationData:(id)a3 timeZoneLookup:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v16 = 0;
  v8 = [PFMetadata propertyListObjectFromEncodedData:v7 expectedClass:objc_opt_class() options:0 error:&v16];

  v9 = v16;
  if (!v8)
  {
    v14 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_error_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_ERROR, "Failed to decode PFMetadata plist (%@)", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_19;
  }

  v10 = [v8 objectForKeyedSubscript:PFMetadataPlistSourceType];
  v11 = [v10 unsignedIntegerValue];

  v12 = 0;
  if (v11 > 5)
  {
    if (v11 > 8)
    {
      if (v11 != 9)
      {
        if (v11 == 10)
        {
          v13 = PFMetadataSyndication;
          goto LABEL_18;
        }

        if (v11 == 11)
        {
          v13 = PFMetadataImageCaptureMovieProperties;
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else if ((v11 - 6) >= 2)
    {
      if (v11 == 8)
      {
        v13 = PFMetadataLegacyMovieProperties;
LABEL_18:
        v12 = [[v13 alloc] initWithMetadataPlist:v8 timeZoneLookup:v6];
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v13 = PFMetadataMovie;
    goto LABEL_18;
  }

  if ((v11 - 1) < 5)
  {
    v13 = PFMetadataImage;
    goto LABEL_18;
  }

LABEL_19:

  return v12;
}

- (PFMetadata)initWithMediaURL:(id)a3 detail:(unsigned __int16)a4 timeZoneLookup:(id)a5 shouldCache:(BOOL)a6
{
  if (a4 == 1)
  {
    v6 = 460;
  }

  else
  {
    v6 = 12;
  }

  if (a4 == 2)
  {
    v7 = 13;
  }

  else
  {
    v7 = v6;
  }

  return [(PFMetadata *)self initWithMediaURL:a3 options:v7 timeZoneLookup:a5 shouldCache:a6];
}

- (PFMetadata)initWithSyndicationProperties:(id)a3
{
  v4 = a3;

  v5 = [[PFMetadataSyndication alloc] initWithSyndicationProperties:v4];
  return &v5->super;
}

- (PFMetadata)initWithMediaURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5 shouldCache:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v18 = 0;
    v12 = [PFUniformTypeUtilities typeForURL:v10 error:&v18];
    v13 = v18;
    if (v12)
    {
      if ([v12 conformsToType:*MEMORY[0x1E6982E30]])
      {
        v14 = [(PFMetadata *)self initWithImageURL:v10 contentType:v12 options:v8 timeZoneLookup:v11 cacheImageSource:v6 cacheImageData:v6];
LABEL_10:
        v15 = v14;
LABEL_12:

        goto LABEL_13;
      }

      if ([v12 conformsToType:*MEMORY[0x1E6982EE8]])
      {
        v14 = [(PFMetadata *)self initWithAVURL:v10 options:v8 timeZoneLookup:v11];
        goto LABEL_10;
      }
    }

    else
    {
      v16 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&dword_1B35C1000, v16, OS_LOG_TYPE_ERROR, "Couldn't determine UTI for URL '%@' (ERROR: %@)", buf, 0x16u);
      }
    }

    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (id)hdrGainMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    v2 = *MEMORY[0x1E6990AB0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)burstUuidMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    v2 = *MEMORY[0x1E69867B0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)photosFeatureFlagsMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    v2 = +[PFMetadata photosFeatureFlagsMetadataKey];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)photoProcessingFlagsMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    v2 = +[PFMetadata photoProcessingFlagsMetadataKey];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)playbackVariationMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    +[PFMetadata playbackVariationMetadataKey];
  }

  else
  {
    +[PFMetadata playbackVariationMetadataIdentifier];
  }
  v2 = ;

  return v2;
}

- (id)spatialOverCaptureIdentifierMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    +[PFMetadata spatialOverCaptureIdentifierMetadataKey];
  }

  else
  {
    +[PFMetadata spatialOverCaptureIdentifierMetadataIdentifier];
  }
  v2 = ;

  return v2;
}

- (id)livePhotoPairingIdentifierMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    +[PFMetadata livePhotoPairingIdentifierMetadataKey];
  }

  else
  {
    +[PFMetadata livePhotoPairingIdentifierMetadataIdentifier];
  }
  v2 = ;

  return v2;
}

- (id)renderOriginatingAssetIdentifierMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    +[PFMetadata renderOriginatingAssetIdentifierMetadataKey];
  }

  else
  {
    +[PFMetadata renderOriginatingAssetIdentifierMetadataIdentifier];
  }
  v2 = ;

  return v2;
}

- (id)originatingAssetIdentifierMetadataKey
{
  if ([(PFMetadata *)self isImage])
  {
    +[PFMetadata originatingAssetIdentifierMetadataKey];
  }

  else
  {
    +[PFMetadata originatingAssetIdentifierMetadataIdentifier];
  }
  v2 = ;

  return v2;
}

+ (void)firstAudioTrackForAsset:(id)a3 resultBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PFMetadata_firstAudioTrackForAsset_resultBlock___block_invoke;
  v7[3] = &unk_1E7B649E0;
  v8 = v5;
  v6 = v5;
  [PFMetadataMovie firstAudioTrackForAsset:a3 resultBlock:v7];
}

+ (void)firstVideoTrackForAsset:(id)a3 resultBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PFMetadata_firstVideoTrackForAsset_resultBlock___block_invoke;
  v7[3] = &unk_1E7B649E0;
  v8 = v5;
  v6 = v5;
  [PFMetadataMovie firstVideoTrackForAsset:a3 resultBlock:v7];
}

+ (id)differencesBetweenDictionary:(id)a3 andDictionary:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PFMetadata_differencesBetweenDictionary_andDictionary___block_invoke;
  v15[3] = &unk_1E7B649B8;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v18 = a1;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __57__PFMetadata_differencesBetweenDictionary_andDictionary___block_invoke(id *a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1[5];
    v9 = [a1[6] differencesBetweenDictionary:v6 andDictionary:v7];
    [v8 addEntriesFromDictionary:v9];
  }

  else if (([v6 isEqual:v7] & 1) == 0)
  {
    v10 = v6;
    if (!v6)
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    v13[0] = v10;
    v11 = v7;
    if (!v7)
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v13[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [a1[5] setObject:v12 forKeyedSubscript:v5];

    if (v7)
    {
      if (v6)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
}

+ (id)propertyListObjectFromEncodedData:(id)a3 expectedClass:(Class)a4 options:(unint64_t)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (![v9 length])
  {
    v10 = objc_alloc_init(a4);
    goto LABEL_12;
  }

  v23 = 0;
  v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:a5 format:0 error:&v23];
  v11 = v23;
  v12 = v11;
  if (v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a6)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A250];
        v24 = *MEMORY[0x1E696A588];
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromClass(a4);
        v19 = [v15 stringWithFormat:@"Deserialized object was of class %@, expected class %@", v17, v18];
        v25[0] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        *a6 = [v13 errorWithDomain:v14 code:2048 userInfo:v20];
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (!a6)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v21 = v11;
    v10 = 0;
    *a6 = v12;
  }

LABEL_11:

LABEL_12:

  return v10;
}

+ (BOOL)_canEncodeInPropertyList:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)_filterPropertyListObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _filterDictionary:v4];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _filterArray:v4];
    goto LABEL_7;
  }

  if ([a1 _canEncodeInPropertyList:v4])
  {
    v5 = v4;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)_filterArray:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _filterPropertyListObject:{*(*(&v15 + 1) + 8 * v10), v15}];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)_filterDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v17}];
        v13 = [a1 _filterPropertyListObject:v12];

        if (v13)
        {
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)encodedDataWithPropertyListObject:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AE40];
  v6 = [a1 _filterPropertyListObject:v4];
  v14 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:&v14];
  v8 = v14;

  if (!v7)
  {
    v9 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544130;
      v16 = 0;
      v17 = 2114;
      v18 = v13;
      v19 = 2050;
      v20 = v4;
      v21 = 2114;
      v22 = v8;
      _os_log_error_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_ERROR, "Failed to encode data: %{public}@ for object <%{public}@:%{public}p> error: %{public}@", buf, 0x2Au);
    }
  }

  return v7;
}

+ (void)metadataForAsset:(id)a3 completionHandler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [[PFMetadata alloc] initWithAVAsset:v5 options:4 timeZoneLookup:0];
    if (v7)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__PFMetadata_metadataForAsset_completionHandler___block_invoke;
      v12[3] = &unk_1E7B668D0;
      v14 = v6;
      v13 = v7;
      [(PFMetadata *)v13 loadMetadataWithCompletionHandler:v12];

      v8 = v14;
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A278];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get metadata for asset %@", v5];
      v16[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v10];
      (*(v6 + 2))(v6, 0, v11);
    }
  }
}

@end