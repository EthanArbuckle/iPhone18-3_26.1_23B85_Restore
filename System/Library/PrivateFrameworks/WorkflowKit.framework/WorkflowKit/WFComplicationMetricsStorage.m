@interface WFComplicationMetricsStorage
+ (unint64_t)appComplicationSlotsUsed;
+ (unint64_t)shortcutComplicationSlotsUsed;
+ (void)setAppComplicationSlotsUsed:(unint64_t)a3;
+ (void)setShortcutComplicationSlotsUsed:(unint64_t)a3;
@end

@implementation WFComplicationMetricsStorage

+ (void)setShortcutComplicationSlotsUsed:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [v4 setInteger:a3 forKey:@"ShortcutComplicationSlotsUsed"];
}

+ (unint64_t)shortcutComplicationSlotsUsed
{
  v2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [v2 integerForKey:@"ShortcutComplicationSlotsUsed"];

  return v3 & (v3 >> 63);
}

+ (void)setAppComplicationSlotsUsed:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [v4 setInteger:a3 forKey:@"AppComplicationSlotsUsed"];
}

+ (unint64_t)appComplicationSlotsUsed
{
  v2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [v2 integerForKey:@"AppComplicationSlotsUsed"];

  return v3 & (v3 >> 63);
}

@end