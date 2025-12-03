@interface TLKSimpleRowView
+ (void)applyText:(id)text toLabel:(id)label;
- (BOOL)hasSubtitles;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (double)widthOfColumnAtIndex:(unint64_t)index;
- (id)bottomRowViews;
- (id)fontForTextInLabel:(id)label;
- (id)gridOfAllViews;
- (id)leadingSubtitleLabelString;
- (id)leadingTextView;
- (id)leadingTitleLabelFont;
- (id)leadingTitleLabelString;
- (id)setupContentView;
- (id)stringForLabel:(id)label;
- (id)topRowViews;
- (id)trailingSubtitleLabelFont;
- (id)trailingSubtitleLabelString;
- (id)trailingTitleLabelFont;
- (id)trailingTitleLabelString;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)observedPropertiesChanged;
- (void)setLeadingImage:(id)image;
- (void)setLeadingSubtitle:(id)subtitle;
- (void)setLeadingTitle:(id)title;
- (void)setTrailingImage:(id)image;
- (void)setTrailingSubtitle:(id)subtitle;
- (void)setTrailingTitle:(id)title;
@end

@implementation TLKSimpleRowView

- (id)setupContentView
{
  v3 = objc_alloc(MEMORY[0x1E698B728]);
  gridOfAllViews = [(TLKSimpleRowView *)self gridOfAllViews];
  v5 = [v3 initWithArrangedSubviewRows:gridOfAllViews];

  [v5 setColumnSpacing:10.0];
  [v5 setDelegate:self];
  [v5 setBaselineRelativeArrangement:1];
  [objc_opt_class() defaultLayoutMargins];
  v7 = v6;
  [objc_opt_class() defaultLayoutMargins];
  [v5 setLayoutMargins:{0.0, v7, 0.0}];

  return v5;
}

- (id)gridOfAllViews
{
  v41[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(TLKSimpleRowView *)self setLeadingImageView:v3];

  leadingImageView = [(TLKSimpleRowView *)self leadingImageView];
  [leadingImageView setCustomAlignmentRectInsets:{-10.0, 0.0, -10.0, 0.0}];

  leadingImageView2 = [(TLKSimpleRowView *)self leadingImageView];
  [TLKLayoutUtilities requireIntrinsicSizeForView:leadingImageView2];

  v6 = objc_opt_new();
  [(TLKSimpleRowView *)self setLeadingTitleLabel:v6];

  leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
  LODWORD(v8) = 1144750080;
  [leadingTitleLabel setContentHuggingPriority:1 forAxis:v8];

  leadingTitleLabel2 = [(TLKSimpleRowView *)self leadingTitleLabel];
  LODWORD(v10) = 1144750080;
  [leadingTitleLabel2 setContentCompressionResistancePriority:0 forAxis:v10];

  v11 = objc_opt_new();
  [(TLKSimpleRowView *)self setLeadingSubtitleLabel:v11];

  if (+[TLKLayoutUtilities isLTR])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_new();
  [(TLKSimpleRowView *)self setTrailingTitleLabel:v13];

  trailingTitleLabel = [(TLKSimpleRowView *)self trailingTitleLabel];
  [trailingTitleLabel setTextAlignment:v12];

  trailingTitleLabel2 = [(TLKSimpleRowView *)self trailingTitleLabel];
  LODWORD(v16) = 1144750080;
  [trailingTitleLabel2 setContentHuggingPriority:0 forAxis:v16];

  trailingTitleLabel3 = [(TLKSimpleRowView *)self trailingTitleLabel];
  LODWORD(v18) = 1144750080;
  [trailingTitleLabel3 setContentHuggingPriority:1 forAxis:v18];

  v19 = +[TLKLabel secondaryLabel];
  [(TLKSimpleRowView *)self setTrailingSubtitleLabel:v19];

  trailingSubtitleLabel = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setTextAlignment:v12];

  trailingSubtitleLabel2 = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  LODWORD(v22) = 1144750080;
  [trailingSubtitleLabel2 setContentHuggingPriority:0 forAxis:v22];

  trailingSubtitleLabel3 = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  LODWORD(v24) = 1144750080;
  [trailingSubtitleLabel3 setContentCompressionResistancePriority:0 forAxis:v24];

  v25 = objc_opt_new();
  [(TLKSimpleRowView *)self setTrailingImageView:v25];

  trailingImageView = [(TLKSimpleRowView *)self trailingImageView];
  [TLKLayoutUtilities requireIntrinsicSizeForView:trailingImageView];

  leadingImageView3 = [(TLKSimpleRowView *)self leadingImageView];
  v40[0] = leadingImageView3;
  leadingTitleLabel3 = [(TLKSimpleRowView *)self leadingTitleLabel];
  v40[1] = leadingTitleLabel3;
  trailingTitleLabel4 = [(TLKSimpleRowView *)self trailingTitleLabel];
  v40[2] = trailingTitleLabel4;
  trailingImageView2 = [(TLKSimpleRowView *)self trailingImageView];
  v40[3] = trailingImageView2;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v41[0] = v29;
  leadingImageView4 = [(TLKSimpleRowView *)self leadingImageView];
  v39[0] = leadingImageView4;
  leadingSubtitleLabel = [(TLKSimpleRowView *)self leadingSubtitleLabel];
  v39[1] = leadingSubtitleLabel;
  trailingSubtitleLabel4 = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  v39[2] = trailingSubtitleLabel4;
  trailingImageView3 = [(TLKSimpleRowView *)self trailingImageView];
  v39[3] = trailingImageView3;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v41[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];

  return v35;
}

