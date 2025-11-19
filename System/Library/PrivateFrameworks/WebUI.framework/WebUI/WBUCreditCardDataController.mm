@interface WBUCreditCardDataController
+ (id)sharedCreditCardDataController;
- (BOOL)hasUsedNonVirtualCard;
- (unint64_t)virtualCardFieldsToRequest;
- (void)setHasUsedNonVirtualCard;
@end

@implementation WBUCreditCardDataController

+ (id)sharedCreditCardDataController
{
  v3 = sharedCreditCardDataController_sharedInstance;
  if (!sharedCreditCardDataController_sharedInstance)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedCreditCardDataController_sharedInstance;
    sharedCreditCardDataController_sharedInstance = v4;

    v3 = sharedCreditCardDataController_sharedInstance;
  }

  return v3;
}

- (unint64_t)virtualCardFieldsToRequest
{
  if (MGGetBoolAnswer())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hasUsedNonVirtualCard
{
  v2 = [MEMORY[0x277CBEBD0] webui_defaults];
  v3 = [v2 BOOLForKey:*off_279EB0F68];

  return v3;
}

- (void)setHasUsedNonVirtualCard
{
  v2 = [MEMORY[0x277CBEBD0] webui_defaults];
  [v2 setBool:1 forKey:*off_279EB0F68];
}

@end