@interface SXVideoFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)a3;
- (SXVideoFillView)initWithVideoFill:(id)a3 DOMObjectProvider:(id)a4 imageViewFactory:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)load;
- (void)pause;
- (void)play;
- (void)reset;
- (void)setContentFrame:(CGRect)a3;
@end

@implementation SXVideoFillView

- (SXVideoFillView)initWithVideoFill:(id)a3 DOMObjectProvider:(id)a4 imageViewFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = SXVideoFillView;
  v12 = [(SXFillView *)&v26 initWithFill:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videoFill, a3);
    v14 = [v9 resourceIdentifier];
    v15 = [v10 resourceForIdentifier:v14];

    v16 = [v9 stillImageIdentifier];
    v17 = [v10 imageResourceForIdentifier:v16];
    imageResource = v13->_imageResource;
    v13->_imageResource = v17;

    v19 = [v11 imageViewForResource:v13->_imageResource];
    imageView = v13->_imageView;
    v13->_imageView = v19;

    [(SXImageView *)v13->_imageView setIsDecorative:1];
    v21 = [[SXVideoFillPlayerView alloc] initWithVideoResource:v15 imageView:v13->_imageView];
    playerView = v13->_playerView;
    v13->_playerView = v21;

    -[SXVideoFillPlayerView setFillMode:](v13->_playerView, "setFillMode:", [v9 fillMode]);
    -[SXVideoFillPlayerView setShouldLoop:](v13->_playerView, "setShouldLoop:", [v9 loop]);
    v23 = [[SXClippingView alloc] initWithContentView:v13->_playerView];
    clippingView = v13->_clippingView;
    v13->_clippingView = v23;

    [(SXVideoFillView *)v13 addSubview:v13->_clippingView];
  }

  return v13;
}

- (void)dealloc
{
  if ([(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXImageView *)self->_imageView giveUpInterestForObject:self];
  }

  v3.receiver = self;
  v3.super_class = SXVideoFillView;
  [(SXVideoFillView *)&v3 dealloc];
}

- (void)load
{
  v5.receiver = self;
  v5.super_class = SXVideoFillView;
  [(SXFillView *)&v5 load];
  if (![(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXVideoFillView *)self contentFrame];
    [(SXImageView *)self->_imageView setPreferredImageSize:v3, v4];
    [(SXImageView *)self->_imageView addInterestInImageQuality:0 forObject:self];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXVideoFillView;
  [(SXVideoFillView *)&v4 layoutSubviews];
  v3 = [(SXVideoFillView *)self clippingView];
  [(SXVideoFillView *)self bounds];
  [v3 setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXVideoFillView *)self imageResource];
  [v6 dimensions];
  v8 = v7;
  v10 = v9;

  v11 = [(SXFillView *)self fill];
  v12 = [v11 fillMode];

  v13 = [(SXFillView *)self fill];
  v14 = [v13 horizontalAlignment];

  v15 = [(SXFillView *)self fill];
  v16 = [v15 verticalAlignment];

  [SXFillPositioning frameForFillWithDimensions:v12 withinBounds:v14 fillMode:v16 horizontalAlignment:v8 verticalAlignment:v10, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)play
{
  v2 = [(SXVideoFillView *)self playerView];
  [v2 play];
}

- (void)pause
{
  v2 = [(SXVideoFillView *)self playerView];
  [v2 pause];
}

- (void)reset
{
  v2 = [(SXVideoFillView *)self playerView];
  [v2 reset];
}

- (CGRect)contentFrame
{
  v2 = [(SXVideoFillView *)self clippingView];
  [v2 contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SXVideoFillView *)self clippingView];
  [v7 setContentFrame:{x, y, width, height}];
}

@end