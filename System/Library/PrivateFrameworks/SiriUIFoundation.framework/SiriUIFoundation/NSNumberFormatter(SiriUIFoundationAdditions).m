@interface NSNumberFormatter(SiriUIFoundationAdditions)
+ (id)sruif_localizedStringFromNumber:()SiriUIFoundationAdditions;
@end

@implementation NSNumberFormatter(SiriUIFoundationAdditions)

+ (id)sruif_localizedStringFromNumber:()SiriUIFoundationAdditions
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = SRUIFGetLocale();
  [v5 setLocale:v6];

  v7 = [v5 stringFromNumber:v4];

  return v7;
}

@end