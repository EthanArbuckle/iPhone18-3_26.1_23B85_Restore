@interface UIImageContent
@end

@implementation UIImageContent

void __24___UIImageContent_empty__block_invoke()
{
  v0 = [(_UIImageContent *)[_UIImageEmptyContent alloc] initWithScale:1.0];
  v1 = qword_1ED4996A8;
  qword_1ED4996A8 = v0;
}

void __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 40);
  [*(a1 + 32) scale];
  CGContextScaleCTM(a2, v4 / v5, v4 / v5);
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48) * v8;
  v10 = v8 * *(a1 + 56);
  v11 = +[UIColor orangeColor];
  v12 = [v11 colorWithAlphaComponent:0.5];
  [v12 setFill];

  v13 = +[UIColor brownColor];
  v14 = [v13 colorWithAlphaComponent:0.9];
  [v14 setStroke];

  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v10;
  CGContextFillRect(a2, v20);
  v15 = v6;
  v16 = v7;
  v17 = v9;
  v18 = v10;

  CGContextStrokeRect(a2, *&v15);
}

uint64_t __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _prepareForDrawingWithSize:a2 scale:*(a1 + 40) inContext:{*(a1 + 48), *(a1 + 56)}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [v4 _drawWithSize:a2 scale:0 inContext:v7 renditionContext:{v5, v6}];
}

uint64_t __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_4(uint64_t a1)
{
  if ([(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolveNamedColorStyles])
  {
    v2 = *(a1 + 72);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_5;
    v22[3] = &unk_1E7106D38;
    v3 = *(a1 + 40);
    v23 = *(a1 + 32);
    v4 = [v3 _provideVectorGlyphCGImageWithSize:v22 scale:*(a1 + 56) namedColorResolver:{*(a1 + 64), v2}];
    v5 = v23;
LABEL_5:

    return v4;
  }

  if ([(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolveHierarchicalColors])
  {
    v6 = *(a1 + 72);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_6;
    v20[3] = &unk_1E7106D60;
    v7 = *(a1 + 40);
    v21 = *(a1 + 32);
    v4 = [v7 _provideVectorGlyphCGImageWithSize:v20 scale:*(a1 + 56) hierarchicalColorResolver:{*(a1 + 64), v6}];
    v5 = v21;
    goto LABEL_5;
  }

  shouldResolvePalette = [(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolvePaletteColors];
  v10 = *(a1 + 32);
  if (shouldResolvePalette)
  {
    v11 = [(_UIImageContentRenditionContext *)v10 _resolvedPaletteColors];
    v4 = [*(a1 + 40) _provideVectorGlyphCGImageWithSize:v11 scale:*(a1 + 56) paletteColors:{*(a1 + 64), *(a1 + 72)}];

    return v4;
  }

  v12 = [(_UIImageContentRenditionContext *)v10 _shouldResolveTemplateColor:?];
  v13 = *(a1 + 40);
  v14 = *(a1 + 72);
  if (v12)
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);

    return [v13 _provideVectorGlyphCGImageWithSize:v15 scale:v16 templateColor:{v17, v14}];
  }

  else
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);

    return [v13 _provideCGImageWithSize:v18 scale:{v19, v14}];
  }
}

void __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 _prepareForDrawingWithSize:a2 scale:*(a1 + 56) inContext:{*(a1 + 64), *(a1 + 72)}];
    if ([(_UIImageContentRenditionContext *)*(a1 + 40) _shouldResolveNamedColorStyles])
    {
      v5 = *(a1 + 72);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_8;
      v23[3] = &unk_1E7106D38;
      v6 = *(a1 + 32);
      v24 = *(a1 + 40);
      [v6 _drawVectorGlyphWithSize:a2 scale:v23 inContext:*(a1 + 56) namedColorResolver:{*(a1 + 64), v5}];
      v7 = v24;
LABEL_6:

      return;
    }

    if ([(_UIImageContentRenditionContext *)*(a1 + 40) _shouldResolveHierarchicalColors])
    {
      v8 = *(a1 + 72);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_9;
      v21[3] = &unk_1E7106D60;
      v9 = *(a1 + 32);
      v22 = *(a1 + 40);
      [v9 _drawVectorGlyphWithSize:a2 scale:v21 inContext:*(a1 + 56) hierarchicalColorResolver:{*(a1 + 64), v8}];
      v7 = v22;
      goto LABEL_6;
    }

    shouldResolvePalette = [(_UIImageContentRenditionContext *)*(a1 + 40) _shouldResolvePaletteColors];
    v11 = *(a1 + 40);
    if (shouldResolvePalette)
    {
      v20 = [(_UIImageContentRenditionContext *)v11 _resolvedPaletteColors];
      [*(a1 + 32) _drawVectorGlyphWithSize:a2 scale:v20 inContext:*(a1 + 56) paletteColors:{*(a1 + 64), *(a1 + 72)}];
    }

    else
    {
      v12 = [(_UIImageContentRenditionContext *)v11 _shouldResolveTemplateColor:?];
      v13 = *(a1 + 32);
      v14 = *(a1 + 72);
      if (v12)
      {
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        v17 = *(a1 + 64);

        [v13 _drawVectorGlyphWithSize:a2 scale:v15 inContext:v16 templateColor:{v17, v14}];
      }

      else
      {
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);

        [v13 _drawWithSize:a2 scale:0 inContext:v18 renditionContext:{v19, v14}];
      }
    }
  }
}

