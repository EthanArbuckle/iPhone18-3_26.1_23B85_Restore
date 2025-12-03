@interface _PLPillAccessoryWrapperView
- (CGSize)intrinsicContentSize;
- (_PLPillAccessoryWrapperView)initWithFrame:(CGRect)frame;
- (_PLPillAccessoryWrapperView)initWithManagedSubview:(id)subview;
- (void)addSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation _PLPillAccessoryWrapperView

- (_PLPillAccessoryWrapperView)initWithManagedSubview:(id)subview
{
  subviewCopy = subview;
  [subviewCopy bounds];
  v5 = [(_PLPillAccessoryWrapperView *)self initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(_PLPillAccessoryWrapperView *)v5 addSubview:subviewCopy];
  }

  return v6;
}

- (_PLPillAccessoryWrapperView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _PLPillAccessoryWrapperView;
  v3 = [(_PLPillAccessoryWrapperView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_PLPillAccessoryWrapperView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addSubview:(id)subview
{
  v18[2] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  subviews = [(_PLPillAccessoryWrapperView *)self subviews];
  v6 = [subviews count];

  if (v6)
  {
    [_PLPillAccessoryWrapperView addSubview:];
  }

  v17.receiver = self;
  v17.super_class = _PLPillAccessoryWrapperView;
  [(_PLPillAccessoryWrapperView *)&v17 addSubview:subviewCopy];
  [(_PLPillAccessoryWrapperView *)self intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  widthAnchor = [(_PLPillAccessoryWrapperView *)self widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:v8];

  heightAnchor = [(_PLPillAccessoryWrapperView *)self heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:v10];

  v15 = MEMORY[0x277CCAAD0];
  v18[0] = v12;
  v18[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v15 activateConstraints:v16];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = _PLPillAccessoryWrapperView;
  [(_PLPillAccessoryWrapperView *)&v7 layoutSubviews];
  subviews = [(_PLPillAccessoryWrapperView *)self subviews];
  firstObject = [subviews firstObject];

  [(_PLPillAccessoryWrapperView *)self bounds];
  [firstObject sizeThatFits:{v5, v6}];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  [firstObject setFrame:0];
}

- (void)addSubview:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end