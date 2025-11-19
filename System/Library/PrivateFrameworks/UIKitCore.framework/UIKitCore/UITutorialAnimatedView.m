@interface UITutorialAnimatedView
- (UITutorialAnimatedView)initWithKeyboardAppearance:(int64_t)a3;
- (void)_setPackage:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setPackage:(id)a3;
@end

@implementation UITutorialAnimatedView

- (UITutorialAnimatedView)initWithKeyboardAppearance:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = UITutorialAnimatedView;
  v4 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    v5->_appearance = a3;
  }

  return v5;
}

- (void)setPackage:(id)a3
{
  v5 = a3;
  if (self->_package != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_package, a3);
    [(UITutorialAnimatedView *)self _setPackage:v6];
    v5 = v6;
  }
}

- (void)_setPackage:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CALayer *)self->_packageLayer removeFromSuperlayer];
  v5 = [v4 rootLayer];
  v33 = v4;
  -[CALayer setGeometryFlipped:](v5, "setGeometryFlipped:", [v4 isGeometryFlipped]);
  [(CALayer *)v5 setContentsGravity:*MEMORY[0x1E6979DE8]];
  [(CALayer *)v5 setMasksToBounds:1];
  v6 = [(UIView *)self layer];
  [v6 addSublayer:v5];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = v5;
  v7 = [(CALayer *)v5 sublayers];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v11 = *off_1E70ECD30;
    v39 = *off_1E70EC918;
    v34 = *MEMORY[0x1E6979DD0];
    v38 = *v41;
    v35 = v7;
    v36 = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 string];
          v15 = v14;
          if (v14)
          {
            v16 = _UILocalizedStringInSystemLanguage(v14, v14);
            v17 = [v16 localizedUppercaseString];

            v18 = [off_1E70ECC18 systemFontOfSize:34.0 weight:v11];
            v44 = v39;
            v45 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            [v17 sizeWithAttributes:v19];
            v21 = v20;
            [v13 setFont:v18];
            if ([(UITutorialAnimatedView *)self appearance]!= 1)
            {
              v22 = +[UIColor systemDarkGrayColor];
              [v13 setForegroundColor:{objc_msgSend(v22, "CGColor")}];

              v10 = v38;
            }

            if (v21 > 150.0 && [v15 isEqualToString:@"Undo"] && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
            {
              [v13 setString:&stru_1EFB14550];
              if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
              {
                v23 = @"kb-undoHUD-redo";
              }

              else
              {
                v23 = @"kb-undoHUD-undo";
              }

              v24 = [UIImage _systemImageNamed:v23 fallback:v23];
              v37 = [v24 imageWithRenderingMode:2];

              v25 = [v37 CGImage];
              v26 = [MEMORY[0x1E6979398] layer];
              [v26 setContents:v25];
              [v26 setContentsGravity:v34];
              [v13 bounds];
              v28 = v27;
              [v13 bounds];
              [v26 setFrame:{0.0, 0.0, v28}];
              v29 = +[UIColor labelColor];
              [v13 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];

              self = v36;
              [v13 setMask:v26];
              [v13 setContentsGravity:v34];

              v7 = v35;
              v10 = v38;
            }

            else
            {
              [v13 setString:v17];
            }
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v30 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
      v9 = v30;
    }

    while (v30);
  }

  packageLayer = self->_packageLayer;
  self->_packageLayer = v32;
}

- (void)drawRect:(CGRect)a3
{
  width = a3.size.width;
  [(CALayer *)self->_packageLayer setPosition:a3.origin.x + a3.size.width * 0.5, a3.origin.y + a3.size.height * 0.5];
  [(CALayer *)self->_packageLayer size];
  v6 = v5;
  packageLayer = self->_packageLayer;
  if (packageLayer)
  {
    [(CALayer *)packageLayer contentsTransform];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGAffineTransformScale(&v9, &v8, width / v6, width / v6);
  [(CALayer *)packageLayer setAffineTransform:&v9];
}

@end