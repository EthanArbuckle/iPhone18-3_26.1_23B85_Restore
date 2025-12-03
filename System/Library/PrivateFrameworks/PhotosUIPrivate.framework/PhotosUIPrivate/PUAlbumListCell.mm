@interface PUAlbumListCell
- (PUAlbumListCell)initWithFrame:(CGRect)frame;
- (id)focusEffect;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout;
- (void)setBackgroundCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout;
@end

@implementation PUAlbumListCell

- (id)focusEffect
{
  albumListCellContentView = [(PUAlbumListCell *)self albumListCellContentView];
  focusInfo = [albumListCellContentView focusInfo];
  v5 = [focusInfo makeHaloEffectForSourceView:self];

  return v5;
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  updatesCopy = updates;
  albumListCellContentView = [(PUAlbumListCell *)self albumListCellContentView];
  showsDeleteButtonWhenEditing = [albumListCellContentView showsDeleteButtonWhenEditing];
  [albumListCellContentView setShowsDeleteButtonWhenEditing:0];
  v9.receiver = self;
  v9.super_class = PUAlbumListCell;
  v7 = [(PUAlbumListCell *)&v9 snapshotViewAfterScreenUpdates:updatesCopy];
  [albumListCellContentView setShowsDeleteButtonWhenEditing:showsDeleteButtonWhenEditing];

  return v7;
}

- (void)setBackgroundCornerRadius:(double)radius
{
  backgroundConfiguration = [(PUAlbumListCell *)self backgroundConfiguration];
  [backgroundConfiguration cornerRadius];
  v7 = v6;

  if (v7 != radius)
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [clearConfiguration setCornerRadius:radius];
    [(PUAlbumListCell *)self setBackgroundConfiguration:clearConfiguration];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(PUAlbumListCell *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = PUAlbumListCell;
  [(PUAlbumListCell *)&v7 setHighlighted:highlightedCopy];
  if (isHighlighted != [(PUAlbumListCell *)self isHighlighted])
  {
    albumListCellContentView = [(PUAlbumListCell *)self albumListCellContentView];
    [albumListCellContentView setHighlighted:highlightedCopy];
  }
}

- (void)didTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  toLayoutCopy = toLayout;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__PUAlbumListCell_didTransitionFromLayout_toLayout___block_invoke;
    v7[3] = &unk_1E7B80DD0;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.3];
  }
}

void __52__PUAlbumListCell_didTransitionFromLayout_toLayout___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) albumListCellContentView];
  [v1 setShowsTitle:1 animated:1];
}

- (void)willTransitionFromLayout:(id)layout toLayout:(id)toLayout
{
  layoutCopy = layout;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PUAlbumListCell_willTransitionFromLayout_toLayout___block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v8[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.1];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUAlbumListCell_willTransitionFromLayout_toLayout___block_invoke_2;
    v7[3] = &unk_1E7B80DD0;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

void __53__PUAlbumListCell_willTransitionFromLayout_toLayout___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) albumListCellContentView];
  [v1 setShowsTitle:0 animated:1];
}

void __53__PUAlbumListCell_willTransitionFromLayout_toLayout___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) albumListCellContentView];
  [v1 setShowsTitle:0 animated:0];
}

- (PUAlbumListCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PUAlbumListCell;
  v3 = [(PUAlbumListCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PUAlbumListCell *)v3 contentView];
    v6 = [PUAlbumListCellContentView alloc];
    [contentView bounds];
    v7 = [(PUAlbumListCellContentView *)v6 initWithFrame:?];
    [(PUAlbumListCellContentView *)v7 setTag:236897];
    [(PUAlbumListCellContentView *)v7 setAutoresizingMask:18];
    [(PUAlbumListCellContentView *)v7 setTopInsetEnabled:1];
    [contentView addSubview:v7];
  }

  return v4;
}

@end