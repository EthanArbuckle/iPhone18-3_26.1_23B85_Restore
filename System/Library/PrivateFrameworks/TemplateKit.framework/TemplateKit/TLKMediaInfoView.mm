@interface TLKMediaInfoView
- (BOOL)imageViewIsHidden;
- (id)detailLabelStrings;
- (id)setupContentView;
- (id)titleLabelStrings;
- (void)observedPropertiesChanged;
- (void)setContents:(id)contents;
- (void)setImage:(id)image;
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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
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

- (void)setContents:(id)contents
{
  v34 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_contents setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = contentsCopy;
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

      contentsCopy = v23;
    }
  }

  objc_storeStrong(&self->_contents, contents);
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

- (void)observedPropertiesChanged
{
  image = [(TLKMediaInfoView *)self image];
  imageView = [(TLKMediaInfoView *)self imageView];
  [imageView setTlkImage:image];

  image2 = [(TLKMediaInfoView *)self image];
  imageView2 = [(TLKMediaInfoView *)self imageView];
  [imageView2 setHidden:image2 == 0];

  contentsContainer = [(TLKMediaInfoView *)self contentsContainer];
  contents = [(TLKMediaInfoView *)self contents];
  [contentsContainer updateWithContents:contents];
}

- (BOOL)imageViewIsHidden
{
  imageView = [(TLKMediaInfoView *)self imageView];
  isHidden = [imageView isHidden];

  return isHidden;
}

- (id)titleLabelStrings
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentsContainer = [(TLKMediaInfoView *)self contentsContainer];
  contentsViews = [contentsContainer contentsViews];

  v6 = [contentsViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(contentsViews);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isHidden] & 1) == 0)
        {
          titleLabel = [v10 titleLabel];
          text = [titleLabel text];
          [v3 addObject:text];
        }
      }

      v7 = [contentsViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  contentsContainer = [(TLKMediaInfoView *)self contentsContainer];
  contentsViews = [contentsContainer contentsViews];

  v5 = [contentsViews countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(contentsViews);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = objc_opt_new();
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          detailsLabels = [v9 detailsLabels];
          v12 = [detailsLabels countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                  objc_enumerationMutation(detailsLabels);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if (([v16 isHidden] & 1) == 0)
                {
                  text = [v16 text];
                  [v10 addObject:text];
                }
              }

              v13 = [detailsLabels countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }

          [v19 addObject:v10];
        }
      }

      v6 = [contentsViews countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return v19;
}

@end