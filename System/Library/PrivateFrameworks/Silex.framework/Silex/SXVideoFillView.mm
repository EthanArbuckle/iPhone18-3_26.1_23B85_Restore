@interface SXVideoFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)size;
- (SXVideoFillView)initWithVideoFill:(id)fill DOMObjectProvider:(id)provider imageViewFactory:(id)factory;
- (void)dealloc;
- (void)layoutSubviews;
- (void)load;
- (void)pause;
- (void)play;
- (void)reset;
- (void)setContentFrame:(CGRect)frame;
@end

@implementation SXVideoFillView

- (SXVideoFillView)initWithVideoFill:(id)fill DOMObjectProvider:(id)provider imageViewFactory:(id)factory
{
  fillCopy = fill;
  providerCopy = provider;
  factoryCopy = factory;
  v26.receiver = self;
  v26.super_class = SXVideoFillView;
  v12 = [(SXFillView *)&v26 initWithFill:fillCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videoFill, fill);
    resourceIdentifier = [fillCopy resourceIdentifier];
    v15 = [providerCopy resourceForIdentifier:resourceIdentifier];

    stillImageIdentifier = [fillCopy stillImageIdentifier];
    v17 = [providerCopy imageResourceForIdentifier:stillImageIdentifier];
    imageResource = v13->_imageResource;
    v13->_imageResource = v17;

    v19 = [factoryCopy imageViewForResource:v13->_imageResource];
    imageView = v13->_imageView;
    v13->_imageView = v19;

    [(SXImageView *)v13->_imageView setIsDecorative:1];
    v21 = [[SXVideoFillPlayerView alloc] initWithVideoResource:v15 imageView:v13->_imageView];
    playerView = v13->_playerView;
    v13->_playerView = v21;

    -[SXVideoFillPlayerView setFillMode:](v13->_playerView, "setFillMode:", [fillCopy fillMode]);
    -[SXVideoFillPlayerView setShouldLoop:](v13->_playerView, "setShouldLoop:", [fillCopy loop]);
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
  clippingView = [(SXVideoFillView *)self clippingView];
  [(SXVideoFillView *)self bounds];
  [clippingView setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageResource = [(SXVideoFillView *)self imageResource];
  [imageResource dimensions];
  v8 = v7;
  v10 = v9;

  fill = [(SXFillView *)self fill];
  fillMode = [fill fillMode];

  fill2 = [(SXFillView *)self fill];
  horizontalAlignment = [fill2 horizontalAlignment];

  fill3 = [(SXFillView *)self fill];
  verticalAlignment = [fill3 verticalAlignment];

  [SXFillPositioning frameForFillWithDimensions:fillMode withinBounds:horizontalAlignment fillMode:verticalAlignment horizontalAlignment:v8 verticalAlignment:v10, width, height];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)play
{
  playerView = [(SXVideoFillView *)self playerView];
  [playerView play];
}

- (void)pause
{
  playerView = [(SXVideoFillView *)self playerView];
  [playerView pause];
}

- (void)reset
{
  playerView = [(SXVideoFillView *)self playerView];
  [playerView reset];
}

- (CGRect)contentFrame
{
  clippingView = [(SXVideoFillView *)self clippingView];
  [clippingView contentFrame];
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

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  clippingView = [(SXVideoFillView *)self clippingView];
  [clippingView setContentFrame:{x, y, width, height}];
}

@end