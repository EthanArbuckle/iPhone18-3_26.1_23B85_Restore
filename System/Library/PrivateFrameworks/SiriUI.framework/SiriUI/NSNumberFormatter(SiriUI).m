@interface NSNumberFormatter(SiriUI)
+ (id)siriui_localizedStringFromNumber:()SiriUI;
@end

@implementation NSNumberFormatter(SiriUI)

+ (id)siriui_localizedStringFromNumber:()SiriUI
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCA8D8] afui_assistantUIFrameworkBundle];
  v7 = [v6 assistantUILocale];
  [v5 setLocale:v7];

  v8 = [v5 stringFromNumber:v4];

  return v8;
}

@end