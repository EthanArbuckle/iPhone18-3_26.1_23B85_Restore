@interface PLBBTelephonyDsdsActivityMsg
- (PLBBTelephonyDsdsActivityMsg)init;
@end

@implementation PLBBTelephonyDsdsActivityMsg

- (PLBBTelephonyDsdsActivityMsg)init
{
  v5.receiver = self;
  v5.super_class = PLBBTelephonyDsdsActivityMsg;
  v2 = [(PLBBTelephonyDsdsActivityMsg *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
    [(PLBBTelephonyDsdsActivityMsg *)v2 setSignalStrengthLogTimestamp:v3];

    [(PLBBTelephonyDsdsActivityMsg *)v2 setSignalBars:0];
    [(PLBBTelephonyDsdsActivityMsg *)v2 setCampedRAT:0];
    [(PLBBTelephonyDsdsActivityMsg *)v2 setSimStatus:0];
    [(PLBBTelephonyDsdsActivityMsg *)v2 setCallStatus:@"Inactive"];
  }

  return v2;
}

@end