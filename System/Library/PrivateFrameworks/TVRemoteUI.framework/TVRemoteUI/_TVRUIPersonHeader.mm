@interface _TVRUIPersonHeader
- (_TVRUIPersonHeader)initWithFrame:(CGRect)a3;
- (void)_configureHierarchy;
- (void)_updateImageBorderFromCurrentState;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
@end

@implementation _TVRUIPersonHeader

- (_TVRUIPersonHeader)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIPersonHeader;
  v3 = [(_TVRUIPersonHeader *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIPersonHeader *)v3 _configureHierarchy];
    [(_TVRUIPersonHeader *)v4 setShowsImageBorder:1];
  }

  return v4;
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(_TVRUIPersonHeader *)self imageView];
  [v6 setImage:v5];

  [(_TVRUIPersonHeader *)self _updateImageBorderFromCurrentState];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _TVRUIPersonHeader;
  [(_TVRUIPersonHeader *)&v16 layoutSubviews];
  v3 = [(_TVRUIPersonHeader *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MidY = CGRectGetMidY(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Height = CGRectGetHeight(v19);
  v15 = [(_TVRUIPersonHeader *)self imageView];
  [v15 setFrame:{MidX - Height * 0.5, MidY - Height * 0.5, Height, Height}];
}

- (void)_configureHierarchy
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(UIImageView *)v3 _setContinuousCornerRadius:16.0];
  v4 = [MEMORY[0x277D75348] darkGrayColor];
  v5 = [v4 CGColor];
  v6 = [(UIImageView *)v3 layer];
  [v6 setBorderColor:v5];

  v7 = [(UIImageView *)v3 layer];
  [v7 setBorderWidth:0.5];

  [(UIImageView *)v3 setContentMode:1];
  [(UIImageView *)v3 setClipsToBounds:1];
  v8 = [(_TVRUIPersonHeader *)self contentView];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:{1, 0}];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addSubview:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }

  imageView = self->_imageView;
  self->_imageView = v3;

  [(_TVRUIPersonHeader *)self setNeedsLayout];
}

- (void)_updateImageBorderFromCurrentState
{
  if ([(_TVRUIPersonHeader *)self showsImageBorder])
  {
    [MEMORY[0x277D75348] darkGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v7 = ;
  v3 = v7;
  v4 = [v7 CGColor];
  v5 = [(_TVRUIPersonHeader *)self imageView];
  v6 = [v5 layer];
  [v6 setBorderColor:v4];
}

@end