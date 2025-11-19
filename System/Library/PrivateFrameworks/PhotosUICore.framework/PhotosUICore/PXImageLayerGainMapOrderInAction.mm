@interface PXImageLayerGainMapOrderInAction
- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5;
@end

@implementation PXImageLayerGainMapOrderInAction

- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [&unk_1F1911170 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(&unk_1F1911170);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [MEMORY[0x1E69793C0] animation];
        [v12 setDelegate:self];
        v13 = [v6 superlayer];
        [v12 setSourceLayer:v13];

        [v12 setKeyPath:v11];
        [v12 setDuration:INFINITY];
        v14 = [v11 stringByAppendingString:@"Animation"];
        [v6 addAnimation:v12 forKey:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [&unk_1F1911170 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x1E69793B8] animation];
  [v15 setDelegate:self];
  v16 = [v6 superlayer];
  [v15 setSourceLayer:v16];

  [v15 setUsesNormalizedCoordinates:1];
  [v15 setAppliesScale:0];
  [v15 setAppliesRotation:0];
  [v15 setDuration:INFINITY];
  v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
  v23 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v15 setSourcePoints:v18];

  [v6 addAnimation:v15 forKey:@"positionAnimation"];
}

@end