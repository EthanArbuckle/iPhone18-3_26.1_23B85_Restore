@interface PRXActionCustomColors
+ (PRXActionCustomColors)initWithBackgroundColor:(id)a3 textColor:(id)a4;
- (PRXActionCustomColors)initWithBackgroundColor:(id)a3 textColor:(id)a4;
@end

@implementation PRXActionCustomColors

- (PRXActionCustomColors)initWithBackgroundColor:(id)a3 textColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PRXActionCustomColors;
  v8 = [(PRXActionCustomColors *)&v13 init];
  backgroundColor = v8->_backgroundColor;
  v8->_backgroundColor = v6;
  v10 = v6;

  textColor = v8->_textColor;
  v8->_textColor = v7;

  return v8;
}

+ (PRXActionCustomColors)initWithBackgroundColor:(id)a3 textColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBackgroundColor:v7 textColor:v6];

  return v8;
}

@end