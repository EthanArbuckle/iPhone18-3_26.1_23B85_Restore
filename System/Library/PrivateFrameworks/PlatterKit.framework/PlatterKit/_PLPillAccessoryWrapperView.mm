@interface _PLPillAccessoryWrapperView
- (CGSize)intrinsicContentSize;
- (_PLPillAccessoryWrapperView)initWithFrame:(CGRect)a3;
- (_PLPillAccessoryWrapperView)initWithManagedSubview:(id)a3;
- (void)addSubview:(id)a3;
- (void)layoutSubviews;
@end

@implementation _PLPillAccessoryWrapperView

- (_PLPillAccessoryWrapperView)initWithManagedSubview:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v5 = [(_PLPillAccessoryWrapperView *)self initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(_PLPillAccessoryWrapperView *)v5 addSubview:v4];
  }

  return v6;
}

- (_PLPillAccessoryWrapperView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _PLPillAccessoryWrapperView;
  v3 = [(_PLPillAccessoryWrapperView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)addSubview:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_PLPillAccessoryWrapperView *)self subviews];
  v6 = [v5 count];

  if (v6)
  {
    [_PLPillAccessoryWrapperView addSubview:];
  }

  v17.receiver = self;
  v17.super_class = _PLPillAccessoryWrapperView;
  [(_PLPillAccessoryWrapperView *)&v17 addSubview:v4];
  [(_PLPillAccessoryWrapperView *)self intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  v11 = [(_PLPillAccessoryWrapperView *)self widthAnchor];
  v12 = [v11 constraintEqualToConstant:v8];

  v13 = [(_PLPillAccessoryWrapperView *)self heightAnchor];
  v14 = [v13 constraintEqualToConstant:v10];

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
  v3 = [(_PLPillAccessoryWrapperView *)self subviews];
  v4 = [v3 firstObject];

  [(_PLPillAccessoryWrapperView *)self bounds];
  [v4 sizeThatFits:{v5, v6}];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  [v4 setFrame:0];
}

- (void)addSubview:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end