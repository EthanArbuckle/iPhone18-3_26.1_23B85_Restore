@interface UIView
- (id)vtk_Snapshot;
- (id)vtk_SnapshotWithScale:(double)a3;
@end

@implementation UIView

- (id)vtk_Snapshot
{
  v3 = VTKMainScreenScale();

  return [(UIView *)self vtk_SnapshotWithScale:v3];
}

- (id)vtk_SnapshotWithScale:(double)a3
{
  [(UIView *)self layoutIfNeeded];
  [(UIView *)self bounds];
  v7 = [VTKBitmapContext contextType:VTKDeviceHasExtendedColorDisplay() width:v5 height:v6 scale:a3];
  CGContextTranslateCTM([v7 CGContext], 0.0, objc_msgSend(v7, "pixelHeight"));
  CGContextScaleCTM([v7 CGContext], a3, -a3);
  v8 = [(UIView *)self layer];
  [v8 renderInContext:{objc_msgSend(v7, "CGContext")}];

  v9 = [v7 image];

  return v9;
}

@end