@interface WFLockView
- (WFLockView)initWithFrame:(CGRect)a3;
- (WFLockView)initWithTitle:(id)a3 viewToCover:(id)a4;
- (void)didMoveToSuperview;
@end

@implementation WFLockView

- (WFLockView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = WFLockView;
  v3 = [(WFLockView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFLockView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->titleLabel;
    v3->titleLabel = v5;

    [(UILabel *)v3->titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->titleLabel setTextColor:v7];

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
    v13 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v3->lockImage setTintColor:v13];

    v14 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:-1 scale:140.0];
    [(UIImageView *)v3->lockImage setPreferredSymbolConfiguration:v14];

    [(WFLockView *)v3 addSubview:v3->lockImage];
    v15 = v3;
  }

  return v3;
}

- (WFLockView)initWithTitle:(id)a3 viewToCover:(id)a4
{
  v6 = a3;
  [a4 bounds];
  v7 = [(WFLockView *)self initWithFrame:?];
  [(UILabel *)v7->titleLabel setText:v6];

  return v7;
}

- (void)didMoveToSuperview
{
  v34[8] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFLockView;
  [(WFLockView *)&v33 didMoveToSuperview];
  v3 = [(WFLockView *)self superview];

  if (v3)
  {
    v4 = [(WFLockView *)self superview];
    v5 = [v4 safeAreaLayoutGuide];

    v23 = MEMORY[0x277CCAAD0];
    v32 = [(UILabel *)self->titleLabel centerXAnchor];
    v31 = [v5 centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v34[0] = v30;
    v29 = [(UILabel *)self->titleLabel topAnchor];
    v28 = [v5 centerYAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v34[1] = v27;
    v26 = [(UILabel *)self->titleLabel leadingAnchor];
    v25 = [v5 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v34[2] = v24;
    v22 = [(UILabel *)self->titleLabel trailingAnchor];
    v21 = [v5 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v34[3] = v20;
    v19 = [(UILabel *)self->titleLabel bottomAnchor];
    v18 = [v5 bottomAnchor];
    v17 = [v19 constraintLessThanOrEqualToAnchor:v18];
    v34[4] = v17;
    v16 = [(UIImageView *)self->lockImage centerXAnchor];
    v6 = [v5 centerXAnchor];
    v7 = [v16 constraintEqualToAnchor:v6];
    v34[5] = v7;
    v8 = [(UIImageView *)self->lockImage topAnchor];
    v9 = [v5 topAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
    v34[6] = v10;
    v11 = [(UIImageView *)self->lockImage bottomAnchor];
    v12 = [v5 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v34[7] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];
    [v23 activateConstraints:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end