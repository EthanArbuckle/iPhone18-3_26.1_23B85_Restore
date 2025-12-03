@interface TLKActivityIndicatorView
- (id)setupContentView;
- (id)subtitleLabelText;
- (void)didMoveToWindow;
- (void)observedPropertiesChanged;
- (void)setSubtitle:(id)subtitle;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKActivityIndicatorView;
  [(TLKActivityIndicatorView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKActivityIndicatorView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKActivityIndicatorView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v8.receiver = self;
  v8.super_class = TLKActivityIndicatorView;
  appearanceCopy = appearance;
  [(UIView *)&v8 tlk_updateForAppearance:appearanceCopy];
  secondaryColor = [appearanceCopy secondaryColor];
  activityIndicator = [(TLKActivityIndicatorView *)self activityIndicator];
  [activityIndicator setColor:secondaryColor];

  activityIndicator2 = [(TLKActivityIndicatorView *)self activityIndicator];
  [appearanceCopy enableAppearanceForView:activityIndicator2];
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
  subtitle = [(TLKActivityIndicatorView *)self subtitle];
  text = [subtitle text];
  subtitleLabel = [(TLKActivityIndicatorView *)self subtitleLabel];
  [subtitleLabel setText:text];

  activityIndicator = [(TLKActivityIndicatorView *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (id)subtitleLabelText
{
  subtitleLabel = [(TLKActivityIndicatorView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

@end