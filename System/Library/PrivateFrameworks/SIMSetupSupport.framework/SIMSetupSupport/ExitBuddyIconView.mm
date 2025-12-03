@interface ExitBuddyIconView
- (ExitBuddyIconView)initWithFrame:(CGRect)frame;
@end

@implementation ExitBuddyIconView

- (ExitBuddyIconView)initWithFrame:(CGRect)frame
{
  v42.receiver = self;
  v42.super_class = ExitBuddyIconView;
  v3 = [(ExitBuddyIconView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:50.0];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.3.trianglepath" withConfiguration:v4];
    v7 = [v5 initWithImage:v6];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"gift" withConfiguration:v4];
    v10 = [v8 initWithImage:v9];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"shippingbox" withConfiguration:v4];
    v13 = [v11 initWithImage:v12];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ExitBuddyIconView *)v3 addSubview:v7];
    [(ExitBuddyIconView *)v3 addSubview:v10];
    [(ExitBuddyIconView *)v3 addSubview:v13];
    topAnchor = [v7 topAnchor];
    topAnchor2 = [(ExitBuddyIconView *)v3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v16 setActive:1];

    topAnchor3 = [v10 topAnchor];
    bottomAnchor = [v7 bottomAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v19 setActive:1];

    leftAnchor = [v10 leftAnchor];
    leftAnchor2 = [(ExitBuddyIconView *)v3 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v22 setActive:1];

    centerXAnchor = [v10 centerXAnchor];
    leftAnchor3 = [v7 leftAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:leftAnchor3];
    [v25 setActive:1];

    bottomAnchor2 = [v10 bottomAnchor];
    bottomAnchor3 = [(ExitBuddyIconView *)v3 bottomAnchor];
    v28 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
    [v28 setActive:1];

    rightAnchor = [v13 rightAnchor];
    rightAnchor2 = [(ExitBuddyIconView *)v3 rightAnchor];
    v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v31 setActive:1];

    centerXAnchor2 = [v13 centerXAnchor];
    rightAnchor3 = [v7 rightAnchor];
    v34 = [centerXAnchor2 constraintEqualToAnchor:rightAnchor3];
    [v34 setActive:1];

    firstBaselineAnchor = [v13 firstBaselineAnchor];
    firstBaselineAnchor2 = [v10 firstBaselineAnchor];
    v37 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    [v37 setActive:1];

    bottomAnchor4 = [v13 bottomAnchor];
    bottomAnchor5 = [(ExitBuddyIconView *)v3 bottomAnchor];
    v40 = [bottomAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor5];
    [v40 setActive:1];
  }

  return v3;
}

@end