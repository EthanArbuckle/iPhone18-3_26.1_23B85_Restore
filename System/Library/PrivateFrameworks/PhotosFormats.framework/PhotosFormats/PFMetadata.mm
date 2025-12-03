@interface PFMetadata
+ (BOOL)_canEncodeInPropertyList:(id)list;
+ (id)_filterArray:(id)array;
+ (id)_filterDictionary:(id)dictionary;
+ (id)_filterPropertyListObject:(id)object;
+ (id)differencesBetweenDictionary:(id)dictionary andDictionary:(id)andDictionary;
+ (id)encodedDataWithPropertyListObject:(id)object;
+ (id)propertyListObjectFromEncodedData:(id)data expectedClass:(Class)class options:(unint64_t)options error:(id *)error;
+ (void)firstAudioTrackForAsset:(id)asset resultBlock:(id)block;
+ (void)firstVideoTrackForAsset:(id)asset resultBlock:(id)block;
+ (void)metadataForAsset:(id)asset completionHandler:(id)handler;
- (BOOL)_convertTimeZoneOffsetString:(id)string toSeconds:(double *)seconds;
- (BOOL)configureWithMetadataPlist:(id)plist;
- (BOOL)isAnimatedImage;
- (BOOL)isAutoloop;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLongExposure;
- (BOOL)isLoopingVideo;
- (BOOL)isMirror;
- (BOOL)isSameForURL:(id)l andOptions:(unsigned __int16)options;
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
- (PFMetadata)initWithAVAsset:(id)asset options:(unsigned __int16)options timeZoneLookup:(id)lookup;
- (PFMetadata)initWithAVProxyData:(id)data timeZoneLookup:(id)lookup;
- (PFMetadata)initWithAVURL:(id)l options:(unsigned __int16)options timeZoneLookup:(id)lookup;
- (PFMetadata)initWithContentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup;
- (PFMetadata)initWithEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadata)initWithImageCaptureMovieProperties:(id)properties contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadata)initWithImageData:(id)data contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData;
- (PFMetadata)initWithImageProperties:(id)properties contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup;
- (PFMetadata)initWithImageSource:(CGImageSource *)source contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)imageSource;
- (PFMetadata)initWithImageSourceProxyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadata)initWithImageSourceProxyOrEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup;
- (PFMetadata)initWithImageURL:(id)l contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)data;
- (PFMetadata)initWithMediaURL:(id)l detail:(unsigned __int16)detail timeZoneLookup:(id)lookup shouldCache:(BOOL)cache;
- (PFMetadata)initWithMediaURL:(id)l options:(unsigned __int16)options timeZoneLookup:(id)lookup shouldCache:(BOOL)cache;
- (PFMetadata)initWithMetadataPlist:(id)plist timeZoneLookup:(id)lookup;
- (PFMetadata)initWithPropertyListRepresentationData:(id)data timeZoneLookup:(id)lookup;
- (PFMetadata)initWithSyndicationProperties:(id)properties;
- (PFTimeZoneLookup)timeZoneLookup;
- (UTType)contentType;
- (id)_dateTimeOffsetOriginalForSyndicationProperties;
- (id)_dateTimeOriginalForSyndicationProperties;
- (id)_dateTimeSubsecOriginalForSyndicationProperties;
- (id)burstUuidMetadataKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)hdrGainFromValue:(id)value;
- (id)hdrGainMetadataKey;
- (id)initForLimitedPropertiesWithPath:(id)path;
- (id)jsonFormattedDescriptionWithError:(id *)error;
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
- (void)_addCommonPropertiesToSyndicationProperties:(id)properties;
- (void)_addImageGPSPropertiesToSyndicationProperties:(id)properties;
- (void)_addImageLivePhotoPropertiesToSyndicationProperties:(id)properties;
- (void)_addImageMiscPropertiesToSyndicationProperties:(id)properties;
- (void)_addImagePropertiesToSyndicationProperties:(id)properties;
- (void)_addImageSemanticStylePropertiesToSyndicationProperties:(id)properties;
- (void)_addImageSmartStylePropertiesToSyndicationProperties:(id)properties;
- (void)_addMoviePropertiesToSyndicationProperties:(id)properties;
- (void)_computeAlttitude:(id)alttitude;
- (void)_computeGPSLocation;
- (void)_computeGPSTimeStamp:(id)stamp;
- (void)_computeLattitudeLongitude:(id)longitude;
- (void)_computeOrientationValue;
- (void)_computePixelWidthAndHeightValue;
- (void)_computeSpeed:(id)speed;
- (void)_computeSubSecondString:(id *)string timeZoneOffsetString:(id *)offsetString unqualifiedDateString:(id *)dateString fromProperties:(id)properties;
- (void)_computeTimeZoneFromString:(id)string;
- (void)_computeUnqualifiedDateFromDateString:(id)string subSecondString:(id)secondString;
- (void)computeDateTimeValues;
- (void)computeGPSValues;
- (void)loadMetadataWithCompletionHandler:(id)handler;
@end

@implementation PFMetadata

- (void)loadMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1B35C1000, v4, OS_LOG_TYPE_ERROR, "Called on base class. This should not happen.", v5, 2u);
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (handlerCopy)
  {
LABEL_3:
    handlerCopy[2](handlerCopy);
  }

LABEL_4:
}

