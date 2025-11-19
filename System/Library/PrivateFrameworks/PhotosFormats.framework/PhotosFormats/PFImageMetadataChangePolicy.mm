@interface PFImageMetadataChangePolicy
+ (id)standardPolicy;
@end

@implementation PFImageMetadataChangePolicy

+ (id)standardPolicy
{
  if (standardPolicy_onceToken != -1)
  {
    dispatch_once(&standardPolicy_onceToken, &__block_literal_global_68);
  }

  v3 = standardPolicy_standardPolicy;

  return v3;
}

uint64_t __45__PFImageMetadataChangePolicy_standardPolicy__block_invoke()
{
  standardPolicy_standardPolicy = objc_alloc_init(PFImageMetadataChangePolicy);

  return MEMORY[0x1EEE66BB8]();
}

@end