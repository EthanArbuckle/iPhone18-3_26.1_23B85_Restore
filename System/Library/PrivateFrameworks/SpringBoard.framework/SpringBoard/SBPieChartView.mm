@interface SBPieChartView
- (SBPieChartView)initWithFrame:(CGRect)frame;
- (void)_drawSlice:(id)slice atValue:(double)value;
- (void)_rotateContext;
- (void)_updateMetrics;
- (void)drawRect:(CGRect)rect;
- (void)setSlices:(id)slices;
@end

@implementation SBPieChartView

- (SBPieChartView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBPieChartView;
  v3 = [(SBPieChartView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_defaultRotation = -1.57079633;
    [(SBPieChartView *)v3 setClearsContextBeforeDrawing:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBPieChartView *)v4 setBackgroundColor:clearColor];

    v6 = v4;
  }

  return v4;
}

- (void)setSlices:(id)slices
{
  objc_storeStrong(&self->_slices, slices);
  slicesCopy = slices;
  v6 = [(NSArray *)self->_slices valueForKeyPath:@"@sum.value"];

  [v6 floatValue];
  self->_valueTotal = v7;

  [(SBPieChartView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v17 = *MEMORY[0x277D85DE8];
  [(SBPieChartView *)self _updateMetrics:rect.origin.x];
  [(SBPieChartView *)self _rotateContext];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_slices;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(SBPieChartView *)self _drawSlice:v10 atValue:v8, v12];
        [v10 value];
        v8 = v8 + v11;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateMetrics
{
  [(SBPieChartView *)self bounds];
  v5 = fmin(v3 * 0.5, v4 * 0.5);
  self->_radius = v5;
  self->_center.x = v5;
  self->_center.y = v5;
}

- (void)_rotateContext
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, self->_radius, self->_radius);
  CGContextRotateCTM(CurrentContext, self->_defaultRotation);
  v4 = -self->_radius;

  CGContextTranslateCTM(CurrentContext, v4, v4);
}

- (void)_drawSlice:(id)slice atValue:(double)value
{
  v6 = MEMORY[0x277D75208];
  sliceCopy = slice;
  bezierPath = [v6 bezierPath];
  v8 = (value / self->_valueTotal + value / self->_valueTotal) * 3.14159265;
  radius = self->_radius;
  v10 = v8;
  v11 = __sincosf_stret(v10);
  [sliceCopy value];
  v13 = ((v12 + value) / self->_valueTotal + (v12 + value) / self->_valueTotal) * 3.14159265;
  [bezierPath moveToPoint:{self->_center.x, self->_center.y}];
  [bezierPath addLineToPoint:{radius + radius * v11.__cosval, radius + radius * v11.__sinval}];
  [bezierPath addArcWithCenter:1 radius:self->_center.x startAngle:self->_center.y endAngle:self->_radius clockwise:{v8, v13}];
  [bezierPath closePath];
  fillColor = [sliceCopy fillColor];

  [fillColor setFill];
  [bezierPath fill];
}

@end