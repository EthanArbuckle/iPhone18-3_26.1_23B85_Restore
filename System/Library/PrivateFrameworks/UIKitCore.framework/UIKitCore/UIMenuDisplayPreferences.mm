@interface UIMenuDisplayPreferences
- (UIMenuDisplayPreferences)init;
- (UIMenuDisplayPreferences)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIMenuDisplayPreferences

- (UIMenuDisplayPreferences)init
{
  v3.receiver = self;
  v3.super_class = UIMenuDisplayPreferences;
  result = [(UIMenuDisplayPreferences *)&v3 init];
  if (result)
  {
    result->_maximumNumberOfTitleLines = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIMenuDisplayPreferences allocWithZone:?]];
  [(UIMenuDisplayPreferences *)v4 setMaximumNumberOfTitleLines:[(UIMenuDisplayPreferences *)self maximumNumberOfTitleLines]];
  return v4;
}

- (UIMenuDisplayPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIMenuDisplayPreferences;
  v5 = [(UIMenuDisplayPreferences *)&v7 init];
  if (v5)
  {
    v5->_maximumNumberOfTitleLines = [v4 decodeIntegerForKey:@"maximumNumberOfTitleLines"];
  }

  return v5;
}

@end