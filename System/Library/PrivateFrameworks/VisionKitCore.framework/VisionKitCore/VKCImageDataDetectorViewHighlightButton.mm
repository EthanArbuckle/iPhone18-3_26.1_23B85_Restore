@interface VKCImageDataDetectorViewHighlightButton
- (VKCImageDataDetectorViewHighlightButton)initWithFrame:(CGRect)frame;
- (id)blurImage:(id)image withRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setRotation:(double)rotation;
@end

@implementation VKCImageDataDetectorViewHighlightButton

- (VKCImageDataDetectorViewHighlightButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = VKCImageDataDetectorViewHighlightButton;
  v3 = [(VKCImageDataDetectorViewHighlightButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    v6 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"chevron.down.square.fill"];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    blurImageView = v3->_blurImageView;
    v3->_blurImageView = v7;

    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:13.0];
    v10 = [v6 imageWithConfiguration:v9];

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [(UIImageView *)v3->_imageView setVk_contentTintColor:lightGrayColor];

    [(UIImageView *)v3->_imageView setImage:v10];
    [(VKCImageDataDetectorViewHighlightButton *)v3 addSubview:v3->_blurImageView];
    [(VKCImageDataDetectorViewHighlightButton *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)setRotation:(double)rotation
{
  self->_rotation = rotation;
  layer = [(VKCImageDataDetectorViewHighlightButton *)self layer];
  [layer anchorPoint];
  if (v6 != 0.5 || v5 != 0.5)
  {
    [layer frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [layer setAnchorPoint:{0.5, 0.5}];
    [layer setFrame:{v9, v11, v13, v15}];
  }

  CGAffineTransformMakeRotation(&v17, rotation);
  v16 = v17;
  [layer setAffineTransform:&v16];
}

- (void)setFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = VKCImageDataDetectorViewHighlightButton;
  [(VKCImageDataDetectorViewHighlightButton *)&v30 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VKCImageDataDetectorViewHighlightButton *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageView = [(VKCImageDataDetectorViewHighlightButton *)self imageView];
  [imageView setFrame:{v5, v7, v9, v11}];

  v13 = VKMCenterOfRect(v5, v7, v9, v11);
  v15 = v14;
  v16 = VKMMultiplyPointScalar(v9, v11, 0.5);
  v17 = VKMRectWithCenterAndSize(v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  blurImageView = [(VKCImageDataDetectorViewHighlightButton *)self blurImageView];
  [blurImageView setFrame:{v17, v19, v21, v23}];

  blurImageView2 = [(VKCImageDataDetectorViewHighlightButton *)self blurImageView];
  [blurImageView2 frame];
  v26 = [(UIView *)self vk_renderImageFromViewBackingStoreWithSubrect:?];

  v27 = [v26 vk_scaledImageMaxDimension:44.0 scale:1.0];
  v28 = [(VKCImageDataDetectorViewHighlightButton *)self blurImage:v27 withRadius:5.0];
  blurImageView3 = [(VKCImageDataDetectorViewHighlightButton *)self blurImageView];
  [blurImageView3 setImage:v28];
}

- (id)blurImage:(id)image withRadius:(double)radius
{
  v5 = MEMORY[0x1E695F658];
  imageCopy = image;
  v7 = [v5 alloc];
  vk_cgImage = [imageCopy vk_cgImage];

  v9 = [v7 initWithCGImage:vk_cgImage options:0];
  v10 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [v10 setValue:v11 forKey:@"inputRadius"];

  [v10 setValue:v9 forKey:@"inputImage"];
  v12 = [v10 valueForKey:@"outputImage"];
  [v12 extent];
  v17 = VKMCenterOfRect(v13, v14, v15, v16);
  v19 = v18;
  [v9 extent];
  v21 = VKMRectWithCenterAndSize(v17, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [MEMORY[0x1E695F620] contextWithOptions:0];
  v29 = [v28 createCGImage:v12 fromRect:{v21, v23, v25, v27}];
  v30 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v29];
  CGImageRelease(v29);

  return v30;
}

@end