@interface UIView(VideosUI)
- (BOOL)vui_shouldRecomputeCachedSizeThatFits:()VideosUI previousTargetSize:previousTraitCollection:newTargetSize:;
- (double)bottomMarginWithBaselineMargin:()VideosUI maximumContentSizeCategory:;
- (double)topMarginWithBaselineMargin:()VideosUI maximumContentSizeCategory:;
- (double)vui_sizeThatFits:()VideosUI layout:withSizeCalculation:;
- (uint64_t)vui_sizeThatFits:()VideosUI layout:;
@end

@implementation UIView(VideosUI)

- (double)topMarginWithBaselineMargin:()VideosUI maximumContentSizeCategory:
{
  v3 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [self vuiTraitCollection];
  [v3 scaleContentSizeValue:vuiTraitCollection forTraitCollection:a2];
  v6 = v5;

  return v6;
}

- (double)bottomMarginWithBaselineMargin:()VideosUI maximumContentSizeCategory:
{
  v3 = MEMORY[0x1E69DF6D0];
  vuiTraitCollection = [self vuiTraitCollection];
  [v3 scaleContentSizeValue:vuiTraitCollection forTraitCollection:a2];
  v6 = v5;

  return v6;
}

- (BOOL)vui_shouldRecomputeCachedSizeThatFits:()VideosUI previousTargetSize:previousTraitCollection:newTargetSize:
{
  v16 = a9;
  v17 = a3 == *(MEMORY[0x1E695F060] + 8) && a2 == *MEMORY[0x1E695F060];
  vuiTraitCollection = [self vuiTraitCollection];
  v19 = 1;
  if (v16 && !v17)
  {
    legibilityWeight = [v16 legibilityWeight];
    if (legibilityWeight != [vuiTraitCollection legibilityWeight])
    {
      v19 = 1;
      goto LABEL_20;
    }

    if (a4 == a6 && a5 == a7)
    {
      goto LABEL_9;
    }

    if (a6 > a4)
    {
      v21 = a2 < a4;
      goto LABEL_17;
    }

    if (a6 < a4)
    {
      v21 = a2 < a6;
      goto LABEL_17;
    }

    if (a7 == 0.0)
    {
LABEL_16:
      v21 = a3 < a5;
LABEL_17:
      v19 = !v21;
      goto LABEL_20;
    }

    if (a5 != 0.0)
    {
      if (a7 > a5)
      {
        goto LABEL_16;
      }

      if (a7 >= a5)
      {
LABEL_9:
        v19 = 0;
        goto LABEL_20;
      }
    }

    v19 = a3 > a7;
  }

LABEL_20:

  return v19;
}

- (uint64_t)vui_sizeThatFits:()VideosUI layout:
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__UIView_VideosUI__vui_sizeThatFits_layout___block_invoke;
  v4[3] = &unk_1E872EB88;
  v4[4] = self;
  return [self vui_sizeThatFits:a3 layout:v4 withSizeCalculation:?];
}

- (double)vui_sizeThatFits:()VideosUI layout:withSizeCalculation:
{
  v8 = a6;
  v9 = a5;
  [v9 minWidth];
  v11 = v10;
  [v9 minHeight];
  [v9 maxWidth];
  v13 = v12;
  [v9 maxHeight];
  v15 = v14;
  [v9 width];
  selfCopy3 = v16;
  [v9 height];
  v19 = v18;

  if (selfCopy3 <= 0.0 || v19 <= 0.0)
  {
    v20 = selfCopy3;
    selfCopy2 = selfCopy3;
    if (selfCopy3 <= 0.0)
    {
      if (self > 0.0 && (self < v13 || v13 <= 0.0))
      {
        selfCopy3 = self;
        v20 = v11;
        selfCopy2 = self;
      }

      else
      {
        if (v13 <= 0.0)
        {
          selfCopy3 = self;
        }

        else
        {
          selfCopy3 = v13;
        }

        v20 = v11;
        selfCopy2 = v13;
      }
    }

    if (v19 <= 0.0)
    {
      if (a2 > 0.0 && (a2 < v15 || v15 <= 0.0))
      {
        v19 = a2;
      }

      else if (v15 > 0.0)
      {
        v19 = v15;
      }

      else
      {
        v19 = a2;
      }
    }

    v22 = v8[2](v8, selfCopy3, v19);
    if (v22 <= selfCopy2 || selfCopy2 <= 0.0)
    {
      v24 = v22;
    }

    else
    {
      v24 = selfCopy2;
    }

    if (v22 >= v20)
    {
      selfCopy3 = v24;
    }

    else
    {
      selfCopy3 = v20;
    }
  }

  return selfCopy3;
}

@end