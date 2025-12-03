@interface UIView(PosterUIFoundation)
- (id)pui_constraintsPinningSubview:()PosterUIFoundation toEdges:;
- (uint64_t)pui_setBoundsAndPositionFromFrame:()PosterUIFoundation;
- (void)pui_transitionWithType:()PosterUIFoundation duration:timingFunctionName:;
@end

@implementation UIView(PosterUIFoundation)

- (id)pui_constraintsPinningSubview:()PosterUIFoundation toEdges:
{
  v6 = a3;
  v7 = [v6 isDescendantOfView:self];
  v8 = MEMORY[0x1E695E0F0];
  if (a4 && v7)
  {
    v9 = objc_opt_new();
    if (a4)
    {
      topAnchor = [v6 topAnchor];
      topAnchor2 = [self topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v9 addObject:v16];

      if ((a4 & 4) == 0)
      {
LABEL_5:
        if ((a4 & 2) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    else if ((a4 & 4) == 0)
    {
      goto LABEL_5;
    }

    bottomAnchor = [v6 bottomAnchor];
    bottomAnchor2 = [self bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v9 addObject:v19];

    if ((a4 & 2) == 0)
    {
LABEL_6:
      if ((a4 & 8) == 0)
      {
LABEL_8:
        v8 = [v9 copy];

        goto LABEL_9;
      }

LABEL_7:
      trailingAnchor = [v6 trailingAnchor];
      trailingAnchor2 = [self trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v9 addObject:v12];

      goto LABEL_8;
    }

LABEL_14:
    leadingAnchor = [v6 leadingAnchor];
    leadingAnchor2 = [self leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v9 addObject:v22];

    if ((a4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:

  return v8;
}

- (uint64_t)pui_setBoundsAndPositionFromFrame:()PosterUIFoundation
{
  [self bounds];
  [self setBounds:?];
  layer = [self layer];
  [layer anchorPoint];
  v12 = v11;
  v14 = v13;

  return [self setCenter:{a2 + v12 * a4, a3 + v14 * a5}];
}

- (void)pui_transitionWithType:()PosterUIFoundation duration:timingFunctionName:
{
  v14 = a4;
  v8 = a5;
  if (a2 > 0.0 && [MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    v9 = objc_opt_new();
    [v9 setDuration:a2];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = *MEMORY[0x1E6979EA0];
    }

    v11 = [MEMORY[0x1E69793D0] functionWithName:v10];
    [v9 setTimingFunction:v11];

    if (v14)
    {
      v12 = v14;
    }

    else
    {
      v12 = *MEMORY[0x1E697A030];
    }

    [v9 setType:v12];
    layer = [self layer];
    [layer addAnimation:v9 forKey:0];
  }
}

@end