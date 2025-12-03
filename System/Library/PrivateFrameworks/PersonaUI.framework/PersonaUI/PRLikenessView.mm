@interface PRLikenessView
+ (void)initialize;
- (BOOL)_isLikenessEqual:(id)equal;
- (BOOL)_shouldRenderStaticRepresentation;
- (PRLikenessView)initWithFrame:(CGRect)frame;
- (PRLikenessView)initWithLikeness:(id)likeness;
- (id)_imageView;
- (id)_monogramView;
- (void)_imageForLikeness:(id)likeness completion:(id)completion;
- (void)_setDisplayedView:(id)view;
- (void)_updateViewForLikeness:(BOOL)likeness;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCircular:(BOOL)circular;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLikeness:(id)likeness;
@end

@implementation PRLikenessView

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = _PRLikenessViewMainQueueKey;
    v3 = MEMORY[0x277D85CD0];
    v4 = _PRLikenessViewMainQueueKey;

    dispatch_queue_set_specific(v3, v2, v4, 0);
  }
}

- (PRLikenessView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PRLikenessView;
  v3 = [(PRLikenessView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    likeness = v3->_likeness;
    v3->_likeness = 0;

    v4->_circular = 1;
    v4->_shouldDecode = 1;
  }

  return v4;
}

- (PRLikenessView)initWithLikeness:(id)likeness
{
  likenessCopy = likeness;
  v6 = [(PRLikenessView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_likeness, likeness);
    [(PRLikenessView *)v7 _updateViewForLikeness:0];
  }

  return v7;
}

- (void)dealloc
{
  staticRepresentation = self->_staticRepresentation;
  if (staticRepresentation)
  {
    CFRelease(staticRepresentation);
  }

  v4.receiver = self;
  v4.super_class = PRLikenessView;
  [(PRLikenessView *)&v4 dealloc];
}

- (void)_updateViewForLikeness:(BOOL)likeness
{
  if (likeness || [(PRLikenessView *)self _shouldRenderStaticRepresentation])
  {
    _imageView = [(PRLikenessView *)self _imageView];
    [(PRLikenessView *)self _setDisplayedView:_imageView];
    likeness = self->_likeness;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__PRLikenessView__updateViewForLikeness___block_invoke;
    v15[3] = &unk_279A1C308;
    v15[4] = self;
    v16 = _imageView;
    v6 = _imageView;
    [(PRLikenessView *)self _imageForLikeness:likeness completion:v15];
  }

  else
  {
    likeness = [(PRLikenessView *)self likeness];
    type = [likeness type];

    if (type == 1)
    {
      likeness2 = [(PRLikenessView *)self likeness];
      recipe = [likeness2 recipe];
      v14 = [PRMonogram monogramWithData:recipe];

      _monogramView = [(PRLikenessView *)self _monogramView];
      [_monogramView setMonogram:v14];
      [(PRLikenessView *)self _setDisplayedView:_monogramView];
    }

    else
    {
      likeness3 = [(PRLikenessView *)self likeness];
      type2 = [likeness3 type];

      if (type2 != 3)
      {

        [(PRLikenessView *)self _setDisplayedView:0];
      }
    }
  }
}

void __41__PRLikenessView__updateViewForLikeness___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _PRGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[PRLikenessView _updateViewForLikeness:]_block_invoke";
      v16 = 1024;
      v17 = 127;
      v18 = 2112;
      v19 = v9;
      v11 = "%s (%d) Likeness cache returned an error: %@";
      v12 = v10;
      v13 = 28;
LABEL_4:
      _os_log_impl(&dword_25E435000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else
  {
    if (!v7 || ([v7 isEqual:*(*(a1 + 32) + 496)] & 1) != 0)
    {
      [*(a1 + 40) setImage:v8];
      goto LABEL_9;
    }

    v10 = _PRGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[PRLikenessView _updateViewForLikeness:]_block_invoke";
      v16 = 1024;
      v17 = 129;
      v11 = "%s (%d) Likeness image came back but client set new likeness!";
      v12 = v10;
      v13 = 18;
      goto LABEL_4;
    }
  }

LABEL_9:
}

- (BOOL)_shouldRenderStaticRepresentation
{
  likeness = [(PRLikenessView *)self likeness];
  type = [likeness type];

  if (type == 2)
  {
    return 1;
  }

  likeness2 = [(PRLikenessView *)self likeness];
  recipe = [likeness2 recipe];
  if (recipe)
  {
    v5 = 0;
  }

  else
  {
    likeness3 = [(PRLikenessView *)self likeness];
    if ([likeness3 staticRepresentation])
    {
      v5 = 1;
    }

    else
    {
      likeness4 = [(PRLikenessView *)self likeness];
      staticRepresentationData = [likeness4 staticRepresentationData];
      v5 = staticRepresentationData != 0;
    }
  }

  return v5;
}

- (id)_monogramView
{
  monogramView = self->_monogramView;
  if (!monogramView)
  {
    v4 = [PRMonogramView alloc];
    [(PRLikenessView *)self bounds];
    v5 = [(PRMonogramView *)v4 initWithFrame:?];
    v6 = self->_monogramView;
    self->_monogramView = v5;

    [(PRMonogramView *)self->_monogramView setCircular:[(PRLikenessView *)self isCircular]];
    [(PRLikenessView *)self addSubview:self->_monogramView];
    monogramView = self->_monogramView;
  }

  return monogramView;
}

