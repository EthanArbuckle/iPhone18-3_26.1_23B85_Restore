@interface SearchUIFallbackPeekViewController
- (SearchUIFallbackPeekViewController)initWithDetailedRowModel:(id)a3;
@end

@implementation SearchUIFallbackPeekViewController

- (SearchUIFallbackPeekViewController)initWithDetailedRowModel:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = SearchUIFallbackPeekViewController;
  v5 = [(SearchUIFallbackPeekViewController *)&v69 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v7 = [(SearchUIFallbackPeekViewController *)v5 view];
    [v7 setBackgroundColor:v6];

    v8 = [(SearchUIFallbackPeekViewController *)v5 view];
    v9 = [v8 tlks_screen];
    [v9 _referenceBounds];
    Width = CGRectGetWidth(v73);

    v11 = Width / (Width + -32.0);
    v59 = objc_opt_new();
    v12 = [v4 identifyingResult];
    v57 = v5;
    if (v12)
    {
      v13 = [v4 identifyingResult];
      [SearchUIAppIconImage appIconForResult:v13 variant:3];
    }

    else
    {
      v13 = [v4 applicationBundleIdentifier];
      [SearchUIAppIconImage appIconForBundleIdentifier:v13 variant:3];
    }
    v14 = ;

    [v14 size];
    v16 = ceil(v11 * v15);
    [v14 size];
    [v14 setSize:{v16, ceil(v11 * v17)}];
    v56 = v14;
    v55 = [SearchUIImageView imageViewWithImage:v14];
    [v59 addObject:?];
    v18 = objc_opt_new();
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __63__SearchUIFallbackPeekViewController_initWithDetailedRowModel___block_invoke;
    v65[3] = &unk_1E85B2900;
    v19 = v18;
    v66 = v19;
    v68 = 0x4031000000000000;
    v58 = v4;
    v20 = v4;
    v67 = v20;
    [v19 performBatchUpdates:v65];
    [v59 addObject:v19];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = [v20 details];
    v21 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v62;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v61 + 1) + 8 * i);
          v26 = objc_alloc(MEMORY[0x1E69D91A0]);
          v27 = [v20 details];
          v28 = [v27 firstObject];
          v29 = [v26 initWithProminence:v25 != v28];

          v30 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
          [v29 setFont:v30];

          v31 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v25];
          if ([v31 hasContent])
          {
            [v31 setMaxLines:0];
            [v29 setRichText:v31];
            [v59 addObject:v29];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v22);
    }

    v32 = [v59 lastObject];
    LODWORD(v33) = 1132068864;
    [v32 setContentCompressionResistancePriority:1 forAxis:v33];
    v34 = [v20 leadingImage];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v35 = [v34 bundleIdentifier];
    }

    else
    {
      v35 = 0;
    }

    v5 = v57;
    if ([v34 isEqual:v56])
    {
      goto LABEL_28;
    }

    v36 = [v56 bundleIdentifier];
    v37 = [v35 isEqual:v36];

    if (!v34 || (v37 & 1) != 0)
    {
      goto LABEL_28;
    }

    v38 = [v20 fallbackImage];
    if (v34 != v38)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
LABEL_28:
        v44 = [objc_alloc(MEMORY[0x1E698B730]) initWithArrangedSubviews:v59];
        v45 = v11 * 21.0;
        [v44 setSpacing:ceilf(v45)];
        [v44 setBaselineRelativeArrangement:1];
        v46 = v11 * 32.0;
        [v44 setCustomSpacing:v55 afterView:ceilf(v46)];
        v47 = v11 * 16.0;
        [v44 setCustomSpacing:v32 afterView:ceilf(v47)];
        [v44 setAxis:1];
        [v44 setAlignment:1];
        v48 = v11 * 23.0;
        v49 = ceilf(v48);
        v50 = objc_alloc(MEMORY[0x1E698B718]);
        v70 = v44;
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
        v52 = [v50 initWithArrangedSubviews:v51];

        [v52 setVerticalAlignment:1];
        [v52 setLayoutMarginsRelativeArrangement:1];
        [v52 setLayoutMargins:{v49, v49, v49, v49}];
        v53 = [(SearchUIFallbackPeekViewController *)v57 view];
        [v53 addSubview:v52];

        [SearchUIAutoLayout fillContainerWithView:v52];
        v4 = v58;
        goto LABEL_29;
      }

      v38 = [SearchUIImageView imageViewWithImage:v34];
      [v34 size];
      if (v41 == *MEMORY[0x1E695F060] && v40 == *(MEMORY[0x1E695F060] + 8))
      {
        [MEMORY[0x1E69D91A8] maxThumbnailSize];
        v43 = v11 * v42;
        [v38 setMinimumLayoutSize:{v43, v43}];
        [v38 setMaximumLayoutSize:{v43, v43}];
      }

      [v38 setMaximumLayoutSize:{1.79769313e308, v11 * 120.0}];
      [v59 addObject:v38];
    }

    goto LABEL_28;
  }

LABEL_29:

  return v5;
}

void __63__SearchUIFallbackPeekViewController_initWithDetailedRowModel___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:*(a1 + 48) weight:*MEMORY[0x1E69DB980]];
  [*(a1 + 32) setFont:v2];

  v3 = [*(a1 + 40) title];
  v4 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v3];

  [v4 setMaxLines:0];
  [*(a1 + 32) setRichText:v4];
}

@end