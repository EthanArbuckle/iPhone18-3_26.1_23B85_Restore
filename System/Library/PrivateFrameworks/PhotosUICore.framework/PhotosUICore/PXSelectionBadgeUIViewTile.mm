@interface PXSelectionBadgeUIViewTile
+ (CGSize)preferredSize;
- (PXSelectionBadgeUIViewTile)initWithFrame:(CGRect)frame;
- (void)_setSelected:(BOOL)selected;
- (void)_showSelectedView;
- (void)_showUnselectedView;
- (void)_updateBadgeViewIfNeeded;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)prepareForReuse;
@end

@implementation PXSelectionBadgeUIViewTile

- (void)_showUnselectedView
{
  selectedView = self->_selectedView;
  if (selectedView)
  {
    [(UIView *)selectedView setHidden:1];
  }

  unselectedView = self->_unselectedView;
  if (!unselectedView)
  {
    v5 = [MEMORY[0x1E69DD250] px_circularGlyphViewWithName:@"circle" backgroundColor:0];
    v6 = self->_unselectedView;
    self->_unselectedView = v5;

    view = [(PXSelectionBadgeUIViewTile *)self view];
    [view addSubview:self->_unselectedView];

    unselectedView = self->_unselectedView;
  }

  [(UIView *)unselectedView setHidden:0];
}

- (void)_showSelectedView
{
  unselectedView = self->_unselectedView;
  if (unselectedView)
  {
    [(UIView *)unselectedView setHidden:1];
  }

  selectedView = self->_selectedView;
  if (!selectedView)
  {
    v5 = MEMORY[0x1E69DD250];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v7 = [v5 px_circularGlyphViewWithName:@"checkmark.circle" prefersMulticolor:0 backgroundColor:systemBlueColor];
    v8 = self->_selectedView;
    self->_selectedView = v7;

    view = [(PXSelectionBadgeUIViewTile *)self view];
    [view addSubview:self->_selectedView];

    selectedView = self->_selectedView;
  }

  [(UIView *)selectedView setHidden:0];
}

- (void)_updateBadgeViewIfNeeded
{
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    if ([(PXSelectionBadgeUIViewTile *)self _selected])
    {

      [(PXSelectionBadgeUIViewTile *)self _showSelectedView];
    }

    else
    {

      [(PXSelectionBadgeUIViewTile *)self _showUnselectedView];
    }
  }
}

- (void)_setSelected:(BOOL)selected
{
  if (self->__selected != selected)
  {
    self->__selected = selected;
    [(PXSelectionBadgeUIViewTile *)self _invalidate];
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  -[PXSelectionBadgeUIViewTile _setSelected:](self, "_setSelected:", [data isSelected]);

  [(PXSelectionBadgeUIViewTile *)self _updateBadgeViewIfNeeded];
}

- (void)prepareForReuse
{
  view = [(PXSelectionBadgeUIViewTile *)self view];
  [view setHidden:0];

  [(PXSelectionBadgeUIViewTile *)self _invalidate];
}

- (void)becomeReusable
{
  view = [(PXSelectionBadgeUIViewTile *)self view];
  [view setHidden:1];
}

- (PXSelectionBadgeUIViewTile)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXSelectionBadgeUIViewTile;
  v3 = [(PXSelectionBadgeUIViewTile *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXSelectionBadgeUIViewTile *)v3 setUserInteractionEnabled:0];
    [(PXSelectionBadgeUIViewTile *)v4 _invalidate];
  }

  return v4;
}

+ (CGSize)preferredSize
{
  if (preferredSize_onceToken_154762 != -1)
  {
    dispatch_once(&preferredSize_onceToken_154762, &__block_literal_global_154763);
  }

  v2 = *&preferredSize_contentSize_0;
  v3 = *&preferredSize_contentSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __43__PXSelectionBadgeUIViewTile_preferredSize__block_invoke()
{
  v2 = [MEMORY[0x1E69DD250] px_circularGlyphViewWithName:@"circle" backgroundColor:0];
  [v2 frame];
  preferredSize_contentSize_0 = v0;
  preferredSize_contentSize_1 = v1;
}

@end