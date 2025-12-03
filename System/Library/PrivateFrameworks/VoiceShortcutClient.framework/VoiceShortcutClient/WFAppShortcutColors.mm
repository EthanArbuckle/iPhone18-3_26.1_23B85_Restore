@interface WFAppShortcutColors
- (WFAppShortcutColors)initWithCoder:(id)coder;
- (WFAppShortcutColors)initWithComplementingColors:(id)colors tintColor:(id)color;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppShortcutColors

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backgroundGradient = [(WFAppShortcutColors *)self backgroundGradient];
  [coderCopy encodeObject:backgroundGradient forKey:@"backgroundGradient"];

  tintColor = [(WFAppShortcutColors *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"tintColor"];
}

- (WFAppShortcutColors)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFAppShortcutColors;
  v5 = [(WFAppShortcutColors *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundGradient"];
    backgroundGradient = v5->_backgroundGradient;
    v5->_backgroundGradient = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v8;

    v10 = v5;
  }

  return v5;
}

- (WFAppShortcutColors)initWithComplementingColors:(id)colors tintColor:(id)color
{
  colorsCopy = colors;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = WFAppShortcutColors;
  v8 = [(WFAppShortcutColors *)&v21 init];
  if (!v8)
  {
    goto LABEL_11;
  }

  if ([colorsCopy count] == 1)
  {
    v9 = 0;
LABEL_6:
    v10 = [WFGradient alloc];
    v11 = [colorsCopy objectAtIndexedSubscript:0];
    v12 = [colorsCopy objectAtIndexedSubscript:v9];
    v13 = [(WFGradient *)v10 initWithStartColor:v11 endColor:v12];
    backgroundGradient = v8->_backgroundGradient;
    v8->_backgroundGradient = v13;

    goto LABEL_7;
  }

  if ([colorsCopy count] >= 2)
  {
    v9 = 1;
    goto LABEL_6;
  }

LABEL_7:
  if (colorCopy)
  {
    v15 = colorCopy;
    v16 = 0;
    tintColor = v8->_tintColor;
    v8->_tintColor = v15;
  }

  else
  {
    baseColor = [(WFGradient *)v8->_backgroundGradient baseColor];
    tintColor = v8->_tintColor;
    v8->_tintColor = baseColor;
    v16 = 1;
  }

  v8->_isDefaultTintColor = v16;
  v19 = v8;
LABEL_11:

  return v8;
}

@end