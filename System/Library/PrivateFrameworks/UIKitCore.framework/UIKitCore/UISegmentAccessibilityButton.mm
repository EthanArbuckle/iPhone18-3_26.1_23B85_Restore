@interface UISegmentAccessibilityButton
+ (id)buttonWithSegment:(id)segment;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation UISegmentAccessibilityButton

+ (id)buttonWithSegment:(id)segment
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___UISegmentAccessibilityButton;
  segmentCopy = segment;
  v4 = objc_msgSendSuper2(&v10, sel_buttonWithType_, 0);
  v5 = [UIColor clearColor:v10.receiver];
  [v4 setBackgroundColor:v5];

  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [segmentCopy frame];
  [segmentCopy setFrame:{v6, v7}];
  [v4 addSubview:segmentCopy];
  [v4 setSegment:segmentCopy];
  [v4 setUserInteractionEnabled:{objc_msgSend(segmentCopy, "isEnabled")}];
  accessibilityLabel = [segmentCopy accessibilityLabel];

  [v4 setAccessibilityLabel:accessibilityLabel];

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = UISegmentAccessibilityButton;
  [(UIButton *)&v13 layoutSubviews];
  segment = [(UISegmentAccessibilityButton *)self segment];
  [segment frame];
  v5 = v4;
  v7 = v6;

  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  segment2 = [(UISegmentAccessibilityButton *)self segment];
  [segment2 setFrame:{v5, v7, v9, v11}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UISegmentAccessibilityButton;
  v5 = [(UIControl *)&v8 hitTest:event withEvent:test.x, test.y];

  if (v5)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  v8.receiver = self;
  v8.super_class = UISegmentAccessibilityButton;
  v5 = [(UIControl *)&v8 hitTest:event forEvent:test.x, test.y];

  if (v5)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end