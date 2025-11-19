@interface PUScrollImageView
- (PUScrollImageView)initWithFrame:(CGRect)a3 image:(id)a4;
@end

@implementation PUScrollImageView

- (PUScrollImageView)initWithFrame:(CGRect)a3 image:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PUScrollImageView;
  v10 = [(PUScrollImageView *)&v17 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    [(PUScrollImageView *)v10 setImageView:v11];

    v12 = [(PUScrollImageView *)v10 imageView];
    [v12 setContentMode:1];

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [(PUScrollImageView *)v10 imageView];
    [v14 setBackgroundColor:v13];

    [(PUScrollImageView *)v10 setDelegate:v10];
    v15 = [(PUScrollImageView *)v10 imageView];
    [(PUScrollImageView *)v10 addSubview:v15];
  }

  return v10;
}

@end