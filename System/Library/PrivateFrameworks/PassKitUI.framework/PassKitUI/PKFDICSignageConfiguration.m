@interface PKFDICSignageConfiguration
- (PKFDICSignageConfiguration)initWithFeature:(unint64_t)a3 displayingBankName:(BOOL)a4;
@end

@implementation PKFDICSignageConfiguration

- (PKFDICSignageConfiguration)initWithFeature:(unint64_t)a3 displayingBankName:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKFDICSignageConfiguration;
  result = [(PKFDICSignageConfiguration *)&v7 init];
  if (result)
  {
    result->_feature = a3;
    result->_displayingBankName = a4;
  }

  return result;
}

@end