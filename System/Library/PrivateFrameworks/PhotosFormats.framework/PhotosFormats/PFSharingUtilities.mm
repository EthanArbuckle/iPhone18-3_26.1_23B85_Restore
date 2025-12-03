@interface PFSharingUtilities
+ (id)_dateFormatterTemplate;
+ (id)_exifDateTimeFormatter;
+ (id)_exifSubsecTimeFormatter;
+ (id)_gpsDateFormatter;
+ (id)_gpsTimeFormatter;
+ (id)addAccessibilityDescription:(id)description toAVMetadata:(id)metadata;
+ (id)addCreationDate:(id)date toExifDictionary:(id)dictionary;
+ (id)addCreationDate:(id)date toTIFFDictionary:(id)dictionary;
+ (id)addCustomDate:(id)date toAVMetadata:(id)metadata;
+ (id)addCustomLocation:(id)location toAVMetadata:(id)metadata;
+ (id)addDescription:(id)description toAVMetadata:(id)metadata;
+ (id)exifDateTimeFromDate:(id)date;
+ (id)exifSubsecTimeFromDate:(id)date;
+ (id)gpsDictionaryForLocation:(id)location;
+ (id)setString:(id)string forKey:(id)key inKeySpace:(id)space inAVMetadata:(id)metadata;
@end

@implementation PFSharingUtilities

+ (id)addCreationDate:(id)date toTIFFDictionary:(id)dictionary
{
  dateCopy = date;
  dictionary = [dictionary mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = [objc_opt_class() exifDateTimeFromDate:dateCopy];

  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696DF20]];

  return dictionary;
}

+ (id)addCreationDate:(id)date toExifDictionary:(id)dictionary
{
  dateCopy = date;
  dictionary = [dictionary mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = [objc_opt_class() exifDateTimeFromDate:dateCopy];
  v8 = [objc_opt_class() exifSubsecTimeFromDate:dateCopy];

  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D998]];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DB28]];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D990]];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DB20]];

  return dictionary;
}

+ (id)exifSubsecTimeFromDate:(id)date
{
  dateCopy = date;
  _exifSubsecTimeFormatter = [objc_opt_class() _exifSubsecTimeFormatter];
  v5 = [_exifSubsecTimeFormatter stringFromDate:dateCopy];

  return v5;
}

+ (id)exifDateTimeFromDate:(id)date
{
  dateCopy = date;
  _exifDateTimeFormatter = [objc_opt_class() _exifDateTimeFormatter];
  v5 = [_exifDateTimeFormatter stringFromDate:dateCopy];

  return v5;
}

+ (id)_exifSubsecTimeFormatter
{
  if (_exifSubsecTimeFormatter_onceToken_5813 != -1)
  {
    dispatch_once(&_exifSubsecTimeFormatter_onceToken_5813, &__block_literal_global_56);
  }

  v3 = _exifSubsecTimeFormatter_subsecTimeFormatter_5814;

  return v3;
}

void __46__PFSharingUtilities__exifSubsecTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _exifSubsecTimeFormatter_subsecTimeFormatter_5814;
  _exifSubsecTimeFormatter_subsecTimeFormatter_5814 = v0;

  [_exifSubsecTimeFormatter_subsecTimeFormatter_5814 setTimeStyle:0];
  [_exifSubsecTimeFormatter_subsecTimeFormatter_5814 setDateStyle:0];
  [_exifSubsecTimeFormatter_subsecTimeFormatter_5814 setDateFormat:@"SSS"];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [_exifSubsecTimeFormatter_subsecTimeFormatter_5814 setLocale:v2];

  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US"];
  [_exifSubsecTimeFormatter_subsecTimeFormatter_5814 setCalendar:v3];
}

+ (id)_exifDateTimeFormatter
{
  if (_exifDateTimeFormatter_onceToken_5826 != -1)
  {
    dispatch_once(&_exifDateTimeFormatter_onceToken_5826, &__block_literal_global_5827);
  }

  v3 = _exifDateTimeFormatter_dateTimeFormatter_5828;

  return v3;
}

