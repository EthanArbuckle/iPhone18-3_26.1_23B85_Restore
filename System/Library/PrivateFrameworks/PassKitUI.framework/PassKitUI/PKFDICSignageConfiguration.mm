@interface PKFDICSignageConfiguration
- (PKFDICSignageConfiguration)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name;
@end

@implementation PKFDICSignageConfiguration

- (PKFDICSignageConfiguration)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name
{
  v7.receiver = self;
  v7.super_class = PKFDICSignageConfiguration;
  result = [(PKFDICSignageConfiguration *)&v7 init];
  if (result)
  {
    result->_feature = feature;
    result->_displayingBankName = name;
  }

  return result;
}

@end