@interface PFMediaCapabilitiesQuery
- (PFMediaCapabilitiesQuery)initWithOptions:(id)a3;
- (void)addAssetBundleInformationToDictionary:(id)a3;
- (void)addCodecInformation;
- (void)addCodecSupportInformationToDictionary:(id)a3;
- (void)addHEIFContainerInformationToDictionary:(id)a3;
- (void)addLivePhotoInformationToDictionary:(id)a3;
- (void)addPlatformInformation;
- (void)addSortSourceEnumerationAscendingWithOptions:(id)a3;
- (void)addTranscodeChoiceWithOptions:(id)a3;
- (void)addVendorSpecificInformationWithOptions:(id)a3;
- (void)addVersion1And2HEVCCodecInformationToDictionary:(id)a3;
- (void)gatherCapabilitiesWithOptions:(id)a3;
@end

@implementation PFMediaCapabilitiesQuery

- (void)addAssetBundleInformationToDictionary:(id)a3
{
  v4 = a3;
  v3 = +[PFAssetBundle currentFormatVersion];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:@"AssetBundleFormatVersion"];
  }
}

- (void)addLivePhotoInformationToDictionary:(id)a3
{
  v4 = a3;
  v3 = +[PFVideoComplement currentFormatVersion];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:@"LivePhotoFormatVersion"];
  }
}

- (void)addSortSourceEnumerationAscendingWithOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SortSourceEnumerationAscending"];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v4 forKeyedSubscript:@"SortSourceEnumerationAscending"];
}

- (void)addTranscodeChoiceWithOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SupportsTranscodeChoice"];
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

- (void)addVendorSpecificInformationWithOptions:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [(PFMediaCapabilitiesQuery *)self addLivePhotoInformationToDictionary:v6];
  [(PFMediaCapabilitiesQuery *)self addAssetBundleInformationToDictionary:v6];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SupportsAdjustmentBaseResources"];
  v9 = @"com.apple";
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(NSMutableDictionary *)self->_capabilitiesInformation setObject:v7 forKeyedSubscript:@"Vendor"];

  v8 = [v5 objectForKeyedSubscript:@"WantsPlatformInfo"];

  if (v8)
  {
    [(PFMediaCapabilitiesQuery *)self addPlatformInformation];
  }
}

- (void)addHEIFContainerInformationToDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v3 = CGImageSourceCopyTypeIdentifiers();
  v4 = [MEMORY[0x1E695DF70] array];
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
          [v4 addObject:v11];
        }
      }

      v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v22 = @"HeifSubtypes";
    v23 = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [*MEMORY[0x1E6983138] identifier];
    v16 = v17;
    [v17 setObject:v14 forKeyedSubscript:v15];
  }

  else
  {
    v16 = v17;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "System has no HEIF support, known identifiers = %@", buf, 0xCu);
    }
  }
}

- (void)addCodecSupportInformationToDictionary:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PFMediaCapabilities videoCodecTypesEligibleForBackwardsCompatibilityTranscoding];
  v5 = VTCopyDecoderCapabilitiesDictionaryForCodecTypes();
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"CodecSupport"];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get codec support information for codec types %{public}@", &v6, 0xCu);
  }
}

- (void)addVersion1And2HEVCCodecInformationToDictionary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    [v3 setObject:v5 forKeyedSubscript:v7];
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

- (void)gatherCapabilitiesWithOptions:(id)a3
{
  v4 = a3;
  [(PFMediaCapabilitiesQuery *)self addVersion];
  [(PFMediaCapabilitiesQuery *)self addCodecInformation];
  [(PFMediaCapabilitiesQuery *)self addVendorSpecificInformationWithOptions:v4];
  [(PFMediaCapabilitiesQuery *)self addTranscodeChoiceWithOptions:v4];
  [(PFMediaCapabilitiesQuery *)self addSortSourceEnumerationAscendingWithOptions:v4];
}

- (PFMediaCapabilitiesQuery)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFMediaCapabilitiesQuery;
  v5 = [(PFMediaCapabilitiesQuery *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    capabilitiesInformation = v5->_capabilitiesInformation;
    v5->_capabilitiesInformation = v6;

    [(PFMediaCapabilitiesQuery *)v5 gatherCapabilitiesWithOptions:v4];
  }

  return v5;
}

@end