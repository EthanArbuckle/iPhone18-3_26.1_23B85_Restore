@interface TUIDrawingView
- (void)setPath:(id)a3;
@end

@implementation TUIDrawingView

- (void)setPath:(id)a3
{
  objc_storeStrong(&self->_path, a3);
  v5 = a3;
  v7 = [(TUIDrawingView *)self shapeLayer];
  v6 = [v5 CGPath];

  [v7 setPath:v6];
}

@end