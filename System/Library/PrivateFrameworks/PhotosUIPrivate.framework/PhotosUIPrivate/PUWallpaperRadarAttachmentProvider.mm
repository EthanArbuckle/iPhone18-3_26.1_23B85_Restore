@interface PUWallpaperRadarAttachmentProvider
+ (id)generateDebugDescriptionForSuggestion:(id)suggestion;
+ (id)radarConfigurationForAsset:(id)asset suggestion:(id)suggestion compoundLayerStack:(id)stack segmentationItem:(id)item posterDescriptor:(id)descriptor posterConfiguration:(id)configuration component:(int64_t)component completionHandler:(id)self0;
- (PUWallpaperRadarAttachmentProvider)initWithSuggestion:(id)suggestion asset:(id)asset;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
@end

@implementation PUWallpaperRadarAttachmentProvider

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  v5 = objc_opt_class();
  suggestion = [(PUWallpaperRadarAttachmentProvider *)self suggestion];
  v7 = [v5 generateDebugDescriptionForSuggestion:suggestion];

  [containerCopy addAttachment:v7];
}

- (PUWallpaperRadarAttachmentProvider)initWithSuggestion:(id)suggestion asset:(id)asset
{
  suggestionCopy = suggestion;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PUWallpaperRadarAttachmentProvider;
  v9 = [(PUWallpaperRadarAttachmentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, suggestion);
    objc_storeStrong(&v10->_asset, asset);
  }

  return v10;
}

+ (id)radarConfigurationForAsset:(id)asset suggestion:(id)suggestion compoundLayerStack:(id)stack segmentationItem:(id)item posterDescriptor:(id)descriptor posterConfiguration:(id)configuration component:(int64_t)component completionHandler:(id)self0
{
  v16 = MEMORY[0x1E69C3940];
  handlerCopy = handler;
  configurationCopy = configuration;
  descriptorCopy = descriptor;
  itemCopy = item;
  stackCopy = stack;
  suggestionCopy = suggestion;
  assetCopy = asset;
  v23 = objc_alloc_init(v16);
  [v23 setComponent:component];
  [v23 setClassification:7];
  [v23 setWantsPhotosDiagnostics:1];
  [v23 setCompletionHandler:handlerCopy];

  v24 = [[PUParallaxLayerStackRadarController alloc] initWithAsset:assetCopy compoundLayerStack:stackCopy segmentationItem:itemCopy posterDescriptor:descriptorCopy posterConfiguration:configurationCopy];
  [v23 addDiagnosticProvider:v24];
  v25 = [[PUWallpaperRadarAttachmentProvider alloc] initWithSuggestion:suggestionCopy asset:assetCopy];
  [v23 addDiagnosticProvider:v25];
  v26 = [[PUWallpaperVisualDiagnosticsProvider alloc] initWithSuggestion:suggestionCopy asset:assetCopy];

  [v23 addDiagnosticProvider:v26];

  return v23;
}

+ (id)generateDebugDescriptionForSuggestion:(id)suggestion
{
  v25 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  uuid = [suggestionCopy uuid];
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suggestion-%@", uuid];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v10 = [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = [suggestionCopy debugDescription];
    v13 = [v7 stringByAppendingPathComponent:@"suggestion_debug_information.txt"];
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
    v19 = 0;
    v15 = [v12 writeToURL:v14 atomically:1 encoding:4 error:&v19];
    v16 = v19;
    if ((v15 & 1) == 0)
    {
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = uuid;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "Failed saving Suggestion<%@> description. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Failed creating temp directory for Suggestion TTR. Error: %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

@end