void __44__PFSharingUtilities__exifDateTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _exifDateTimeFormatter_dateTimeFormatter_5828;
  _exifDateTimeFormatter_dateTimeFormatter_5828 = v0;

  [_exifDateTimeFormatter_dateTimeFormatter_5828 setTimeStyle:0];
  [_exifDateTimeFormatter_dateTimeFormatter_5828 setDateStyle:0];
  [_exifDateTimeFormatter_dateTimeFormatter_5828 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [_exifDateTimeFormatter_dateTimeFormatter_5828 setLocale:v2];

  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:@"en_US"];
  [_exifDateTimeFormatter_dateTimeFormatter_5828 setCalendar:v3];
}

+ (id)gpsDictionaryForLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy && ([locationCopy coordinate], CLLocationCoordinate2DIsValid(v33)))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [v5 coordinate];
    v8 = v7;
    [v5 coordinate];
    if (v8 >= 0.0)
    {
      v10 = @"N";
    }

    else
    {
      v10 = @"S";
    }

    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    v11 = -v9;
    if (v9 >= 0.0)
    {
      v12 = @"E";
    }

    else
    {
      v12 = @"W";
    }

    if (v9 >= 0.0)
    {
      v11 = v9;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696DC28]];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x1E696DC18]];

    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E696DC20]];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E696DC30]];
    timestamp = [v5 timestamp];
    if (timestamp)
    {
      _gpsTimeFormatter = [self _gpsTimeFormatter];
      v17 = [_gpsTimeFormatter stringFromDate:timestamp];

      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E696DC70]];
      _gpsDateFormatter = [self _gpsDateFormatter];
      v19 = [_gpsDateFormatter stringFromDate:timestamp];

      [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x1E696DBA8]];
    }

    [v5 verticalAccuracy];
    if (v20 >= 0.0)
    {
      [v5 altitude];
      v22 = v21 < 0.0;
      v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x1E696DB88]];

      v24 = [MEMORY[0x1E696AD98] numberWithInt:v22];
      [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x1E696DB90]];
    }

    [v5 horizontalAccuracy];
    if (v25 >= 0.0)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [dictionary setObject:v26 forKeyedSubscript:*MEMORY[0x1E696DC00]];
    }

    [v5 speed];
    if (v27 >= 0.0)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27 * 3.6];
      [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x1E696DC58]];

      [dictionary setObject:@"K" forKeyedSubscript:*MEMORY[0x1E696DC60]];
    }

    [v5 course];
    if (v29 >= 0.0)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x1E696DC08]];

      [dictionary setObject:@"T" forKeyedSubscript:*MEMORY[0x1E696DC10]];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)_gpsDateFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PFSharingUtilities__gpsDateFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_gpsDateFormatter_onceToken_5849 != -1)
  {
    dispatch_once(&_gpsDateFormatter_onceToken_5849, block);
  }

  v2 = _gpsDateFormatter_dateFormatter_5850;

  return v2;
}

uint64_t __39__PFSharingUtilities__gpsDateFormatter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _dateFormatterTemplate];
  v2 = _gpsDateFormatter_dateFormatter_5850;
  _gpsDateFormatter_dateFormatter_5850 = v1;

  v3 = _gpsDateFormatter_dateFormatter_5850;

  return [v3 setDateFormat:@"yyyy:MM:dd"];
}

+ (id)_gpsTimeFormatter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PFSharingUtilities__gpsTimeFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_gpsTimeFormatter_onceToken_5854 != -1)
  {
    dispatch_once(&_gpsTimeFormatter_onceToken_5854, block);
  }

  v2 = _gpsTimeFormatter_timeFormatter_5855;

  return v2;
}

uint64_t __39__PFSharingUtilities__gpsTimeFormatter__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _dateFormatterTemplate];
  v2 = _gpsTimeFormatter_timeFormatter_5855;
  _gpsTimeFormatter_timeFormatter_5855 = v1;

  v3 = _gpsTimeFormatter_timeFormatter_5855;

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

