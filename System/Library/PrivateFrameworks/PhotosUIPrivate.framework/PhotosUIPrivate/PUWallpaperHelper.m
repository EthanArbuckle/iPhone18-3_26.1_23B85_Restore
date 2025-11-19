@interface PUWallpaperHelper
+ (id)deleteSuggestionAction:(id)a3;
+ (id)fileRadarActionForComponent:(int64_t)a3 title:(id)a4 suggestion:(id)a5 asset:(id)a6 actionBeingHandler:(id)a7 actionEndHandler:(id)a8;
+ (id)fileRadarSubmenuForSuggestion:(id)a3 asset:(id)a4 actionBeingHandler:(id)a5 actionEndHandler:(id)a6;
+ (id)presentPosterEditorWithAsset:(id)a3 fromViewController:(id)a4;
+ (id)rejectSuggestionAction:(id)a3;
@end

@implementation PUWallpaperHelper

+ (id)fileRadarActionForComponent:(int64_t)a3 title:(id)a4 suggestion:(id)a5 asset:(id)a6 actionBeingHandler:(id)a7 actionEndHandler:(id)a8
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = MEMORY[0x1E69DC628];
  v18 = MEMORY[0x1E69DCAB8];
  v19 = a4;
  v20 = [v18 systemImageNamed:@"ant.circle"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __108__PUWallpaperHelper_fileRadarActionForComponent_title_suggestion_asset_actionBeingHandler_actionEndHandler___block_invoke;
  v27[3] = &unk_1E7B7C4F0;
  v28 = v14;
  v29 = v13;
  v31 = v16;
  v32 = a3;
  v30 = v15;
  v21 = v16;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = [v17 actionWithTitle:v19 image:v20 identifier:0 handler:v27];

  return v25;
}

void __108__PUWallpaperHelper_fileRadarActionForComponent_title_suggestion_asset_actionBeingHandler_actionEndHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [PUWallpaperRadarAttachmentProvider radarConfigurationForAsset:a1[4] suggestion:a1[5] compoundLayerStack:0 segmentationItem:0 posterDescriptor:0 posterConfiguration:0 component:a1[8] completionHandler:a1[7]];
  PXFileRadarWithConfiguration();
}

+ (id)fileRadarSubmenuForSuggestion:(id)a3 asset:(id)a4 actionBeingHandler:(id)a5 actionEndHandler:(id)a6
{
  v22[3] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 fileRadarActionForComponent:8 title:@"File Curation Radar" suggestion:v13 asset:v12 actionBeingHandler:v11 actionEndHandler:v10];
  v15 = [a1 fileRadarActionForComponent:7 title:@"File UI Radar" suggestion:v13 asset:v12 actionBeingHandler:v11 actionEndHandler:{v10, v14}];
  v22[1] = v15;
  v16 = [a1 fileRadarActionForComponent:9 title:@"File Imaging Radar" suggestion:v13 asset:v12 actionBeingHandler:v11 actionEndHandler:v10];

  v22[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

  v18 = MEMORY[0x1E69DCC60];
  v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant.circle"];
  v20 = [v18 menuWithTitle:@"File Radar" image:v19 identifier:0 options:32 children:v17];

  return v20;
}

+ (id)presentPosterEditorWithAsset:(id)a3 fromViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DC628];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slider.horizontal.3"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PUWallpaperHelper_presentPosterEditorWithAsset_fromViewController___block_invoke;
  v13[3] = &unk_1E7B7C4C8;
  v14 = v5;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  v11 = [v7 actionWithTitle:@"Edit Poster" image:v8 identifier:0 handler:v13];

  return v11;
}

void __69__PUWallpaperHelper_presentPosterEditorWithAsset_fromViewController___block_invoke(uint64_t a1)
{
  v2 = [[PUWallpaperPosterEditDebugViewController alloc] initWithAsset:*(a1 + 32)];
  [(PUWallpaperPosterEditDebugViewController *)v2 setModalPresentationStyle:5];
  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

+ (id)rejectSuggestionAction:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC628];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PUWallpaperHelper_rejectSuggestionAction___block_invoke;
  v9[3] = &unk_1E7B7C4A0;
  v10 = v3;
  v6 = v3;
  v7 = [v4 actionWithTitle:@"Reject Suggestion" image:v5 identifier:0 handler:v9];

  [v7 setAttributes:2];

  return v7;
}

void __44__PUWallpaperHelper_rejectSuggestionAction___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69C15B0];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PUWallpaperHelper_rejectSuggestionAction___block_invoke_2;
  v3[3] = &unk_1E7B80280;
  v4 = v2;
  [v1 rejectWallpaperSuggestionsUsingAssetOfSuggestion:v4 completionHandler:v3];
}

void __44__PUWallpaperHelper_rejectSuggestionAction___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localIdentifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed rejecting Suggesstion %@, error: %@", &v8, 0x16u);
    }
  }
}

+ (id)deleteSuggestionAction:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC628];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PUWallpaperHelper_deleteSuggestionAction___block_invoke;
  v9[3] = &unk_1E7B7C4A0;
  v10 = v3;
  v6 = v3;
  v7 = [v4 actionWithTitle:@"Delete Suggestion" image:v5 identifier:0 handler:v9];

  [v7 setAttributes:2];

  return v7;
}

void __44__PUWallpaperHelper_deleteSuggestionAction___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PUWallpaperHelper_deleteSuggestionAction___block_invoke_2;
  v8[3] = &unk_1E7B80DD0;
  v9 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 performChangesAndWait:v8 error:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) localIdentifier];
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Failed deleting Suggesstion %@, error: %@", buf, 0x16u);
    }
  }
}

void __44__PUWallpaperHelper_deleteSuggestionAction___block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978AF0];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteSuggestions:v2];
}

@end