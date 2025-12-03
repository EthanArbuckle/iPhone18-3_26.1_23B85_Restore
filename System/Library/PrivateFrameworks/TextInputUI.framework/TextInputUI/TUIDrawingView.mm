@interface TUIDrawingView
- (void)setPath:(id)path;
@end

@implementation TUIDrawingView

- (void)setPath:(id)path
{
  objc_storeStrong(&self->_path, path);
  pathCopy = path;
  shapeLayer = [(TUIDrawingView *)self shapeLayer];
  cGPath = [pathCopy CGPath];

  [shapeLayer setPath:cGPath];
}

@end