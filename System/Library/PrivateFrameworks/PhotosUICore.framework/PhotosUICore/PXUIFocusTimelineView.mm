@interface PXUIFocusTimelineView
- (PXUIFocusTimelineView)init;
- (id)autoFocusEventMarkerImage;
- (id)userInitiatedFocusEventMarkerImage;
- (void)_PXUIFocusTimelineView_commonInit;
- (void)_handleTap:(id)a3;
@end

@implementation PXUIFocusTimelineView

- (id)userInitiatedFocusEventMarkerImage
{
  v2 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"cinematic_focus_point_manual"];
  v3 = [v2 imageWithRenderingMode:1];

  return v3;
}

- (id)autoFocusEventMarkerImage
{
  v3 = [(PXUIFocusTimelineView *)self traitCollection];
  v4 = [(PXUIFocusTimelineView *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PXUIFocusTimelineView *)self autoFocusMarkerImage];
  if (!v6 || (v7 = v6, v8 = [(PXUIFocusTimelineView *)self autoFocusImageInterfaceStyle], v7, v5 != v8))
  {
    v18.width = 14.0;
    v18.height = 14.0;
    UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = [v10 resolvedColorWithTraitCollection:v3];
    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);

    v12 = [MEMORY[0x1E69DC888] systemGray5Color];
    v13 = [v12 resolvedColorWithTraitCollection:v3];
    CGContextSetStrokeColorWithColor(CurrentContext, [v13 CGColor]);

    CGContextSetLineWidth(CurrentContext, 1.0);
    v19.origin.x = 4.0;
    v19.origin.y = 4.0;
    v19.size.width = 6.0;
    v19.size.height = 6.0;
    CGContextAddEllipseInRect(CurrentContext, v19);
    CGContextDrawPath(CurrentContext, kCGPathFillStroke);
    CGContextRestoreGState(CurrentContext);
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    [(PXUIFocusTimelineView *)self setAutoFocusMarkerImage:v14];

    UIGraphicsEndImageContext();
    [(PXUIFocusTimelineView *)self setAutoFocusImageInterfaceStyle:v5];
  }

  v15 = [(PXUIFocusTimelineView *)self autoFocusMarkerImage];

  return v15;
}

- (void)_handleTap:(id)a3
{
  [a3 locationInView:self];

  [(PXFocusTimelineView *)self handleEventSelectedAtLocation:?];
}

- (void)_PXUIFocusTimelineView_commonInit
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [v3 setDelegate:self];
  [(PXUIFocusTimelineView *)self addGestureRecognizer:v3];
  [(PXUIFocusTimelineView *)self setTapGestureRecognizer:v3];
}

- (PXUIFocusTimelineView)init
{
  v5.receiver = self;
  v5.super_class = PXUIFocusTimelineView;
  v2 = [(PXUIFocusTimelineView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXUIFocusTimelineView *)v2 _PXUIFocusTimelineView_commonInit];
  }

  return v3;
}

@end