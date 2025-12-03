@interface CALayer(FrameUsingCenterAndBounds)
- (double)frameUsingCenterAndBounds;
- (uint64_t)setFrameUsingCenterAndBounds:()FrameUsingCenterAndBounds;
@end

@implementation CALayer(FrameUsingCenterAndBounds)

- (double)frameUsingCenterAndBounds
{
  [self anchorPoint];
  v3 = v2;
  v5 = v4;
  [self setAnchorPointWithoutChangingPosition:{0.5, 0.5}];
  [self bounds];
  [self position];
  v7 = v6;
  [self bounds];
  v9 = v7 - v8 * 0.5;
  [self position];
  [self bounds];
  [self setAnchorPointWithoutChangingPosition:{v3, v5}];
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
  [self transform];
  [self anchorPoint];
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
  [self setTransform:&v21];
  [self setAnchorPointWithoutChangingPosition:{0.5, 0.5}];
  [self bounds];
  v19 = v18;
  [self bounds];
  [self setBounds:v19];
  [self setPosition:{a2 + a4 * 0.5, a3 + a5 * 0.5}];
  [self setAnchorPointWithoutChangingPosition:{v11, v13}];
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  return [self setTransform:&v21];
}

@end