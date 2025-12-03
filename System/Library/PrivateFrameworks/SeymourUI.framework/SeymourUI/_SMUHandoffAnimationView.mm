@interface _SMUHandoffAnimationView
- (CGSize)intrinsicContentSize;
- (_SMUHandoffAnimationView)initWithState:(unint64_t)state;
- (id)iconNameForState:(unint64_t)state;
@end

@implementation _SMUHandoffAnimationView

- (_SMUHandoffAnimationView)initWithState:(unint64_t)state
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = objc_alloc(MEMORY[0x277D74218]);
  v7 = [(_SMUHandoffAnimationView *)self iconNameForState:state];
  v8 = [v6 initWithName:v7 bundle:v5];

  data = [v8 data];
  v29.receiver = self;
  v29.super_class = _SMUHandoffAnimationView;
  v10 = [(_UICAPackageView *)&v29 initWithData:data publishedObjectViewClassMap:0];

  if (v10)
  {
    [(_SMUHandoffAnimationView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    subviews = [(_SMUHandoffAnimationView *)v10 subviews];
    [subviews firstObject];
    v12 = v28 = v5;

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x277CCAAD0];
    topAnchor = [v12 topAnchor];
    topAnchor2 = [(_SMUHandoffAnimationView *)v10 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-6.0];
    v30[0] = v25;
    leftAnchor = [v12 leftAnchor];
    leftAnchor2 = [(_SMUHandoffAnimationView *)v10 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-6.0];
    v30[1] = v21;
    rightAnchor = [v12 rightAnchor];
    rightAnchor2 = [(_SMUHandoffAnimationView *)v10 rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:6.0];
    v30[2] = v15;
    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [(_SMUHandoffAnimationView *)v10 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:6.0];
    v30[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v19];

    v5 = v28;
  }

  return v10;
}

- (CGSize)intrinsicContentSize
{
  subviews = [(_SMUHandoffAnimationView *)self subviews];
  firstObject = [subviews firstObject];

  if (firstObject)
  {
    [firstObject bounds];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    v8 = CGRectGetWidth(v13) + -12.0;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v9 = CGRectGetHeight(v14) + -12.0;
  }

  else
  {
    v8 = *MEMORY[0x277D77260];
    v9 = *MEMORY[0x277D77260];
  }

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)iconNameForState:(unint64_t)state
{
  if (state)
  {
    return @"device-animation-phone-check";
  }

  else
  {
    return @"device-animation-phone";
  }
}

@end