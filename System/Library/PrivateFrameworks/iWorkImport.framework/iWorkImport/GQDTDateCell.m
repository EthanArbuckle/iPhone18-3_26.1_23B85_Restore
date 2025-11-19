@interface GQDTDateCell
- (__CFString)createStringValue;
- (__CFString)getDateFormat;
- (int)readAttributesForDateCell:(_xmlTextReader *)a3 processor:(id)a4;
- (void)dealloc;
@end

@implementation GQDTDateCell

- (void)dealloc
{
  mDate = self->mDate;
  if (mDate)
  {
    CFRelease(mDate);
  }

  v4.receiver = self;
  v4.super_class = GQDTDateCell;
  [(GQDTCell *)&v4 dealloc];
}

- (__CFString)getDateFormat
{
  v3 = 0;
  [(GQDSStyle *)self->super.mStyle hasValueForObjectProperty:123 value:&v3];
  return v3;
}

- (__CFString)createStringValue
{
  if (self->mDate)
  {
    mComputedFormat = self->mComputedFormat;
    if (!mComputedFormat || !-[GQDTComputedFormatSpec isDateFormat](mComputedFormat, "isDateFormat") || (v4 = [-[GQDTComputedFormatSpec format](self->mComputedFormat "format")]) == 0)
    {
      v4 = [(GQDTDateCell *)self getDateFormat];
    }

    v5 = sub_52308();
    v6 = CFDateFormatterCreate(0, v5, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v7 = qword_A40E0;
    if (!qword_A40E0)
    {
      v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
      qword_A40E0 = v7;
    }

    CFDateFormatterSetProperty(v6, kCFDateFormatterTimeZone, v7);
    if (v4)
    {
      CFDateFormatterSetFormat(v6, v4);
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, v6, self->mDate);
    CFRelease(v6);
    return StringWithDate;
  }

  else
  {

    return CFRetain(&stru_85620);
  }
}

- (int)readAttributesForDateCell:(_xmlTextReader *)a3 processor:(id)a4
{
  v6 = [objc_msgSend(objc_msgSend(a4 "documentState")];
  if (v6 >= qword_9CA98)
  {
    v13 = 0.0;
    if (sub_426B0(a3, qword_A35E8, "cell-date", &v13))
    {
      v11 = [NSDate alloc];
      self->mDate = [v11 initWithTimeIntervalSinceReferenceDate:v13];
      return 1;
    }
  }

  else
  {
    v7 = sub_4294C(a3, qword_A35E8, "cell-date");
    if (v7)
    {
      v8 = v7;
      if (CFStringGetLength(v7) >= 1)
      {
        System = CFLocaleGetSystem();
        v10 = CFDateFormatterCreate(kCFAllocatorDefault, System, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
        CFDateFormatterSetFormat(v10, @"yyyy-MM-dd'T'HH:mm:ssZZ");
        self->mDate = CFDateFormatterCreateDateFromString(kCFAllocatorDefault, v10, v8, 0);
        CFRelease(v10);
      }

      CFRelease(v8);
      return 1;
    }
  }

  return 3;
}

@end