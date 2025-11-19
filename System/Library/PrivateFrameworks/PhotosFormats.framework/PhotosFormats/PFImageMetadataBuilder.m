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
- (void)setAccessibilityDescription:(id)a3;
- (void)setCaption:(id)a3;
- (void)setCreationDate:(id)a3 timeZone:(id)a4;
- (void)setKeywords:(id)a3;
- (void)setPeopleNames:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PFImageMetadataBuilder

- (NSDictionary)tiffDictionary
{
  v2 = [(PFImageMetadataBuilder *)self tiffMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)exifDictionary
{
  v2 = [(PFImageMetadataBuilder *)self exifMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSDictionary)iptcDictionary
{
  v2 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (void)setPeopleNames:(id)a3
{
  v4 = [a3 copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setPeopleNames:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  v5 = [(PFMetadataBuilder *)&v7 peopleNames];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DDC0]];
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = [a3 copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setAccessibilityDescription:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  v5 = [(PFMetadataBuilder *)&v7 accessibilityDescription];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DDA8]];
}

- (void)setKeywords:(id)a3
{
  v4 = [a3 copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setKeywords:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  v5 = [(PFMetadataBuilder *)&v7 keywords];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DDD0]];
}

- (void)setCaption:(id)a3
{
  v4 = [a3 copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setCaption:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  v5 = [(PFMetadataBuilder *)&v7 caption];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DD68]];
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  v8.receiver = self;
  v8.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v8 setTitle:v4];

  v7.receiver = self;
  v7.super_class = PFImageMetadataBuilder;
  v5 = [(PFMetadataBuilder *)&v7 title];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DDD8]];
}

- (void)_updateCreationDate
{
  v19 = [objc_opt_class() iptcDateFormatter];
  v3 = [objc_opt_class() iptcTimeFormatter];
  v4 = [(PFMetadataBuilder *)self creationTimeZone];
  v5 = [(PFMetadataBuilder *)self creationDate];
  [v19 setTimeZone:v4];
  [v3 setTimeZone:v4];
  v6 = [(PFImageMetadataBuilder *)self iptcMutableDictionary];
  v7 = [v19 stringFromDate:v5];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696DD88]];

  v18 = v3;
  v8 = [v3 stringFromDate:v5];
  v17 = v6;
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DDE0]];

  v9 = [objc_opt_class() _exifDateTimeFormatter];
  v10 = [objc_opt_class() _exifSubsecTimeFormatter];
  v11 = [objc_opt_class() _exifTimeZoneOffsetFormatter];
  [v9 setTimeZone:v4];
  [v10 setTimeZone:v4];
  [v11 setTimeZone:v4];
  v12 = [(PFImageMetadataBuilder *)self exifMutableDictionary];
  v13 = [v9 stringFromDate:v5];
  v14 = [v10 stringFromDate:v5];
  v15 = [v11 stringFromDate:v5];
  if (![v4 secondsFromGMT])
  {

    v15 = @"+00:00";
  }

  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D998]];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB28]];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DAA0]];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696D990]];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB20]];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DA90]];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DB18]];
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DA88]];
  v16 = [(PFImageMetadataBuilder *)self tiffMutableDictionary];
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696DF20]];
}

- (void)setCreationDate:(id)a3 timeZone:(id)a4
{
  v5.receiver = self;
  v5.super_class = PFImageMetadataBuilder;
  [(PFMetadataBuilder *)&v5 setCreationDate:a3 timeZone:a4];
  [(PFImageMetadataBuilder *)self _updateCreationDate];
}

- (PFImageMetadataBuilder)init
{
  v10.receiver = self;
  v10.super_class = PFImageMetadataBuilder;
  v2 = [(PFMetadataBuilder *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    iptcMutableDictionary = v2->_iptcMutableDictionary;
    v2->_iptcMutableDictionary = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    exifMutableDictionary = v2->_exifMutableDictionary;
    v2->_exifMutableDictionary = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    tiffMutableDictionary = v2->_tiffMutableDictionary;
    v2->_tiffMutableDictionary = v7;
  }

  return v2;
}

+ (id)_gpsDateFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PFImageMetadataBuilder__gpsDateFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  block[4] = a1;
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