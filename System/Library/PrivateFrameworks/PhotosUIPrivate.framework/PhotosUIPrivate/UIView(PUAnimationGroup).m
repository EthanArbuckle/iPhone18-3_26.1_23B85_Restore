@interface UIView(PUAnimationGroup)
+ (void)_pu_animateViews:()PUAnimationGroup withAnimationBlock:completionHandler:;
+ (void)pu_animateViews:()PUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:;
+ (void)pu_animateViews:()PUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:;
+ (void)pu_animateViews:()PUAnimationGroup withDuration:delay:options:animations:completion:;
+ (void)pu_animateViews:()PUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:;
- (id)_pu_animationDictionary;
@end

@implementation UIView(PUAnimationGroup)

- (id)_pu_animationDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [a1 layer];
  v2 = [v1 animationKeys];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v1 animationForKey:{v9, v12}];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (void)_pu_animateViews:()PUAnimationGroup withAnimationBlock:completionHandler:
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v43 = a5;
  if (![v9 count])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"[views count] > 0"}];
  }

  v44 = v10;
  if (!v10)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"PUAnimationGroup.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"animationBlock != NULL"}];
  }

  v11 = [v9 firstObject];
  v12 = [v11 layer];

  v42 = v12;
  v41 = [[PULayerAnimationGroup alloc] initWithReferenceLayer:v12];
  [PUAnimationGroup pushAnimationGroup:?];
  v51 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v9;
  v49 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v49)
  {
    v47 = *v71;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v71 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v70 + 1) + 8 * i);
        v15 = [v14 layer];
        v16 = [v15 animationKeys];
        if ([v16 count])
        {
          v52 = v14;
          v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v67;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v67 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v66 + 1) + 8 * j);
                v24 = [v15 animationForKey:v23];
                if (v24)
                {
                  [v17 setObject:v24 forKeyedSubscript:v23];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v66 objects:v76 count:16];
            }

            while (v20);
          }

          [v51 setObject:v17 forKey:v52];
        }
      }

      v49 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v49);
  }

  if (v43)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __82__UIView_PUAnimationGroup___pu_animateViews_withAnimationBlock_completionHandler___block_invoke;
    v64[3] = &unk_1E7B80C88;
    v65 = v43;
    [(PUAnimationGroup *)v41 setCompletionHandler:v64];
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __82__UIView_PUAnimationGroup___pu_animateViews_withAnimationBlock_completionHandler___block_invoke_2;
  v62[3] = &unk_1E7B7F020;
  v25 = v41;
  v63 = v25;
  (v44)[2](v44, v62);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obja = obj;
  v50 = [obja countByEnumeratingWithState:&v58 objects:v75 count:16];
  if (v50)
  {
    v48 = *v59;
    do
    {
      v26 = 0;
      do
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obja);
        }

        v53 = v26;
        v27 = *(*(&v58 + 1) + 8 * v26);
        v28 = [v27 layer];
        v29 = [v51 objectForKey:v27];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v30 = [v28 animationKeys];
        v31 = [v30 countByEnumeratingWithState:&v54 objects:v74 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v55;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v54 + 1) + 8 * k);
              v36 = [v29 objectForKeyedSubscript:v35];
              v37 = [v28 animationForKey:v35];
              if (v37 != v36)
              {
                v38 = [[PULayerAnimation alloc] initWithLayer:v28 key:v35];
                [(PUAnimationGroup *)v25 addSubAnimationGroup:v38];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v54 objects:v74 count:16];
          }

          while (v32);
        }

        v26 = v53 + 1;
      }

      while (v53 + 1 != v50);
      v50 = [obja countByEnumeratingWithState:&v58 objects:v75 count:16];
    }

    while (v50);
  }

  [PUAnimationGroup popAnimationGroup:v25];
}

+ (void)pu_animateViews:()PUAnimationGroup usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:
{
  v22 = a11;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __143__UIView_PUAnimationGroup__pu_animateViews_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion___block_invoke;
  v24[3] = &unk_1E7B75218;
  v26 = a2;
  v27 = a3;
  v28 = a10;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = v22;
  v23 = v22;
  [a1 _pu_animateViews:a9 withAnimationBlock:v24 completionHandler:a12];
}

+ (void)pu_animateViews:()PUAnimationGroup usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __130__UIView_PUAnimationGroup__pu_animateViews_usingDefaultDampedSpringWithDelay_initialSpringVelocity_options_animations_completion___block_invoke;
  v16[3] = &unk_1E7B751C8;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [a1 _pu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

+ (void)pu_animateViews:()PUAnimationGroup withDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:
{
  v18 = a9;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __138__UIView_PUAnimationGroup__pu_animateViews_withDuration_delay_usingSpringWithDamping_initialSpringVelocity_options_animations_completion___block_invoke;
  v20[3] = &unk_1E7B751F0;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a8;
  v21 = v18;
  v19 = v18;
  [a1 _pu_animateViews:a7 withAnimationBlock:v20 completionHandler:a10];
}

+ (void)pu_animateViews:()PUAnimationGroup withDuration:delay:options:animations:completion:
{
  v14 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__UIView_PUAnimationGroup__pu_animateViews_withDuration_delay_options_animations_completion___block_invoke;
  v16[3] = &unk_1E7B751C8;
  v18 = a2;
  v19 = a3;
  v20 = a6;
  v17 = v14;
  v15 = v14;
  [a1 _pu_animateViews:a5 withAnimationBlock:v16 completionHandler:a8];
}

@end