@interface PXNavigationTitleView
- (PXNavigationTitleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)margins;
- (void)_setNeedsUpdate;
- (void)_setSubtitleVisible:(BOOL)visible;
- (void)_updateConstraintsIfNeeded;
- (void)_updateFontsIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSizeIfNeeded;
- (void)_updateTextsIfNeeded;
- (void)performChanges:(id)changes;
- (void)setMargins:(UIEdgeInsets)margins;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleFont:(id)font;
- (void)setSubtitleTextColor:(id)color;
- (void)setSubviewsAlpha:(double)alpha;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
- (void)setTitleTextColor:(id)color;
- (void)setVerticalSizeClass:(int64_t)class;
- (void)updateConstraints;
@end

@implementation PXNavigationTitleView

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setSubviewsAlpha:(double)alpha
{
  if (self->_subviewsAlpha != alpha)
  {
    self->_subviewsAlpha = alpha;
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    [_titleLabel setAlpha:alpha];

    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    [_subtitleLabel setAlpha:alpha];
  }
}

- (void)_updateSizeIfNeeded
{
  if (self->_needsUpdateFlags.size)
  {
    self->_needsUpdateFlags.size = 0;
    v4 = MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    v7 = *v4;
    [_titleLabel sizeThatFits:{*v4, v5}];
    v9 = v8;

    if ([(PXNavigationTitleView *)self _isSubtitleVisible])
    {
      _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
      [_subtitleLabel sizeThatFits:{v7, v5}];
      v12 = v11;

      if (v9 < v12)
      {
        v9 = v12;
      }
    }

    verticalSizeClass = [(PXNavigationTitleView *)self verticalSizeClass];
    if (verticalSizeClass == 1)
    {
      if ([(PXNavigationTitleView *)self _isSubtitleVisible])
      {
        v14 = 42.0;
      }

      else
      {
        v14 = 32.0;
      }
    }

    else if (verticalSizeClass)
    {
      v14 = v5;
    }

    else
    {
      v14 = 44.0;
    }

    [(PXNavigationTitleView *)self setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v9, v14];
    superview = [(PXNavigationTitleView *)self superview];
    [superview setNeedsLayout];
  }
}

