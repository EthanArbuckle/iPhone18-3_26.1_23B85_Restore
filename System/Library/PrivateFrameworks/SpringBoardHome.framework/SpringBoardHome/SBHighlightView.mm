@interface SBHighlightView
+ (id)_highlightImageWithHeight:(double)height alpha:(double)alpha;
+ (id)imageCache;
- (SBHighlightView)initWithFrame:(CGRect)frame highlightAlpha:(double)alpha highlightHeight:(double)height;
- (void)layoutSubviews;
@end

@implementation SBHighlightView

+ (id)imageCache
{
  if ([*MEMORY[0x1E69DDA98] isFrontBoard])
  {
    systemAppPersistenteCache = [MEMORY[0x1E69D3FF8] systemAppPersistenteCache];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__SBHighlightView_imageCache__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (imageCache_onceToken != -1)
    {
      dispatch_once(&imageCache_onceToken, block);
    }

    systemAppPersistenteCache = imageCache_specialCache;
  }

  return systemAppPersistenteCache;
}

void __29__SBHighlightView_imageCache__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69D3FF8]);
  v5 = NSStringFromClass(*(a1 + 32));
  v3 = [v2 initWithUniqueIdentifier:v5];
  v4 = imageCache_specialCache;
  imageCache_specialCache = v3;
}

+ (id)_highlightImageWithHeight:(double)height alpha:(double)alpha
{
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"highlight-%.2fa-%.1fh", *&alpha, *&height];
  imageCache = [self imageCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__SBHighlightView__highlightImageWithHeight_alpha___block_invoke;
  v11[3] = &__block_descriptor_48_e18___UIImage_16__0_Q8l;
  *&v11[4] = height;
  *&v11[5] = alpha;
  v9 = [imageCache imageForKey:v7 generatingIfNecessaryWithBlock:v11];

  return v9;
}

id __51__SBHighlightView__highlightImageWithHeight_alpha___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 2.0;
  v3 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{1.0, v2}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v7[2] = __51__SBHighlightView__highlightImageWithHeight_alpha___block_invoke_2;
  v7[3] = &__block_descriptor_64_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v7[5] = 0x3FF0000000000000;
  *&v7[6] = v2;
  v7[7] = v4;
  v5 = [v3 imageWithActions:v7];

  return v5;
}

void __51__SBHighlightView__highlightImageWithHeight_alpha___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 set];

  CGContextSetAlpha(v3, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = 0;
  v8 = 1.0;

  CGContextFillRect(v3, *&v7);
}

- (SBHighlightView)initWithFrame:(CGRect)frame highlightAlpha:(double)alpha highlightHeight:(double)height
{
  v15.receiver = self;
  v15.super_class = SBHighlightView;
  v7 = [(SBHighlightView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_highlightAlpha = fmin(fmax(alpha, 0.0), 1.0);
    v7->_highlightHeight = height;
    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v10 = [objc_opt_class() _highlightImageWithHeight:height alpha:alpha];
    v11 = [v9 initWithImage:v10];
    highlight = v8->_highlight;
    v8->_highlight = v11;

    v13 = v8->_highlight;
    [(SBHighlightView *)v8 bounds];
    [(UIImageView *)v13 setFrame:?];
    [(SBHighlightView *)v8 addSubview:v8->_highlight];
  }

  return v8;
}

- (void)layoutSubviews
{
  highlight = self->_highlight;
  [(SBHighlightView *)self bounds];

  [(UIImageView *)highlight setFrame:?];
}

@end