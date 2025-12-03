@interface VolumeGraphView
- (VolumeGraphView)initWithFrame:(CGRect)frame;
- (void)resizeSelectedVolumeClipViewWithLeftX:(double)x rightX:(double)rightX;
- (void)setGraphImageSet:(id)set;
- (void)setShowingSelectedRegion:(BOOL)region;
@end

@implementation VolumeGraphView

- (VolumeGraphView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VolumeGraphView;
  v3 = [(VolumeGraphView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VolumeGraphView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setGraphImageSet:(id)set
{
  setCopy = set;
  volumeGraphImage = [setCopy volumeGraphImage];
  volumeImage = self->_volumeImage;

  if (volumeGraphImage != volumeImage)
  {
    volumeGraphImage2 = [setCopy volumeGraphImage];
    v7 = self->_volumeImage;
    self->_volumeImage = volumeGraphImage2;

    cGImage = [(UIImage *)self->_volumeImage CGImage];
    layer = [(VolumeGraphView *)self layer];
    [layer setContents:cGImage];

    [(TintedView *)self->_tintedVolumeView setImage:self->_volumeImage];
  }
}

- (void)setShowingSelectedRegion:(BOOL)region
{
  if (self->_showingTintedRegion != region)
  {
    regionCopy = region;
    self->_showingTintedRegion = region;
    if (region)
    {
      if (!self->_tintedVolumeView)
      {
        v6 = objc_alloc_init(TintedView);
        tintedVolumeView = self->_tintedVolumeView;
        self->_tintedVolumeView = v6;

        v8 = self->_tintedVolumeView;
        v9 = +[StocksStyle sharedStyle];
        chartHighlightColor = [v9 chartHighlightColor];
        [(TintedView *)v8 setTintColor:chartHighlightColor];

        v11 = objc_alloc(MEMORY[0x277D75D18]);
        [(VolumeGraphView *)self bounds];
        v12 = [v11 initWithFrame:?];
        tintedRegionClipView = self->_tintedRegionClipView;
        self->_tintedRegionClipView = v12;

        [(UIView *)self->_tintedRegionClipView setClipsToBounds:1];
        [(UIView *)self->_tintedRegionClipView addSubview:self->_tintedVolumeView];
        [(UIView *)self->_tintedRegionClipView setAlpha:0.0];
        [(VolumeGraphView *)self addSubview:self->_tintedRegionClipView];
      }

      if (self->_volumeImage)
      {
        [(TintedView *)self->_tintedVolumeView setImage:?];
      }
    }

    v14 = self->_tintedRegionClipView;

    [(UIView *)v14 setAlpha:regionCopy];
  }
}

- (void)resizeSelectedVolumeClipViewWithLeftX:(double)x rightX:(double)rightX
{
  layer = [(TintedView *)self->_tintedVolumeView layer];
  [layer removeAllAnimations];

  layer2 = [(UIView *)self->_tintedRegionClipView layer];
  [layer2 removeAllAnimations];

  [(VolumeGraphView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self->_tintedRegionClipView setFrame:x, 0.0, rightX - x];
  tintedVolumeView = self->_tintedVolumeView;
  [(VolumeGraphView *)self convertRect:self->_tintedRegionClipView toView:v10, v12, v14, v16];

  [(TintedView *)tintedVolumeView setFrame:?];
}

@end