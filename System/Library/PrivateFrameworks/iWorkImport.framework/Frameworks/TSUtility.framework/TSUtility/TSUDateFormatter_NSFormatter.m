@interface TSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (TSUDateFormatter_NSFormatter)init;
- (id)stringForObjectValue:(id)a3;
- (void)setPreferredFormat:(id)a3;
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

- (void)setPreferredFormat:(id)a3
{
  v7 = a3;
  if ([(TSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v4 = [TSUDateFormatter datePortionOfDateTimeFormatString:v7];
LABEL_5:
    preferredFormat = self->_preferredFormat;
    self->_preferredFormat = v4;
    goto LABEL_7;
  }

  if ([(TSUDateFormatter_NSFormatter *)self isTimeOnly])
  {
    v4 = [TSUDateFormatter timePortionOfDateTimeFormatString:v7];
    goto LABEL_5;
  }

  v6 = v7;
  preferredFormat = self->_preferredFormat;
  self->_preferredFormat = v6;
LABEL_7:
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  v9 = [(TSUDateFormatter_NSFormatter *)self locale];
  v15 = 0;
  v10 = TSUCreateDateFromStringWithPreferredFormat(v8, v9, 0, &v15, 0);

  v11 = v15;
  if (v11)
  {
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  if (v10)
  {
    v12 = v10;
    *a3 = v10;
  }

  else
  {
    *a3 = 0;
    if (a5)
    {
      v13 = SFUMainBundle();
      *a5 = [v13 localizedStringForKey:@"The date is invalid." value:&stru_28862C2A0 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(TSUDateFormatter_NSFormatter *)self locale];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUDateFormatter_NSFormatter stringForObjectValue:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1048 isFatal:0 description:"Locale property has been inappropriately cleared."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v8 = +[TSULocale currentLocale];
    [(TSUDateFormatter_NSFormatter *)self setLocale:v8];
  }

  v9 = [(TSUDateFormatter_NSFormatter *)self preferredFormat];

  if (!v9)
  {
    v10 = [(TSUDateFormatter_NSFormatter *)self locale];
    v11 = TSUShortestCompleteDateOnlyFormat(v10);
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:v11];
  }

  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, v4);

  if (v13)
  {
    v14 = [(TSUDateFormatter_NSFormatter *)self preferredFormat];
    v15 = [(TSUDateFormatter_NSFormatter *)self locale];
    v16 = TSUDateFormatterStringFromDateWithFormat(v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end