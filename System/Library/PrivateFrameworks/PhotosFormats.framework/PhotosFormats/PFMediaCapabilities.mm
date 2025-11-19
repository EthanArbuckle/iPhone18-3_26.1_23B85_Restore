@interface PFMediaCapabilities
+ (BOOL)setNewFormatsConfiguration:(int64_t)a3 fromSource:(int64_t)a4;
+ (BOOL)videoCodecIsEligibleForBackwardsCompatibilityTranscoding:(unsigned int)a3;
+ (BOOL)videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:(unsigned int)a3;
+ (id)capabilitiesForCurrentDeviceWithOptions:(id)a3;
+ (id)capabilitiesInformationForCurrentDeviceWithOptions:(id)a3;
+ (id)legacyCapabilities;
+ (id)recordSlomoConfigurationWithValidValues:(id)a3;
+ (id)recordVideoConfigurationWithValidValues:(id)a3;
+ (id)stringForSupport:(int64_t)a3;
+ (id)testCapabilitiesNotSupportingHEIF;
+ (id)testCapabilitiesNotSupportingHEVC;
+ (id)videoCodecTypesEligibleForBackwardsCompatibilityTranscoding;
+ (int64_t)newFormatsConfiguration;
+ (unsigned)currentDeviceHEVCCapabilities;
- (BOOL)sortSourceEnumerationAscending;
- (BOOL)supportsHDR;
- (BOOL)supportsTranscodeChoice;
- (PFMediaCapabilities)initWithOpaqueRepresentation:(id)a3;
- (PFMediaCapabilities)initWithPlatformInformation:(id)a3;
- (id)description;
- (id)opaqueRepresentation;
- (int64_t)decodingSupportForAVAsset:(id)a3;
- (int64_t)decodingSupportForFormatDescription:(opaqueCMFormatDescription *)a3;
- (int64_t)supportForAdjustmentBaseResources;
- (int64_t)supportForAssetBundleVersion:(id)a3;
- (int64_t)supportForCodec:(unsigned int)a3;
- (int64_t)supportForContainerTypeIdentifier:(id)a3;
- (int64_t)supportForLivePhotoVersion:(id)a3;
- (int64_t)supportValueByApplyingUserDefaultsPeerAssetBundleSupportOverrideToValue:(int64_t)a3 selector:(SEL)a4;
- (int64_t)supportValueByApplyingUserDefaultsPeerOverrideToValue:(int64_t)a3 selector:(SEL)a4;
- (int64_t)userDefaultsPeerAssetBundleSupportOverrideValue;
- (int64_t)userDefaultsPeerOverrideValue;
- (void)setSupportForAdjustmentBaseResources:(BOOL)a3;
- (void)setSupportsTranscodeChoice:(BOOL)a3;
@end

@implementation PFMediaCapabilities

+ (int64_t)newFormatsConfiguration
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceCaptureEncodingBehavior", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%p: %@ capabilities info: %@>", self, objc_opt_class(), self->_capabilitiesInformation];

  return v3;
}

- (int64_t)userDefaultsPeerAssetBundleSupportOverrideValue
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PFMediaCapabilitiesPeerAssetBundleSupportOverride"];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = @"PFMediaCapabilitiesPeerAssetBundleSupportOverride";
      v10 = 2112;
      v11 = v3;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Ignoring value for user default %@ that is not an integer: %@";
      goto LABEL_10;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [v3 integerValue];
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = @"PFMediaCapabilitiesPeerAssetBundleSupportOverride";
      v10 = 2112;
      v11 = v3;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Ignoring value for user default %@ that is out of range: %@";
LABEL_10:
      _os_log_error_impl(&dword_1B35C1000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0x16u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v4;
}

- (int64_t)supportValueByApplyingUserDefaultsPeerAssetBundleSupportOverrideToValue:(int64_t)a3 selector:(SEL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(PFMediaCapabilities *)self userDefaultsPeerAssetBundleSupportOverrideValue];
  if (!v6)
  {
    return a3;
  }

  v7 = v6;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a4);
    v9 = [objc_opt_class() stringForSupport:a3];
    v10 = [objc_opt_class() stringForSupport:v7];
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = @"PFMediaCapabilitiesPeerAssetBundleSupportOverride";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Overriding peer asset bundle capabilities result of %@ from %@ to %@ because %@ user default is set", &v12, 0x2Au);
  }

  return v7;
}

