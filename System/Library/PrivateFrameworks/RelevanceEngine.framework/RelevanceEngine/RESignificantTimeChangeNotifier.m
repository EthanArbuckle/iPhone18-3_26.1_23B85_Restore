@interface RESignificantTimeChangeNotifier
@end

@implementation RESignificantTimeChangeNotifier

uint64_t __50___RESignificantTimeChangeNotifier_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Notifier;
  sharedInstance_Notifier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __40___RESignificantTimeChangeNotifier_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notify];
}

@end