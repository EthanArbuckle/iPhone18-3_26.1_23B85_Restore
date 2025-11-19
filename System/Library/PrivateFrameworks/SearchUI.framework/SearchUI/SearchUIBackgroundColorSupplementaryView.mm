@interface SearchUIBackgroundColorSupplementaryView
- (SearchUIBackgroundColorSupplementaryView)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)tlks_setCornerRadius:(double)a3 withStyle:(id)a4;
@end

@implementation SearchUIBackgroundColorSupplementaryView

- (SearchUIBackgroundColorSupplementaryView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = SearchUIBackgroundColorSupplementaryView;
  v3 = [(SearchUIBackgroundColorSupplementaryView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69D91C8] viewWithProminence:{+[SearchUIFocusStyleUtilities secondaryHaloProminence](SearchUIFocusStyleUtilities, "secondaryHaloProminence")}];
    [(SearchUIBackgroundColorSupplementaryView *)v3 setHighlightView:v4];

    +[SearchUIAutoLayout selectionBorderWidth];
    v6 = v5;
    v7 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [v7 setBorderWidth:v6];

    LODWORD(v7) = [(SearchUIBackgroundColorSupplementaryView *)v3 highlighted];
    v8 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [v8 setHidden:v7 ^ 1];

    v9 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [(SearchUIBackgroundColorSupplementaryView *)v3 addSubview:v9];

    v10 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [SearchUIAutoLayout fillContainerWithView:v10];

    v11 = objc_opt_new();
    [(SearchUIBackgroundColorSupplementaryView *)v3 setColorView:v11];

    v12 = [(SearchUIBackgroundColorSupplementaryView *)v3 colorView];
    [(SearchUIBackgroundColorSupplementaryView *)v3 addSubview:v12];

    v13 = [(SearchUIBackgroundColorSupplementaryView *)v3 colorView];
    [SearchUIAutoLayout fillContainerWithView:v13];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  self->_highlighted = a3;
  v4 = [(SearchUIBackgroundColorSupplementaryView *)self highlighted];
  v5 = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  [v5 setHidden:!v4];

  +[SearchUIAutoLayout selectionBorderWidth];
  v7 = -v6;
  [(SearchUIBackgroundColorSupplementaryView *)self bounds];
  v15 = CGRectInset(v14, v7, v7);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v12 = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  [v12 setFrame:{x, y, width, height}];
}

- (void)tlks_setCornerRadius:(double)a3 withStyle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIBackgroundColorSupplementaryView;
  v6 = a4;
  [(SearchUIBackgroundColorSupplementaryView *)&v10 tlks_setCornerRadius:v6 withStyle:a3];
  v7 = [(SearchUIBackgroundColorSupplementaryView *)self colorView:v10.receiver];
  [v7 tlks_setCornerRadius:v6 withStyle:a3];

  v8 = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  +[SearchUIAutoLayout selectionBorderWidth];
  [v8 tlks_setCornerRadius:v6 withStyle:v9 + a3];
}

- (void)setMaskedCorners:(unint64_t)a3
{
  self->_maskedCorners = a3;
  v5 = [(SearchUIBackgroundColorSupplementaryView *)self colorView];
  [v5 setMaskedCorners:a3];

  v7 = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  v6 = [v7 layer];
  [v6 setMaskedCorners:a3];
}

@end