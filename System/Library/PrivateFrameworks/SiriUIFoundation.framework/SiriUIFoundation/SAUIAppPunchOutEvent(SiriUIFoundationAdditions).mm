@interface SAUIAppPunchOutEvent(SiriUIFoundationAdditions)
+ (id)sruif_appPunchOutEventWithRefId:()SiriUIFoundationAdditions URL:appDisplayName:bundleId:;
@end

@implementation SAUIAppPunchOutEvent(SiriUIFoundationAdditions)

+ (id)sruif_appPunchOutEventWithRefId:()SiriUIFoundationAdditions URL:appDisplayName:bundleId:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = MEMORY[0x277CCACA8];
    scheme = [a4 scheme];
    v14 = [v12 stringWithFormat:@"%@://%@", scheme, @"#TRUNCATED"];

    a4 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  }

  v15 = objc_alloc_init(MEMORY[0x277D479F8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v15 setAceId:uUIDString];

  [v15 setRefId:v9];
  [v15 setPunchOutUri:a4];
  [v15 setAppDisplayName:v10];
  [v15 setBundleId:v11];

  return v15;
}

@end