- (id)sourceTypeName
{
  sourceType = [(PFMetadata *)self sourceType];
  if ((sourceType - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7B64A00[sourceType - 1];
  }
}

- (BOOL)isEqual:(id)equal
{
  v49 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
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
          fileURL = [(PFMetadata *)v7 fileURL];
          v45 = 138412546;
          v46 = v34;
          v47 = 2112;
          v48 = fileURL;
          v29 = "PFMetadata object not equal: fileURL %@ != %@";
        }

        else
        {
          contentType = self->_contentType;
          if ((contentType != 0) != (v7->_contentType == 0))
          {
            if (!contentType || ([(PFMetadata *)v7 contentType], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(UTType *)contentType isEqual:v11], v11, (v12 & 1) != 0))
            {
              fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
              fileSystemProperties2 = [(PFMetadata *)v7 fileSystemProperties];
              v15 = (fileSystemProperties != 0) ^ (fileSystemProperties2 == 0);

              if (v15)
              {
                fileSystemProperties3 = [(PFMetadata *)self fileSystemProperties];
                if (!fileSystemProperties3 || (v17 = fileSystemProperties3, -[PFMetadata fileSystemProperties](self, "fileSystemProperties"), v18 = objc_claimAutoreleasedReturnValue(), -[PFMetadata fileSystemProperties](v7, "fileSystemProperties"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v18 isEqual:v19], v19, v18, v17, (v20 & 1) != 0))
                {
                  v21 = 1;
LABEL_47:

                  goto LABEL_48;
                }

                v44 = metadataLog;
                if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
                {
                  v36 = v44;
                  fileSystemProperties4 = [(PFMetadata *)self fileSystemProperties];
                  fileSystemProperties5 = [(PFMetadata *)v7 fileSystemProperties];
                  v45 = 138412546;
                  v46 = fileSystemProperties4;
                  v47 = 2112;
                  v48 = fileSystemProperties5;
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
                  fileSystemProperties4 = [(PFMetadata *)self fileSystemProperties];
                  if (fileSystemProperties4)
                  {
                    v38 = @"not nil";
                  }

                  else
                  {
                    v38 = @"nil";
                  }

                  fileSystemProperties5 = [(PFMetadata *)v7 fileSystemProperties];
                  if (fileSystemProperties5)
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
            fileURL = [(PFMetadata *)v7 contentType];
            v45 = 138412546;
            v46 = v42;
            v47 = 2112;
            v48 = fileURL;
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
            fileURL = [(PFMetadata *)v7 contentType];
            if (fileURL)
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
        fileURL = [(PFMetadata *)v7 fileURL];
        if (fileURL)
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
      fileURL = PFMetadataStringForMetadataLoadOptions(options);
      v25 = PFMetadataStringForMetadataLoadOptions(v7->_options);
      v45 = 138412546;
      v46 = fileURL;
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
  plistForEncoding = [(PFMetadata *)self plistForEncoding];
  v3 = [plistForEncoding description];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 40), self->_cachedTimeZoneLookup);
  *(v4 + 32) = self->_options;
  objc_storeStrong((v4 + 64), self->_fileURL);
  objc_storeStrong((v4 + 72), self->_contentType);
  fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
  v6 = *(v4 + 8);
  *(v4 + 8) = fileSystemProperties;

  return v4;
}

- (id)jsonFormattedDescriptionWithError:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  plistForEncoding = [(PFMetadata *)self plistForEncoding];
  v5 = [plistForEncoding mutableCopy];

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
    if (error)
    {
      goto LABEL_5;
    }
  }

  else if (error)
  {
LABEL_5:
    v10 = v7;
    v8 = 0;
    *error = v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)plistForEncoding
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  fileURL = self->_fileURL;
  if (fileURL)
  {
    path = [(NSURL *)fileURL path];
    [dictionary setObject:path forKeyedSubscript:PFMetadataPlistFilePath];
  }

  identifier = [(UTType *)self->_contentType identifier];

  if (identifier)
  {
    identifier2 = [(UTType *)self->_contentType identifier];
    [dictionary setObject:identifier2 forKeyedSubscript:PFMetadataPlistContentTypeIdentifier];
  }

  creationDate = [(PFMetadata *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(PFMetadata *)self creationDate];
    [dictionary setObject:creationDate2 forKeyedSubscript:PFMetadataPlistCreationDate];
  }

  fileSystemProperties = [(PFMetadata *)self fileSystemProperties];

  if (fileSystemProperties)
  {
    fileSystemProperties2 = [(PFMetadata *)self fileSystemProperties];
    [dictionary setObject:fileSystemProperties2 forKeyedSubscript:PFMetadataPlistFileSystemProperties];
  }

  orientation = [(PFMetadata *)self orientation];
  if ((orientation - 1) >= 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = orientation;
  }

  orientation2 = [(PFMetadata *)self orientation];
  if ((orientation2 - 1) >= 8)
  {
    v15 = 0;
  }

  else
  {
    v15 = orientation2;
  }

  v16 = PFOrientationName_names[v15];
  [dictionary setObject:v16 forKeyedSubscript:PFMetadataPlistOrientation];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata sourceType](self, "sourceType")}];
  [dictionary setObject:v17 forKeyedSubscript:PFMetadataPlistSourceType];

  sourceType = [(PFMetadata *)self sourceType];
  if ((sourceType - 1) > 0xA)
  {
    v19 = @"Unknown";
  }

  else
  {
    v19 = off_1E7B64A00[sourceType - 1];
  }

  v20 = v19;
  [dictionary setObject:v20 forKeyedSubscript:PFMetadataPlistSourceTypeName];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_options];
  [dictionary setObject:v21 forKeyedSubscript:PFMetadataPlistOptions];

  v22 = PFMetadataStringForMetadataLoadOptions(self->_options);
  [dictionary setObject:v22 forKeyedSubscript:PFMetadataPlistOptionsString];

  return dictionary;
}

- (id)propertyListRepresentationData
{
  plistForEncoding = [(PFMetadata *)self plistForEncoding];
  v3 = [PFMetadata encodedDataWithPropertyListObject:plistForEncoding];

  return v3;
}

- (id)hdrGainFromValue:(id)value
{
  if (value)
  {
    v4 = MEMORY[0x1E696AD98];
    [value floatValue];
    v5 = [v4 numberWithFloat:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_convertTimeZoneOffsetString:(id)string toSeconds:(double *)seconds
{
  v5 = [string componentsSeparatedByString:@":"];
  v6 = [v5 count];
  if (v6 == 2)
  {
    v7 = [v5 objectAtIndex:0];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v5 objectAtIndex:1];
    [v10 doubleValue];
    v12 = v11;

    if (seconds)
    {
      v13 = 1.0;
      if (v9 < 0)
      {
        v13 = -1.0;
      }

      *seconds = v13 * (v12 * 60.0 + (v13 * v9) * 3600.0);
    }
  }

  return v6 == 2;
}

- (id)_dateTimeSubsecOriginalForSyndicationProperties
{
  v13[2] = *MEMORY[0x1E69E9840];
  _makeDateTimeProperties = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DB28];
  v13[0] = *MEMORY[0x1E696D9B0];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:_makeDateTimeProperties];

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
  _makeDateTimeProperties = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DAA0];
  v13[0] = *MEMORY[0x1E696D9B0];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:_makeDateTimeProperties];

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
  _makeDateTimeProperties = [(PFMetadata *)self _makeDateTimeProperties];
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696D998];
  v11[0] = *MEMORY[0x1E696D9B0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v6 componentsJoinedByString:@"."];
  v8 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v7 fromProperties:_makeDateTimeProperties];

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

- (void)_computeSpeed:(id)speed
{
  speedCopy = speed;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC58] fromProperties:?];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC60] fromProperties:speedCopy];
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

- (void)_computeAlttitude:(id)alttitude
{
  alttitudeCopy = alttitude;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DB88] fromProperties:?];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DB90] fromProperties:alttitudeCopy];
    v9 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
      if (v7 > 0.0 && integerValue == 1)
      {
        v7 = -v7;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [(PFMetadata *)self setAltitude:v12];
  }
}

- (void)_computeGPSTimeStamp:(id)stamp
{
  typeVerifier = self->_typeVerifier;
  v5 = *MEMORY[0x1E696DC70];
  stampCopy = stamp;
  v14 = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:v5 fromProperties:stampCopy];
  v7 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DBA8] fromProperties:stampCopy];

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

- (void)_computeLattitudeLongitude:(id)longitude
{
  longitudeCopy = longitude;
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC18] fromProperties:longitudeCopy];
  v5 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC28] fromProperties:longitudeCopy];
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
        v16 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC20] fromProperties:longitudeCopy];
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
        v22 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DC30] fromProperties:longitudeCopy];

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
  _makeGPSProperties = [(PFMetadata *)self _makeGPSProperties];
  [(PFMetadata *)self _computeLattitudeLongitude:_makeGPSProperties];
  [(PFMetadata *)self _computeGPSTimeStamp:_makeGPSProperties];
  [(PFMetadata *)self _computeAlttitude:_makeGPSProperties];
  [(PFMetadata *)self _computeSpeed:_makeGPSProperties];
}

- (void)_computeGPSLocation
{
  latitude = [(PFMetadata *)self latitude];
  longitude = [(PFMetadata *)self longitude];
  if (latitude && longitude)
  {
    [latitude doubleValue];
    v5 = v4;
    [longitude doubleValue];
    v7 = v6;
    gpsHPositioningError = [(PFMetadata *)self gpsHPositioningError];
    [gpsHPositioningError doubleValue];
    v10 = v9;

    if (v10 == 0.0)
    {
      v10 = -1.0;
    }

    v11 = objc_alloc(MEMORY[0x1E6985C40]);
    altitude = [(PFMetadata *)self altitude];
    [altitude doubleValue];
    v14 = v13;
    imageDirection = [(PFMetadata *)self imageDirection];
    [imageDirection doubleValue];
    v17 = v16;
    speed = [(PFMetadata *)self speed];
    [speed doubleValue];
    v20 = v19;
    gpsDateTime = [(PFMetadata *)self gpsDateTime];
    creationDate = gpsDateTime;
    if (!gpsDateTime)
    {
      creationDate = [(PFMetadata *)self creationDate];
    }

    v23 = [v11 initWithCoordinate:creationDate altitude:v5 horizontalAccuracy:v7 verticalAccuracy:v14 course:v10 speed:0.0 timestamp:{v17, v20}];
    gpsLocation = self->_gpsLocation;
    self->_gpsLocation = v23;

    if (!gpsDateTime)
    {
    }
  }
}

