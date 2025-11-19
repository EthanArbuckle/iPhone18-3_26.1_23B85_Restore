@interface UISystemBackgroundView
@end

@implementation UISystemBackgroundView

void __44___UISystemBackgroundView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    objc_storeStrong((*(a1 + 32) + 472), *(a1 + 40));
  }
}

uint64_t __87___UISystemBackgroundView__transitionFromConfigurationView_toConfigurationView_ofType___block_invoke(uint64_t a1)
{
  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:*(a1 + 48) ofType:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v3 == 5)
      {
        [(_UISystemBackgroundView *)v4 _layoutStrokeView];
      }

      else if (v3 == 6)
      {
        [(_UISystemBackgroundView *)v4 _layoutContentView];
      }

      else
      {
        [(_UISystemBackgroundView *)v4 _performStandardLayoutOfSubviewType:v3];
      }
    }

    else
    {
      [(_UISystemBackgroundView *)*(a1 + 32) _performStandardLayoutOfSubviewType:?];
      [(_UISystemBackgroundView *)v2 _updateShadowViewProperties];
    }
  }

  [(_UISystemBackgroundView *)*(a1 + 32) _updateCornerMaskingForType:?];
  v5 = *(a1 + 40);

  return [v5 setAlpha:0.0];
}

void __87___UISystemBackgroundView__transitionFromConfigurationView_toConfigurationView_ofType___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[6];
    if (v4)
    {
      v5 = a1[5];
      v6 = a1[7];

      [(_UISystemBackgroundView *)v5 _removeInternalSubview:v4 ofType:v6];
    }
  }

  else
  {
    v7 = a1[4];
    if (v7)
    {
      [(_UISystemBackgroundView *)a1[5] _removeInternalSubview:v7 ofType:a1[7]];
      v8 = a1[4];

      [v8 setAlpha:1.0];
    }
  }
}

void __136___UISystemBackgroundView__transitionFromVisualEffect_toVisualEffect_oldGroupName_newGroupName_oldblurClippingMode_newblurClippingMode___block_invoke(uint64_t a1)
{
  v2 = [[UIVisualEffectView alloc] initWithEffect:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 416);
  *(v3 + 416) = v2;

  v5 = +[UIColor clearColor];
  v6 = [*(*(a1 + 32) + 416) contentView];
  [v6 setBackgroundColor:v5];

  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:2 ofType:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    [(_UISystemBackgroundView *)v7 _performStandardLayoutOfSubviewType:?];
    v7 = *(a1 + 32);
  }

  [(_UISystemBackgroundView *)v7 _updateCornerMaskingForType:?];
}

void __136___UISystemBackgroundView__transitionFromVisualEffect_toVisualEffect_oldGroupName_newGroupName_oldblurClippingMode_newblurClippingMode___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (!*(a1 + 56))
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 416);
      if (v5)
      {
        [(_UISystemBackgroundView *)v4 _removeInternalSubview:v5 ofType:2];
      }
    }

    objc_storeStrong((*(a1 + 48) + 416), *(a1 + 40));
    [*(*(a1 + 48) + 416) setEffect:*(a1 + 56)];
    [*(*(a1 + 48) + 416) _setGroupName:*(a1 + 64)];
    v6 = *(a1 + 72);
    v9 = [*(*(a1 + 48) + 416) contentView];
    [v9 setBackgroundColor:v6];
  }

  else if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 48);

      [(_UISystemBackgroundView *)v8 _removeInternalSubview:v7 ofType:2];
    }
  }
}

void __70___UISystemBackgroundView__transitionFromHadColorView_toHasColorView___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UIView);
  v3 = *(a1 + 32);
  v4 = *(v3 + 408);
  *(v3 + 408) = v2;

  v5 = +[UIColor clearColor];
  [*(*(a1 + 32) + 408) setBackgroundColor:v5];

  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:1 ofType:?];
  v6 = *(a1 + 32);
  if (v6)
  {
    [(_UISystemBackgroundView *)v6 _performStandardLayoutOfSubviewType:?];
    v6 = *(a1 + 32);
  }

  [(_UISystemBackgroundView *)v6 _updateCornerMaskingForType:?];
}

