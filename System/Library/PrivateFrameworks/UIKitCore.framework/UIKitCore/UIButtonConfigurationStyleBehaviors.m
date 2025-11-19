@interface UIButtonConfigurationStyleBehaviors
@end

@implementation UIButtonConfigurationStyleBehaviors

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIColor blackColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = fallbackForegroundColorForTraitCollection(v8);
  v10 = v9;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  if ((a4 & 2) != 0)
  {
    v14 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_2;
    v16 = v10;
    goto LABEL_16;
  }

  if ((a4 & 0x10) != 0 && [v8 userInterfaceIdiom] != 6)
  {
    v14 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_4;
LABEL_15:
    v16 = v12;
LABEL_16:
    v14[2] = v15;
    v14[3] = &unk_1E70F3870;
    v14[4] = v16;
    v13 = _Block_copy(v14);

    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) != 0 && [v8 userInterfaceIdiom] != 6)
  {
    v14 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_5;
    goto LABEL_15;
  }

  if ((a4 & 0x14) != 0 && [v8 userInterfaceIdiom] == 6)
  {
    v13 = &__block_literal_global_58_0;
LABEL_17:
    v17 = v13[2](v13, v8);

    goto LABEL_19;
  }

LABEL_18:
  v17 = v12;
LABEL_19:

  return v17;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = _tintBehaviorAlphaReduction(v3, v4, 1.0, 1.0);
  v6 = _colorByReducingAlpha(*(a1 + 32), v4, v5);

  return v6;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = _tintBehaviorAlphaReduction(v3, v4, 0.65, 0.7);
  v6 = _colorByReducingAlpha(*(a1 + 32), v4, v5);

  return v6;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = [v2 resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = a2;
    v3 = +[UIColor blackColor];
    v4 = [v3 resolvedColorWithTraitCollection:v5];
  }

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = fallbackForegroundColorForTraitCollection(v10);
  v12 = v11;
  if (!v8)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_2;
    v24[3] = &unk_1E70F6F60;
    v25 = v11;
    v26 = v9;
    v13 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_2(v24, v10);

    if ((a4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_3;
    v16 = v12;
    goto LABEL_15;
  }

  v13 = v8;
  if ((a4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a4 & 0x10) != 0 && [v10 userInterfaceIdiom] != 6)
  {
    v14 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_5;
LABEL_14:
    v16 = v13;
    goto LABEL_15;
  }

  if ((a4 & 1) != 0 && [v10 userInterfaceIdiom] != 6)
  {
    v14 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_6;
    goto LABEL_14;
  }

  if ((a4 & 0x14) == 0 || [v10 userInterfaceIdiom] != 6)
  {
    goto LABEL_17;
  }

  v14 = v20;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v15 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_7;
  v16 = v8;
LABEL_15:
  v14[2] = v15;
  v14[3] = &unk_1E70F3870;
  v14[4] = v16;
  v17 = _Block_copy(v14);

  if (v17)
  {
    v18 = v17[2](v17, v10);

    goto LABEL_18;
  }

LABEL_17:
  v18 = v13;
LABEL_18:

  return v18;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = *(a1 + 32);
    goto LABEL_12;
  }

  if (*(a1 + 40) || (+[UIColor tintColor](UIColor, "tintColor"), v5 = objc_claimAutoreleasedReturnValue(), +[UIColor whiteColor], v6 = objc_claimAutoreleasedReturnValue(), isSameColor = _isSameColor(v5, v6, v3), v6, v5, !isSameColor))
  {
    v8 = +[UIColor labelColor];
    v9 = v3;
    if ([v9 userInterfaceStyle] != 2)
    {
      v10 = v9;
      v11 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = +[UIColor labelColor];
    v9 = v3;
    if ([v9 userInterfaceStyle] == 2)
    {
      v10 = v9;
      v11 = 1;
LABEL_10:
      v12 = [v10 _traitCollectionByReplacingNSIntegerValue:v11 forTraitToken:0x1EFE323B0];
      goto LABEL_11;
    }
  }

  v12 = v9;
LABEL_11:
  v13 = v12;

  v4 = [v8 resolvedColorWithTraitCollection:v13];

LABEL_12:

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  if ([v8 userInterfaceIdiom] == 6)
  {
    v9 = +[UIColor whiteColor];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      +[UIColor labelColor];
    }

    else
    {
      fallbackForegroundColorForTraitCollection(v8);
    }
    v9 = ;
  }

  v10 = v9;

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  if ((a4 & 2) != 0)
  {
    v14 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_2;
    v16 = v10;
    goto LABEL_22;
  }

  if ((a4 & 0x10) != 0 && [v8 userInterfaceIdiom] != 6)
  {
    v14 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_4;
LABEL_21:
    v16 = v12;
LABEL_22:
    v14[2] = v15;
    v14[3] = &unk_1E70F3870;
    v14[4] = v16;
    v13 = _Block_copy(v14);

    if (v13)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if ((a4 & 1) != 0 && [v8 userInterfaceIdiom] != 6)
  {
    v14 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v15 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_5;
    goto LABEL_21;
  }

  if ((a4 & 0x14) != 0 && [v8 userInterfaceIdiom] == 6)
  {
    v13 = &__block_literal_global_45_0;
LABEL_23:
    v17 = v13[2](v13, v8);

    goto LABEL_25;
  }

LABEL_24:
  v17 = v12;
LABEL_25:

  return v17;
}

