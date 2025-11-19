@interface VKCAnalysisDebugMenuProvider
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)menuFromElements:(id)a3 title:(id)a4;
- (id)menuFromProvider:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)presentDebugMenuProvider:(id)a3 fromView:(id)a4 rect:(CGRect)a5;
@end

@implementation VKCAnalysisDebugMenuProvider

- (void)presentDebugMenuProvider:(id)a3 fromView:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = MEMORY[0x1E69DC8E0];
  v12 = a4;
  v13 = a3;
  v14 = [[v11 alloc] initWithDelegate:self];
  [(VKCAnalysisDebugMenuProvider *)self setContextMenuInteraction:v14];

  v15 = [(VKCAnalysisDebugMenuProvider *)self contextMenuInteraction];
  [v12 addInteraction:v15];

  [(VKCAnalysisDebugMenuProvider *)self setProvider:v13];
  v17 = [(VKCAnalysisDebugMenuProvider *)self contextMenuInteraction];
  v16 = [[VKQuad alloc] initWithRect:x, y, width, height];
  [(VKQuad *)v16 bottomRight];
  [v17 _presentMenuAtLocation:?];
}

- (id)menuFromProvider:(id)a3
{
  v3 = a3;
  v4 = [v3 analysisResult];
  v88 = [v3 delegate];
  v90 = [v4 text];
  v5 = [v4 text];
  v6 = [v5 length];

  v91 = [v3 selectedRange];
  [v3 totalQuadTextArea];
  v8 = v7;
  [v3 totalBoundingBoxTextArea];
  v10 = v9;
  if (v3)
  {
    [v3 visibleTextAreaInfo];
    v11 = 0.0 * 100.0;
    v85 = 0.0;
    v84 = v85;
    v83 = v85;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v11 = 0.0;
  }

  v12 = v8 * 100.0;
  v13 = v10 * 100.0;
  v86 = [v3 subjectRequestStatus];
  v14 = [v3 subjectContext];
  v82 = [v14 subjectCount];
  v89 = [v14 animatedStickerScore];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [v3 analysisResult];
  v17 = [v16 request];
  v18 = VKMUIStringForAnalysisTypes([v17 analysisTypes]);

  v19 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"AnalysisTypes" subtitle:v18];
  [v15 addObject:v19];

  v20 = VKMUIStringForAnalysisInteractionTypes([v3 activeInteractionTypes]);

  v21 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Interaction Types" subtitle:v20];
  [v15 addObject:v21];

  v22 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Visible Quad Height (In Window)" subtitle:v20];
  [v15 addObject:v22];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v6];

  v24 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Characters" subtitle:v23];
  [v15 addObject:v24];

  v25 = MEMORY[0x1E69DC628];
  v26 = VKMUIStringForVKRange(v91);
  v27 = [v25 vk_itemWithTitle:@"SelectedRange" subtitle:v26];
  [v15 addObject:v27];

  if ([v91 length])
  {
    v28 = [v90 vk_substringWithVKRange:v91];
  }

  else
  {
    v28 = @"(none)";
  }

  v29 = MEMORY[0x1E69DC628];
  v30 = [(__CFString *)v28 vk_substringToIndex:50];
  v31 = [v29 vk_itemWithTitle:@"Selected Text" subtitle:v30];
  [v15 addObject:v31];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bounding Box:%.02f%%", *&v11];

  v33 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Visible Text Area" subtitle:v32];
  [v15 addObject:v33];

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Box:%.02f%% Quad:%.02f%%", *&v13, *&v12];

  v35 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Full Image Text Area" subtitle:v34];
  [v15 addObject:v35];

  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"max:%d min:%d avg:%d", v85, v84, v83];

  v37 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Visible Quad Height (In Window)" subtitle:v36];
  [v15 addObject:v37];

  v38 = [MEMORY[0x1E696AD98] numberWithInteger:v82];
  v39 = [v38 description];

  v40 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Subject Count" subtitle:v39];
  [v15 addObject:v40];

  v41 = VKMUIStringForSubjectRequestStatus(v86);

  v42 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Subject Request Status" subtitle:v41];
  [v15 addObject:v42];

  if (v14)
  {
    if (v89)
    {
      v43 = MEMORY[0x1E696AEC0];
      [v89 floatValue];
      v45 = [v43 stringWithFormat:@"Sticker Score: %.02f", v44];
    }

    else
    {
      v45 = @"StickerScore: nil";
    }

    v46 = [MEMORY[0x1E69DC628] vk_itemWithTitle:v45 subtitle:0];
    [v15 addObject:v46];

    v41 = v45;
  }

  [v3 contentsRect];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v3 visibleImageRect];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = MEMORY[0x1E696AEC0];
  v64 = VKMUIStringForRect(v48, v50, v52, v54);
  v65 = [v63 stringWithFormat:@"%@", v64];

  v66 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"ContentsRect" subtitle:v65];
  [v15 addObject:v66];

  v67 = MEMORY[0x1E696AEC0];
  v68 = VKMUIStringForRect(v56, v58, v60, v62);
  v69 = [v67 stringWithFormat:@"%@", v68];

  v70 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"VisibleRect" subtitle:v69];
  [v15 addObject:v70];

  v71 = [v4 textDataDetectorElements];
  v72 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:v71 title:@"Data Detectors"];
  [v15 addObject:v72];

  v73 = [v4 mrcDataDetectorElements];
  v74 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:v73 title:@"MRC DD"];
  [v15 addObject:v74];

  v75 = [v4 visualSearchResult];
  v76 = [v75 resultItems];
  v77 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:v76 title:@"Visual Search"];
  [v15 addObject:v77];

  v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v88];

  v79 = [MEMORY[0x1E69DC628] vk_itemWithTitle:v78 subtitle:0];
  [v15 addObject:v79];

  v80 = [MEMORY[0x1E69DCC60] vk_menuWithItems:v15 title:0];

  return v80;
}

- (id)menuFromElements:(id)a3 title:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"%@: (%lu)", v6, objc_msgSend(v7, "count")];

  v9 = [v7 vk_compactMap:&__block_literal_global_9];

  v10 = [MEMORY[0x1E69DCC60] vk_menuWithItems:v9 title:v8];

  return v10;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC8D8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__VKCAnalysisDebugMenuProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v9[3] = &unk_1E7BE5018;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v7 = [v6 configurationWithIdentifier:0 previewProvider:&__block_literal_global_233 actionProvider:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

id __86__VKCAnalysisDebugMenuProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) provider];
  v4 = [WeakRetained menuFromProvider:v3];

  return v4;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v4 = [MEMORY[0x1E69DD440] defaultStyle];
  [v4 setPreferredLayout:3];

  return v4;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v5 = a3;
  v6 = [v5 view];
  [v6 removeInteraction:v5];
}

@end