- (void)_computeUnqualifiedDateFromDateString:(id)string subSecondString:(id)secondString
{
  stringCopy = string;
  secondStringCopy = secondString;
  if (stringCopy)
  {
    objc_storeStrong(&self->_creationDateString, string);
    v8 = PFGMTTimeZone();
    v9 = PFDateFromStringTimeZoneFormat(stringCopy, v8, 0);

    self->_creationDateSource = 1;
  }

  else
  {
    v9 = 0;
  }

  gpsDateTime = [(PFMetadata *)self gpsDateTime];
  v11 = gpsDateTime;
  if (!v9 && gpsDateTime)
  {
    v12 = PFStringFromDateTimeZoneFormat(gpsDateTime, self->_timeZone, 0);
    creationDateString = self->_creationDateString;
    self->_creationDateString = v12;

    v9 = PFDateFromGMTDateTimeZone(v11, self->_timeZone);
    self->_creationDateSource = 2;
  }

  if (v9)
  {
    if (secondStringCopy)
    {
      secondStringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"0.%@", secondStringCopy];
      [secondStringCopy doubleValue];
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

- (void)_computeTimeZoneFromString:(id)string
{
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = [stringCopy componentsSeparatedByString:@":"];
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

    longitude = [(PFMetadata *)self longitude];
    latitude = [(PFMetadata *)self latitude];
    v21 = latitude;
    if (longitude && latitude)
    {
      [latitude doubleValue];
      v23 = v22;
      [longitude doubleValue];
      v25 = CLLocationCoordinate2DMake(v23, v24);
      timeZoneLookup = [(PFMetadata *)self timeZoneLookup];
      v27 = [timeZoneLookup timeZoneNameForCoordinate:{v25.latitude, v25.longitude}];

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
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      v31 = self->_timeZone;
      self->_timeZone = localTimeZone;
    }
  }
}

- (void)_computeSubSecondString:(id *)string timeZoneOffsetString:(id *)offsetString unqualifiedDateString:(id *)dateString fromProperties:(id)properties
{
  propertiesCopy = properties;
  v10 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696D9B0] fromProperties:?];
  v11 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696D998] fromProperties:v10];
  *dateString = v11;
  typeVerifier = self->_typeVerifier;
  if (v11)
  {
    *string = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:*MEMORY[0x1E696DB28] fromProperties:v10];
    v13 = self->_typeVerifier;
    v14 = MEMORY[0x1E696DAA0];
LABEL_5:
    *offsetString = [(PFMetadataTypeVerifier *)v13 valueForKey:*v14 fromProperties:v10];
    goto LABEL_6;
  }

  v15 = [(PFMetadataTypeVerifier *)typeVerifier valueForKey:*MEMORY[0x1E696D990] fromProperties:v10];
  *dateString = v15;
  v16 = self->_typeVerifier;
  if (v15)
  {
    *string = [(PFMetadataTypeVerifier *)v16 valueForKey:*MEMORY[0x1E696DB20] fromProperties:v10];
    v13 = self->_typeVerifier;
    v14 = MEMORY[0x1E696DA90];
    goto LABEL_5;
  }

  v17 = [(PFMetadataTypeVerifier *)v16 valueForKey:*MEMORY[0x1E696DF28] fromProperties:propertiesCopy];
  *dateString = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DF20] fromProperties:v17];

LABEL_6:
}

- (void)computeDateTimeValues
{
  _makeDateTimeProperties = [(PFMetadata *)self _makeDateTimeProperties];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  [(PFMetadata *)self _computeSubSecondString:&v9 timeZoneOffsetString:&v8 unqualifiedDateString:&v7 fromProperties:_makeDateTimeProperties];
  v4 = v9;
  v5 = v8;
  v6 = v7;
  [(PFMetadata *)self _computeTimeZoneFromString:v5];
  [(PFMetadata *)self _computeUnqualifiedDateFromDateString:v6 subSecondString:v4];
}

- (void)_computeOrientationValue
{
  v12[2] = *MEMORY[0x1E69E9840];
  _makeGeometryProperties = [(PFMetadata *)self _makeGeometryProperties];
  typeVerifier = [(PFMetadata *)self typeVerifier];
  v5 = [typeVerifier valueForKey:*MEMORY[0x1E696DE78] fromProperties:_makeGeometryProperties];

  if (!v5)
  {
    typeVerifier2 = [(PFMetadata *)self typeVerifier];
    v7 = *MEMORY[0x1E696DF58];
    v12[0] = *MEMORY[0x1E696DF28];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v8 componentsJoinedByString:@"."];
    v5 = [typeVerifier2 valueForKeyPath:v9 fromProperties:_makeGeometryProperties];
  }

  integerValue = [v5 integerValue];
  if ((integerValue - 1) >= 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = integerValue;
  }

  self->_orientation = v11;
}

