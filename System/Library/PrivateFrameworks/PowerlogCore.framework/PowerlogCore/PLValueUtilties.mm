@interface PLValueUtilties
+ (BOOL)isFormater:(signed __int16)formater validForObject:(id)object;
+ (BOOL)isNil:(id)nil;
+ (id)formattedStringForDate:(id)date;
+ (int64_t)compare:(id)compare with:(id)with;
+ (signed)formatterFromDataType:(id)type;
+ (void)resetTimestampFormaterTimezone;
@end

@implementation PLValueUtilties

+ (id)formattedStringForDate:(id)date
{
  dateCopy = date;
  objc_sync_enter(@"kSharedTimestampFormater");
  v4 = timestampFormatter;
  if (!timestampFormatter)
  {
    +[PLValueUtilties resetTimestampFormaterTimezone];
    v4 = timestampFormatter;
  }

  v5 = [v4 stringFromDate:dateCopy];
  objc_sync_exit(@"kSharedTimestampFormater");

  return v5;
}

+ (signed)formatterFromDataType:(id)type
{
  v3 = formatterFromDataType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    +[PLValueUtilties formatterFromDataType:];
  }

  v5 = [formatterFromDataType__PPSPBDatatypeToPLVFormater objectForKeyedSubscript:typeCopy];

  shortValue = [v5 shortValue];
  return shortValue;
}

void __41__PLValueUtilties_formatterFromDataType___block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F540A080;
  v3[1] = &unk_1F540A0B0;
  v4[0] = &unk_1F540A098;
  v4[1] = &unk_1F540A0C8;
  v3[2] = &unk_1F540A0E0;
  v3[3] = &unk_1F540A110;
  v4[2] = &unk_1F540A0F8;
  v4[3] = &unk_1F540A128;
  v3[4] = &unk_1F540A140;
  v3[5] = &unk_1F540A170;
  v4[4] = &unk_1F540A158;
  v4[5] = &unk_1F540A188;
  v3[6] = &unk_1F540A1A0;
  v3[7] = &unk_1F540A1D0;
  v4[6] = &unk_1F540A1B8;
  v4[7] = &unk_1F540A1E8;
  v3[8] = &unk_1F540A200;
  v4[8] = &unk_1F540A218;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = formatterFromDataType__PPSPBDatatypeToPLVFormater;
  formatterFromDataType__PPSPBDatatypeToPLVFormater = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (void)resetTimestampFormaterTimezone
{
  objc_sync_enter(@"kSharedTimestampFormater");
  v2 = objc_opt_new();
  v3 = timestampFormatter;
  timestampFormatter = v2;

  v4 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [timestampFormatter setLocale:v4];
  v5 = timestampFormatter;
  v6 = [v4 objectForKey:*MEMORY[0x1E695D958]];
  [v5 setCalendar:v6];

  v7 = timestampFormatter;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v7 setTimeZone:systemTimeZone];

  [timestampFormatter setDateFormat:@"MM/dd/yy HH:mm:ss.SSS"];

  objc_sync_exit(@"kSharedTimestampFormater");
}

+ (BOOL)isFormater:(signed __int16)formater validForObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_5;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (null == objectCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (formater <= 3u)
    {
      if (formater <= 2u)
      {
LABEL_15:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
LABEL_17:
        v7 = isKindOfClass;
        goto LABEL_6;
      }
    }

    else if (formater >= 8u)
    {
      if (formater != 8)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    isKindOfClass = objc_opt_respondsToSelector();
    goto LABEL_17;
  }

  if (formater - 3 >= 5)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v7 = 1;
LABEL_6:

  return v7 & 1;
}

+ (int64_t)compare:(id)compare with:(id)with
{
  compareCopy = compare;
  withCopy = with;
  if (![PLValueUtilties isNil:compareCopy]&& ![PLValueUtilties isNil:withCopy]&& ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0))
  {
    v7 = [compareCopy compare:withCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)isNil:(id)nil
{
  if (!nil)
  {
    return 1;
  }

  v3 = MEMORY[0x1E695DFB0];
  nilCopy = nil;
  null = [v3 null];
  v6 = null == nilCopy;

  return v6;
}

@end