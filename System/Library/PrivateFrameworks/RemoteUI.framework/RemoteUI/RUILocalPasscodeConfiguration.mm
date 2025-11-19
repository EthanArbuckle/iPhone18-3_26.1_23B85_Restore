@interface RUILocalPasscodeConfiguration
+ (id)alphanumeric;
- (RUILocalPasscodeConfiguration)initWithNumberOfDigits:(unint64_t)a3 isAphanumeric:(BOOL)a4;
@end

@implementation RUILocalPasscodeConfiguration

- (RUILocalPasscodeConfiguration)initWithNumberOfDigits:(unint64_t)a3 isAphanumeric:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = RUILocalPasscodeConfiguration;
  result = [(RUILocalPasscodeConfiguration *)&v7 init];
  result->_isAphanumeric = a4;
  result->_numberOfDigits = a3;
  return result;
}

+ (id)alphanumeric
{
  v2 = [[RUILocalPasscodeConfiguration alloc] initWithNumberOfDigits:0 isAphanumeric:1];

  return v2;
}

@end