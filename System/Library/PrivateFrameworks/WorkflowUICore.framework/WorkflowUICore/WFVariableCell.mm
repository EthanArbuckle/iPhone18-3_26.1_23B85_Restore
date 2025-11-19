@interface WFVariableCell
+ (double)widthWithVariable:(id)a3 height:(double)a4;
- (WFVariableCell)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setVariable:(id)a3;
- (void)updateVariableImage;
@end

@implementation WFVariableCell

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFVariableCell;
  [(WFVariableCell *)&v4 setHighlighted:a3];
  [(WFVariableCell *)self updateVariableImage];
}

- (void)setVariable:(id)a3
{
  objc_storeStrong(&self->_variable, a3);
  v5 = a3;
  [(WFVariableCell *)self updateVariableImage];
  v6 = [v5 nameIncludingPropertyName];

  [(WFVariableCell *)self setAccessibilityLabel:v6];
}

- (void)updateVariableImage
{
  v27 = [(WFVariableCell *)self variable];
  v3 = [v27 propertyName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v27 name];
  }

  v6 = v5;

  v7 = [v27 icon];
  v8 = [v27 isAvailable];
  v9 = [(WFVariableCell *)self isHighlighted];
  v10 = [(WFVariableCell *)self currentTitle];
  v11 = v6;
  v12 = v10;
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

  v17 = [(WFVariableCell *)self currentIcon];
  v14 = v7;
  v18 = v17;
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
    if (v8 == [(WFVariableCell *)self currentAvailable])
    {
      v20 = [(WFVariableCell *)self currentControlState];

      if (v20 == v9)
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
  v24 = [v22 initWithName:v11 icon:v7 font:0 available:v8 height:v9 controlState:v23];
  [v24 setUserInteractionEnabled:0];
  [(WFVariableCell *)self bounds];
  [v24 setFrame:?];
  [v24 setAutoresizingMask:18];
  v25 = [(WFVariableCell *)self contentView];
  [v25 addSubview:v24];

  v26 = self->_pillView;
  self->_pillView = v24;

  [(WFVariableCell *)self setCurrentTitle:v11];
  [(WFVariableCell *)self setCurrentIcon:v7];
  [(WFVariableCell *)self setCurrentAvailable:v8];
  [(WFVariableCell *)self setCurrentControlState:v9];
LABEL_26:
}

- (WFVariableCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = WFVariableCell;
  v3 = [(WFVariableCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = WFLocalizedString(@"Double tap to insert");
    [(WFVariableCell *)v3 setAccessibilityHint:v4];

    v5 = v3;
  }

  return v3;
}

+ (double)widthWithVariable:(id)a3 height:(double)a4
{
  v5 = a3;
  v6 = [v5 propertyName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 name];
  }

  v9 = v8;

  v10 = MEMORY[0x277D7D7E0];
  v11 = [v5 icon];
  [v10 widthForVariableViewWithName:v9 icon:v11 font:0 height:a4];
  v13 = v12;

  return v13;
}

@end