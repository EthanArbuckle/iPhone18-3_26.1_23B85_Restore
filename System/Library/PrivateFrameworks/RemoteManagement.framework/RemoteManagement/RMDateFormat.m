@interface RMDateFormat
+ (id)_isoLocalTimeZoneDateFormatter;
+ (id)_isoLocalTimeZoneFractionalSecondsDateFormatter;
+ (id)_isoUTCDateFormatter;
+ (id)_isoUTCFractionalSecondsDateFormatter;
+ (id)dateWithStringLocalTimeZone:(id)a3;
+ (id)dateWithStringLocalTimeZoneFractionalSeconds:(id)a3;
+ (id)dateWithStringUTC:(id)a3;
+ (id)dateWithStringUTCFractionalSeconds:(id)a3;
+ (id)stringLocalTimeZoneFractionalSecondsWithDate:(id)a3;
+ (id)stringLocalTimeZoneWithDate:(id)a3;
+ (id)stringUTCFractionalSecondsWithDate:(id)a3;
+ (id)stringUTCWithDate:(id)a3;
@end

@implementation RMDateFormat

+ (id)stringUTCWithDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoUTCDateFormatter];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 stringFromDate:v4];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringUTCFractionalSecondsWithDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoUTCFractionalSecondsDateFormatter];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 stringFromDate:v4];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringLocalTimeZoneWithDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoLocalTimeZoneDateFormatter];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 stringFromDate:v4];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)stringLocalTimeZoneFractionalSecondsWithDate:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoLocalTimeZoneFractionalSecondsDateFormatter];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 stringFromDate:v4];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] now];
    v7 = [v6 stringFromDate:v8];
  }

  return v7;
}

+ (id)dateWithStringUTC:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoUTCDateFormatter];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)dateWithStringUTCFractionalSeconds:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoUTCFractionalSecondsDateFormatter];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)dateWithStringLocalTimeZone:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoLocalTimeZoneDateFormatter];
  v6 = [v5 dateFromString:v4];

  return v6;
}

+ (id)dateWithStringLocalTimeZoneFractionalSeconds:(id)a3
{
  v4 = a3;
  v5 = [a1 _isoLocalTimeZoneFractionalSecondsDateFormatter];
  v6 = [v5 dateFromString:v4];

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