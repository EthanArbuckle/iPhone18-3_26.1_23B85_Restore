@interface SACommandFailed(SiriUIFoundationAdditions)
+ (id)sruif_commandFailedWithRefId:()SiriUIFoundationAdditions;
+ (id)sruif_commandFailedWithRefId:()SiriUIFoundationAdditions error:;
@end

@implementation SACommandFailed(SiriUIFoundationAdditions)

+ (id)sruif_commandFailedWithRefId:()SiriUIFoundationAdditions
{
  v3 = MEMORY[0x277D47208];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setRefId:v4];

  return v5;
}

+ (id)sruif_commandFailedWithRefId:()SiriUIFoundationAdditions error:
{
  v5 = MEMORY[0x277D47208];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setRefId:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
  [v8 setCustomErrorCode:v9];

  domain = [v6 domain];

  [v8 setCustomErrorDomain:domain];

  return v8;
}

@end