- (int64_t)userDefaultsPeerOverrideValue
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PFMediaCapabilitiesPeerSupportOverride"];

  if (!v3)
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = @"PFMediaCapabilitiesPeerSupportOverride";
      v10 = 2112;
      v11 = v3;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Ignoring value for user default %@ that is not an integer: %@";
      goto LABEL_10;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [v3 integerValue];
  if ((v4 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = @"PFMediaCapabilitiesPeerSupportOverride";
      v10 = 2112;
      v11 = v3;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Ignoring value for user default %@ that is out of range: %@";
LABEL_10:
      _os_log_error_impl(&dword_1B35C1000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0x16u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v4;
}

- (int64_t)supportValueByApplyingUserDefaultsPeerOverrideToValue:(int64_t)a3 selector:(SEL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(PFMediaCapabilities *)self userDefaultsPeerOverrideValue];
  if (!v6)
  {
    return a3;
  }

  v7 = v6;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a4);
    v9 = [objc_opt_class() stringForSupport:a3];
    v10 = [objc_opt_class() stringForSupport:v7];
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = @"PFMediaCapabilitiesPeerSupportOverride";
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Overriding peer capabilities result of %@ from %@ to %@ because %@ user default is set", &v12, 0x2Au);
  }

  return v7;
}

- (id)opaqueRepresentation
{
  v13 = *MEMORY[0x1E69E9840];
  capabilitiesInformation = self->_capabilitiesInformation;
  v8 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:capabilitiesInformation options:0 error:&v8];
  v5 = v8;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = self->_capabilitiesInformation;
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize capabilities information %@: %@", buf, 0x16u);
  }

  return v4;
}

- (BOOL)supportsHDR
{
  v2 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Codecs"];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", 104, 118, 99, 49];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"Profiles"];
  v6 = [v5 objectForKeyedSubscript:@"VTIsHDRAllowedOnDevice"];

  LOBYTE(v2) = [v6 BOOLValue];
  return v2;
}

- (BOOL)supportsTranscodeChoice
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"TranscodeChoice"];
  v3 = [v2 BOOLValue];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"PFMediaCapabilitiesPeerTranscodeChoiceOverride"];

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      *v8 = 138412802;
      if (v3)
      {
        v6 = @"YES";
      }

      *&v8[4] = v6;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = @"PFMediaCapabilitiesPeerTranscodeChoiceOverride";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Overriding peer capabilities result of supportsTranscodeChoice from %@ to %@ because %@ user default is set", v8, 0x20u);
    }

    LOBYTE(v3) = [v5 BOOLValue];
  }

  return v3;
}

- (int64_t)decodingSupportForAVAsset:(id)a3
{
  v5 = a3;
  v6 = [[PFMetadata alloc] initWithAVAsset:v5 timeZoneLookup:0];

  v7 = [(PFMetadata *)v6 firstVideoTrackCodec];
  if ([objc_opt_class() videoCodecIsEligibleForBackwardsCompatibilityTranscoding:v7])
  {
    v8 = [(PFMediaCapabilities *)self decodingSupportForFormatDescription:[(PFMetadata *)v6 videoTrackFormatDescription]];
  }

  else if (v7 == 1635148593)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v8 selector:a2];

  return v9;
}

- (int64_t)decodingSupportForFormatDescription:(opaqueCMFormatDescription *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  if (self->_capabilitiesInformation && [PFMediaCapabilities videoCodecIsEligibleForBackwardsCompatibilityTranscoding:MediaSubType])
  {
    v6 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Version"];
    v7 = [v6 integerValue];

    if (v7 < 3)
    {
      if (MediaSubType != 1752589105)
      {
LABEL_21:
        v14 = 1;
        return [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v14 selector:a2];
      }

      v15 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Codecs"];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", 104, 118, 99, 49];
      v17 = [v15 objectForKeyedSubscript:v16];
      v9 = [v17 objectForKeyedSubscript:@"Profiles"];

      v18 = VTGetHEVCCapabilitesForFormatDescription();
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v22) = v19;
          v12 = MEMORY[0x1E69E9C10];
          v13 = "VTGetHEVCCapabilitesForFormatDescription returned non-success status %d, defaulting to compatible";
          goto LABEL_15;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v8 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Codecs"];
      v9 = [v8 objectForKeyedSubscript:@"CodecSupport"];

      if (!v9)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v22 = @"CodecSupport";
          v23 = 1024;
          v24 = 3;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected nil value for %@ key in capabilities dictionary for version >= %d", buf, 0x12u);
        }

        v9 = 0;
        goto LABEL_20;
      }

      v10 = VTGetDecoderCapabilitesForFormatDescription();
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v22) = v11;
          v12 = MEMORY[0x1E69E9C10];
          v13 = "VTGetDecoderCapabilitesForFormatDescription returned non-success status %d, defaulting to compatible";
