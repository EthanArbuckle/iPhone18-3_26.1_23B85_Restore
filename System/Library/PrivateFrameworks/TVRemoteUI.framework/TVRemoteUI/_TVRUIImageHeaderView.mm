@interface _TVRUIImageHeaderView
- (_TVRUIImageHeaderView)initWithFrame:(CGRect)frame;
- (void)_configureHierarchy;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation _TVRUIImageHeaderView

- (_TVRUIImageHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIImageHeaderView;
  v3 = [(_TVRUIImageHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIImageHeaderView *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  imageView = [(_TVRUIImageHeaderView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = _TVRUIImageHeaderView;
  [(_TVRUIImageHeaderView *)&v16 layoutSubviews];
  contentView = [(_TVRUIImageHeaderView *)self contentView];
  [contentView bounds];
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
  imageView = [(_TVRUIImageHeaderView *)self imageView];
  [imageView setFrame:{MidX - Height * 1.77777778 * 0.5, MidY - Height * 0.5, Height * 1.77777778, Height}];
}

- (void)_configureHierarchy
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(UIImageView *)v3 _setContinuousCornerRadius:16.0];
  darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
  cGColor = [darkGrayColor CGColor];
  layer = [(UIImageView *)v3 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIImageView *)v3 layer];
  [layer2 setBorderWidth:0.5];

  [(UIImageView *)v3 setContentMode:1];
  [(UIImageView *)v3 setClipsToBounds:1];
  contentView = [(_TVRUIImageHeaderView *)self contentView];
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

        [contentView addSubview:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v11);
  }

  imageView = self->_imageView;
  self->_imageView = v3;

  [(_TVRUIImageHeaderView *)self setNeedsLayout];
}

@end