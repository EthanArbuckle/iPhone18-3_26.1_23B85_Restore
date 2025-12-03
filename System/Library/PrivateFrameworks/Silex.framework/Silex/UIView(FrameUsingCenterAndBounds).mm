@interface UIView(FrameUsingCenterAndBounds)
- (double)frameUsingCenterAndBounds;
- (void)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds;
@end

@implementation UIView(FrameUsingCenterAndBounds)

- (double)frameUsingCenterAndBounds
{
  layer = [self layer];
  [layer anchorPoint];
  v4 = v3;
  v6 = v5;

  layer2 = [self layer];
  [layer2 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [self bounds];
  [self center];
  v9 = v8;
  [self bounds];
  v11 = v9 - v10 * 0.5;
  [self center];
  [self bounds];
  layer3 = [self layer];
  [layer3 setAnchorPointWithoutChangingPosition:{v4, v6}];

  return v11;
}

- (void)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds
{
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  layer = [self layer];
  v11 = layer;
  if (layer)
  {
    [layer transform];
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
  }

  layer2 = [self layer];
  [layer2 anchorPoint];
  v14 = v13;
  v16 = v15;

  layer3 = [self layer];
  v18 = *(MEMORY[0x1E69792E8] + 80);
  v31 = *(MEMORY[0x1E69792E8] + 64);
  v32 = v18;
  v19 = *(MEMORY[0x1E69792E8] + 112);
  v33 = *(MEMORY[0x1E69792E8] + 96);
  v34 = v19;
  v20 = *(MEMORY[0x1E69792E8] + 16);
  v27 = *MEMORY[0x1E69792E8];
  v28 = v20;
  v21 = *(MEMORY[0x1E69792E8] + 48);
  v29 = *(MEMORY[0x1E69792E8] + 32);
  v30 = v21;
  [layer3 setTransform:&v27];

  layer4 = [self layer];
  [layer4 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [self bounds];
  v24 = v23;
  [self bounds];
  [self setBounds:v24];
  [self setCenter:{a2 + a4 * 0.5, a3 + a5 * 0.5}];
  layer5 = [self layer];
  [layer5 setAnchorPointWithoutChangingPosition:{v14, v16}];

  layer6 = [self layer];
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  [layer6 setTransform:&v27];
}

@end