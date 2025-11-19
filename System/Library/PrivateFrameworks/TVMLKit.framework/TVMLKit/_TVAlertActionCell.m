@interface _TVAlertActionCell
- (id)preferredFocusEnvironments;
- (void)prepareForReuse;
- (void)setButtonView:(id)a3;
@end

@implementation _TVAlertActionCell

- (void)setButtonView:(id)a3
{
  v5 = a3;
  buttonView = self->_buttonView;
  v9 = v5;
  if (buttonView != v5)
  {
    [(UIView *)buttonView removeFromSuperview];
    objc_storeStrong(&self->_buttonView, a3);
    if (self->_buttonView)
    {
      v7 = [(_TVAlertActionCell *)self contentView];
      [v7 addSubview:self->_buttonView];

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
  v3 = [(_TVAlertActionCell *)self contentView];
  v4 = [v3 subviews];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperview];

  buttonView = self->_buttonView;
  self->_buttonView = 0;
}

@end