@interface PRXIconContentViewController
- (PRXIconContentViewController)initWithContentView:(id)a3;
- (void)_updateBodyLabel;
- (void)_updateImageViews;
- (void)setBodyText:(id)a3;
- (void)setImageStyle:(int64_t)a3;
- (void)setImages:(id)a3;
- (void)viewDidLoad;
@end

@implementation PRXIconContentViewController

- (PRXIconContentViewController)initWithContentView:(id)a3
{
  v9.receiver = self;
  v9.super_class = PRXIconContentViewController;
  v3 = [(PRXCardContentViewController *)&v9 initWithContentView:a3];
  v4 = v3;
  if (v3)
  {
    images = v3->_images;
    v3->_images = MEMORY[0x277CBEBF8];

    bodyText = v4->_bodyText;
    v4->_bodyText = &stru_2873787A8;

    v7 = v4;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRXIconContentViewController;
  [(PRXCardContentViewController *)&v3 viewDidLoad];
  [(PRXIconContentViewController *)self _updateImageViews];
  [(PRXIconContentViewController *)self _updateBodyLabel];
}

- (void)setImages:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_images isEqualToArray:?])
  {
    v4 = [v6 copy];
    images = self->_images;
    self->_images = v4;

    [(PRXIconContentViewController *)self _updateImageViews];
  }
}

- (void)setImageStyle:(int64_t)a3
{
  if (self->_imageStyle != a3)
  {
    self->_imageStyle = a3;
    [(PRXIconContentViewController *)self _updateImageViews];
  }
}

- (void)_updateImageViews
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PRXIconContentViewController *)self isViewLoaded])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_images, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_images;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [PRXImageView imageViewWithStyle:self->_imageStyle, v12];
          [v10 setImage:v9];
          [v3 addObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v11 = [(PRXCardContentViewController *)self contentView];
    [v11 setImageViews:v3];
  }
}

- (void)setBodyText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_bodyText isEqualToString:?])
  {
    v4 = [v6 copy];
    bodyText = self->_bodyText;
    self->_bodyText = v4;

    [(PRXIconContentViewController *)self _updateBodyLabel];
  }
}

- (void)_updateBodyLabel
{
  if ([(PRXIconContentViewController *)self isViewLoaded])
  {
    if ([(NSString *)self->_bodyText length])
    {
      v4 = [PRXLabel labelWithStyle:1];
      [v4 setText:self->_bodyText];
      v3 = [(PRXCardContentViewController *)self contentView];
      [v3 setBodyLabel:v4];
    }

    else
    {
      v4 = [(PRXCardContentViewController *)self contentView];
      [v4 setBodyLabel:0];
    }
  }
}

@end