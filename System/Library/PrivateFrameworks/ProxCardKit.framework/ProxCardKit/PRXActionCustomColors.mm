@interface PRXActionCustomColors
+ (PRXActionCustomColors)initWithBackgroundColor:(id)color textColor:(id)textColor;
- (PRXActionCustomColors)initWithBackgroundColor:(id)color textColor:(id)textColor;
@end

@implementation PRXActionCustomColors

- (PRXActionCustomColors)initWithBackgroundColor:(id)color textColor:(id)textColor
{
  colorCopy = color;
  textColorCopy = textColor;
  v13.receiver = self;
  v13.super_class = PRXActionCustomColors;
  v8 = [(PRXActionCustomColors *)&v13 init];
  backgroundColor = v8->_backgroundColor;
  v8->_backgroundColor = colorCopy;
  v10 = colorCopy;

  textColor = v8->_textColor;
  v8->_textColor = textColorCopy;

  return v8;
}

+ (PRXActionCustomColors)initWithBackgroundColor:(id)color textColor:(id)textColor
{
  textColorCopy = textColor;
  colorCopy = color;
  v8 = [[self alloc] initWithBackgroundColor:colorCopy textColor:textColorCopy];

  return v8;
}

@end