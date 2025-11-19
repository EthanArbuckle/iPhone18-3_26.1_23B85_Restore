@interface CHManager(IntentHandler)
+ (id)siriManagerForIntentType:()IntentHandler;
@end

@implementation CHManager(IntentHandler)

+ (id)siriManagerForIntentType:()IntentHandler
{
  v0 = objc_alloc_init(MEMORY[0x277CF7D40]);

  return v0;
}

@end