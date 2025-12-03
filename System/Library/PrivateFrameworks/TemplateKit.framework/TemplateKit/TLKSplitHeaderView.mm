@interface TLKSplitHeaderView
- (BOOL)secondRowIsHidden;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (TLKSplitHeaderViewDelegate)delegate;
- (id)centerLeadingTitleLabel;
- (id)centerTrailingTitleLabel;
- (id)firstRowOfViews;
- (id)grid;
- (id)leadingImageInView;
- (id)secondRowOfViews;
- (id)setupContentView;
- (id)subtitleLabel;
- (id)thirdRowOfViews;
- (id)titleLabel;
- (id)trailingImageInView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)observedPropertiesChanged;
- (void)performLeadingButtonSelector;
- (void)performTrailingButtonSelector;
- (void)setCenterLeadingTitle:(id)title;
- (void)setCenterTrailingTitle:(id)title;
- (void)setIsLeadingButtonEnabled:(BOOL)enabled;
- (void)setIsTrailingButtonEnabled:(BOOL)enabled;
- (void)setLeadingImage:(id)image;
- (void)setLeadingSubtitle:(id)subtitle;
- (void)setLeadingTitle:(id)title;
- (void)setShouldBadgeSubtitle:(BOOL)subtitle;
- (void)setSubtitle1:(id)subtitle1;
- (void)setSubtitle2:(id)subtitle2;
- (void)setTitle:(id)title;
- (void)setTrailingImage:(id)image;
- (void)setTrailingTitle:(id)title;
- (void)setUseLargeTitle:(BOOL)title;
@end

@implementation TLKSplitHeaderView

- (id)setupContentView
{
  v3 = objc_alloc(MEMORY[0x1E698B728]);
  grid = [(TLKSplitHeaderView *)self grid];
  v5 = [v3 initWithArrangedSubviewRows:grid];

  [v5 setHorizontalAlignment:3];
  v6 = [v5 rowAtIndex:0];
  [v6 setAlignment:4];

  v7 = [v5 rowAtIndex:1];
  [v7 setAlignment:2];

  v8 = [v5 rowAtIndex:0];
  [v8 setSpacingAfter:10.0];

  v9 = [v5 rowAtIndex:1];
  [v9 setSpacingAfter:1.0];

  +[TLKView defaultLayoutMargins];
  v11 = v10;
  v13 = v12;
  leadingSubtitleLabel = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [leadingSubtitleLabel effectiveBaselineOffsetFromBottom];
  v16 = v13 - ceil(v15);

  [v5 setLayoutMargins:{v11, 16.0, v16, 16.0}];
  [v5 setRowSpacing:0.0];
  [v5 setColumnSpacing:8.0];
  [v5 setDelegate:self];
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  [v5 setAlignment:0 forView:titleContainerView inAxis:1];

  return v5;
}

- (void)setIsLeadingButtonEnabled:(BOOL)enabled
{
  if (self->_isLeadingButtonEnabled != enabled)
  {
    self->_isLeadingButtonEnabled = enabled;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
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

- (void)setIsTrailingButtonEnabled:(BOOL)enabled
{
  if (self->_isTrailingButtonEnabled != enabled)
  {
    self->_isTrailingButtonEnabled = enabled;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
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

- (void)setShouldBadgeSubtitle:(BOOL)subtitle
{
  if (self->_shouldBadgeSubtitle != subtitle)
  {
    self->_shouldBadgeSubtitle = subtitle;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
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

- (void)setUseLargeTitle:(BOOL)title
{
  if (self->_useLargeTitle != title)
  {
    self->_useLargeTitle = title;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
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
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:0];
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
      v6 = self->_title;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_title, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:self];
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
      v12 = self->_title;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setCenterLeadingTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerLeadingTitle setObserver:0];
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
      v6 = self->_centerLeadingTitle;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_centerLeadingTitle, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerLeadingTitle setObserver:self];
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
      v12 = self->_centerLeadingTitle;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setCenterTrailingTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerTrailingTitle setObserver:0];
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
      v6 = self->_centerTrailingTitle;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_centerTrailingTitle, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerTrailingTitle setObserver:self];
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
      v12 = self->_centerTrailingTitle;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setSubtitle1:(id)subtitle1
{
  v34 = *MEMORY[0x1E69E9840];
  subtitle1Copy = subtitle1;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle1 setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = subtitle1Copy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_subtitle1;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      subtitle1Copy = v23;
    }
  }

  objc_storeStrong(&self->_subtitle1, subtitle1);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle1 setObserver:self];
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
      v12 = self->_subtitle1;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setSubtitle2:(id)subtitle2
{
  v34 = *MEMORY[0x1E69E9840];
  subtitle2Copy = subtitle2;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle2 setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = subtitle2Copy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_subtitle2;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      subtitle2Copy = v23;
    }
  }

  objc_storeStrong(&self->_subtitle2, subtitle2);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle2 setObserver:self];
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
      v12 = self->_subtitle2;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (id)grid
{
  v8[3] = *MEMORY[0x1E69E9840];
  firstRowOfViews = [(TLKSplitHeaderView *)self firstRowOfViews];
  secondRowOfViews = [(TLKSplitHeaderView *)self secondRowOfViews];
  thirdRowOfViews = [(TLKSplitHeaderView *)self thirdRowOfViews];
  v8[0] = firstRowOfViews;
  v8[1] = secondRowOfViews;
  v8[2] = thirdRowOfViews;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (id)firstRowOfViews
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v3];
  [v3 setCustomAlignmentRectInsets:{0.0, -17.0, 0.0, -17.0}];
  [v3 addTarget:self action:sel_performLeadingButtonSelector];
  [(TLKSplitHeaderView *)self setLeadingButton:v3];
  v4 = objc_opt_new();
  [(TLKSplitHeaderView *)self setTitleContainerView:v4];

  v5 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v5];
  [v5 setCustomAlignmentRectInsets:{0.0, -17.0, 0.0, -17.0}];
  [v5 addTarget:self action:sel_performTrailingButtonSelector];
  [(TLKSplitHeaderView *)self setTrailingButton:v5];
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  v9[1] = titleContainerView;
  v9[2] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  return v7;
}