id __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIColor blackColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = [*(a1 + 32) resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    v4 = [v5 resolvedColorWithTraitCollection:v3];
  }

  return v4;
}

id __54___UIButtonConfigurationStyleBehaviors_emptyBehaviors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIColor clearColor];
  }

  v5 = v4;

  return v5;
}

id __54___UIButtonConfigurationStyleBehaviors_emptyBehaviors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIColor clearColor];
  }

  v5 = v4;

  return v5;
}

id __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = fallbackForegroundColorForTraitCollection(v8);
  v10 = v9;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  if ((a4 & 2) != 0)
  {
    v13 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v14 = __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_2;
    v15 = v10;
  }

  else
  {
    if ((a4 & 0x10) != 0)
    {
      v13 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v14 = __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_4;
    }

    else
    {
      if ((a4 & 1) == 0 || [v8 userInterfaceIdiom] == 6)
      {
        goto LABEL_14;
      }

      v13 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v14 = __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_5;
    }

    v15 = v12;
  }

  v13[2] = v14;
  v13[3] = &unk_1E70F3870;
  v13[4] = v15;
  v16 = _Block_copy(v13);

  if (v16)
  {
    v17 = v16[2](v16, v8);

    goto LABEL_15;
  }

LABEL_14:
  v17 = v12;
LABEL_15:

  return v17;
}

id __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = [*(a1 + 32) resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    v4 = [v5 resolvedColorWithTraitCollection:v3];
  }

  return v4;
}

id __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = +[UIColor blackColor];
    v5 = [v4 resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = _colorByReducingAlphaInLightAddingWhiteWithAlphaInDark(*(a1 + 32), v3, 0.5, 0.4);
  }

  return v5;
}

id __55___UIButtonConfigurationStyleBehaviors_plainBehaviors___block_invoke_6(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if ((a3 & 1) != 0 && [v7 userInterfaceIdiom] == 6 || !_AXSButtonShapesEnabled() || (objc_msgSend(v8, "_containedInBarBackgroundMaterial") & 1) != 0 || (v9 = objc_msgSend(v8, "_monochromaticTreatment"), v9 == +[_UITraitMonochromaticTreatment _glassMonochromaticTreatment](_UITraitMonochromaticTreatment, "_glassMonochromaticTreatment")))
  {
    v10 = +[UIColor clearColor];
  }

  else
  {
    v10 = +[UIColor tertiarySystemFillColor];
  }

  v11 = v10;

  return v11;
}

