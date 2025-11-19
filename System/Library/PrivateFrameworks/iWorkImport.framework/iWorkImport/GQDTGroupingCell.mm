@interface GQDTGroupingCell
+ (__CFString)displayTypeString:(int)a3;
- (__CFString)createFormattedValue;
- (id)value;
- (int)readAttributes:(_xmlTextReader *)a3;
- (int)readElement:(_xmlTextReader *)a3;
- (int)readRootFormat:(_xmlTextReader *)a3;
- (int)readValue:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDTGroupingCell

- (void)dealloc
{
  mValue = self->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  mFormulaValue = self->mFormulaValue;
  if (mFormulaValue)
  {
    CFRelease(mFormulaValue);
  }

  v5.receiver = self;
  v5.super_class = GQDTGroupingCell;
  [(GQDTCell *)&v5 dealloc];
}

- (id)value
{
  if (self->mHasValidFormulaValue)
  {
    v2 = &OBJC_IVAR___GQDTGroupingCell_mFormulaValue;
  }

  else
  {
    v2 = &OBJC_IVAR___GQDTGroupingCell_mValue;
  }

  return *(&self->super.super.isa + *v2);
}

- (__CFString)createFormattedValue
{
  if (self->mHasValidFormulaValue)
  {
    mFormulaValue = self->mFormulaValue;
    if (mFormulaValue)
    {
      CFRetain(mFormulaValue);
    }

    return mFormulaValue;
  }

  mFormat = self->mFormat;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = self->mFormat;
  if (isKindOfClass)
  {
    v7 = [self->mFormat formatString];
    mValue = self->mValue;
    v9 = sub_52308();
    v10 = CFDateFormatterCreate(0, v9, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v11 = sub_13AF8();
    CFDateFormatterSetProperty(v10, kCFDateFormatterTimeZone, v11);
    if (v7)
    {
      CFDateFormatterSetFormat(v10, v7);
    }

    mFormulaValue = CFDateFormatterCreateStringWithDate(0, v10, mValue);
    CFRelease(v10);
    return mFormulaValue;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DoubleValue = CFStringGetDoubleValue(self->mValue);
    v14 = [self->mFormat formatString];
    mProcessorBundle = self->mProcessorBundle;

    return sub_4DCD0(v14, mProcessorBundle, DoubleValue);
  }

  else
  {
    v16 = self->mFormat;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = self->mValue;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v20 = self->mValue;
      return self->mValue;
    }

    v17 = self->mFormat;
    v18 = CFStringGetDoubleValue(self->mValue);

    return [v17 createStringFromDouble:v18];
  }
}

+ (__CFString)displayTypeString:(int)a3
{
  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v4 = @"GQDTDisplayTypeSubtotal";
      v5 = @"Subtotal";
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v4 = @"GQDTDisplayTypeAverage";
      v5 = @"Average";
      goto LABEL_12;
    }

    return 0;
  }

  if (a3 == 4)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = @"GQDTDisplayTypeMinimum";
    v5 = @"Minimum";
    goto LABEL_12;
  }

  if (a3 == 5)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = @"GQDTDisplayTypeMaximum";
    v5 = @"Maximum";
    goto LABEL_12;
  }

  if (a3 != 6)
  {
    return 0;
  }

  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = @"GQDTDisplayTypeCount";
  v5 = @"Count";
LABEL_12:

  return [(NSBundle *)v3 localizedStringForKey:v4 value:v5 table:0];
}

- (int)readValue:(_xmlTextReader *)a3
{
  self->mValue = sub_4294C(a3, qword_A35E8, "value");
  mFormat = self->mFormat;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    System = CFLocaleGetSystem();
    v6 = CFDateFormatterCreate(kCFAllocatorDefault, System, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
    CFDateFormatterSetFormat(v6, @"yyyy-MM-dd'T'HH:mm:ssZZ");
    DateFromString = CFDateFormatterCreateDateFromString(kCFAllocatorDefault, v6, self->mValue, 0);
    CFRelease(v6);

    self->mValue = DateFromString;
  }

  return 1;
}

- (int)readElement:(_xmlTextReader *)a3
{
  self->mLevel = sub_4258C(a3, qword_A35E8, "level", 0);
  self->mRowIdx = sub_4258C(a3, qword_A35E8, "row-index", 0);
  self->mRowCount = sub_4258C(a3, qword_A35E8, "row-count", 0);
  self->mIsCollapsed = sub_42340(a3, qword_A35E8, "collapsed", 0);
  return 1;
}

- (int)readRootFormat:(_xmlTextReader *)a3
{
  v5 = sub_4294C(a3, qword_A35E8, "group-date-format");
  if (v5)
  {
    v6 = v5;
    v7 = off_80000;
  }

  else
  {
    v8 = sub_4294C(a3, qword_A35E8, "group-duration-format");
    if (!v8)
    {
      return 1;
    }

    v6 = v8;
    v7 = off_80008;
  }

  v9 = [objc_alloc(*v7) initWithFormatString:v6];
  CFRelease(v6);
  if (v9)
  {
    mFormat = self->mFormat;
    if (mFormat)
    {
      CFRelease(mFormat);
      self->mFormat = v9;
    }

    else
    {
      CFRelease(v9);
    }
  }

  return 1;
}

- (int)readAttributes:(_xmlTextReader *)a3
{
  v5 = sub_42340(a3, qword_A35E8, "group-formula-value-valid", 0);
  self->mHasValidFormulaValue = v5;
  if (v5)
  {
    self->mFormulaValue = sub_4294C(a3, qword_A35E8, "group-formula-string");
  }

  return 1;
}

@end