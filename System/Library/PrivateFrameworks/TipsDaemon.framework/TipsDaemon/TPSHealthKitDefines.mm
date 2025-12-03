@interface TPSHealthKitDefines
+ (id)featureAvailabilityContextForStatusType:(int64_t)type;
+ (id)identifierForFeature:(int64_t)feature;
+ (id)sharedHealthStore;
@end

@implementation TPSHealthKitDefines

+ (id)sharedHealthStore
{
  if (sharedHealthStore_onceToken != -1)
  {
    +[TPSHealthKitDefines sharedHealthStore];
  }

  v3 = sharedHealthStore_s_healthStore;

  return v3;
}

uint64_t __40__TPSHealthKitDefines_sharedHealthStore__block_invoke()
{
  sharedHealthStore_s_healthStore = objc_alloc_init(MEMORY[0x277CCD4D8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)identifierForFeature:(int64_t)feature
{
  if ((feature - 1) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_2789B0C00 + feature - 1);
  }

  return v4;
}

+ (id)featureAvailabilityContextForStatusType:(int64_t)type
{
  if (type == 1)
  {
    v4 = MEMORY[0x277CCBE88];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (type == 2)
  {
    v4 = MEMORY[0x277CCBE80];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end