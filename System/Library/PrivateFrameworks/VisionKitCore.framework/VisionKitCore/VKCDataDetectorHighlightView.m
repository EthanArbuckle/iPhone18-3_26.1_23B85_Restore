@interface VKCDataDetectorHighlightView
+ (id)highlightColor;
- (CAShapeLayer)shapeLayer;
- (VKCDataDetectorHighlightView)initWithFrame:(CGRect)a3;
- (void)configureDashPatternForPath:(id)a3;
- (void)didMoveToSuperview;
- (void)setHideDashedLine:(BOOL)a3;
- (void)setPath:(id)a3;
@end

@implementation VKCDataDetectorHighlightView

+ (id)highlightColor
{
  if (highlightColor_onceToken != -1)
  {
    +[VKCDataDetectorHighlightView highlightColor];
  }

  v3 = highlightColor_sHighlightColor;

  return v3;
}

void __46__VKCDataDetectorHighlightView_highlightColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
  v1 = highlightColor_sHighlightColor;
  highlightColor_sHighlightColor = v0;
}

- (VKCDataDetectorHighlightView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = VKCDataDetectorHighlightView;
  v3 = [(VKCDataDetectorHighlightView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(VKCDataDetectorHighlightView *)v3 shapeLayer];
    v6 = [objc_opt_class() highlightColor];
    [v5 setStrokeColor:{objc_msgSend(v6, "CGColor")}];
    [v5 setLineWidth:2.0];
    [v5 setFillColor:0];
    v7 = [(VKCDataDetectorHighlightView *)v4 layer];
    [v7 bounds];
    [v5 setFrame:?];

    [v5 setContentsGravity:*MEMORY[0x1E6979DF0]];
    [v5 setMasksToBounds:0];
  }

  return v4;
}

- (CAShapeLayer)shapeLayer
{
  v3 = objc_opt_class();
  v4 = [(VKCDataDetectorHighlightView *)self layer];
  v5 = VKCheckedDynamicCast(v3, v4);

  return v5;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = VKCDataDetectorHighlightView;
  [(VKCDataDetectorHighlightView *)&v4 didMoveToSuperview];
  v3 = [(VKCDataDetectorHighlightView *)self layer];
  [v3 setMasksToBounds:0];
}

- (void)setPath:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  path = self->_path;
  self->_path = v5;

  [(VKCDataDetectorHighlightView *)self configureDashPatternForPath:self->_path];
  v7 = [v4 vk_CGPath];

  v8 = [(VKCDataDetectorHighlightView *)self shapeLayer];
  [v8 setPath:v7];
}

- (void)configureDashPatternForPath:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self vk_viewLengthFromWindowLength:a3, 1.0];
  v5 = v4;
  v6 = [(VKCDataDetectorHighlightView *)self shapeLayer];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 3.0];
  v11[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v6 setLineDashPattern:v9];

  LODWORD(v10) = 2.0;
  [v6 setRepeatCount:v10];
  [v6 setLineWidth:v5 + v5];
  [v6 setLineJoin:*MEMORY[0x1E6979E98]];
}

- (void)setHideDashedLine:(BOOL)a3
{
  v3 = a3;
  self->_hideDashedLine = a3;
  v4 = [(VKCDataDetectorHighlightView *)self shapeLayer];
  [v4 setHidden:v3];
}

@end