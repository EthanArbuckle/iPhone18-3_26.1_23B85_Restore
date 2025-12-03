@interface TSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (TSUDateFormatter_NSFormatter)init;
- (id)stringForObjectValue:(id)value;
- (void)setPreferredFormat:(id)format;
@end

@implementation TSUDateFormatter_NSFormatter

- (TSUDateFormatter_NSFormatter)init
{
  v5.receiver = self;
  v5.super_class = TSUDateFormatter_NSFormatter;
  v2 = [(TSUDateFormatter_NSFormatter *)&v5 init];
  if (v2)
  {
    v3 = +[TSULocale currentLocale];
    [(TSUDateFormatter_NSFormatter *)v2 setLocale:v3];
  }

  return v2;
}

- (void)setPreferredFormat:(id)format
{
  formatCopy = format;
  if ([(TSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v4 = [TSUDateFormatter datePortionOfDateTimeFormatString:formatCopy];
LABEL_5:
    preferredFormat = self->_preferredFormat;
    self->_preferredFormat = v4;
    goto LABEL_7;
  }

  if ([(TSUDateFormatter_NSFormatter *)self isTimeOnly])
  {
    v4 = [TSUDateFormatter timePortionOfDateTimeFormatString:formatCopy];
    goto LABEL_5;
  }

  v6 = formatCopy;
  preferredFormat = self->_preferredFormat;
  self->_preferredFormat = v6;
LABEL_7:
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  locale = [(TSUDateFormatter_NSFormatter *)self locale];
  v15 = 0;
  v10 = TSUCreateDateFromStringWithPreferredFormat(stringCopy, locale, 0, &v15, 0);

  v11 = v15;
  if (v11)
  {
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  if (v10)
  {
    v12 = v10;
    *value = v10;
  }

  else
  {
    *value = 0;
    if (description)
    {
      v13 = SFUMainBundle();
      *description = [v13 localizedStringForKey:@"The date is invalid." value:&stru_28862C2A0 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  locale = [(TSUDateFormatter_NSFormatter *)self locale];

  if (!locale)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateFormatter_NSFormatter stringForObjectValue:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1048 isFatal:0 description:"Locale property has been inappropriately cleared."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = +[TSULocale currentLocale];
    [(TSUDateFormatter_NSFormatter *)self setLocale:v8];
  }

  preferredFormat = [(TSUDateFormatter_NSFormatter *)self preferredFormat];

  if (!preferredFormat)
  {
    locale2 = [(TSUDateFormatter_NSFormatter *)self locale];
    v11 = TSUShortestCompleteDateOnlyFormat(locale2);
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, valueCopy);

  if (v13)
  {
    preferredFormat2 = [(TSUDateFormatter_NSFormatter *)self preferredFormat];
    locale3 = [(TSUDateFormatter_NSFormatter *)self locale];
    v16 = TSUDateFormatterStringFromDateWithFormat(v13, preferredFormat2, locale3);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end