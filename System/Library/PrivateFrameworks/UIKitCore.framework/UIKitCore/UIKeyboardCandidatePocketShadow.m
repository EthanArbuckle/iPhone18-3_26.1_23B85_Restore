@interface UIKeyboardCandidatePocketShadow
+ (double)widthWithShadow:(BOOL)a3;
+ (id)leftShadowImage;
- (UIKeyboardCandidatePocketShadow)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setDrawsShadow:(BOOL)a3;
@end

@implementation UIKeyboardCandidatePocketShadow

+ (double)widthWithShadow:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 1.5;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = [a1 leftShadowImage];
      [v5 size];
      v3 = v6;
    }
  }

  return v3;
}

+ (id)leftShadowImage
{
  v2 = leftShadowImage_image;
  if (!leftShadowImage_image)
  {
    v3 = [UIImage kitImageNamed:@"kb-candidate-bar-up-arrow-left-shadow.png"];
    v4 = leftShadowImage_image;
    leftShadowImage_image = v3;

    v2 = leftShadowImage_image;
  }

  return v2;
}

- (void)setDrawsShadow:(BOOL)a3
{
  if (self->_drawsShadow != a3)
  {
    self->_drawsShadow = a3;
    [(UIView *)self setNeedsDisplay];
  }
}

- (UIKeyboardCandidatePocketShadow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidatePocketShadow;
  v3 = [(UICollectionReusableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIKeyboardCandidatePocketShadow *)v4 setDrawsShadow:1];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = UIKeyboardCandidatePocketShadow;
  [(UIView *)&v44 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v5);
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(UIKeyboardCandidatePocketShadow *)self shadowFadesToBottom])
  {
    v14 = UIKBCreateFadeClipImage(0, 0, v7, v9, v11, v13, v7, v13 * 0.75, v11, v13 * 0.25, 1.0);
    v45.origin.x = v7;
    v45.origin.y = v9;
    v45.size.width = v11;
    v45.size.height = v13;
    CGContextClipToMask(v5, v45, v14);
    v46.origin.x = v7;
    v46.origin.y = v9;
    v46.size.width = v11;
    v46.size.height = v13;
    CGContextClipToMask(v5, v46, v14);
    CGImageRelease(v14);
  }

  v15 = [(UIView *)self _inheritedRenderConfig];
  v16 = [v15 whiteText];

  if (![(UIKeyboardCandidatePocketShadow *)self drawsShadow])
  {
    if ([(UIKeyboardCandidatePocketShadow *)self showsInDarkBackground]|| (((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) & v16) != 0)
    {
      v26 = +[UIColor grayColor];
      v27 = [v26 colorWithAlphaComponent:0.3];
      v28 = [v27 CGColor];
    }

    else
    {
      v28 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha11");
    }

    v59.origin.x = v7;
    v59.origin.y = v9;
    v59.size.width = v11;
    v59.size.height = v13;
    v37 = CGRectGetMaxX(v59) + -1.0;
    v60.origin.x = v7;
    v60.origin.y = v9;
    v60.size.width = v11;
    v60.size.height = v13;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = v7;
    v61.origin.y = v9;
    v61.size.width = v11;
    v61.size.height = v13;
    Height = CGRectGetHeight(v61);
    CGContextSetFillColorWithColor(v5, v28);
    v40 = 1.0;
    goto LABEL_18;
  }

  if (((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1) | v16 & 1)
  {
    CGContextSetAlpha(v5, 0.7);
    if ((((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1) & v16) == 1)
    {
      v17 = +[UIColor grayColor];
      v18 = [v17 colorWithAlphaComponent:0.05];
      v19 = [v18 CGColor];

      v20 = +[UIColor grayColor];
      v21 = [v20 colorWithAlphaComponent:0.11];
      v22 = [v21 CGColor];

      v23 = +[UIColor grayColor];
      v24 = [v23 colorWithAlphaComponent:0.31];
      v25 = [v24 CGColor];
    }

    else
    {
      v19 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha5");
      v22 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha11");
      v25 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha31");
    }

    v48.origin.x = v7;
    v48.origin.y = v9;
    v48.size.width = v11;
    v48.size.height = v13;
    v31 = CGRectGetMaxX(v48) + -1.5;
    v49.origin.x = v7;
    v49.origin.y = v9;
    v49.size.width = v11;
    v49.size.height = v13;
    v32 = CGRectGetMinY(v49);
    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    v33 = CGRectGetHeight(v50);
    CGContextSetFillColorWithColor(v5, v19);
    v51.size.width = 0.5;
    v51.origin.x = v31;
    v51.origin.y = v32;
    v51.size.height = v33;
    CGContextFillRect(v5, v51);
    v52.origin.x = v7;
    v52.origin.y = v9;
    v52.size.width = v11;
    v52.size.height = v13;
    v34 = CGRectGetMaxX(v52) + -1.0;
    v53.origin.x = v7;
    v53.origin.y = v9;
    v53.size.width = v11;
    v53.size.height = v13;
    v35 = CGRectGetMinY(v53);
    v54.origin.x = v7;
    v54.origin.y = v9;
    v54.size.width = v11;
    v54.size.height = v13;
    v36 = CGRectGetHeight(v54);
    CGContextSetFillColorWithColor(v5, v22);
    v55.size.width = 0.5;
    v55.origin.x = v34;
    v55.origin.y = v35;
    v55.size.height = v36;
    CGContextFillRect(v5, v55);
    v56.origin.x = v7;
    v56.origin.y = v9;
    v56.size.width = v11;
    v56.size.height = v13;
    v37 = CGRectGetMaxX(v56) + -0.5;
    v57.origin.x = v7;
    v57.origin.y = v9;
    v57.size.width = v11;
    v57.size.height = v13;
    MinY = CGRectGetMinY(v57);
    v58.origin.x = v7;
    v58.origin.y = v9;
    v58.size.width = v11;
    v58.size.height = v13;
    Height = CGRectGetHeight(v58);
    CGContextSetFillColorWithColor(v5, v25);
    v40 = 0.5;
LABEL_18:
    v41 = v37;
    v42 = MinY;
    v43 = Height;
    CGContextFillRect(v5, *(&v40 - 2));
    goto LABEL_19;
  }

  v29 = [objc_opt_class() leftShadowImage];
  v30 = [v29 CGImage];
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  CGContextDrawImage(v5, v47, v30);

LABEL_19:
  CGContextRestoreGState(v5);
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[UIKeyboardCandidatePocketShadow setDrawsShadow:](self, "setDrawsShadow:", [v4 drawsShadow]);
  }
}

@end