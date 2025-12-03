@interface PXTitleSubtitleUILabelTile
- (PXTitleSubtitleUILabelTile)init;
- (UIView)view;
- (void)_setAnimationCount:(int64_t)count;
- (void)_updateLabelTitleAndSubtitle;
- (void)becomeReusable;
- (void)didAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)performBatchUpdates:(id)updates;
- (void)prepareForReuse;
- (void)setRendersTextAsynchronously:(BOOL)asynchronously;
- (void)willAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options;
@end

@implementation PXTitleSubtitleUILabelTile

- (void)didAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options
{
  v6 = [(PXTitleSubtitleUILabelTile *)self _animationCount:geometry]- 1;

  [(PXTitleSubtitleUILabelTile *)self _setAnimationCount:v6];
}

- (void)willAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options
{
  v6 = [(PXTitleSubtitleUILabelTile *)self _animationCount:geometry]+ 1;

  [(PXTitleSubtitleUILabelTile *)self _setAnimationCount:v6];
}

- (void)prepareForReuse
{
  view = [(PXTitleSubtitleUILabelTile *)self view];
  [view setHidden:0];
}

- (void)becomeReusable
{
  [(PXTitleSubtitleUILabelTile *)self setTitle:0];
  [(PXTitleSubtitleUILabelTile *)self setSubtitle:0];
  view = [(PXTitleSubtitleUILabelTile *)self view];
  [view setHidden:1];
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  view = self->_view;
  label = self->_label;
  dataCopy = data;
  [(UIView *)view bounds];
  [(PXTitleSubtitleUILabel *)label setFrame:?];
  viewSpec = [dataCopy viewSpec];

  [(PXTitleSubtitleUILabel *)self->_label setSpec:viewSpec];
  labelSpec = self->_labelSpec;
  self->_labelSpec = viewSpec;

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

- (void)_setAnimationCount:(int64_t)count
{
  if (self->__animationCount != count)
  {
    self->__animationCount = count;
    [(PXTitleSubtitleUILabel *)self->_label setShouldRasterizeTextLayer:count > 0];
  }
}

- (void)_updateLabelTitleAndSubtitle
{
  title = [(PXTitleSubtitleUILabelTile *)self title];
  subtitle = [(PXTitleSubtitleUILabelTile *)self subtitle];
  [(PXTitleSubtitleUILabel *)self->_label setTitleText:title];
  [(PXTitleSubtitleUILabel *)self->_label setSubtitleText:subtitle];
}

- (void)setRendersTextAsynchronously:(BOOL)asynchronously
{
  if (self->_rendersTextAsynchronously != asynchronously)
  {
    self->_rendersTextAsynchronously = asynchronously;
    [(PXTitleSubtitleUILabel *)self->_label setRendersTextAsynchronously:?];
  }
}

- (void)performBatchUpdates:(id)updates
{
  (*(updates + 2))(updates, a2);

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