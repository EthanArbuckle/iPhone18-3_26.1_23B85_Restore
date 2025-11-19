@interface PXStoryClipSeparatorEffectFactory
+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForPanTowardsEdge:(SEL)a3 distance:(unsigned int)a4;
+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForRotationWithAngle:(SEL)a3;
+ (void)getParameters:(id *)a3 forOppositePansWithDistance:(double)a4 threeUpComposition:(id)a5;
+ (void)getParameters:(id *)a3 forOppositeRotationsWithAngle:(double)a4 threeUpComposition:(id)a5;
+ (void)getParameters:(id *)a3 forParallelPansWithDistance:(double)a4 threeUpComposition:(id)a5;
+ (void)getParameters:(id *)a3 forParallelRotationsWithAngle:(double)a4 threeUpComposition:(id)a5;
@end

@implementation PXStoryClipSeparatorEffectFactory

+ (void)getParameters:(id *)a3 forOppositeRotationsWithAngle:(double)a4 threeUpComposition:(id)a5
{
  v9 = a5;
  if ([v9 numberOfClips] != 3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v10 = *[v9 dividerAxes];
  v11 = [v9 dividerAxes];

  if (v10 != *(v11 + 8))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [a1 parametersForRotationWithAngle:a4];
  *&a3->var0 = v14;
  a3->var2 = v15;
  [a1 parametersForRotationWithAngle:-a4];
  *&a3[1].var0 = v14;
  a3[1].var2 = v15;
}

+ (void)getParameters:(id *)a3 forParallelRotationsWithAngle:(double)a4 threeUpComposition:(id)a5
{
  v9 = a5;
  if ([v9 numberOfClips] != 3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v10 = *[v9 dividerAxes];
  v11 = [v9 dividerAxes];

  if (v10 != *(v11 + 8))
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [a1 parametersForRotationWithAngle:a4];
  *&a3[1].var0 = v14;
  a3[1].var2 = v15;
  *&a3->var0 = *&a3[1].var0;
  a3->var2 = v15;
}

+ (void)getParameters:(id *)a3 forOppositePansWithDistance:(double)a4 threeUpComposition:(id)a5
{
  v7 = a5;
  if ([v7 numberOfClips] != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v8 = *[v7 dividerAxes];
  if (v8 != *([v7 dividerAxes] + 8))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [v7 mainDividerAxis];
  PXAxisTransposed();
}

+ (void)getParameters:(id *)a3 forParallelPansWithDistance:(double)a4 threeUpComposition:(id)a5
{
  v7 = a5;
  if ([v7 numberOfClips] != 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"composition.numberOfClips == 3"}];
  }

  v8 = *[v7 dividerAxes];
  if (v8 != *([v7 dividerAxes] + 8))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXStoryClipSeparatorEffect.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"composition.dividerAxes[0] == composition.dividerAxes[1]"}];
  }

  [v7 mainDividerAxis];
  PXAxisTransposed();
}

+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForRotationWithAngle:(SEL)a3
{
  retstr->var0 = 42;
  retstr->var1 = 0.0;
  retstr->var2 = a4;
  return result;
}

+ ($AEFAD17AB1CC80BF212AA0D0E83A8824)parametersForPanTowardsEdge:(SEL)a3 distance:(unsigned int)a4
{
  if (a5 < 0.0)
  {
    PXRectEdgeOpposite();
  }

  retstr->var0 = a4;
  retstr->var1 = a5;
  retstr->var2 = 0.0;
  return result;
}

@end