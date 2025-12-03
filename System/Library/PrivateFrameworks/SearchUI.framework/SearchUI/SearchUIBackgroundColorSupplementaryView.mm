@interface SearchUIBackgroundColorSupplementaryView
- (SearchUIBackgroundColorSupplementaryView)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)tlks_setCornerRadius:(double)radius withStyle:(id)style;
@end

@implementation SearchUIBackgroundColorSupplementaryView

- (SearchUIBackgroundColorSupplementaryView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SearchUIBackgroundColorSupplementaryView;
  v3 = [(SearchUIBackgroundColorSupplementaryView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69D91C8] viewWithProminence:{+[SearchUIFocusStyleUtilities secondaryHaloProminence](SearchUIFocusStyleUtilities, "secondaryHaloProminence")}];
    [(SearchUIBackgroundColorSupplementaryView *)v3 setHighlightView:v4];

    +[SearchUIAutoLayout selectionBorderWidth];
    v6 = v5;
    highlightView = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [highlightView setBorderWidth:v6];

    LODWORD(highlightView) = [(SearchUIBackgroundColorSupplementaryView *)v3 highlighted];
    highlightView2 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [highlightView2 setHidden:highlightView ^ 1];

    highlightView3 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [(SearchUIBackgroundColorSupplementaryView *)v3 addSubview:highlightView3];

    highlightView4 = [(SearchUIBackgroundColorSupplementaryView *)v3 highlightView];
    [SearchUIAutoLayout fillContainerWithView:highlightView4];

    v11 = objc_opt_new();
    [(SearchUIBackgroundColorSupplementaryView *)v3 setColorView:v11];

    colorView = [(SearchUIBackgroundColorSupplementaryView *)v3 colorView];
    [(SearchUIBackgroundColorSupplementaryView *)v3 addSubview:colorView];

    colorView2 = [(SearchUIBackgroundColorSupplementaryView *)v3 colorView];
    [SearchUIAutoLayout fillContainerWithView:colorView2];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  self->_highlighted = highlighted;
  highlighted = [(SearchUIBackgroundColorSupplementaryView *)self highlighted];
  highlightView = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  [highlightView setHidden:!highlighted];

  +[SearchUIAutoLayout selectionBorderWidth];
  v7 = -v6;
  [(SearchUIBackgroundColorSupplementaryView *)self bounds];
  v15 = CGRectInset(v14, v7, v7);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  highlightView2 = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  [highlightView2 setFrame:{x, y, width, height}];
}

- (void)tlks_setCornerRadius:(double)radius withStyle:(id)style
{
  v10.receiver = self;
  v10.super_class = SearchUIBackgroundColorSupplementaryView;
  styleCopy = style;
  [(SearchUIBackgroundColorSupplementaryView *)&v10 tlks_setCornerRadius:styleCopy withStyle:radius];
  v7 = [(SearchUIBackgroundColorSupplementaryView *)self colorView:v10.receiver];
  [v7 tlks_setCornerRadius:styleCopy withStyle:radius];

  highlightView = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  +[SearchUIAutoLayout selectionBorderWidth];
  [highlightView tlks_setCornerRadius:styleCopy withStyle:v9 + radius];
}

- (void)setMaskedCorners:(unint64_t)corners
{
  self->_maskedCorners = corners;
  colorView = [(SearchUIBackgroundColorSupplementaryView *)self colorView];
  [colorView setMaskedCorners:corners];

  highlightView = [(SearchUIBackgroundColorSupplementaryView *)self highlightView];
  layer = [highlightView layer];
  [layer setMaskedCorners:corners];
}

@end