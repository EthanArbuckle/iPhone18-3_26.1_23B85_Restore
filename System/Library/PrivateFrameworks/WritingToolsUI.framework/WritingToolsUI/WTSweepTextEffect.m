@interface WTSweepTextEffect
@end

@implementation WTSweepTextEffect

uint64_t __33___WTSweepTextEffect_invalidate___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  v2 = 0.016;
  if (!*(a1 + 40))
  {
    v2 = 0.0;
  }

  [MEMORY[0x1E6979518] setAnimationDuration:v2];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  [MEMORY[0x1E6979518] setAnimationTimingFunction:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33___WTSweepTextEffect_invalidate___block_invoke_2;
  v7[3] = &unk_1E8480BF8;
  v7[4] = *(a1 + 32);
  [MEMORY[0x1E6979518] setCompletionBlock:v7];
  v4 = [*(a1 + 32) rootLayer];
  [v4 setOpacity:0.0];

  v5 = [*(a1 + 32) fadeOutLayer];
  [v5 setOpacity:0.0];

  return [MEMORY[0x1E6979518] commit];
}

void __33___WTSweepTextEffect_invalidate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) displayLink];
  [v2 invalidate];

  [*(a1 + 32) setDisplayLink:0];
  v3 = [*(a1 + 32) rootLayer];
  [v3 removeFromSuperlayer];

  v4 = [*(a1 + 32) fadeOutLayer];
  [v4 removeFromSuperlayer];

  v5 = [*(a1 + 32) completion];

  if (v5)
  {
    v6 = [*(a1 + 32) completion];
    v6[2]();
  }
}

uint64_t __39___WTSweepTextEffect_updateEffectWith___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fadeOutLayer];
  [v2 removeFromSuperlayer];

  v3 = *(a1 + 32);

  return [v3 setFadeOutLayer:0];
}

void __39___WTSweepTextEffect_updateEffectWith___block_invoke_20(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = [*(a1 + 32) rootMaskLayer];
  v3 = [v2 sublayers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v50 + 1) + 8 * v8++) removeFromSuperlayer];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v6);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v46 + 1) + 8 * v13) layerWithContents];
        v15 = [*(a1 + 32) rootMaskLayer];
        [v15 addSublayer:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v11);
  }

  v16 = [*(a1 + 32) effectView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) rootMaskLayer];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [*(a1 + 32) effectView];
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [*(a1 + 32) rootLayer];
  [v35 setFrame:{v28, v30, v32, v34}];

  v36 = [*(a1 + 32) effectView];
  [v36 platformGetVisibleRect];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [*(a1 + 32) rbLayer];
  [v45 setFrame:{v38, v40, v42, v44}];
}

@end