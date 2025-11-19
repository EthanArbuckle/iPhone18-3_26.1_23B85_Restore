@interface _SMUHandoffAnimationView
- (CGSize)intrinsicContentSize;
- (_SMUHandoffAnimationView)initWithState:(unint64_t)a3;
- (id)iconNameForState:(unint64_t)a3;
@end

@implementation _SMUHandoffAnimationView

- (_SMUHandoffAnimationView)initWithState:(unint64_t)a3
{
  v30[4] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = objc_alloc(MEMORY[0x277D74218]);
  v7 = [(_SMUHandoffAnimationView *)self iconNameForState:a3];
  v8 = [v6 initWithName:v7 bundle:v5];

  v9 = [v8 data];
  v29.receiver = self;
  v29.super_class = _SMUHandoffAnimationView;
  v10 = [(_UICAPackageView *)&v29 initWithData:v9 publishedObjectViewClassMap:0];

  if (v10)
  {
    [(_SMUHandoffAnimationView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(_SMUHandoffAnimationView *)v10 subviews];
    [v11 firstObject];
    v12 = v28 = v5;

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x277CCAAD0];
    v27 = [v12 topAnchor];
    v26 = [(_SMUHandoffAnimationView *)v10 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:-6.0];
    v30[0] = v25;
    v24 = [v12 leftAnchor];
    v23 = [(_SMUHandoffAnimationView *)v10 leftAnchor];
    v21 = [v24 constraintEqualToAnchor:v23 constant:-6.0];
    v30[1] = v21;
    v13 = [v12 rightAnchor];
    v14 = [(_SMUHandoffAnimationView *)v10 rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:6.0];
    v30[2] = v15;
    v16 = [v12 bottomAnchor];
    v17 = [(_SMUHandoffAnimationView *)v10 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:6.0];
    v30[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v19];

    v5 = v28;
  }

  return v10;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(_SMUHandoffAnimationView *)self subviews];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 bounds];
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

- (id)iconNameForState:(unint64_t)a3
{
  if (a3)
  {
    return @"device-animation-phone-check";
  }

  else
  {
    return @"device-animation-phone";
  }
}

@end