- (void)_updateConstraintsIfNeeded
{
  if (self->_needsUpdateFlags.constraints)
  {
    self->_needsUpdateFlags.constraints = 0;
    _constraints = [(PXNavigationTitleView *)self _constraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:_constraints];
    [(PXNavigationTitleView *)self removeConstraints:_constraints];
    [(PXNavigationTitleView *)self _setConstraints:0];
    [(PXNavigationTitleView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateFontsIfNeeded
{
  if (self->_needsUpdateFlags.fonts)
  {
    self->_needsUpdateFlags.fonts = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PXNavigationTitleView__updateFontsIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7731218;
    aBlock[4] = &v9;
    v3 = _Block_copy(aBlock);
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    titleFont = [(PXNavigationTitleView *)self titleFont];
    v3[2](v3, _titleLabel, titleFont);

    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    subtitleFont = [(PXNavigationTitleView *)self subtitleFont];
    v3[2](v3, _subtitleLabel, subtitleFont);

    if (*(v10 + 24) == 1)
    {
      [(PXNavigationTitleView *)self _invalidateSize];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __45__PXNavigationTitleView__updateFontsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 font];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      [v9 setFont:v5];
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

- (void)_updateTextsIfNeeded
{
  if (self->_needsUpdateFlags.texts)
  {
    self->_needsUpdateFlags.texts = 0;
    _isSubtitleVisible = [(PXNavigationTitleView *)self _isSubtitleVisible];
    title = [(PXNavigationTitleView *)self title];
    subtitle = [(PXNavigationTitleView *)self subtitle];
    if ([(PXNavigationTitleView *)self verticalSizeClass]== 1)
    {

      subtitle = 0;
    }

    titleFont = [(PXNavigationTitleView *)self titleFont];
    v7 = __45__PXNavigationTitleView__updateTextsIfNeeded__block_invoke(title, titleFont);

    subtitleFont = [(PXNavigationTitleView *)self subtitleFont];
    v9 = __45__PXNavigationTitleView__updateTextsIfNeeded__block_invoke(subtitle, subtitleFont);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__PXNavigationTitleView__updateTextsIfNeeded__block_invoke_2;
    aBlock[3] = &unk_1E77311F0;
    aBlock[4] = &v14;
    v10 = _Block_copy(aBlock);
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    v10[2](v10, _titleLabel, v7);

    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    v10[2](v10, _subtitleLabel, v9);

    -[PXNavigationTitleView _setSubtitleVisible:](self, "_setSubtitleVisible:", [v9 length] != 0);
    if (_isSubtitleVisible != [(PXNavigationTitleView *)self _isSubtitleVisible])
    {
      [(PXNavigationTitleView *)self _invalidateConstraints];
    }

    if (*(v15 + 24) == 1)
    {
      [(PXNavigationTitleView *)self _invalidateSize];
    }

    _Block_object_dispose(&v14, 8);
  }
}

id __45__PXNavigationTitleView__updateTextsIfNeeded__block_invoke(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = v5;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  if (v4)
  {
    v11 = *MEMORY[0x1E69DB648];
    v12[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 initWithString:v7 attributes:v8];
  }

  else
  {
    v9 = [v5 initWithString:v7 attributes:0];
  }

  return v9;
}

void __45__PXNavigationTitleView__updateTextsIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 attributedText];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      [v9 setAttributedText:v5];
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationTitleView.m" lineNumber:263 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXNavigationTitleView *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXNavigationTitleView *)self _updateFontsIfNeeded];
    [(PXNavigationTitleView *)self _updateTextsIfNeeded];
    [(PXNavigationTitleView *)self _updateConstraintsIfNeeded];
    [(PXNavigationTitleView *)self _updateSizeIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXNavigationTitleView *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationTitleView.m" lineNumber:259 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  v8 = changesCopy;
  if (changesCopy)
  {
    isPerformingChanges = self->_isPerformingChanges;
    self->_isPerformingChanges = 1;
    (*(changesCopy + 2))();
    self->_isPerformingChanges = isPerformingChanges;
    if (isPerformingChanges)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationTitleView.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"nil != changeBlock"}];

  if (!self->_isPerformingChanges)
  {
LABEL_3:
    [(PXNavigationTitleView *)self _updateIfNeeded];
  }

LABEL_4:
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    [_titleLabel setTextAlignment:alignment];

    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    [_subtitleLabel setTextAlignment:alignment];
  }
}

- (void)setSubtitleFont:(id)font
{
  fontCopy = font;
  if (self->_subtitleFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_subtitleFont, font);
    [(PXNavigationTitleView *)self _invalidateFonts];
    fontCopy = v6;
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if (self->_titleFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_titleFont, font);
    [(PXNavigationTitleView *)self _invalidateFonts];
    fontCopy = v6;
  }
}

- (void)setSubtitleTextColor:(id)color
{
  colorCopy = color;
  if (self->_subtitleTextColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_subtitleTextColor, color);
    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    [_subtitleLabel setTextColor:v7];

    colorCopy = v7;
  }
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  if (self->_titleTextColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_titleTextColor, color);
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    [_titleLabel setTextColor:v7];

    colorCopy = v7;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_subtitle != subtitleCopy)
  {
    v6 = subtitleCopy;
    objc_storeStrong(&self->_subtitle, subtitle);
    [(PXNavigationTitleView *)self _invalidateTexts];
    subtitleCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(PXNavigationTitleView *)self _invalidateTexts];
    titleCopy = v6;
  }
}

- (void)setVerticalSizeClass:(int64_t)class
{
  if (self->_verticalSizeClass != class)
  {
    self->_verticalSizeClass = class;
    [(PXNavigationTitleView *)self _invalidateTexts];

    [(PXNavigationTitleView *)self _invalidateSize];
  }
}

- (void)_setSubtitleVisible:(BOOL)visible
{
  if (self->__subtitleVisible != visible)
  {
    self->__subtitleVisible = visible;
    [(PXNavigationTitleView *)self _invalidateConstraints];
  }
}

- (void)setMargins:(UIEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.left;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_margins.top), vceqq_f64(v4, *&self->_margins.bottom)))) & 1) == 0)
  {
    self->_margins = margins;
    [(PXNavigationTitleView *)self _invalidateConstraints];

    [(PXNavigationTitleView *)self _invalidateSize];
  }
}

