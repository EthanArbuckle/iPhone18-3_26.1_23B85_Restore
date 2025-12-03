@interface PXWallpaperSuggestionGadgetView
- (PXWallpaperSuggestionGadgetView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAsset:(id)asset;
@end

@implementation PXWallpaperSuggestionGadgetView

- (void)setAsset:(id)asset
{
  if (self->_asset != asset)
  {
    self->_asset = asset;
    assetCopy = asset;
    wallpaperView = [(PXWallpaperSuggestionGadgetView *)self wallpaperView];
    [wallpaperView setAsset:assetCopy];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXWallpaperSuggestionGadgetView;
  [(PXWallpaperSuggestionGadgetView *)&v12 layoutSubviews];
  [(PXWallpaperSuggestionGadgetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  wallpaperView = [(PXWallpaperSuggestionGadgetView *)self wallpaperView];
  [wallpaperView setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXWallpaperSuggestionGadgetView;
  [(PXWallpaperSuggestionGadgetView *)&v3 prepareForReuse];
  [(PXWallpaperSuggestionGadgetView *)self setAsset:0];
}

- (PXWallpaperSuggestionGadgetView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXWallpaperSuggestionGadgetView;
  v3 = [(PXWallpaperSuggestionGadgetView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PXWallpaperSuggestionView);
    wallpaperView = v3->_wallpaperView;
    v3->_wallpaperView = v4;

    contentView = [(PXWallpaperSuggestionGadgetView *)v3 contentView];
    [contentView addSubview:v3->_wallpaperView];
  }

  return v3;
}

@end