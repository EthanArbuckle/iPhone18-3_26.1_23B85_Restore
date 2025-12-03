@interface VideosExtrasConstrainedArtworkContainerView
- (VideosExtrasConstrainedArtworkContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setOverlayImage:(id)image;
- (void)setOverlayScale:(double)scale;
@end

@implementation VideosExtrasConstrainedArtworkContainerView

- (VideosExtrasConstrainedArtworkContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = VideosExtrasConstrainedArtworkContainerView;
  v3 = [(VideosExtrasConstrainedArtworkContainerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [VideosExtrasArtworkLayoutTriggeringView alloc];
    [(VideosExtrasConstrainedArtworkContainerView *)v3 bounds];
    v5 = [(MPUArtworkView *)v4 initWithFrame:?];
    [(VideosExtrasConstrainedArtworkContainerView *)v3 addSubview:v5];
    [(VideosExtrasConstrainedArtworkContainerView *)v3 setArtworkView:v5];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v6 setContentMode:1];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VideosExtrasConstrainedArtworkContainerView *)v3 addSubview:v6];
    [(VideosExtrasConstrainedArtworkContainerView *)v3 setOverlayView:v6];
  }

  return v3;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = VideosExtrasConstrainedArtworkContainerView;
  [(VideosExtrasConstrainedArtworkContainerView *)&v38 layoutSubviews];
  [(VideosExtrasConstrainedArtworkContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self artworkView];
  image = [artworkView image];
  [image size];
  v14 = v13;
  v16 = v15;

  v17 = MPUFloatLessThanOrEqualToFloat();
  if (v8 >= 1.0)
  {
    v18 = v8;
  }

  else
  {
    v18 = 1.0;
  }

  if (v17)
  {
    v14 = v18;
  }

  v19 = MPUFloatLessThanOrEqualToFloat();
  if (v10 >= 1.0)
  {
    v20 = v10;
  }

  else
  {
    v20 = 1.0;
  }

  if (!v19)
  {
    v20 = v16;
  }

  v21 = v8 / v14;
  if (v8 / v14 >= v10 / v20)
  {
    v21 = v10 / v20;
  }

  [artworkView setBounds:{0.0, 0.0, v14 * v21, v20 * v21}];
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MidY = CGRectGetMidY(v39);
  if ([(VideosExtrasConstrainedArtworkContainerView *)self shouldBottomAlignArtwork])
  {
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MaxY = CGRectGetMaxY(v40);
    [artworkView bounds];
    MidY = MaxY + CGRectGetHeight(v41) * -0.5;
  }

  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  MidX = CGRectGetMidX(v42);
  [artworkView setCenter:{MidX, MidY}];
  if (self->_overlayImage && ([artworkView image], (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, v27 = objc_msgSend(artworkView, "isDisplayingPlaceholder"), v26, (v27 & 1) == 0))
  {
    [artworkView bounds];
    v34 = v33;
    [artworkView bounds];
    if (v34 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }

    v37 = self->_overlayScale * v36;
    overlayView = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    [overlayView setBounds:{0.0, 0.0, v37, v37}];
    [overlayView setCenter:{MidX, MidY}];
    overlayView2 = overlayView;
    v30 = 0;
  }

  else
  {
    overlayView2 = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    overlayView = overlayView2;
    v30 = 1;
  }

  [overlayView2 setHidden:v30];

  if ([(VideosExtrasConstrainedArtworkContainerView *)self shouldAutoresizeMaskLayerToFillBounds])
  {
    layer = [(VideosExtrasConstrainedArtworkContainerView *)self layer];
    mask = [layer mask];
    [layer bounds];
    [mask setFrame:?];
  }
}

- (void)setOverlayImage:(id)image
{
  imageCopy = image;
  if (self->_overlayImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_overlayImage, image);
    overlayView = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    [overlayView setImage:self->_overlayImage];
    [(VideosExtrasConstrainedArtworkContainerView *)self setNeedsLayout];

    imageCopy = v7;
  }
}

- (void)setOverlayScale:(double)scale
{
  if (self->_overlayScale != scale)
  {
    if (scale == 0.0)
    {
      scale = 1.0;
    }

    self->_overlayScale = scale;
    [(VideosExtrasConstrainedArtworkContainerView *)self setNeedsLayout];
  }
}

@end