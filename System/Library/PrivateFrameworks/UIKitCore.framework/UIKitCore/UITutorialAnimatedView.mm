@interface UITutorialAnimatedView
- (UITutorialAnimatedView)initWithKeyboardAppearance:(int64_t)appearance;
- (void)_setPackage:(id)package;
- (void)drawRect:(CGRect)rect;
- (void)setPackage:(id)package;
@end

@implementation UITutorialAnimatedView

- (UITutorialAnimatedView)initWithKeyboardAppearance:(int64_t)appearance
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

    v5->_appearance = appearance;
  }

  return v5;
}

- (void)setPackage:(id)package
{
  packageCopy = package;
  if (self->_package != packageCopy)
  {
    v6 = packageCopy;
    objc_storeStrong(&self->_package, package);
    [(UITutorialAnimatedView *)self _setPackage:v6];
    packageCopy = v6;
  }
}

- (void)_setPackage:(id)package
{
  v47 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  [(CALayer *)self->_packageLayer removeFromSuperlayer];
  rootLayer = [packageCopy rootLayer];
  v33 = packageCopy;
  -[CALayer setGeometryFlipped:](rootLayer, "setGeometryFlipped:", [packageCopy isGeometryFlipped]);
  [(CALayer *)rootLayer setContentsGravity:*MEMORY[0x1E6979DE8]];
  [(CALayer *)rootLayer setMasksToBounds:1];
  layer = [(UIView *)self layer];
  [layer addSublayer:rootLayer];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v32 = rootLayer;
  sublayers = [(CALayer *)rootLayer sublayers];
  v8 = [sublayers countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v11 = *off_1E70ECD30;
    v39 = *off_1E70EC918;
    v34 = *MEMORY[0x1E6979DD0];
    v38 = *v41;
    v35 = sublayers;
    selfCopy = self;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(sublayers);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [v13 string];
          v15 = string;
          if (string)
          {
            v16 = _UILocalizedStringInSystemLanguage(string, string);
            localizedUppercaseString = [v16 localizedUppercaseString];

            v18 = [off_1E70ECC18 systemFontOfSize:34.0 weight:v11];
            v44 = v39;
            v45 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            [localizedUppercaseString sizeWithAttributes:v19];
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

              cGImage = [v37 CGImage];
              layer2 = [MEMORY[0x1E6979398] layer];
              [layer2 setContents:cGImage];
              [layer2 setContentsGravity:v34];
              [v13 bounds];
              v28 = v27;
              [v13 bounds];
              [layer2 setFrame:{0.0, 0.0, v28}];
              v29 = +[UIColor labelColor];
              [v13 setBackgroundColor:{objc_msgSend(v29, "CGColor")}];

              self = selfCopy;
              [v13 setMask:layer2];
              [v13 setContentsGravity:v34];

              sublayers = v35;
              v10 = v38;
            }

            else
            {
              [v13 setString:localizedUppercaseString];
            }
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v30 = [sublayers countByEnumeratingWithState:&v40 objects:v46 count:16];
      v9 = v30;
    }

    while (v30);
  }

  packageLayer = self->_packageLayer;
  self->_packageLayer = v32;
}

- (void)drawRect:(CGRect)rect
{
  width = rect.size.width;
  [(CALayer *)self->_packageLayer setPosition:rect.origin.x + rect.size.width * 0.5, rect.origin.y + rect.size.height * 0.5];
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