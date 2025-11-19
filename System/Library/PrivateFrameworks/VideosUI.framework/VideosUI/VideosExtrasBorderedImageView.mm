@interface VideosExtrasBorderedImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGAffineTransform)deferredTransform;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)replicateStateFromImageView:(id)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setDeferredTransform:(CGAffineTransform *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation VideosExtrasBorderedImageView

- (void)setTransform:(CGAffineTransform *)a3
{
  if ([(VideosExtrasBorderedImageView *)self shouldDeferSettingTransform])
  {
    v5 = *&a3->c;
    v8 = *&a3->a;
    v9 = v5;
    v10 = *&a3->tx;
    [(VideosExtrasBorderedImageView *)self setDeferredTransform:&v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VideosExtrasBorderedImageView;
    v6 = *&a3->c;
    v8 = *&a3->a;
    v9 = v6;
    v10 = *&a3->tx;
    [(VideosExtrasBorderedImageView *)&v7 setTransform:&v8];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VideosExtrasBorderedImageView;
  if (-[VideosExtrasBorderedImageView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"borderColor"] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"borderWidth"];
  }

  return v5;
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(VideosExtrasBorderedImageView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "borderColor")}];

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v6 = [(VideosExtrasBorderedImageView *)self layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

- (double)borderWidth
{
  v2 = [(VideosExtrasBorderedImageView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(VideosExtrasBorderedImageView *)self layer];
  [v4 setBorderWidth:a3];
}

- (void)replicateStateFromImageView:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasBorderedImageView *)self layer];
  v6 = [v4 layer];
  if (![(VideosExtrasBorderedImageView *)self shouldSkipImageWhenReplicatingState])
  {
    v7 = [v4 image];
    [(VideosExtrasBorderedImageView *)self setImage:v7];
  }

  [v5 setBorderColor:{objc_msgSend(v6, "borderColor")}];
  [v6 borderWidth];
  [v5 setBorderWidth:?];
  [v4 bounds];
  [(VideosExtrasBorderedImageView *)self convertRect:v4 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(VideosExtrasBorderedImageView *)self superview];
  [v4 center];
  v18 = v17;
  v20 = v19;
  v21 = [v4 superview];
  [v16 convertPoint:v21 fromView:{v18, v20}];
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

- (void)setDeferredTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_deferredTransform.a = *&a3->a;
  *&self->_deferredTransform.c = v4;
  *&self->_deferredTransform.tx = v3;
}

@end