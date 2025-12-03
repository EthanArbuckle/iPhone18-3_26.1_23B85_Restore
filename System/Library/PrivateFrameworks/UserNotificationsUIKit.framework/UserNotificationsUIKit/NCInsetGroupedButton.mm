@interface NCInsetGroupedButton
+ (id)buttonWithTitle:(id)title top:(BOOL)top;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)_initWithTitle:(id)title top:(BOOL)top;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation NCInsetGroupedButton

- (id)_initWithTitle:(id)title top:(BOOL)top
{
  topCopy = top;
  titleCopy = title;
  v107.receiver = self;
  v107.super_class = NCInsetGroupedButton;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(NCInsetGroupedButton *)&v107 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    cornersView = v11->_cornersView;
    v11->_cornersView = v12;

    [(UIView *)v11->_cornersView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = v11->_cornersView;
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [(UIView *)v14 setBackgroundColor:systemGray6Color];

    [(UIView *)v11->_cornersView setUserInteractionEnabled:0];
    [(UIView *)v11->_cornersView _setContinuousCornerRadius:16.0];
    [(NCInsetGroupedButton *)v11 addSubview:v11->_cornersView];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v16;

    [(UIView *)v11->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_backgroundView setUserInteractionEnabled:0];
    v18 = v11->_backgroundView;
    systemGray6Color2 = [MEMORY[0x277D75348] systemGray6Color];
    [(UIView *)v18 setBackgroundColor:systemGray6Color2];

    [(NCInsetGroupedButton *)v11 addSubview:v11->_backgroundView];
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v20;

    [(UILabel *)v11->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v11->_titleLabel setUserInteractionEnabled:0];
    v22 = v11->_titleLabel;
    v23 = *MEMORY[0x277D76918];
    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v22 setFont:v24];

    v106 = titleCopy;
    [(UILabel *)v11->_titleLabel setText:titleCopy];
    [(NCInsetGroupedButton *)v11 addSubview:v11->_titleLabel];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v11->_subtitleLabel;
    v11->_subtitleLabel = v25;

    [(UILabel *)v11->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v11->_subtitleLabel setUserInteractionEnabled:0];
    v27 = v11->_subtitleLabel;
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:v23];
    [(UILabel *)v27 setFont:v28];

    v29 = v11->_subtitleLabel;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v29 setTextColor:systemGrayColor];

    [(NCInsetGroupedButton *)v11 addSubview:v11->_subtitleLabel];
    v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
    arrowImageView = v11->_arrowImageView;
    v11->_arrowImageView = v31;

    [(UIImageView *)v11->_arrowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v11->_arrowImageView setUserInteractionEnabled:0];
    v105 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:14.0];
    v104 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:?];
    [(UIImageView *)v11->_arrowImageView setImage:?];
    [(UIImageView *)v11->_arrowImageView setContentMode:4];
    v33 = v11->_arrowImageView;
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    [(UIImageView *)v33 setTintColor:systemGray3Color];

    [(NCInsetGroupedButton *)v11 addSubview:v11->_arrowImageView];
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    leadingAnchor = [(UIView *)v11->_backgroundView leadingAnchor];
    leadingAnchor2 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v35 addObject:v38];

    trailingAnchor = [(NCInsetGroupedButton *)v11 trailingAnchor];
    trailingAnchor2 = [(UIView *)v11->_backgroundView trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v35 addObject:v41];

    topAnchor = [(UIView *)v11->_backgroundView topAnchor];
    topAnchor2 = [(NCInsetGroupedButton *)v11 topAnchor];
    if (topCopy)
    {
      v44 = 16.0;
    }

    else
    {
      v44 = 0.0;
    }

    if (topCopy)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = 16.0;
    }

    v46 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v44];
    [v35 addObject:v46];

    bottomAnchor = [(NCInsetGroupedButton *)v11 bottomAnchor];
    bottomAnchor2 = [(UIView *)v11->_backgroundView bottomAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v45];
    [v35 addObject:v49];

    leadingAnchor3 = [(UIView *)v11->_cornersView leadingAnchor];
    leadingAnchor4 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v35 addObject:v52];

    trailingAnchor3 = [(NCInsetGroupedButton *)v11 trailingAnchor];
    trailingAnchor4 = [(UIView *)v11->_cornersView trailingAnchor];
    v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v35 addObject:v55];

    heightAnchor = [(UIView *)v11->_cornersView heightAnchor];
    v57 = [heightAnchor constraintEqualToConstant:32.0];
    [v35 addObject:v57];

    if (topCopy)
    {
      topAnchor3 = [(UIView *)v11->_cornersView topAnchor];
      [(NCInsetGroupedButton *)v11 topAnchor];
    }

    else
    {
      topAnchor3 = [(NCInsetGroupedButton *)v11 bottomAnchor];
      [(UIView *)v11->_cornersView bottomAnchor];
    }
    v59 = ;
    v60 = [topAnchor3 constraintEqualToAnchor:v59];
    [v35 addObject:v60];

    centerYAnchor = [(UILabel *)v11->_titleLabel centerYAnchor];
    centerYAnchor2 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v35 addObject:v63];

    topAnchor4 = [(UILabel *)v11->_titleLabel topAnchor];
    topAnchor5 = [(NCInsetGroupedButton *)v11 topAnchor];
    v66 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:16.0];
    [v35 addObject:v66];

    bottomAnchor3 = [(NCInsetGroupedButton *)v11 bottomAnchor];
    bottomAnchor4 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v69 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:16.0];
    [v35 addObject:v69];

    leadingAnchor5 = [(UILabel *)v11->_titleLabel leadingAnchor];
    leadingAnchor6 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    [v35 addObject:v72];

    LODWORD(v73) = 1144750080;
    [(UILabel *)v11->_titleLabel setContentCompressionResistancePriority:0 forAxis:v73];
    centerYAnchor3 = [(UILabel *)v11->_subtitleLabel centerYAnchor];
    centerYAnchor4 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v76 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v35 addObject:v76];

    leadingAnchor7 = [(UILabel *)v11->_subtitleLabel leadingAnchor];
    trailingAnchor5 = [(UILabel *)v11->_titleLabel trailingAnchor];
    v79 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:16.0];
    [v35 addObject:v79];

    topAnchor6 = [(UILabel *)v11->_subtitleLabel topAnchor];
    topAnchor7 = [(NCInsetGroupedButton *)v11 topAnchor];
    v82 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7 constant:16.0];
    [v35 addObject:v82];

    bottomAnchor5 = [(NCInsetGroupedButton *)v11 bottomAnchor];
    bottomAnchor6 = [(UILabel *)v11->_subtitleLabel bottomAnchor];
    v85 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:16.0];
    [v35 addObject:v85];

    LODWORD(v86) = 1132068864;
    [(UILabel *)v11->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:v86];
    centerYAnchor5 = [(UILabel *)v11->_subtitleLabel centerYAnchor];
    centerYAnchor6 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v89 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v35 addObject:v89];

    leadingAnchor8 = [(UIImageView *)v11->_arrowImageView leadingAnchor];
    trailingAnchor6 = [(UILabel *)v11->_subtitleLabel trailingAnchor];
    v92 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:8.0];
    [v35 addObject:v92];

    centerYAnchor7 = [(UIImageView *)v11->_arrowImageView centerYAnchor];
    centerYAnchor8 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v95 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v35 addObject:v95];

    trailingAnchor7 = [(NCInsetGroupedButton *)v11 trailingAnchor];
    trailingAnchor8 = [(UIImageView *)v11->_arrowImageView trailingAnchor];
    v98 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:16.0];
    [v35 addObject:v98];

    heightAnchor2 = [(UIImageView *)v11->_arrowImageView heightAnchor];
    v100 = [heightAnchor2 constraintEqualToConstant:10.0];
    [v35 addObject:v100];

    widthAnchor = [(UIImageView *)v11->_arrowImageView widthAnchor];
    v102 = [widthAnchor constraintEqualToConstant:10.0];
    [v35 addObject:v102];

    [MEMORY[0x277CCAAD0] activateConstraints:v35];
    titleCopy = v106;
  }

  return v11;
}

+ (id)buttonWithTitle:(id)title top:(BOOL)top
{
  topCopy = top;
  titleCopy = title;
  v6 = [[NCInsetGroupedButton alloc] _initWithTitle:titleCopy top:topCopy];

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NCInsetGroupedButton;
  [(NCInsetGroupedButton *)&v4 layoutSubviews];
  if (([(NCInsetGroupedButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x277D75348] systemGray4Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray6Color];
  }
  v3 = ;
  [(UIView *)self->_cornersView setBackgroundColor:v3];
  [(UIView *)self->_backgroundView setBackgroundColor:v3];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(NCInsetGroupedButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = NCInsetGroupedButton;
  [(NCInsetGroupedButton *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != [(NCInsetGroupedButton *)self isHighlighted])
  {
    [(NCInsetGroupedButton *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(NCInsetGroupedButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = NCInsetGroupedButton;
  [(NCInsetGroupedButton *)&v6 setSelected:selectedCopy];
  if (isSelected != [(NCInsetGroupedButton *)self isSelected])
  {
    [(NCInsetGroupedButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end