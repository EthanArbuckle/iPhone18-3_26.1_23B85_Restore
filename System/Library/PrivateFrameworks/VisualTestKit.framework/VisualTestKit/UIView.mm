@interface UIView
- (id)vtk_Snapshot;
- (id)vtk_SnapshotWithScale:(double)scale;
@end

@implementation UIView

- (id)vtk_Snapshot
{
  v3 = VTKMainScreenScale();

  return [(UIView *)self vtk_SnapshotWithScale:v3];
}

- (id)vtk_SnapshotWithScale:(double)scale
{
  [(UIView *)self layoutIfNeeded];
  [(UIView *)self bounds];
  v7 = [VTKBitmapContext contextType:VTKDeviceHasExtendedColorDisplay() width:v5 height:v6 scale:scale];
  CGContextTranslateCTM([v7 CGContext], 0.0, objc_msgSend(v7, "pixelHeight"));
  CGContextScaleCTM([v7 CGContext], scale, -scale);
  layer = [(UIView *)self layer];
  [layer renderInContext:{objc_msgSend(v7, "CGContext")}];

  image = [v7 image];

  return image;
}

@end