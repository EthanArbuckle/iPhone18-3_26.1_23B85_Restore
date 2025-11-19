@interface SearchUIBackgroundView
- (SearchUIBackgroundView)init;
- (void)didMoveToWindow;
- (void)setInPreviewPlatter:(BOOL)a3;
- (void)setShouldUseInsetRoundedSections:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchUIBackgroundView

- (SearchUIBackgroundView)init
{
  v6.receiver = self;
  v6.super_class = SearchUIBackgroundView;
  v2 = [(SearchUIBackgroundView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SearchUIBackgroundView *)v2 layer];
    [v4 setHitTestsAsOpaque:1];
  }

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIBackgroundView;
  [(SearchUIBackgroundView *)&v3 didMoveToWindow];
  [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
}

- (void)setShouldUseInsetRoundedSections:(BOOL)a3
{
  if (self->_shouldUseInsetRoundedSections != a3)
  {
    self->_shouldUseInsetRoundedSections = a3;
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setInPreviewPlatter:(BOOL)a3
{
  if (self->_inPreviewPlatter != a3)
  {
    self->_inPreviewPlatter = a3;
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundView;
  [(SearchUIBackgroundView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIBackgroundView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIBackgroundView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundView;
  [(SearchUIBackgroundView *)&v9 tlk_updateForAppearance:v4];
  if ([v4 isVibrant] && -[SearchUIBackgroundView isInPreviewPlatter](self, "isInPreviewPlatter"))
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    if ([v4 isDark])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [v5 setAdaptiveStyle:v6];
    [(SearchUIBackgroundView *)self _setBackground:v5];
    v7 = 0;
  }

  else
  {
    [(SearchUIBackgroundView *)self _setBackground:0];
    if ([(SearchUIBackgroundView *)self isInPreviewPlatter])
    {
      v8 = [v4 platterColor];
    }

    else
    {
      if ([(SearchUIBackgroundView *)self shouldUseInsetRoundedSections])
      {
        [v4 groupedBackgroundColor];
      }

      else
      {
        [v4 backgroundColor];
      }
      v8 = ;
    }

    v7 = v8;
    v5 = v8;
  }

  [(SearchUIBackgroundView *)self setBackgroundColor:v7];
}

@end