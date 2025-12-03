@interface VideosExtrasBorderedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGAffineTransform)deferredTransform;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)replicateStateFromImageView:(id)view;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setDeferredTransform:(CGAffineTransform *)transform;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation VideosExtrasBorderedImageView

- (void)setTransform:(CGAffineTransform *)transform
{
  if ([(VideosExtrasBorderedImageView *)self shouldDeferSettingTransform])
  {
    v5 = *&transform->c;
    v8 = *&transform->a;
    v9 = v5;
    v10 = *&transform->tx;
    [(VideosExtrasBorderedImageView *)self setDeferredTransform:&v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VideosExtrasBorderedImageView;
    v6 = *&transform->c;
    v8 = *&transform->a;
    v9 = v6;
    v10 = *&transform->tx;
    [(VideosExtrasBorderedImageView *)&v7 setTransform:&v8];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = VideosExtrasBorderedImageView;
  if (-[VideosExtrasBorderedImageView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"borderColor"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"borderWidth"];
  }

  return v5;
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  layer = [(VideosExtrasBorderedImageView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(VideosExtrasBorderedImageView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

- (double)borderWidth
{
  layer = [(VideosExtrasBorderedImageView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)width
{
  layer = [(VideosExtrasBorderedImageView *)self layer];
  [layer setBorderWidth:width];
}

- (void)replicateStateFromImageView:(id)view
{
  viewCopy = view;
  layer = [(VideosExtrasBorderedImageView *)self layer];
  layer2 = [viewCopy layer];
  if (![(VideosExtrasBorderedImageView *)self shouldSkipImageWhenReplicatingState])
  {
    image = [viewCopy image];
    [(VideosExtrasBorderedImageView *)self setImage:image];
  }

  [layer setBorderColor:{objc_msgSend(layer2, "borderColor")}];
  [layer2 borderWidth];
  [layer setBorderWidth:?];
  [viewCopy bounds];
  [(VideosExtrasBorderedImageView *)self convertRect:viewCopy fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  superview = [(VideosExtrasBorderedImageView *)self superview];
  [viewCopy center];
  v18 = v17;
  v20 = v19;
  superview2 = [viewCopy superview];
  [superview convertPoint:superview2 fromView:{v18, v20}];
  v23 = v22;
  v25 = v24;

  if ([(VideosExtrasBorderedImageView *)self shouldUseTransformWhenReplicatingState])
  {
    [(VideosExtrasBorderedImageView *)self bounds];
    v27 = v26;
    v29 = v28;
    if (MPUFloatLessThanOrEqualToFloat())
    {
      v27 = 1.0;
    }

    if (MPUFloatLessThanOrEqualToFloat())
    {
      v30 = 1.0;
    }

    else
    {
      v30 = v29;
    }

    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, v13 / v27, v15 / v30);
    [(VideosExtrasBorderedImageView *)self center];
    memset(&v36, 0, sizeof(v36));
    CGAffineTransformMakeTranslation(&v36, v23 - v31, v25 - v32);
    t1 = v37;
    memset(&v35, 0, sizeof(v35));
    v33 = v36;
    CGAffineTransformConcat(&v35, &t1, &v33);
    t1 = v35;
    [(VideosExtrasBorderedImageView *)self setTransform:&t1];
  }

  else
  {
    [(VideosExtrasBorderedImageView *)self setBounds:v9, v11, v13, v15];
    [(VideosExtrasBorderedImageView *)self setCenter:v23, v25];
  }
}

- (CGAffineTransform)deferredTransform
{
  v3 = *&self[11].b;
  *&retstr->a = *&self[10].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].d;
  return self;
}

- (void)setDeferredTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_deferredTransform.a = *&transform->a;
  *&self->_deferredTransform.c = v4;
  *&self->_deferredTransform.tx = v3;
}

@end