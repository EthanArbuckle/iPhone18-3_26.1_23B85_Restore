@interface PFMediaCapabilitiesQuery
- (PFMediaCapabilitiesQuery)initWithOptions:(id)options;
- (void)addAssetBundleInformationToDictionary:(id)dictionary;
- (void)addCodecInformation;
- (void)addCodecSupportInformationToDictionary:(id)dictionary;
- (void)addHEIFContainerInformationToDictionary:(id)dictionary;
- (void)addLivePhotoInformationToDictionary:(id)dictionary;
- (void)addPlatformInformation;
- (void)addSortSourceEnumerationAscendingWithOptions:(id)options;
- (void)addTranscodeChoiceWithOptions:(id)options;
- (void)addVendorSpecificInformationWithOptions:(id)options;
- (void)addVersion1And2HEVCCodecInformationToDictionary:(id)dictionary;
- (void)gatherCapabilitiesWithOptions:(id)options;
@end

@implementation PFMediaCapabilitiesQuery

- (void)addAssetBundleInformationToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v3 = +[PFAssetBundle currentFormatVersion];
  if (v3)
  {
    [dictionaryCopy setObject:v3 forKeyedSubscript:@"AssetBundleFormatVersion"];
  }
}

- (void)addLivePhotoInformationToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v3 = +[PFVideoComplement currentFormatVersion];
  if (v3)
  {
    [dictionaryCopy setObject:v3 forKeyedSubscript:@"LivePhotoFormatVersion"];
  }
}

- (void)addSortSourceEnumerationAscendingWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:@"SortSourceEnumerationAscending"];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v4 forKeyedSubscript:@"SortSourceEnumerationAscending"];
}

- (void)addTranscodeChoiceWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:@"SupportsTranscodeChoice"];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v4 forKeyedSubscript:@"TranscodeChoice"];
}

- (void)addPlatformInformation
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = _CFCopySystemVersionDictionary();
  v9[0] = @"Apple";
  v8[0] = @"PFMediaCapabilitiesPlatformVendorKey";
  v8[1] = @"PFMediaCapabilitiesPlatformNameKey";
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
  v9[1] = v4;
  v8[2] = @"PFMediaCapabilitiesPlatformVersionKey";
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E208]];
  v9[2] = v5;
  v8[3] = @"PFMediaCapabilitiesPlatformBuildVersionKey";
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v8[4] = @"PFMediaCapabilitiesPlatformTransportKey";
  v9[3] = v6;
  v9[4] = @"PTP";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v7 forKeyedSubscript:@"PFMediaCapabilitiesPlatformInfoKey"];
}

- (void)addVendorSpecificInformationWithOptions:(id)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  optionsCopy = options;
  dictionary = [v4 dictionary];
  [(PFMediaCapabilitiesQuery *)self addLivePhotoInformationToDictionary:dictionary];
  [(PFMediaCapabilitiesQuery *)self addAssetBundleInformationToDictionary:dictionary];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SupportsAdjustmentBaseResources"];
  v9 = @"com.apple";
  v10[0] = dictionary;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v7 forKeyedSubscript:@"Vendor"];

  v8 = [optionsCopy objectForKeyedSubscript:@"WantsPlatformInfo"];

  if (v8)
  {
    [(PFMediaCapabilitiesQuery *)self addPlatformInformation];
  }
}

- (void)addHEIFContainerInformationToDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v3 = CGImageSourceCopyTypeIdentifiers();
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x1E6983138];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
        v13 = [v12 conformsToType:v9];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  if ([array count])
  {
    v22 = @"HeifSubtypes";
    v23 = array;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    identifier = [*MEMORY[0x1E6983138] identifier];
    v16 = dictionaryCopy;
    [dictionaryCopy setObject:v14 forKeyedSubscript:identifier];
  }

  else
  {
    v16 = dictionaryCopy;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "System has no HEIF support, known identifiers = %@", buf, 0xCu);
    }
  }
}

- (void)addCodecSupportInformationToDictionary:(id)dictionary
{
  v8 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = +[PFMediaCapabilities videoCodecTypesEligibleForBackwardsCompatibilityTranscoding];
  v5 = VTCopyDecoderCapabilitiesDictionaryForCodecTypes();
  if (v5)
  {
    [dictionaryCopy setObject:v5 forKeyedSubscript:@"CodecSupport"];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get codec support information for codec types %{public}@", &v6, 0xCu);
  }
}

- (void)addVersion1And2HEVCCodecInformationToDictionary:(id)dictionary
{
  v12 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v9 = VideoDecoderInstance == 0;
    v10 = 1024;
    v11 = VideoDecoderInstance;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Has HEVC codec: %d, status = %x", buf, 0xEu);
  }

  if (!VideoDecoderInstance)
  {
    v5 = objc_opt_new();
    v6 = VTCopyHEVCDecoderCapabilitiesDictionary();
    [v5 setObject:v6 forKeyedSubscript:@"Profiles"];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", 104, 118, 99, 49];
    [dictionaryCopy setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)addCodecInformation
{
  v4 = objc_opt_new();
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v4 forKeyedSubscript:@"Codecs"];
  [(PFMediaCapabilitiesQuery *)self addVersion1And2HEVCCodecInformationToDictionary:v4];
  [(PFMediaCapabilitiesQuery *)self addCodecSupportInformationToDictionary:v4];
  v3 = objc_opt_new();
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v3 forKeyedSubscript:@"ContainerFormats"];
  [(PFMediaCapabilitiesQuery *)self addHEIFContainerInformationToDictionary:v3];
}

- (void)gatherCapabilitiesWithOptions:(id)options
{
  optionsCopy = options;
  [(PFMediaCapabilitiesQuery *)self addVersion];
  [(PFMediaCapabilitiesQuery *)self addCodecInformation];
  [(PFMediaCapabilitiesQuery *)self addVendorSpecificInformationWithOptions:optionsCopy];
  [(PFMediaCapabilitiesQuery *)self addTranscodeChoiceWithOptions:optionsCopy];
  [(PFMediaCapabilitiesQuery *)self addSortSourceEnumerationAscendingWithOptions:optionsCopy];
}

- (PFMediaCapabilitiesQuery)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = PFMediaCapabilitiesQuery;
  v5 = [(PFMediaCapabilitiesQuery *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    capabilitiesInformation = v5->_capabilitiesInformation;
    v5->_capabilitiesInformation = v6;

    [(PFMediaCapabilitiesQuery *)v5 gatherCapabilitiesWithOptions:optionsCopy];
  }

  return v5;
}

@end