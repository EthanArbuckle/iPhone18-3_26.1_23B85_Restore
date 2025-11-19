@interface WFAppShortcutColors
- (WFAppShortcutColors)initWithCoder:(id)a3;
- (WFAppShortcutColors)initWithComplementingColors:(id)a3 tintColor:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppShortcutColors

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAppShortcutColors *)self backgroundGradient];
  [v4 encodeObject:v5 forKey:@"backgroundGradient"];

  v6 = [(WFAppShortcutColors *)self tintColor];
  [v4 encodeObject:v6 forKey:@"tintColor"];
}

- (WFAppShortcutColors)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFAppShortcutColors;
  v5 = [(WFAppShortcutColors *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundGradient"];
    backgroundGradient = v5->_backgroundGradient;
    v5->_backgroundGradient = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v8;

    v10 = v5;
  }

  return v5;
}

- (WFAppShortcutColors)initWithComplementingColors:(id)a3 tintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = WFAppShortcutColors;
  v8 = [(WFAppShortcutColors *)&v21 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  if ([v6 count] == 1)
  {
    v9 = 0;
LABEL_6:
    v10 = [WFGradient alloc];
    v11 = [v6 objectAtIndexedSubscript:0];
    v12 = [v6 objectAtIndexedSubscript:v9];
    v13 = [(WFGradient *)v10 initWithStartColor:v11 endColor:v12];
    backgroundGradient = v8->_backgroundGradient;
    v8->_backgroundGradient = v13;

    goto LABEL_7;
  }

  if ([v6 count] >= 2)
  {
    v9 = 1;
    goto LABEL_6;
  }

LABEL_7:
  if (v7)
  {
    v15 = v7;
    v16 = 0;
    tintColor = v8->_tintColor;
    v8->_tintColor = v15;
  }

  else
  {
    v18 = [(WFGradient *)v8->_backgroundGradient baseColor];
    tintColor = v8->_tintColor;
    v8->_tintColor = v18;
    v16 = 1;
  }

  v8->_isDefaultTintColor = v16;
  v19 = v8;
LABEL_11:

  return v8;
}

@end