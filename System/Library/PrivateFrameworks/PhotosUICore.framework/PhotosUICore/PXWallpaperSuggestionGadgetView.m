@interface PXWallpaperSuggestionGadgetView
- (PXWallpaperSuggestionGadgetView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAsset:(id)a3;
@end

@implementation PXWallpaperSuggestionGadgetView

- (void)setAsset:(id)a3
{
  if (self->_asset != a3)
  {
    self->_asset = a3;
    v5 = a3;
    v6 = [(PXWallpaperSuggestionGadgetView *)self wallpaperView];
    [v6 setAsset:v5];
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
  v11 = [(PXWallpaperSuggestionGadgetView *)self wallpaperView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PXWallpaperSuggestionGadgetView;
  [(PXWallpaperSuggestionGadgetView *)&v3 prepareForReuse];
  [(PXWallpaperSuggestionGadgetView *)self setAsset:0];
}

- (PXWallpaperSuggestionGadgetView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXWallpaperSuggestionGadgetView;
  v3 = [(PXWallpaperSuggestionGadgetView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PXWallpaperSuggestionView);
    wallpaperView = v3->_wallpaperView;
    v3->_wallpaperView = v4;

    v6 = [(PXWallpaperSuggestionGadgetView *)v3 contentView];
    [v6 addSubview:v3->_wallpaperView];
  }

  return v3;
}

@end