@interface PULoadingIndicatorTileViewController
+ (CGSize)loadingIndicatorTileSizeForStyle:(int64_t)style;
+ (id)_createIndicatorViewForStyle:(int64_t)style;
- (void)becomeReusable;
- (void)setStyle:(int64_t)style animated:(BOOL)animated;
@end

@implementation PULoadingIndicatorTileViewController

- (void)setStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_style != style)
  {
    v36 = v11;
    v37 = v10;
    v38 = v9;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v43 = v5;
    animatedCopy = animated;
    styleCopy = style;
    self->_style = style;
    indicatorView = [(PULoadingIndicatorTileViewController *)self indicatorView];
    if (styleCopy)
    {
      styleCopy = [objc_opt_class() _createIndicatorViewForStyle:styleCopy];
      [styleCopy setAlpha:0.0];
      [styleCopy setAutoresizingMask:45];
      view = [(PUTileViewController *)self view];
      [view bounds];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      MidX = CGRectGetMidX(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      [styleCopy setCenter:{MidX, CGRectGetMidY(v45)}];
      [view addSubview:styleCopy];
    }

    [(PULoadingIndicatorTileViewController *)self setIndicatorView:styleCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PULoadingIndicatorTileViewController_setStyle_animated___block_invoke;
    aBlock[3] = &unk_1E7B80C38;
    v22 = indicatorView;
    v34 = v22;
    v23 = styleCopy;
    v35 = v23;
    v24 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__PULoadingIndicatorTileViewController_setStyle_animated___block_invoke_2;
    v31[3] = &unk_1E7B80088;
    v31[4] = self;
    v25 = v22;
    v32 = v25;
    v26 = _Block_copy(v31);
    if (animatedCopy)
    {
      v27 = dbl_1B3D0CEF0[v23 == 0];
      v28 = MEMORY[0x1E69DD250];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __58__PULoadingIndicatorTileViewController_setStyle_animated___block_invoke_3;
      v29[3] = &unk_1E7B80C88;
      v30 = v24;
      [v28 animateWithDuration:4 delay:v29 options:v26 animations:v27 completion:0.0];
    }

    else
    {
      v24[2](v24);
      v26[2](v26, 1);
    }
  }
}

uint64_t __58__PULoadingIndicatorTileViewController_setStyle_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __58__PULoadingIndicatorTileViewController_setStyle_animated___block_invoke_2(uint64_t a1)
{
  [objc_opt_class() _destroyIndicatorView:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PULoadingIndicatorTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PULoadingIndicatorTileViewController *)self setStyle:0 animated:0];
}

+ (id)_createIndicatorViewForStyle:(int64_t)style
{
  switch(style)
  {
    case 3:
      v4 = 0;
      v5 = 0;
      v6 = 2;
      goto LABEL_10;
    case 2:
      v3 = @"SAVING_PHOTO_INDICATOR_TITLE";
      break;
    case 1:
      v3 = @"LOADING_PHOTO_INDICATOR_TITLE";
      break;
    default:
      v4 = 0;
      goto LABEL_9;
  }

  v4 = PULocalizedString(v3);
LABEL_9:
  v6 = 0;
  v5 = 1;
LABEL_10:
  v7 = [[PUProgressIndicatorView alloc] initWithStyle:v6];
  [(PUProgressIndicatorView *)v7 setDeterminate:0];
  [(PUProgressIndicatorView *)v7 setShowsBackground:v5];
  [(PUProgressIndicatorView *)v7 setLocalizedMessage:v4];
  [(PUProgressIndicatorView *)v7 beginShowingProgressImmediately:1 animated:0];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  [(PUProgressIndicatorView *)v7 intrinsicContentSize];
  [(PUProgressIndicatorView *)v7 setBounds:v8, v9, v10, v11];

  return v7;
}

+ (CGSize)loadingIndicatorTileSizeForStyle:(int64_t)style
{
  if (loadingIndicatorTileSizeForStyle__onceToken != -1)
  {
    dispatch_once(&loadingIndicatorTileSizeForStyle__onceToken, &__block_literal_global_40032);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v6 = [loadingIndicatorTileSizeForStyle__cache objectForKey:v5];
  if (!v6)
  {
    v7 = [self _createIndicatorViewForStyle:style];
    v8 = MEMORY[0x1E696B098];
    [v7 intrinsicContentSize];
    v6 = [v8 valueWithCGSize:?];
    [self _destroyIndicatorView:v7];
    [loadingIndicatorTileSizeForStyle__cache setObject:v6 forKey:v5];
  }

  [v6 CGSizeValue];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

uint64_t __73__PULoadingIndicatorTileViewController_loadingIndicatorTileSizeForStyle___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = loadingIndicatorTileSizeForStyle__cache;
  loadingIndicatorTileSizeForStyle__cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end