- (void)updateConstraints
{
  v49[2] = *MEMORY[0x1E69E9840];
  _constraints = [(PXNavigationTitleView *)self _constraints];

  if (!_constraints)
  {
    v48[0] = @"titleLabel";
    _titleLabel = [(PXNavigationTitleView *)self _titleLabel];
    v48[1] = @"subtitleLabel";
    v49[0] = _titleLabel;
    _subtitleLabel = [(PXNavigationTitleView *)self _subtitleLabel];
    v49[1] = _subtitleLabel;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];

    [(PXNavigationTitleView *)self margins];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v46[0] = @"leftMargin";
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v47[0] = v15;
    v46[1] = @"rightMargin";
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    v47[1] = v16;
    v46[2] = @"topMargin";
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v47[2] = v17;
    v46[3] = @"bottomMargin";
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v47[3] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];

    array = [MEMORY[0x1E695DF70] array];
    if ([(PXNavigationTitleView *)self _isSubtitleVisible])
    {
      v43 = v19;
      centerXAnchor = [(UILabel *)self->__titleLabel centerXAnchor];
      centerXAnchor2 = [(PXNavigationTitleView *)self centerXAnchor];
      v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v45[0] = v40;
      centerXAnchor3 = [(UILabel *)self->__subtitleLabel centerXAnchor];
      centerXAnchor4 = [(PXNavigationTitleView *)self centerXAnchor];
      v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v45[1] = v37;
      widthAnchor = [(PXNavigationTitleView *)self widthAnchor];
      widthAnchor2 = [(UILabel *)self->__titleLabel widthAnchor];
      v23 = v10 + v14;
      v24 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 constant:v23];
      v45[2] = v24;
      widthAnchor3 = [(PXNavigationTitleView *)self widthAnchor];
      widthAnchor4 = [(UILabel *)self->__subtitleLabel widthAnchor];
      v27 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4 constant:v23];
      v45[3] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
      [array addObjectsFromArray:v28];

      v19 = v43;
      widthAnchor5 = [(PXNavigationTitleView *)self widthAnchor];
      _titleLabel2 = [widthAnchor5 constraintEqualToConstant:0.0];

      LODWORD(v31) = 1132068864;
      [_titleLabel2 setPriority:v31];
      [array addObject:_titleLabel2];
      v32 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-(>=topMargin@747)-[titleLabel]" options:0 metrics:v43 views:v6];
      [array addObjectsFromArray:v32];

      v33 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[titleLabel]-[subtitleLabel]" options:0x80000 metrics:v43 views:v6];
      [array addObjectsFromArray:v33];

      v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[subtitleLabel]-(>=bottomMargin@749)-|" options:0 metrics:v43 views:v6];
      [array addObjectsFromArray:v34];
    }

    else
    {
      v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(==leftMargin)-[titleLabel]-(==rightMargin)-|" options:0 metrics:v19 views:v6];
      [array addObjectsFromArray:v35];

      v36 = MEMORY[0x1E696ACD8];
      _titleLabel2 = [(PXNavigationTitleView *)self _titleLabel];
      v34 = [v36 constraintWithItem:_titleLabel2 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v34];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    [(PXNavigationTitleView *)self addConstraints:array];
    [(PXNavigationTitleView *)self _setConstraints:array];
  }

  v44.receiver = self;
  v44.super_class = PXNavigationTitleView;
  [(PXNavigationTitleView *)&v44 updateConstraints];
}

- (PXNavigationTitleView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PXNavigationTitleView;
  v3 = [(PXNavigationTitleView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_textAlignment = 1;
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->__titleLabel;
    v4->__titleLabel = v5;

    [(UILabel *)v4->__titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->__titleLabel setMinimumScaleFactor:0.75];
    [(UILabel *)v4->__titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->__titleLabel setTextAlignment:v4->_textAlignment];
    LODWORD(v7) = 1144766464;
    [(UILabel *)v4->__titleLabel setContentHuggingPriority:1 forAxis:v7];
    [(PXNavigationTitleView *)v4 addSubview:v4->__titleLabel];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->__subtitleLabel;
    v4->__subtitleLabel = v8;

    [(UILabel *)v4->__subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->__subtitleLabel setTextAlignment:v4->_textAlignment];
    LODWORD(v10) = 1144733696;
    [(UILabel *)v4->__subtitleLabel setContentCompressionResistancePriority:1 forAxis:v10];
    [(PXNavigationTitleView *)v4 addSubview:v4->__subtitleLabel];
    v11 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD80]];
    titleFont = v4->_titleFont;
    v4->_titleFont = v11;

    v13 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD10]];
    subtitleFont = v4->_subtitleFont;
    v4->_subtitleFont = v13;

    __asm { FMOV            V1.2D, #6.0 }

    v4->_verticalSizeClass = 0;
    *&v4->_margins.top = xmmword_1A5380E00;
    *&v4->_margins.bottom = _Q1;
    v4->_needsUpdateFlags = 16843009;
    [(PXNavigationTitleView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXNavigationTitleView *)v4 _updateIfNeeded];
  }

  return v4;
}

@end