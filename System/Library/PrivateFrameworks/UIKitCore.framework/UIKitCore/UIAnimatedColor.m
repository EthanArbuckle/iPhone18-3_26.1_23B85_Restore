@interface UIAnimatedColor
@end

@implementation UIAnimatedColor

void __37___UIAnimatedColor__patternCallbacks__block_invoke()
{
  LODWORD(xmmword_1ED49A2A0) = 1;
  *(&xmmword_1ED49A2A0 + 1) = _patternCallback;
  qword_1ED49A2B0 = _releaseCallback;
}

void __55___UIAnimatedColor_initWithBounds_invalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentationValueChanged];
}

@end