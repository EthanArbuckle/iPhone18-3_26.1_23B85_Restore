@interface CALayer(FrameUsingCenterAndBounds)
- (double)frameUsingCenterAndBounds;
- (uint64_t)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds;
@end

@implementation CALayer(FrameUsingCenterAndBounds)

- (double)frameUsingCenterAndBounds
{
  [a1 anchorPoint];
  v3 = v2;
  v5 = v4;
  [a1 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];
  [a1 bounds];
  [a1 position];
  v7 = v6;
  [a1 bounds];
  v9 = v7 - v8 * 0.5;
  [a1 position];
  [a1 bounds];
  [a1 setAnchorPointWithoutChangingPosition:{v3, v5}];
  return v9;
}

- (uint64_t)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  [a1 transform];
  [a1 anchorPoint];
  v11 = v10;
  v13 = v12;
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v25 = *(MEMORY[0x1E69792E8] + 64);
  v26 = v14;
  v15 = *(MEMORY[0x1E69792E8] + 112);
  v27 = *(MEMORY[0x1E69792E8] + 96);
  v28 = v15;
  v16 = *(MEMORY[0x1E69792E8] + 16);
  v21 = *MEMORY[0x1E69792E8];
  v22 = v16;
  v17 = *(MEMORY[0x1E69792E8] + 48);
  v23 = *(MEMORY[0x1E69792E8] + 32);
  v24 = v17;
  [a1 setTransform:&v21];
  [a1 setAnchorPointWithoutChangingPosition:{0.5, 0.5}];
  [a1 bounds];
  v19 = v18;
  [a1 bounds];
  [a1 setBounds:v19];
  [a1 setPosition:{a2 + a4 * 0.5, a3 + a5 * 0.5}];
  [a1 setAnchorPointWithoutChangingPosition:{v11, v13}];
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  return [a1 setTransform:&v21];
}

@end