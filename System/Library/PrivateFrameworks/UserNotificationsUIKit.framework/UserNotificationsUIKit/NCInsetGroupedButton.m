@interface NCInsetGroupedButton
+ (id)buttonWithTitle:(id)a3 top:(BOOL)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)_initWithTitle:(id)a3 top:(BOOL)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation NCInsetGroupedButton

- (id)_initWithTitle:(id)a3 top:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
    v15 = [MEMORY[0x277D75348] systemGray6Color];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v11->_cornersView setUserInteractionEnabled:0];
    [(UIView *)v11->_cornersView _setContinuousCornerRadius:16.0];
    [(NCInsetGroupedButton *)v11 addSubview:v11->_cornersView];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v16;

    [(UIView *)v11->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v11->_backgroundView setUserInteractionEnabled:0];
    v18 = v11->_backgroundView;
    v19 = [MEMORY[0x277D75348] systemGray6Color];
    [(UIView *)v18 setBackgroundColor:v19];

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

    v106 = v6;
    [(UILabel *)v11->_titleLabel setText:v6];
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
    v30 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v29 setTextColor:v30];

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
    v34 = [MEMORY[0x277D75348] systemGray3Color];
    [(UIImageView *)v33 setTintColor:v34];

    [(NCInsetGroupedButton *)v11 addSubview:v11->_arrowImageView];
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v36 = [(UIView *)v11->_backgroundView leadingAnchor];
    v37 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v35 addObject:v38];

    v39 = [(NCInsetGroupedButton *)v11 trailingAnchor];
    v40 = [(UIView *)v11->_backgroundView trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v35 addObject:v41];

    v42 = [(UIView *)v11->_backgroundView topAnchor];
    v43 = [(NCInsetGroupedButton *)v11 topAnchor];
    if (v4)
    {
      v44 = 16.0;
    }

    else
    {
      v44 = 0.0;
    }

    if (v4)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = 16.0;
    }

    v46 = [v42 constraintEqualToAnchor:v43 constant:v44];
    [v35 addObject:v46];

    v47 = [(NCInsetGroupedButton *)v11 bottomAnchor];
    v48 = [(UIView *)v11->_backgroundView bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:v45];
    [v35 addObject:v49];

    v50 = [(UIView *)v11->_cornersView leadingAnchor];
    v51 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v35 addObject:v52];

    v53 = [(NCInsetGroupedButton *)v11 trailingAnchor];
    v54 = [(UIView *)v11->_cornersView trailingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    [v35 addObject:v55];

    v56 = [(UIView *)v11->_cornersView heightAnchor];
    v57 = [v56 constraintEqualToConstant:32.0];
    [v35 addObject:v57];

    if (v4)
    {
      v58 = [(UIView *)v11->_cornersView topAnchor];
      [(NCInsetGroupedButton *)v11 topAnchor];
    }

    else
    {
      v58 = [(NCInsetGroupedButton *)v11 bottomAnchor];
      [(UIView *)v11->_cornersView bottomAnchor];
    }
    v59 = ;
    v60 = [v58 constraintEqualToAnchor:v59];
    [v35 addObject:v60];

    v61 = [(UILabel *)v11->_titleLabel centerYAnchor];
    v62 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [v35 addObject:v63];

    v64 = [(UILabel *)v11->_titleLabel topAnchor];
    v65 = [(NCInsetGroupedButton *)v11 topAnchor];
    v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65 constant:16.0];
    [v35 addObject:v66];

    v67 = [(NCInsetGroupedButton *)v11 bottomAnchor];
    v68 = [(UILabel *)v11->_titleLabel bottomAnchor];
    v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68 constant:16.0];
    [v35 addObject:v69];

    v70 = [(UILabel *)v11->_titleLabel leadingAnchor];
    v71 = [(NCInsetGroupedButton *)v11 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:16.0];
    [v35 addObject:v72];

    LODWORD(v73) = 1144750080;
    [(UILabel *)v11->_titleLabel setContentCompressionResistancePriority:0 forAxis:v73];
    v74 = [(UILabel *)v11->_subtitleLabel centerYAnchor];
    v75 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v35 addObject:v76];

    v77 = [(UILabel *)v11->_subtitleLabel leadingAnchor];
    v78 = [(UILabel *)v11->_titleLabel trailingAnchor];
    v79 = [v77 constraintGreaterThanOrEqualToAnchor:v78 constant:16.0];
    [v35 addObject:v79];

    v80 = [(UILabel *)v11->_subtitleLabel topAnchor];
    v81 = [(NCInsetGroupedButton *)v11 topAnchor];
    v82 = [v80 constraintGreaterThanOrEqualToAnchor:v81 constant:16.0];
    [v35 addObject:v82];

    v83 = [(NCInsetGroupedButton *)v11 bottomAnchor];
    v84 = [(UILabel *)v11->_subtitleLabel bottomAnchor];
    v85 = [v83 constraintGreaterThanOrEqualToAnchor:v84 constant:16.0];
    [v35 addObject:v85];

    LODWORD(v86) = 1132068864;
    [(UILabel *)v11->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:v86];
    v87 = [(UILabel *)v11->_subtitleLabel centerYAnchor];
    v88 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    [v35 addObject:v89];

    v90 = [(UIImageView *)v11->_arrowImageView leadingAnchor];
    v91 = [(UILabel *)v11->_subtitleLabel trailingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:8.0];
    [v35 addObject:v92];

    v93 = [(UIImageView *)v11->_arrowImageView centerYAnchor];
    v94 = [(NCInsetGroupedButton *)v11 centerYAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    [v35 addObject:v95];

    v96 = [(NCInsetGroupedButton *)v11 trailingAnchor];
    v97 = [(UIImageView *)v11->_arrowImageView trailingAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:16.0];
    [v35 addObject:v98];

    v99 = [(UIImageView *)v11->_arrowImageView heightAnchor];
    v100 = [v99 constraintEqualToConstant:10.0];
    [v35 addObject:v100];

    v101 = [(UIImageView *)v11->_arrowImageView widthAnchor];
    v102 = [v101 constraintEqualToConstant:10.0];
    [v35 addObject:v102];

    [MEMORY[0x277CCAAD0] activateConstraints:v35];
    v6 = v106;
  }

  return v11;
}

+ (id)buttonWithTitle:(id)a3 top:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[NCInsetGroupedButton alloc] _initWithTitle:v5 top:v4];

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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCInsetGroupedButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = NCInsetGroupedButton;
  [(NCInsetGroupedButton *)&v6 setHighlighted:v3];
  if (v5 != [(NCInsetGroupedButton *)self isHighlighted])
  {
    [(NCInsetGroupedButton *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCInsetGroupedButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = NCInsetGroupedButton;
  [(NCInsetGroupedButton *)&v6 setSelected:v3];
  if (v5 != [(NCInsetGroupedButton *)self isSelected])
  {
    [(NCInsetGroupedButton *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if (v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  v6 = [v4 numberOfTapsRequired];

  if (v6 != 1)
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