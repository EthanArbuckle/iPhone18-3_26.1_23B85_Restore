@interface TLKMediaInfoView
- (BOOL)imageViewIsHidden;
- (id)detailLabelStrings;
- (id)setupContentView;
- (id)titleLabelStrings;
- (void)observedPropertiesChanged;
- (void)setContents:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation TLKMediaInfoView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setAlignment:1];
  [v3 setSpacing:10.0];
  [v3 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  v4 = objc_opt_new();
  [v3 addArrangedSubview:v4];
  [TLKLayoutUtilities requireIntrinsicSizeForView:v4];
  [(TLKMediaInfoView *)self setImageView:v4];
  v5 = objc_opt_new();
  v6 = +[TLKFontUtilities shortSubheadBoldFont];
  [v6 ascender];
  v8 = v7;
  v9 = +[TLKFontUtilities shortSubheadBoldFont];
  [v9 capHeight];
  [v5 setCustomAlignmentRectInsets:{v8 - v10, 0.0, 0.0, 0.0}];

  [v3 addArrangedSubview:v5];
  [(TLKMediaInfoView *)self setContentsContainer:v5];

  return v3;
}

- (void)setImage:(id)a3
{
  v10 = a3;
  if (self->_image != v10)
  {
    objc_storeStrong(&self->_image, a3);
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

- (void)setContents:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_contents setObserver:0];
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
      v6 = self->_contents;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_contents, a3);
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_contents setObserver:self];
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
      v12 = self->_contents;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)observedPropertiesChanged
{
  v3 = [(TLKMediaInfoView *)self image];
  v4 = [(TLKMediaInfoView *)self imageView];
  [v4 setTlkImage:v3];

  v5 = [(TLKMediaInfoView *)self image];
  v6 = [(TLKMediaInfoView *)self imageView];
  [v6 setHidden:v5 == 0];

  v8 = [(TLKMediaInfoView *)self contentsContainer];
  v7 = [(TLKMediaInfoView *)self contents];
  [v8 updateWithContents:v7];
}

- (BOOL)imageViewIsHidden
{
  v2 = [(TLKMediaInfoView *)self imageView];
  v3 = [v2 isHidden];

  return v3;
}

- (id)titleLabelStrings
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(TLKMediaInfoView *)self contentsContainer];
  v5 = [v4 contentsViews];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isHidden] & 1) == 0)
        {
          v11 = [v10 titleLabel];
          v12 = [v11 text];
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)detailLabelStrings
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(TLKMediaInfoView *)self contentsContainer];
  v4 = [v3 contentsViews];

  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = objc_opt_new();
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = [v9 detailsLabels];
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if (([v16 isHidden] & 1) == 0)
                {
                  v17 = [v16 text];
                  [v10 addObject:v17];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }

          [v19 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return v19;
}

@end