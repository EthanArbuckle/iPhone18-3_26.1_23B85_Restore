@interface PLBBTelephonyDsdsRegMsg
- (PLBBTelephonyDsdsRegMsg)init;
@end

@implementation PLBBTelephonyDsdsRegMsg

- (PLBBTelephonyDsdsRegMsg)init
{
  v5.receiver = self;
  v5.super_class = PLBBTelephonyDsdsRegMsg;
  v2 = [(PLBBTelephonyDsdsRegMsg *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLBBTelephonyDsdsRegMsg *)v2 setDataIndicator:0xFFFFFFFFLL];
    [(PLBBTelephonyDsdsRegMsg *)v3 setDataAttached:0xFFFFFFFFLL];
    [(PLBBTelephonyDsdsRegMsg *)v3 setDataActive:0xFFFFFFFFLL];
    [(PLBBTelephonyDsdsRegMsg *)v3 setOperatorName:0];
    [(PLBBTelephonyDsdsRegMsg *)v3 setIsHome:0xFFFFFFFFLL];
    [(PLBBTelephonyDsdsRegMsg *)v3 setStatus:@"status"];
    [(PLBBTelephonyDsdsRegMsg *)v3 setServiceOpt:0xFFFFFFFFLL];
  }

  return v3;
}

@end