- (void)setLeadingTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = titleCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_leadingTitle;
      v7 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_leadingTitle, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingTitle setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_leadingTitle;
      v13 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setLeadingSubtitle:(id)subtitle
{
  v34 = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingSubtitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = subtitleCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_leadingSubtitle;
      v7 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      subtitleCopy = v23;
    }
  }

  objc_storeStrong(&self->_leadingSubtitle, subtitle);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingSubtitle setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_leadingSubtitle;
      v13 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTrailingTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = titleCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_trailingTitle;
      v7 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_trailingTitle, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingTitle setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_trailingTitle;
      v13 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTrailingSubtitle:(id)subtitle
{
  v34 = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingSubtitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = subtitleCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_trailingSubtitle;
      v7 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      subtitleCopy = v23;
    }
  }

  objc_storeStrong(&self->_trailingSubtitle, subtitle);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingSubtitle setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_trailingSubtitle;
      v13 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTrailingImage:(id)image
{
  imageCopy = image;
  if (self->_trailingImage != imageCopy)
  {
    objc_storeStrong(&self->_trailingImage, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setLeadingImage:(id)image
{
  imageCopy = image;
  if (self->_leadingImage != imageCopy)
  {
    objc_storeStrong(&self->_leadingImage, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  contentView = [(TLKView *)self contentView];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__TLKSimpleRowView_observedPropertiesChanged__block_invoke;
  v4[3] = &unk_1E7FD8E98;
  v4[4] = self;
  [contentView performBatchUpdates:v4];
}

void __45__TLKSimpleRowView_observedPropertiesChanged__block_invoke(uint64_t a1)
{
  v170[2] = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) leadingImage];
  [v2 size];
  v4 = v3;
  v5 = v3 <= 18.0;

  if (([*v1 hasSubtitles] & v5) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  v7 = [*v1 leadingImage];
  v8 = [*v1 leadingImageView];
  [v8 setTlkImage:v7];

  v9 = [*v1 contentView];
  v10 = [v9 columnAtIndex:0];

  v11 = [*v1 contentView];
  v12 = [v11 columnAtIndex:3];

  v13 = [*v1 leadingImage];
  v168 = v10;
  [v10 setHidden:v13 == 0];

  v14 = [*v1 contentView];
  v15 = [*v1 leadingImageView];
  [v14 setAlignment:v6 forView:v15 inAxis:1];

  v16 = [*v1 trailingImage];
  v17 = [*v1 trailingImageView];
  [v17 setTlkImage:v16];

  v18 = [*v1 trailingImage];
  v167 = v12;
  [v12 setHidden:v18 == 0];

  v19 = [*v1 contentView];
  v20 = [*v1 trailingImageView];
  [v19 setAlignment:v6 forView:v20 inAxis:1];

  LODWORD(v19) = [*v1 hasSubtitles];
  v21 = [*v1 contentView];
  v22 = [v21 rowAtIndex:1];
  [v22 setHidden:v19 ^ 1];

  v23 = [*v1 leadingSubtitle];
  v24 = *v1;
  if (v23)
  {
    [v24 leadingSubtitleLabel];
  }

  else
  {
    [v24 leadingTitleLabel];
  }
  v25 = ;

  v26 = [*v1 contentView];
  [v26 removeColumnAtIndex:1];

  v27 = [*v1 contentView];
  v28 = [*v1 leadingTitleLabel];
  v170[0] = v28;
  v170[1] = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:2];
  v30 = [v27 insertColumnAtIndex:1 withArrangedSubviews:v29];

  v165 = v30;
  [v30 setSpacingAfter:16.0];
  v31 = [*v1 trailingSubtitle];
  v32 = *v1;
  if (v31)
  {
    v33 = [v32 trailingSubtitle];
    v34 = [v33 hasContent];
    v35 = *v1;
    if (v34)
    {
      [v35 trailingSubtitleLabel];
    }

    else
    {
      [v35 leadingSubtitleLabel];
    }
    v36 = ;
  }

  else
  {
    v36 = [v32 trailingTitleLabel];
  }

  v37 = [*v1 contentView];
  [v37 removeColumnAtIndex:2];

  v38 = [*v1 contentView];
  v39 = [*v1 trailingTitleLabel];
  v169[0] = v39;
  v169[1] = v36;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
  v41 = [v38 insertColumnAtIndex:2 withArrangedSubviews:v40];

  [v41 setAlignment:4];
  v42 = [*v1 leadingImage];
  if (v42)
  {
    goto LABEL_14;
  }

  v46 = [*v1 leadingTitle];
  if (!v46)
  {
    goto LABEL_15;
  }

  v42 = v46;
  v47 = [*v1 trailingTitle];
  if (!v47)
  {
    goto LABEL_14;
  }

  v48 = v47;
  v49 = [*v1 trailingImage];
  if (v49)
  {

LABEL_14:
    goto LABEL_15;
  }

  v70 = [*v1 hasSubtitles];

  if ((v70 & 1) == 0)
  {
    v45 = 1;
    goto LABEL_26;
  }

LABEL_15:
  v43 = [*v1 leadingTitle];
  if (v43)
  {
    v44 = [*v1 leadingSubtitle];
    if (v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = 3;
    }
  }

  else
  {
    v45 = 3;
  }

LABEL_26:
  v50 = [*v1 contentView];
  v51 = [*v1 leadingTitleLabel];
  [v50 setAlignment:v45 forView:v51 inAxis:1];

  v52 = [*v1 leadingSubtitleLabel];

  if (v25 == v52)
  {
    v53 = [*v1 contentView];
    v54 = [*v1 leadingSubtitleLabel];
    [v53 setAlignment:v45 forView:v54 inAxis:1];
  }

  v55 = [*v1 trailingTitle];
  if (v55)
  {
    v56 = [*v1 trailingSubtitle];
    if (v56)
    {
      v57 = 1;
    }

    else
    {
      v57 = 3;
    }
  }

  else
  {
    v57 = 3;
  }

  v58 = [*v1 contentView];
  v59 = [*v1 trailingTitleLabel];
  [v58 setAlignment:v57 forView:v59 inAxis:1];

  v60 = [*v1 trailingSubtitleLabel];

  if (v36 == v60)
  {
    v61 = [*v1 contentView];
    v62 = [*v1 trailingSubtitleLabel];
    [v61 setAlignment:v57 forView:v62 inAxis:1];
  }

  v63 = [*v1 trailingTitle];
  if (v63)
  {
    [v41 setHidden:0];
  }

  else
  {
    v64 = [*v1 trailingSubtitle];
    [v41 setHidden:v64 == 0];
  }

  v65 = [*v1 leadingImage];
  v164 = v41;
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v67 = [*v1 leadingTitle];
    if (v67)
    {
      v68 = [*v1 trailingTitle];
      if (v68)
      {
        v66 = 0;
      }

      else
      {
        v69 = [*v1 trailingSubtitle];
        if (v69)
        {
          v66 = 0;
        }

        else
        {
          v71 = [*v1 trailingImage];
          [v71 size];
          if (v73 == 28.0 && v72 == 28.0)
          {
            v66 = 1;
          }

          else
          {
            v74 = [*v1 trailingImage];
            if ([v74 isTemplate])
            {
              v162 = [*v1 trailingImage];
              [v162 size];
              if (v75 <= 28.0)
              {
                v66 = 1;
              }

              else
              {
                [*v1 trailingImage];
                v76 = v161 = v74;
                [v76 size];
                v66 = v77 <= 28.0;

                v74 = v161;
              }
            }

            else
            {
              v66 = 0;
            }
          }
        }
      }
    }

    else
    {
      v66 = 0;
    }
  }

  v78 = [*v1 leadingTitle];
  v166 = v25;
  if (v78)
  {
    v79 = [*v1 leadingSubtitle];
    if (v79)
    {
      v80 = [*v1 trailingTitle];
      if (v80)
      {
        v81 = 0;
      }

      else
      {
        v82 = [*v1 trailingSubtitle];
        if (v82)
        {
          v81 = 0;
        }

        else
        {
          v83 = [*v1 leadingImage];
          if (v83)
          {
            v84 = [*v1 trailingImage];
            v81 = v4 <= 18.0 && v84 == 0;
          }

          else
          {
            v81 = 0;
          }
        }
      }
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    v81 = 0;
  }

  if (v66)
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:*v1 forView:-7.5];
    v87 = v86;
    v88 = 0.0;
    v89 = -7.0;
    v90 = 0.0;
  }

  else
  {
    v78 = [*v1 leadingImageView];
    [v78 customAlignmentRectInsets];
    v87 = v91;
    v88 = v92;
    v89 = v93;
    v90 = v94;
  }

  v95 = [*v1 trailingImageView];
  [v95 setCustomAlignmentRectInsets:{v87, v88, v89, v90}];

  if (!v66)
  {
  }

  v96 = [*v1 leadingImage];
  v159 = v36;
  if (v96)
  {
    v97 = 1;
  }

  else
  {
    v98 = [*v1 trailingImage];
    v97 = v98 != 0;
  }

  v99 = MEMORY[0x1E69DDCF8];
  v100 = MEMORY[0x1E69DDD80];
  v101 = MEMORY[0x1E69DDD28];
  if (v66)
  {
    v102 = MEMORY[0x1E69DDCF8];
    v103 = MEMORY[0x1E69DDD80];
    v104 = *MEMORY[0x1E69DDD80];
  }

  else if (v81)
  {
    v103 = MEMORY[0x1E69DDD80];
    v102 = MEMORY[0x1E69DDCF8];
    v104 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v105 = [*v1 hasSubtitles];
    v106 = MEMORY[0x1E69DDD40];
    v102 = v99;
    v103 = v100;
    if (v97)
    {
      v107 = v99;
    }

    else
    {
      v107 = v100;
    }

    if (!v105)
    {
      v106 = v107;
    }

    v104 = *v106;
  }

  v163 = v104;
  v108 = [TLKFontUtilities cachedFontForTextStyle:"cachedFontForTextStyle:isShort:isBold:" isShort:? isBold:?];
  v109 = [*v1 leadingTitleLabel];
  [v109 setFont:v108];

  v110 = MEMORY[0x1E69DB970];
  if (v81 || v66)
  {
    +[TLKFontUtilities captionFont];
  }

  else
  {
    [TLKFontUtilities cachedFontForTextStyle:*v101 isShort:0 fontWeight:*MEMORY[0x1E69DB970]];
  }
  v111 = ;
  v112 = [*v1 leadingSubtitleLabel];
  [v112 setFont:v111];

  if (([*v1 hasSubtitles] | v97))
  {
    v113 = v102;
  }

  else
  {
    v113 = v103;
  }

  v114 = [TLKFontUtilities cachedFontForTextStyle:*v113 isShort:0 isBold:0];
  v115 = [*v1 trailingTitleLabel];
  [v115 setFont:v114];

  v116 = [TLKFontUtilities cachedFontForTextStyle:*v101 isShort:0 fontWeight:*v110];
  v117 = [*v1 trailingSubtitleLabel];
  [v117 setFont:v116];

  v118 = 28.0;
  if (v66)
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:*v1 forView:26.5];
    v118 = v119;
  }

  v120 = v118 + -4.5;
  if (v66)
  {
    v120 = 19.5;
  }

  [TLKLayoutUtilities deviceScaledRoundedValue:*v1 forView:v120];
  v122 = v121;
  if (v66)
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:*v1 forView:16.5];
    v124 = v123;
    v125 = 16.0;
  }

  else
  {
    v124 = 16.0;
    v125 = 18.0;
  }

  v126 = [*v1 leadingTitleLabel];
  v127 = [*v1 leadingSubtitle];
  if (v127)
  {
    v128 = v122;
  }

  else
  {
    v128 = v118;
  }

  v129 = [*v1 leadingSubtitle];
  if (v129)
  {
    v130 = 0.0;
  }

  else
  {
    v130 = v124;
  }

  [TLKLayoutUtilities setDynamicBaselineAlignmentsForLabel:v126 top:*v1 bottom:v128 view:v130];

  v131 = [*v1 trailingTitleLabel];
  v132 = [*v1 trailingSubtitle];
  if (v132)
  {
    v118 = v122;
  }

  v133 = [*v1 trailingSubtitle];
  if (v133)
  {
    v134 = 0.0;
  }

  else
  {
    v134 = v124;
  }

  [TLKLayoutUtilities setDynamicBaselineAlignmentsForLabel:v131 top:*v1 bottom:v118 view:v134];

  if (v81)
  {
    v135 = 14.0;
  }

  else
  {
    v135 = 10.0;
  }

  v136 = [*v1 leadingSubtitleLabel];
  if (v66)
  {
    v135 = 8.0;
    v137 = 2;
  }

  else
  {
    v137 = !v81;
  }

  [TLKLayoutUtilities setDynamicBaselineAlignmentsForLabel:v136 top:*v1 bottom:0.0 view:v135];

  v138 = [*v1 trailingSubtitleLabel];
  [TLKLayoutUtilities setDynamicBaselineAlignmentsForLabel:v138 top:*v1 bottom:0.0 view:v135];

  v139 = [*v1 leadingSubtitleLabel];
  v140 = [v139 font];
  [TLKLayoutUtilities scaledValueForValue:v140 withFont:*v1 view:v125];
  v142 = v141;
  v143 = [*v1 contentView];
  [v143 setRowSpacing:v142];

  v144 = [*v1 leadingTitleLabel];
  LODWORD(v145) = 1144750080;
  [v144 setContentCompressionResistancePriority:0 forAxis:v145];

  v146 = [*v1 trailingTitleLabel];
  LODWORD(v147) = 1144750080;
  [v146 setContentCompressionResistancePriority:0 forAxis:v147];

  v148 = *MEMORY[0x1E698B6F8];
  [v165 setLength:*MEMORY[0x1E698B6F8]];
  [v164 setLength:v148];
  v149 = [*v1 leadingTitleLabel];
  [v149 setProminence:v66];

  v150 = [*v1 leadingSubtitleLabel];
  [v150 setProminence:v137];

  v151 = [*v1 leadingTitle];
  v152 = [*v1 leadingTitleLabel];
  [TLKSimpleRowView applyText:v151 toLabel:v152];

  v153 = [*v1 leadingSubtitle];
  v154 = [*v1 leadingSubtitleLabel];
  [TLKSimpleRowView applyText:v153 toLabel:v154];

  v155 = [*v1 trailingTitle];
  v156 = [*v1 trailingTitleLabel];
  [TLKSimpleRowView applyText:v155 toLabel:v156];

  v157 = [*v1 trailingSubtitle];
  v158 = [*v1 trailingSubtitleLabel];
  [TLKSimpleRowView applyText:v157 toLabel:v158];
}

