@interface TLKSplitHeaderView
- (BOOL)secondRowIsHidden;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
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
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)observedPropertiesChanged;
- (void)performLeadingButtonSelector;
- (void)performTrailingButtonSelector;
- (void)setCenterLeadingTitle:(id)a3;
- (void)setCenterTrailingTitle:(id)a3;
- (void)setIsLeadingButtonEnabled:(BOOL)a3;
- (void)setIsTrailingButtonEnabled:(BOOL)a3;
- (void)setLeadingImage:(id)a3;
- (void)setLeadingSubtitle:(id)a3;
- (void)setLeadingTitle:(id)a3;
- (void)setShouldBadgeSubtitle:(BOOL)a3;
- (void)setSubtitle1:(id)a3;
- (void)setSubtitle2:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTrailingImage:(id)a3;
- (void)setTrailingTitle:(id)a3;
- (void)setUseLargeTitle:(BOOL)a3;
@end

@implementation TLKSplitHeaderView

- (id)setupContentView
{
  v3 = objc_alloc(MEMORY[0x1E698B728]);
  v4 = [(TLKSplitHeaderView *)self grid];
  v5 = [v3 initWithArrangedSubviewRows:v4];

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
  v14 = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [v14 effectiveBaselineOffsetFromBottom];
  v16 = v13 - ceil(v15);

  [v5 setLayoutMargins:{v11, 16.0, v16, 16.0}];
  [v5 setRowSpacing:0.0];
  [v5 setColumnSpacing:8.0];
  [v5 setDelegate:self];
  v17 = [(TLKSplitHeaderView *)self titleContainerView];
  [v5 setAlignment:0 forView:v17 inAxis:1];

  return v5;
}

