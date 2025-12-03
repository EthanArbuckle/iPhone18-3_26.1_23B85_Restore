@interface UIPDFPopupAnnotationView
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
@end

@implementation UIPDFPopupAnnotationView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFPopupAnnotationView;
  [(UIView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  if ([(UIPDFPageView *)[(UIPDFAnnotationController *)[[(UIPDFAnnotationView *)self annotation:rect.origin.x] annotationController] pageView] showAnnotations])
  {
    parent = [[(UIPDFAnnotationView *)self annotation] parent];
    image = self->_image;
    if (image || (v6 = [objc_msgSend(parent "annotationController")], self->_image = v6, v7 = v6, (image = self->_image) != 0))
    {
      [(UIImage *)image size];
      v9 = v8;
      v11 = v10;
      [(UIView *)self bounds];
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
      v16 = CGRectGetWidth(v28) - v9;
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v17 = CGRectGetHeight(v29) - v11;
      v18 = self->_image;
      v19 = v17 * 0.5;

      [(UIImage *)v18 drawInRect:v16 * 0.5, v19, v9, v11];
    }

    else
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      color = [parent color];
      CGContextSaveGState(v21);
      CGContextSetFillColorWithColor(v21, color);
      [(UIView *)self bounds];
      CGContextFillRect(v21, v30);
      CGContextSetStrokeColorWithColor(v21, [+[UIColor CGColor] blackColor];
      [(UIView *)self bounds];
      v32 = CGRectInset(v31, 2.0, 2.0);
      v23 = v32.origin.x;
      v24 = v32.origin.y;
      v25 = v32.size.width;
      v26 = v32.size.height;
      CGContextSetLineWidth(v21, 1.0);
      v33.origin.x = v23;
      v33.origin.y = v24;
      v33.size.width = v25;
      v33.size.height = v26;
      CGContextStrokeRect(v21, v33);

      CGContextRestoreGState(v21);
    }
  }
}

@end