@interface RCCaptureFormat
+ (BOOL)supportsFileExtension:(id)extension;
+ (id)AVAssetAuthoringMetadataWithComposition:(id)composition;
+ (id)AVAssetAuthoringMetadataWithCreationDate:(id)date title:(id)title uniqueID:(id)d musicMemoMetadata:(id)metadata;
+ (id)AVAssetAuthoringMetadataWithRecordingMetadata:(id)metadata;
+ (id)AVAssetExportPresetForExportingToExtension:(id)extension preferredFormat:(unsigned int)format;
+ (id)AVFileTypeIdentifierForFileExtension:(id)extension;
+ (id)fileExtensionsSupported;
+ (id)supportedFileTypeIdentifiers;
+ (id)supportedFileTypes;
+ (void)_AVAssetExportDetermineSettingsForExportingAsset:(id)asset outputExtensionWithFallbacks:(id)fallbacks preferredFormat:(unsigned int)format completionHandler:(id)handler;
@end

@implementation RCCaptureFormat

+ (id)fileExtensionsSupported
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"m4a";
  v5[1] = @"qta";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)supportedFileTypes
{
  fileExtensionsSupported = [self fileExtensionsSupported];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RCCaptureFormat_supportedFileTypes__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = self;
  v4 = [fileExtensionsSupported na_map:v6];

  return v4;
}

+ (id)supportedFileTypeIdentifiers
{
  fileExtensionsSupported = [self fileExtensionsSupported];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RCCaptureFormat_supportedFileTypeIdentifiers__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = self;
  v4 = [fileExtensionsSupported na_map:v6];

  return v4;
}

+ (BOOL)supportsFileExtension:(id)extension
{
  extensionCopy = extension;
  fileExtensionsSupported = [self fileExtensionsSupported];
  v6 = [fileExtensionsSupported containsObject:extensionCopy];

  return v6;
}

+ (id)AVFileTypeIdentifierForFileExtension:(id)extension
{
  v3 = [self AVFileTypeForFileExtension:extension];
  identifier = [v3 identifier];

  return identifier;
}

+ (id)AVAssetExportPresetForExportingToExtension:(id)extension preferredFormat:(unsigned int)format
{
  if ([extension isEqualToString:@"m4a"])
  {
    v5 = MEMORY[0x277CE5C90];
    if (format != 1634492771)
    {
      v5 = MEMORY[0x277CE5BE0];
    }
  }

  else
  {
    v5 = MEMORY[0x277CE5C00];
  }

  v6 = *v5;

  return v6;
}

