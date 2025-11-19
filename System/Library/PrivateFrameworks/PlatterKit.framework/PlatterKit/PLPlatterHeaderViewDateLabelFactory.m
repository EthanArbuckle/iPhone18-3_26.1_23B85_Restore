@interface PLPlatterHeaderViewDateLabelFactory
+ (id)sharedInstance;
@end

@implementation PLPlatterHeaderViewDateLabelFactory

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[PLPlatterHeaderViewDateLabelFactory sharedInstance];
  }

  v3 = sharedInstance___factory;

  return v3;
}

uint64_t __53__PLPlatterHeaderViewDateLabelFactory_sharedInstance__block_invoke()
{
  sharedInstance___factory = objc_alloc_init(MEMORY[0x277CF0D50]);

  return MEMORY[0x2821F96F8]();
}

@end