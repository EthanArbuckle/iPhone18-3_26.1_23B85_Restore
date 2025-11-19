@interface VideosExtrasConstrainedArtworkContainerView
- (VideosExtrasConstrainedArtworkContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setOverlayImage:(id)a3;
- (void)setOverlayScale:(double)a3;
@end

@implementation VideosExtrasConstrainedArtworkContainerView

- (VideosExtrasConstrainedArtworkContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = VideosExtrasConstrainedArtworkContainerView;
  v3 = [(VideosExtrasConstrainedArtworkContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(VideosExtrasConstrainedArtworkContainerView *)self artworkView];
  v12 = [v11 image];
  [v12 size];
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

  [v11 setBounds:{0.0, 0.0, v14 * v21, v20 * v21}];
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
    [v11 bounds];
    MidY = MaxY + CGRectGetHeight(v41) * -0.5;
  }

  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  MidX = CGRectGetMidX(v42);
  [v11 setCenter:{MidX, MidY}];
  if (self->_overlayImage && ([v11 image], (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, v27 = objc_msgSend(v11, "isDisplayingPlaceholder"), v26, (v27 & 1) == 0))
  {
    [v11 bounds];
    v34 = v33;
    [v11 bounds];
    if (v34 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }

    v37 = self->_overlayScale * v36;
    v29 = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    [v29 setBounds:{0.0, 0.0, v37, v37}];
    [v29 setCenter:{MidX, MidY}];
    v28 = v29;
    v30 = 0;
  }

  else
  {
    v28 = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    v29 = v28;
    v30 = 1;
  }

  [v28 setHidden:v30];

  if ([(VideosExtrasConstrainedArtworkContainerView *)self shouldAutoresizeMaskLayerToFillBounds])
  {
    v31 = [(VideosExtrasConstrainedArtworkContainerView *)self layer];
    v32 = [v31 mask];
    [v31 bounds];
    [v32 setFrame:?];
  }
}

- (void)setOverlayImage:(id)a3
{
  v5 = a3;
  if (self->_overlayImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_overlayImage, a3);
    v6 = [(VideosExtrasConstrainedArtworkContainerView *)self overlayView];
    [v6 setImage:self->_overlayImage];
    [(VideosExtrasConstrainedArtworkContainerView *)self setNeedsLayout];

    v5 = v7;
  }
}

- (void)setOverlayScale:(double)a3
{
  if (self->_overlayScale != a3)
  {
    if (a3 == 0.0)
    {
      a3 = 1.0;
    }

    self->_overlayScale = a3;
    [(VideosExtrasConstrainedArtworkContainerView *)self setNeedsLayout];
  }
}

@end