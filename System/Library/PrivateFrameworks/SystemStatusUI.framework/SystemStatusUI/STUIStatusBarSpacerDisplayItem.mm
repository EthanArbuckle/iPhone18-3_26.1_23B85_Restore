@interface STUIStatusBarSpacerDisplayItem
- (CGSize)size;
- (STUIStatusBarSpacerDisplayItem)initWithIdentifier:(id)identifier item:(id)item;
- (void)_applyConstraintsIfNeeded;
- (void)applyUpdate:(id)update;
- (void)setContainerView:(id)view;
@end

@implementation STUIStatusBarSpacerDisplayItem

- (STUIStatusBarSpacerDisplayItem)initWithIdentifier:(id)identifier item:(id)item
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarSpacerDisplayItem;
  result = [(STUIStatusBarDisplayItem *)&v5 initWithIdentifier:identifier item:item];
  result->_size = vdupq_n_s64(0x7FF0000000000000uLL);
  return result;
}

- (void)applyUpdate:(id)update
{
  v17[2] = *MEMORY[0x277D85DE8];
  placementInfo = [update placementInfo];
  v5 = [placementInfo objectForKeyedSubscript:@"size"];

  if (v5)
  {
    [v5 CGSizeValue];
    v8 = v6;
    v9 = v7;
    if (v6 != self->_size.width || v7 != self->_size.height)
    {
      self->_size.width = v6;
      self->_size.height = v7;
      if (self->_constraints)
      {
        [MEMORY[0x277CCAAD0] deactivateConstraints:?];
      }

      widthAnchor = [(UILayoutGuide *)self->_layoutGuide widthAnchor];
      v12 = [widthAnchor constraintEqualToConstant:v8];
      v17[0] = v12;
      heightAnchor = [(UILayoutGuide *)self->_layoutGuide heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:v9];
      v17[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      constraints = self->_constraints;
      self->_constraints = v15;

      [(STUIStatusBarSpacerDisplayItem *)self _applyConstraintsIfNeeded];
    }
  }
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  containerView = [(STUIStatusBarDisplayItem *)self containerView];

  if (containerView != viewCopy)
  {
    containerView2 = [(STUIStatusBarDisplayItem *)self containerView];

    if (containerView2)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
    }

    v7.receiver = self;
    v7.super_class = STUIStatusBarSpacerDisplayItem;
    [(STUIStatusBarDisplayItem *)&v7 setContainerView:viewCopy];
    [(STUIStatusBarSpacerDisplayItem *)self _applyConstraintsIfNeeded];
  }
}

- (void)_applyConstraintsIfNeeded
{
  if (self->_constraints)
  {
    containerView = [(STUIStatusBarDisplayItem *)self containerView];

    if (containerView)
    {
      v4 = MEMORY[0x277CCAAD0];
      constraints = self->_constraints;

      [v4 activateConstraints:constraints];
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end