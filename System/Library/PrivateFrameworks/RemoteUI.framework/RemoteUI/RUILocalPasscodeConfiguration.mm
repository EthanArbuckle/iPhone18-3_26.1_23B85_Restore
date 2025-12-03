@interface RUILocalPasscodeConfiguration
+ (id)alphanumeric;
- (RUILocalPasscodeConfiguration)initWithNumberOfDigits:(unint64_t)digits isAphanumeric:(BOOL)aphanumeric;
@end

@implementation RUILocalPasscodeConfiguration

- (RUILocalPasscodeConfiguration)initWithNumberOfDigits:(unint64_t)digits isAphanumeric:(BOOL)aphanumeric
{
  v7.receiver = self;
  v7.super_class = RUILocalPasscodeConfiguration;
  result = [(RUILocalPasscodeConfiguration *)&v7 init];
  result->_isAphanumeric = aphanumeric;
  result->_numberOfDigits = digits;
  return result;
}

+ (id)alphanumeric
{
  v2 = [[RUILocalPasscodeConfiguration alloc] initWithNumberOfDigits:0 isAphanumeric:1];

  return v2;
}

@end