+ (id)addCustomLocation:(id)location toAVMetadata:(id)metadata
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v21 = locationCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adding custom location to video: %{private}@", buf, 0xCu);
  }

  v19 = locationCopy;
  v7 = [metadataCopy mutableCopy];
  v8 = *MEMORY[0x1E6987698];
  v9 = *MEMORY[0x1E6987838];
  v10 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:metadataCopy withKey:*MEMORY[0x1E6987698] keySpace:*MEMORY[0x1E6987838]];
  if ([v10 count])
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E9C10];
    do
    {
      v13 = [v10 objectAtIndexedSubscript:v11];
      [v7 removeObject:v13];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v10 objectAtIndexedSubscript:v11];
        *buf = 138477827;
        v21 = v14;
        _os_log_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_DEFAULT, "Removing existing metadata location: %{private}@", buf, 0xCu);
      }

      ++v11;
    }

    while ([v10 count] > v11);
  }

  iso6709Notation = [v19 iso6709Notation];
  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setKeySpace:v9];
  [metadataItem setKey:v8];
  [metadataItem setValue:iso6709Notation];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [metadataItem setLocale:currentLocale];

  [v7 addObject:metadataItem];

  return v7;
}

+ (id)addCustomDate:(id)date toAVMetadata:(id)metadata
{
  v20 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = dateCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adding custom date to video: %{private}@", buf, 0xCu);
  }

  v17 = dateCopy;
  v7 = [metadataCopy mutableCopy];
  v8 = *MEMORY[0x1E6987688];
  v9 = *MEMORY[0x1E6987838];
  v10 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:metadataCopy withKey:*MEMORY[0x1E6987688] keySpace:*MEMORY[0x1E6987838]];
  if ([v10 count])
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E9C10];
    do
    {
      v13 = [v10 objectAtIndexedSubscript:v11];
      [v7 removeObject:v13];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v10 objectAtIndexedSubscript:v11];
        *buf = 138477827;
        v19 = v14;
        _os_log_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_DEFAULT, "Removing existing metadata creation date: %{private}@", buf, 0xCu);
      }

      ++v11;
    }

    while ([v10 count] > v11);
  }

  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setKeySpace:v9];
  [metadataItem setKey:v8];
  [metadataItem setValue:v17];
  [v7 addObject:metadataItem];

  return v7;
}

+ (id)setString:(id)string forKey:(id)key inKeySpace:(id)space inAVMetadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keyCopy = key;
  spaceCopy = space;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412803;
    v24 = spaceCopy;
    v25 = 2112;
    v26 = keyCopy;
    v27 = 2113;
    v28 = stringCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Setting '%@''s '%@' to '%{private}@' to video", buf, 0x20u);
  }

  v22 = stringCopy;
  v13 = [metadataCopy mutableCopy];
  v14 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:metadataCopy withKey:keyCopy keySpace:spaceCopy];
  if ([v14 count])
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E9C10];
    do
    {
      v17 = [v14 objectAtIndexedSubscript:v15];
      [v13 removeObject:v17];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v14 objectAtIndexedSubscript:v15];
        *buf = 138412547;
        v24 = keyCopy;
        v25 = 2113;
        v26 = v18;
        _os_log_impl(&dword_1B35C1000, v16, OS_LOG_TYPE_DEFAULT, "Removing existing metadata '%@': %{private}@", buf, 0x16u);
      }

      ++v15;
    }

    while ([v14 count] > v15);
  }

  metadataItem = [MEMORY[0x1E6988050] metadataItem];
  [metadataItem setKeySpace:spaceCopy];
  [metadataItem setKey:keyCopy];
  [metadataItem setValue:v22];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [metadataItem setLocale:currentLocale];

  [v13 addObject:metadataItem];

  return v13;
}

+ (id)addDescription:(id)description toAVMetadata:(id)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = descriptionCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adding description label to video: %{private}@", &v9, 0xCu);
  }

  v7 = [PFSharingUtilities setString:descriptionCopy forKey:*MEMORY[0x1E6987690] inKeySpace:*MEMORY[0x1E6987838] inAVMetadata:metadataCopy];

  return v7;
}

+ (id)addAccessibilityDescription:(id)description toAVMetadata:(id)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = descriptionCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Adding custom accessibility label to video: %{private}@", &v9, 0xCu);
  }

  v7 = [PFSharingUtilities setString:descriptionCopy forKey:*MEMORY[0x1E6987670] inKeySpace:*MEMORY[0x1E6987838] inAVMetadata:metadataCopy];

  return v7;
}

@end