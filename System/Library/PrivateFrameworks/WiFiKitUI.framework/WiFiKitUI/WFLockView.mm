@interface WFLockView
- (WFLockView)initWithFrame:(CGRect)frame;
- (WFLockView)initWithTitle:(id)title viewToCover:(id)cover;
- (void)didMoveToSuperview;
@end

@implementation WFLockView

- (WFLockView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = WFLockView;
  v3 = [(WFLockView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFLockView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->titleLabel;
    v3->titleLabel = v5;

    [(UILabel *)v3->titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v3->titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3->titleLabel setNumberOfLines:0];
    [(UILabel *)v3->titleLabel setTextAlignment:1];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [(UILabel *)v3->titleLabel setFont:v8];

    [(WFLockView *)v3 addSubview:v3->titleLabel];
    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill"];
    v11 = [v9 initWithImage:v10];
    lockImage = v3->lockImage;
    v3->lockImage = v11;

    [(UIImageView *)v3->lockImage setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v3->lockImage setTintColor:secondaryLabelColor2];

    v14 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:-1 scale:140.0];
    [(UIImageView *)v3->lockImage setPreferredSymbolConfiguration:v14];

    [(WFLockView *)v3 addSubview:v3->lockImage];
    v15 = v3;
  }

  return v3;
}

- (WFLockView)initWithTitle:(id)title viewToCover:(id)cover
{
  titleCopy = title;
  [cover bounds];
  v7 = [(WFLockView *)self initWithFrame:?];
  [(UILabel *)v7->titleLabel setText:titleCopy];

  return v7;
}

- (void)didMoveToSuperview
{
  v34[8] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFLockView;
  [(WFLockView *)&v33 didMoveToSuperview];
  superview = [(WFLockView *)self superview];

  if (superview)
  {
    superview2 = [(WFLockView *)self superview];
    safeAreaLayoutGuide = [superview2 safeAreaLayoutGuide];

    v23 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UILabel *)self->titleLabel centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v34[0] = v30;
    topAnchor = [(UILabel *)self->titleLabel topAnchor];
    centerYAnchor = [safeAreaLayoutGuide centerYAnchor];
    v27 = [topAnchor constraintEqualToAnchor:centerYAnchor];
    v34[1] = v27;
    leadingAnchor = [(UILabel *)self->titleLabel leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[2] = v24;
    trailingAnchor = [(UILabel *)self->titleLabel trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[3] = v20;
    bottomAnchor = [(UILabel *)self->titleLabel bottomAnchor];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v17 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v34[4] = v17;
    centerXAnchor3 = [(UIImageView *)self->lockImage centerXAnchor];
    centerXAnchor4 = [safeAreaLayoutGuide centerXAnchor];
    v7 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v34[5] = v7;
    topAnchor2 = [(UIImageView *)self->lockImage topAnchor];
    topAnchor3 = [safeAreaLayoutGuide topAnchor];
    v10 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
    v34[6] = v10;
    bottomAnchor3 = [(UIImageView *)self->lockImage bottomAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v13 = [bottomAnchor3 constraintEqualToAnchor:centerYAnchor2];
    v34[7] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
    [v23 activateConstraints:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end