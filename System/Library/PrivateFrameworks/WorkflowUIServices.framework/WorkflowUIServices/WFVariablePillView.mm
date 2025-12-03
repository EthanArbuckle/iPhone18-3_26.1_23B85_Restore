@interface WFVariablePillView
+ (double)widthForVariableViewWithName:(id)name icon:(id)icon font:(id)font height:(double)height;
- (CGSize)intrinsicContentSize;
- (WFVariablePillView)initWithName:(id)name icon:(id)icon font:(id)font available:(BOOL)available height:(double)height controlState:(unint64_t)state;
@end

@implementation WFVariablePillView

- (CGSize)intrinsicContentSize
{
  [(WFVariablePillHostingView *)self->_hostingView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (WFVariablePillView)initWithName:(id)name icon:(id)icon font:(id)font available:(BOOL)available height:(double)height controlState:(unint64_t)state
{
  availableCopy = available;
  nameCopy = name;
  iconCopy = icon;
  fontCopy = font;
  v22.receiver = self;
  v22.super_class = WFVariablePillView;
  v17 = [(WFVariablePillView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v17)
  {
    v18 = [[WFVariablePillHostingView alloc] initWithName:nameCopy icon:iconCopy font:fontCopy available:availableCopy height:state controlState:height];
    [(WFVariablePillHostingView *)v18 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(WFVariablePillHostingView *)v18 setAutoresizingMask:18];
    [(WFVariablePillView *)v17 addSubview:v18];
    hostingView = v17->_hostingView;
    v17->_hostingView = v18;

    v20 = v17;
  }

  return v17;
}

+ (double)widthForVariableViewWithName:(id)name icon:(id)icon font:(id)font height:(double)height
{
  fontCopy = font;
  iconCopy = icon;
  nameCopy = name;
  v12 = [[WFVariablePillLayoutMetrics alloc] initWithName:nameCopy icon:iconCopy font:fontCopy height:height];

  [(WFVariablePillLayoutMetrics *)v12 totalWidth];
  v14 = v13;

  return v14;
}

@end