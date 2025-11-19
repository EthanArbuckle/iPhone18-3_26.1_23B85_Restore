@interface RCCaptureFormat
+ (BOOL)supportsFileExtension:(id)a3;
+ (id)AVAssetAuthoringMetadataWithComposition:(id)a3;
+ (id)AVAssetAuthoringMetadataWithCreationDate:(id)a3 title:(id)a4 uniqueID:(id)a5 musicMemoMetadata:(id)a6;
+ (id)AVAssetAuthoringMetadataWithRecordingMetadata:(id)a3;
+ (id)AVAssetExportPresetForExportingToExtension:(id)a3 preferredFormat:(unsigned int)a4;
+ (id)AVFileTypeIdentifierForFileExtension:(id)a3;
+ (id)fileExtensionsSupported;
+ (id)supportedFileTypeIdentifiers;
+ (id)supportedFileTypes;
+ (void)_AVAssetExportDetermineSettingsForExportingAsset:(id)a3 outputExtensionWithFallbacks:(id)a4 preferredFormat:(unsigned int)a5 completionHandler:(id)a6;
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
  v3 = [a1 fileExtensionsSupported];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RCCaptureFormat_supportedFileTypes__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = a1;
  v4 = [v3 na_map:v6];

  return v4;
}

+ (id)supportedFileTypeIdentifiers
{
  v3 = [a1 fileExtensionsSupported];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__RCCaptureFormat_supportedFileTypeIdentifiers__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = a1;
  v4 = [v3 na_map:v6];

  return v4;
}

+ (BOOL)supportsFileExtension:(id)a3
{
  v4 = a3;
  v5 = [a1 fileExtensionsSupported];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)AVFileTypeIdentifierForFileExtension:(id)a3
{
  v3 = [a1 AVFileTypeForFileExtension:a3];
  v4 = [v3 identifier];

  return v4;
}

+ (id)AVAssetExportPresetForExportingToExtension:(id)a3 preferredFormat:(unsigned int)a4
{
  if ([a3 isEqualToString:@"m4a"])
  {
    v5 = MEMORY[0x277CE5C90];
    if (a4 != 1634492771)
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

+ (void)_AVAssetExportDetermineSettingsForExportingAsset:(id)a3 outputExtensionWithFallbacks:(id)a4 preferredFormat:(unsigned int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v11 count])
  {
    v13 = [v11 firstObject];
    v14 = [a1 AVFileTypeIdentifierForFileExtension:v13];
    [v11 removeObjectAtIndex:0];
    v15 = MEMORY[0x277CE6400];
    v16 = *MEMORY[0x277CE5C78];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __131__RCCaptureFormat__AVAssetExportDetermineSettingsForExportingAsset_outputExtensionWithFallbacks_preferredFormat_completionHandler___block_invoke;
    v20[3] = &unk_279E45230;
    v21 = v10;
    v27 = a5;
    v22 = v13;
    v23 = v14;
    v25 = v12;
    v26 = a1;
    v24 = v11;
    v17 = v14;
    v18 = v13;
    [v15 determineCompatibilityOfExportPreset:v16 withAsset:v21 outputFileType:v17 completionHandler:v20];
  }

  else
  {
    v19 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [RCCaptureFormat _AVAssetExportDetermineSettingsForExportingAsset:v10 outputExtensionWithFallbacks:v19 preferredFormat:? completionHandler:?];
    }

    (*(v12 + 2))(v12, 0, 0, 0);
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

+ (id)AVAssetAuthoringMetadataWithCreationDate:(id)a3 title:(id)a4 uniqueID:(id)a5 musicMemoMetadata:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = RCNonUserGeneratedDeviceName();
  v15 = RCOperatingSystemVersionString();
  v16 = *MEMORY[0x277CE5FB8];
  v17 = *MEMORY[0x277CE6000];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.VoiceMemos (%@ %@)", v14, v15];
  v19 = appendMDItem(v13, v16, v17, v18);

  if (v9)
  {
    v20 = appendMDItem(v13, *MEMORY[0x277CE5FA0], *MEMORY[0x277CE5F50], v9);
  }

  if (v10)
  {
    v21 = appendMDItem(v13, v16, *MEMORY[0x277CE6008], v10);
  }

  v22 = MEMORY[0x277CE5FC0];
  if (v11)
  {
    v23 = appendMDItem(v13, *MEMORY[0x277CE5FC0], @"com.apple.iTunes.voice-memo-uuid", v11);
  }

  if (v12)
  {
    v24 = [v12 objectForKeyedSubscript:@"musicMemoTextNote"];
    v25 = v24;
    if (v24 && [v24 length])
    {
      v26 = appendMDItem(v13, *v22, @"com.apple.iTunes.music-memo-note", v25);
    }

    v27 = [v12 objectForKeyedSubscript:@"musicMemoStarRating"];
    if (v27)
    {
      v28 = appendMDItem(v13, *v22, @"com.apple.iTunes.music-memo-rating", v27);
    }

    v29 = [v12 objectForKeyedSubscript:@"musicMemoTags"];
    v30 = v29;
    if (v29 && [v29 length])
    {
      v31 = appendMDItem(v13, *MEMORY[0x277CE5FC0], @"com.apple.iTunes.music-memo-tags", v30);
    }
  }

  return v13;
}

+ (id)AVAssetAuthoringMetadataWithComposition:(id)a3
{
  v4 = a3;
  v5 = [v4 creationDate];
  v6 = [v4 title];
  v7 = [v4 savedRecordingUUID];
  v8 = [v4 musicMemoMetadata];

  v9 = [a1 AVAssetAuthoringMetadataWithCreationDate:v5 title:v6 uniqueID:v7 musicMemoMetadata:v8];

  return v9;
}

+ (id)AVAssetAuthoringMetadataWithRecordingMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"date"];
  v5 = [v3 objectForKeyedSubscript:@"title"];
  v6 = [v3 objectForKeyedSubscript:@"uniqueID"];
  v7 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:v4 title:v5 uniqueID:v6 musicMemoMetadata:v3];

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