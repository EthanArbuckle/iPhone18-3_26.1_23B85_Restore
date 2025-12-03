@interface UIGestureRecognizerTransformAnalyzerInfo
- (CGPoint)absoluteTranslation;
- (CGPoint)translation;
- (id)description;
- (void)_reset;
@end

@implementation UIGestureRecognizerTransformAnalyzerInfo

- (void)_reset
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [(UIGestureRecognizerTransformAnalyzerInfo *)self _setTranslation:*MEMORY[0x277CBF348], v4];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self _setTranslationMagnitude:0.0];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self _setAbsoluteTranslation:v3, v4];
  [(UIGestureRecognizerTransformAnalyzerInfo *)self _setScale:0.0];

  [(UIGestureRecognizerTransformAnalyzerInfo *)self _setRotation:0.0];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendPoint:@"translation" withName:{self->_translation.x, self->_translation.y}];
  v5 = [v3 appendFloat:@"translationMagnitude" withName:self->_translationMagnitude];
  v6 = [v3 appendPoint:@"absoluteTranslation" withName:{self->_absoluteTranslation.x, self->_absoluteTranslation.y}];
  v7 = [v3 appendFloat:@"scale" withName:self->_scale];
  v8 = [v3 appendFloat:@"rotation" withName:self->_rotation];
  build = [v3 build];

  return build;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)absoluteTranslation
{
  x = self->_absoluteTranslation.x;
  y = self->_absoluteTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end