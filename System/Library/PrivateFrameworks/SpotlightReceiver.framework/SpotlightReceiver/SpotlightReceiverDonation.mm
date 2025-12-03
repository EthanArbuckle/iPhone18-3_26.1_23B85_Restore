@interface SpotlightReceiverDonation
- (SpotlightReceiverDonation)initWithVersionName:(id)name versionValue:(id)value;
@end

@implementation SpotlightReceiverDonation

- (SpotlightReceiverDonation)initWithVersionName:(id)name versionValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = SpotlightReceiverDonation;
  v9 = [(SpotlightReceiverDonation *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_versionName, name);
    objc_storeStrong(&v10->_versionValue, value);
    if (nameCopy)
    {
      if ([nameCopy hasPrefix:@"_"])
      {
        v11 = &stru_284821EC8;
      }

      else
      {
        v11 = @"_";
      }

      v12 = v11;
      v13 = [nameCopy stringByReplacingOccurrencesOfString:@"Version" withString:&stru_284821EC8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@Error", v12, v13];
      errorAttributeName = v10->_errorAttributeName;
      v10->_errorAttributeName = v14;

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ErrorCode", v12, v13];

      errorCodeAttributeName = v10->_errorCodeAttributeName;
      v10->_errorCodeAttributeName = v16;
    }
  }

  return v10;
}

@end