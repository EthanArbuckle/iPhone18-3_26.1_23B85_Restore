@interface TLKEnlargedTitleView
- (id)setupContentView;
- (id)subtitleLabelText;
- (id)titleLabelText;
- (void)observedPropertiesChanged;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation TLKEnlargedTitleView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setAxis:1];
  [v3 setSpacing:4.0];
  v4 = objc_opt_new();
  v5 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  [v4 setFont:v5];

  [(TLKEnlargedTitleView *)self setTitleLabel:v4];
  [v3 addArrangedSubview:v4];
  v6 = +[TLKLabel secondaryLabel];
  [v3 addArrangedSubview:v6];
  v7 = +[TLKFontUtilities subheadFont];
  [v6 setFont:v7];

  [(TLKEnlargedTitleView *)self setSubtitleLabel:v6];

  return v3;
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

- (void)setSubtitle:(id)subtitle
{
  v34 = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:0];
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
      v6 = self->_subtitle;
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

  objc_storeStrong(&self->_subtitle, subtitle);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:self];
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
      v12 = self->_subtitle;
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

- (void)observedPropertiesChanged
{
  title = [(TLKEnlargedTitleView *)self title];
  text = [title text];
  titleLabel = [(TLKEnlargedTitleView *)self titleLabel];
  [titleLabel setText:text];

  subtitle = [(TLKEnlargedTitleView *)self subtitle];
  text2 = [subtitle text];
  subtitleLabel = [(TLKEnlargedTitleView *)self subtitleLabel];
  [subtitleLabel setText:text2];
}

- (id)titleLabelText
{
  titleLabel = [(TLKEnlargedTitleView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (id)subtitleLabelText
{
  subtitleLabel = [(TLKEnlargedTitleView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

@end