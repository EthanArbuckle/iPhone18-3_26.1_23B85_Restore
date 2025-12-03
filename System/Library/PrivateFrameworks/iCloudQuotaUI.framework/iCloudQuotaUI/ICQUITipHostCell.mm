@interface ICQUITipHostCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_setupContentViewToHostTip;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQUITipHostCell

- (void)_setupContentViewToHostTip
{
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:&stru_28844FC60];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ICQUITipHostCell *)self setBackgroundColor:clearColor];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = ICQUITipHostCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  [(ICQUITipHostCell *)self _setupContentViewToHostTip:v7.receiver];
  v5 = [specifierCopy propertyForKey:@"ICQUITipView"];

  tipView = self->_tipView;
  self->_tipView = v5;

  [(ICQUITipHostCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_tipView sizeThatFits:fits.width, 1.79769313e308];
  v5 = v4 + 0.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICQUITipHostCell;
  [(PSTableCell *)&v8 layoutSubviews];
  if (self->_tipView)
  {
    contentView = [(ICQUITipHostCell *)self contentView];
    [contentView frame];
    v5 = v4;
    contentView2 = [(ICQUITipHostCell *)self contentView];
    [contentView2 frame];
    [(UIView *)self->_tipView setFrame:0.0, 0.0, v5];

    contentView3 = [(ICQUITipHostCell *)self contentView];
    [contentView3 addSubview:self->_tipView];
  }
}

@end