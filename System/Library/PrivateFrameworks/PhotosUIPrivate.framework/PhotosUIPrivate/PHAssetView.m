@interface PHAssetView
+ (CGRect)preferredContentsRectForAsset:(id)a3 targetSize:(CGSize)a4;
- (BOOL)allowsTextSelection;
- (CGRect)stillImageContentsRect;
- (NSArray)audioIdentifiersToHighlight;
- (NSArray)humanActionIdentifiersToHighlight;
- (NSArray)personLocalIdentifiersToHighlight;
- (NSArray)sceneIdentifiersToHighlight;
- (NSArray)stringsToHighlight;
- (PHAssetView)initWithCoder:(id)a3;
- (PHAssetView)initWithFrame:(CGRect)a3;
- (int64_t)preferredImageDynamicRange;
- (void)_commonPHAssetViewInit;
- (void)layoutSubviews;
- (void)setAllowsTextSelection:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setAudioIdentifiersToHighlight:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setHumanActionIdentifiersToHighlight:(id)a3;
- (void)setPersonLocalIdentifiersToHighlight:(id)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setSceneIdentifiersToHighlight:(id)a3;
- (void)setStillImageContentsRect:(CGRect)a3;
- (void)setStringsToHighlight:(id)a3;
@end

@implementation PHAssetView

- (void)layoutSubviews
{
  [(PHAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PHAssetView *)self impl];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setStillImageContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PHAssetView *)self impl];
  [v7 setStillImageContentsRect:{x, y, width, height}];
}

- (CGRect)stillImageContentsRect
{
  v2 = [(PHAssetView *)self impl];
  [v2 stillImageContentsRect];
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

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  v4 = [(PHAssetView *)self impl];
  [v4 setPreferredImageDynamicRange:a3];
}

- (int64_t)preferredImageDynamicRange
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 preferredImageDynamicRange];

  return v3;
}

- (void)setPersonLocalIdentifiersToHighlight:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set person identifiers to highlight: %@", &v7, 0xCu);
  }

  v6 = [(PHAssetView *)self impl];
  [v6 setPersonLocalIdentifiersToHighlight:v4];
}

- (NSArray)personLocalIdentifiersToHighlight
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 personLocalIdentifiersToHighlight];

  return v3;
}

- (void)setHumanActionIdentifiersToHighlight:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set human action identifiers to highlight: %@", &v7, 0xCu);
  }

  v6 = [(PHAssetView *)self impl];
  [v6 setHumanActionIdentifiersToHighlight:v4];
}

- (NSArray)humanActionIdentifiersToHighlight
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 humanActionIdentifiersToHighlight];

  return v3;
}

- (void)setAudioIdentifiersToHighlight:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set audio identifiers to highlight: %@", &v7, 0xCu);
  }

  v6 = [(PHAssetView *)self impl];
  [v6 setAudioIdentifiersToHighlight:v4];
}

- (NSArray)audioIdentifiersToHighlight
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 audioIdentifiersToHighlight];

  return v3;
}

- (void)setSceneIdentifiersToHighlight:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set scene identifiers to highlight: %@", &v7, 0xCu);
  }

  v6 = [(PHAssetView *)self impl];
  [v6 setSceneIdentifiersToHighlight:v4];
}

- (NSArray)sceneIdentifiersToHighlight
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 sceneIdentifiersToHighlight];

  return v3;
}

- (void)setStringsToHighlight:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_INFO, "PHAssetView: Set strings to highlight: %@", &v7, 0xCu);
  }

  v6 = [(PHAssetView *)self impl];
  [v6 setStringsToHighlight:v4];
}

- (NSArray)stringsToHighlight
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 stringsToHighlight];

  return v3;
}

- (void)setAllowsTextSelection:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHAssetView *)self impl];
  [v4 setAllowsTextSelection:v3];
}

- (BOOL)allowsTextSelection
{
  v2 = [(PHAssetView *)self impl];
  v3 = [v2 allowsTextSelection];

  return v3;
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  [(PHAssetView *)&v6 setContentMode:?];
  v5 = [(PHAssetView *)self impl];
  [v5 setContentMode:a3];
}

- (void)setAsset:(id)a3
{
  objc_storeStrong(&self->_asset, a3);
  v5 = a3;
  v6 = [(PHAssetView *)self impl];
  [v6 setAsset:v5];
}

- (void)_commonPHAssetViewInit
{
  v3 = objc_alloc_init(MEMORY[0x1E69C37C8]);
  impl = self->_impl;
  self->_impl = v3;

  [(PHAssetView *)self addSubview:self->_impl];
  v5 = [(PXPhotoKitAssetView *)self->_impl contentMode];

  [(PHAssetView *)self setContentMode:v5];
}

- (PHAssetView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  v3 = [(PHAssetView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PHAssetView *)v3 _commonPHAssetViewInit];
  }

  return v4;
}

- (PHAssetView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHAssetView;
  v3 = [(PHAssetView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHAssetView *)v3 _commonPHAssetViewInit];
  }

  return v4;
}

+ (CGRect)preferredContentsRectForAsset:(id)a3 targetSize:(CGSize)a4
{
  [MEMORY[0x1E69C3478] preferredContentsRectForAsset:a3 targetSize:{a4.width, a4.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end