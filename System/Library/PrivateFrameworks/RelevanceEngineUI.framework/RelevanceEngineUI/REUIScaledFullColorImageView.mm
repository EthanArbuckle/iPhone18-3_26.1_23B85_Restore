@interface REUIScaledFullColorImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation REUIScaledFullColorImageView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v14.receiver = self;
  v14.super_class = REUIScaledFullColorImageView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(REUIScaledFullColorImageView *)&v14 initWithFrame:device, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v3, v4, v5, v6}];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setContentMode:2];
    [(UIImageView *)v7->_imageView setClipsToBounds:1];
    layer = [(UIImageView *)v7->_imageView layer];
    [layer setShouldRasterize:1];

    layer2 = [(UIImageView *)v7->_imageView layer];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer2 setRasterizationScale:?];

    [(REUIScaledFullColorImageView *)v7 addSubview:v7->_imageView];
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v8 = [metadata objectForKeyedSubscript:REUIScaledFullColorImageViewImageMetadataKey];

  objc_opt_class();
  LOBYTE(metadata) = objc_opt_isKindOfClass();
  imageView = [(REUIScaledFullColorImageView *)self imageView];
  if (metadata)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [imageView setImage:v7];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = REUIScaledFullColorImageView;
  [(REUIScaledFullColorImageView *)&v17 layoutSubviews];
  [(REUIScaledFullColorImageView *)self bounds];
  Width = CGRectGetWidth(v18);
  [(REUIScaledFullColorImageView *)self bounds];
  Height = CGRectGetHeight(v19);
  imageView = [(REUIScaledFullColorImageView *)self imageView];
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = Width;
  v20.size.height = Height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = Width;
  v21.size.height = Height;
  [imageView setCenter:{MidX, CGRectGetMidY(v21)}];

  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = Width;
  v22.size.height = Height;
  v23 = CGRectInset(v22, 1.5, 1.5);
  x = v23.origin.x;
  y = v23.origin.y;
  v9 = v23.size.width;
  v10 = v23.size.height;
  imageView2 = [(REUIScaledFullColorImageView *)self imageView];
  [imageView2 setBounds:{x, y, v9, v10}];

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = v9;
  v24.size.height = v10;
  v12 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = v9;
  v25.size.height = v10;
  v13 = CGRectGetHeight(v25);
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  imageView3 = [(REUIScaledFullColorImageView *)self imageView];
  layer = [imageView3 layer];
  [layer setCornerRadius:v14 * 0.5];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->filterProvider);

  return WeakRetained;
}

@end