id __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_10(uint64_t a1)
{
  v2 = objc_opt_new();
  if ([(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolveNamedColorStyles])
  {
    if (v2)
    {
      *(v2 + 8) = 2;
    }

    v3 = [MEMORY[0x1E695DFD8] set];
    [(_UIHomeAffordanceObservationRecord *)v2 setLegacyViewServiceSessionIdentifier:v3];

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_12;
    newValue[3] = &unk_1E7106DF8;
    v4 = *(a1 + 32);
    v6 = &__block_literal_global_25_2;
    v36 = v4;
    v37 = &__block_literal_global_25_2;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v5, newValue, 32);
      v6 = v37;
    }

    v7 = v36;
  }

  else if ([(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolveHierarchicalColors])
  {
    if (v2)
    {
      *(v2 + 8) = 3;
    }

    v8 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1EFE30448];
    [(_UIHomeAffordanceObservationRecord *)v2 setLegacyViewServiceSessionIdentifier:v8];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_29;
    v32[3] = &unk_1E7106DF8;
    v9 = *(a1 + 32);
    v11 = &__block_literal_global_25_2;
    v33 = v9;
    v34 = &__block_literal_global_25_2;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v10, v32, 32);
      v11 = v34;
    }

    v7 = v33;
  }

  else if ([(_UIImageContentRenditionContext *)*(a1 + 32) _shouldResolvePaletteColors])
  {
    if (v2)
    {
      *(v2 + 8) = 4;
    }

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1EFE30448, &unk_1EFE30460, &unk_1EFE30478, 0}];
    [(_UIHomeAffordanceObservationRecord *)v2 setLegacyViewServiceSessionIdentifier:v12];

    v13 = [(_UIImageContentRenditionContext *)*(a1 + 32) _resolvedPaletteColors];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_34;
    v29[3] = &unk_1E7106DF8;
    v14 = &__block_literal_global_25_2;
    v30 = v13;
    v31 = &__block_literal_global_25_2;
    v7 = v13;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v15, v29, 32);
      v14 = v31;
    }
  }

  else
  {
    if (v2)
    {
      *(v2 + 8) = 1;
    }

    v16 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1EFE30448];
    [(_UIHomeAffordanceObservationRecord *)v2 setLegacyViewServiceSessionIdentifier:v16];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_2_35;
    v26[3] = &unk_1E7106DF8;
    v17 = *(a1 + 40);
    v19 = &__block_literal_global_25_2;
    v27 = v17;
    v28 = &__block_literal_global_25_2;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v18, v26, 32);
      v19 = v28;
    }

    v7 = v27;
  }

  v20 = [(_UIImageContentRenditionContext *)*(a1 + 32) vectorGlyph];
  if (v2)
  {
    objc_storeWeak((v2 + 16), v20);
  }

  v21 = [(_UIImageContentRenditionContext *)*(a1 + 32) variableValue];
  if (v2)
  {
    *(v2 + 40) = v21;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = [*(v22 + 8) variableValueMode];
    if (v23 == 1)
    {
      v24 = 16;
    }

    else
    {
      v24 = 32 * (v23 == 2);
    }

    v22 = *(a1 + 32);
    if (v22)
    {
      LODWORD(v22) = [*(v22 + 8) colorRenderingMode] == 2;
    }

    if (v2)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v24 = 0;
    if (v2)
    {
LABEL_35:
      *(v2 + 12) = v22 | v24;
    }
  }

  return v2;
}

float __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_11(int a1, id a2)
{
  if (!a2)
  {
    return *MEMORY[0x1E69C7140];
  }

  [a2 CGColor];
  RBColorFromCGColor2();
  return result;
}

float __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [(_UIImageContentRenditionContext *)*(a1 + 32) _resolvedColorForNamedStyle:a3];
  v5 = (*(*(a1 + 40) + 16))();

  return v5;
}

float __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_29(uint64_t a1)
{
  v2 = [(_UIImageContentRenditionContext *)*(a1 + 32) _resolvedHierarchicalColorForLayerLevel:?];
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

float __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_34(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
    v3 = 2;
  }

  else
  {
    v3 = a2 == 5;
  }

  v4 = *(a1 + 32);
  v5 = [v4 count];
  if (v3 >= v5 - 1)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v4 objectAtIndexedSubscript:v6];
  v8 = (*(*(a1 + 40) + 16))();

  return v8;
}

float __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_2_35(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  v4 = v3;
  v5 = (*(*(a1 + 40) + 16))();

  return v5;
}

uint64_t __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_3_37(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _prepareForDrawingWithSize:a2 scale:*(a1 + 48) inContext:{*(a1 + 56), *(a1 + 64)}];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 _drawWithSize:a2 scale:v7 inContext:v8 renditionContext:{v4, v5}];
}

CFTypeRef __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_38(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = +[UIGraphicsImageRendererFormat preferredFormat];
    [v3 setScale:*(a1 + 48)];
    v4 = [[UIGraphicsImageRenderer alloc] initWithSize:v3 format:*(a1 + 56), *(a1 + 64)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_2_40;
    v10[3] = &unk_1E7106E70;
    v11 = *(a1 + 32);
    v5 = [(UIGraphicsImageRenderer *)v4 imageWithActions:v10];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v8 = CGImageRetain([v2 CGImage]);
  return CFAutorelease(v8);
}

uint64_t __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_2_40(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = [a2 CGContext];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

@end