@interface PXStoryClipSeparatorEffectFactory
+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForPanTowardsEdge:(SEL)edge distance:(unsigned int)distance;
+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForRotationWithAngle:(SEL)angle;
+ (void)getParameters:(id *)parameters forOppositePansWithDistance:(double)distance threeUpComposition:(id)composition;
+ (void)getParameters:(id *)parameters forOppositeRotationsWithAngle:(double)angle threeUpComposition:(id)composition;
+ (void)getParameters:(id *)parameters forParallelPansWithDistance:(double)distance threeUpComposition:(id)composition;
+ (void)getParameters:(id *)parameters forParallelRotationsWithAngle:(double)angle threeUpComposition:(id)composition;
@end

@implementation PXStoryClipSeparatorEffectFactory

+ (void)getParameters:(id *)parameters forOppositeRotationsWithAngle:(double)angle threeUpComposition:(id)composition
{
  compositionCopy = composition;
  if ([compositionCopy numberOfClips] != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v10 = *[compositionCopy dividerAxes];
  dividerAxes = [compositionCopy dividerAxes];

  if (v10 != *(dividerAxes + 8))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [self parametersForRotationWithAngle:angle];
  *&parameters->var0 = v14;
  parameters->var2 = v15;
  [self parametersForRotationWithAngle:-angle];
  *&parameters[1].var0 = v14;
  parameters[1].var2 = v15;
}

+ (void)getParameters:(id *)parameters forParallelRotationsWithAngle:(double)angle threeUpComposition:(id)composition
{
  compositionCopy = composition;
  if ([compositionCopy numberOfClips] != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v10 = *[compositionCopy dividerAxes];
  dividerAxes = [compositionCopy dividerAxes];

  if (v10 != *(dividerAxes + 8))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [self parametersForRotationWithAngle:angle];
  *&parameters[1].var0 = v14;
  parameters[1].var2 = v15;
  *&parameters->var0 = *&parameters[1].var0;
  parameters->var2 = v15;
}

+ (void)getParameters:(id *)parameters forOppositePansWithDistance:(double)distance threeUpComposition:(id)composition
{
  compositionCopy = composition;
  if ([compositionCopy numberOfClips] != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v8 = *[compositionCopy dividerAxes];
  if (v8 != *([compositionCopy dividerAxes] + 8))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [compositionCopy mainDividerAxis];
  PXAxisTransposed();
}

+ (void)getParameters:(id *)parameters forParallelPansWithDistance:(double)distance threeUpComposition:(id)composition
{
  compositionCopy = composition;
  if ([compositionCopy numberOfClips] != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v8 = *[compositionCopy dividerAxes];
  if (v8 != *([compositionCopy dividerAxes] + 8))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryClipSeparatorEffect.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [compositionCopy mainDividerAxis];
  PXAxisTransposed();
}

+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForRotationWithAngle:(SEL)angle
{
  retstr->var0 = 42;
  retstr->var1 = 0.0;
  retstr->var2 = a4;
  return result;
}

+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForPanTowardsEdge:(SEL)edge distance:(unsigned int)distance
{
  if (a5 < 0.0)
  {
    PXRectEdgeOpposite();
  }

  retstr->var0 = distance;
  retstr->var1 = a5;
  retstr->var2 = 0.0;
  return result;
}

@end