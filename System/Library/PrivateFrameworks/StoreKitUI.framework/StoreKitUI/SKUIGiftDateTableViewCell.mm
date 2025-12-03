@interface SKUIGiftDateTableViewCell
- (SKUIGiftDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SKUIGiftDateTableViewCellDelegate)delegate;
- (id)_labelColor;
- (id)_labelForDate:(id)date;
- (id)_newLabel;
- (void)_datePickerDateDidChange;
- (void)_datePickerEditingDidBegin;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setDate:(id)date;
- (void)setLabel:(id)label;
- (void)setPlaceholder:(id)placeholder;
@end

@implementation SKUIGiftDateTableViewCell

- (SKUIGiftDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftDateTableViewCell initWithStyle:reuseIdentifier:];
  }

  v26.receiver = self;
  v26.super_class = SKUIGiftDateTableViewCell;
  v7 = [(SKUIGiftDateTableViewCell *)&v26 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v7->_bottomBorderView;
    v7->_bottomBorderView = v8;

    v10 = v7->_bottomBorderView;
    tableSeparatorColor = [MEMORY[0x277D75348] tableSeparatorColor];
    [(UIView *)v10 setBackgroundColor:tableSeparatorColor];

    contentView = [(SKUIGiftDateTableViewCell *)v7 contentView];
    [contentView addSubview:v7->_bottomBorderView];

    v13 = objc_alloc_init(MEMORY[0x277D753E8]);
    datePicker = v7->_datePicker;
    v7->_datePicker = v13;

    [(UIDatePicker *)v7->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v7->_datePicker setPreferredDatePickerStyle:2];
    v15 = v7->_datePicker;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIDatePicker *)v15 setTintColor:systemBlueColor];

    v17 = *MEMORY[0x277D76840];
    [(UIDatePicker *)v7->_datePicker setMaximumContentSizeCategory:*MEMORY[0x277D76840]];
    [(UIDatePicker *)v7->_datePicker setMinimumContentSizeCategory:v17];
    [(UIDatePicker *)v7->_datePicker addTarget:v7 action:sel__datePickerDateDidChange forControlEvents:4096];
    [(UIDatePicker *)v7->_datePicker addTarget:v7 action:sel__datePickerEditingDidBegin forControlEvents:0x10000];
    v18 = [MEMORY[0x277CBEAA8] now];
    [(UIDatePicker *)v7->_datePicker setMinimumDate:v18];
    [(UIDatePicker *)v7->_datePicker setDate:v18];
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v7->_topBorderView;
    v7->_topBorderView = v19;

    v21 = v7->_topBorderView;
    tableSeparatorColor2 = [MEMORY[0x277D75348] tableSeparatorColor];
    [(UIView *)v21 setBackgroundColor:tableSeparatorColor2];

    contentView2 = [(SKUIGiftDateTableViewCell *)v7 contentView];
    [contentView2 addSubview:v7->_topBorderView];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v7->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;
  }

  return v7;
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked == checked)
  {
    return;
  }

  v21 = v7;
  v22 = v6;
  v23 = v5;
  v24 = v4;
  v25 = v3;
  self->_checked = checked;
  checkmarkView = self->_checkmarkView;
  if (!checked)
  {
    [(UIImageView *)checkmarkView removeFromSuperview];
    v13 = self->_checkmarkView;
    self->_checkmarkView = 0;
    goto LABEL_6;
  }

  if (!checkmarkView)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [MEMORY[0x277D755B8] imageNamed:@"GiftCheckmark" inBundle:v13];
    tintColor = [(SKUIGiftDateTableViewCell *)self tintColor];
    v16 = [v14 _flatImageWithColor:tintColor];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16 highlightedImage:0];
    v18 = self->_checkmarkView;
    self->_checkmarkView = v17;

    [(SKUIGiftDateTableViewCell *)self addSubview:self->_checkmarkView];
