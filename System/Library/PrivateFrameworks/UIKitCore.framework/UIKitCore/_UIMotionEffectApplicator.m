@interface _UIMotionEffectApplicator
+ (void)applyMotionEffect:(id)a3 toViews:(id)a4 usingPose:(id)a5 transformedForTargetInterfaceOrientation:(int64_t)a6;
+ (void)unapplyMotionEffect:(id)a3 toViews:(id)a4;
@end

@implementation _UIMotionEffectApplicator

+ (void)applyMotionEffect:(id)a3 toViews:(id)a4 usingPose:(id)a5 transformedForTargetInterfaceOrientation:(int64_t)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v35 = 0.0;
  v34 = 0.0;
  if (a6 != 1)
  {
    [v10 viewerOffset];
    v34 = v12;
    v35 = v13;
    if (a6 == 3)
    {
      v14 = 1.57079633;
    }

    else if (a6 == 4)
    {
      v14 = -1.57079633;
    }

    else
    {
      v14 = 3.14159265;
      if (a6 != 2)
      {
        v14 = 0.0;
      }
    }

    CGAffineTransformMakeRotation(&v44, -v14);
    [v11 setViewerOffset:{vaddq_f64(*&v44.tx, vaddq_f64(vmulq_n_f64(*&v44.a, v34), vmulq_n_f64(*&v44.c, v35)))}];
  }

  v33 = v11;
  v15 = v36;
  v38 = [v36 _keyPathsAndRelativeValuesForPose:{v11, a6}];
  v16 = [_UIViewKeyValueAnimationFactory animationForKeyPathsAndRelativeValues:?];
  v17 = [v36 _animationIdentifier];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v9;
  v18 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v39 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        if ((v20 & 1) == 0)
        {
          if (_UIInternalPreferencesRevisionOnce != -1)
          {
            dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
          }

          v24 = _UIInternalPreferencesRevisionVar;
          if (_UIInternalPreferencesRevisionVar >= 1)
          {
            for (j = _UIInternalPreference_UIParallaxIsPixelAligned; v24 != j; j = _UIInternalPreference_UIParallaxIsPixelAligned)
            {
              if (v24 < j)
              {
                if (byte_1EA95E594)
                {
                  break;
                }

                v20 = 0;
                if (v21)
                {
                  goto LABEL_23;
                }

                goto LABEL_31;
              }

              _UIInternalPreferenceSync(v24, &_UIInternalPreference_UIParallaxIsPixelAligned, @"UIParallaxIsPixelAligned", _UIInternalPreferenceUpdateBool);
            }
          }

          [_UICAAnimationPositionQuantizer quantizePositionsInAnimation:v16 givenView:v23];
          v25 = [v23 layer];
          v26 = [v25 animationForKey:v17];

          if (v26 && (_fromValuesAreEqual(v16, v26) & 1) != 0)
          {
            v20 = 1;
            v21 = 1;
LABEL_34:

            continue;
          }
        }

        v20 = 1;
        if (v21)
        {
LABEL_23:
          v27 = [v23 layer];
          v28 = [v27 animationForKey:v17];

          if (v28)
          {
            v21 = 1;
            continue;
          }
        }

LABEL_31:
        if (([v23 _applyKeyPathsAndRelativeValues:v38 forMotionEffect:v15] & 1) == 0)
        {
          _applyTransitionAnimationToView(v23, v17, v16);
          if (v16)
          {
            v30 = v16;
            v31 = v17;
            v26 = [v23 layer];
            [v26 removeAnimationForKey:v31];
            [v26 addAnimation:v30 forKey:v31];

            v15 = v36;
            goto LABEL_34;
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v19);
  }

  if (v32 != 1)
  {
    [v33 setViewerOffset:{v34, v35}];
  }
}

+ (void)unapplyMotionEffect:(id)a3 toViews:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v5 _animationIdentifier];
        if (([v11 _unapplyMotionEffect:v5] & 1) == 0)
        {
          _applyTransitionAnimationToView(v11, v12, 0);
          v13 = [v11 layer];
          [v13 removeAnimationForKey:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end