- (id)secondRowOfViews
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:1];
  subtitleLabel = [(TLKSplitHeaderView *)self subtitleLabel];
  [subtitleLabel setFont:v3];
  [(TLKSplitHeaderView *)self setLeadingTitleLabel:subtitleLabel];
  subtitleLabel2 = [(TLKSplitHeaderView *)self subtitleLabel];
  [subtitleLabel2 setFont:v3];
  [(TLKSplitHeaderView *)self setTrailingTitleLabel:subtitleLabel2];
  subtitleLabel3 = [(TLKSplitHeaderView *)self subtitleLabel];
  [subtitleLabel3 setProminence:1];
  LODWORD(v7) = 1132068864;
  [subtitleLabel3 setContentHuggingPriority:0 forAxis:v7];
  [(TLKSplitHeaderView *)self setSubtitle1Label:subtitleLabel3];
  v8 = objc_opt_new();
  [(TLKSplitHeaderView *)self setSubtitle2Label:v8];
  v9 = objc_alloc(MEMORY[0x1E698B730]);
  v15[0] = subtitleLabel3;
  v15[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v9 initWithArrangedSubviews:v10];

  [v11 setSpacing:2.0];
  [v11 setAlignment:3];
  [v11 setAxis:1];
  [(TLKSplitHeaderView *)self setSubtitleStackView:v11];
  v14[0] = subtitleLabel;
  v14[1] = v11;
  v14[2] = subtitleLabel2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  return v12;
}

- (id)thirdRowOfViews
{
  v8[3] = *MEMORY[0x1E69E9840];
  subtitleLabel = [(TLKSplitHeaderView *)self subtitleLabel];
  [subtitleLabel setProminence:1];
  [(TLKSplitHeaderView *)self setLeadingSubtitleLabel:subtitleLabel];
  subtitleLabel2 = [(TLKSplitHeaderView *)self subtitleLabel];
  [subtitleLabel2 setProminence:1];
  [(TLKSplitHeaderView *)self setTrailingSubtitleLabel:subtitleLabel2];
  subtitleStackView = [(TLKSplitHeaderView *)self subtitleStackView];
  v8[1] = subtitleStackView;
  v8[2] = subtitleLabel2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (id)subtitleLabel
{
  v2 = objc_opt_new();
  v3 = +[TLKFontUtilities footnoteFont];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];
  LODWORD(v4) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v5];

  return v2;
}

- (id)centerLeadingTitleLabel
{
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  centerLeadingTitleLabel = [titleContainerView centerLeadingTitleLabel];

  return centerLeadingTitleLabel;
}

- (id)centerTrailingTitleLabel
{
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  centerTrailingTitleLabel = [titleContainerView centerTrailingTitleLabel];

  return centerTrailingTitleLabel;
}

- (id)titleLabel
{
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  titleLabel = [titleContainerView titleLabel];

  return titleLabel;
}

