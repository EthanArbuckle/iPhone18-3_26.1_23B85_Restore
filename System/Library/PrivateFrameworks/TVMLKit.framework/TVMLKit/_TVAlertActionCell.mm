@interface _TVAlertActionCell
- (id)preferredFocusEnvironments;
- (void)prepareForReuse;
- (void)setButtonView:(id)view;
@end

@implementation _TVAlertActionCell

- (void)setButtonView:(id)view
{
  viewCopy = view;
  buttonView = self->_buttonView;
  v9 = viewCopy;
  if (buttonView != viewCopy)
  {
    [(UIView *)buttonView removeFromSuperview];
    objc_storeStrong(&self->_buttonView, view);
    if (self->_buttonView)
    {
      contentView = [(_TVAlertActionCell *)self contentView];
      [contentView addSubview:self->_buttonView];

      v8 = self->_buttonView;
      [(_TVAlertActionCell *)self bounds];
      [(UIView *)v8 setFrame:?];
    }
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_buttonView)
  {
    v4[0] = self->_buttonView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = _TVAlertActionCell;
  [(_TVAlertActionCell *)&v6 prepareForReuse];
  contentView = [(_TVAlertActionCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  buttonView = self->_buttonView;
  self->_buttonView = 0;
}

@end