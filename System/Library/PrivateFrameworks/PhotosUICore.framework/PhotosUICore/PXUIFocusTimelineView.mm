@interface PXUIFocusTimelineView
- (PXUIFocusTimelineView)init;
- (id)autoFocusEventMarkerImage;
- (id)userInitiatedFocusEventMarkerImage;
- (void)_PXUIFocusTimelineView_commonInit;
- (void)_handleTap:(id)tap;
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
  traitCollection = [(PXUIFocusTimelineView *)self traitCollection];
  traitCollection2 = [(PXUIFocusTimelineView *)self traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  autoFocusMarkerImage = [(PXUIFocusTimelineView *)self autoFocusMarkerImage];
  if (!autoFocusMarkerImage || (v7 = autoFocusMarkerImage, v8 = [(PXUIFocusTimelineView *)self autoFocusImageInterfaceStyle], v7, userInterfaceStyle != v8))
  {
    v18.width = 14.0;
    v18.height = 14.0;
    UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v11 = [labelColor resolvedColorWithTraitCollection:traitCollection];
    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);

    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    v13 = [systemGray5Color resolvedColorWithTraitCollection:traitCollection];
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
    [(PXUIFocusTimelineView *)self setAutoFocusImageInterfaceStyle:userInterfaceStyle];
  }

  autoFocusMarkerImage2 = [(PXUIFocusTimelineView *)self autoFocusMarkerImage];

  return autoFocusMarkerImage2;
}

- (void)_handleTap:(id)tap
{
  [tap locationInView:self];

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