LABEL_6:
  }

  labelLabel = self->_labelLabel;
  v20 = [(SKUIGiftDateTableViewCell *)self _labelColor:v8];
  [(UILabel *)labelLabel setTextColor:v20];

  [(SKUIGiftDateTableViewCell *)self setNeedsLayout];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(SKUIGiftDateTableViewCell *)self date];
  v5 = dateCopy;
  v6 = date;
  if (date != dateCopy)
  {
    v7 = [date isEqualToDate:dateCopy];
    v5 = dateCopy;
    if ((v7 & 1) == 0)
    {
      if (dateCopy)
      {
        contentView = [(SKUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_datePicker];

        [(UIDatePicker *)self->_datePicker setDate:dateCopy];
        [(UIDatePicker *)self->_datePicker sizeToFit];
      }

      else
      {
        [(UIDatePicker *)self->_datePicker removeFromSuperview];
      }

      [(SKUIGiftDateTableViewCell *)self setNeedsLayout];
      v5 = dateCopy;
    }
  }

  v9 = [(SKUIGiftDateTableViewCell *)self _labelForDate:v5];
  [(SKUIGiftDateTableViewCell *)self setLabel:v9];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SKUIGiftDateTableViewCell *)self label];
  if (label != labelCopy && ([label isEqualToString:labelCopy] & 1) == 0)
  {
    labelLabel = self->_labelLabel;
    if (labelCopy)
    {
      if (!labelLabel)
      {
        _newLabel = [(SKUIGiftDateTableViewCell *)self _newLabel];
        v7 = self->_labelLabel;
        self->_labelLabel = _newLabel;

        contentView = [(SKUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_labelLabel];

        labelLabel = self->_labelLabel;
      }

      [(UILabel *)labelLabel setText:?];
      [(UILabel *)self->_labelLabel sizeToFit];
    }

    else
    {
      [(UILabel *)labelLabel removeFromSuperview];
      v9 = self->_labelLabel;
      self->_labelLabel = 0;
    }

    [(SKUIGiftDateTableViewCell *)self setNeedsLayout];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  label = [(SKUIGiftDateTableViewCell *)self label];
  if (label != placeholderCopy && ([label isEqualToString:placeholderCopy] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderCopy)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_placeholderLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_placeholderLabel setNumberOfLines:2];
        v12 = self->_placeholderLabel;
        _placeholderTextColor = [MEMORY[0x277D75348] _placeholderTextColor];
        [(UILabel *)v12 setTextColor:_placeholderTextColor];

        contentView = [(SKUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_placeholderLabel];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      v15 = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SKUIGiftDateTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = SKUIGiftDateTableViewCell;
  [(SKUIGiftDateTableViewCell *)&v70 layoutSubviews];
  contentView = [(SKUIGiftDateTableViewCell *)self contentView];
  [contentView bounds];
  v69 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v8 + -15.0;
  checkmarkView = self->_checkmarkView;
  if (checkmarkView)
  {
    [(UIImageView *)checkmarkView frame];
    v14 = v13;
    v16 = v15;
    v17 = v11 - v13;
    v18 = (v10 - v15) * 0.5;
    v19 = floorf(v18);
    [(UIImageView *)self->_checkmarkView setFrame:v11 - v13, v19];
    leftToRight = [(SKUIGiftDateTableViewCell *)self leftToRight];
    v21 = self->_checkmarkView;
    if (leftToRight)
    {
      v22 = v17;
    }

    else
    {
      [SKUICGRectHelpers rect:v17 withFlippedOriginXRelativeTo:v19, v14, v16, v69, v6, v8, v10];
      v19 = v23;
      v14 = v24;
      v16 = v25;
    }

    v11 = v17 + -7.0;
    [(UIImageView *)v21 setFrame:v22, v19, v14, v16];
  }

  labelLabel = self->_labelLabel;
  if (labelLabel)
  {
    v68 = v8;
    v27 = v6;
    [(UILabel *)labelLabel frame];
    width = v71.size.width;
    height = v71.size.height;
    v30 = 15.0;
    v71.origin.x = 15.0;
    MaxX = CGRectGetMaxX(v71);
    v32 = (v10 - height) * 0.5;
    v33 = floorf(v32);
    [(UILabel *)self->_labelLabel setFrame:15.0, v33, width, height];
    leftToRight2 = [(SKUIGiftDateTableViewCell *)self leftToRight];
    v35 = self->_labelLabel;
    if (!leftToRight2)
    {
      [SKUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v33, width, height, v69, v27, v68, v10];
      v30 = v36;
      v33 = v37;
      width = v38;
      height = v39;
    }

    v40 = MaxX + 7.0;
    [(UILabel *)v35 setFrame:v30, v33, width, height];
    v6 = v27;
    v8 = v68;
  }

  else
  {
    v40 = 15.0;
  }

  datePicker = self->_datePicker;
  if (datePicker)
  {
    [(UIDatePicker *)datePicker frame];
    v43 = v42;
    v45 = v44;
    v46 = v11 - v42;
    v47 = (v10 - v44) * 0.5;
    v48 = floorf(v47);
    [(UILabel *)self->_placeholderLabel setHidden:1];
    leftToRight3 = [(SKUIGiftDateTableViewCell *)self leftToRight];
    v50 = self->_datePicker;
    if (leftToRight3)
    {
      v51 = self->_datePicker;
      v52 = v46;
      v53 = v48;
      v54 = v43;
LABEL_17:
      v61 = v45;
LABEL_21:
      [v51 setFrame:{v52, v53, v54, v61}];
      goto LABEL_22;
    }

    v62 = v46;
    v63 = v48;
    v64 = v43;
    goto LABEL_20;
  }

  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel)
  {
    [(UILabel *)placeholderLabel frame];
    [(UILabel *)self->_placeholderLabel sizeThatFits:v11 - v40, 1.79769313e308];
    v57 = v56;
    v45 = v58;
    *&v56 = (v10 - v58) * 0.5;
    v59 = floorf(*&v56);
    [(UILabel *)self->_placeholderLabel setHidden:0];
    [(UILabel *)self->_placeholderLabel setFrame:v40, v59, v57, v45];
    leftToRight4 = [(SKUIGiftDateTableViewCell *)self leftToRight];
    v50 = self->_placeholderLabel;
    if (leftToRight4)
    {
      v51 = self->_placeholderLabel;
      v52 = v40;
      v53 = v59;
      v54 = v57;
      goto LABEL_17;
    }

    v62 = v40;
    v63 = v59;
    v64 = v57;
LABEL_20:
    [SKUICGRectHelpers rect:v62 withFlippedOriginXRelativeTo:v63, v64, v45, v69, v6, v8, v10];
    v51 = v50;
    goto LABEL_21;
  }

LABEL_22:
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v67 = 1.0 / v66;

  [(UIView *)self->_topBorderView setFrame:0.0, 0.0, v8, v67];
  [(UIView *)self->_bottomBorderView setFrame:0.0, v10 - v67, v8, v67];
}

- (void)_datePickerDateDidChange
{
  date = [(UIDatePicker *)self->_datePicker date];
  v3 = [(SKUIGiftDateTableViewCell *)self _labelForDate:date];
  [(SKUIGiftDateTableViewCell *)self setLabel:v3];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftDateTableViewCell:self didChangeDate:date];
}

