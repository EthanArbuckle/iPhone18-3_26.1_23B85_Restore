@interface _NCTimeFormatData
+ (id)_timeFormatDataAccessLock;
+ (id)_timeLocaleForLocale:(id)locale;
+ (id)instanceForLocale:(id)locale;
- (_NCTimeFormatData)initWithLocale:(id)locale;
@end

@implementation _NCTimeFormatData

+ (id)instanceForLocale:(id)locale
{
  localeCopy = locale;
  _timeFormatDataAccessLock = [self _timeFormatDataAccessLock];
  [_timeFormatDataAccessLock lock];
  v6 = __formatData;
  if (!__formatData)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = __formatData;
    __formatData = v7;

    v6 = __formatData;
  }

  v9 = [v6 objectForKeyedSubscript:localeCopy];
  if (!v9)
  {
    v9 = [[_NCTimeFormatData alloc] initWithLocale:localeCopy];
    [__formatData setObject:v9 forKeyedSubscript:localeCopy];
  }

  [_timeFormatDataAccessLock unlock];

  return v9;
}

+ (id)_timeFormatDataAccessLock
{
  if (_timeFormatDataAccessLock_onceToken != -1)
  {
    +[_NCTimeFormatData _timeFormatDataAccessLock];
  }

  v3 = _timeFormatDataAccessLock_accessLock;

  return v3;
}

+ (id)_timeLocaleForLocale:(id)locale
{
  v3 = MEMORY[0x277CBEAF8];
  localeCopy = locale;
  v5 = [v3 alloc];
  localeIdentifier = [localeCopy localeIdentifier];

  v7 = [v5 initWithLocaleIdentifier:localeIdentifier];

  return v7;
}

- (_NCTimeFormatData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v30.receiver = self;
  v30.super_class = _NCTimeFormatData;
  v5 = [(_NCTimeFormatData *)&v30 init];
  if (v5)
  {
    v6 = [objc_opt_class() _timeLocaleForLocale:localeCopy];
    v7 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmm" options:0 locale:v6];
    formatHourMin = v5->_formatHourMin;
    v5->_formatHourMin = v7;

    v9 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmmssSS" options:0 locale:v6];
    formatHourMinSecSubsec = v5->_formatHourMinSecSubsec;
    v5->_formatHourMinSecSubsec = v9;

    v11 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"HHmmss" options:0 locale:v6];
    formatHourMinSec = v5->_formatHourMinSec;
    v5->_formatHourMinSec = v11;

    v13 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"mmssSS" options:0 locale:v6];
    formatMinSecSubsec = v5->_formatMinSecSubsec;
    v5->_formatMinSecSubsec = v13;

    v15 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"mmss" options:0 locale:v6];
    formatMinSec = v5->_formatMinSec;
    v5->_formatMinSec = v15;

    v17 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"m" options:0 locale:v6];
    formatMin = v5->_formatMin;
    v5->_formatMin = v17;

    localeIdentifier = [v6 localeIdentifier];
    v20 = [localeIdentifier hasPrefix:@"ee_"];

    if (v20)
    {
      if ([(NSString *)v5->_formatMinSecSubsec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v21 = -[NSString substringFromIndex:](v5->_formatMinSecSubsec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v22 = v5->_formatMinSecSubsec;
        v5->_formatMinSecSubsec = v21;
      }

      if ([(NSString *)v5->_formatMinSec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v23 = -[NSString substringFromIndex:](v5->_formatMinSec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v24 = v5->_formatMinSec;
        v5->_formatMinSec = v23;
      }
    }

    v25 = objc_alloc_init(MEMORY[0x277CCABB8]);
    singleWidthNumberFormatter = v5->_singleWidthNumberFormatter;
    v5->_singleWidthNumberFormatter = v25;

    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setPositiveFormat:@"0"];
    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setLocale:localeCopy];
    v27 = objc_alloc_init(MEMORY[0x277CCABB8]);
    doubleWidthNumberFormatter = v5->_doubleWidthNumberFormatter;
    v5->_doubleWidthNumberFormatter = v27;

    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setPositiveFormat:@"00"];
    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setLocale:localeCopy];
  }

  return v5;
}

@end