@interface WGExplanatoryView
- (WGExplanatoryView)initWithGlyph:(id)glyph andExplanation:(id)explanation;
- (void)_configureExplanationLabelWithExplanation:(id)explanation;
- (void)_configureGlyphViewWithGlyph:(id)glyph;
- (void)_invalidateVisualStyling;
- (void)_updateVisualStylingIfNecessary;
- (void)addTarget:(id)target action:(SEL)action;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation WGExplanatoryView

- (WGExplanatoryView)initWithGlyph:(id)glyph andExplanation:(id)explanation
{
  glyphCopy = glyph;
  explanationCopy = explanation;
  v11.receiver = self;
  v11.super_class = WGExplanatoryView;
  v8 = [(WGExplanatoryView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    if (glyphCopy)
    {
      [(WGExplanatoryView *)v8 _configureGlyphViewWithGlyph:glyphCopy];
    }

    if (explanationCopy)
    {
      [(WGExplanatoryView *)v9 _configureExplanationLabelWithExplanation:explanationCopy];
    }
  }

  return v9;
}

- (void)layoutSubviews
{
  v80.receiver = self;
  v80.super_class = WGExplanatoryView;
  [(WGExplanatoryView *)&v80 layoutSubviews];
  [(WGExplanatoryView *)self _updateVisualStylingIfNecessary];
  [(WGExplanatoryView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  glyphView = self->_glyphView;
  if (glyphView)
  {
    v12 = CGRectGetWidth(*&v3) + -16.0;
    v81.origin.x = v7;
    v81.origin.y = v8;
    v81.size.width = v9;
    v81.size.height = v10;
    [(UIImageView *)glyphView sizeThatFits:v12, CGRectGetHeight(v81)];
    BSRectWithSize();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  label = self->_label;
  if (label)
  {
    v82.origin.x = v7;
    v82.origin.y = v8;
    v82.size.width = v9;
    v82.size.height = v10;
    recta = v18;
    v22 = v16;
    v23 = v14;
    v24 = v20;
    Width = CGRectGetWidth(v82);
    v83.origin.x = v23;
    v83.origin.y = v22;
    v83.size.width = recta;
    v83.size.height = v24;
    v26 = Width - CGRectGetWidth(v83) + -8.0 + -16.0;
    v84.origin.x = v7;
    v84.origin.y = v8;
    v84.size.width = v9;
    v84.size.height = v10;
    [(UILabel *)label sizeThatFits:v26, CGRectGetHeight(v84)];
    v85.origin.x = v7;
    v85.origin.y = v8;
    v85.size.width = v9;
    v85.size.height = v10;
    CGRectGetHeight(v85);
    v20 = v24;
    v14 = v23;
    v16 = v22;
    v18 = recta;
    BSRectWithSize();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v28 = *MEMORY[0x277CBF3A0];
    v30 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *(MEMORY[0x277CBF3A0] + 16);
    v34 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v86.origin.x = v14;
  v86.origin.y = v16;
  v86.size.width = v18;
  v86.size.height = v20;
  v76 = v30;
  v77 = v28;
  v74 = v34;
  v75 = v32;
  CGRectUnion(v86, *&v28);
  v87.size.width = v18;
  v87.origin.x = v14;
  v87.origin.y = v16;
  v87.size.height = v20;
  CGRectGetWidth(v87);
  v88.origin.y = v76;
  v88.origin.x = v77;
  v88.size.height = v74;
  v88.size.width = v75;
  CGRectGetWidth(v88);
  v35 = _WGMainScreenScale();
  UIRectCenteredIntegralRectScale();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  if (self->_glyphView)
  {
    UIRectCenteredYInRectScale();
    rect = v44;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    _shouldReverseLayoutDirection = [(WGExplanatoryView *)self _shouldReverseLayoutDirection];
    v52 = v37;
    v53 = v39;
    v54 = v41;
    v55 = v43;
    if (_shouldReverseLayoutDirection)
    {
      MaxX = CGRectGetMaxX(*&v52);
      v89.origin.x = rect;
      v89.origin.y = v46;
      v89.size.width = v48;
      v89.size.height = v50;
      MinX = MaxX - CGRectGetWidth(v89);
    }

    else
    {
      MinX = CGRectGetMinX(*&v52);
    }

    [(UIImageView *)self->_glyphView setFrame:MinX, v46, v48, v50];
  }

  if (self->_label)
  {
    v72 = v35;
    UIRectCenteredYInRectScale();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    _shouldReverseLayoutDirection2 = [(WGExplanatoryView *)self _shouldReverseLayoutDirection];
    v66 = v37;
    v67 = v39;
    v68 = v41;
    v69 = v43;
    if (_shouldReverseLayoutDirection2)
    {
      v70 = CGRectGetMinX(*&v66);
    }

    else
    {
      v71 = CGRectGetMaxX(*&v66);
      v90.origin.x = v58;
      v90.origin.y = v60;
      v90.size.width = v62;
      v90.size.height = v64;
      v70 = v71 - CGRectGetWidth(v90);
    }

    [(UILabel *)self->_label setFrame:v70, v60, v62, v64];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v4.receiver = self;
  v4.super_class = WGExplanatoryView;
  [(WGExplanatoryView *)&v4 willMoveToSuperview:superview];
  [(WGExplanatoryView *)self _invalidateVisualStyling];
}

- (void)addTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_tapGesture);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MEMORY[0x277D75B80]);
    [(WGExplanatoryView *)self addGestureRecognizer:WeakRetained];
    objc_storeWeak(&self->_tapGesture, WeakRetained);
  }

  [WeakRetained addTarget:targetCopy action:action];
}

- (void)_configureGlyphViewWithGlyph:(id)glyph
{
  if (!self->_glyphView)
  {
    v4 = MEMORY[0x277D755E8];
    glyphCopy = glyph;
    v6 = [v4 alloc];
    v7 = [glyphCopy imageWithRenderingMode:2];

    v8 = [v6 initWithImage:v7];
    glyphView = self->_glyphView;
    self->_glyphView = v8;

    v10 = self->_glyphView;

    [(WGExplanatoryView *)self addSubview:v10];
  }
}

- (void)_configureExplanationLabelWithExplanation:(id)explanation
{
  if (!self->_label)
  {
    v4 = MEMORY[0x277D756B8];
    explanationCopy = explanation;
    v6 = objc_alloc_init(v4);
    label = self->_label;
    self->_label = v6;

    v8 = self->_label;
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:explanationCopy];

    v10 = self->_label;

    [(WGExplanatoryView *)self addSubview:v10];
  }
}

- (void)_updateVisualStylingIfNecessary
{
  if (!self->_visualStylingProvider)
  {
    v3 = [(WGExplanatoryView *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    self->_visualStylingProvider = v3;

    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_glyphView withStyle:0];
    v5 = self->_visualStylingProvider;
    label = self->_label;

    [(MTVisualStylingProvider *)v5 automaticallyUpdateView:label withStyle:0];
  }
}

- (void)_invalidateVisualStyling
{
  [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_glyphView];
  [(MTVisualStylingProvider *)self->_visualStylingProvider stopAutomaticallyUpdatingView:self->_label];
  visualStylingProvider = self->_visualStylingProvider;
  self->_visualStylingProvider = 0;

  [(WGExplanatoryView *)self setNeedsLayout];
}

@end