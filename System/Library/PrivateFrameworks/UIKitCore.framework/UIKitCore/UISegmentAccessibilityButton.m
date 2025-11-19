@interface UISegmentAccessibilityButton
+ (id)buttonWithSegment:(id)a3;
- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation UISegmentAccessibilityButton

+ (id)buttonWithSegment:(id)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___UISegmentAccessibilityButton;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v10, sel_buttonWithType_, 0);
  v5 = [UIColor clearColor:v10.receiver];
  [v4 setBackgroundColor:v5];

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [v3 frame];
  [v3 setFrame:{v6, v7}];
  [v4 addSubview:v3];
  [v4 setSegment:v3];
  [v4 setUserInteractionEnabled:{objc_msgSend(v3, "isEnabled")}];
  v8 = [v3 accessibilityLabel];

  [v4 setAccessibilityLabel:v8];

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = UISegmentAccessibilityButton;
  [(UIButton *)&v13 layoutSubviews];
  v3 = [(UISegmentAccessibilityButton *)self segment];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v12 = [(UISegmentAccessibilityButton *)self segment];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UISegmentAccessibilityButton;
  v5 = [(UIControl *)&v8 hitTest:a4 withEvent:a3.x, a3.y];

  if (v5)
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  v8.receiver = self;
  v8.super_class = UISegmentAccessibilityButton;
  v5 = [(UIControl *)&v8 hitTest:a4 forEvent:a3.x, a3.y];

  if (v5)
  {
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end