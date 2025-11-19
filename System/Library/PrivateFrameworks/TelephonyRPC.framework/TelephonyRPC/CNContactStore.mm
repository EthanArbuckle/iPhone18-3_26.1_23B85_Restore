@interface CNContactStore
@end

@implementation CNContactStore

void __39__CNContactStore_NanoPhone__nph_shared__block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [@"com.apple.NanoPhone" UTF8String];
  v0 = tcc_identity_create();
  [v3 setAssumedIdentity:v0];

  [v3 setIncludeAcceptedIntroductions:1];
  v1 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v3];
  v2 = nph_shared_sharedContactStore;
  nph_shared_sharedContactStore = v1;
}

@end