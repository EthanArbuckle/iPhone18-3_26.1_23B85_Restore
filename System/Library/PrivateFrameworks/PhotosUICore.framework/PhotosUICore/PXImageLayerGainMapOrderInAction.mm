@interface PXImageLayerGainMapOrderInAction
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
@end

@implementation PXImageLayerGainMapOrderInAction

- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
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
        animation = [MEMORY[0x1E69793C0] animation];
        [animation setDelegate:self];
        superlayer = [objectCopy superlayer];
        [animation setSourceLayer:superlayer];

        [animation setKeyPath:v11];
        [animation setDuration:INFINITY];
        v14 = [v11 stringByAppendingString:@"Animation"];
        [objectCopy addAnimation:animation forKey:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [&unk_1F1911170 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  animation2 = [MEMORY[0x1E69793B8] animation];
  [animation2 setDelegate:self];
  superlayer2 = [objectCopy superlayer];
  [animation2 setSourceLayer:superlayer2];

  [animation2 setUsesNormalizedCoordinates:1];
  [animation2 setAppliesScale:0];
  [animation2 setAppliesRotation:0];
  [animation2 setDuration:INFINITY];
  v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
  v23 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [animation2 setSourcePoints:v18];

  [objectCopy addAnimation:animation2 forKey:@"positionAnimation"];
}

@end