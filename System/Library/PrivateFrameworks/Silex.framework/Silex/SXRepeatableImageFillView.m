@interface SXRepeatableImageFillView
- (CGRect)contentFrame;
- (CGRect)fillFrameWithBoundingSize:(CGSize)a3;
- (CGSize)patternSize;
- (SXRepeatableImageFillView)initWithRepeatableImageFill:(id)a3 imageView:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)load;
- (void)pause;
- (void)play;
- (void)setContentFrame:(CGRect)a3;
- (void)setPatternSize:(CGSize)a3;
@end

@implementation SXRepeatableImageFillView

- (SXRepeatableImageFillView)initWithRepeatableImageFill:(id)a3 imageView:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SXRepeatableImageFillView;
  v8 = [(SXFillView *)&v13 initWithFill:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imageView, a4);
    [(SXImageView *)v9->_imageView setIsDecorative:1];
    [(SXRepeatableImageView *)v9->_imageView setContentMode:1];
    v10 = [[SXClippingView alloc] initWithContentView:v7];
    clippingView = v9->_clippingView;
    v9->_clippingView = v10;

    [(SXClippingView *)v9->_clippingView setClippingMode:0];
    [(SXRepeatableImageFillView *)v9 addSubview:v9->_clippingView];
  }

  return v9;
}

- (void)load
{
  v3.receiver = self;
  v3.super_class = SXRepeatableImageFillView;
  [(SXFillView *)&v3 load];
  if (![(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXImageView *)self->_imageView addInterestInImageQuality:0 forObject:self];
  }
}

- (void)dealloc
{
  if ([(SXImageView *)self->_imageView objectHasQualityInterest:self quality:0])
  {
    [(SXImageView *)self->_imageView giveUpInterestForObject:self];
  }

  v3.receiver = self;
  v3.super_class = SXRepeatableImageFillView;
  [(SXRepeatableImageFillView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SXRepeatableImageFillView;
  [(SXRepeatableImageFillView *)&v4 layoutSubviews];
  v3 = [(SXRepeatableImageFillView *)self clippingView];
  [(SXRepeatableImageFillView *)self bounds];
  [v3 setFrame:?];
}

- (CGRect)fillFrameWithBoundingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXFillView *)self fill];
  if ([v6 repeat] == 3)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(SXFillView *)self fill];
    v7 = [v8 repeat] == 1;
  }

  v9 = [(SXFillView *)self fill];
  if ([v9 repeat] == 3)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(SXFillView *)self fill];
    v10 = [v11 repeat] == 2;
  }

  v12 = [(SXFillView *)self fill];
  v13 = [v12 verticalAlignment];

  v14 = [(SXFillView *)self fill];
  v15 = [v14 horizontalAlignment];

  v16 = height;
  if (!v10)
  {
    [(SXRepeatableImageFillView *)self patternSize];
    v16 = v17;
  }

  v18 = width;
  if (!v7)
  {
    [(SXRepeatableImageFillView *)self patternSize];
    v18 = v19;
  }

  v20 = MEMORY[0x1E695EFF8];
  if (v15 == 2)
  {
    if (v7)
    {
      [(SXRepeatableImageFillView *)self patternSize];
      v27 = v26;
      [(SXRepeatableImageFillView *)self patternSize];
      v18 = v18 + v27 - fmod(width, v28);
      [(SXRepeatableImageFillView *)self patternSize];
      v30 = v29;
      [(SXRepeatableImageFillView *)self patternSize];
      v25 = -(v30 - fmod(width, v31));
    }

    else
    {
      v25 = width - v18;
    }
  }

  else if (v15 == 1)
  {
    if (v7)
    {
      [(SXRepeatableImageFillView *)self patternSize];
      v22 = vcvtmd_u64_f64(width / v21);
      v23 = (v22 + (v22 & 1) + 1);
      [(SXRepeatableImageFillView *)self patternSize];
      v18 = v24 * v23;
    }

    v25 = (width - v18) * 0.5;
  }

  else
  {
    v25 = *MEMORY[0x1E695EFF8];
  }

  if (v13 == 2)
  {
    if (v10)
    {
      [(SXRepeatableImageFillView *)self patternSize];
      v38 = v37;
      [(SXRepeatableImageFillView *)self patternSize];
      v16 = v16 + v38 - fmod(height, v39);
      [(SXRepeatableImageFillView *)self patternSize];
      v41 = v40;
      [(SXRepeatableImageFillView *)self patternSize];
      v36 = -(v41 - fmod(height, v42));
    }

    else
    {
      v36 = height - v16;
    }
  }

  else if (v13 == 1)
  {
    if (v10)
    {
      [(SXRepeatableImageFillView *)self patternSize];
      v33 = vcvtmd_u64_f64(height / v32);
      v34 = (v33 + (v33 & 1) + 1);
      [(SXRepeatableImageFillView *)self patternSize];
      v16 = v35 * v34;
    }

    v36 = (height - v16) * 0.5;
  }

  else
  {
    v36 = *(v20 + 8);
  }

  v43 = v25;
  v44 = v18;
  v45 = v16;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v36;
  result.origin.x = v43;
  return result;
}

- (CGRect)contentFrame
{
  v2 = [(SXRepeatableImageFillView *)self clippingView];
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
  v7 = [(SXRepeatableImageFillView *)self clippingView];
  [v7 setContentFrame:{x, y, width, height}];
}

- (void)setPatternSize:(CGSize)a3
{
  p_patternSize = &self->_patternSize;
  if (self->_patternSize.width != a3.width || self->_patternSize.height != a3.height)
  {
    p_patternSize->width = a3.width;
    self->_patternSize.height = a3.height;
    v6 = [(SXRepeatableImageFillView *)self imageView];
    v7 = [v6 imageResource];
    [v7 dimensions];
    v9 = v8;
    v11 = v10;

    width = p_patternSize->width;
    height = p_patternSize->height;
    v14 = v9 / fmax(v11, 1.0);
    if (p_patternSize->width >= 2.22044605e-16 || height <= 0.0)
    {
      if (width > 0.0 && height < 2.22044605e-16)
      {
        p_patternSize->height = width / v14;
      }
    }

    else
    {
      p_patternSize->width = v14 * height;
    }

    v16 = [(SXRepeatableImageFillView *)self imageView];
    [v16 setPreferredImageSize:{p_patternSize->width, p_patternSize->height}];

    [(SXRepeatableImageFillView *)self setNeedsLayout];
  }
}

- (void)play
{
  v2 = [(SXRepeatableImageFillView *)self imageView];
  [v2 resume];
}

- (void)pause
{
  v2 = [(SXRepeatableImageFillView *)self imageView];
  [v2 pause];
}

- (CGSize)patternSize
{
  width = self->_patternSize.width;
  height = self->_patternSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end