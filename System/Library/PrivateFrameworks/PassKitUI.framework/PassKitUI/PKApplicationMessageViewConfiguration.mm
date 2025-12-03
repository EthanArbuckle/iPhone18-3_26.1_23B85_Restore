@interface PKApplicationMessageViewConfiguration
- (PKApplicationMessageViewConfiguration)initWithWidth:(double)width;
@end

@implementation PKApplicationMessageViewConfiguration

- (PKApplicationMessageViewConfiguration)initWithWidth:(double)width
{
  v5.receiver = self;
  v5.super_class = PKApplicationMessageViewConfiguration;
  result = [(PKApplicationMessageViewConfiguration *)&v5 init];
  if (result)
  {
    result->_width = width;
  }

  return result;
}

@end