@interface TSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
- (void)setPreferredFormat:(id)a3;
@end

@implementation TSUDateFormatter_NSFormatter

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDateFormatter_NSFormatter;
  [(TSUDateFormatter_NSFormatter *)&v3 dealloc];
}

- (void)setPreferredFormat:(id)a3
{
  mPreferredFormat = self->mPreferredFormat;
  if ([(TSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v6 = [TSUDateFormatter datePortionOfDateTimeFormatString:a3];
  }

  else
  {
    if (![(TSUDateFormatter_NSFormatter *)self isTimeOnly])
    {
      goto LABEL_6;
    }

    v6 = [TSUDateFormatter timePortionOfDateTimeFormatString:a3];
  }

  a3 = v6;
LABEL_6:
  self->mPreferredFormat = a3;

  v7 = self->mPreferredFormat;

  v8 = v7;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v12 = 0;
  v9 = [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
  v10 = [v9 newDateFromString:a4 preferredFormatString:0 successfulFormatString:&v12 tryAggressiveFormats:0];
  [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
  if (v12)
  {
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:?];
  }

  if (v10)
  {
    *a3 = v10;
  }

  else
  {
    *a3 = 0;
    if (a5)
    {
      *a5 = [SFUBundle() localizedStringForKey:@"The date is invalid." value:&stru_287DDF830 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)a3
{
  if (![(TSUDateFormatter_NSFormatter *)self preferredFormat])
  {
    if (!TSUShortestCompleteDateOnlyFormat_sFormat)
    {
      TSUShortestCompleteDateOnlyFormat_sFormat = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, sDateFormatterLocale);
    }

    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:?];
  }

  v5 = objc_opt_class();
  result = TSUDynamicCast(v5, a3);
  if (result)
  {
    v7 = result;
    v8 = [(TSUDateFormatter_NSFormatter *)self preferredFormat];

    return TSUDateFormatterStringFromDateWithFormat(v7, v8);
  }

  return result;
}

@end