@interface PFImageMetadataBuilder
+ (id)_dateFormatterTemplate;
+ (id)_exifDateTimeFormatter;
+ (id)_exifSubsecTimeFormatter;
+ (id)_exifTimeZoneOffsetFormatter;
+ (id)_gpsDateFormatter;
+ (id)_gpsTimeFormatter;
+ (id)iptcDateFormatter;
+ (id)iptcTimeFormatter;
- (NSDictionary)exifDictionary;
- (NSDictionary)iptcDictionary;
- (NSDictionary)tiffDictionary;
- (PFImageMetadataBuilder)init;
- (void)_updateCreationDate;
- (void)setAccessibilityDescription:(id)description;
- (void)setCaption:(id)caption;
- (void)setCreationDate:(id)date timeZone:(id)zone;
- (void)setKeywords:(id)keywords;
- (void)setPeopleNames:(id)names;
- (void)setTitle:(id)title;
@end

@implementation PFImageMetadataBuilder

- (NSDictionary)tiffDictionary
{
  tiffMutableDictionary = [(PFImageMetadataBuilder *)self tiffMutableDictionary];
  v3 = [tiffMutableDictionary copy];

  return v3;
}

- (NSDictionary)exifDictionary
{
  exifMutableDictionary = [(PFImageMetadataBuilder *)self exifMutableDictionary];
  v3 = [exifMutableDictionary copy];

  return v3;
}

- (NSDictionary)iptcDictionary
{
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  v3 = [iptcMutableDictionary copy];

  return v3;
}

- (void)setPeopleNames:(id)names
{
  v4 = [names copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setPeopleNames:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  peopleNames = [(PFMetadataBuilder *)&v7 peopleNames];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [iptcMutableDictionary setObject:peopleNames forKeyedSubscript:*MEMORY[0x1E696DDC0]];
}

- (void)setAccessibilityDescription:(id)description
{
  v4 = [description copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setAccessibilityDescription:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  accessibilityDescription = [(PFMetadataBuilder *)&v7 accessibilityDescription];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [iptcMutableDictionary setObject:accessibilityDescription forKeyedSubscript:*MEMORY[0x1E696DDA8]];
}

- (void)setKeywords:(id)keywords
{
  v4 = [keywords copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setKeywords:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  keywords = [(PFMetadataBuilder *)&v7 keywords];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [iptcMutableDictionary setObject:keywords forKeyedSubscript:*MEMORY[0x1E696DDD0]];
}

- (void)setCaption:(id)caption
{
  v4 = [caption copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setCaption:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  caption = [(PFMetadataBuilder *)&v7 caption];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [iptcMutableDictionary setObject:caption forKeyedSubscript:*MEMORY[0x1E696DD68]];
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setTitle:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  title = [(PFMetadataBuilder *)&v7 title];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [iptcMutableDictionary setObject:title forKeyedSubscript:*MEMORY[0x1E696DDD8]];
}

- (void)_updateCreationDate
{
  iptcDateFormatter = [objc_opt_class() iptcDateFormatter];
  iptcTimeFormatter = [objc_opt_class() iptcTimeFormatter];
  creationTimeZone = [(PFMetadataBuilder *)self creationTimeZone];
  creationDate = [(PFMetadataBuilder *)self creationDate];
  [iptcDateFormatter setTimeZone:creationTimeZone];
  [iptcTimeFormatter setTimeZone:creationTimeZone];
  iptcMutableDictionary = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  v7 = [iptcDateFormatter stringFromDate:creationDate];
  [iptcMutableDictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696DD88]];

  v18 = iptcTimeFormatter;
  v8 = [iptcTimeFormatter stringFromDate:creationDate];
  v17 = iptcMutableDictionary;
  [iptcMutableDictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DDE0]];

  _exifDateTimeFormatter = [objc_opt_class() _exifDateTimeFormatter];
  _exifSubsecTimeFormatter = [objc_opt_class() _exifSubsecTimeFormatter];
  _exifTimeZoneOffsetFormatter = [objc_opt_class() _exifTimeZoneOffsetFormatter];
  [_exifDateTimeFormatter setTimeZone:creationTimeZone];
  [_exifSubsecTimeFormatter setTimeZone:creationTimeZone];
  [_exifTimeZoneOffsetFormatter setTimeZone:creationTimeZone];
  exifMutableDictionary = [(PFImageMetadataBuilder *)self exifMutableDictionary];
  v13 = [_exifDateTimeFormatter stringFromDate:creationDate];
  v14 = [_exifSubsecTimeFormatter stringFromDate:creationDate];
  v15 = [_exifTimeZoneOffsetFormatter stringFromDate:creationDate];
  if (![creationTimeZone secondsFromGMT])
  {

    v15 = @"+00:00";
  }

  [exifMutableDictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D998]];
  [exifMutableDictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB28]];
  [exifMutableDictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DAA0]];
  [exifMutableDictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D990]];
  [exifMutableDictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB20]];
  [exifMutableDictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DA90]];
  [exifMutableDictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB18]];
  [exifMutableDictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DA88]];
  tiffMutableDictionary = [(PFImageMetadataBuilder *)self tiffMutableDictionary];
  [tiffMutableDictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696DF20]];
}

- (void)setCreationDate:(id)date timeZone:(id)zone
{
  v5.receiver = self;
  v5.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v5 setCreationDate:date timeZone:zone];
  [(PFImageMetadataBuilder *)self _updateCreationDate];
}

