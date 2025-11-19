@interface WiFiWalletPass
- (NSString)description;
@end

@implementation WiFiWalletPass

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  v7 = [(WiFiWalletPass *)self SSID];
  [v6 appendFormat:@"SSID: %@ ", v7];

  v8 = [(WiFiWalletPass *)self password];
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@"Password: %@ ", v9];

  v10 = [(WiFiWalletPass *)self uniqueIdentifier];
  [v6 appendFormat:@"Idenitifer: %@ ", v10];

  v11 = [(WiFiWalletPass *)self captiveToken];
  if (v11)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v6 appendFormat:@"Captive network: %@ ", v12];

  [v6 appendString:@">"];

  return v6;
}

@end