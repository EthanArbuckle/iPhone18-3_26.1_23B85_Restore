@interface PREditorFixedTitleTransition
- (PREditorFixedTitleTransition)initWithSourceTitleViewController:(id)a3 destinationTitleViewController:(id)a4 anchorView:(id)a5;
- (void)cleanUp;
@end

@implementation PREditorFixedTitleTransition

- (PREditorFixedTitleTransition)initWithSourceTitleViewController:(id)a3 destinationTitleViewController:(id)a4 anchorView:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = PREditorFixedTitleTransition;
  v12 = [(PREditorFixedTitleTransition *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceTitleViewController, a3);
    objc_storeStrong(&v13->_destinationTitleViewController, a4);
    if (v9 != v10)
    {
      v14 = [v10 view];
      [v14 setHidden:1];

      v15 = [v9 view];
      [v15 setHidden:0];
    }

    v16 = [MEMORY[0x1E69793B8] animation];
    v17 = [v11 layer];
    [v16 setSourceLayer:v17];

    [v16 setDuration:INFINITY];
    [v16 setFillMode:*MEMORY[0x1E69797E0]];
    [v16 setRemovedOnCompletion:0];
    [v16 setUsesNormalizedCoordinates:1];
    [v16 setAppliesY:1];
    [v16 setAppliesX:1];
    v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v16 setSourcePoints:v19];

    v20 = [v9 view];
    v21 = [v20 layer];
    v22 = [(PREditorFixedTitleTransition *)v13 animationKey];
    [v21 addAnimation:v16 forKey:v22];
  }

  return v13;
}

- (void)cleanUp
{
  v9 = [(PREditorFixedTitleTransition *)self sourceTitleViewController];
  v3 = [(PREditorFixedTitleTransition *)self destinationTitleViewController];
  v4 = [v9 view];
  v5 = [v4 layer];
  v6 = [(PREditorFixedTitleTransition *)self animationKey];
  [v5 removeAnimationForKey:v6];

  v7 = [v3 view];
  [v7 setHidden:0];

  if (v9 != v3)
  {
    v8 = [v9 view];
    [v8 setHidden:1];
  }
}

@end