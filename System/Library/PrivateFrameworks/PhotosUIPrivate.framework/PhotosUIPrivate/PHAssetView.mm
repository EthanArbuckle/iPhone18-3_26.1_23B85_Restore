@interface PHAssetView
+ (CGRect)preferredContentsRectForAsset:(id)asset targetSize:(CGSize)size;
- (BOOL)allowsTextSelection;
- (CGRect)stillImageContentsRect;
- (NSArray)audioIdentifiersToHighlight;
- (NSArray)humanActionIdentifiersToHighlight;
- (NSArray)personLocalIdentifiersToHighlight;
- (NSArray)sceneIdentifiersToHighlight;
- (NSArray)stringsToHighlight;
- (PHAssetView)initWithCoder:(id)coder;
- (PHAssetView)initWithFrame:(CGRect)frame;
- (int64_t)preferredImageDynamicRange;
- (void)_commonPHAssetViewInit;
- (void)layoutSubviews;
- (void)setAllowsTextSelection:(BOOL)selection;
- (void)setAsset:(id)asset;
- (void)setAudioIdentifiersToHighlight:(id)highlight;
- (void)setContentMode:(int64_t)mode;
- (void)setHumanActionIdentifiersToHighlight:(id)highlight;
- (void)setPersonLocalIdentifiersToHighlight:(id)highlight;
- (void)setPreferredImageDynamicRange:(int64_t)range;
- (void)setSceneIdentifiersToHighlight:(id)highlight;
- (void)setStillImageContentsRect:(CGRect)rect;
- (void)setStringsToHighlight:(id)highlight;
@end

@implementation PHAssetView

- (void)layoutSubviews
{
  [(PHAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  impl = [(PHAssetView *)self impl];
  [impl setFrame:{v4, v6, v8, v10}];
}

- (void)setStillImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  impl = [(PHAssetView *)self impl];
  [impl setStillImageContentsRect:{x, y, width, height}];
}

- (CGRect)stillImageContentsRect
{
  impl = [(PHAssetView *)self impl];
  [impl stillImageContentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setPreferredImageDynamicRange:(int64_t)range
{
  impl = [(PHAssetView *)self impl];
  [impl setPreferredImageDynamicRange:range];
}

- (int64_t)preferredImageDynamicRange
{
  impl = [(PHAssetView *)self impl];
  preferredImageDynamicRange = [impl preferredImageDynamicRange];

  return preferredImageDynamicRange;
}

- (void)setPersonLocalIdentifiersToHighlight:(id)highlight
{
  v9 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = highlightCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set person identifiers to highlight: %@", &v7, 0xCu);
  }

  impl = [(PHAssetView *)self impl];
  [impl setPersonLocalIdentifiersToHighlight:highlightCopy];
}

- (NSArray)personLocalIdentifiersToHighlight
{
  impl = [(PHAssetView *)self impl];
  personLocalIdentifiersToHighlight = [impl personLocalIdentifiersToHighlight];

  return personLocalIdentifiersToHighlight;
}

- (void)setHumanActionIdentifiersToHighlight:(id)highlight
{
  v9 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = highlightCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set human action identifiers to highlight: %@", &v7, 0xCu);
  }

  impl = [(PHAssetView *)self impl];
  [impl setHumanActionIdentifiersToHighlight:highlightCopy];
}

- (NSArray)humanActionIdentifiersToHighlight
{
  impl = [(PHAssetView *)self impl];
  humanActionIdentifiersToHighlight = [impl humanActionIdentifiersToHighlight];

  return humanActionIdentifiersToHighlight;
}

- (void)setAudioIdentifiersToHighlight:(id)highlight
{
  v9 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = highlightCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set audio identifiers to highlight: %@", &v7, 0xCu);
  }

  impl = [(PHAssetView *)self impl];
  [impl setAudioIdentifiersToHighlight:highlightCopy];
}

- (NSArray)audioIdentifiersToHighlight
{
  impl = [(PHAssetView *)self impl];
  audioIdentifiersToHighlight = [impl audioIdentifiersToHighlight];

  return audioIdentifiersToHighlight;
}

- (void)setSceneIdentifiersToHighlight:(id)highlight
{
  v9 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = highlightCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set scene identifiers to highlight: %@", &v7, 0xCu);
  }

  impl = [(PHAssetView *)self impl];
  [impl setSceneIdentifiersToHighlight:highlightCopy];
}

- (NSArray)sceneIdentifiersToHighlight
{
  impl = [(PHAssetView *)self impl];
  sceneIdentifiersToHighlight = [impl sceneIdentifiersToHighlight];

  return sceneIdentifiersToHighlight;
}

- (void)setStringsToHighlight:(id)highlight
{
  v9 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = highlightCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set strings to highlight: %@", &v7, 0xCu);
  }

  impl = [(PHAssetView *)self impl];
  [impl setStringsToHighlight:highlightCopy];
}

- (NSArray)stringsToHighlight
{
  impl = [(PHAssetView *)self impl];
  stringsToHighlight = [impl stringsToHighlight];

  return stringsToHighlight;
}

- (void)setAllowsTextSelection:(BOOL)selection
{
  selectionCopy = selection;
  impl = [(PHAssetView *)self impl];
  [impl setAllowsTextSelection:selectionCopy];
}

- (BOOL)allowsTextSelection
{
  impl = [(PHAssetView *)self impl];
  allowsTextSelection = [impl allowsTextSelection];

  return allowsTextSelection;
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  [(PHAssetView *)&v6 setContentMode:?];
  impl = [(PHAssetView *)self impl];
  [impl setContentMode:mode];
}

- (void)setAsset:(id)asset
{
  objc_storeStrong(&self->_asset, asset);
  assetCopy = asset;
  impl = [(PHAssetView *)self impl];
  [impl setAsset:assetCopy];
}

- (void)_commonPHAssetViewInit
{
  v3 = objc_alloc_init(MEMORY[0x1E69C37C8]);
  impl = self->_impl;
  self->_impl = v3;

  [(PHAssetView *)self addSubview:self->_impl];
  contentMode = [(PXPhotoKitAssetView *)self->_impl contentMode];

  [(PHAssetView *)self setContentMode:contentMode];
}

- (PHAssetView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  v3 = [(PHAssetView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PHAssetView *)v3 _commonPHAssetViewInit];
  }

  return v4;
}

- (PHAssetView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  v3 = [(PHAssetView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHAssetView *)v3 _commonPHAssetViewInit];
  }

  return v4;
}

+ (CGRect)preferredContentsRectForAsset:(id)asset targetSize:(CGSize)size
{
  [MEMORY[0x1E69C3478] preferredContentsRectForAsset:asset targetSize:{size.width, size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end