void __70___UISystemBackgroundView__transitionFromHadColorView_toHasColorView___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v4 = *(a1 + 40);
      v5 = *(v4 + 408);
      if (v5)
      {
        [(_UISystemBackgroundView *)v4 _removeInternalSubview:v5 ofType:1];
      }
    }

    objc_storeStrong((*(a1 + 40) + 408), *(a1 + 32));
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 40) + 408);

    [v7 setBackgroundColor:v6];
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(a1 + 40);

      [(_UISystemBackgroundView *)v9 _removeInternalSubview:v8 ofType:1];
    }
  }
}

uint64_t __56___UISystemBackgroundView__transitionFromImage_toImage___block_invoke(uint64_t a1)
{
  v2 = [[UIImageView alloc] initWithImage:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = v2;

  [*(*(a1 + 32) + 424) setContentMode:{objc_msgSend(*(*(a1 + 32) + 472), "imageContentMode")}];
  [*(*(a1 + 32) + 424) _setAnimatesContents:1];
  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:3 ofType:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    [(_UISystemBackgroundView *)v5 _performStandardLayoutOfSubviewType:?];
    v5 = *(a1 + 32);
  }

  [(_UISystemBackgroundView *)v5 _updateCornerMaskingForType:?];
  v6 = *(*(a1 + 32) + 424);

  return [v6 setAlpha:0.0];
}

void __56___UISystemBackgroundView__transitionFromImage_toImage___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (!*(a1 + 56))
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 424);
      if (v5)
      {
        [(_UISystemBackgroundView *)v4 _removeInternalSubview:v5 ofType:3];
      }
    }

    objc_storeStrong((*(a1 + 48) + 424), *(a1 + 40));
    v6 = *(*(a1 + 48) + 424);

    [v6 setAlpha:1.0];
  }

  else if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 48);

      [(_UISystemBackgroundView *)v8 _removeInternalSubview:v7 ofType:3];
    }
  }
}

void __68___UISystemBackgroundView__transitionFromOldMaterial_toNewMaterial___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 472) _material];
  [*(a1 + 32) _setBackground:v2];
}

uint64_t __68___UISystemBackgroundView__transitionFromOldMaterial_toNewMaterial___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) _setBackground:*(result + 40)];
  }

  return result;
}

uint64_t __93___UISystemBackgroundView__transitionViewBasedShadowFromShadowProperties_toShadowProperties___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UIView);
  v3 = *(a1 + 32);
  v4 = *(v3 + 440);
  *(v3 + 440) = v2;

  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:0 ofType:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    [(_UISystemBackgroundView *)*(a1 + 32) _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)v5 _updateShadowViewProperties];
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  [(_UISystemBackgroundView *)v6 _updateCornerMaskingForType:?];
  v7 = *(*(a1 + 32) + 440);

  return [v7 setAlpha:0.0];
}

void __93___UISystemBackgroundView__transitionViewBasedShadowFromShadowProperties_toShadowProperties___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (!*(a1 + 56))
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 440);
      if (v5)
      {
        [(_UISystemBackgroundView *)v4 _removeInternalSubview:v5 ofType:0];
      }
    }

    objc_storeStrong((*(a1 + 48) + 440), *(a1 + 40));
    v6 = *(a1 + 40);

    [v6 setAlpha:1.0];
  }

  else if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 48);

      [(_UISystemBackgroundView *)v8 _removeInternalSubview:v7 ofType:0];
    }
  }
}

void __64___UISystemBackgroundView__transitionFromHadStroke_toHasStroke___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_UISystemBackgroundStrokeView);
  v3 = *(a1 + 32);
  v4 = *(v3 + 432);
  *(v3 + 432) = v2;

  [(_UISystemBackgroundView *)*(a1 + 32) _addInternalSubview:5 ofType:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    [(_UISystemBackgroundView *)v5 _layoutStrokeView];
    v5 = *(a1 + 32);
  }

  [(_UISystemBackgroundView *)v5 _updateCornerMaskingForType:?];
}

void __64___UISystemBackgroundView__transitionFromHadStroke_toHasStroke___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      v4 = *(a1 + 40);
      v5 = *(v4 + 432);
      if (v5)
      {
        [(_UISystemBackgroundView *)v4 _removeInternalSubview:v5 ofType:5];
      }
    }

    v6 = *(a1 + 32);
    v7 = (*(a1 + 40) + 432);

    objc_storeStrong(v7, v6);
  }

  else if ((*(a1 + 48) & 1) == 0)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(a1 + 40);

      [(_UISystemBackgroundView *)v9 _removeInternalSubview:v8 ofType:5];
    }
  }
}

@end