- (BOOL)hasSubtitles
{
  leadingSubtitle = [(TLKSimpleRowView *)self leadingSubtitle];
  if (leadingSubtitle)
  {
    v4 = 1;
  }

  else
  {
    trailingSubtitle = [(TLKSimpleRowView *)self trailingSubtitle];
    v4 = trailingSubtitle != 0;
  }

  return v4;
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  subviewCopy = subview;
  leadingImageView = [(TLKSimpleRowView *)self leadingImageView];

  if (leadingImageView == subviewCopy)
  {
    leadingImageView2 = [(TLKSimpleRowView *)self leadingImageView];
    if ([viewCopy alignmentForView:leadingImageView2 inAxis:1] != 1)
    {
LABEL_5:

      goto LABEL_6;
    }

    leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
    font = [leadingTitleLabel font];
    [font ascender];
    v18 = v17;
    leadingTitleLabel2 = [(TLKSimpleRowView *)self leadingTitleLabel];
    font2 = [leadingTitleLabel2 font];
    [font2 descender];
    v22 = v18 - v21;

    if (height < v22)
    {
      leadingImageView2 = [(TLKSimpleRowView *)self leadingTitleLabel];
      [leadingImageView2 customAlignmentRectInsets];
      v24 = v23;
      leadingTitleLabel3 = [(TLKSimpleRowView *)self leadingTitleLabel];
      font3 = [leadingTitleLabel3 font];
      [font3 ascender];
      v28 = v27 - v24;
      leadingTitleLabel4 = [(TLKSimpleRowView *)self leadingTitleLabel];
      font4 = [leadingTitleLabel4 font];
      [font4 capHeight];
      y = ceil(v28 + (height + v31) * -0.5);

      goto LABEL_5;
    }
  }

LABEL_6:

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  leadingImageView = [(TLKSimpleRowView *)self leadingImageView];
  [leadingImageView setMaximumLayoutSize:{width * 0.4, 1.79769313e308}];

  leadingImageView2 = [(TLKSimpleRowView *)self leadingImageView];
  [leadingImageView2 maximumLayoutSize];
  v13 = v12;
  v15 = v14;
  trailingImageView = [(TLKSimpleRowView *)self trailingImageView];
  [trailingImageView setMaximumLayoutSize:{v13, v15}];

  if (!reason)
  {
    leadingTitle = [(TLKSimpleRowView *)self leadingTitle];
    if (leadingTitle || ([(TLKSimpleRowView *)self leadingSubtitle], (leadingImageView2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      trailingTitle = [(TLKSimpleRowView *)self trailingTitle];
      if (trailingTitle)
      {

        if (leadingTitle)
        {
          v19 = leadingTitle;
        }

        else
        {
          v19 = leadingImageView2;
        }
      }

      else
      {
        trailingSubtitle = [(TLKSimpleRowView *)self trailingSubtitle];

        if (leadingTitle)
        {

          if (!trailingSubtitle)
          {
            goto LABEL_10;
          }
        }

        else
        {

          if (!trailingSubtitle)
          {
            goto LABEL_10;
          }
        }
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __83__TLKSimpleRowView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke;
      v21[3] = &unk_1E7FD9028;
      v22 = viewCopy;
      selfCopy = self;
      v24 = width;
      v25 = height;
      [v22 performBatchUpdates:v21];
    }
  }

LABEL_10:
}

void __83__TLKSimpleRowView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) columnSpacing];
  v4 = v3;
  v5 = [*(a1 + 40) contentView];
  v6 = [v5 columnAtIndex:0];
  v7 = [v6 isHidden];
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v1 = [*(a1 + 40) leadingImageView];
    [v1 intrinsicContentSize];
    v8 = v4 + v9;
  }

  v10 = [*(a1 + 40) contentView];
  v11 = [v10 columnAtIndex:3];
  if ([v11 isHidden])
  {
    v12 = v8 + 0.0;
  }

  else
  {
    v13 = [*(a1 + 40) trailingImageView];
    [v13 intrinsicContentSize];
    v12 = v8 + v4 + v14;
  }

  if ((v7 & 1) == 0)
  {
  }

  v15 = *(a1 + 48) - v12;
  v16 = [*(a1 + 40) contentView];
  v17 = [v16 columnAtIndex:1];
  [v17 spacingAfter];
  v19 = v15 - v18;
  [*(a1 + 32) layoutMargins];
  v21 = v19 - v20;
  [*(a1 + 32) layoutMargins];
  v23 = v21 - v22;

  v24 = 0.0;
  v25 = fmax(v23, 0.0);
  v26 = fmax(*(a1 + 56), 0.0);
  v27 = [*(a1 + 40) leadingTitle];
  if (v27)
  {
    v28 = objc_opt_class();
    v29 = [*(a1 + 40) leadingTitleLabel];
    [v28 naturalWidthOfLabel:v29 inFittingSize:{v25, v26}];
    v24 = v30;
  }

  v31 = [*(a1 + 40) leadingSubtitle];

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = [*(a1 + 40) leadingSubtitleLabel];
    [v32 naturalWidthOfLabel:v33 inFittingSize:{v25, v26}];
    v35 = v34;

    if (v24 < v35)
    {
      v24 = v35;
    }
  }

  v36 = [*(a1 + 40) trailingTitle];
  if (v36)
  {
    v37 = objc_opt_class();
    v38 = [*(a1 + 40) trailingTitleLabel];
    [v37 naturalWidthOfLabel:v38 inFittingSize:{v25, v26}];
    v40 = v39;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = [*(a1 + 40) trailingSubtitle];

  if (v41)
  {
    v42 = objc_opt_class();
    v43 = [*(a1 + 40) trailingSubtitleLabel];
    [v42 naturalWidthOfLabel:v43 inFittingSize:{v25, v26}];
    v45 = v44;

    if (v40 < v45)
    {
      v40 = v45;
    }
  }

  v46 = v25 * 0.5;
  if (v24 <= v25 * 0.5 || v40 <= v46)
  {
    if (v24 <= v46)
    {
      v50 = 750.0;
      if (v40 <= v46)
      {
        v49 = 750.0;
      }

      else
      {
        v49 = 999.0;
      }
    }

    else
    {
      v50 = 999.0;
      v49 = 750.0;
    }
  }

  else
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:*(a1 + 40) forView:?];
    v24 = v48;
    v49 = 750.0;
    v40 = v48;
    v50 = 750.0;
  }

  v51 = [*(a1 + 40) leadingTitleLabel];
  [v51 contentCompressionResistancePriorityForAxis:0];
  v53 = v52;

  if (v49 != v53)
  {
    v54 = [*(a1 + 40) leadingTitleLabel];
    *&v55 = v49;
    [v54 setContentCompressionResistancePriority:0 forAxis:v55];
  }

  v56 = [*(a1 + 40) trailingTitleLabel];
  [v56 contentCompressionResistancePriorityForAxis:0];
  v58 = v57;

  if (v50 != v58)
  {
    v59 = [*(a1 + 40) trailingTitleLabel];
    *&v60 = v50;
    [v59 setContentCompressionResistancePriority:0 forAxis:v60];
  }

  v64 = [*(a1 + 32) columnAtIndex:1];
  [v64 length];
  if (v61 != v24)
  {
    [v64 setLength:v24];
  }

  v62 = [*(a1 + 32) columnAtIndex:2];
  [v62 length];
  if (v63 != v40)
  {
    [v62 setLength:v40];
  }
}

