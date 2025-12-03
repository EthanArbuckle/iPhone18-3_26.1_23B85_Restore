@interface DataComparisonByBits
+ (id)dataComparisonByBitsWithData1:(id)data1 data2:(id)data2 reference:(id)reference;
+ (id)dataComparisonByBitsWithData1:(id)data1 string2:(id)string2 reference:(id)reference;
@end

@implementation DataComparisonByBits

+ (id)dataComparisonByBitsWithData1:(id)data1 data2:(id)data2 reference:(id)reference
{
  referenceCopy = reference;
  data2Copy = data2;
  v10 = [WiFiUsagePrivacyFilter toBinString:data1];
  v11 = [WiFiUsagePrivacyFilter toBinString:data2Copy];

  v12 = [[self alloc] initWithString1:v10 string2:v11 reference:referenceCopy];

  return v12;
}

+ (id)dataComparisonByBitsWithData1:(id)data1 string2:(id)string2 reference:(id)reference
{
  referenceCopy = reference;
  string2Copy = string2;
  v10 = [WiFiUsagePrivacyFilter toBinString:data1];
  v11 = [[self alloc] initWithString1:v10 string2:string2Copy reference:referenceCopy];

  return v11;
}

@end