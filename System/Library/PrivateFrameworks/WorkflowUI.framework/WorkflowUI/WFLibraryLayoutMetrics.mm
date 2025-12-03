@interface WFLibraryLayoutMetrics
+ (id)metricsCompatibleWithTraitCollection:(id)collection viewWidth:(double)width layoutMargins:(UIEdgeInsets)margins needsTopPadding:(BOOL)padding;
+ (id)workflowTitleFontCompatibleWithTraitCollection:(id)collection;
+ (id)workflowTitleFontInDefaultSize;
- (CGSize)workflowGlyphSize;
- (CGSize)workflowSize;
- (UIEdgeInsets)scaledEdgeInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)sectionInset;
- (UIEdgeInsets)workflowContentEdgeInsets;
- (WFLibraryLayoutMetrics)initWithTraitCollection:(id)collection viewWidth:(double)width layoutMargins:(UIEdgeInsets)margins needsTopPadding:(BOOL)padding;
- (double)capEdgeInsets:(double)insets min:(double)min max:(double)max;
- (double)scaledValueForValue:(double)value;
- (double)workflowButtonDimension;
- (double)workflowGlyphDimension;
@end

@implementation WFLibraryLayoutMetrics

+ (id)workflowTitleFontInDefaultSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WFLibraryLayoutMetrics_workflowTitleFontInDefaultSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (workflowTitleFontInDefaultSize_onceToken != -1)
  {
    dispatch_once(&workflowTitleFontInDefaultSize_onceToken, block);
  }

  v2 = workflowTitleFontInDefaultSize_font;

  return v2;
}

void __56__WFLibraryLayoutMetrics_workflowTitleFontInDefaultSize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76838]];
  v2 = [v1 workflowTitleFontCompatibleWithTraitCollection:v4];
  v3 = workflowTitleFontInDefaultSize_font;
  workflowTitleFontInDefaultSize_font = v2;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)workflowSize
{
  width = self->_workflowSize.width;
  height = self->_workflowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)workflowGlyphDimension
{
  if (_UISolariumEnabled())
  {
    v3 = 26.0;
  }

  else
  {
    v3 = 29.0;
  }

  [(WFLibraryLayoutMetrics *)self scaledValueForValue:v3];
  if (v3 >= result)
  {
    result = v3;
  }

  if (result > 40.0)
  {
    return 40.0;
  }

  return result;
}

- (UIEdgeInsets)workflowContentEdgeInsets
{
  _UISolariumEnabled();
  WFConvertEdgeInsetsToRTLIfNeeded();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WFConvertEdgeInsetsToRTLIfNeeded();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(WFLibraryLayoutMetrics *)self scaledEdgeInsets:v4, v6, v8, v10];
  [(WFLibraryLayoutMetrics *)self capEdgeInsets:v12 min:v14 max:v16, v18];
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (double)capEdgeInsets:(double)insets min:(double)min max:(double)max
{
  if (a9 < result)
  {
    result = a9;
  }

  if (max >= result)
  {
    return max;
  }

  return result;
}

- (UIEdgeInsets)scaledEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  [(WFLibraryLayoutMetrics *)self scaledValueForValue:insets.top];
  v8 = v7;
  [(WFLibraryLayoutMetrics *)self scaledValueForValue:left];
  v10 = v9;
  [(WFLibraryLayoutMetrics *)self scaledValueForValue:bottom];
  v12 = v11;
  [(WFLibraryLayoutMetrics *)self scaledValueForValue:right];
  v14 = v13;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.right = v14;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (double)scaledValueForValue:(double)value
{
  workflowTitleFont = [(WFLibraryLayoutMetrics *)self workflowTitleFont];
  workflowTitleFontInDefaultSize = [objc_opt_class() workflowTitleFontInDefaultSize];
  [workflowTitleFont wf_scaledValueForValue:workflowTitleFontInDefaultSize baseFont:value];
  v7 = v6;

  return v7;
}

- (double)workflowButtonDimension
{
  [(WFLibraryLayoutMetrics *)self scaledValueForValue:29.0];
  result = fmax(v2, 29.0);
  if (result > 40.0)
  {
    return 40.0;
  }

  return result;
}