+ (void)_AVAssetExportDetermineSettingsForExportingAsset:(id)asset outputExtensionWithFallbacks:(id)fallbacks preferredFormat:(unsigned int)format completionHandler:(id)handler
{
  assetCopy = asset;
  fallbacksCopy = fallbacks;
  handlerCopy = handler;
  if ([fallbacksCopy count])
  {
    firstObject = [fallbacksCopy firstObject];
    v14 = [self AVFileTypeIdentifierForFileExtension:firstObject];
    [fallbacksCopy removeObjectAtIndex:0];
    v15 = MEMORY[0x277CE6400];
    v16 = *MEMORY[0x277CE5C78];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __131__RCCaptureFormat__AVAssetExportDetermineSettingsForExportingAsset_outputExtensionWithFallbacks_preferredFormat_completionHandler___block_invoke;
    v20[3] = &unk_279E45230;
    v21 = assetCopy;
    formatCopy = format;
    v22 = firstObject;
    v23 = v14;
    v25 = handlerCopy;
    selfCopy = self;
    v24 = fallbacksCopy;
    v17 = v14;
    v18 = firstObject;
    [v15 determineCompatibilityOfExportPreset:v16 withAsset:v21 outputFileType:v17 completionHandler:v20];
  }

  else
  {
    v19 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [RCCaptureFormat _AVAssetExportDetermineSettingsForExportingAsset:assetCopy outputExtensionWithFallbacks:v19 preferredFormat:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

void __131__RCCaptureFormat__AVAssetExportDetermineSettingsForExportingAsset_outputExtensionWithFallbacks_preferredFormat_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v17 = [*(a1 + 32) rc_audioTracks];
  if ([v17 count] <= 1)
  {
    v3 = [v17 firstObject];
    v4 = [v3 formatDescriptions];
    v5 = [v4 count];

    if (v5 <= 1)
    {
      v6 = [v17 firstObject];
      v7 = [v6 formatDescriptions];
      v8 = [v7 firstObject];

      if (CMAudioFormatDescriptionGetStreamBasicDescription(v8)->mFormatID != *(a1 + 80))
      {

LABEL_9:
        v12 = [RCCaptureFormat AVAssetExportPresetForExportingToExtension:*(a1 + 40) preferredFormat:*(a1 + 80)];
        v13 = MEMORY[0x277CE6400];
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __131__RCCaptureFormat__AVAssetExportDetermineSettingsForExportingAsset_outputExtensionWithFallbacks_preferredFormat_completionHandler___block_invoke_2;
        v18[3] = &unk_279E45208;
        v24 = *(a1 + 64);
        v19 = *(a1 + 40);
        v20 = *(a1 + 48);
        v21 = v12;
        v25 = *(a1 + 72);
        v22 = *(a1 + 32);
        v23 = *(a1 + 56);
        v26 = *(a1 + 80);
        v16 = v12;
        [v13 determineCompatibilityOfExportPreset:v16 withAsset:v14 outputFileType:v15 completionHandler:v18];

        return;
      }
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *MEMORY[0x277CE5C78];
  (*(*(a1 + 64) + 16))();
}

uint64_t __131__RCCaptureFormat__AVAssetExportDetermineSettingsForExportingAsset_outputExtensionWithFallbacks_preferredFormat_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    return [*(a1 + 80) _AVAssetExportDetermineSettingsForExportingAsset:*(a1 + 56) outputExtensionWithFallbacks:*(a1 + 64) preferredFormat:*(a1 + 88) completionHandler:*(a1 + 72)];
  }
}

+ (id)AVAssetAuthoringMetadataWithCreationDate:(id)date title:(id)title uniqueID:(id)d musicMemoMetadata:(id)metadata
{
  dateCopy = date;
  titleCopy = title;
  dCopy = d;
  metadataCopy = metadata;
  array = [MEMORY[0x277CBEB18] array];
  v14 = RCNonUserGeneratedDeviceName();
  v15 = RCOperatingSystemVersionString();
  v16 = *MEMORY[0x277CE5FB8];
  v17 = *MEMORY[0x277CE6000];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.VoiceMemos (%@ %@)", v14, v15];
  v19 = appendMDItem(array, v16, v17, v18);

  if (dateCopy)
  {
    v20 = appendMDItem(array, *MEMORY[0x277CE5FA0], *MEMORY[0x277CE5F50], dateCopy);
  }

  if (titleCopy)
  {
    v21 = appendMDItem(array, v16, *MEMORY[0x277CE6008], titleCopy);
  }

  v22 = MEMORY[0x277CE5FC0];
  if (dCopy)
  {
    v23 = appendMDItem(array, *MEMORY[0x277CE5FC0], @"com.apple.iTunes.voice-memo-uuid", dCopy);
  }

  if (metadataCopy)
  {
    v24 = [metadataCopy objectForKeyedSubscript:@"musicMemoTextNote"];
    v25 = v24;
    if (v24 && [v24 length])
    {
      v26 = appendMDItem(array, *v22, @"com.apple.iTunes.music-memo-note", v25);
    }

    v27 = [metadataCopy objectForKeyedSubscript:@"musicMemoStarRating"];
    if (v27)
    {
      v28 = appendMDItem(array, *v22, @"com.apple.iTunes.music-memo-rating", v27);
    }

    v29 = [metadataCopy objectForKeyedSubscript:@"musicMemoTags"];
    v30 = v29;
    if (v29 && [v29 length])
    {
      v31 = appendMDItem(array, *MEMORY[0x277CE5FC0], @"com.apple.iTunes.music-memo-tags", v30);
    }
  }

  return array;
}

+ (id)AVAssetAuthoringMetadataWithComposition:(id)composition
{
  compositionCopy = composition;
  creationDate = [compositionCopy creationDate];
  title = [compositionCopy title];
  savedRecordingUUID = [compositionCopy savedRecordingUUID];
  musicMemoMetadata = [compositionCopy musicMemoMetadata];

  v9 = [self AVAssetAuthoringMetadataWithCreationDate:creationDate title:title uniqueID:savedRecordingUUID musicMemoMetadata:musicMemoMetadata];

  return v9;
}

+ (id)AVAssetAuthoringMetadataWithRecordingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"date"];
  v5 = [metadataCopy objectForKeyedSubscript:@"title"];
  v6 = [metadataCopy objectForKeyedSubscript:@"uniqueID"];
  v7 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:v4 title:v5 uniqueID:v6 musicMemoMetadata:metadataCopy];

  return v7;
}

+ (void)_AVAssetExportDetermineSettingsForExportingAsset:(uint64_t)a1 outputExtensionWithFallbacks:(NSObject *)a2 preferredFormat:completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[RCCaptureFormat _AVAssetExportDetermineSettingsForExportingAsset:outputExtensionWithFallbacks:preferredFormat:completionHandler:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Unable to determine any output settings for asset %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end