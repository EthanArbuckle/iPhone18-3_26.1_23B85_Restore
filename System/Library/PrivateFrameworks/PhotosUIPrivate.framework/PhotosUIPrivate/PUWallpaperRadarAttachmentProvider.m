@interface PUWallpaperRadarAttachmentProvider
+ (id)generateDebugDescriptionForSuggestion:(id)a3;
+ (id)radarConfigurationForAsset:(id)a3 suggestion:(id)a4 compoundLayerStack:(id)a5 segmentationItem:(id)a6 posterDescriptor:(id)a7 posterConfiguration:(id)a8 component:(int64_t)a9 completionHandler:(id)a10;
- (PUWallpaperRadarAttachmentProvider)initWithSuggestion:(id)a3 asset:(id)a4;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
@end

@implementation PUWallpaperRadarAttachmentProvider

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PUWallpaperRadarAttachmentProvider *)self suggestion];
  v7 = [v5 generateDebugDescriptionForSuggestion:v6];

  [v4 addAttachment:v7];
}

- (PUWallpaperRadarAttachmentProvider)initWithSuggestion:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PUWallpaperRadarAttachmentProvider;
  v9 = [(PUWallpaperRadarAttachmentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeStrong(&v10->_asset, a4);
  }

  return v10;
}

+ (id)radarConfigurationForAsset:(id)a3 suggestion:(id)a4 compoundLayerStack:(id)a5 segmentationItem:(id)a6 posterDescriptor:(id)a7 posterConfiguration:(id)a8 component:(int64_t)a9 completionHandler:(id)a10
{
  v16 = MEMORY[0x1E69C3940];
  v17 = a10;
  v28 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_alloc_init(v16);
  [v23 setComponent:a9];
  [v23 setClassification:7];
  [v23 setWantsPhotosDiagnostics:1];
  [v23 setCompletionHandler:v17];

  v24 = [[PUParallaxLayerStackRadarController alloc] initWithAsset:v22 compoundLayerStack:v20 segmentationItem:v19 posterDescriptor:v18 posterConfiguration:v28];
  [v23 addDiagnosticProvider:v24];
  v25 = [[PUWallpaperRadarAttachmentProvider alloc] initWithSuggestion:v21 asset:v22];
  [v23 addDiagnosticProvider:v25];
  v26 = [[PUWallpaperVisualDiagnosticsProvider alloc] initWithSuggestion:v21 asset:v22];

  [v23 addDiagnosticProvider:v26];

  return v23;
}

+ (id)generateDebugDescriptionForSuggestion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 uuid];
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suggestion-%@", v4];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:1];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = [v3 debugDescription];
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
        v22 = v4;
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