- (CGSize)workflowGlyphSize
{
  [(WFLibraryLayoutMetrics *)self workflowGlyphDimension];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (WFLibraryLayoutMetrics)initWithTraitCollection:(id)collection viewWidth:(double)width layoutMargins:(UIEdgeInsets)margins needsTopPadding:(BOOL)padding
{
  paddingCopy = padding;
  collectionCopy = collection;
  v49.receiver = self;
  v49.super_class = WFLibraryLayoutMetrics;
  v10 = [(WFLibraryLayoutMetrics *)&v49 init];
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = [objc_opt_class() workflowTitleFontCompatibleWithTraitCollection:collectionCopy];
  workflowTitleFont = v10->_workflowTitleFont;
  v10->_workflowTitleFont = v11;

  v13 = [objc_opt_class() workflowSubtitleFontCompatibleWithTraitCollection:collectionCopy];
  workflowSubtitleFont = v10->_workflowSubtitleFont;
  v10->_workflowSubtitleFont = v13;

  WFConvertEdgeInsetsToRTLIfNeeded();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21 + 15.0;
  v23 = [collectionCopy verticalSizeClass] == 1 || paddingCopy;
  v24 = v16 + 15.0;
  if (!v23)
  {
    v24 = v16;
  }

  v10->_sectionInset.top = v24;
  v10->_sectionInset.left = v18;
  v10->_sectionInset.bottom = v22;
  v10->_sectionInset.right = v20;
  v25 = _UISolariumEnabled();
  if (width <= 1500.0)
  {
    if (width > 1205.0)
    {
      *&v26 = 16.0;
      v48 = v26;
      v27 = 6;
      goto LABEL_16;
    }

    if (width > 972.0)
    {
      *&v26 = 16.0;
      v48 = v26;
      v27 = 5;
      goto LABEL_16;
    }

    if (width > 694.0)
    {
      *&v26 = 16.0;
      v48 = v26;
      v27 = 4;
      goto LABEL_16;
    }

    v46 = 440.0;
    if (v25)
    {
      v46 = 534.0;
    }

    v47 = v46 < width;
    *&v26 = 10.0;
    if (v47)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    if (v47)
    {
      *&v26 = 16.0;
    }
  }

  else
  {
    v27 = (width / 215.0);
    *&v26 = 16.0;
  }

  v48 = v26;
LABEL_16:
  v10->_itemsPerBanner = 1;
  v28 = *MEMORY[0x277D76838];
  mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
  applicationOrNil = [mEMORY[0x277CFC248] applicationOrNil];

  if (applicationOrNil)
  {
    preferredContentSizeCategory = [applicationOrNil preferredContentSizeCategory];

    v28 = preferredContentSizeCategory;
  }

  if (UIContentSizeCategoryIsAccessibilityCategory(v28))
  {
    --v27;
    v10->_itemsPerBanner = 1;
  }

  *&v32.f64[0] = v48;
  v32.f64[1] = *&v48 + 1.0;
  *&v10->_interitemSpacing = vcvtq_f64_f32(vrndm_f32(vcvt_f32_f64(v32)));
  v10->_itemsPerRow = v27;
  v33 = _UISolariumEnabled();
  v34 = 122.0;
  if (v33)
  {
    v34 = 112.0;
  }

  v35 = floorf(v34);
  v36 = 10.0;
  if (([v28 isEqualToString:{*MEMORY[0x277D767F8], v48}] & 1) == 0 && (objc_msgSend(v28, "isEqualToString:", *MEMORY[0x277D767F0]) & 1) == 0)
  {
    v36 = 18.0;
    if (([v28 isEqualToString:*MEMORY[0x277D76800]] & 1) == 0)
    {
      v36 = 26.0;
      if (([v28 isEqualToString:*MEMORY[0x277D76808]] & 1) == 0)
      {
        v36 = 3.0;
        if (([v28 isEqualToString:*MEMORY[0x277D76840]] & 1) == 0)
        {
          v36 = 4.0;
          if (([v28 isEqualToString:*MEMORY[0x277D76858]] & 1) == 0)
          {
            if ([v28 isEqualToString:*MEMORY[0x277D76830]])
            {
              v36 = 15.0;
            }

            else
            {
              v36 = 0.0;
            }
          }
        }
      }
    }
  }

  v37 = floor((width - v18 - v20 - (v27 - 1) * v10->_interitemSpacing) / v27);
  if (v37 >= 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  [(WFLibraryLayoutMetrics *)v10 scaledValueForValue:v36 + v35];
  v10->_workflowSize.width = v38;
  v10->_workflowSize.height = v39;
  materialWorkflowConfiguration = [MEMORY[0x277D7D750] materialWorkflowConfiguration];
  [materialWorkflowConfiguration cornerRadius];
  [(WFLibraryLayoutMetrics *)v10 scaledValueForValue:?];
  if (v41 > 33.0)
  {
    v41 = 33.0;
  }

  [materialWorkflowConfiguration setCornerRadius:v41];
  [materialWorkflowConfiguration cornerRadius];
  v10->_cornerRadius = v42;
  floatingViewConfiguration = v10->_floatingViewConfiguration;
  v10->_floatingViewConfiguration = materialWorkflowConfiguration;

  v44 = v10;
LABEL_37:

  return v10;
}

+ (id)workflowTitleFontCompatibleWithTraitCollection:(id)collection
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:collection];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)metricsCompatibleWithTraitCollection:(id)collection viewWidth:(double)width layoutMargins:(UIEdgeInsets)margins needsTopPadding:(BOOL)padding
{
  paddingCopy = padding;
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  collectionCopy = collection;
  v14 = [[self alloc] initWithTraitCollection:collectionCopy viewWidth:paddingCopy layoutMargins:width needsTopPadding:{top, left, bottom, right}];

  return v14;
}

@end