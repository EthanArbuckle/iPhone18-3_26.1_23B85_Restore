@interface PXContentSyndicationSectionHeaderView
- (CGSize)_performLayoutInWidth:(double)width applyLayoutToSubviews:(BOOL)subviews;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXContentSyndicationSectionHeaderView)initWithFrame:(CGRect)frame;
- (PXContentSyndicationSectionHeaderViewDelegate)delegate;
- (id)contextMenuItemsForAttributionView:(id)view;
- (void)_updatePillAlignmentWithTraitCollection:(id)collection;
- (void)layoutSubviews;
- (void)setSocialLayerHighlight:(id)highlight;
- (void)setSpec:(id)spec;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXContentSyndicationSectionHeaderView

- (PXContentSyndicationSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuItemsForAttributionView:(id)view
{
  delegate = [(PXContentSyndicationSectionHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = MEMORY[0x1E695E0F0];
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    delegate2 = [(PXContentSyndicationSectionHeaderView *)self delegate];
    v7 = [delegate2 additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:self];
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

- (CGSize)_performLayoutInWidth:(double)width applyLayoutToSubviews:(BOOL)subviews
{
  socialLayerAttributionView = self->_socialLayerAttributionView;
  if (subviews)
  {
    [(SLAttributionView *)socialLayerAttributionView prepareLayoutWithMaxWidth:width + -32.0];
    [(SLAttributionView *)self->_socialLayerAttributionView sizeThatFits:width + -32.0, 1.79769313e308];
    v8 = v7 + 16.0;
    [(SLAttributionView *)self->_socialLayerAttributionView setFrame:?];
  }

  else if (socialLayerAttributionView)
  {
    [(SLAttributionView *)socialLayerAttributionView sizeThatFits:width + -32.0, 1.79769313e308];
    v8 = fmax(v9, 29.5) + 16.0;
  }

  else
  {
    v8 = 45.5;
  }

  widthCopy = width;
  v11 = v8;
  result.height = v11;
  result.width = widthCopy;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXContentSyndicationSectionHeaderView *)self _performLayoutInWidth:0 applyLayoutToSubviews:fits.width, fits.height];
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

- (void)_updatePillAlignmentWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = +[PXContentSyndicationSettings sharedInstance];
  shouldHorizontallyCenterAttributionViewInGrid = [v5 shouldHorizontallyCenterAttributionViewInGrid];

  v7 = +[PXContentSyndicationSettings sharedInstance];
  alwaysLeadingAlignAttributionViewOnRegularWidthPads = [v7 alwaysLeadingAlignAttributionViewOnRegularWidthPads];

  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  horizontalSizeClass = [collectionCopy horizontalSizeClass];

  if (shouldHorizontallyCenterAttributionViewInGrid)
  {
    v11 = alwaysLeadingAlignAttributionViewOnRegularWidthPads == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && userInterfaceIdiom == 1)
  {
    if (horizontalSizeClass == 2)
    {
      goto LABEL_9;
    }
  }

  else if ((shouldHorizontallyCenterAttributionViewInGrid & 1) == 0)
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

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = PXContentSyndicationSectionHeaderView;
  [(PXContentSyndicationSectionHeaderView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(PXContentSyndicationSectionHeaderView *)self traitCollection];
  [(PXContentSyndicationSectionHeaderView *)self _updatePillAlignmentWithTraitCollection:traitCollection];
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v5 = self->_spec;
  v6 = v5;
  if (v5 == specCopy)
  {
  }

  else
  {
    v7 = [(PXPhotosSectionHeaderLayoutSpec *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      [(PXContentSyndicationSectionHeaderView *)self setNeedsLayout];
    }
  }
}

- (void)setSocialLayerHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = self->_socialLayerHighlight;
  v6 = v5;
  if (v5 == highlightCopy)
  {
  }

  else
  {
    v7 = [(SLHighlight *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_socialLayerHighlight, highlight);
      [(SLAttributionView *)self->_socialLayerAttributionView removeFromSuperview];
      socialLayerAttributionView = self->_socialLayerAttributionView;
      self->_socialLayerAttributionView = 0;

      v9 = PXContentSyndicationAttributionViewForSocialLayerHighlight(self->_socialLayerHighlight, 1);
      v10 = self->_socialLayerAttributionView;
      self->_socialLayerAttributionView = v9;

      [(SLAttributionView *)self->_socialLayerAttributionView setDelegate:self];
      traitCollection = [(PXContentSyndicationSectionHeaderView *)self traitCollection];
      [(PXContentSyndicationSectionHeaderView *)self _updatePillAlignmentWithTraitCollection:traitCollection];

      [(PXContentSyndicationSectionHeaderView *)self addSubview:self->_socialLayerAttributionView];
      [(PXContentSyndicationSectionHeaderView *)self setNeedsLayout];
    }
  }
}

- (PXContentSyndicationSectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXContentSyndicationSectionHeaderView;
  v3 = [(PXContentSyndicationSectionHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXContentSyndicationSectionHeaderView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

@end