- (id)leadingTextView
{
  leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
  if ([leadingTitleLabel isHidden])
  {
    leadingSubtitleLabel = [(TLKSimpleRowView *)self leadingSubtitleLabel];
    if ([leadingSubtitleLabel isHidden])
    {
      leadingSubtitleLabel2 = 0;
    }

    else
    {
      leadingSubtitleLabel2 = [(TLKSimpleRowView *)self leadingSubtitleLabel];
    }
  }

  else
  {
    leadingSubtitleLabel2 = [(TLKSimpleRowView *)self leadingTitleLabel];
  }

  return leadingSubtitleLabel2;
}

+ (void)applyText:(id)text toLabel:(id)label
{
  textCopy = text;
  labelCopy = label;
  [labelCopy setHidden:{objc_msgSend(textCopy, "hasContent") ^ 1}];
  if (([labelCopy isHidden] & 1) == 0)
  {
    [labelCopy setRichText:textCopy];
  }
}

- (id)stringForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isHidden])
  {
    text = 0;
  }

  else
  {
    text = [labelCopy text];
  }

  return text;
}

- (id)leadingTitleLabelString
{
  leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
  v4 = [(TLKSimpleRowView *)self stringForLabel:leadingTitleLabel];

  return v4;
}

- (id)leadingSubtitleLabelString
{
  leadingSubtitleLabel = [(TLKSimpleRowView *)self leadingSubtitleLabel];
  v4 = [(TLKSimpleRowView *)self stringForLabel:leadingSubtitleLabel];

  return v4;
}

