@interface PULayerAnimationGroup
- (PULayerAnimationGroup)initWithReferenceLayer:(id)a3;
- (double)currentTime;
- (void)updateAnimations;
@end

@implementation PULayerAnimationGroup

- (void)updateAnimations
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PULayerAnimationGroup;
  [(PUTimedAnimationGroup *)&v22 updateAnimations];
  v3 = [(PUAnimationGroup *)self isPaused];
  [(PUTimedAnimationGroup *)self elapsedTime];
  v5 = v4;
  [(PUTimedAnimationGroup *)self beginTime];
  v7 = v6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(PUAnimationGroup *)self subAnimationGroups];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v3)
          {
            v14 = 0.0;
            v15 = 0.0;
            v16 = v13;
            v17 = v5;
          }

          else
          {
            LODWORD(v14) = 1.0;
            v17 = 0.0;
            v16 = v13;
            v15 = v7;
          }

          [v16 setSpeed:v14 timeOffset:v17 beginTime:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }
}

- (double)currentTime
{
  v2 = [(PULayerAnimationGroup *)self referenceLayer];
  [v2 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  return v4;
}

- (PULayerAnimationGroup)initWithReferenceLayer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PULayerAnimationGroup.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"referenceLayer != nil"}];
  }

  v11.receiver = self;
  v11.super_class = PULayerAnimationGroup;
  v7 = [(PUTimedAnimationGroup *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_referenceLayer, a3);
    [(PULayerAnimationGroup *)v8 currentTime];
    [(PUTimedAnimationGroup *)v8 setBeginTime:?];
  }

  return v8;
}

@end