- (void)_computePixelWidthAndHeightValue
{
  v50[2] = *MEMORY[0x1E69E9840];
  _makeGeometryProperties = [(PFMetadata *)self _makeGeometryProperties];
  v4 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DED8] fromProperties:_makeGeometryProperties];
  [v4 floatValue];
  v6 = v5;

  v7 = [(PFMetadataTypeVerifier *)self->_typeVerifier valueForKey:*MEMORY[0x1E696DEC8] fromProperties:_makeGeometryProperties];
  [v7 floatValue];
  v9 = v8;

  if (v6 != 0.0 && v9 != 0.0 || (v10 = *MEMORY[0x1E696DAA8], -[PFMetadataTypeVerifier valueForKey:fromProperties:](self->_typeVerifier, "valueForKey:fromProperties:", *MEMORY[0x1E696DAA8], _makeGeometryProperties), v11 = objc_claimAutoreleasedReturnValue(), [v11 floatValue], v6 = v12, v11, v13 = *MEMORY[0x1E696DAB0], -[PFMetadataTypeVerifier valueForKey:fromProperties:](self->_typeVerifier, "valueForKey:fromProperties:", *MEMORY[0x1E696DAB0], _makeGeometryProperties), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "floatValue"), v9 = v15, v14, v6 != 0.0) && v9 != 0.0)
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
  v26 = [(PFMetadataTypeVerifier *)typeVerifier valueForKeyPath:v25 fromProperties:_makeGeometryProperties];
  [v26 floatValue];
  v28 = v27;
  Width = v27;

  v29 = self->_typeVerifier;
  v49[0] = v23;
  v49[1] = v13;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v31 = [v30 componentsJoinedByString:@"."];
  v32 = [(PFMetadataTypeVerifier *)v29 valueForKeyPath:v31 fromProperties:_makeGeometryProperties];
  [v32 floatValue];
  v34 = v33;
  Height = v33;

  if (v28 == 0.0 || v34 == 0.0)
  {
    imageSource = [(PFMetadata *)self imageSource];
    if (imageSource)
    {
      goto LABEL_10;
    }

    fileURL = [(PFMetadata *)self fileURL];

    if (!fileURL)
    {
      goto LABEL_6;
    }

    fileURL2 = [(PFMetadata *)self fileURL];
    v47 = *MEMORY[0x1E696DFE8];
    v48 = MEMORY[0x1E695E118];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    imageSource = CGImageSourceCreateWithURL(fileURL2, v40);

    if (imageSource)
    {
      CFAutorelease(imageSource);
LABEL_10:
      v36 = +[PFMetadataImage defaultOptionsForCGImageSource];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(imageSource, 0, v36);

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
      fileURL3 = [(PFMetadata *)self fileURL];
      path = [fileURL3 path];
      v45 = 138412290;
      v46 = path;
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
  playbackVariation = [(PFMetadata *)self playbackVariation];
  v3 = [playbackVariation unsignedIntegerValue] == 3;

  return v3;
}

- (BOOL)isMirror
{
  playbackVariation = [(PFMetadata *)self playbackVariation];
  v3 = [playbackVariation unsignedIntegerValue] == 2;

  return v3;
}

- (BOOL)isAutoloop
{
  playbackVariation = [(PFMetadata *)self playbackVariation];
  v3 = [playbackVariation unsignedIntegerValue] == 1;

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
  profileName = [(PFMetadata *)self profileName];
  v3 = profileName;
  if (profileName)
  {
    v4 = profileName;
  }

  else
  {
    v4 = @"sRGB IEC61966-2.1";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)_addMoviePropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  videoDynamicRange = [(PFMetadata *)self videoDynamicRange];
  if (videoDynamicRange)
  {
    [propertiesCopy setObject:videoDynamicRange forKeyedSubscript:@"videoDynamicRange"];
  }

  if ([(PFMetadata *)self isCinematicVideo])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isCinematicVideo](self, "isCinematicVideo")}];
    if (v6)
    {
      [propertiesCopy setObject:v6 forKeyedSubscript:@"videoContainsCinematicData"];
    }
  }

  [(PFMetadata *)self duration];
  nominalFrameRate = [(PFMetadata *)self nominalFrameRate];
  if (nominalFrameRate)
  {
    [propertiesCopy setObject:nominalFrameRate forKeyedSubscript:@"framesPerSecond"];
  }

  firstVideoTrackCodecString = [(PFMetadata *)self firstVideoTrackCodecString];
  if (firstVideoTrackCodecString)
  {
    [propertiesCopy setObject:firstVideoTrackCodecString forKeyedSubscript:@"fourCharCode"];
  }

  captureMode = [(PFMetadata *)self captureMode];
  if (captureMode)
  {
    [propertiesCopy setObject:captureMode forKeyedSubscript:@"com.apple.photos.captureMode"];
  }

  montageString = [(PFMetadata *)self montageString];
  if (montageString)
  {
    [propertiesCopy setObject:montageString forKeyedSubscript:@"isMontage"];
  }

  audioDataRate = [(PFMetadata *)self audioDataRate];
  if (audioDataRate)
  {
    [propertiesCopy setObject:audioDataRate forKeyedSubscript:@"estimatedDataRate"];
  }

  audioTrackFormat = [(PFMetadata *)self audioTrackFormat];
  if (audioTrackFormat)
  {
    [propertiesCopy setObject:audioTrackFormat forKeyedSubscript:@"audioTrackFormat"];
  }

  audioSampleRate = [(PFMetadata *)self audioSampleRate];
  if (audioSampleRate)
  {
    [propertiesCopy setObject:audioSampleRate forKeyedSubscript:@"audioTrackSampleRate"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isProRes](self, "isProRes")}];
  if (v14)
  {
    [propertiesCopy setObject:v14 forKeyedSubscript:@"isProRes"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isTimelapse](self, "isTimelapse")}];
  if (v15)
  {
    [propertiesCopy setObject:v15 forKeyedSubscript:@"Time-lapse"];
  }
}

- (void)_addImageSmartStylePropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [MEMORY[0x1E696AD98] numberWithShort:{-[PFMetadata smartStyleCast](self, "smartStyleCast")}];
  if (v4)
  {
    [propertiesCopy setObject:v4 forKeyedSubscript:@"smartStyleCast"];
  }

  smartStyleIntensity = [(PFMetadata *)self smartStyleIntensity];
  if (smartStyleIntensity)
  {
    [propertiesCopy setObject:smartStyleIntensity forKeyedSubscript:@"smartStyleIntensity"];
  }

  smartStyleToneBias = [(PFMetadata *)self smartStyleToneBias];
  if (smartStyleToneBias)
  {
    [propertiesCopy setObject:smartStyleToneBias forKeyedSubscript:@"smartStyleToneBias"];
  }

  smartStyleColorBias = [(PFMetadata *)self smartStyleColorBias];
  if (smartStyleColorBias)
  {
    [propertiesCopy setObject:smartStyleColorBias forKeyedSubscript:@"smartStyleColorBias"];
  }

  smartStyleRenderingVersion = [(PFMetadata *)self smartStyleRenderingVersion];
  if (smartStyleRenderingVersion)
  {
    [propertiesCopy setObject:smartStyleRenderingVersion forKeyedSubscript:@"smartStyleRenderingVersion"];
  }

  smartStyleIsReversible = [(PFMetadata *)self smartStyleIsReversible];
  if (smartStyleIsReversible)
  {
    [propertiesCopy setObject:smartStyleIsReversible forKeyedSubscript:@"smartStyleIsReversible"];
  }

  smartStyleExpectingReversibility = [(PFMetadata *)self smartStyleExpectingReversibility];
  if (smartStyleExpectingReversibility)
  {
    [propertiesCopy setObject:smartStyleExpectingReversibility forKeyedSubscript:@"smartStyleExpectingReversibility"];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasSmartStyle](self, "hasSmartStyle")}];
  if (v11)
  {
    [propertiesCopy setObject:v11 forKeyedSubscript:@"hasSmartStyle"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithShort:{-[PFMetadata smartStyleVideoCastValue](self, "smartStyleVideoCastValue")}];
  if (v12)
  {
    [propertiesCopy setObject:v12 forKeyedSubscript:@"smartStyleVideoCastValue"];
  }
}

- (void)_addImageGPSPropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  speed = [(PFMetadata *)self speed];
  if (speed && *MEMORY[0x1E696DC58])
  {
    [propertiesCopy setObject:speed forKeyedSubscript:?];
  }

  speedRef = [(PFMetadata *)self speedRef];
  if (speedRef && *MEMORY[0x1E696DC60])
  {
    [propertiesCopy setObject:speedRef forKeyedSubscript:?];
  }

  gpsDateTime = [(PFMetadata *)self gpsDateTime];
  if (gpsDateTime)
  {
    [propertiesCopy setObject:gpsDateTime forKeyedSubscript:@"gpsDateTime"];
  }

  gpsHPositioningError = [(PFMetadata *)self gpsHPositioningError];
  if (gpsHPositioningError && *MEMORY[0x1E696DC00])
  {
    [propertiesCopy setObject:gpsHPositioningError forKeyedSubscript:?];
  }

  altitude = [(PFMetadata *)self altitude];
  if (altitude && *MEMORY[0x1E696DB88])
  {
    [propertiesCopy setObject:altitude forKeyedSubscript:?];
  }

  imageDirection = [(PFMetadata *)self imageDirection];
  if (imageDirection && *MEMORY[0x1E696DC08])
  {
    [propertiesCopy setObject:imageDirection forKeyedSubscript:?];
  }

  imageDirectionRef = [(PFMetadata *)self imageDirectionRef];
  if (imageDirectionRef && *MEMORY[0x1E696DC10])
  {
    [propertiesCopy setObject:imageDirectionRef forKeyedSubscript:?];
  }
}

- (void)_addImageLivePhotoPropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  [(PFMetadata *)self duration];
  [(PFMetadata *)self stillImageDisplayTime];
  livePhotoPairingIdentifier = [(PFMetadata *)self livePhotoPairingIdentifier];
  if (livePhotoPairingIdentifier)
  {
    [propertiesCopy setObject:livePhotoPairingIdentifier forKeyedSubscript:@"livePhotoParingIdentifier"];
  }

  playbackVariation = [(PFMetadata *)self playbackVariation];
  if (playbackVariation)
  {
    [propertiesCopy setObject:playbackVariation forKeyedSubscript:@"playbackVariation"];
  }
}

