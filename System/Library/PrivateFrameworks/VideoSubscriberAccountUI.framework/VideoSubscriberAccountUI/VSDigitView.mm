@interface VSDigitView
- (CGSize)intrinsicContentSize;
- (VSDigitView)initWithFrame:(CGRect)frame;
@end

@implementation VSDigitView

- (VSDigitView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = VSDigitView;
  v3 = [(VSDigitView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(VSDigitView *)v3 setBackgroundColor:whiteColor];

    layer = [(VSDigitView *)v3 layer];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [layer setBorderColor:{objc_msgSend(systemGrayColor, "CGColor")}];

    layer2 = [(VSDigitView *)v3 layer];
    [layer2 setCornerRadius:5.0];

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v8 setTextColor:blackColor];

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [v8 setFont:v10];

    [v8 setTextAlignment:1];
    [(VSDigitView *)v3 setLabel:v8];
    [(VSDigitView *)v3 addSubview:v8];
    [(VSDigitView *)v3 setUserInteractionEnabled:0];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [(VSDigitView *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [v13 setActive:1];

    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [(VSDigitView *)v3 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    [v16 setActive:1];

    leftAnchor = [v8 leftAnchor];
    leftAnchor2 = [(VSDigitView *)v3 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    [v19 setActive:1];

    rightAnchor = [v8 rightAnchor];
    rightAnchor2 = [(VSDigitView *)v3 rightAnchor];
    v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    [v22 setActive:1];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end