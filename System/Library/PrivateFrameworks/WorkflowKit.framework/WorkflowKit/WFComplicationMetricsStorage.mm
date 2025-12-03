@interface WFComplicationMetricsStorage
+ (unint64_t)appComplicationSlotsUsed;
+ (unint64_t)shortcutComplicationSlotsUsed;
+ (void)setAppComplicationSlotsUsed:(unint64_t)used;
+ (void)setShortcutComplicationSlotsUsed:(unint64_t)used;
@end

@implementation WFComplicationMetricsStorage

+ (void)setShortcutComplicationSlotsUsed:(unint64_t)used
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setInteger:used forKey:@"ShortcutComplicationSlotsUsed"];
}

+ (unint64_t)shortcutComplicationSlotsUsed
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults integerForKey:@"ShortcutComplicationSlotsUsed"];

  return v3 & (v3 >> 63);
}

+ (void)setAppComplicationSlotsUsed:(unint64_t)used
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setInteger:used forKey:@"AppComplicationSlotsUsed"];
}

+ (unint64_t)appComplicationSlotsUsed
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [systemShortcutsUserDefaults integerForKey:@"AppComplicationSlotsUsed"];

  return v3 & (v3 >> 63);
}

@end