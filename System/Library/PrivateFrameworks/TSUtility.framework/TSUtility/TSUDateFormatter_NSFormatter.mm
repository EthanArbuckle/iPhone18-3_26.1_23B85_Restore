@interface TSUDateFormatter_NSFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
- (void)setPreferredFormat:(id)format;
@end

@implementation TSUDateFormatter_NSFormatter

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSUDateFormatter_NSFormatter;
  [(TSUDateFormatter_NSFormatter *)&v3 dealloc];
}

- (void)setPreferredFormat:(id)format
{
  mPreferredFormat = self->mPreferredFormat;
  if ([(TSUDateFormatter_NSFormatter *)self isDateOnly])
  {
    v6 = [TSUDateFormatter datePortionOfDateTimeFormatString:format];
  }

  else
  {
    if (![(TSUDateFormatter_NSFormatter *)self isTimeOnly])
    {
      goto LABEL_6;
    }

    v6 = [TSUDateFormatter timePortionOfDateTimeFormatString:format];
  }

  format = v6;
LABEL_6:
  self->mPreferredFormat = format;

  v7 = self->mPreferredFormat;

  v8 = v7;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v12 = 0;
  v9 = [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
  v10 = [v9 newDateFromString:string preferredFormatString:0 successfulFormatString:&v12 tryAggressiveFormats:0];
  [+[TSUDateParserLibrary sharedDateParserLibrary](TSUDateParserLibrary "sharedDateParserLibrary")];
  if (v12)
  {
    [(TSUDateFormatter_NSFormatter *)self setPreferredFormat:?];
  }

  if (v10)
  {
    *value = v10;
  }

  else
  {
    *value = 0;
    if (description)
    {
      *description = [SFUBundle() localizedStringForKey:@"The date is invalid." value:&stru_287DDF830 table:@"TSUtility"];
    }
  }

  return v10 != 0;
}

- (id)stringForObjectValue:(id)value
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
  result = TSUDynamicCast(v5, value);
  if (result)
  {
    v7 = result;
    preferredFormat = [(TSUDateFormatter_NSFormatter *)self preferredFormat];

    return TSUDateFormatterStringFromDateWithFormat(v7, preferredFormat);
  }

  return result;
}

@end