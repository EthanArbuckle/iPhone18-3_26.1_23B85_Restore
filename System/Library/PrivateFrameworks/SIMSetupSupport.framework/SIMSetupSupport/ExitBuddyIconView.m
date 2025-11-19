@interface ExitBuddyIconView
- (ExitBuddyIconView)initWithFrame:(CGRect)a3;
@end

@implementation ExitBuddyIconView

- (ExitBuddyIconView)initWithFrame:(CGRect)a3
{
  v42.receiver = self;
  v42.super_class = ExitBuddyIconView;
  v3 = [(ExitBuddyIconView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v14 = [v7 topAnchor];
    v15 = [(ExitBuddyIconView *)v3 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [v10 topAnchor];
    v18 = [v7 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [v10 leftAnchor];
    v21 = [(ExitBuddyIconView *)v3 leftAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [v10 centerXAnchor];
    v24 = [v7 leftAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [v10 bottomAnchor];
    v27 = [(ExitBuddyIconView *)v3 bottomAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [v13 rightAnchor];
    v30 = [(ExitBuddyIconView *)v3 rightAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [v13 centerXAnchor];
    v33 = [v7 rightAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [v13 firstBaselineAnchor];
    v36 = [v10 firstBaselineAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [v13 bottomAnchor];
    v39 = [(ExitBuddyIconView *)v3 bottomAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];
    [v40 setActive:1];
  }

  return v3;
}

@end