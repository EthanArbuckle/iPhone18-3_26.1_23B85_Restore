@interface _PBFImageView
- (BOOL)updateImage:(id)a3 imageSize:(CGSize)a4;
- (CGSize)imageSize;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_PBFImageView)init;
- (void)layoutSubviews;
@end

@implementation _PBFImageView

- (_PBFImageView)init
{
  v5.receiver = self;
  v5.super_class = _PBFImageView;
  v2 = [(_PBFImageView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_imageSize = *MEMORY[0x277CBF3A8];
    [(_PBFImageView *)v2 setUserInteractionEnabled:0];
  }

  return v3;
}

- (BOOL)updateImage:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  imageView = self->_imageView;
  if (!imageView)
  {
    v16 = objc_alloc(MEMORY[0x277D755E8]);
    BSRectWithSize();
    v17 = [v16 initWithFrame:?];
    v18 = self->_imageView;
    self->_imageView = v17;

    [(UIImageView *)self->_imageView setContentMode:1];
    [(_PBFImageView *)self addSubview:self->_imageView];
LABEL_12:
    [(_PBFImageView *)self setNeedsLayout];
    [(_PBFImageView *)self invalidateIntrinsicContentSize];
    v15 = 1;
    goto LABEL_13;
  }

  v9 = [(UIImageView *)imageView image];
  if (![v9 isEqual:v7])
  {

LABEL_11:
    [(UIImageView *)self->_imageView setImage:v7];
    v19 = self->_imageView;
    [(UIImageView *)v19 frame];
    [(UIImageView *)v19 pui_setBoundsAndPositionFromFrame:?];
    self->_imageSize.width = width;
    self->_imageSize.height = height;
    goto LABEL_12;
  }

  [(UIImageView *)self->_imageView frame];
  v11 = v10;
  v13 = v12;

  if (v11 != width || v13 != height)
  {
    goto LABEL_11;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _PBFImageView;
  [(_PBFImageView *)&v8 layoutSubviews];
  [(UIImageView *)self->_imageView frame];
  if (v4 != self->_imageSize.width || v3 != self->_imageSize.height)
  {
    imageView = self->_imageView;
    [(UIImageView *)imageView frame];
    [(UIImageView *)imageView pui_setBoundsAndPositionFromFrame:?];
  }

  v7 = self->_imageView;
  [(_PBFImageView *)self center];
  [(UIImageView *)v7 setCenter:?];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end