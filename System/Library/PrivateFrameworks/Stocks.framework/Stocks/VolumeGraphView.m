@interface VolumeGraphView
- (VolumeGraphView)initWithFrame:(CGRect)a3;
- (void)resizeSelectedVolumeClipViewWithLeftX:(double)a3 rightX:(double)a4;
- (void)setGraphImageSet:(id)a3;
- (void)setShowingSelectedRegion:(BOOL)a3;
@end

@implementation VolumeGraphView

- (VolumeGraphView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VolumeGraphView;
  v3 = [(VolumeGraphView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VolumeGraphView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setGraphImageSet:(id)a3
{
  v10 = a3;
  v4 = [v10 volumeGraphImage];
  volumeImage = self->_volumeImage;

  if (v4 != volumeImage)
  {
    v6 = [v10 volumeGraphImage];
    v7 = self->_volumeImage;
    self->_volumeImage = v6;

    v8 = [(UIImage *)self->_volumeImage CGImage];
    v9 = [(VolumeGraphView *)self layer];
    [v9 setContents:v8];

    [(TintedView *)self->_tintedVolumeView setImage:self->_volumeImage];
  }
}

- (void)setShowingSelectedRegion:(BOOL)a3
{
  if (self->_showingTintedRegion != a3)
  {
    v4 = a3;
    self->_showingTintedRegion = a3;
    if (a3)
    {
      if (!self->_tintedVolumeView)
      {
        v6 = objc_alloc_init(TintedView);
        tintedVolumeView = self->_tintedVolumeView;
        self->_tintedVolumeView = v6;

        v8 = self->_tintedVolumeView;
        v9 = +[StocksStyle sharedStyle];
        v10 = [v9 chartHighlightColor];
        [(TintedView *)v8 setTintColor:v10];

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

    [(UIView *)v14 setAlpha:v4];
  }
}

- (void)resizeSelectedVolumeClipViewWithLeftX:(double)a3 rightX:(double)a4
{
  v7 = [(TintedView *)self->_tintedVolumeView layer];
  [v7 removeAllAnimations];

  v8 = [(UIView *)self->_tintedRegionClipView layer];
  [v8 removeAllAnimations];

  [(VolumeGraphView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self->_tintedRegionClipView setFrame:a3, 0.0, a4 - a3];
  tintedVolumeView = self->_tintedVolumeView;
  [(VolumeGraphView *)self convertRect:self->_tintedRegionClipView toView:v10, v12, v14, v16];

  [(TintedView *)tintedVolumeView setFrame:?];
}

@end