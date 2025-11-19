@interface WFVariablePillView
+ (double)widthForVariableViewWithName:(id)a3 icon:(id)a4 font:(id)a5 height:(double)a6;
- (CGSize)intrinsicContentSize;
- (WFVariablePillView)initWithName:(id)a3 icon:(id)a4 font:(id)a5 available:(BOOL)a6 height:(double)a7 controlState:(unint64_t)a8;
@end

@implementation WFVariablePillView

- (CGSize)intrinsicContentSize
{
  [(WFVariablePillHostingView *)self->_hostingView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (WFVariablePillView)initWithName:(id)a3 icon:(id)a4 font:(id)a5 available:(BOOL)a6 height:(double)a7 controlState:(unint64_t)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v22.receiver = self;
  v22.super_class = WFVariablePillView;
  v17 = [(WFVariablePillView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v17)
  {
    v18 = [[WFVariablePillHostingView alloc] initWithName:v14 icon:v15 font:v16 available:v10 height:a8 controlState:a7];
    [(WFVariablePillHostingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(WFVariablePillHostingView *)v18 setAutoresizingMask:18];
    [(WFVariablePillView *)v17 addSubview:v18];
    hostingView = v17->_hostingView;
    v17->_hostingView = v18;

    v20 = v17;
  }

  return v17;
}

+ (double)widthForVariableViewWithName:(id)a3 icon:(id)a4 font:(id)a5 height:(double)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[WFVariablePillLayoutMetrics alloc] initWithName:v11 icon:v10 font:v9 height:a6];

  [(WFVariablePillLayoutMetrics *)v12 totalWidth];
  v14 = v13;

  return v14;
}

@end