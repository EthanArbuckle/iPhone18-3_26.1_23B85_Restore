@interface _TVRoundButtonContent
- (CGRect)_frameForImageView:(id)view;
- (void)layoutSubviews;
@end

@implementation _TVRoundButtonContent

- (CGRect)_frameForImageView:(id)view
{
  viewCopy = view;
  [(_TVRoundButtonContent *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [viewCopy bounds];
  v14 = v13;
  v16 = v15;
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  MidY = CGRectGetMidY(v34);
  [viewCopy tv_margin];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v24 == 0.0;
  v28 = v26 == 0.0;
  if (v27 && v28)
  {
    v29 = v16;
  }

  else
  {
    v29 = v16 - (v20 + v24);
  }

  if (v27 && v28)
  {
    v30 = v14;
  }

  else
  {
    v30 = v14 - (v22 + v26);
  }

  v31 = MidX - v14 * 0.5 + v22;
  v32 = MidY - v16 * 0.5 + v20;
  result.size.height = v29;
  result.size.width = v30;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _TVRoundButtonContent;
  [(TVButtonContent *)&v5 layoutSubviews];
  imageView = [(TVButtonContent *)self imageView];
  imageView2 = [(TVButtonContent *)self imageView];
  [(_TVRoundButtonContent *)self _frameForImageView:imageView2];
  [imageView setFrame:?];
}

@end