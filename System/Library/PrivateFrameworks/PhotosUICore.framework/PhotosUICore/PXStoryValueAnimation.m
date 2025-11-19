@interface PXStoryValueAnimation
- ($464C4C5581A74E1606069C62FD8B0489)curveInfo;
- (PXStoryValueAnimation)init;
- (PXStoryValueAnimation)initWithIdentifier:(id)a3;
- (PXStoryValueAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5;
- (void)timeDidChange;
- (void)updateCurrentValueWithProgress:(double)a3;
@end

@implementation PXStoryValueAnimation

- ($464C4C5581A74E1606069C62FD8B0489)curveInfo
{
  p_curveInfo = &self->_curveInfo;
  curve = self->_curveInfo.curve;
  v4.var0 = p_curveInfo->var0.linearFraction;
  result.var1 = v4;
  result.var0 = curve;
  return result;
}

- (void)updateCurrentValueWithProgress:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:44 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryValueAnimation updateCurrentValueWithProgress:]", v7}];

  abort();
}

- (void)timeDidChange
{
  v8.receiver = self;
  v8.super_class = PXStoryValueAnimation;
  [(PXStoryAnimation *)&v8 timeDidChange];
  v3 = [(PXStoryValueAnimation *)self curveInfo];
  v5 = v4;
  [(PXStoryAnimation *)self time];
  [(PXStoryValueAnimation *)self duration];
  [(PXStoryValueAnimation *)self updateCurrentValueWithProgress:PXStoryAnimationCurveGetProgress(v3, v5, &v7, &v6)];
}

- (PXStoryValueAnimation)initWithIdentifier:(id)a3 duration:(id *)a4 curveInfo:(id)a5
{
  var0 = a5.var1.var0;
  v6 = a5.var0;
  v10.receiver = self;
  v10.super_class = PXStoryValueAnimation;
  result = [(PXStoryAnimation *)&v10 initWithIdentifier:a3];
  if (result)
  {
    var3 = a4->var3;
    *&result->_duration.value = *&a4->var0;
    result->_duration.epoch = var3;
    result->_curveInfo.curve = v6;
    result->_curveInfo.var0.linearFraction = var0;
  }

  return result;
}

- (PXStoryValueAnimation)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXStoryValueAnimation initWithIdentifier:]"}];

  abort();
}

- (PXStoryValueAnimation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryValueAnimation init]"}];

  abort();
}

@end