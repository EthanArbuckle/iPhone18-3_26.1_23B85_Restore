@interface SKUISlideshowGalleryBarView
- (SKUISlideshowGalleryBarView)initWithFrame:(CGRect)frame;
- (SKUISlideshowGalleryBarViewDelegate)delegate;
- (id)_newImageView;
- (id)imageAtIndex:(int64_t)index;
- (void)_handleTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setImage:(id)image atIndex:(int64_t)index;
- (void)setNumberOfImages:(unint64_t)images;
- (void)setSelectedImageIndex:(unint64_t)index;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SKUISlideshowGalleryBarView

- (SKUISlideshowGalleryBarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISlideshowGalleryBarView initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUISlideshowGalleryBarView;
  height = [(SKUISlideshowGalleryBarView *)&v18 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_numberOfImages = 0;
    height->_selectedImageIndex = 0;
    v10 = objc_alloc(MEMORY[0x277D75C58]);
    [(SKUISlideshowGalleryBarView *)v9 bounds];
    v11 = [v10 initWithFrame:?];
    toolbarView = v9->_toolbarView;
    v9->_toolbarView = v11;

    [(UIToolbar *)v9->_toolbarView setBarStyle:2];
    [(SKUISlideshowGalleryBarView *)v9 addSubview:v9->_toolbarView];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    imageViewsContainer = v9->_imageViewsContainer;
    v9->_imageViewsContainer = v13;

    [(UIToolbar *)v9->_toolbarView addSubview:v9->_imageViewsContainer];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    imageViews = v9->_imageViews;
    v9->_imageViews = v15;
  }

  return v9;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SKUISlideshowGalleryBarView;
  [(SKUISlideshowGalleryBarView *)&v12 layoutSubviews];
  [(SKUISlideshowGalleryBarView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIToolbar *)self->_toolbarView setFrame:?];
  v7 = [(NSMutableArray *)self->_imageViews count];
  [(UIView *)self->_imageViewsContainer setFrame:v4 * 0.5 - (v6 / 3.0 * 1.33333337 + 1.0) * v7 * 0.5, 0.0, (v6 / 3.0 * 1.33333337 + 1.0) * v7, v6];
  imageViewsContainer = self->_imageViewsContainer;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)imageViewsContainer setBackgroundColor:clearColor];

  imageViews = self->_imageViews;
  v11[1] = 3221225472;
  v11[0] = MEMORY[0x277D85DD0];
  v11[2] = __45__SKUISlideshowGalleryBarView_layoutSubviews__block_invoke;
  v11[3] = &__block_descriptor_56_e28_v32__0__UIImageView_8Q16_B24l;
  *&v11[4] = v6 / 3.0 * 1.33333337;
  *&v11[5] = v6 / 3.0;
  *&v11[6] = v6 * 0.5 - v6 / 3.0 * 0.5;
  [(NSMutableArray *)imageViews enumerateObjectsUsingBlock:v11];
}

void __45__SKUISlideshowGalleryBarView_layoutSubviews__block_invoke(double *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  memset(&v11[1], 0, sizeof(CGAffineTransform));
  if (v5)
  {
    [v5 transform];
  }

  v11[0] = v11[1];
  if (CGAffineTransformIsIdentity(v11))
  {
    [v6 setFrame:{(v7 + 1.0) * a3, v9, v7, v8}];
  }

  else
  {
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *&v11[0].a = *MEMORY[0x277CBF2C0];
    *&v11[0].c = v10;
    *&v11[0].tx = *(MEMORY[0x277CBF2C0] + 32);
    [v6 setTransform:v11];
    [v6 setFrame:{(v7 + 1.0) * a3, v9, v7, v8}];
    v11[0] = v11[1];
    [v6 setTransform:v11];
  }
}

