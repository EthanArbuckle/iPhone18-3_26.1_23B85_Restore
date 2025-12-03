@interface VKCAnalysisDebugMenuProvider
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)menuFromElements:(id)elements title:(id)title;
- (id)menuFromProvider:(id)provider;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)presentDebugMenuProvider:(id)provider fromView:(id)view rect:(CGRect)rect;
@end

@implementation VKCAnalysisDebugMenuProvider

- (void)presentDebugMenuProvider:(id)provider fromView:(id)view rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = MEMORY[0x1E69DC8E0];
  viewCopy = view;
  providerCopy = provider;
  v14 = [[v11 alloc] initWithDelegate:self];
  [(VKCAnalysisDebugMenuProvider *)self setContextMenuInteraction:v14];

  contextMenuInteraction = [(VKCAnalysisDebugMenuProvider *)self contextMenuInteraction];
  [viewCopy addInteraction:contextMenuInteraction];

  [(VKCAnalysisDebugMenuProvider *)self setProvider:providerCopy];
  contextMenuInteraction2 = [(VKCAnalysisDebugMenuProvider *)self contextMenuInteraction];
  height = [[VKQuad alloc] initWithRect:x, y, width, height];
  [(VKQuad *)height bottomRight];
  [contextMenuInteraction2 _presentMenuAtLocation:?];
}

- (id)menuFromProvider:(id)provider
{
  providerCopy = provider;
  analysisResult = [providerCopy analysisResult];
  delegate = [providerCopy delegate];
  text = [analysisResult text];
  text2 = [analysisResult text];
  v6 = [text2 length];

  selectedRange = [providerCopy selectedRange];
  [providerCopy totalQuadTextArea];
  v8 = v7;
  [providerCopy totalBoundingBoxTextArea];
  v10 = v9;
  if (providerCopy)
  {
    [providerCopy visibleTextAreaInfo];
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
  subjectRequestStatus = [providerCopy subjectRequestStatus];
  subjectContext = [providerCopy subjectContext];
  subjectCount = [subjectContext subjectCount];
  animatedStickerScore = [subjectContext animatedStickerScore];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  analysisResult2 = [providerCopy analysisResult];
  request = [analysisResult2 request];
  v18 = VKMUIStringForAnalysisTypes([request analysisTypes]);

  v19 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"AnalysisTypes" subtitle:v18];
  [v15 addObject:v19];

  v20 = VKMUIStringForAnalysisInteractionTypes([providerCopy activeInteractionTypes]);

  v21 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Interaction Types" subtitle:v20];
  [v15 addObject:v21];

  v22 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Visible Quad Height (In Window)" subtitle:v20];
  [v15 addObject:v22];

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v6];

  v24 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Characters" subtitle:v23];
  [v15 addObject:v24];

  v25 = MEMORY[0x1E69DC628];
  v26 = VKMUIStringForVKRange(selectedRange);
  v27 = [v25 vk_itemWithTitle:@"SelectedRange" subtitle:v26];
  [v15 addObject:v27];

  if ([selectedRange length])
  {
    v28 = [text vk_substringWithVKRange:selectedRange];
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

  v38 = [MEMORY[0x1E696AD98] numberWithInteger:subjectCount];
  v39 = [v38 description];

  v40 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Subject Count" subtitle:v39];
  [v15 addObject:v40];

  v41 = VKMUIStringForSubjectRequestStatus(subjectRequestStatus);

  v42 = [MEMORY[0x1E69DC628] vk_itemWithTitle:@"Subject Request Status" subtitle:v41];
  [v15 addObject:v42];

  if (subjectContext)
  {
    if (animatedStickerScore)
    {
      v43 = MEMORY[0x1E696AEC0];
      [animatedStickerScore floatValue];
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

  [providerCopy contentsRect];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [providerCopy visibleImageRect];
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

  textDataDetectorElements = [analysisResult textDataDetectorElements];
  v72 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:textDataDetectorElements title:@"Data Detectors"];
  [v15 addObject:v72];

  mrcDataDetectorElements = [analysisResult mrcDataDetectorElements];
  v74 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:mrcDataDetectorElements title:@"MRC DD"];
  [v15 addObject:v74];

  visualSearchResult = [analysisResult visualSearchResult];
  resultItems = [visualSearchResult resultItems];
  v77 = [(VKCAnalysisDebugMenuProvider *)self menuFromElements:resultItems title:@"Visual Search"];
  [v15 addObject:v77];

  v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", delegate];

  v79 = [MEMORY[0x1E69DC628] vk_itemWithTitle:v78 subtitle:0];
  [v15 addObject:v79];

  v80 = [MEMORY[0x1E69DCC60] vk_menuWithItems:v15 title:0];

  return v80;
}

- (id)menuFromElements:(id)elements title:(id)title
{
  v5 = MEMORY[0x1E696AEC0];
  titleCopy = title;
  elementsCopy = elements;
  v8 = [v5 stringWithFormat:@"%@: (%lu)", titleCopy, objc_msgSend(elementsCopy, "count")];

  v9 = [elementsCopy vk_compactMap:&__block_literal_global_9];

  v10 = [MEMORY[0x1E69DCC60] vk_menuWithItems:v9 title:v8];

  return v10;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
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

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  defaultStyle = [MEMORY[0x1E69DD440] defaultStyle];
  [defaultStyle setPreferredLayout:3];

  return defaultStyle;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  [view removeInteraction:interactionCopy];
}

@end