- (PFImageMetadataBuilder)init
{
  v10.receiver = self;
  v10.super_class = PFImageMetadataBuilder;
  v2 = [(PFMetadataBuilder *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    iptcMutableDictionary = v2->_iptcMutableDictionary;
    v2->_iptcMutableDictionary = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    exifMutableDictionary = v2->_exifMutableDictionary;
    v2->_exifMutableDictionary = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    tiffMutableDictionary = v2->_tiffMutableDictionary;
    v2->_tiffMutableDictionary = dictionary3;
  }

  return v2;
}

+ (id)_gpsDateFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PFImageMetadataBuilder__gpsDateFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_gpsDateFormatter_onceToken != -1)
  {
    dispatch_once(&_gpsDateFormatter_onceToken, block);
  }

  v2 = _gpsDateFormatter_dateFormatter;

  return v2;
}

uint64_t __43__PFImageMetadataBuilder__gpsDateFormatter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _dateFormatterTemplate];
  v2 = _gpsDateFormatter_dateFormatter;
  _gpsDateFormatter_dateFormatter = v1;

  v3 = _gpsDateFormatter_dateFormatter;

  return [v3 setDateFormat:@"yyyy:MM:dd"];
}

+ (id)_gpsTimeFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PFImageMetadataBuilder__gpsTimeFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_gpsTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_gpsTimeFormatter_onceToken, block);
  }

  v2 = _gpsTimeFormatter_timeFormatter;

  return v2;
}

uint64_t __43__PFImageMetadataBuilder__gpsTimeFormatter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _dateFormatterTemplate];
  v2 = _gpsTimeFormatter_timeFormatter;
  _gpsTimeFormatter_timeFormatter = v1;

  v3 = _gpsTimeFormatter_timeFormatter;

  return [v3 setDateFormat:@"HH:mm:ss.SS"];
}

+ (id)_dateFormatterTemplate
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US"];
  [v2 setCalendar:v4];

  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v5];

  return v2;
}

+ (id)_exifTimeZoneOffsetFormatter
{
  if (_exifTimeZoneOffsetFormatter_onceToken != -1)
  {
    dispatch_once(&_exifTimeZoneOffsetFormatter_onceToken, &__block_literal_global_152_5630);
  }

  v3 = _exifTimeZoneOffsetFormatter_exifTimeZoneOffsetFormatter;

  return v3;
}

uint64_t __54__PFImageMetadataBuilder__exifTimeZoneOffsetFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = _exifTimeZoneOffsetFormatter_exifTimeZoneOffsetFormatter;
  _exifTimeZoneOffsetFormatter_exifTimeZoneOffsetFormatter = v0;

  v2 = _exifTimeZoneOffsetFormatter_exifTimeZoneOffsetFormatter;

  return [v2 setFormatOptions:1088];
}

+ (id)_exifSubsecTimeFormatter
{
  if (_exifSubsecTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_exifSubsecTimeFormatter_onceToken, &__block_literal_global_147_5633);
  }

  v3 = _exifSubsecTimeFormatter_subsecTimeFormatter;

  return v3;
}

void __50__PFImageMetadataBuilder__exifSubsecTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _exifSubsecTimeFormatter_subsecTimeFormatter;
  _exifSubsecTimeFormatter_subsecTimeFormatter = v0;

  [_exifSubsecTimeFormatter_subsecTimeFormatter setTimeStyle:0];
  [_exifSubsecTimeFormatter_subsecTimeFormatter setDateStyle:0];
  [_exifSubsecTimeFormatter_subsecTimeFormatter setDateFormat:@"SSS"];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [_exifSubsecTimeFormatter_subsecTimeFormatter setLocale:v2];

  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US"];
  [_exifSubsecTimeFormatter_subsecTimeFormatter setCalendar:v3];
}

+ (id)_exifDateTimeFormatter
{
  if (_exifDateTimeFormatter_onceToken != -1)
  {
    dispatch_once(&_exifDateTimeFormatter_onceToken, &__block_literal_global_133);
  }

  v3 = _exifDateTimeFormatter_dateTimeFormatter;

  return v3;
}

void __48__PFImageMetadataBuilder__exifDateTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _exifDateTimeFormatter_dateTimeFormatter;
  _exifDateTimeFormatter_dateTimeFormatter = v0;

  [_exifDateTimeFormatter_dateTimeFormatter setTimeStyle:0];
  [_exifDateTimeFormatter_dateTimeFormatter setDateStyle:0];
  [_exifDateTimeFormatter_dateTimeFormatter setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [_exifDateTimeFormatter_dateTimeFormatter setLocale:v2];

  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US"];
  [_exifDateTimeFormatter_dateTimeFormatter setCalendar:v3];
}

+ (id)iptcTimeFormatter
{
  if (iptcTimeFormatter_onceToken != -1)
  {
    dispatch_once(&iptcTimeFormatter_onceToken, &__block_literal_global_131);
  }

  v3 = iptcTimeFormatter_iptcDateFormatter;

  return v3;
}

uint64_t __43__PFImageMetadataBuilder_iptcTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = iptcTimeFormatter_iptcDateFormatter;
  iptcTimeFormatter_iptcDateFormatter = v0;

  v2 = iptcTimeFormatter_iptcDateFormatter;

  return [v2 setFormatOptions:96];
}

+ (id)iptcDateFormatter
{
  if (iptcDateFormatter_onceToken != -1)
  {
    dispatch_once(&iptcDateFormatter_onceToken, &__block_literal_global_128);
  }

  v3 = iptcDateFormatter_iptcDateFormatter;

  return v3;
}

uint64_t __43__PFImageMetadataBuilder_iptcDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = iptcDateFormatter_iptcDateFormatter;
  iptcDateFormatter_iptcDateFormatter = v0;

  v2 = iptcDateFormatter_iptcDateFormatter;

  return [v2 setFormatOptions:275];
}

@end