- (void)setNumberOfImages:(unint64_t)images
{
  v5 = [(NSMutableArray *)self->_imageViews count];
  v6 = images - v5;
  if (images <= v5)
  {
    if (images < v5)
    {
      v9 = v5;
      do
      {
        v10 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:images];
        [v10 removeFromSuperview];
        [(NSMutableArray *)self->_imageViews removeObjectAtIndex:images];

        ++images;
      }

      while (v9 != images);
    }
  }

  else
  {
    v7 = 0;
    do
    {
      _newImageView = [(SKUISlideshowGalleryBarView *)self _newImageView];
      [_newImageView setTag:v7];
      [(NSMutableArray *)self->_imageViews addObject:_newImageView];
      [(UIView *)self->_imageViewsContainer addSubview:_newImageView];

      ++v7;
    }

    while (v6 != v7);
  }

  [(SKUISlideshowGalleryBarView *)self setNeedsLayout];
}

- (void)setSelectedImageIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_imageViews count]> index)
  {
    v5 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:self->_selectedImageIndex];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8.a = *MEMORY[0x277CBF2C0];
    *&v8.c = v6;
    *&v8.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v5 setTransform:&v8];
    v7 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:index];
    CGAffineTransformMakeScale(&v8, 1.5, 1.5);
    [v7 setTransform:&v8];
    [(UIView *)self->_imageViewsContainer bringSubviewToFront:v7];
    self->_selectedImageIndex = index;
  }
}

- (id)imageAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_imageViews count]> index && ([(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:index], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:index];
    image = [v6 image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)setImage:(id)image atIndex:(int64_t)index
{
  imageCopy = image;
  if ([(NSMutableArray *)self->_imageViews count]> index)
  {
    v6 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:index];

    if (!v6)
    {
      _newImageView = [(SKUISlideshowGalleryBarView *)self _newImageView];
      [_newImageView setTag:index];
      [(NSMutableArray *)self->_imageViews setObject:_newImageView atIndexedSubscript:index];
    }

    v8 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:index];
    [v8 setImage:imageCopy];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v11.receiver = self;
  v11.super_class = SKUISlideshowGalleryBarView;
  eventCopy = event;
  [(SKUISlideshowGalleryBarView *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 userBeganInteractingWithGalleryBarView:{self, v11.receiver, v11.super_class}];
  }

  anyObject = [beganCopy anyObject];
  [(SKUISlideshowGalleryBarView *)self _handleTouch:anyObject withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SKUISlideshowGalleryBarView;
  eventCopy = event;
  movedCopy = moved;
  [(SKUISlideshowGalleryBarView *)&v9 touchesMoved:movedCopy withEvent:eventCopy];
  anyObject = [movedCopy anyObject];

  [(SKUISlideshowGalleryBarView *)self _handleTouch:anyObject withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SKUISlideshowGalleryBarView;
  [(SKUISlideshowGalleryBarView *)&v7 touchesEnded:ended withEvent:event];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 userStoppedInteractingWithGalleryBarView:self];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SKUISlideshowGalleryBarView;
  [(SKUISlideshowGalleryBarView *)&v7 touchesCancelled:cancelled withEvent:event];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 userStoppedInteractingWithGalleryBarView:self];
  }
}

- (id)_newImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.75 alpha:1.0];
  [v2 setBackgroundColor:v3];

  [v2 setContentMode:2];
  [v2 setClipsToBounds:1];
  [v2 setUserInteractionEnabled:1];
  layer = [v2 layer];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [layer setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

  layer2 = [v2 layer];
  [layer2 setBorderWidth:1.0];

  layer3 = [v2 layer];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [layer3 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  layer4 = [v2 layer];
  [layer4 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  layer5 = [v2 layer];
  LODWORD(v11) = 1061997773;
  [layer5 setShadowOpacity:v11];

  layer6 = [v2 layer];
  [layer6 setShadowRadius:2.0];

  return v2;
}

- (void)_handleTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [touchCopy locationInView:self];
    v9 = v8;
    v11 = v10;
    if ([(NSMutableArray *)self->_imageViews count])
    {
      v12 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:0];
      [v12 center];
      v11 = v13;
    }

    v14 = [(SKUISlideshowGalleryBarView *)self hitTest:eventCopy withEvent:v9, v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 tag];
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 galleryBarView:self didSelectIndex:v15];
    }
  }
}

- (SKUISlideshowGalleryBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISlideshowGalleryBarView initWithFrame:]";
}

@end