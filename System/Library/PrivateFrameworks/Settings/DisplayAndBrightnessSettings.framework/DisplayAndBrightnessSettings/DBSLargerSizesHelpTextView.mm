@interface DBSLargerSizesHelpTextView
- (DBSLargerSizesHelpTextView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)layoutForWidth:(double)width inTableView:(id)view;
- (void)layoutSubviews;
@end

@implementation DBSLargerSizesHelpTextView

- (DBSLargerSizesHelpTextView)initWithSpecifier:(id)specifier
{
  v16.receiver = self;
  v16.super_class = DBSLargerSizesHelpTextView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(DBSLargerSizesHelpTextView *)&v16 initWithFrame:specifier, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    helpLabel = v7->_helpLabel;
    v7->_helpLabel = v8;

    v10 = DBS_LocalizedStringForLargeFontSettings(@"LARGER_SIZES_HELP_TEXT");
    [(UILabel *)v7->_helpLabel setText:v10];

    v11 = PreferencesTableViewFooterFont();
    [(UILabel *)v7->_helpLabel setFont:v11];

    appearance = [MEMORY[0x277D3FA48] appearance];
    altTextColor = [appearance altTextColor];
    [(UILabel *)v7->_helpLabel setTextColor:altTextColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v7->_helpLabel setBackgroundColor:clearColor];

    [(UILabel *)v7->_helpLabel setTextAlignment:4];
    [(UILabel *)v7->_helpLabel setLineBreakMode:0];
    [(UILabel *)v7->_helpLabel setNumberOfLines:0];
    [(DBSLargerSizesHelpTextView *)v7 addSubview:v7->_helpLabel];
  }

  return v7;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = DBSLargerSizesHelpTextView;
  [(DBSLargerSizesHelpTextView *)&v6 layoutSubviews];
  [(DBSLargerSizesHelpTextView *)self bounds];
  v4 = v3;
  superview = [(DBSLargerSizesHelpTextView *)self superview];
  [(DBSLargerSizesHelpTextView *)self layoutForWidth:superview inTableView:v4];
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  [(DBSLargerSizesHelpTextView *)self layoutForWidth:view inTableView:width];
  [(UILabel *)self->_helpLabel frame];
  return CGRectGetMaxY(v6) + 5.0;
}

- (void)layoutForWidth:(double)width inTableView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v14 = v13;
  if (v7 >= width)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = v7;
  }

  [viewCopy _sectionContentInset];
  v17 = v16;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v12;
  v22.size.height = v14;
  v18 = widthCopy + (v17 - CGRectGetMinX(v22) + 10.0) * -2.0;
  if (v18 > 0.0)
  {
    [(UILabel *)self->_helpLabel frame];
    [(UILabel *)self->_helpLabel sizeThatFits:v18, 1.79769313e308];
    helpLabel = self->_helpLabel;

    [(UILabel *)helpLabel setFrame:10.0, 0.0, v18, v19];
  }
}

@end