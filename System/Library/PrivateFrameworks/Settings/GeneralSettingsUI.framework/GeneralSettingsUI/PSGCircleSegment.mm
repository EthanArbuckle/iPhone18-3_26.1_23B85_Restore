@interface PSGCircleSegment
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PSGCircleSegment)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
@end

@implementation PSGCircleSegment

- (PSGCircleSegment)initWithFrame:(CGRect)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PSGCircleSegment;
  v3 = [(PSGCircleSegment *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [(PSGCircleSegment *)v3 titleLabel];
    [v9 setAdjustsFontSizeToFitWidth:1];

    v10 = [(PSGCircleSegment *)v3 titleLabel];
    [v10 setTextAlignment:1];

    v11 = [(PSGCircleSegment *)v3 titleLabel];
    [v11 setFont:v8];

    [(PSGCircleSegment *)v3 sizeToFit];
    v12 = [MEMORY[0x277D75348] whiteColor];
    [(PSGCircleSegment *)v3 setTitleColor:v12 forState:4];

    v13 = [MEMORY[0x277D75348] systemBlueColor];
    [(PSGCircleSegment *)v3 setTitleColor:v13 forState:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v20 = CGRectInset(a3, 4.0, 4.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v8 = [(PSGCircleSegment *)self imageView];
  v9 = [v8 image];
  [v9 size];
  v11 = v10;
  v12 = [(PSGCircleSegment *)self imageView];
  v13 = [v12 image];
  [v13 size];
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

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contents"];
    [v6 setDuration:0.15];
    v7 = [(PSGCircleSegment *)self currentImage];
    [v6 setFromValue:{objc_msgSend(v7, "CGImage")}];

    [v6 setToValue:{objc_msgSend(v10, "CGImage")}];
    [v6 setRemovedOnCompletion:1];
    [v6 setFillMode:*MEMORY[0x277CDA238]];
    v8 = [(PSGCircleSegment *)self imageView];
    v9 = [v8 layer];
    [v9 addAnimation:v6 forKey:@"animateContents"];
  }

  [(PSGCircleSegment *)self setImage:v10 forState:0];
  [(PSGCircleSegment *)self sizeToFit];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PSGCircleSegment *)self imageView];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(PSGCircleSegment *)self imageView:a3.width];
  v4 = [v3 image];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end