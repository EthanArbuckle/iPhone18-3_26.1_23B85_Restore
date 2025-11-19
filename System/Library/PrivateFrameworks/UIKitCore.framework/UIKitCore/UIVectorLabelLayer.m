@interface UIVectorLabelLayer
@end

@implementation UIVectorLabelLayer

id __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOpacity:0.0];
  _UIMorphLayerPaths(*(a1 + 32), *(a1 + 40));
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return v2;
}

uint64_t __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];
  [v3 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v3 setPath:*(a1 + 72)];
  [v3 setFillColor:*(a1 + 80)];
  [*(a1 + 32) setOpacity:0.0];
  _UIMorphLayerPaths(*(a1 + 32), v3);

  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v5 = *(a1 + 80);
  v6 = *(a1 + 32);

  return [v6 setFillColor:v5];
}

id __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_3(uint64_t a1)
{
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  LODWORD(v2) = 1.0;
  [*(a1 + 32) setOpacity:v2];
  v3 = *(a1 + 32);

  return v3;
}

uint64_t __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setOpacity:0.0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);

  return [v7 setFrame:{v3, v4, v5, v6}];
}

id __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setOpacity:0.0];
  [*(a1 + 40) size];
  v3 = v2;
  v5 = v4;
  [*(a1 + 48) size];
  v8 = v6 / v3;
  v9 = 1.0;
  if (v3 == 0.0)
  {
    v8 = 1.0;
  }

  if (v5 != 0.0)
  {
    v9 = v7 / v5;
  }

  v10 = v7 - v5;
  if (v5 >= 0.01)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0.01;
  }

  v12 = *(a1 + 64) + v10 * (*(a1 + 64) / v11);
  v13 = v6 - v3;
  if (v3 >= 0.01)
  {
    v14 = v3;
  }

  else
  {
    v14 = 0.01;
  }

  v15 = *(a1 + 56) + v13 * (*(a1 + 56) / v14);
  if (v8 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v8;
  }

  [*(a1 + 32) setFrame:{v15, v12, *(a1 + 72) * v16, *(a1 + 80) * v16}];
  v17 = *(a1 + 32);

  return v17;
}

void __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_6(double *a1, void *a2)
{
  v4 = a2;
  LODWORD(v3) = 1.0;
  [v4 setOpacity:v3];
  [v4 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
}

void __44___UIVectorLabelLayer__layersForTextLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 shouldRender])
  {
    v4 = [UIGraphicsImageRenderer alloc];
    [v3 usedRunRect];
    v7 = [(UIGraphicsImageRenderer *)v4 initWithSize:*(a1 + 32) format:v5, v6];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44___UIVectorLabelLayer__layersForTextLayout___block_invoke_2;
    v12[3] = &unk_1E70F6970;
    v8 = v3;
    v13 = v8;
    v9 = [(UIGraphicsImageRenderer *)v7 imageWithActions:v12];
    v10 = objc_opt_new();
    [v10 _ui_setLayoutRun:v8];
    [v10 setAnchorPoint:{*(a1 + 48), *(a1 + 56)}];
    [v10 setContents:{objc_msgSend(v9, "CGImage")}];
    [v8 usedRunRect];
    [v10 setFrame:?];
    [*(a1 + 40) addObject:v10];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44___UIVectorLabelLayer__layersForTextLayout___block_invoke_3;
    v11[3] = &__block_descriptor_40_e40_v24__0____UIVectorTextLayoutGlyph__8_B16l;
    v11[4] = *(a1 + 64);
    [v3 enumerateGlyphsUsingBlock:v11];
  }
}

uint64_t __44___UIVectorLabelLayer__layersForTextLayout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];

  return [v2 renderInContext:v3];
}

void __44___UIVectorLabelLayer__layersForTextLayout___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  memset(&v7, 0, sizeof(v7));
  if (v3)
  {
    [v3 pathTransform];
  }

  v5 = *(a1 + 32);
  v6 = [v4 path];
  CGPathAddPath(v5, &v7, [v6 CGPath]);
}

@end