- (void)observedPropertiesChanged
{
  useLargeTitle = [(TLKSplitHeaderView *)self useLargeTitle];
  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];
  [titleContainerView setUseLargeTitle:useLargeTitle];

  titleContainerView2 = [(TLKSplitHeaderView *)self titleContainerView];
  titleFont = [titleContainerView2 titleFont];

  centerLeadingTitle = [(TLKSplitHeaderView *)self centerLeadingTitle];
  centerLeadingTitleLabel = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [centerLeadingTitleLabel setHidden:centerLeadingTitle == 0];

  centerLeadingTitleLabel2 = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [centerLeadingTitleLabel2 setFont:titleFont];

  centerLeadingTitle2 = [(TLKSplitHeaderView *)self centerLeadingTitle];
  centerLeadingTitleLabel3 = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [centerLeadingTitleLabel3 setMultilineText:centerLeadingTitle2];

  centerTrailingTitle = [(TLKSplitHeaderView *)self centerTrailingTitle];
  centerTrailingTitleLabel = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [centerTrailingTitleLabel setHidden:centerTrailingTitle == 0];

  centerTrailingTitleLabel2 = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [centerTrailingTitleLabel2 setFont:titleFont];

  centerTrailingTitle2 = [(TLKSplitHeaderView *)self centerTrailingTitle];
  centerTrailingTitleLabel3 = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [centerTrailingTitleLabel3 setMultilineText:centerTrailingTitle2];

  centerLeadingTitle3 = [(TLKSplitHeaderView *)self centerLeadingTitle];
  text = [centerLeadingTitle3 text];
  v19 = [text length];
  centerTrailingTitle3 = [(TLKSplitHeaderView *)self centerTrailingTitle];
  text2 = [centerTrailingTitle3 text];
  v22 = [text2 length] + v19;

  titleLabel = [(TLKSplitHeaderView *)self titleLabel];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __47__TLKSplitHeaderView_observedPropertiesChanged__block_invoke;
  v80[3] = &unk_1E7FD8C98;
  v80[4] = self;
  v24 = titleFont;
  v81 = v24;
  v82 = v22;
  [titleLabel performBatchUpdates:v80];

  title = [(TLKSplitHeaderView *)self title];
  titleContainerView3 = [(TLKSplitHeaderView *)self titleContainerView];
  titleStackView = [titleContainerView3 titleStackView];
  [titleStackView setHidden:(title | v22) == 0];

  if (v22 <= 4)
  {
    v28 = 7.0;
  }

  else
  {
    v28 = 0.0;
  }

  titleContainerView4 = [(TLKSplitHeaderView *)self titleContainerView];
  titleStackView2 = [titleContainerView4 titleStackView];
  [titleStackView2 setSpacing:v28];

  leadingTitle = [(TLKSplitHeaderView *)self leadingTitle];
  if (leadingTitle)
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    titleStackView2 = [(TLKSplitHeaderView *)self trailingTitle];
    if (titleStackView2)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      titleContainerView3 = [(TLKSplitHeaderView *)self subtitle1];
      v33 = titleContainerView3 == 0;
      v32 = 1;
    }
  }

  contentView = [(TLKView *)self contentView];
  v35 = [contentView rowAtIndex:1];
  [v35 setHidden:v33];

  if (v32)
  {
  }

  if (!leadingTitle)
  {
  }

  leadingSubtitle = [(TLKSplitHeaderView *)self leadingSubtitle];
  if (leadingSubtitle)
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    titleStackView2 = [(TLKSplitHeaderView *)self trailingSubtitle];
    if (titleStackView2)
    {
      v37 = 0;
      v38 = 0;
    }

    else
    {
      titleContainerView3 = [(TLKSplitHeaderView *)self subtitle2];
      v38 = titleContainerView3 == 0;
      v37 = 1;
    }
  }

  contentView2 = [(TLKView *)self contentView];
  v40 = [contentView2 rowAtIndex:2];
  [v40 setHidden:v38];

  if (v37)
  {
  }

  if (!leadingSubtitle)
  {
  }

  subtitle1 = [(TLKSplitHeaderView *)self subtitle1];
  subtitle1Label = [(TLKSplitHeaderView *)self subtitle1Label];
  [subtitle1Label setHidden:subtitle1 == 0];

  subtitle12 = [(TLKSplitHeaderView *)self subtitle1];
  subtitle1Label2 = [(TLKSplitHeaderView *)self subtitle1Label];
  [subtitle1Label2 setMultilineText:subtitle12];

  subtitle2Label = [(TLKSplitHeaderView *)self subtitle2Label];
  subtitle2 = [(TLKSplitHeaderView *)self subtitle2];
  shouldBadgeSubtitle = [(TLKSplitHeaderView *)self shouldBadgeSubtitle];
  v48 = MEMORY[0x1E69DDD28];
  if (shouldBadgeSubtitle)
  {
    v48 = MEMORY[0x1E69DDD10];
  }

  v49 = [TLKFontUtilities cachedFontForTextStyle:*v48 isShort:0 isBold:?];
  shouldBadgeSubtitle2 = [(TLKSplitHeaderView *)self shouldBadgeSubtitle];
  if (shouldBadgeSubtitle2)
  {
    v51 = 2.25;
  }

  else
  {
    v51 = *(MEMORY[0x1E695F060] + 8);
  }

  if (shouldBadgeSubtitle2)
  {
    v52 = 7.0;
  }

  else
  {
    v52 = *MEMORY[0x1E695F060];
  }

  [subtitle2Label setText:subtitle2 font:v49 customInsetSize:-[TLKSplitHeaderView shouldBadgeSubtitle](self badge:{"shouldBadgeSubtitle", *MEMORY[0x1E695F060]), v52, v51}];

  subtitle22 = [(TLKSplitHeaderView *)self subtitle2];
  subtitle2Label2 = [(TLKSplitHeaderView *)self subtitle2Label];
  [subtitle2Label2 setHidden:subtitle22 == 0];

  leadingImage = [(TLKSplitHeaderView *)self leadingImage];
  leadingButton = [(TLKSplitHeaderView *)self leadingButton];
  [leadingButton setTlkImage:leadingImage];

  isLeadingButtonEnabled = [(TLKSplitHeaderView *)self isLeadingButtonEnabled];
  leadingButton2 = [(TLKSplitHeaderView *)self leadingButton];
  [leadingButton2 setEnabled:isLeadingButtonEnabled];

  leadingTitle2 = [(TLKSplitHeaderView *)self leadingTitle];
  leadingTitleLabel = [(TLKSplitHeaderView *)self leadingTitleLabel];
  [leadingTitleLabel setHidden:leadingTitle2 == 0];

  leadingTitle3 = [(TLKSplitHeaderView *)self leadingTitle];
  leadingTitleLabel2 = [(TLKSplitHeaderView *)self leadingTitleLabel];
  [leadingTitleLabel2 setMultilineText:leadingTitle3];

  leadingSubtitle2 = [(TLKSplitHeaderView *)self leadingSubtitle];
  leadingSubtitleLabel = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [leadingSubtitleLabel setHidden:leadingSubtitle2 == 0];

  leadingSubtitle3 = [(TLKSplitHeaderView *)self leadingSubtitle];
  leadingSubtitleLabel2 = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [leadingSubtitleLabel2 setMultilineText:leadingSubtitle3];

  trailingImage = [(TLKSplitHeaderView *)self trailingImage];
  trailingButton = [(TLKSplitHeaderView *)self trailingButton];
  [trailingButton setTlkImage:trailingImage];

  isTrailingButtonEnabled = [(TLKSplitHeaderView *)self isTrailingButtonEnabled];
  trailingButton2 = [(TLKSplitHeaderView *)self trailingButton];
  [trailingButton2 setEnabled:isTrailingButtonEnabled];

  trailingTitle = [(TLKSplitHeaderView *)self trailingTitle];
  trailingTitleLabel = [(TLKSplitHeaderView *)self trailingTitleLabel];
  [trailingTitleLabel setHidden:trailingTitle == 0];

  trailingTitle2 = [(TLKSplitHeaderView *)self trailingTitle];
  trailingTitleLabel2 = [(TLKSplitHeaderView *)self trailingTitleLabel];
  [trailingTitleLabel2 setMultilineText:trailingTitle2];

  trailingSubtitle = [(TLKSplitHeaderView *)self trailingSubtitle];
  trailingSubtitleLabel = [(TLKSplitHeaderView *)self trailingSubtitleLabel];
  [trailingSubtitleLabel setHidden:trailingSubtitle == 0];

  trailingSubtitle2 = [(TLKSplitHeaderView *)self trailingSubtitle];
  trailingSubtitleLabel2 = [(TLKSplitHeaderView *)self trailingSubtitleLabel];
  [trailingSubtitleLabel2 setMultilineText:trailingSubtitle2];

  titleContainerView5 = [(TLKSplitHeaderView *)self titleContainerView];
  [titleContainerView5 setNeedsLayout];
}

