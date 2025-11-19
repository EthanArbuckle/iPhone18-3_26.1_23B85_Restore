@interface ICQUITipHostCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_setupContentViewToHostTip;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQUITipHostCell

- (void)_setupContentViewToHostTip
{
  v3 = [(PSTableCell *)self titleLabel];
  [v3 setText:&stru_28844FC60];

  v4 = [MEMORY[0x277D75348] clearColor];
  [(ICQUITipHostCell *)self setBackgroundColor:v4];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICQUITipHostCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  [(ICQUITipHostCell *)self _setupContentViewToHostTip:v7.receiver];
  v5 = [v4 propertyForKey:@"ICQUITipView"];

  tipView = self->_tipView;
  self->_tipView = v5;

  [(ICQUITipHostCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_tipView sizeThatFits:a3.width, 1.79769313e308];
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
    v3 = [(ICQUITipHostCell *)self contentView];
    [v3 frame];
    v5 = v4;
    v6 = [(ICQUITipHostCell *)self contentView];
    [v6 frame];
    [(UIView *)self->_tipView setFrame:0.0, 0.0, v5];

    v7 = [(ICQUITipHostCell *)self contentView];
    [v7 addSubview:self->_tipView];
  }
}

@end