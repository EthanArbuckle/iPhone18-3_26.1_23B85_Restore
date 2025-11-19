@interface _UIPencilHoverState
+ (void)_hoverStateFromHoverPose:(uint64_t)a1;
- (_UIPencilHoverState)init;
@end

@implementation _UIPencilHoverState

+ (void)_hoverStateFromHoverPose:(uint64_t)a1
{
  objc_opt_self();
  if (a2)
  {
    v3 = [_UIPencilHoverState alloc];
    if (v3)
    {
      v14.receiver = v3;
      v14.super_class = UIPencilHoverPose;
      v4 = objc_msgSendSuper2(&v14, sel_init);
      if (v4)
      {
        v5 = v4;
        v6 = *(a2 + 72);
        *(v4 + 56) = *(a2 + 56);
        *(v4 + 9) = v6;
        [a2 zOffset];
        v5[1] = v7;
        [a2 azimuthAngle];
        v5[2] = v8;
        [a2 azimuthUnitVector];
        v5[5] = v9;
        v5[6] = v10;
        [a2 altitudeAngle];
        v5[3] = v11;
        [a2 rollAngle];
        v5[4] = v12;
        goto LABEL_7;
      }
    }

    [a2 zOffset];
    [a2 azimuthAngle];
    [a2 azimuthUnitVector];
    [a2 altitudeAngle];
    [a2 rollAngle];
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (_UIPencilHoverState)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:337 description:{@"%s: init is not allowed on %@", "-[_UIPencilHoverState init]", objc_opt_class()}];

  return 0;
}

@end