void __47__TLKSplitHeaderView_observedPropertiesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = [*(a1 + 32) titleLabel];
  [v3 setHidden:v2 == 0];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) titleLabel];
  [v5 setFont:v4];

  v6 = [*(a1 + 32) title];
  v7 = [*(a1 + 32) titleLabel];
  [v7 setMultilineText:v6];

  v8 = *(a1 + 48) != 0;
  v9 = [*(a1 + 32) titleLabel];
  [v9 setAdjustsFontSizeToFitWidth:v8];

  if (+[TLKUtilities isMacOS])
  {
    if (*(a1 + 48))
    {
      v10 = 6.0;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 6.0;
    }

    else
    {
      v11 = *MEMORY[0x1E698B6F0];
      v10 = *(MEMORY[0x1E698B6F0] + 8);
      v12 = *(MEMORY[0x1E698B6F0] + 16);
      v13 = *(MEMORY[0x1E698B6F0] + 24);
    }

    v14 = [*(a1 + 32) titleLabel];
    [v14 setCustomAlignmentRectInsets:{v11, v10, v12, v13}];
  }
}

- (void)performLeadingButtonSelector
{
  delegate = [(TLKSplitHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(TLKSplitHeaderView *)self delegate];
    [delegate2 didPressLeadingButtonForSplitHeader:self];
  }
}

