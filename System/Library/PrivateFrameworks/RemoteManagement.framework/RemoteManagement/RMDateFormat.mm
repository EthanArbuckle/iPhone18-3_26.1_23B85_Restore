@interface RMDateFormat
+ (id)_isoLocalTimeZoneDateFormatter;
+ (id)_isoLocalTimeZoneFractionalSecondsDateFormatter;
+ (id)_isoUTCDateFormatter;
+ (id)_isoUTCFractionalSecondsDateFormatter;
+ (id)dateWithStringLocalTimeZone:(id)zone;
+ (id)dateWithStringLocalTimeZoneFractionalSeconds:(id)seconds;
+ (id)dateWithStringUTC:(id)c;
+ (id)dateWithStringUTCFractionalSeconds:(id)seconds;
+ (id)stringLocalTimeZoneFractionalSecondsWithDate:(id)date;
+ (id)stringLocalTimeZoneWithDate:(id)date;
+ (id)stringUTCFractionalSecondsWithDate:(id)date;
+ (id)stringUTCWithDate:(id)date;
@end

@implementation RMDateFormat

+ (id)stringUTCWithDate:(id)date
{
  dateCopy = date;
  _isoUTCDateFormatter = [self _isoUTCDateFormatter];
  v6 = _isoUTCDateFormatter;
  if (dateCopy)
  {
    v7 = [_isoUTCDateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringUTCFractionalSecondsWithDate:(id)date
{
  dateCopy = date;
  _isoUTCFractionalSecondsDateFormatter = [self _isoUTCFractionalSecondsDateFormatter];
  v6 = _isoUTCFractionalSecondsDateFormatter;
  if (dateCopy)
  {
    v7 = [_isoUTCFractionalSecondsDateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringLocalTimeZoneWithDate:(id)date
{
  dateCopy = date;
  _isoLocalTimeZoneDateFormatter = [self _isoLocalTimeZoneDateFormatter];
  v6 = _isoLocalTimeZoneDateFormatter;
  if (dateCopy)
  {
    v7 = [_isoLocalTimeZoneDateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringLocalTimeZoneFractionalSecondsWithDate:(id)date
{
  dateCopy = date;
  _isoLocalTimeZoneFractionalSecondsDateFormatter = [self _isoLocalTimeZoneFractionalSecondsDateFormatter];
  v6 = _isoLocalTimeZoneFractionalSecondsDateFormatter;
  if (dateCopy)
  {
    v7 = [_isoLocalTimeZoneFractionalSecondsDateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)dateWithStringUTC:(id)c
{
  cCopy = c;
  _isoUTCDateFormatter = [self _isoUTCDateFormatter];
  v6 = [_isoUTCDateFormatter dateFromString:cCopy];

  return v6;
}

+ (id)dateWithStringUTCFractionalSeconds:(id)seconds
{
  secondsCopy = seconds;
  _isoUTCFractionalSecondsDateFormatter = [self _isoUTCFractionalSecondsDateFormatter];
  v6 = [_isoUTCFractionalSecondsDateFormatter dateFromString:secondsCopy];

  return v6;
}

+ (id)dateWithStringLocalTimeZone:(id)zone
{
  zoneCopy = zone;
  _isoLocalTimeZoneDateFormatter = [self _isoLocalTimeZoneDateFormatter];
  v6 = [_isoLocalTimeZoneDateFormatter dateFromString:zoneCopy];

  return v6;
}

+ (id)dateWithStringLocalTimeZoneFractionalSeconds:(id)seconds
{
  secondsCopy = seconds;
  _isoLocalTimeZoneFractionalSecondsDateFormatter = [self _isoLocalTimeZoneFractionalSecondsDateFormatter];
  v6 = [_isoLocalTimeZoneFractionalSecondsDateFormatter dateFromString:secondsCopy];

  return v6;
}

+ (id)_isoUTCDateFormatter
{
  if (_isoUTCDateFormatter_onceToken != -1)
  {
    +[RMDateFormat _isoUTCDateFormatter];
  }

  v3 = _isoUTCDateFormatter_dateFormatter;

  return v3;
}

uint64_t __36__RMDateFormat__isoUTCDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _isoUTCDateFormatter_dateFormatter;
  _isoUTCDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_isoUTCDateFormatter_dateFormatter setTimeZone:v2];

  v3 = _isoUTCDateFormatter_dateFormatter;

  return [v3 setFormatOptions:1907];
}

+ (id)_isoUTCFractionalSecondsDateFormatter
{
  if (_isoUTCFractionalSecondsDateFormatter_onceToken != -1)
  {
    +[RMDateFormat _isoUTCFractionalSecondsDateFormatter];
  }

  v3 = _isoUTCFractionalSecondsDateFormatter_dateFormatter;

  return v3;
}

uint64_t __53__RMDateFormat__isoUTCFractionalSecondsDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _isoUTCFractionalSecondsDateFormatter_dateFormatter;
  _isoUTCFractionalSecondsDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_isoUTCFractionalSecondsDateFormatter_dateFormatter setTimeZone:v2];

  v3 = _isoUTCFractionalSecondsDateFormatter_dateFormatter;

  return [v3 setFormatOptions:3955];
}

+ (id)_isoLocalTimeZoneDateFormatter
{
  if (_isoLocalTimeZoneDateFormatter_onceToken != -1)
  {
    +[RMDateFormat _isoLocalTimeZoneDateFormatter];
  }

  v3 = _isoLocalTimeZoneDateFormatter_dateFormatter;

  return v3;
}

uint64_t __46__RMDateFormat__isoLocalTimeZoneDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _isoLocalTimeZoneDateFormatter_dateFormatter;
  _isoLocalTimeZoneDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [_isoLocalTimeZoneDateFormatter_dateFormatter setTimeZone:v2];

  v3 = _isoLocalTimeZoneDateFormatter_dateFormatter;

  return [v3 setFormatOptions:1907];
}

+ (id)_isoLocalTimeZoneFractionalSecondsDateFormatter
{
  if (_isoLocalTimeZoneFractionalSecondsDateFormatter_onceToken != -1)
  {
    +[RMDateFormat _isoLocalTimeZoneFractionalSecondsDateFormatter];
  }

  v3 = _isoLocalTimeZoneFractionalSecondsDateFormatter_dateFormatter;

  return v3;
}

uint64_t __63__RMDateFormat__isoLocalTimeZoneFractionalSecondsDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _isoLocalTimeZoneFractionalSecondsDateFormatter_dateFormatter;
  _isoLocalTimeZoneFractionalSecondsDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [_isoLocalTimeZoneFractionalSecondsDateFormatter_dateFormatter setTimeZone:v2];

  v3 = _isoLocalTimeZoneFractionalSecondsDateFormatter_dateFormatter;

  return [v3 setFormatOptions:3955];
}

@end