- (id)_imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [PRImageView alloc];
    [(PRLikenessView *)self bounds];
    v5 = [(PRImageView *)v4 initWithFrame:?];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(PRImageView *)self->_imageView setCircular:[(PRLikenessView *)self isCircular]];
    [(PRImageView *)self->_imageView setContentMode:2];
    [(PRLikenessView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)_imageForLikeness:(id)likeness completion:(id)completion
{
  likenessCopy = likeness;
  completionCopy = completion;
  if ([likenessCopy staticRepresentation])
  {
    v8 = MEMORY[0x277D755B8];
    staticRepresentation = [likenessCopy staticRepresentation];
    [likenessCopy cropRect];
    v10 = [v8 pr_imageWithCGImage:staticRepresentation cropRect:?];
    completionCopy[2](completionCopy, likenessCopy, v10, 0);
  }

  else
  {
    [(PRLikenessView *)self bounds];
    v10 = [PRLikenessCacheContext contextWithCacheSize:PRLikenessCacheSizeClosestToSize(v11, v12)];
    [v10 setForceDecode:1];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [v10 setScale:?];

    v14 = +[PRLikenessCache sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__PRLikenessView__imageForLikeness_completion___block_invoke;
    v15[3] = &unk_279A1C358;
    v17 = completionCopy;
    v16 = likenessCopy;
    [v14 imageForLikeness:v16 context:v10 completion:v15];
  }
}

void __47__PRLikenessView__imageForLikeness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dispatch_get_specific(_PRLikenessViewMainQueueKey))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__PRLikenessView__imageForLikeness_completion___block_invoke_2;
    v7[3] = &unk_279A1C330;
    v11 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)setLikeness:(id)likeness
{
  likenessCopy = likeness;
  if (![(PRLikenessView *)self _isLikenessEqual:?])
  {
    objc_storeStrong(&self->_likeness, likeness);
    self->_likenessType = [likenessCopy type];
    recipe = [likenessCopy recipe];
    v6 = [recipe copy];
    recipe = self->_recipe;
    self->_recipe = v6;

    [likenessCopy cropRect];
    self->_cropRect.origin.x = v8;
    self->_cropRect.origin.y = v9;
    self->_cropRect.size.width = v10;
    self->_cropRect.size.height = v11;
    staticRepresentation = self->_staticRepresentation;
    if (staticRepresentation)
    {
      CFRelease(staticRepresentation);
    }

    staticRepresentation = [likenessCopy staticRepresentation];
    self->_staticRepresentation = staticRepresentation;
    if (staticRepresentation)
    {
      CFRetain(staticRepresentation);
    }

    if (likenessCopy)
    {
      [(PRLikenessView *)self _updateViewForLikeness:0];
    }

    else
    {
      [(PRLikenessView *)self _setDisplayedView:0];
    }
  }
}

- (BOOL)_isLikenessEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self->_likeness == equalCopy)
  {
    if (!equalCopy)
    {
      v6 = 1;
      goto LABEL_3;
    }

    likenessType = self->_likenessType;
    if (likenessType == [(PRLikeness *)equalCopy type])
    {
      staticRepresentation = self->_staticRepresentation;
      if (staticRepresentation == [(PRLikeness *)v5 staticRepresentation])
      {
        [(PRLikeness *)v5 cropRect];
        v16.origin.x = v10;
        v16.origin.y = v11;
        v16.size.width = v12;
        v16.size.height = v13;
        if (CGRectEqualToRect(self->_cropRect, v16))
        {
          recipe = self->_recipe;
          recipe = [(PRLikeness *)v5 recipe];
          [(NSData *)recipe isEqual:recipe];
        }
      }
    }
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)setCircular:(BOOL)circular
{
  if (self->_circular != circular)
  {
    self->_circular = circular;
    [(PRMonogramView *)self->_monogramView setCircular:?];
    [(PRImageView *)self->_imageView setCircular:[(PRLikenessView *)self isCircular]];

    [(PRLikenessView *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PRMonogramView *)self->_monogramView setHighlighted:?];
  }
}

- (void)_setDisplayedView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  v7 = viewCopy;
  if (imageView == viewCopy)
  {
    [(PRImageView *)imageView setHidden:0];
  }

  else
  {
    [(PRImageView *)imageView setHidden:1];
    [(PRImageView *)self->_imageView setImage:0];
  }

  monogramView = self->_monogramView;
  if (monogramView == v7)
  {
    [(PRMonogramView *)monogramView setHidden:0];
  }

  else
  {
    [(PRMonogramView *)monogramView setHidden:1];
    [(PRMonogramView *)self->_monogramView setMonogram:0];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRLikenessView;
  [(PRLikenessView *)&v3 layoutSubviews];
  [(PRLikenessView *)self bounds];
  [(PRMonogramView *)self->_monogramView setFrame:?];
  [(PRLikenessView *)self bounds];
  [(PRImageView *)self->_imageView setFrame:?];
}

@end