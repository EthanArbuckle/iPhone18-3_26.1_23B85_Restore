@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_VK__vk_localDateWithSeconds__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_localDateWithSeconds_localFormatter;
  vk_localDateWithSeconds_localFormatter = v0;

  [vk_localDateWithSeconds_localFormatter setTimeStyle:3];
  v2 = vk_localDateWithSeconds_localFormatter;

  return [v2 setDateStyle:1];
}

uint64_t __35__NSDate_VK__vk_shortFormattedDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_shortFormattedDate_shortRelativeformatter;
  vk_shortFormattedDate_shortRelativeformatter = v0;

  [vk_shortFormattedDate_shortRelativeformatter setTimeStyle:1];
  [vk_shortFormattedDate_shortRelativeformatter setDateStyle:1];
  v2 = vk_shortFormattedDate_shortRelativeformatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t __35__NSDate_VK__vk_shortFormattedDate__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_shortFormattedDate_shortStandardformatter;
  vk_shortFormattedDate_shortStandardformatter = v0;

  [vk_shortFormattedDate_shortStandardformatter setTimeStyle:1];
  v2 = vk_shortFormattedDate_shortStandardformatter;

  return [v2 setDateStyle:1];
}

uint64_t __36__NSDate_VK__vk_briefFormattedDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_briefFormattedDate__briefTodayFormatter;
  vk_briefFormattedDate__briefTodayFormatter = v0;

  [vk_briefFormattedDate__briefTodayFormatter setTimeStyle:1];
  v2 = vk_briefFormattedDate__briefTodayFormatter;

  return [v2 setDateStyle:0];
}

void __36__NSDate_VK__vk_briefFormattedDate___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_briefFormattedDate__templateFormatter;
  vk_briefFormattedDate__templateFormatter = v0;

  v2 = vk_briefFormattedDate__templateFormatter;
  v3 = MEMORY[0x1E696AB78];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 dateFormatFromTemplate:@"cccc" options:0 locale:v5];
  [v2 setDateFormat:v4];
}

uint64_t __36__NSDate_VK__vk_briefFormattedDate___block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_briefFormattedDate__accessibilityDateFormatter;
  vk_briefFormattedDate__accessibilityDateFormatter = v0;

  [vk_briefFormattedDate__accessibilityDateFormatter setDateStyle:3];
  [vk_briefFormattedDate__accessibilityDateFormatter setTimeStyle:0];
  v2 = vk_briefFormattedDate__accessibilityDateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t __36__NSDate_VK__vk_briefFormattedDate___block_invoke_4()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = vk_briefFormattedDate__briefRelativeFormatter;
  vk_briefFormattedDate__briefRelativeFormatter = v0;

  [vk_briefFormattedDate__briefRelativeFormatter setTimeStyle:0];
  [vk_briefFormattedDate__briefRelativeFormatter setDateStyle:1];
  v2 = vk_briefFormattedDate__briefRelativeFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

@end