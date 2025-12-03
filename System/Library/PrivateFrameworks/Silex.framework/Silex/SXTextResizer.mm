@interface SXTextResizer
- (double)preferredFontSizeForUsage:(void *)usage contentSizeCategoryName:(uint64_t)name fontSize:;
- (id)initWithColumnLayout:(void *)layout defaultTextStyle:(char)style fontScalingEnabled:;
- (uint64_t)resizeDropCapNumberOfLines:(uint64_t)result;
- (uint64_t)resizeTextSize:(void *)size fontResizingThreshold:(void *)threshold fontSizeConstant:(double)constant contentSizeCategory:(double)category fontTextStyle:;
@end

@implementation SXTextResizer

uint64_t __76__SXTextResizer_preferredFontSizeForUsage_contentSizeCategoryName_fontSize___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DB890]);
  v1 = _MergedGlobals;
  _MergedGlobals = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)initWithColumnLayout:(void *)layout defaultTextStyle:(char)style fontScalingEnabled:
{
  v8 = a2;
  layoutCopy = layout;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SXTextResizer;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(self + 3, layout);
      *(self + 8) = style;
    }
  }

  return self;
}

- (uint64_t)resizeTextSize:(void *)size fontResizingThreshold:(void *)threshold fontSizeConstant:(double)constant contentSizeCategory:(double)category fontTextStyle:
{
  sizeCopy = size;
  thresholdCopy = threshold;
  if (self)
  {
    v13 = *(self + 24);
    if (v13)
    {
      v15 = *(self + 24);
      if ([v15 fontSize] == 0x7FFFFFFFFFFFFFFFLL)
      {
        fontSize = 18;
      }

      else
      {
        fontSize = [*(self + 24) fontSize];
      }
    }

    else
    {
      fontSize = 18;
    }

    v16 = [SXComponentClassification classificationForComponentWithRole:3];
    v17 = a2;
    if (*(self + 8) == 1 && fontSize * constant < v17)
    {
      v19 = *(self + 16);
      [v19 constrainedViewportSize];
      v21 = v20 / [*(self + 16) layoutWidth];

      v22 = (category + v21 * (1.0 - category)) * v17;
      v23 = llroundf(v22);
      v24 = 0.0;
      if (constant > 1.0)
      {
        textRules = [v16 textRules];
        [textRules fontResizingTresholdFactor];
        v27 = v26;
        textRules2 = [v16 textRules];
        [textRules2 fontSizeConstant];
        v30 = v29;
        textRules3 = [v16 textRules];
        fontTextStyle = [textRules3 fontTextStyle];
        v24 = [(SXTextResizer *)self resizeTextSize:fontSize fontResizingThreshold:sizeCopy fontSizeConstant:fontTextStyle contentSizeCategory:v27 fontTextStyle:v30];
      }

      v33 = v24 * constant;
      if (v24 * constant <= v23)
      {
        v33 = v23;
      }

      a2 = v33;
    }

    v34 = [(SXTextResizer *)self preferredFontSizeForUsage:thresholdCopy contentSizeCategoryName:sizeCopy fontSize:a2];
    if (constant > 1.0 && (*(self + 8) & 1) != 0)
    {
      textRules4 = [v16 textRules];
      [textRules4 fontResizingTresholdFactor];
      v41 = v40;
      textRules5 = [v16 textRules];
      [textRules5 fontSizeConstant];
      v44 = v43;
      textRules6 = [v16 textRules];
      fontTextStyle2 = [textRules6 fontTextStyle];
      v47 = [(SXTextResizer *)self resizeTextSize:fontSize fontResizingThreshold:sizeCopy fontSizeConstant:fontTextStyle2 contentSizeCategory:v41 fontTextStyle:v44];

      if (v47 * constant >= v34)
      {
        v48 = v34;
      }

      else
      {
        v48 = v47 * constant;
      }

      v35 = v48;
      if (v47 * constant <= a2)
      {
        v35 = a2;
      }
    }

    else
    {
      v35 = v34;
    }

    v36 = v35;
    [*(self + 16) contentScaleFactor];
    self = (v37 * v36);
  }

  return self;
}

- (double)preferredFontSizeForUsage:(void *)usage contentSizeCategoryName:(uint64_t)name fontSize:
{
  v7 = a2;
  usageCopy = usage;
  v9 = usageCopy;
  if (self)
  {
    nameCopy = name;
    if (UIContentSizeCategoryCompareToCategory(usageCopy, *MEMORY[0x1E69DDC70]))
    {
      nameCopy2 = name;
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
        nameCopy = nameCopy2 / v13 * nameCopy;
      }
    }
  }

  else
  {
    nameCopy = 0.0;
  }

  return nameCopy;
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