- (void)_addImageMiscPropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isFrontFacingCamera](self, "isFrontFacingCamera")}];
  if (v4)
  {
    [propertiesCopy setObject:v4 forKeyedSubscript:@"kPFImagePropertyFrontFacingCamera"];
  }

  focalLengthIn35mm = [(PFMetadata *)self focalLengthIn35mm];
  if (focalLengthIn35mm && *MEMORY[0x1E696DA08])
  {
    [propertiesCopy setObject:focalLengthIn35mm forKeyedSubscript:?];
  }

  digitalZoomRatio = [(PFMetadata *)self digitalZoomRatio];
  if (digitalZoomRatio && *MEMORY[0x1E696D9C0])
  {
    [propertiesCopy setObject:digitalZoomRatio forKeyedSubscript:?];
  }

  profileName = [(PFMetadata *)self profileName];
  if (profileName && *MEMORY[0x1E696DEF0])
  {
    [propertiesCopy setObject:profileName forKeyedSubscript:?];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFMetadata photoProcessingFlags](self, "photoProcessingFlags")}];
  if (v8)
  {
    [propertiesCopy setObject:v8 forKeyedSubscript:@"photoProcessingFlags"];
  }

  if ([(PFMetadata *)self hasCustomRendered])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata customRendered](self, "customRendered")}];
    if (v9 && *MEMORY[0x1E696D988])
    {
      [propertiesCopy setObject:v9 forKeyedSubscript:?];
    }
  }

  fNumber = [(PFMetadata *)self fNumber];
  if (fNumber && *MEMORY[0x1E696D9E8])
  {
    [propertiesCopy setObject:fNumber forKeyedSubscript:?];
  }

  exposureBias = [(PFMetadata *)self exposureBias];
  if (exposureBias && *MEMORY[0x1E696D9C8])
  {
    [propertiesCopy setObject:exposureBias forKeyedSubscript:?];
  }

  flashValue = [(PFMetadata *)self flashValue];
  if (flashValue && *MEMORY[0x1E696D9F0])
  {
    [propertiesCopy setObject:flashValue forKeyedSubscript:?];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata flashFired](self, "flashFired")}];
  if (v13)
  {
    [propertiesCopy setObject:v13 forKeyedSubscript:@"flashFired"];
  }

  flashCompensation = [(PFMetadata *)self flashCompensation];
  if (flashCompensation && *MEMORY[0x1E696D8C0])
  {
    [propertiesCopy setObject:flashCompensation forKeyedSubscript:?];
  }

  focalLength = [(PFMetadata *)self focalLength];
  if (focalLength && *MEMORY[0x1E696DA18])
  {
    [propertiesCopy setObject:focalLength forKeyedSubscript:?];
  }

  v16 = [(PFMetadata *)self iso];
  if (v16 && *MEMORY[0x1E696DA28])
  {
    [propertiesCopy setObject:v16 forKeyedSubscript:?];
  }

  meteringMode = [(PFMetadata *)self meteringMode];
  if (meteringMode && *MEMORY[0x1E696DA80])
  {
    [propertiesCopy setObject:meteringMode forKeyedSubscript:?];
  }

  exposureTime = [(PFMetadata *)self exposureTime];
  if (exposureTime && *MEMORY[0x1E696D9E0])
  {
    [propertiesCopy setObject:exposureTime forKeyedSubscript:?];
  }

  whiteBalance = [(PFMetadata *)self whiteBalance];
  if (whiteBalance && *MEMORY[0x1E696DB50])
  {
    [propertiesCopy setObject:whiteBalance forKeyedSubscript:?];
  }

  lightSource = [(PFMetadata *)self lightSource];
  if (lightSource && *MEMORY[0x1E696DA68])
  {
    [propertiesCopy setObject:lightSource forKeyedSubscript:?];
  }

  whiteBalanceIndex = [(PFMetadata *)self whiteBalanceIndex];
  if (whiteBalanceIndex && *MEMORY[0x1E696D440])
  {
    [propertiesCopy setObject:whiteBalanceIndex forKeyedSubscript:?];
  }

  gIFDelayTime = [(PFMetadata *)self GIFDelayTime];
  if (gIFDelayTime && *MEMORY[0x1E696DB68])
  {
    [propertiesCopy setObject:gIFDelayTime forKeyedSubscript:?];
  }

  hEICSDelayTime = [(PFMetadata *)self HEICSDelayTime];
  if (hEICSDelayTime && *MEMORY[0x1E696DD18])
  {
    [propertiesCopy setObject:hEICSDelayTime forKeyedSubscript:?];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isHDR](self, "isHDR")}];
  if (v24)
  {
    [propertiesCopy setObject:v24 forKeyedSubscript:@"isHDR"];
  }

  hdrGain = [(PFMetadata *)self hdrGain];
  if (hdrGain)
  {
    [propertiesCopy setObject:hdrGain forKeyedSubscript:@"hdrGain"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasHDRGainMap](self, "hasHDRGainMap")}];
  if (v26)
  {
    [propertiesCopy setObject:v26 forKeyedSubscript:@"hasHDRGainMap"];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isPhotoBooth](self, "isPhotoBooth")}];
  if (v27)
  {
    [propertiesCopy setObject:v27 forKeyedSubscript:@"isPhotoBooth"];
  }

  userComment = [(PFMetadata *)self userComment];
  if (userComment && *MEMORY[0x1E696DB40])
  {
    [propertiesCopy setObject:userComment forKeyedSubscript:?];
  }

  burstUuid = [(PFMetadata *)self burstUuid];
  if (burstUuid)
  {
    [propertiesCopy setObject:burstUuid forKeyedSubscript:@"burstUuid"];
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasISOGainMap](self, "hasISOGainMap")}];
  if (v30)
  {
    [propertiesCopy setObject:v30 forKeyedSubscript:@"hasISOGainMap"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isAnimatedImage](self, "isAnimatedImage")}];
  if (v31)
  {
    [propertiesCopy setObject:v31 forKeyedSubscript:@"isAnimatedImage"];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFMetadata photoCaptureFlags](self, "photoCaptureFlags")}];
  if (v32)
  {
    [propertiesCopy setObject:v32 forKeyedSubscript:@"stillImageCaptureFlags"];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata cameraUsedForCapture](self, "cameraUsedForCapture")}];
  if (v33)
  {
    [propertiesCopy setObject:v33 forKeyedSubscript:@"cameraUsedForCapture"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata hasSpatialAudio](self, "hasSpatialAudio")}];
  if (v34)
  {
    [propertiesCopy setObject:v34 forKeyedSubscript:@"hasSpatialAudio"];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isAlchemist](self, "isAlchemist")}];
  if (v35)
  {
    [propertiesCopy setObject:v35 forKeyedSubscript:@"isAlchemist"];
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFMetadata isThreeImageStereoHEIC](self, "isThreeImageStereoHEIC")}];
  if (v36)
  {
    [propertiesCopy setObject:v36 forKeyedSubscript:@"isThreeImageStereoHEIC"];
  }

  generativeAIImageType = [(PFMetadata *)self generativeAIImageType];
  if (generativeAIImageType)
  {
    [propertiesCopy setObject:generativeAIImageType forKeyedSubscript:@"generativeAIImageType"];
  }

  credit = [(PFMetadata *)self credit];
  if (credit && *MEMORY[0x1E696DD80])
  {
    [propertiesCopy setObject:credit forKeyedSubscript:?];
  }
}

- (void)_addImageSemanticStylePropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  semanticStyleToneBias = [(PFMetadata *)self semanticStyleToneBias];
  if (semanticStyleToneBias)
  {
    [propertiesCopy setObject:semanticStyleToneBias forKeyedSubscript:@"semanticStyleToneBias"];
  }

  semanticStyleWarmthBias = [(PFMetadata *)self semanticStyleWarmthBias];
  if (semanticStyleWarmthBias)
  {
    [propertiesCopy setObject:semanticStyleWarmthBias forKeyedSubscript:@"semanticStyleWarmthBias"];
  }

  semanticStyleRenderingVersion = [(PFMetadata *)self semanticStyleRenderingVersion];
  if (semanticStyleRenderingVersion)
  {
    [propertiesCopy setObject:semanticStyleRenderingVersion forKeyedSubscript:@"semanticStyleRenderingVersion"];
  }

  semanticStylePreset = [(PFMetadata *)self semanticStylePreset];
  if (semanticStylePreset)
  {
    [propertiesCopy setObject:semanticStylePreset forKeyedSubscript:@"semanticStylePreset"];
  }
}

