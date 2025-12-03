@interface VKCDataDetectorHighlightView
+ (id)highlightColor;
- (CAShapeLayer)shapeLayer;
- (VKCDataDetectorHighlightView)initWithFrame:(CGRect)frame;
- (void)configureDashPatternForPath:(id)path;
- (void)didMoveToSuperview;
- (void)setHideDashedLine:(BOOL)line;
- (void)setPath:(id)path;
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

- (VKCDataDetectorHighlightView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = VKCDataDetectorHighlightView;
  v3 = [(VKCDataDetectorHighlightView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    shapeLayer = [(VKCDataDetectorHighlightView *)v3 shapeLayer];
    highlightColor = [objc_opt_class() highlightColor];
    [shapeLayer setStrokeColor:{objc_msgSend(highlightColor, "CGColor")}];
    [shapeLayer setLineWidth:2.0];
    [shapeLayer setFillColor:0];
    layer = [(VKCDataDetectorHighlightView *)v4 layer];
    [layer bounds];
    [shapeLayer setFrame:?];

    [shapeLayer setContentsGravity:*MEMORY[0x1E6979DF0]];
    [shapeLayer setMasksToBounds:0];
  }

  return v4;
}

- (CAShapeLayer)shapeLayer
{
  v3 = objc_opt_class();
  layer = [(VKCDataDetectorHighlightView *)self layer];
  v5 = VKCheckedDynamicCast(v3, layer);

  return v5;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = VKCDataDetectorHighlightView;
  [(VKCDataDetectorHighlightView *)&v4 didMoveToSuperview];
  layer = [(VKCDataDetectorHighlightView *)self layer];
  [layer setMasksToBounds:0];
}

- (void)setPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy copy];
  path = self->_path;
  self->_path = v5;

  [(VKCDataDetectorHighlightView *)self configureDashPatternForPath:self->_path];
  vk_CGPath = [pathCopy vk_CGPath];

  shapeLayer = [(VKCDataDetectorHighlightView *)self shapeLayer];
  [shapeLayer setPath:vk_CGPath];
}

- (void)configureDashPatternForPath:(id)path
{
  v11[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self vk_viewLengthFromWindowLength:path, 1.0];
  v5 = v4;
  shapeLayer = [(VKCDataDetectorHighlightView *)self shapeLayer];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 3.0];
  v11[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [shapeLayer setLineDashPattern:v9];

  LODWORD(v10) = 2.0;
  [shapeLayer setRepeatCount:v10];
  [shapeLayer setLineWidth:v5 + v5];
  [shapeLayer setLineJoin:*MEMORY[0x1E6979E98]];
}

- (void)setHideDashedLine:(BOOL)line
{
  lineCopy = line;
  self->_hideDashedLine = line;
  shapeLayer = [(VKCDataDetectorHighlightView *)self shapeLayer];
  [shapeLayer setHidden:lineCopy];
}

@end