- (void)_datePickerEditingDidBegin
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SKUIGiftDateTableViewCell__datePickerEditingDidBegin__block_invoke;
  v2[3] = &unk_2781F80F0;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __55__SKUIGiftDateTableViewCell__datePickerEditingDidBegin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 endEditing:1];
}

- (id)_labelColor
{
  if (self->_checked)
  {
    [(SKUIGiftDateTableViewCell *)self tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] _labelColor];
  }
  v2 = ;

  return v2;
}

- (id)_labelForDate:(id)date
{
  dateCopy = date;
  giftConfiguration = [(SKUIGiftDateTableViewCell *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  calendar = [(UIDatePicker *)self->_datePicker calendar];
  LODWORD(giftConfiguration) = [calendar isDateInToday:dateCopy];

  if (giftConfiguration)
  {
    if (clientContext)
    {
      v8 = @"GIFTING_FIELD_LABEL_TODAY";
LABEL_6:
      v9 = [clientContext localizedStringForKey:v8 inTable:@"Gifting"];
      goto LABEL_10;
    }

    v10 = @"GIFTING_FIELD_LABEL_TODAY";
  }

  else
  {
    if (clientContext)
    {
      v8 = @"GIFTING_FIELD_LABEL_OTHER_DATE";
      goto LABEL_6;
    }

    v10 = @"GIFTING_FIELD_LABEL_OTHER_DATE";
  }

  v9 = [SKUIClientContext localizedStringForKey:v10 inBundles:0 inTable:@"Gifting"];
LABEL_10:
  v11 = v9;

  return v11;
}

- (id)_newLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v3 setFont:v5];

  _labelColor = [(SKUIGiftDateTableViewCell *)self _labelColor];
  [v3 setTextColor:_labelColor];

  return v3;
}

- (SKUIGiftDateTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftDateTableViewCell initWithStyle:reuseIdentifier:]";
}

@end