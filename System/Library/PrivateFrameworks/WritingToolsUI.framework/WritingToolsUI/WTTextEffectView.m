@interface WTTextEffectView
@end

@implementation WTTextEffectView

void __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 updateEffectWith:v4];
  [*(a1 + 40) _cacheHeightOfPreviews:v4 forEffect:*(a1 + 32)];

  if ([*(a1 + 40) _shouldApplyRemainderEffectForEffect:*(a1 + 32)])
  {
    v5 = [_WTReplaceRemainderTextEffect alloc];
    v6 = [*(a1 + 32) chunk];
    v7 = [(_WTReplaceTextEffect *)v5 initWithChunk:v6 effectView:*(a1 + 40)];

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [*(a1 + 40) textEffects];
    [v9 setObject:v7 forKey:v8];

    [(_WTTextEffect *)v7 setIdentifier:v8];
    [*(a1 + 40) replaceSourceDuration];
    v11 = v10;
    [*(a1 + 40) replaceDestinationDuration];
    if (v11 >= v12)
    {
      v12 = v11;
    }

    [(_WTReplaceRemainderTextEffect *)v7 setDurationOverride:v12];
    v13 = [*(a1 + 40) replaceSourceRect];
    [v13 platformCGRectValue];
    v15 = v14;

    v16 = [*(a1 + 40) replaceDestinationRect];
    [v16 platformCGRectValue];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(_WTReplaceRemainderTextEffect *)v7 setOffset:v24 - v15];
    v40.origin.x = v18;
    v40.origin.y = v20;
    v40.size.width = v22;
    v40.size.height = v24;
    MaxY = CGRectGetMaxY(v40);
    *(*(*(a1 + 56) + 8) + 40) = MaxY + *(*(*(a1 + 56) + 8) + 40);
    *(*(*(a1 + 56) + 8) + 56) = *(*(*(a1 + 56) + 8) + 56) - MaxY;
    v26 = *(*(*(a1 + 56) + 8) + 56);
    [*(a1 + 40) platformGetVisibleRect];
    if (v26 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    *(*(*(a1 + 56) + 8) + 56) = v28;
    [*(a1 + 40) setReplaceSourceRect:0];
    [*(a1 + 40) setReplaceSourceDuration:0.0];
    [*(a1 + 40) setReplaceDestinationRect:0];
    [*(a1 + 40) setReplaceDestinationDuration:0.0];
    v29 = *(*(a1 + 56) + 8);
    if (v29[7] > 0.0)
    {
      v30 = *(a1 + 48);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_2;
      v37[3] = &unk_1E84810E8;
      v38 = v7;
      v39 = *(a1 + 48);
      [v30 textPreviewForRect:v37 completion:{v29[4], v29[5], v29[6], v29[7]}];
    }
  }

  if ([*(a1 + 32) hidesOriginal])
  {
    v31 = *(a1 + 48);
    v32 = [*(a1 + 32) chunk];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_4;
    v35[3] = &unk_1E8480BF8;
    v36 = *(a1 + 32);
    [v31 updateIsTextVisible:0 forChunk:v32 completion:v35];

    v33 = v36;
  }

  else
  {
    v34 = [*(a1 + 32) preCompletion];

    if (!v34)
    {
      return;
    }

    v33 = [*(a1 + 32) preCompletion];
    v33[2]();
  }
}

void __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v13[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v5 updateEffectWith:v6];

    if ([*(a1 + 32) hidesOriginal])
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) chunk];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_3;
      v11[3] = &unk_1E8480BF8;
      v12 = *(a1 + 32);
      [v7 updateIsTextVisible:0 forChunk:v8 completion:v11];

      v9 = v12;
LABEL_6:

      goto LABEL_7;
    }

    v10 = [*(a1 + 32) preCompletion];

    if (v10)
    {
      v9 = [*(a1 + 32) preCompletion];
      v9[2]();
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) preCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) preCompletion];
    v3[2]();
  }
}

void __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) preCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) preCompletion];
    v3[2]();
  }
}

void __43___WTTextEffectView_removeEffect_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate:*(a1 + 56)];
  v2 = [*(a1 + 40) textEffects];
  [v2 removeObjectForKey:*(a1 + 48)];
}

void __45___WTTextEffectView_updateSnapshotForEffect___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) updateEffectWith:a2];
  if ([*(a1 + 32) hidesOriginal])
  {
    v4 = [*(a1 + 40) asyncSource];
    v3 = [*(a1 + 32) chunk];
    [v4 updateIsTextVisible:0 forChunk:v3 completion:0];
  }
}

@end