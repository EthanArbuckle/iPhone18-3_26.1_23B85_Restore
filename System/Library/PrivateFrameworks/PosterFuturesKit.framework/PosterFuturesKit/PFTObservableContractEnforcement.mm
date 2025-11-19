@interface PFTObservableContractEnforcement
+ (id)os_log;
@end

@implementation PFTObservableContractEnforcement

+ (id)os_log
{
  if (os_log_pft_once_token_8_1 != -1)
  {
    +[PFTObservableContractEnforcement os_log];
  }

  v3 = os_log_pft_once_object_8_1;

  return v3;
}

uint64_t __42__PFTObservableContractEnforcement_os_log__block_invoke()
{
  os_log_pft_once_object_8_1 = os_log_create("com.apple.FutureKit.reactive-extensions", "contract-enforcement");

  return MEMORY[0x2821F96F8]();
}

@end