@interface WLProgressBar
- (WLProgressBar)initWithFrame:(CGRect)frame;
- (void)addTopBorderWithColor:(id)color andWidth:(double)width;
@end

@implementation WLProgressBar

- (WLProgressBar)initWithFrame:(CGRect)frame
{
  v46[3] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = WLProgressBar;
  v3 = [(WLProgressBar *)&v44 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(WLProgressBar *)v3 addTopBorderWithColor:systemGrayColor andWidth:0.5];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WLProgressBar *)v3 setBackgroundColor:systemBackgroundColor];

    v6 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    progressView = v3->_progressView;
    v3->_progressView = v6;

    [(UIProgressView *)v3->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WLProgressBar *)v3 addSubview:v3->_progressView];
    v38 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIProgressView *)v3->_progressView topAnchor];
    topAnchor2 = [(WLProgressBar *)v3 topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:25.0];
    v46[0] = v8;
    leadingAnchor = [(UIProgressView *)v3->_progressView leadingAnchor];
    leadingAnchor2 = [(WLProgressBar *)v3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:25.0];
    v46[1] = v11;
    trailingAnchor = [(UIProgressView *)v3->_progressView trailingAnchor];
    trailingAnchor2 = [(WLProgressBar *)v3 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-25.0];
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
    topAnchor3 = [(UILabel *)v3->_label topAnchor];
    bottomAnchor = [(UIProgressView *)v3->_progressView bottomAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-20.0];
    v45[0] = v39;
    leadingAnchor3 = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor4 = [(WLProgressBar *)v3 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
    v45[1] = v24;
    trailingAnchor3 = [(UILabel *)v3->_label trailingAnchor];
    trailingAnchor4 = [(WLProgressBar *)v3 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
    v45[2] = v27;
    bottomAnchor2 = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor3 = [(WLProgressBar *)v3 bottomAnchor];
    v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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

- (void)addTopBorderWithColor:(id)color andWidth:(double)width
{
  colorCopy = color;
  v6 = objc_opt_new();
  [v6 setBackgroundColor:colorCopy];

  [v6 setAutoresizingMask:34];
  [(WLProgressBar *)self frame];
  [v6 setFrame:{0.0, 0.0}];
  [(WLProgressBar *)self addSubview:v6];
}

@end