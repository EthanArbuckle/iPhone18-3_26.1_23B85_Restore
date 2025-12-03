@interface VUIActionCommerceInterruptedTransactionManager
+ (id)sharedInstance;
- (id)getLastInterruptedOfferDetails;
- (void)setLastInterruptedOfferDetails:(id)details;
@end

@implementation VUIActionCommerceInterruptedTransactionManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VUIActionCommerceInterruptedTransactionManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_36 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_36, block);
  }

  v2 = sharedInstance___sharedInstance_5;

  return v2;
}

void __64__VUIActionCommerceInterruptedTransactionManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_5;
  sharedInstance___sharedInstance_5 = v1;
}

- (id)getLastInterruptedOfferDetails
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->interruptedOfferDetails;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLastInterruptedOfferDetails:(id)details
{
  detailsCopy = details;
  obj = self;
  objc_sync_enter(obj);
  interruptedOfferDetails = obj->interruptedOfferDetails;
  obj->interruptedOfferDetails = detailsCopy;

  objc_sync_exit(obj);
}

@end