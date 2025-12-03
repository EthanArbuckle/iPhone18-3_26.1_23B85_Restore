@interface PXStoryValueAnimation
- ($464C4C5581A74E1606069C62FD8B0489)curveInfo;
- (PXStoryValueAnimation)init;
- (PXStoryValueAnimation)initWithIdentifier:(id)identifier;
- (PXStoryValueAnimation)initWithIdentifier:(id)identifier duration:(id *)duration curveInfo:(id)info;
- (void)timeDidChange;
- (void)updateCurrentValueWithProgress:(double)progress;
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

- (void)updateCurrentValueWithProgress:(double)progress
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:44 description:{@"Method %s is a responsibility of subclass %@", "-[PXStoryValueAnimation updateCurrentValueWithProgress:]", v7}];

  abort();
}

- (void)timeDidChange
{
  v8.receiver = self;
  v8.super_class = PXStoryValueAnimation;
  [(PXStoryAnimation *)&v8 timeDidChange];
  curveInfo = [(PXStoryValueAnimation *)self curveInfo];
  v5 = v4;
  [(PXStoryAnimation *)self time];
  [(PXStoryValueAnimation *)self duration];
  [(PXStoryValueAnimation *)self updateCurrentValueWithProgress:PXStoryAnimationCurveGetProgress(curveInfo, v5, &v7, &v6)];
}

- (PXStoryValueAnimation)initWithIdentifier:(id)identifier duration:(id *)duration curveInfo:(id)info
{
  var0 = info.var1.var0;
  v6 = info.var0;
  v10.receiver = self;
  v10.super_class = PXStoryValueAnimation;
  result = [(PXStoryAnimation *)&v10 initWithIdentifier:identifier];
  if (result)
  {
    var3 = duration->var3;
    *&result->_duration.value = *&duration->var0;
    result->_duration.epoch = var3;
    result->_curveInfo.curve = v6;
    result->_curveInfo.var0.linearFraction = var0;
  }

  return result;
}

- (PXStoryValueAnimation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXStoryValueAnimation initWithIdentifier:]"}];

  abort();
}

- (PXStoryValueAnimation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryValueAnimation.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryValueAnimation init]"}];

  abort();
}

@end