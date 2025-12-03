@interface SUGradientView
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setGradient:(id)gradient;
@end

@implementation SUGradientView

- (void)dealloc
{
  cgGradient = self->_cgGradient;
  if (cgGradient)
  {
    CGGradientRelease(cgGradient);
  }

  v4.receiver = self;
  v4.super_class = SUGradientView;
  [(SUGradientView *)&v4 dealloc];
}

- (void)setGradient:(id)gradient
{
  if (self->_gradient == gradient)
  {
    return;
  }

  if (gradient)
  {
    colorStopColors = [gradient colorStopColors];
    if ([colorStopColors count] != 1)
    {
      copyCGGradient = [gradient copyCGGradient];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_9;
    }

    blackColor2 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(colorStopColors, "objectAtIndex:", 0)}];
  }

  else
  {
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  }

  blackColor = blackColor2;
  copyCGGradient = 0;
LABEL_9:
  [(SUGradientView *)self setBackgroundColor:blackColor];
  cgGradient = self->_cgGradient;
  if (cgGradient)
  {
    CGGradientRelease(cgGradient);
  }

  self->_cgGradient = copyCGGradient;

  self->_gradient = [gradient copy];

  [(SUGradientView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  if (self->_cgGradient)
  {
    [(SUGradientView *)self bounds:rect.origin.x];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(SUGradient *)self->_gradient p0];
    v13 = v12;
    v15 = v14;
    [(SUGradient *)self->_gradient p1];
    v17 = v16;
    v19 = v18;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextTranslateCTM(CurrentContext, v5, v7);
    CGContextScaleCTM(CurrentContext, v9, v11);
    v22.x = v13;
    v22.y = v15;
    v23.x = v17;
    v23.y = v19;
    CGContextDrawLinearGradient(CurrentContext, self->_cgGradient, v22, v23, 3u);

    CGContextRestoreGState(CurrentContext);
  }
}

@end