LABEL_15:
          _os_log_error_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    v14 = -1;
  }

  else if (MediaSubType == 1635148593)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  return [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v14 selector:a2];
}

- (int64_t)supportForCodec:(unsigned int)a3
{
  v6 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Codecs"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", HIBYTE(a3), BYTE2(a3), BYTE1(a3), a3];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v9 selector:a2];
}

- (int64_t)supportForAdjustmentBaseResources
{
  v2 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"SupportsAdjustmentBaseResources"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v2 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (int64_t)supportForAssetBundleVersion:(id)a3
{
  v5 = [a3 integerValue];
  v6 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Vendor"];
  v7 = [v6 objectForKeyedSubscript:@"com.apple"];
  v8 = [v7 objectForKeyedSubscript:@"AssetBundleFormatVersion"];

  if (v8)
  {
    v9 = [v8 integerValue];
    v10 = -1;
    if (v9 >= v5)
    {
      v10 = 1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerAssetBundleSupportOverrideToValue:v11 selector:a2];

  return v12;
}

- (int64_t)supportForLivePhotoVersion:(id)a3
{
  v5 = [a3 integerValue];
  v6 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"Vendor"];
  v7 = [v6 objectForKeyedSubscript:@"com.apple"];
  v8 = [v7 objectForKeyedSubscript:@"LivePhotoFormatVersion"];

  if (v8)
  {
    v9 = [v8 integerValue];
    v10 = -1;
    if (v9 >= v5)
    {
      v10 = 1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v11 selector:a2];

  return v12;
}

- (int64_t)supportForContainerTypeIdentifier:(id)a3
{
  capabilitiesInformation = self->_capabilitiesInformation;
  v6 = a3;
  v7 = [(NSDictionary *)capabilitiesInformation objectForKeyedSubscript:@"ContainerFormats"];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return [(PFMediaCapabilities *)self supportValueByApplyingUserDefaultsPeerOverrideToValue:v9 selector:a2];
}

- (PFMediaCapabilities)initWithPlatformInformation:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFMediaCapabilities;
  v5 = [(PFMediaCapabilities *)&v9 init];
  if (v5)
  {
    v10 = @"PFMediaCapabilitiesPlatformInfoKey";
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    capabilitiesInformation = v5->_capabilitiesInformation;
    v5->_capabilitiesInformation = v6;
  }

  return v5;
}

- (PFMediaCapabilities)initWithOpaqueRepresentation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFMediaCapabilities;
  v5 = [(PFMediaCapabilities *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v11 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    capabilitiesInformation = v5->_capabilitiesInformation;
    v5->_capabilitiesInformation = v6;

LABEL_4:
    v9 = v5;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = 0;
    v15 = 2112;
    v16 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deserialize capabilities information %@: %@", buf, 0x16u);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)sortSourceEnumerationAscending
{
  v2 = [(NSDictionary *)self->_capabilitiesInformation objectForKeyedSubscript:@"SortSourceEnumerationAscending"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)videoCodecTypesEligibleForBackwardsCompatibilityTranscoding
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PFMediaCapabilities_videoCodecTypesEligibleForBackwardsCompatibilityTranscoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_onceToken != -1)
  {
    dispatch_once(&videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_onceToken, block);
  }

  v2 = videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_codecTypeNumbers;

  return v2;
}

void __82__PFMediaCapabilities_videoCodecTypesEligibleForBackwardsCompatibilityTranscoding__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2AAB8A8];
  v3 = videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_codecTypeNumbers;
  videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_codecTypeNumbers = v2;

  v4 = videoCodecTypesEligibleForBackwardsCompatibilityTranscoding_codecTypeNumbers;
  v5 = [*(a1 + 32) proResVideoCodecTypesEligibleForBackwardsCompatibilityTranscoding];
  [v4 addObjectsFromArray:v5];
}

+ (BOOL)videoCodecIsProResEligibleForBackwardsCompatibilityTranscoding:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [a1 proResVideoCodecTypesEligibleForBackwardsCompatibilityTranscoding];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

+ (BOOL)videoCodecIsEligibleForBackwardsCompatibilityTranscoding:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [a1 videoCodecTypesEligibleForBackwardsCompatibilityTranscoding];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

+ (unsigned)currentDeviceHEVCCapabilities
{
  if (currentDeviceHEVCCapabilities_onceToken != -1)
  {
    dispatch_once(&currentDeviceHEVCCapabilities_onceToken, &__block_literal_global_2430);
  }

  if (currentDeviceHEVCCapabilities_sCapabilities)
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

void __52__PFMediaCapabilities_currentDeviceHEVCCapabilities__block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984288], *MEMORY[0x1E695E4D0]);
  VideoEncoderInstance = VTSelectAndCreateVideoEncoderInstance();
  CFRelease(Mutable);
  if (!VideoEncoderInstance)
  {
    currentDeviceHEVCCapabilities_sCapabilities = 1;
  }
}