- (void)setIsLeadingButtonEnabled:(BOOL)a3
{
  if (self->_isLeadingButtonEnabled != a3)
  {
    self->_isLeadingButtonEnabled = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setLeadingImage:(id)a3
{
  v10 = a3;
  if (self->_leadingImage != v10)
  {
    objc_storeStrong(&self->_leadingImage, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setIsTrailingButtonEnabled:(BOOL)a3
{
  if (self->_isTrailingButtonEnabled != a3)
  {
    self->_isTrailingButtonEnabled = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setTrailingImage:(id)a3
{
  v10 = a3;
  if (self->_trailingImage != v10)
  {
    objc_storeStrong(&self->_trailingImage, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setShouldBadgeSubtitle:(BOOL)a3
{
  if (self->_shouldBadgeSubtitle != a3)
  {
    self->_shouldBadgeSubtitle = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setUseLargeTitle:(BOOL)a3
{
  if (self->_useLargeTitle != a3)
  {
    self->_useLargeTitle = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setLeadingTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_leadingTitle, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setTrailingTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_trailingTitle, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setLeadingSubtitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_leadingSubtitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_leadingSubtitle, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_title, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setCenterLeadingTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerLeadingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_centerLeadingTitle, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setCenterTrailingTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_centerTrailingTitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_centerTrailingTitle, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setSubtitle1:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle1 setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_subtitle1, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setSubtitle2:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle2 setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_subtitle2, a3);
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

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (id)grid
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [(TLKSplitHeaderView *)self firstRowOfViews];
  v4 = [(TLKSplitHeaderView *)self secondRowOfViews];
  v5 = [(TLKSplitHeaderView *)self thirdRowOfViews];
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
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
  v6 = [(TLKSplitHeaderView *)self titleContainerView];
  v9[1] = v6;
  v9[2] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  return v7;
}

- (id)secondRowOfViews
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:1];
  v4 = [(TLKSplitHeaderView *)self subtitleLabel];
  [v4 setFont:v3];
  [(TLKSplitHeaderView *)self setLeadingTitleLabel:v4];
  v5 = [(TLKSplitHeaderView *)self subtitleLabel];
  [v5 setFont:v3];
  [(TLKSplitHeaderView *)self setTrailingTitleLabel:v5];
  v6 = [(TLKSplitHeaderView *)self subtitleLabel];
  [v6 setProminence:1];
  LODWORD(v7) = 1132068864;
  [v6 setContentHuggingPriority:0 forAxis:v7];
  [(TLKSplitHeaderView *)self setSubtitle1Label:v6];
  v8 = objc_opt_new();
  [(TLKSplitHeaderView *)self setSubtitle2Label:v8];
  v9 = objc_alloc(MEMORY[0x1E698B730]);
  v15[0] = v6;
  v15[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v9 initWithArrangedSubviews:v10];

  [v11 setSpacing:2.0];
  [v11 setAlignment:3];
  [v11 setAxis:1];
  [(TLKSplitHeaderView *)self setSubtitleStackView:v11];
  v14[0] = v4;
  v14[1] = v11;
  v14[2] = v5;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  return v12;
}

- (id)thirdRowOfViews
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [(TLKSplitHeaderView *)self subtitleLabel];
  [v3 setProminence:1];
  [(TLKSplitHeaderView *)self setLeadingSubtitleLabel:v3];
  v4 = [(TLKSplitHeaderView *)self subtitleLabel];
  [v4 setProminence:1];
  [(TLKSplitHeaderView *)self setTrailingSubtitleLabel:v4];
  v5 = [(TLKSplitHeaderView *)self subtitleStackView];
  v8[1] = v5;
  v8[2] = v4;
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
  v2 = [(TLKSplitHeaderView *)self titleContainerView];
  v3 = [v2 centerLeadingTitleLabel];

  return v3;
}

- (id)centerTrailingTitleLabel
{
  v2 = [(TLKSplitHeaderView *)self titleContainerView];
  v3 = [v2 centerTrailingTitleLabel];

  return v3;
}

- (id)titleLabel
{
  v2 = [(TLKSplitHeaderView *)self titleContainerView];
  v3 = [v2 titleLabel];

  return v3;
}

- (void)observedPropertiesChanged
{
  v3 = [(TLKSplitHeaderView *)self useLargeTitle];
  v4 = [(TLKSplitHeaderView *)self titleContainerView];
  [v4 setUseLargeTitle:v3];

  v5 = [(TLKSplitHeaderView *)self titleContainerView];
  v6 = [v5 titleFont];

  v7 = [(TLKSplitHeaderView *)self centerLeadingTitle];
  v8 = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [v8 setHidden:v7 == 0];

  v9 = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [v9 setFont:v6];

  v10 = [(TLKSplitHeaderView *)self centerLeadingTitle];
  v11 = [(TLKSplitHeaderView *)self centerLeadingTitleLabel];
  [v11 setMultilineText:v10];

  v12 = [(TLKSplitHeaderView *)self centerTrailingTitle];
  v13 = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [v13 setHidden:v12 == 0];

  v14 = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [v14 setFont:v6];

  v15 = [(TLKSplitHeaderView *)self centerTrailingTitle];
  v16 = [(TLKSplitHeaderView *)self centerTrailingTitleLabel];
  [v16 setMultilineText:v15];

  v17 = [(TLKSplitHeaderView *)self centerLeadingTitle];
  v18 = [v17 text];
  v19 = [v18 length];
  v20 = [(TLKSplitHeaderView *)self centerTrailingTitle];
  v21 = [v20 text];
  v22 = [v21 length] + v19;

  v23 = [(TLKSplitHeaderView *)self titleLabel];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __47__TLKSplitHeaderView_observedPropertiesChanged__block_invoke;
  v80[3] = &unk_1E7FD8C98;
  v80[4] = self;
  v24 = v6;
  v81 = v24;
  v82 = v22;
  [v23 performBatchUpdates:v80];

  v25 = [(TLKSplitHeaderView *)self title];
  v26 = [(TLKSplitHeaderView *)self titleContainerView];
  v27 = [v26 titleStackView];
  [v27 setHidden:(v25 | v22) == 0];

  if (v22 <= 4)
  {
    v28 = 7.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = [(TLKSplitHeaderView *)self titleContainerView];
  v30 = [v29 titleStackView];
  [v30 setSpacing:v28];

  v31 = [(TLKSplitHeaderView *)self leadingTitle];
  if (v31)
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v30 = [(TLKSplitHeaderView *)self trailingTitle];
    if (v30)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v26 = [(TLKSplitHeaderView *)self subtitle1];
      v33 = v26 == 0;
      v32 = 1;
    }
  }

  v34 = [(TLKView *)self contentView];
  v35 = [v34 rowAtIndex:1];
  [v35 setHidden:v33];

  if (v32)
  {
  }

  if (!v31)
  {
  }

  v36 = [(TLKSplitHeaderView *)self leadingSubtitle];
  if (v36)
  {
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v30 = [(TLKSplitHeaderView *)self trailingSubtitle];
    if (v30)
    {
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v26 = [(TLKSplitHeaderView *)self subtitle2];
      v38 = v26 == 0;
      v37 = 1;
    }
  }

  v39 = [(TLKView *)self contentView];
  v40 = [v39 rowAtIndex:2];
  [v40 setHidden:v38];

  if (v37)
  {
  }

  if (!v36)
  {
  }

  v41 = [(TLKSplitHeaderView *)self subtitle1];
  v42 = [(TLKSplitHeaderView *)self subtitle1Label];
  [v42 setHidden:v41 == 0];

  v43 = [(TLKSplitHeaderView *)self subtitle1];
  v44 = [(TLKSplitHeaderView *)self subtitle1Label];
  [v44 setMultilineText:v43];

  v45 = [(TLKSplitHeaderView *)self subtitle2Label];
  v46 = [(TLKSplitHeaderView *)self subtitle2];
  v47 = [(TLKSplitHeaderView *)self shouldBadgeSubtitle];
  v48 = MEMORY[0x1E69DDD28];
  if (v47)
  {
    v48 = MEMORY[0x1E69DDD10];
  }

  v49 = [TLKFontUtilities cachedFontForTextStyle:*v48 isShort:0 isBold:?];
  v50 = [(TLKSplitHeaderView *)self shouldBadgeSubtitle];
  if (v50)
  {
    v51 = 2.25;
  }

  else
  {
    v51 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v50)
  {
    v52 = 7.0;
  }

  else
  {
    v52 = *MEMORY[0x1E695F060];
  }

  [v45 setText:v46 font:v49 customInsetSize:-[TLKSplitHeaderView shouldBadgeSubtitle](self badge:{"shouldBadgeSubtitle", *MEMORY[0x1E695F060]), v52, v51}];

  v53 = [(TLKSplitHeaderView *)self subtitle2];
  v54 = [(TLKSplitHeaderView *)self subtitle2Label];
  [v54 setHidden:v53 == 0];

  v55 = [(TLKSplitHeaderView *)self leadingImage];
  v56 = [(TLKSplitHeaderView *)self leadingButton];
  [v56 setTlkImage:v55];

  v57 = [(TLKSplitHeaderView *)self isLeadingButtonEnabled];
  v58 = [(TLKSplitHeaderView *)self leadingButton];
  [v58 setEnabled:v57];

  v59 = [(TLKSplitHeaderView *)self leadingTitle];
  v60 = [(TLKSplitHeaderView *)self leadingTitleLabel];
  [v60 setHidden:v59 == 0];

  v61 = [(TLKSplitHeaderView *)self leadingTitle];
  v62 = [(TLKSplitHeaderView *)self leadingTitleLabel];
  [v62 setMultilineText:v61];

  v63 = [(TLKSplitHeaderView *)self leadingSubtitle];
  v64 = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [v64 setHidden:v63 == 0];

  v65 = [(TLKSplitHeaderView *)self leadingSubtitle];
  v66 = [(TLKSplitHeaderView *)self leadingSubtitleLabel];
  [v66 setMultilineText:v65];

  v67 = [(TLKSplitHeaderView *)self trailingImage];
  v68 = [(TLKSplitHeaderView *)self trailingButton];
  [v68 setTlkImage:v67];

  v69 = [(TLKSplitHeaderView *)self isTrailingButtonEnabled];
  v70 = [(TLKSplitHeaderView *)self trailingButton];
  [v70 setEnabled:v69];

  v71 = [(TLKSplitHeaderView *)self trailingTitle];
  v72 = [(TLKSplitHeaderView *)self trailingTitleLabel];
  [v72 setHidden:v71 == 0];

  v73 = [(TLKSplitHeaderView *)self trailingTitle];
  v74 = [(TLKSplitHeaderView *)self trailingTitleLabel];
  [v74 setMultilineText:v73];

  v75 = [(TLKSplitHeaderView *)self trailingSubtitle];
  v76 = [(TLKSplitHeaderView *)self trailingSubtitleLabel];
  [v76 setHidden:v75 == 0];

  v77 = [(TLKSplitHeaderView *)self trailingSubtitle];
  v78 = [(TLKSplitHeaderView *)self trailingSubtitleLabel];
  [v78 setMultilineText:v77];

  v79 = [(TLKSplitHeaderView *)self titleContainerView];
  [v79 setNeedsLayout];
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
  v3 = [(TLKSplitHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TLKSplitHeaderView *)self delegate];
    [v5 didPressLeadingButtonForSplitHeader:self];
  }
}

- (void)performTrailingButtonSelector
{
  v3 = [(TLKSplitHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TLKSplitHeaderView *)self delegate];
    [v5 didPressTrailingButtonForSplitHeader:self];
  }
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  v6 = [(TLKSplitHeaderView *)self leadingButton:a3];
  v7 = [v6 tlkImageView];
  [TLKLayoutUtilities applyRowBoundedSizingToImageView:v7 isCompactWidth:[(TLKSplitHeaderView *)self useCompactWidth]];

  v9 = [(TLKSplitHeaderView *)self trailingButton];
  v8 = [v9 tlkImageView];
  [TLKLayoutUtilities applyRowBoundedSizingToImageView:v8 isCompactWidth:[(TLKSplitHeaderView *)self useCompactWidth]];
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [(TLKSplitHeaderView *)self leadingTitleLabel];
  v10 = v9;
  if (v9 == v8)
  {

    goto LABEL_6;
  }

  v11 = [(TLKSplitHeaderView *)self trailingTitleLabel];

  if (v11 == v8)
  {
LABEL_6:
    v15 = [(TLKSplitHeaderView *)self leadingImage];
    [v15 size];
    v17 = v16;

    v18 = [(TLKSplitHeaderView *)self leadingButton];
    [v18 customAlignmentRectInsets];
    v20 = v17 - v19;
    v21 = [(TLKSplitHeaderView *)self leadingButton];
    [v21 customAlignmentRectInsets];
    v14 = v20 - v22;

    [v8 systemLayoutSizeFittingSize:{v14, height}];
    v13 = v23;
    goto LABEL_7;
  }

  v12 = [(TLKSplitHeaderView *)self titleContainerView];

  if (v12 == v8)
  {
    v26 = [(TLKSplitHeaderView *)self titleContainerView];
    v14 = 1000.0;
    [v26 effectiveLayoutSizeFittingSize:{width, 1000.0}];
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
  v2 = [(TLKView *)self contentView];
  v3 = [v2 rowAtIndex:1];
  v4 = [v3 isHidden];

  return v4;
}

- (id)leadingImageInView
{
  v2 = [(TLKSplitHeaderView *)self leadingButton];
  v3 = [v2 tlkImage];
  v4 = [v3 uiImage];

  return v4;
}

- (id)trailingImageInView
{
  v2 = [(TLKSplitHeaderView *)self trailingButton];
  v3 = [v2 tlkImage];
  v4 = [v3 uiImage];

  return v4;
}

- (TLKSplitHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end