@interface UIView(FrameUsingCenterAndBounds)
- (double)frameUsingCenterAndBounds;
- (void)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds;
@end

@implementation UIView(FrameUsingCenterAndBounds)

- (double)frameUsingCenterAndBounds
{
  v2 = [a1 layer];
  [v2 anchorPoint];
  v4 = v3;
  v6 = v5;

  v7 = [a1 layer];
  [v7 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [a1 bounds];
  [a1 center];
  v9 = v8;
  [a1 bounds];
  v11 = v9 - v10 * 0.5;
  [a1 center];
  [a1 bounds];
  v12 = [a1 layer];
  [v12 setAnchorPointWithoutChangingPosition:{v4, v6}];

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
  v10 = [a1 layer];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
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

  v12 = [a1 layer];
  [v12 anchorPoint];
  v14 = v13;
  v16 = v15;

  v17 = [a1 layer];
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
  [v17 setTransform:&v27];

  v22 = [a1 layer];
  [v22 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];

  [a1 bounds];
  v24 = v23;
  [a1 bounds];
  [a1 setBounds:v24];
  [a1 setCenter:{a2 + a4 * 0.5, a3 + a5 * 0.5}];
  v25 = [a1 layer];
  [v25 setAnchorPointWithoutChangingPosition:{v14, v16}];

  v26 = [a1 layer];
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  [v26 setTransform:&v27];
}

@end