+ (id)stringForSupport:(int64_t)a3
{
  if ((a3 + 1) > 3)
  {
    return @"PFMediaCapabilitiesSupportUnknown";
  }

  else
  {
    return off_1E7B64978[a3 + 1];
  }
}

+ (id)capabilitiesInformationForCurrentDeviceWithOptions:(id)a3
{
  v3 = a3;
  v4 = [[PFMediaCapabilitiesQuery alloc] initWithOptions:v3];

  v5 = [(PFMediaCapabilitiesQuery *)v4 dictionaryRepresentation];

  return v5;
}

+ (id)legacyCapabilities
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)capabilitiesForCurrentDeviceWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 capabilitiesInformationForCurrentDeviceWithOptions:v4];

  [v5 setCapabilitiesInformation:v6];

  return v5;
}

- (void)setSupportsTranscodeChoice:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSDictionary *)self->_capabilitiesInformation mutableCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v9 setObject:v6 forKeyedSubscript:@"TranscodeChoice"];

  v7 = [v9 copy];
  capabilitiesInformation = self->_capabilitiesInformation;
  self->_capabilitiesInformation = v7;
}

- (void)setSupportForAdjustmentBaseResources:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSDictionary *)self->_capabilitiesInformation mutableCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v9 setObject:v6 forKeyedSubscript:@"SupportsAdjustmentBaseResources"];

  v7 = [v9 copy];
  capabilitiesInformation = self->_capabilitiesInformation;
  self->_capabilitiesInformation = v7;
}

+ (id)recordSlomoConfigurationWithValidValues:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceSlomoConfiguration", @"com.apple.camera", 0)}];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {

    v4 = &unk_1F2AAB368;
  }

  return v4;
}

+ (id)recordVideoConfigurationWithValidValues:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceVideoConfiguration", @"com.apple.camera", 0)}];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {

    v4 = &unk_1F2AAB368;
  }

  return v4;
}

+ (BOOL)setNewFormatsConfiguration:(int64_t)a3 fromSource:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceCaptureEncodingBehaviorSource", @"com.apple.camera", 0);
  v8 = AppIntegerValue;
  if (a4 == 2 || AppIntegerValue < a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = v8;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "overwriting encoding behavior from source %ld to source %ld", buf, 0x16u);
    }

    CFPreferencesSetAppValue(@"CAMUserPreferenceCaptureEncodingBehaviorSource", [MEMORY[0x1E696AD98] numberWithInteger:a4], @"com.apple.camera");
  }

  if (a4 != 2 && v8 > a4)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  v10 = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceCaptureEncodingBehavior", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(@"CAMUserPreferenceCaptureEncodingBehavior", [MEMORY[0x1E696AD98] numberWithInteger:a3], @"com.apple.camera");
  }

  v9 = v10 != a3;
  if (v10 != a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = v10;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "changing encoding behavior from %ld to %ld", buf, 0x16u);
    }

    CFPreferencesSetAppValue(@"CAMUserPreferenceCaptureEncodingBehavior", [MEMORY[0x1E696AD98] numberWithInteger:a3], @"com.apple.camera");
    if (a3 == 1)
    {
      if (CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceSlomoConfiguration", @"com.apple.camera", 0) == 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v14 = 8;
          v15 = 2048;
          v16 = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "changing slow-mo configuration from %ld to %ld", buf, 0x16u);
        }

        [a1 setRecordSlomoConfiguration:&unk_1F2AAB368];
      }

      if (CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceVideoConfiguration", @"com.apple.camera", 0) == 9)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v14 = 9;
          v15 = 2048;
          v16 = 1;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "changing video configuration from %ld to %ld", buf, 0x16u);
        }

        [a1 setRecordVideoConfiguration:&unk_1F2AAB380];
      }
    }

    else if (!a3 && v10 == 1 && CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceSlomoConfiguration", @"com.apple.camera", 0) == 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v14 = 8;
        v15 = 2048;
        v16 = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "changing slow-mo configuration from %ld to %ld for change from MostCompatible back to Automatic", buf, 0x16u);
      }

      [a1 setRecordSlomoConfiguration:&unk_1F2AAB368];
    }

    CFPreferencesAppSynchronize(@"com.apple.camera");
  }

  return v9;
}

+ (id)testCapabilitiesNotSupportingHEIF
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)testCapabilitiesNotSupportingHEVC
{
  v2 = objc_opt_new();

  return v2;
}

@end