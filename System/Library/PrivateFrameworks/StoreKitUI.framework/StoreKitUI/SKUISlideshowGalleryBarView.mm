@interface SKUISlideshowGalleryBarView
- (SKUISlideshowGalleryBarView)initWithFrame:(CGRect)a3;
- (SKUISlideshowGalleryBarViewDelegate)delegate;
- (id)_newImageView;
- (id)imageAtIndex:(int64_t)a3;
- (void)_handleTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setImage:(id)a3 atIndex:(int64_t)a4;
- (void)setNumberOfImages:(unint64_t)a3;
- (void)setSelectedImageIndex:(unint64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SKUISlideshowGalleryBarView

- (SKUISlideshowGalleryBarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISlideshowGalleryBarView initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUISlideshowGalleryBarView;
  v8 = [(SKUISlideshowGalleryBarView *)&v18 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v8->_numberOfImages = 0;
    v8->_selectedImageIndex = 0;
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
  v9 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)imageViewsContainer setBackgroundColor:v9];

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

- (void)setNumberOfImages:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_imageViews count];
  v6 = a3 - v5;
  if (a3 <= v5)
  {
    if (a3 < v5)
    {
      v9 = v5;
      do
      {
        v10 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a3];
        [v10 removeFromSuperview];
        [(NSMutableArray *)self->_imageViews removeObjectAtIndex:a3];

        ++a3;
      }

      while (v9 != a3);
    }
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [(SKUISlideshowGalleryBarView *)self _newImageView];
      [v8 setTag:v7];
      [(NSMutableArray *)self->_imageViews addObject:v8];
      [(UIView *)self->_imageViewsContainer addSubview:v8];

      ++v7;
    }

    while (v6 != v7);
  }

  [(SKUISlideshowGalleryBarView *)self setNeedsLayout];
}

- (void)setSelectedImageIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_imageViews count]> a3)
  {
    v5 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:self->_selectedImageIndex];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8.a = *MEMORY[0x277CBF2C0];
    *&v8.c = v6;
    *&v8.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v5 setTransform:&v8];
    v7 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a3];
    CGAffineTransformMakeScale(&v8, 1.5, 1.5);
    [v7 setTransform:&v8];
    [(UIView *)self->_imageViewsContainer bringSubviewToFront:v7];
    self->_selectedImageIndex = a3;
  }
}

- (id)imageAtIndex:(int64_t)a3
{
  if ([(NSMutableArray *)self->_imageViews count]> a3 && ([(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a3], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a3];
    v7 = [v6 image];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setImage:(id)a3 atIndex:(int64_t)a4
{
  v9 = a3;
  if ([(NSMutableArray *)self->_imageViews count]> a4)
  {
    v6 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a4];

    if (!v6)
    {
      v7 = [(SKUISlideshowGalleryBarView *)self _newImageView];
      [v7 setTag:a4];
      [(NSMutableArray *)self->_imageViews setObject:v7 atIndexedSubscript:a4];
    }

    v8 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:a4];
    [v8 setImage:v9];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SKUISlideshowGalleryBarView;
  v7 = a4;
  [(SKUISlideshowGalleryBarView *)&v11 touchesBegan:v6 withEvent:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 userBeganInteractingWithGalleryBarView:{self, v11.receiver, v11.super_class}];
  }

  v10 = [v6 anyObject];
  [(SKUISlideshowGalleryBarView *)self _handleTouch:v10 withEvent:v7];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SKUISlideshowGalleryBarView;
  v6 = a4;
  v7 = a3;
  [(SKUISlideshowGalleryBarView *)&v9 touchesMoved:v7 withEvent:v6];
  v8 = [v7 anyObject];

  [(SKUISlideshowGalleryBarView *)self _handleTouch:v8 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUISlideshowGalleryBarView;
  [(SKUISlideshowGalleryBarView *)&v7 touchesEnded:a3 withEvent:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 userStoppedInteractingWithGalleryBarView:self];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SKUISlideshowGalleryBarView;
  [(SKUISlideshowGalleryBarView *)&v7 touchesCancelled:a3 withEvent:a4];
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
  v4 = [v2 layer];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v4 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [v2 layer];
  [v6 setBorderWidth:1.0];

  v7 = [v2 layer];
  v8 = [MEMORY[0x277D75348] blackColor];
  [v7 setShadowColor:{objc_msgSend(v8, "CGColor")}];

  v9 = [v2 layer];
  [v9 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  v10 = [v2 layer];
  LODWORD(v11) = 1061997773;
  [v10 setShadowOpacity:v11];

  v12 = [v2 layer];
  [v12 setShadowRadius:2.0];

  return v2;
}

- (void)_handleTouch:(id)a3 withEvent:(id)a4
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [v17 locationInView:self];
    v9 = v8;
    v11 = v10;
    if ([(NSMutableArray *)self->_imageViews count])
    {
      v12 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:0];
      [v12 center];
      v11 = v13;
    }

    v14 = [(SKUISlideshowGalleryBarView *)self hitTest:v6 withEvent:v9, v11];
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