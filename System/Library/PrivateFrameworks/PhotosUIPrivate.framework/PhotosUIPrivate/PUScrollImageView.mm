@interface PUScrollImageView
- (PUScrollImageView)initWithFrame:(CGRect)frame image:(id)image;
@end

@implementation PUScrollImageView

- (PUScrollImageView)initWithFrame:(CGRect)frame image:(id)image
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = PUScrollImageView;
  height = [(PUScrollImageView *)&v17 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    [(PUScrollImageView *)height setImageView:v11];

    imageView = [(PUScrollImageView *)height imageView];
    [imageView setContentMode:1];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    imageView2 = [(PUScrollImageView *)height imageView];
    [imageView2 setBackgroundColor:whiteColor];

    [(PUScrollImageView *)height setDelegate:height];
    imageView3 = [(PUScrollImageView *)height imageView];
    [(PUScrollImageView *)height addSubview:imageView3];
  }

  return height;
}

@end