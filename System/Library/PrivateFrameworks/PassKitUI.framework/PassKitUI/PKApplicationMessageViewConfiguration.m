@interface PKApplicationMessageViewConfiguration
- (PKApplicationMessageViewConfiguration)initWithWidth:(double)a3;
@end

@implementation PKApplicationMessageViewConfiguration

- (PKApplicationMessageViewConfiguration)initWithWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageViewConfiguration;
  result = [(PKApplicationMessageViewConfiguration *)&v5 init];
  if (result)
  {
    result->_width = a3;
  }

  return result;
}

@end