@interface PXContentSyndicationSectionHeaderView
- (CGSize)_performLayoutInWidth:(double)a3 applyLayoutToSubviews:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXContentSyndicationSectionHeaderView)initWithFrame:(CGRect)a3;
- (PXContentSyndicationSectionHeaderViewDelegate)delegate;
- (id)contextMenuItemsForAttributionView:(id)a3;
- (void)_updatePillAlignmentWithTraitCollection:(id)a3;
- (void)layoutSubviews;
- (void)setSocialLayerHighlight:(id)a3;
- (void)setSpec:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXContentSyndicationSectionHeaderView

- (PXContentSyndicationSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuItemsForAttributionView:(id)a3
{
  v4 = [(PXContentSyndicationSectionHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = MEMORY[0x1E695E0F0];
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = [(PXContentSyndicationSectionHeaderView *)self delegate];
    v7 = [v8 additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:self];
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (CGSize)_performLayoutInWidth:(double)a3 applyLayoutToSubviews:(BOOL)a4
{
  socialLayerAttributionView = self->_socialLayerAttributionView;
  if (a4)
  {
    [(SLAttributionView *)socialLayerAttributionView prepareLayoutWithMaxWidth:a3 + -32.0];
    [(SLAttributionView *)self->_socialLayerAttributionView sizeThatFits:a3 + -32.0, 1.79769313e308];
    v8 = v7 + 16.0;
    [(SLAttributionView *)self->_socialLayerAttributionView setFrame:?];
  }

  else if (socialLayerAttributionView)
  {
    [(SLAttributionView *)socialLayerAttributionView sizeThatFits:a3 + -32.0, 1.79769313e308];
    v8 = fmax(v9, 29.5) + 16.0;
  }

  else
  {
    v8 = 45.5;
  }

  v10 = a3;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXContentSyndicationSectionHeaderView *)self _performLayoutInWidth:0 applyLayoutToSubviews:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXContentSyndicationSectionHeaderView;
  [(PXContentSyndicationSectionHeaderView *)&v4 layoutSubviews];
  [(PXContentSyndicationSectionHeaderView *)self bounds];
  [(PXContentSyndicationSectionHeaderView *)self _performLayoutInWidth:1 applyLayoutToSubviews:v3];
}

- (void)_updatePillAlignmentWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = +[PXContentSyndicationSettings sharedInstance];
  v6 = [v5 shouldHorizontallyCenterAttributionViewInGrid];

  v7 = +[PXContentSyndicationSettings sharedInstance];
  v8 = [v7 alwaysLeadingAlignAttributionViewOnRegularWidthPads];

  v9 = [v4 userInterfaceIdiom];
  v10 = [v4 horizontalSizeClass];

  if (v6)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 == 1)
  {
    if (v10 == 2)
    {
      goto LABEL_9;
    }
  }

  else if ((v6 & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:
  socialLayerAttributionView = self->_socialLayerAttributionView;

  [(SLAttributionView *)socialLayerAttributionView updateAlignment:v13];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXContentSyndicationSectionHeaderView;
  [(PXContentSyndicationSectionHeaderView *)&v5 traitCollectionDidChange:a3];
  v4 = [(PXContentSyndicationSectionHeaderView *)self traitCollection];
  [(PXContentSyndicationSectionHeaderView *)self _updatePillAlignmentWithTraitCollection:v4];
}

- (void)setSpec:(id)a3
{
  v8 = a3;
  v5 = self->_spec;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXPhotosSectionHeaderLayoutSpec *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
      [(PXContentSyndicationSectionHeaderView *)self setNeedsLayout];
    }
  }
}

- (void)setSocialLayerHighlight:(id)a3
{
  v12 = a3;
  v5 = self->_socialLayerHighlight;
  v6 = v5;
  if (v5 == v12)
  {
  }

  else
  {
    v7 = [(SLHighlight *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_socialLayerHighlight, a3);
      [(SLAttributionView *)self->_socialLayerAttributionView removeFromSuperview];
      socialLayerAttributionView = self->_socialLayerAttributionView;
      self->_socialLayerAttributionView = 0;

      v9 = PXContentSyndicationAttributionViewForSocialLayerHighlight(self->_socialLayerHighlight, 1);
      v10 = self->_socialLayerAttributionView;
      self->_socialLayerAttributionView = v9;

      [(SLAttributionView *)self->_socialLayerAttributionView setDelegate:self];
      v11 = [(PXContentSyndicationSectionHeaderView *)self traitCollection];
      [(PXContentSyndicationSectionHeaderView *)self _updatePillAlignmentWithTraitCollection:v11];

      [(PXContentSyndicationSectionHeaderView *)self addSubview:self->_socialLayerAttributionView];
      [(PXContentSyndicationSectionHeaderView *)self setNeedsLayout];
    }
  }
}

- (PXContentSyndicationSectionHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXContentSyndicationSectionHeaderView;
  v3 = [(PXContentSyndicationSectionHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PXContentSyndicationSectionHeaderView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end