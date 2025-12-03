@interface PFVideoMetadataVideoTrackFormatInfo
+ (BOOL)videoTrackFormatDescriptionHasDolby8_4Metadata:(opaqueCMFormatDescription *)metadata;
+ (id)infoForFirstVideoTrackOfAsset:(id)asset;
+ (signed)_getProfile:(char *)profile tier:(char *)tier level:(char *)level fromFormatDescriptionExtensions:(id)extensions;
- (CGSize)displaySize;
- (NSString)formatDebugDescription;
- (PFVideoMetadataVideoTrackFormatInfo)initWithFirstVideoTrackOfAsset:(id)asset;
- (id)hevcProfileTierLevelDescription;
- (void)_checkFormat;
@end

@implementation PFVideoMetadataVideoTrackFormatInfo

- (CGSize)displaySize
{
  objc_copyStruct(v4, &self->_displaySize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)hevcProfileTierLevelDescription
{
  if (self->_hasHEVCProfileTierLevelInfo)
  {
    LOBYTE(v3) = self->_hevcLevel;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %d/%d/%1.1f", self->_hevcProfile, self->_hevcTier, v3 / 30.0];
  }

  else
  {
    v4 = @" (profile/tier/level unavailable)";
  }

  return v4;
}

- (NSString)formatDebugDescription
{
  bitsPerComponent = [(PFVideoMetadataVideoTrackFormatInfo *)self bitsPerComponent];
  if (bitsPerComponent)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tdbit ", bitsPerComponent];
  }

  else
  {
    v4 = &stru_1F2A8EB68;
  }

  v5 = +[PFMediaCapabilities currentDeviceIsEligibleForHDRPlayback];
  if (self->_isHighDynamicRange)
  {
    v6 = @"HDR";
  }

  else
  {
    v6 = @"SDR";
  }

  v7 = MEMORY[0x1E696AEC0];
  codec = self->_codec;
  v9 = v6;
  v10 = [PFMediaUtilities stringFromFourCharCode:codec];
  hevcProfileTierLevelDescription = [(PFVideoMetadataVideoTrackFormatInfo *)self hevcProfileTierLevelDescription];
  v12 = hevcProfileTierLevelDescription;
  v13 = @"no";
  if (self->_hasDolby8_4Metadata)
  {
    v14 = @"yes";
  }

  else
  {
    v14 = @"no";
  }

  if (v5)
  {
    v13 = @"yes";
  }

  v15 = [v7 stringWithFormat:@"%@ %@%@%@ size=%dx%d transfer=%@ color=%@ dv84=%@ (current device eligible for HDR: %@)", v10, v4, v9, hevcProfileTierLevelDescription, self->_displaySize.width, self->_displaySize.height, self->_transferFunction, self->_colorPrimaries, v14, v13];

  return v15;
}

- (void)_checkFormat
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self->_asset];
  firstObject = [v3 firstObject];

  if (!firstObject)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    asset = self->_asset;
    LODWORD(v25.a) = 138412290;
    *(&v25.a + 4) = asset;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "Unable to query video format information for asset without video tracks: %@";
LABEL_12:
    _os_log_error_impl(&dword_1B35C1000, v22, OS_LOG_TYPE_ERROR, v23, &v25, 0xCu);
    goto LABEL_15;
  }

  formatDescriptions = [firstObject formatDescriptions];
  firstObject2 = [formatDescriptions firstObject];

  if (!firstObject2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v24 = self->_asset;
    LODWORD(v25.a) = 138412290;
    *(&v25.a + 4) = v24;
    v22 = MEMORY[0x1E69E9C10];
    v23 = "Unable to query video format information for asset without first video track format description: %@";
    goto LABEL_12;
  }

  self->_codec = CMFormatDescriptionGetMediaSubType(firstObject2);
  self->_isHighDynamicRange = [PFVideoMetadata videoTrackFormatDescriptionIsHighDynamicRange:firstObject2];
  self->_isHDR10 = [PFVideoMetadata videoTrackFormatDescriptionIsHDR10:firstObject2];
  self->_isProResLOG = [PFVideoMetadata videoTrackFormatDescriptionIsProResLOG:firstObject2];
  self->_hasDolby8_4Metadata = [objc_opt_class() videoTrackFormatDescriptionHasDolby8_4Metadata:firstObject2];
  self->_isSpatial = [PFVideoMetadata videoTrackIsSpatial:firstObject];
  [firstObject naturalSize];
  v8 = v7;
  [firstObject naturalSize];
  v10 = v9;
  [firstObject preferredTransform];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v8;
  v27.size.height = v10;
  v28 = CGRectApplyAffineTransform(v27, &v25);
  self->_displaySize.width = v28.size.width;
  self->_displaySize.height = v28.size.height;
  v11 = CMFormatDescriptionGetExtensions(firstObject2);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"BitsPerComponent"];
    self->_bitsPerComponent = [v13 integerValue];

    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
    colorPrimaries = self->_colorPrimaries;
    self->_colorPrimaries = v14;

    v16 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
    transferFunction = self->_transferFunction;
    self->_transferFunction = v16;

    if (self->_codec == 1752589105)
    {
      v18 = [objc_opt_class() _getProfile:&self->_hevcProfile tier:&self->_hevcTier level:&self->_hevcLevel fromFormatDescriptionExtensions:v12];
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_asset;
          LODWORD(v25.a) = 138412546;
          *(&v25.a + 4) = v20;
          WORD2(v25.b) = 1024;
          *(&v25.b + 6) = v19;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to get profile/tier/level for %@: %d", &v25, 0x12u);
        }
      }

      else
      {
        self->_hasHEVCProfileTierLevelInfo = 1;
      }
    }
  }

LABEL_15:
}

- (PFVideoMetadataVideoTrackFormatInfo)initWithFirstVideoTrackOfAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PFVideoMetadataVideoTrackFormatInfo;
  v6 = [(PFVideoMetadataVideoTrackFormatInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    [(PFVideoMetadataVideoTrackFormatInfo *)v7 _checkFormat];
  }

  return v7;
}

+ (BOOL)videoTrackFormatDescriptionHasDolby8_4Metadata:(opaqueCMFormatDescription *)metadata
{
  v3 = CMFormatDescriptionGetExtensions(metadata);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
    if ([v5 isEqualToString:*MEMORY[0x1E6960148]] && (objc_msgSend(v4, "objectForKeyedSubscript:", *MEMORY[0x1E69600A0]), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [v6 objectForKeyedSubscript:@"dvvC"];
      v9 = v8 != 0;
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

+ (signed)_getProfile:(char *)profile tier:(char *)tier level:(char *)level fromFormatDescriptionExtensions:(id)extensions
{
  v6 = [extensions objectForKeyedSubscript:*MEMORY[0x1E69600A0]];
  v7 = [v6 objectForKeyedSubscript:@"hvcC"];

  if (v7)
  {
    HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
    SPSProfileTierLevel = HEVCParameterSetAtIndex;
    if (!HEVCParameterSetAtIndex)
    {
      SPSProfileTierLevel = FigHEVCBridge_GetSPSProfileTierLevel();
    }
  }

  else
  {
    SPSProfileTierLevel = 0;
  }

  return SPSProfileTierLevel;
}

+ (id)infoForFirstVideoTrackOfAsset:(id)asset
{
  assetCopy = asset;
  v5 = [[self alloc] initWithFirstVideoTrackOfAsset:assetCopy];

  return v5;
}

@end