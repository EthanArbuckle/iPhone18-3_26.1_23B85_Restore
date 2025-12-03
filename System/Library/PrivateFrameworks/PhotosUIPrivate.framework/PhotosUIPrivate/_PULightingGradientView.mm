@interface _PULightingGradientView
- (_PULightingGradientView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation _PULightingGradientView

- (void)drawRect:(CGRect)rect
{
  v24[5] = *MEMORY[0x1E69E9840];
  [(_PULightingGradientView *)self bounds:rect.origin.x];
  if (v5 > 0.0)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    CurrentContext = UIGraphicsGetCurrentContext();
    v27.origin.x = v7;
    v27.origin.y = v8;
    v27.size.width = v9;
    v27.size.height = v10;
    CGContextClearRect(CurrentContext, v27);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [clearColor2 set];

    v28.origin.x = v7;
    v28.origin.y = v8;
    v28.size.width = v9;
    v28.size.height = v10;
    CGContextFillRect(CurrentContext, v28);
    v29.origin.x = v7;
    v29.origin.y = v8;
    v29.size.width = v9;
    v29.size.height = v10;
    CGContextClipToRect(CurrentContext, v29);
    cGColor = [clearColor CGColor];
    cGColor2 = [blackColor CGColor];
    v24[0] = cGColor2;
    v24[1] = cGColor2;
    v24[2] = cGColor2;
    v24[3] = cGColor;
    v24[4] = cGColor;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
    ColorSpace = CGColorGetColorSpace([clearColor CGColor]);
    v19 = CGGradientCreateWithColors(ColorSpace, v17, &v23);
    v30.origin.x = v7;
    v30.origin.y = v8;
    v30.size.width = v9;
    v30.size.height = v10;
    MinX = CGRectGetMinX(v30);
    v31.origin.x = v7;
    v31.origin.y = v8;
    v31.size.width = v9;
    v31.size.height = v10;
    MinY = CGRectGetMinY(v31);
    v32.origin.x = v7;
    v32.origin.y = v8;
    v32.size.width = v9;
    v32.size.height = v10;
    v22 = CGRectGetMinX(v32);
    v33.origin.x = v7;
    v33.origin.y = v8;
    v33.size.width = v9;
    v33.size.height = v10;
    v26.y = CGRectGetMaxY(v33);
    v25.x = MinX;
    v25.y = MinY;
    v26.x = v22;
    CGContextDrawLinearGradient(CurrentContext, v19, v25, v26, 0);
    CGGradientRelease(v19);
  }
}

- (_PULightingGradientView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _PULightingGradientView;
  v3 = [(_PULightingGradientView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_PULightingGradientView *)v3 setContentMode:3];
    [(_PULightingGradientView *)v4 setBackgroundColor:0];
    [(_PULightingGradientView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

@end