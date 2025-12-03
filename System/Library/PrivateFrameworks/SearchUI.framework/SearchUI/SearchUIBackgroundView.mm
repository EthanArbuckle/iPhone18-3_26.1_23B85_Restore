@interface SearchUIBackgroundView
- (SearchUIBackgroundView)init;
- (void)didMoveToWindow;
- (void)setInPreviewPlatter:(BOOL)platter;
- (void)setShouldUseInsetRoundedSections:(BOOL)sections;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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
    layer = [(SearchUIBackgroundView *)v2 layer];
    [layer setHitTestsAsOpaque:1];
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

- (void)setShouldUseInsetRoundedSections:(BOOL)sections
{
  if (self->_shouldUseInsetRoundedSections != sections)
  {
    self->_shouldUseInsetRoundedSections = sections;
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setInPreviewPlatter:(BOOL)platter
{
  if (self->_inPreviewPlatter != platter)
  {
    self->_inPreviewPlatter = platter;
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundView;
  [(SearchUIBackgroundView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIBackgroundView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIBackgroundView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIBackgroundView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundView;
  [(SearchUIBackgroundView *)&v9 tlk_updateForAppearance:appearanceCopy];
  if ([appearanceCopy isVibrant] && -[SearchUIBackgroundView isInPreviewPlatter](self, "isInPreviewPlatter"))
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:0];
    if ([appearanceCopy isDark])
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
      platterColor = [appearanceCopy platterColor];
    }

    else
    {
      if ([(SearchUIBackgroundView *)self shouldUseInsetRoundedSections])
      {
        [appearanceCopy groupedBackgroundColor];
      }

      else
      {
        [appearanceCopy backgroundColor];
      }
      platterColor = ;
    }

    v7 = platterColor;
    v5 = platterColor;
  }

  [(SearchUIBackgroundView *)self setBackgroundColor:v7];
}

@end