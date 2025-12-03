@interface PSGCircleSegment
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSGCircleSegment)initWithFrame:(CGRect)frame;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation PSGCircleSegment

- (PSGCircleSegment)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PSGCircleSegment;
  v3 = [(PSGCircleSegment *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
    v17 = *MEMORY[0x277D74430];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
    v18[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v7 = [v4 fontDescriptorByAddingAttributes:v6];

    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [(PSGCircleSegment *)v3 setOpaque:1];
    [(PSGCircleSegment *)v3 setAdjustsImageWhenHighlighted:0];
    titleLabel = [(PSGCircleSegment *)v3 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    titleLabel2 = [(PSGCircleSegment *)v3 titleLabel];
    [titleLabel2 setTextAlignment:1];

    titleLabel3 = [(PSGCircleSegment *)v3 titleLabel];
    [titleLabel3 setFont:v8];

    [(PSGCircleSegment *)v3 sizeToFit];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(PSGCircleSegment *)v3 setTitleColor:whiteColor forState:4];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(PSGCircleSegment *)v3 setTitleColor:systemBlueColor forState:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  v20 = CGRectInset(rect, 4.0, 4.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  imageView = [(PSGCircleSegment *)self imageView];
  image = [imageView image];
  [image size];
  v11 = v10;
  imageView2 = [(PSGCircleSegment *)self imageView];
  image2 = [imageView2 image];
  [image2 size];
  v15 = height - (v11 - v14);

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (animatedCopy)
  {
    v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contents"];
    [v6 setDuration:0.15];
    currentImage = [(PSGCircleSegment *)self currentImage];
    [v6 setFromValue:{objc_msgSend(currentImage, "CGImage")}];

    [v6 setToValue:{objc_msgSend(imageCopy, "CGImage")}];
    [v6 setRemovedOnCompletion:1];
    [v6 setFillMode:*MEMORY[0x277CDA238]];
    imageView = [(PSGCircleSegment *)self imageView];
    layer = [imageView layer];
    [layer addAnimation:v6 forKey:@"animateContents"];
  }

  [(PSGCircleSegment *)self setImage:imageCopy forState:0];
  [(PSGCircleSegment *)self sizeToFit];
}

- (CGSize)intrinsicContentSize
{
  imageView = [(PSGCircleSegment *)self imageView];
  image = [imageView image];
  [image size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PSGCircleSegment *)self imageView:fits.width];
  image = [v3 image];
  [image size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end