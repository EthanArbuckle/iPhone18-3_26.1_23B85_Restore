@interface PHAsset
@end

@implementation PHAsset

void __36__PHAsset_PhotosUICore___ocrStrings__block_invoke()
{
  _ocrStrings_observationClass = NSClassFromString(&cfstr_Vndocumentobse.isa);
  if (!_ocrStrings_observationClass && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VNDocumentObservation not available in current process", v0, 2u);
  }
}

void __47__PHAsset_PhotosUICore__px_curationDebugValues__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = px_curationDebugValues_dateFormatter;
  px_curationDebugValues_dateFormatter = v0;

  [px_curationDebugValues_dateFormatter setDateFormat:@"yyyy.MM.dd HH:mm:ss.SS"];
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [px_curationDebugValues_dateFormatter setTimeZone:v2];
}

void __52__PHAsset_PhotosUICore__px_debugStringForValueList___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a2;
  v10 = [[v3 alloc] initWithString:@"––––––––––––––––––––––––––––\n" attributes:*(a1 + 32)];
  [*(a1 + 40) appendAttributedString:v10];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 uppercaseString];

  v8 = [v6 stringWithFormat:@"%@\n", v7];
  v9 = [v5 initWithString:v8 attributes:*(a1 + 48)];

  [*(a1 + 40) appendAttributedString:v9];
}

void __52__PHAsset_PhotosUICore__px_debugStringForValueList___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a2;
  v5 = [v3 alloc];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"??";
  }

  v8 = [v5 initWithString:v6 attributes:*(a1 + 32)];

  [*(a1 + 40) appendAttributedString:v8];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" : " attributes:*(a1 + 48)];
  [*(a1 + 40) appendAttributedString:v7];
}

void __77__PHAsset_PhotosUICore__px_generateResourceFilesForAssets_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) checkResourceIsReachableAndReturnError:0])
  {
    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __49__PHAsset_PXSharingAdditions__px_isSupportedApp___block_invoke()
{
  v0 = px_isSupportedApp__supportedOriginators;
  px_isSupportedApp__supportedOriginators = &unk_1F1911848;
}

@end