- (void)performTrailingButtonSelector
{
  delegate = [(TLKSplitHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(TLKSplitHeaderView *)self delegate];
    [delegate2 didPressTrailingButtonForSplitHeader:self];
  }
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  v6 = [(TLKSplitHeaderView *)self leadingButton:view];
  tlkImageView = [v6 tlkImageView];
  [TLKLayoutUtilities applyRowBoundedSizingToImageView:tlkImageView isCompactWidth:[(TLKSplitHeaderView *)self useCompactWidth]];

  trailingButton = [(TLKSplitHeaderView *)self trailingButton];
  tlkImageView2 = [trailingButton tlkImageView];
  [TLKLayoutUtilities applyRowBoundedSizingToImageView:tlkImageView2 isCompactWidth:[(TLKSplitHeaderView *)self useCompactWidth]];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  leadingTitleLabel = [(TLKSplitHeaderView *)self leadingTitleLabel];
  v10 = leadingTitleLabel;
  if (leadingTitleLabel == subviewCopy)
  {

    goto LABEL_6;
  }

  trailingTitleLabel = [(TLKSplitHeaderView *)self trailingTitleLabel];

  if (trailingTitleLabel == subviewCopy)
  {
LABEL_6:
    leadingImage = [(TLKSplitHeaderView *)self leadingImage];
    [leadingImage size];
    v17 = v16;

    leadingButton = [(TLKSplitHeaderView *)self leadingButton];
    [leadingButton customAlignmentRectInsets];
    v20 = v17 - v19;
    leadingButton2 = [(TLKSplitHeaderView *)self leadingButton];
    [leadingButton2 customAlignmentRectInsets];
    v14 = v20 - v22;

    [subviewCopy systemLayoutSizeFittingSize:{v14, height}];
    v13 = v23;
    goto LABEL_7;
  }

  titleContainerView = [(TLKSplitHeaderView *)self titleContainerView];

  if (titleContainerView == subviewCopy)
  {
    titleContainerView2 = [(TLKSplitHeaderView *)self titleContainerView];
    v14 = 1000.0;
    [titleContainerView2 effectiveLayoutSizeFittingSize:{width, 1000.0}];
    v13 = v27;
  }

  else
  {
    v14 = *MEMORY[0x1E698B708];
    v13 = *(MEMORY[0x1E698B708] + 8);
  }

LABEL_7:

  v24 = v14;
  v25 = v13;
  result.height = v25;
  result.width = v24;
  return result;
}

- (BOOL)secondRowIsHidden
{
  contentView = [(TLKView *)self contentView];
  v3 = [contentView rowAtIndex:1];
  isHidden = [v3 isHidden];

  return isHidden;
}

- (id)leadingImageInView
{
  leadingButton = [(TLKSplitHeaderView *)self leadingButton];
  tlkImage = [leadingButton tlkImage];
  uiImage = [tlkImage uiImage];

  return uiImage;
}

- (id)trailingImageInView
{
  trailingButton = [(TLKSplitHeaderView *)self trailingButton];
  tlkImage = [trailingButton tlkImage];
  uiImage = [tlkImage uiImage];

  return uiImage;
}

- (TLKSplitHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end