@interface _UIPanelAnimationState
+ (double)defaultDuration;
+ (id)timingCurveProvider;
+ (id)timingCurveProviderWithVelocity:(double)a3;
- (UISlidingBarStateRequest)stateRequest;
- (id)description;
@end

@implementation _UIPanelAnimationState

- (UISlidingBarStateRequest)stateRequest
{
  v4 = [(_UIPanelAnimationState *)self fromRequest];
  v5 = [(_UIPanelAnimationState *)self toRequest];
  [(_UIPanelAnimationState *)self progress];
  v7 = v6;
  v8 = objc_alloc_init(UISlidingBarStateRequest);
  [v5 leadingWidth];
  v10 = v9;
  [v4 leadingWidth];
  v12 = v11;
  [v5 trailingWidth];
  v14 = v13;
  [v4 trailingWidth];
  v16 = v15;
  [v5 supplementaryWidth];
  v18 = v17;
  [v4 supplementaryWidth];
  v20 = v19;
  v32 = v10;
  v33 = v14;
  v21 = v10 - v12;
  v22 = v14 - v16;
  v23 = v18 - v19;
  [(UISlidingBarStateRequest *)v8 setLeadingWidth:v12 + v7 * v21];
  [(UISlidingBarStateRequest *)v8 setTrailingWidth:v16 + v7 * v22];
  [(UISlidingBarStateRequest *)v8 setSupplementaryWidth:v20 + v7 * v23];
  if ([(_UIPanelAnimationState *)self shouldAssignOffscreenWidthsToStateRequest])
  {
    if (v7 != 0.0 && v7 != 1.0)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"UIPanelController.m" lineNumber:284 description:@"Unsupported progress value for animated stateRequest"];
    }

    v24 = v20 > 0.0 && v18 > 0.0;
    v25 = v23 != 0.0 && v24;
    if (v21 != 0.0 && (v32 == 0.0 || v12 == 0.0))
    {
      v26 = v32;
      if (v7 > 0.0)
      {
        v26 = v12;
      }

      [(UISlidingBarStateRequest *)v8 setLeadingOffscreenWidth:v26];
    }

    if (v22 != 0.0 && (v33 == 0.0 || v16 == 0.0))
    {
      v27 = v33;
      if (v7 > 0.0)
      {
        v27 = v16;
      }

      [(UISlidingBarStateRequest *)v8 setTrailingOffscreenWidth:v27];
    }

    if (v23 != 0.0 && !v25)
    {
      if (v7 <= 0.0)
      {
        v28 = v18;
      }

      else
      {
        v28 = v20;
      }

      [(UISlidingBarStateRequest *)v8 setSupplementaryOffscreenWidth:v28];
    }

    if (v7 <= 0.0)
    {
      v29 = v4;
    }

    else
    {
      v29 = v5;
    }

    [v29 rubberBandInset];
    [(UISlidingBarStateRequest *)v8 setRubberBandInset:?];
  }

  [v5 mainWidth];
  [(UISlidingBarStateRequest *)v8 setMainWidth:?];
  -[UISlidingBarStateRequest setUserInitiated:](v8, "setUserInitiated:", [v5 userInitiated]);

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UIPanelAnimationState;
  v3 = [(_UIPanelAnimationState *)&v6 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    [v4 appendFormat:@" from=%p to=%p", self->_fromRequest, self->_toRequest];
  }

  return v4;
}

+ (id)timingCurveProvider
{
  v2 = objc_alloc_init(UISpringTimingParameters);

  return v2;
}

+ (id)timingCurveProviderWithVelocity:(double)a3
{
  v3 = [[UISpringTimingParameters alloc] initWithVelocity:a3, a3];

  return v3;
}

+ (double)defaultDuration
{
  v2 = [a1 timingCurveProvider];
  [v2 settlingDuration];
  v4 = v3;

  return v4;
}

@end