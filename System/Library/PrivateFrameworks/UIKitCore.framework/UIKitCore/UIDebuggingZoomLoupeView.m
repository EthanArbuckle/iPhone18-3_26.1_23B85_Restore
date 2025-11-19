@interface UIDebuggingZoomLoupeView
- (CGPoint)currentlyInspectedPoint;
- (UIDebuggingZoomDelegate)delegate;
- (UIDebuggingZoomLoupeView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation UIDebuggingZoomLoupeView

- (UIDebuggingZoomLoupeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIDebuggingZoomLoupeView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(UIView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(UIView *)self window:a3.origin.x];
  v5 = [v4 _screen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;

  v10 = [(UIView *)self window];
  v11 = [v10 layer];

  if (v11)
  {
    v12 = +[UIDebuggingInformationOverlay overlay];
    v51 = [v12 inspectedWindow];

    v13 = [v51 layer];
    [(UIView *)self frame];
    [v13 convertRect:0 toLayer:?];
    v15 = v14;
    v17 = v16;

    v18 = v15 / 1.2;
    v19 = v17 / 1.2;
    [(UIDebuggingZoomLoupeView *)self currentlyInspectedPoint];
    v21 = v20 - v18 * 0.5;
    [(UIDebuggingZoomLoupeView *)self currentlyInspectedPoint];
    v23 = v22 - v17 / 1.2 * 0.5;
    v24 = v18 + v21;
    v25 = v18 * 0.2 * 0.5;
    v26 = v7 + v25;
    v27 = -v25;
    v28 = 0.0;
    if (v21 >= -v25)
    {
      v28 = v21;
      v27 = v21;
    }

    v29 = v7 - v18 + v25;
    if (v24 > v26)
    {
      v30 = v7 - v18;
    }

    else
    {
      v30 = v28;
    }

    if (v24 > v26)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    v32 = v19 * 0.2 * 0.5;
    if (v19 + v23 <= v9 + v32)
    {
      v34 = -v32;
      v33 = v23;
      if (v23 < v34)
      {
        v23 = 0.0;
        v33 = v34;
      }
    }

    else
    {
      v23 = v9 - v19;
      v33 = v9 - v19 + v32;
    }

    [(UIDebuggingZoomLoupeView *)self currentlyInspectedPoint];
    v50 = (v35 - v30) * 1.2;
    [(UIDebuggingZoomLoupeView *)self currentlyInspectedPoint];
    v37 = (v36 - v23) * 1.2;
    v38 = [(UIDebuggingZoomLoupeView *)self delegate];
    v39 = [v38 newCaptureSnapshotAtRect:v51 window:{v31, v33, v18, v19}];

    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v41);
    v42 = *MEMORY[0x1E695EFF8];
    v43 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIView *)self frame];
    width = v53.size.width;
    height = v53.size.height;
    v53.origin.x = v42;
    v53.origin.y = v43;
    CGContextClipToRect(v41, v53);
    CGContextScaleCTM(v41, 1.2, 1.2);
    CGContextTranslateCTM(v41, fabs(v18) * -0.1, fabs(v19) * -0.1);
    CGContextTranslateCTM(v41, 0.0, height);
    CGContextScaleCTM(v41, 1.0, -1.0);
    v54.origin.x = v42;
    v54.origin.y = v43;
    v54.size.width = width;
    v54.size.height = height;
    CGContextDrawImage(v41, v54, v39);
    CGImageRelease(v39);
    CGContextRestoreGState(v41);
    CGContextSaveGState(v41);
    v46 = +[UIColor redColor];
    [v46 set];

    v47 = [objc_opt_self() mainScreen];
    [v47 scale];
    v49 = 1.0 / v48;

    v55.origin.x = v50 + -2.0;
    v55.origin.y = v37 + -2.0;
    v55.size.width = 4.0;
    v55.size.height = 4.0;
    CGContextStrokeRectWithWidth(v41, v55, v49);
    CGContextRestoreGState(v41);
  }
}

- (CGPoint)currentlyInspectedPoint
{
  x = self->_currentlyInspectedPoint.x;
  y = self->_currentlyInspectedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIDebuggingZoomDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end