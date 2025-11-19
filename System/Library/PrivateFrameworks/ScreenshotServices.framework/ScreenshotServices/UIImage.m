@interface UIImage
@end

@implementation UIImage

uint64_t __45__UIImage_SSImageSurface__ss_imageProperties__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = ss_imageProperties_exifDateTimeFormatter;
  ss_imageProperties_exifDateTimeFormatter = v0;

  v2 = ss_imageProperties_exifDateTimeFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = ss_imageProperties_exifDateTimeFormatter;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v6];

  v7 = ss_imageProperties_exifDateTimeFormatter;

  return [v7 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
}

@end