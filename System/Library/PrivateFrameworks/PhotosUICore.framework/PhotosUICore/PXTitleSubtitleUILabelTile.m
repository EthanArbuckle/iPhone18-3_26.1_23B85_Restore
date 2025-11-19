@interface PXTitleSubtitleUILabelTile
- (PXTitleSubtitleUILabelTile)init;
- (UIView)view;
- (void)_setAnimationCount:(int64_t)a3;
- (void)_updateLabelTitleAndSubtitle;
- (void)becomeReusable;
- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)performBatchUpdates:(id)a3;
- (void)prepareForReuse;
- (void)setRendersTextAsynchronously:(BOOL)a3;
- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
@end

@implementation PXTitleSubtitleUILabelTile

- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v6 = [(PXTitleSubtitleUILabelTile *)self _animationCount:a3]- 1;

  [(PXTitleSubtitleUILabelTile *)self _setAnimationCount:v6];
}

- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v6 = [(PXTitleSubtitleUILabelTile *)self _animationCount:a3]+ 1;

  [(PXTitleSubtitleUILabelTile *)self _setAnimationCount:v6];
}

- (void)prepareForReuse
{
  v2 = [(PXTitleSubtitleUILabelTile *)self view];
  [v2 setHidden:0];
}

- (void)becomeReusable
{
  [(PXTitleSubtitleUILabelTile *)self setTitle:0];
  [(PXTitleSubtitleUILabelTile *)self setSubtitle:0];
  v3 = [(PXTitleSubtitleUILabelTile *)self view];
  [v3 setHidden:1];
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  view = self->_view;
  label = self->_label;
  v7 = a4;
  [(UIView *)view bounds];
  [(PXTitleSubtitleUILabel *)label setFrame:?];
  v8 = [v7 viewSpec];

  [(PXTitleSubtitleUILabel *)self->_label setSpec:v8];
  labelSpec = self->_labelSpec;
  self->_labelSpec = v8;

  [(PXTitleSubtitleUILabelTile *)self _updateLabelTitleAndSubtitle];
}

- (UIView)view
{
  view = self->_view;
  if (!view)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    v5 = self->_view;
    self->_view = v4;

    [(UIView *)self->_view setUserInteractionEnabled:0];
    v6 = objc_alloc_init(PXTitleSubtitleUILabel);
    label = self->_label;
    self->_label = v6;

    [(PXTitleSubtitleUILabel *)self->_label setRendersTextAsynchronously:[(PXTitleSubtitleUILabelTile *)self rendersTextAsynchronously]];
    [(PXTitleSubtitleUILabel *)self->_label setUserInteractionEnabled:0];
    [(UIView *)self->_view addSubview:self->_label];
    view = self->_view;
  }

  return view;
}

- (void)_setAnimationCount:(int64_t)a3
{
  if (self->__animationCount != a3)
  {
    self->__animationCount = a3;
    [(PXTitleSubtitleUILabel *)self->_label setShouldRasterizeTextLayer:a3 > 0];
  }
}

- (void)_updateLabelTitleAndSubtitle
{
  v4 = [(PXTitleSubtitleUILabelTile *)self title];
  v3 = [(PXTitleSubtitleUILabelTile *)self subtitle];
  [(PXTitleSubtitleUILabel *)self->_label setTitleText:v4];
  [(PXTitleSubtitleUILabel *)self->_label setSubtitleText:v3];
}

- (void)setRendersTextAsynchronously:(BOOL)a3
{
  if (self->_rendersTextAsynchronously != a3)
  {
    self->_rendersTextAsynchronously = a3;
    [(PXTitleSubtitleUILabel *)self->_label setRendersTextAsynchronously:?];
  }
}

- (void)performBatchUpdates:(id)a3
{
  (*(a3 + 2))(a3, a2);

  [(PXTitleSubtitleUILabelTile *)self _updateLabelTitleAndSubtitle];
}

- (PXTitleSubtitleUILabelTile)init
{
  v3.receiver = self;
  v3.super_class = PXTitleSubtitleUILabelTile;
  result = [(PXTitleSubtitleUILabelTile *)&v3 init];
  if (result)
  {
    result->_rendersTextAsynchronously = 1;
  }

  return result;
}

@end