@interface WLProgressBar
- (WLProgressBar)initWithFrame:(CGRect)a3;
- (void)addTopBorderWithColor:(id)a3 andWidth:(double)a4;
@end

@implementation WLProgressBar

- (WLProgressBar)initWithFrame:(CGRect)a3
{
  v46[3] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = WLProgressBar;
  v3 = [(WLProgressBar *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemGrayColor];
    [(WLProgressBar *)v3 addTopBorderWithColor:v4 andWidth:0.5];

    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WLProgressBar *)v3 setBackgroundColor:v5];

    v6 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    progressView = v3->_progressView;
    v3->_progressView = v6;

    [(UIProgressView *)v3->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WLProgressBar *)v3 addSubview:v3->_progressView];
    v38 = MEMORY[0x277CCAAD0];
    v42 = [(UIProgressView *)v3->_progressView topAnchor];
    v40 = [(WLProgressBar *)v3 topAnchor];
    v8 = [v42 constraintEqualToAnchor:v40 constant:25.0];
    v46[0] = v8;
    v9 = [(UIProgressView *)v3->_progressView leadingAnchor];
    v10 = [(WLProgressBar *)v3 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:25.0];
    v46[1] = v11;
    v12 = [(UIProgressView *)v3->_progressView trailingAnchor];
    v13 = [(WLProgressBar *)v3 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-25.0];
    v46[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    [v38 activateConstraints:v15];

    v16 = objc_alloc(MEMORY[0x277D756B8]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v17;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setTextAlignment:1];
    v19 = v3->_label;
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v3->_label setNumberOfLines:1];
    [(UILabel *)v3->_label setLineBreakMode:3];
    v21 = v3->_label;
    v22 = WLLocalizedString();
    [(UILabel *)v21 setText:v22];

    [(WLProgressBar *)v3 addSubview:v3->_label];
    v36 = MEMORY[0x277CCAAD0];
    v43 = [(UILabel *)v3->_label topAnchor];
    v41 = [(UIProgressView *)v3->_progressView bottomAnchor];
    v39 = [v43 constraintEqualToAnchor:v41 constant:-20.0];
    v45[0] = v39;
    v37 = [(UILabel *)v3->_label leadingAnchor];
    v23 = [(WLProgressBar *)v3 leadingAnchor];
    v24 = [v37 constraintEqualToAnchor:v23 constant:20.0];
    v45[1] = v24;
    v25 = [(UILabel *)v3->_label trailingAnchor];
    v26 = [(WLProgressBar *)v3 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-20.0];
    v45[2] = v27;
    v28 = [(UILabel *)v3->_label bottomAnchor];
    v29 = [(WLProgressBar *)v3 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v45[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v36 activateConstraints:v31];

    v32 = objc_alloc_init(MEMORY[0x277CCA958]);
    formatter = v3->_formatter;
    v3->_formatter = v32;

    [(NSDateComponentsFormatter *)v3->_formatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v3->_formatter setAllowedUnits:96];
    [(NSDateComponentsFormatter *)v3->_formatter setIncludesApproximationPhrase:1];
  }

  v34 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addTopBorderWithColor:(id)a3 andWidth:(double)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setBackgroundColor:v5];

  [v6 setAutoresizingMask:34];
  [(WLProgressBar *)self frame];
  [v6 setFrame:{0.0, 0.0}];
  [(WLProgressBar *)self addSubview:v6];
}

@end