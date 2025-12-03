@interface WFVariableCell
+ (double)widthWithVariable:(id)variable height:(double)height;
- (WFVariableCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVariable:(id)variable;
- (void)updateVariableImage;
@end

@implementation WFVariableCell

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = WFVariableCell;
  [(WFVariableCell *)&v4 setHighlighted:highlighted];
  [(WFVariableCell *)self updateVariableImage];
}

- (void)setVariable:(id)variable
{
  objc_storeStrong(&self->_variable, variable);
  variableCopy = variable;
  [(WFVariableCell *)self updateVariableImage];
  nameIncludingPropertyName = [variableCopy nameIncludingPropertyName];

  [(WFVariableCell *)self setAccessibilityLabel:nameIncludingPropertyName];
}

- (void)updateVariableImage
{
  variable = [(WFVariableCell *)self variable];
  propertyName = [variable propertyName];
  v4 = propertyName;
  if (propertyName)
  {
    name = propertyName;
  }

  else
  {
    name = [variable name];
  }

  v6 = name;

  icon = [variable icon];
  isAvailable = [variable isAvailable];
  isHighlighted = [(WFVariableCell *)self isHighlighted];
  currentTitle = [(WFVariableCell *)self currentTitle];
  v11 = v6;
  v12 = currentTitle;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = v12;
    v15 = v11;
    if (!v11)
    {
      goto LABEL_20;
    }

    v14 = v12;
    v15 = v11;
    if (!v12)
    {
      goto LABEL_20;
    }

    v16 = [v11 isEqualToString:v12];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  currentIcon = [(WFVariableCell *)self currentIcon];
  v14 = icon;
  v18 = currentIcon;
  v15 = v18;
  if (v14 == v18)
  {

    goto LABEL_16;
  }

  if (v14 && v18)
  {
    v19 = [v14 isEqual:v18];

    if (!v19)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (isAvailable == [(WFVariableCell *)self currentAvailable])
    {
      currentControlState = [(WFVariableCell *)self currentControlState];

      if (currentControlState == isHighlighted)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_20:
LABEL_21:

LABEL_22:
LABEL_23:
  pillView = self->_pillView;
  if (pillView)
  {
    [(WFVariablePillView *)pillView removeFromSuperview];
  }

  v22 = objc_alloc(MEMORY[0x277D7D7E0]);
  [(WFVariableCell *)self bounds];
  v24 = [v22 initWithName:v11 icon:icon font:0 available:isAvailable height:isHighlighted controlState:v23];
  [v24 setUserInteractionEnabled:0];
  [(WFVariableCell *)self bounds];
  [v24 setFrame:?];
  [v24 setAutoresizingMask:18];
  contentView = [(WFVariableCell *)self contentView];
  [contentView addSubview:v24];

  v26 = self->_pillView;
  self->_pillView = v24;

  [(WFVariableCell *)self setCurrentTitle:v11];
  [(WFVariableCell *)self setCurrentIcon:icon];
  [(WFVariableCell *)self setCurrentAvailable:isAvailable];
  [(WFVariableCell *)self setCurrentControlState:isHighlighted];
LABEL_26:
}

- (WFVariableCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WFVariableCell;
  v3 = [(WFVariableCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = WFLocalizedString(@"Double tap to insert");
    [(WFVariableCell *)v3 setAccessibilityHint:v4];

    v5 = v3;
  }

  return v3;
}

+ (double)widthWithVariable:(id)variable height:(double)height
{
  variableCopy = variable;
  propertyName = [variableCopy propertyName];
  v7 = propertyName;
  if (propertyName)
  {
    name = propertyName;
  }

  else
  {
    name = [variableCopy name];
  }

  v9 = name;

  v10 = MEMORY[0x277D7D7E0];
  icon = [variableCopy icon];
  [v10 widthForVariableViewWithName:v9 icon:icon font:0 height:height];
  v13 = v12;

  return v13;
}

@end