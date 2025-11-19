@interface SXTextResizer
- (double)preferredFontSizeForUsage:(void *)a3 contentSizeCategoryName:(uint64_t)a4 fontSize:;
- (id)initWithColumnLayout:(void *)a3 defaultTextStyle:(char)a4 fontScalingEnabled:;
- (uint64_t)resizeDropCapNumberOfLines:(uint64_t)result;
- (uint64_t)resizeTextSize:(void *)a3 fontResizingThreshold:(void *)a4 fontSizeConstant:(double)a5 contentSizeCategory:(double)a6 fontTextStyle:;
@end

@implementation SXTextResizer

uint64_t __76__SXTextResizer_preferredFontSizeForUsage_contentSizeCategoryName_fontSize___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DB890]);
  v1 = _MergedGlobals;
  _MergedGlobals = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)initWithColumnLayout:(void *)a3 defaultTextStyle:(char)a4 fontScalingEnabled:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SXTextResizer;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      *(a1 + 8) = a4;
    }
  }

  return a1;
}

- (uint64_t)resizeTextSize:(void *)a3 fontResizingThreshold:(void *)a4 fontSizeConstant:(double)a5 contentSizeCategory:(double)a6 fontTextStyle:
{
  v11 = a3;
  v12 = a4;
  if (a1)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v15 = *(a1 + 24);
      if ([v15 fontSize] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = 18;
      }

      else
      {
        v14 = [*(a1 + 24) fontSize];
      }
    }

    else
    {
      v14 = 18;
    }

    v16 = [SXComponentClassification classificationForComponentWithRole:3];
    v17 = a2;
    if (*(a1 + 8) == 1 && v14 * a5 < v17)
    {
      v19 = *(a1 + 16);
      [v19 constrainedViewportSize];
      v21 = v20 / [*(a1 + 16) layoutWidth];

      v22 = (a6 + v21 * (1.0 - a6)) * v17;
      v23 = llroundf(v22);
      v24 = 0.0;
      if (a5 > 1.0)
      {
        v25 = [v16 textRules];
        [v25 fontResizingTresholdFactor];
        v27 = v26;
        v28 = [v16 textRules];
        [v28 fontSizeConstant];
        v30 = v29;
        v31 = [v16 textRules];
        v32 = [v31 fontTextStyle];
        v24 = [(SXTextResizer *)a1 resizeTextSize:v14 fontResizingThreshold:v11 fontSizeConstant:v32 contentSizeCategory:v27 fontTextStyle:v30];
      }

      v33 = v24 * a5;
      if (v24 * a5 <= v23)
      {
        v33 = v23;
      }

      a2 = v33;
    }

    v34 = [(SXTextResizer *)a1 preferredFontSizeForUsage:v12 contentSizeCategoryName:v11 fontSize:a2];
    if (a5 > 1.0 && (*(a1 + 8) & 1) != 0)
    {
      v39 = [v16 textRules];
      [v39 fontResizingTresholdFactor];
      v41 = v40;
      v42 = [v16 textRules];
      [v42 fontSizeConstant];
      v44 = v43;
      v45 = [v16 textRules];
      v46 = [v45 fontTextStyle];
      v47 = [(SXTextResizer *)a1 resizeTextSize:v14 fontResizingThreshold:v11 fontSizeConstant:v46 contentSizeCategory:v41 fontTextStyle:v44];

      if (v47 * a5 >= v34)
      {
        v48 = v34;
      }

      else
      {
        v48 = v47 * a5;
      }

      v35 = v48;
      if (v47 * a5 <= a2)
      {
        v35 = a2;
      }
    }

    else
    {
      v35 = v34;
    }

    v36 = v35;
    [*(a1 + 16) contentScaleFactor];
    a1 = (v37 * v36);
  }

  return a1;
}

- (double)preferredFontSizeForUsage:(void *)a3 contentSizeCategoryName:(uint64_t)a4 fontSize:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    v10 = a4;
    if (UIContentSizeCategoryCompareToCategory(v8, *MEMORY[0x1E69DDC70]))
    {
      v17 = a4;
      CTFontDescriptorGetTextStyleSize();
      if (qword_1ECA383F8 != -1)
      {
        dispatch_once(&qword_1ECA383F8, &__block_literal_global_51);
      }

      v11 = [_MergedGlobals objectForKey:v7];
      v12 = v11;
      if (v11)
      {
        [v11 doubleValue];
      }

      else
      {
        CTFontDescriptorGetTextStyleSize();
        v14 = _MergedGlobals;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
        [v14 setObject:v15 forKey:v7];

        v13 = 0.0;
      }

      if (v13 > 0.0)
      {
        v10 = v17 / v13 * v10;
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (uint64_t)resizeDropCapNumberOfLines:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    [v4 constrainedViewportSize];
    v6 = v5 / [*(v3 + 16) layoutWidth];

    v7 = llround((v6 * 0.581 + 0.419) * a2);
    if (v7 >= 10)
    {
      v7 = 10;
    }

    if (v7 <= 2)
    {
      return 2;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

@end