- (void)_addImagePropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  [(PFMetadata *)self _addImageSemanticStylePropertiesToSyndicationProperties:propertiesCopy];
  [(PFMetadata *)self _addImageLivePhotoPropertiesToSyndicationProperties:propertiesCopy];
  [(PFMetadata *)self _addImageMiscPropertiesToSyndicationProperties:propertiesCopy];
  [(PFMetadata *)self _addImageGPSPropertiesToSyndicationProperties:propertiesCopy];
  [(PFMetadata *)self _addImageSmartStylePropertiesToSyndicationProperties:propertiesCopy];
}

- (void)_addCommonPropertiesToSyndicationProperties:(id)properties
{
  propertiesCopy = properties;
  contentType = [(PFMetadata *)self contentType];
  identifier = [contentType identifier];
  if (identifier)
  {
    [propertiesCopy setObject:identifier forKeyedSubscript:@"uti"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PFMetadata fileSize](self, "fileSize")}];
  if (v6 && *MEMORY[0x1E696A3B8])
  {
    [propertiesCopy setObject:v6 forKeyedSubscript:?];
  }

  originalFileName = [(PFMetadata *)self originalFileName];
  if (originalFileName)
  {
    [propertiesCopy setObject:originalFileName forKeyedSubscript:@"originalFilename"];
  }

  v8 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self exifPixelSize];
  v9 = [v8 numberWithDouble:?];
  if (v9 && *MEMORY[0x1E696DED8])
  {
    [propertiesCopy setObject:v9 forKeyedSubscript:?];
  }

  v10 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self exifPixelSize];
  v12 = [v10 numberWithDouble:v11];
  if (v12 && *MEMORY[0x1E696DEC8])
  {
    [propertiesCopy setObject:v12 forKeyedSubscript:?];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PFMetadata orientation](self, "orientation")}];
  if (v13 && *MEMORY[0x1E696DE78])
  {
    [propertiesCopy setObject:v13 forKeyedSubscript:?];
  }

  lensModel = [(PFMetadata *)self lensModel];
  if (lensModel && *MEMORY[0x1E696DA58])
  {
    [propertiesCopy setObject:lensModel forKeyedSubscript:?];
  }

  lensMake = [(PFMetadata *)self lensMake];
  if (lensMake && *MEMORY[0x1E696DA50])
  {
    [propertiesCopy setObject:lensMake forKeyedSubscript:?];
  }

  _dateTimeOriginalForSyndicationProperties = [(PFMetadata *)self _dateTimeOriginalForSyndicationProperties];
  if (_dateTimeOriginalForSyndicationProperties)
  {
    [propertiesCopy setObject:_dateTimeOriginalForSyndicationProperties forKeyedSubscript:@"creationDate"];
  }

  _dateTimeOffsetOriginalForSyndicationProperties = [(PFMetadata *)self _dateTimeOffsetOriginalForSyndicationProperties];
  if (_dateTimeOffsetOriginalForSyndicationProperties)
  {
    [propertiesCopy setObject:_dateTimeOffsetOriginalForSyndicationProperties forKeyedSubscript:@"timeZoneOffset"];
  }

  _dateTimeSubsecOriginalForSyndicationProperties = [(PFMetadata *)self _dateTimeSubsecOriginalForSyndicationProperties];
  if (_dateTimeSubsecOriginalForSyndicationProperties && *MEMORY[0x1E696DB28])
  {
    [propertiesCopy setObject:_dateTimeSubsecOriginalForSyndicationProperties forKeyedSubscript:?];
  }

  cameraModel = [(PFMetadata *)self cameraModel];
  if (cameraModel && *MEMORY[0x1E696DF50])
  {
    [propertiesCopy setObject:cameraModel forKeyedSubscript:?];
  }

  cameraMake = [(PFMetadata *)self cameraMake];
  if (cameraMake && *MEMORY[0x1E696DF48])
  {
    [propertiesCopy setObject:cameraMake forKeyedSubscript:?];
  }

  longitude = [(PFMetadata *)self longitude];
  if (longitude && *MEMORY[0x1E696DC28])
  {
    [propertiesCopy setObject:longitude forKeyedSubscript:?];
  }

  latitude = [(PFMetadata *)self latitude];
  if (latitude && *MEMORY[0x1E696DC18])
  {
    [propertiesCopy setObject:latitude forKeyedSubscript:?];
  }

  spatialOverCaptureIdentifier = [(PFMetadata *)self spatialOverCaptureIdentifier];
  if (spatialOverCaptureIdentifier)
  {
    [propertiesCopy setObject:spatialOverCaptureIdentifier forKeyedSubscript:@"socIdentifier"];
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
  fileURL = [(PFMetadata *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  return lastPathComponent;
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
  timeZone = [(PFMetadata *)self timeZone];
  creationDate = [(PFMetadata *)self creationDate];
  v6 = [v3 numberWithInteger:{objc_msgSend(timeZone, "secondsFromGMTForDate:", creationDate)}];

  return v6;
}

- (NSString)timeZoneName
{
  timeZone = [(PFMetadata *)self timeZone];
  name = [timeZone name];

  return name;
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
  orientation = [(PFMetadata *)self orientation];
  [(PFMetadata *)self exifPixelSize];
  if ((orientation - 5) >= 4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ((orientation - 5) < 4)
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
  pixelWidth = [(PFMetadata *)self pixelWidth];
  [pixelWidth floatValue];
  v5 = v4;
  pixelHeight = [(PFMetadata *)self pixelHeight];
  [pixelHeight floatValue];
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
  fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
  v3 = [fileSystemProperties objectForKeyedSubscript:*MEMORY[0x1E696A350]];

  return v3;
}

- (NSDate)fileCreationDate
{
  fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
  v4 = [fileSystemProperties objectForKeyedSubscript:*MEMORY[0x1E696A308]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    fileSystemProperties2 = [(PFMetadata *)self fileSystemProperties];
    v6 = [fileSystemProperties2 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  }

  return v6;
}

- (unint64_t)fileSize
{
  fileSystemProperties = [(PFMetadata *)self fileSystemProperties];
  v3 = [fileSystemProperties objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
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
    fileURL = [(PFMetadata *)self fileURL];
    if (fileURL)
    {
      fileURL2 = [(PFMetadata *)self fileURL];
      v23 = 0;
      v6 = [MEMORY[0x1E695DFF8] bookmarkDataWithContentsOfURL:fileURL2 error:&v23];
      v7 = v23;
      if (v6)
      {
        v22 = v7;
        v8 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v6 options:768 relativeToURL:fileURL2 bookmarkDataIsStale:0 error:&v22];
        v9 = v22;

        v7 = v9;
      }

      else
      {
        v8 = fileURL2;
      }

      if (v8)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v8 path];
        v21 = 0;
        fileURL = [defaultManager attributesOfItemAtPath:path error:&v21];

        v14 = *MEMORY[0x1E696A308];
        v15 = [fileURL objectForKeyedSubscript:*MEMORY[0x1E696A308]];
        v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-*MEMORY[0x1E695E460]];
        if ([v15 isEqualToDate:v16])
        {
          v17 = [fileURL mutableCopy];
          v18 = [fileURL objectForKeyedSubscript:*MEMORY[0x1E696A350]];
          [v17 setObject:v18 forKeyedSubscript:v14];

          fileURL = v17;
        }
      }

      else
      {
        fileURL = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v19 = [fileURL copy];
    v20 = self->_fileSystemProperties;
    self->_fileSystemProperties = v19;

    v10 = self->_fileSystemProperties;
  }

  return v10;
}

- (NSNumber)srlCompensationValue
{
  nrfSrlStatus = [(PFMetadata *)self nrfSrlStatus];
  v3 = nrfSrlStatus;
  if (nrfSrlStatus && (v4 = [nrfSrlStatus unsignedIntValue], v4 >= 0x80000001))
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
  contentType = [(PFMetadata *)self contentType];
  v4 = [contentType isEqual:*MEMORY[0x1E6982DE8]];
  if (v4)
  {
    gIFDelayTime = [(PFMetadata *)self GIFDelayTime];
    if (gIFDelayTime)
    {
      v6 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  contentType2 = [(PFMetadata *)self contentType];
  v8 = +[PFUniformTypeUtilities heicSequenceType];
  if ([contentType2 isEqual:v8])
  {
    hEICSDelayTime = [(PFMetadata *)self HEICSDelayTime];
    v6 = hEICSDelayTime != 0;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    gIFDelayTime = 0;
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

- (BOOL)configureWithMetadataPlist:(id)plist
{
  if (!plist)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = PFMetadataPlistFilePath;
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:v5];
  v8 = [v4 fileURLWithPath:v7];
  fileURL = self->_fileURL;
  self->_fileURL = v8;

  v10 = [plistCopy objectForKeyedSubscript:PFMetadataPlistCreationDate];
  creationDate = self->_creationDate;
  self->_creationDate = v10;

  v12 = [plistCopy objectForKeyedSubscript:PFMetadataPlistFileSystemProperties];
  fileSystemProperties = self->_fileSystemProperties;
  self->_fileSystemProperties = v12;

  v14 = [plistCopy objectForKeyedSubscript:PFMetadataPlistSourceType];

  self->_sourceType = [v14 integerValue];
  return self->_sourceType != 0;
}

- (BOOL)isSameForURL:(id)l andOptions:(unsigned __int16)options
{
  optionsCopy = options;
  lCopy = l;
  fileURL = [(PFMetadata *)self fileURL];
  v8 = [fileURL isEqual:lCopy];

  return v8 && (optionsCopy & ~self->_options) == 0;
}

- (PFMetadata)initWithImageCaptureMovieProperties:(id)properties contentType:(id)type timeZoneLookup:(id)lookup
{
  lookupCopy = lookup;
  typeCopy = type;
  propertiesCopy = properties;

  v11 = [[PFMetadataImageCaptureMovieProperties alloc] initWithImageCaptureMovieProperties:propertiesCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  return &v11->super;
}

- (PFMetadata)initWithAVAsset:(id)asset options:(unsigned __int16)options timeZoneLookup:(id)lookup
{
  optionsCopy = options;
  lookupCopy = lookup;
  assetCopy = asset;

  v10 = [[PFMetadataMovie alloc] initWithAVAsset:assetCopy options:optionsCopy timeZoneLookup:lookupCopy];
  return &v10->super;
}

- (PFMetadata)initWithAVProxyData:(id)data timeZoneLookup:(id)lookup
{
  dataCopy = data;
  lookupCopy = lookup;
  v8 = [[PFMetadataMovie alloc] initWithAVProxyData:dataCopy timeZoneLookup:lookupCopy];
  if (!v8)
  {
    v8 = [[PFMetadataLegacyMovieProperties alloc] initWithAVProxyData:dataCopy timeZoneLookup:lookupCopy];
  }

  return &v8->super;
}

- (PFMetadata)initWithAVURL:(id)l options:(unsigned __int16)options timeZoneLookup:(id)lookup
{
  optionsCopy = options;
  lookupCopy = lookup;
  lCopy = l;

  v10 = [[PFMetadataMovie alloc] initWithAVURL:lCopy options:optionsCopy timeZoneLookup:lookupCopy];
  return &v10->super;
}

- (PFMetadata)initWithImageProperties:(id)properties contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup
{
  optionsCopy = options;
  lookupCopy = lookup;
  typeCopy = type;
  propertiesCopy = properties;

  v13 = [[PFMetadataImage alloc] initWithImageProperties:propertiesCopy contentType:typeCopy options:optionsCopy timeZoneLookup:lookupCopy];
  return &v13->super;
}

- (PFMetadata)initWithImageSourceProxyOrEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  lookupCopy = lookup;
  typeCopy = type;
  dataCopy = data;

  v11 = [[PFMetadataImage alloc] initWithImageSourceProxyOrEncodedImagePropertyData:dataCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  return &v11->super;
}

- (PFMetadata)initWithImageSourceProxyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  lookupCopy = lookup;
  typeCopy = type;
  dataCopy = data;

  v11 = [[PFMetadataImage alloc] initWithImageSourceProxyData:dataCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  return &v11->super;
}

- (PFMetadata)initWithEncodedImagePropertyData:(id)data contentType:(id)type timeZoneLookup:(id)lookup
{
  lookupCopy = lookup;
  typeCopy = type;
  dataCopy = data;

  v11 = [[PFMetadataImage alloc] initWithEncodedImagePropertyData:dataCopy contentType:typeCopy timeZoneLookup:lookupCopy];
  return &v11->super;
}

- (PFMetadata)initWithImageSource:(CGImageSource *)source contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)imageSource
{
  imageSourceCopy = imageSource;
  optionsCopy = options;
  lookupCopy = lookup;
  typeCopy = type;

  v14 = [[PFMetadataImage alloc] initWithImageSource:source contentType:typeCopy options:optionsCopy timeZoneLookup:lookupCopy cacheImageSource:imageSourceCopy];
  return &v14->super;
}

- (PFMetadata)initWithImageData:(id)data contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)imageData
{
  imageDataCopy = imageData;
  sourceCopy = source;
  optionsCopy = options;
  lookupCopy = lookup;
  typeCopy = type;
  dataCopy = data;

  v17 = [[PFMetadataImage alloc] initWithImageData:dataCopy contentType:typeCopy options:optionsCopy timeZoneLookup:lookupCopy cacheImageSource:sourceCopy cacheImageData:imageDataCopy];
  return &v17->super;
}

- (PFMetadata)initWithImageURL:(id)l contentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup cacheImageSource:(BOOL)source cacheImageData:(BOOL)data
{
  dataCopy = data;
  sourceCopy = source;
  optionsCopy = options;
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  typeCopy = type;
  lookupCopy = lookup;
  if (!typeCopy)
  {
    v21 = 0;
    typeCopy = [PFUniformTypeUtilities typeForURL:lCopy error:&v21];
    v17 = v21;
    if (!typeCopy)
    {
      v18 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v23 = lCopy;
        v24 = 2112;
        v25 = v17;
        _os_log_fault_impl(&dword_1B35C1000, v18, OS_LOG_TYPE_FAULT, "Failed to get a content type for URL '%@' (ERROR: %@)", buf, 0x16u);
      }
    }
  }

  v19 = [[PFMetadataImage alloc] initWithImageURL:lCopy contentType:typeCopy options:optionsCopy timeZoneLookup:lookupCopy cacheImageSource:sourceCopy cacheImageData:dataCopy];
  return &v19->super;
}

- (PFMetadata)initWithContentType:(id)type options:(unsigned __int16)options timeZoneLookup:(id)lookup
{
  typeCopy = type;
  lookupCopy = lookup;
  v17.receiver = self;
  v17.super_class = PFMetadata;
  v11 = [(PFMetadata *)&v17 init];
  if (v11)
  {
    if (initWithContentType_options_timeZoneLookup__onceToken[0] != -1)
    {
      dispatch_once(initWithContentType_options_timeZoneLookup__onceToken, &__block_literal_global_2913);
    }

    objc_storeStrong(&v11->_contentType, type);
    v11->_options = options;
    if (lookupCopy)
    {
      WeakRetained = lookupCopy;
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

- (id)initForLimitedPropertiesWithPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
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

- (PFMetadata)initWithMetadataPlist:(id)plist timeZoneLookup:(id)lookup
{
  plistCopy = plist;
  v7 = PFMetadataPlistContentTypeIdentifier;
  lookupCopy = lookup;
  v9 = [plistCopy objectForKeyedSubscript:v7];
  v10 = [PFUniformTypeUtilities typeWithIdentifier:v9];

  v11 = [plistCopy objectForKeyedSubscript:PFMetadataPlistOptions];
  v12 = -[PFMetadata initWithContentType:options:timeZoneLookup:](self, "initWithContentType:options:timeZoneLookup:", v10, [v11 integerValue], lookupCopy);

  if (v12 && ![(PFMetadata *)v12 configureWithMetadataPlist:plistCopy])
  {

    v12 = 0;
  }

  return v12;
}

- (PFMetadata)initWithPropertyListRepresentationData:(id)data timeZoneLookup:(id)lookup
{
  v19 = *MEMORY[0x1E69E9840];
  lookupCopy = lookup;
  dataCopy = data;
  v16 = 0;
  v8 = [PFMetadata propertyListObjectFromEncodedData:dataCopy expectedClass:objc_opt_class() options:0 error:&v16];

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
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = 0;
  if (unsignedIntegerValue > 5)
  {
    if (unsignedIntegerValue > 8)
    {
      if (unsignedIntegerValue != 9)
      {
        if (unsignedIntegerValue == 10)
        {
          v13 = PFMetadataSyndication;
          goto LABEL_18;
        }

        if (unsignedIntegerValue == 11)
        {
          v13 = PFMetadataImageCaptureMovieProperties;
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else if ((unsignedIntegerValue - 6) >= 2)
    {
      if (unsignedIntegerValue == 8)
      {
        v13 = PFMetadataLegacyMovieProperties;
LABEL_18:
        v12 = [[v13 alloc] initWithMetadataPlist:v8 timeZoneLookup:lookupCopy];
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v13 = PFMetadataMovie;
    goto LABEL_18;
  }

  if ((unsignedIntegerValue - 1) < 5)
  {
    v13 = PFMetadataImage;
    goto LABEL_18;
  }

LABEL_19:

  return v12;
}

- (PFMetadata)initWithMediaURL:(id)l detail:(unsigned __int16)detail timeZoneLookup:(id)lookup shouldCache:(BOOL)cache
{
  if (detail == 1)
  {
    v6 = 460;
  }

  else
  {
    v6 = 12;
  }

  if (detail == 2)
  {
    v7 = 13;
  }

  else
  {
    v7 = v6;
  }

  return [(PFMetadata *)self initWithMediaURL:l options:v7 timeZoneLookup:lookup shouldCache:cache];
}

- (PFMetadata)initWithSyndicationProperties:(id)properties
{
  propertiesCopy = properties;

  v5 = [[PFMetadataSyndication alloc] initWithSyndicationProperties:propertiesCopy];
  return &v5->super;
}

- (PFMetadata)initWithMediaURL:(id)l options:(unsigned __int16)options timeZoneLookup:(id)lookup shouldCache:(BOOL)cache
{
  cacheCopy = cache;
  optionsCopy = options;
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  lookupCopy = lookup;
  if (lCopy)
  {
    v18 = 0;
    v12 = [PFUniformTypeUtilities typeForURL:lCopy error:&v18];
    v13 = v18;
    if (v12)
    {
      if ([v12 conformsToType:*MEMORY[0x1E6982E30]])
      {
        v14 = [(PFMetadata *)self initWithImageURL:lCopy contentType:v12 options:optionsCopy timeZoneLookup:lookupCopy cacheImageSource:cacheCopy cacheImageData:cacheCopy];
LABEL_10:
        v15 = v14;
LABEL_12:

        goto LABEL_13;
      }

      if ([v12 conformsToType:*MEMORY[0x1E6982EE8]])
      {
        v14 = [(PFMetadata *)self initWithAVURL:lCopy options:optionsCopy timeZoneLookup:lookupCopy];
        goto LABEL_10;
      }
    }

    else
    {
      v16 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = lCopy;
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

+ (void)firstAudioTrackForAsset:(id)asset resultBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PFMetadata_firstAudioTrackForAsset_resultBlock___block_invoke;
  v7[3] = &unk_1E7B649E0;
  v8 = blockCopy;
  v6 = blockCopy;
  [PFMetadataMovie firstAudioTrackForAsset:asset resultBlock:v7];
}

+ (void)firstVideoTrackForAsset:(id)asset resultBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PFMetadata_firstVideoTrackForAsset_resultBlock___block_invoke;
  v7[3] = &unk_1E7B649E0;
  v8 = blockCopy;
  v6 = blockCopy;
  [PFMetadataMovie firstVideoTrackForAsset:asset resultBlock:v7];
}

+ (id)differencesBetweenDictionary:(id)dictionary andDictionary:(id)andDictionary
{
  andDictionaryCopy = andDictionary;
  v7 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v9 = [v7 dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PFMetadata_differencesBetweenDictionary_andDictionary___block_invoke;
  v15[3] = &unk_1E7B649B8;
  v16 = andDictionaryCopy;
  v10 = v9;
  v17 = v10;
  selfCopy = self;
  v11 = andDictionaryCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v15];

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

+ (id)propertyListObjectFromEncodedData:(id)data expectedClass:(Class)class options:(unint64_t)options error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![dataCopy length])
  {
    v10 = objc_alloc_init(class);
    goto LABEL_12;
  }

  v23 = 0;
  v10 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:options format:0 error:&v23];
  v11 = v23;
  v12 = v11;
  if (v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E696A250];
        v24 = *MEMORY[0x1E696A588];
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromClass(class);
        v19 = [v15 stringWithFormat:@"Deserialized object was of class %@, expected class %@", v17, v18];
        v25[0] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        *error = [v13 errorWithDomain:v14 code:2048 userInfo:v20];
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (!error)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v21 = v11;
    v10 = 0;
    *error = v12;
  }

LABEL_11:

LABEL_12:

  return v10;
}

+ (BOOL)_canEncodeInPropertyList:(id)list
{
  listCopy = list;
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

+ (id)_filterPropertyListObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self _filterDictionary:objectCopy];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self _filterArray:objectCopy];
    goto LABEL_7;
  }

  if ([self _canEncodeInPropertyList:objectCopy])
  {
    v5 = objectCopy;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)_filterArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = arrayCopy;
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

        v11 = [self _filterPropertyListObject:{*(*(&v15 + 1) + 8 * v10), v15}];
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

+ (id)_filterDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = dictionaryCopy;
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
        v13 = [self _filterPropertyListObject:v12];

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

+ (id)encodedDataWithPropertyListObject:(id)object
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = MEMORY[0x1E696AE40];
  v6 = [self _filterPropertyListObject:objectCopy];
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
      v20 = objectCopy;
      v21 = 2114;
      v22 = v8;
      _os_log_error_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_ERROR, "Failed to encode data: %{public}@ for object <%{public}@:%{public}p> error: %{public}@", buf, 0x2Au);
    }
  }

  return v7;
}

+ (void)metadataForAsset:(id)asset completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = [[PFMetadata alloc] initWithAVAsset:assetCopy options:4 timeZoneLookup:0];
    if (v7)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__PFMetadata_metadataForAsset_completionHandler___block_invoke;
      v12[3] = &unk_1E7B668D0;
      v14 = handlerCopy;
      v13 = v7;
      [(PFMetadata *)v13 loadMetadataWithCompletionHandler:v12];

      assetCopy = v14;
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A278];
      assetCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get metadata for asset %@", assetCopy];
      v16[0] = assetCopy;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v10];
      (*(handlerCopy + 2))(handlerCopy, 0, v11);
    }
  }
}

@end