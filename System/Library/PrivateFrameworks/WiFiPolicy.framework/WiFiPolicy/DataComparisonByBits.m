@interface DataComparisonByBits
+ (id)dataComparisonByBitsWithData1:(id)a3 data2:(id)a4 reference:(id)a5;
+ (id)dataComparisonByBitsWithData1:(id)a3 string2:(id)a4 reference:(id)a5;
@end

@implementation DataComparisonByBits

+ (id)dataComparisonByBitsWithData1:(id)a3 data2:(id)a4 reference:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [WiFiUsagePrivacyFilter toBinString:a3];
  v11 = [WiFiUsagePrivacyFilter toBinString:v9];

  v12 = [[a1 alloc] initWithString1:v10 string2:v11 reference:v8];

  return v12;
}

+ (id)dataComparisonByBitsWithData1:(id)a3 string2:(id)a4 reference:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [WiFiUsagePrivacyFilter toBinString:a3];
  v11 = [[a1 alloc] initWithString1:v10 string2:v9 reference:v8];

  return v11;
}

@end