- (id)trailingTitleLabelString
{
  trailingTitleLabel = [(TLKSimpleRowView *)self trailingTitleLabel];
  v4 = [(TLKSimpleRowView *)self stringForLabel:trailingTitleLabel];

  return v4;
}

- (id)trailingSubtitleLabelString
{
  trailingSubtitleLabel = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  v4 = [(TLKSimpleRowView *)self stringForLabel:trailingSubtitleLabel];

  return v4;
}

- (id)leadingTitleLabelFont
{
  leadingTitleLabel = [(TLKSimpleRowView *)self leadingTitleLabel];
  v4 = [(TLKSimpleRowView *)self fontForTextInLabel:leadingTitleLabel];

  return v4;
}

- (id)trailingTitleLabelFont
{
  trailingTitleLabel = [(TLKSimpleRowView *)self trailingTitleLabel];
  v4 = [(TLKSimpleRowView *)self fontForTextInLabel:trailingTitleLabel];

  return v4;
}

- (id)trailingSubtitleLabelFont
{
  trailingSubtitleLabel = [(TLKSimpleRowView *)self trailingSubtitleLabel];
  v4 = [(TLKSimpleRowView *)self fontForTextInLabel:trailingSubtitleLabel];

  return v4;
}

- (id)fontForTextInLabel:(id)label
{
  attributedText = [label attributedText];
  v4 = [attributedText attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];

  return v4;
}

- (double)widthOfColumnAtIndex:(unint64_t)index
{
  contentView = [(TLKView *)self contentView];
  v5 = [contentView columnAtIndex:index];
  [v5 length];
  v7 = v6;

  return v7;
}

- (id)topRowViews
{
  contentView = [(TLKView *)self contentView];
  v3 = [contentView rowAtIndex:0];
  arrangedSubviews = [v3 arrangedSubviews];

  return arrangedSubviews;
}

- (id)bottomRowViews
{
  contentView = [(TLKView *)self contentView];
  v3 = [contentView rowAtIndex:1];
  arrangedSubviews = [v3 arrangedSubviews];

  return arrangedSubviews;
}

@end