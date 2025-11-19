@interface TLKActivityIndicatorView
- (id)setupContentView;
- (id)subtitleLabelText;
- (void)didMoveToWindow;
- (void)observedPropertiesChanged;
- (void)setSubtitle:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKActivityIndicatorView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setAxis:1];
  [v3 setAlignment:3];
  [v3 setSpacing:12.0];
  [TLKLayoutUtilities deviceScaledRoundedInsets:self forView:40.0, 40.0, 40.0, 40.0];
  [v3 setLayoutMargins:?];
  v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  [v4 setHidesWhenStopped:0];
  [v3 addArrangedSubview:v4];
  [(TLKActivityIndicatorView *)self setActivityIndicator:v4];
  v5 = +[TLKLabel secondaryLabel];
  [v3 addArrangedSubview:v5];
  v6 = +[TLKFontUtilities subheadFont];
  [v5 setFont:v6];

  [(TLKActivityIndicatorView *)self setSubtitleLabel:v5];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKActivityIndicatorView;
  [(TLKActivityIndicatorView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKActivityIndicatorView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKActivityIndicatorView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKActivityIndicatorView;
  [(TLKActivityIndicatorView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v8.receiver = self;
  v8.super_class = TLKActivityIndicatorView;
  v4 = a3;
  [(UIView *)&v8 tlk_updateForAppearance:v4];
  v5 = [v4 secondaryColor];
  v6 = [(TLKActivityIndicatorView *)self activityIndicator];
  [v6 setColor:v5];

  v7 = [(TLKActivityIndicatorView *)self activityIndicator];
  [v4 enableAppearanceForView:v7];
}

- (void)setSubtitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:0];
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_subtitle, a3);
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
  v3 = [(TLKActivityIndicatorView *)self subtitle];
  v4 = [v3 text];
  v5 = [(TLKActivityIndicatorView *)self subtitleLabel];
  [v5 setText:v4];

  v6 = [(TLKActivityIndicatorView *)self activityIndicator];
  [v6 startAnimating];
}

- (id)subtitleLabelText
{
  v2 = [(TLKActivityIndicatorView *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

@end