id __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = [*(a1 + 32) resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    v4 = [v5 resolvedColorWithTraitCollection:v3];
  }

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_7(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[UIColor secondarySystemFillColor];
  }

  v9 = v8;
  if ((a3 & 2) != 0)
  {
    v11 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v12 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_8;
  }

  else if ((a3 & 0x10) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v11 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v12 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_9;
  }

  else if ((a3 & 1) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v11 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v12 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_10;
  }

  else
  {
    if ((a3 & 0x14) != 0 && [v7 userInterfaceIdiom] == 6)
    {
      v10 = +[UIColor clearColor];
      goto LABEL_19;
    }

    v11 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v12 = __53___UIButtonConfigurationStyleBehaviors_grayBehaviors__block_invoke_11;
  }

  v11[2] = v12;
  v11[3] = &unk_1E70F3870;
  v13 = v9;
  v11[4] = v13;
  v14 = _Block_copy(v11);

  if (v14)
  {
    v15 = v14[2](v14, v7);

    goto LABEL_20;
  }

  v10 = v13;
LABEL_19:
  v15 = v10;
LABEL_20:

  return v15;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_7(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[UIColor tintColor];
  }

  v9 = v8;
  if ((a3 & 2) != 0)
  {
    v11 = &__block_literal_global_62;
    goto LABEL_17;
  }

  if ((a3 & 0x10) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v12 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v13 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_9;
    goto LABEL_16;
  }

  if ((a3 & 1) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v12 = v18;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v13 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_10;
LABEL_16:
    v12[2] = v13;
    v12[3] = &unk_1E70F3870;
    v14 = v9;
    v12[4] = v14;
    v11 = _Block_copy(v12);

    if (!v11)
    {
      v10 = v14;
      goto LABEL_19;
    }

LABEL_17:
    v15 = v11[2](v11, v7);

    goto LABEL_20;
  }

  if ((a3 & 0x14) == 0 || [v7 userInterfaceIdiom] != 6)
  {
    v12 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v13 = __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_11;
    goto LABEL_16;
  }

  v10 = +[UIColor clearColor];
LABEL_19:
  v15 = v10;
LABEL_20:

  return v15;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIColor secondarySystemFillColor];
  v4 = _colorByReducingAlpha(v3, v2, 0.75);

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_tintBehaviors__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = _tintBehaviorAlphaReduction(v3, v4, 0.5, 0.55);
  v6 = _colorByReducingAlpha(*(a1 + 32), v4, v5);

  return v6;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceIdiom] == 6)
  {
    v4 = [*(a1 + 32) resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = +[UIColor tertiaryLabelColor];
    v4 = [v5 resolvedColorWithTraitCollection:v3];
  }

  return v4;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_8(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v7 userInterfaceIdiom] == 6)
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor tintColor];
  }
  v8 = ;
  v9 = v8;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  if ((a3 & 2) != 0)
  {
    if ([v7 userInterfaceIdiom] != 6)
    {
      v15 = &__block_literal_global_75_0;
LABEL_21:
      v17 = v15[2](v15, v7);

      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if ((a3 & 0x10) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v12 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v13 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_10;
    goto LABEL_20;
  }

  if ((a3 & 1) != 0 && [v7 userInterfaceIdiom] != 6)
  {
    v12 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v13 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_11;
    goto LABEL_20;
  }

  if ((a3 & 0x14) != 0 && [v7 userInterfaceIdiom] == 6)
  {
LABEL_16:
    v14 = +[UIColor clearColor];
    goto LABEL_23;
  }

  v12 = v19;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v13 = __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_12;
LABEL_20:
  v12[2] = v13;
  v12[3] = &unk_1E70F3870;
  v16 = v11;
  v12[4] = v16;
  v15 = _Block_copy(v12);

  if (v15)
  {
    goto LABEL_21;
  }

  v14 = v16;
LABEL_23:
  v17 = v14;
LABEL_24:

  return v17;
}

id __53___UIButtonConfigurationStyleBehaviors_fillBehaviors__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIColor secondarySystemFillColor];
  v4 = _colorByReducingAlpha(v3, v2, 0.75);

  return v4;
}

@end