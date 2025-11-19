@interface GQDChartModel
- (BOOL)hasFloatValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(float *)a5;
- (BOOL)hasIntValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(int *)a5;
- (BOOL)hasStringValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(const __CFString *)a5;
- (BOOL)hasValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(const void *)a5;
- (__CFArray)seriesArray;
- (__CFDictionary)propertiesForSeriesAtIndex:(int64_t)a3;
- (__CFString)catagoryTitle;
- (__CFString)title;
- (__CFString)value2Title;
- (__CFString)valueTitle;
- (void)dealloc;
- (void)transpose;
@end

@implementation GQDChartModel

- (__CFArray)seriesArray
{
  result = self->mPropertyBag;
  if (result)
  {
    return CFDictionaryGetValue(result, @"SFCChartModelSeriesStorageKey");
  }

  return result;
}

- (__CFDictionary)propertiesForSeriesAtIndex:(int64_t)a3
{
  result = [(GQDChartModel *)self seriesArray];
  if (result)
  {
    v6 = [(GQDChartModel *)self seriesArray];

    return CFArrayGetValueAtIndex(v6, a3);
  }

  return result;
}

- (BOOL)hasValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(const void *)a5
{
  v9 = [(GQDChartModel *)self propertiesForSeriesAtIndex:a4];
  if (v9)
  {
    LOBYTE(v9) = CFDictionaryGetValueIfPresent([(GQDChartModel *)self propertiesForSeriesAtIndex:a4], a3, a5) != 0;
  }

  return v9;
}

- (BOOL)hasStringValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(const __CFString *)a5
{
  v8 = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:a3 forSeriesAtIndex:a4 value:&v8];
  if (v6)
  {
    *a5 = v8;
  }

  return v6;
}

- (BOOL)hasIntValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(int *)a5
{
  number = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:a3 forSeriesAtIndex:a4 value:&number];
  if (v6)
  {
    CFNumberGetValue(number, kCFNumberIntType, a5);
  }

  return v6;
}

- (BOOL)hasFloatValueForProperty:(__CFString *)a3 forSeriesAtIndex:(int64_t)a4 value:(float *)a5
{
  number = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:a3 forSeriesAtIndex:a4 value:&number];
  if (v6)
  {
    CFNumberGetValue(number, kCFNumberFloatType, a5);
  }

  return v6;
}

- (__CFString)title
{
  result = self->mTitle;
  if (!result)
  {
    result = CFBundleCopyLocalizedString(self->mProcessorBundle, @"Title", @"Title", 0);
    self->mTitle = result;
  }

  return result;
}

- (__CFString)catagoryTitle
{
  result = self->mCatagoryTitle;
  if (!result)
  {
    result = CFBundleCopyLocalizedString(self->mProcessorBundle, @"Category Title", @"Category Title", 0);
    self->mCatagoryTitle = result;
  }

  return result;
}

- (__CFString)valueTitle
{
  result = self->mValueTitle;
  if (!result)
  {
    result = CFBundleCopyLocalizedString(self->mProcessorBundle, @"Value Title", @"Value Title", 0);
    self->mValueTitle = result;
  }

  return result;
}

- (__CFString)value2Title
{
  result = self->mValue2Title;
  if (!result)
  {
    result = CFBundleCopyLocalizedString(self->mProcessorBundle, @"Value Y2 Title", @"Value Y2 Title", 0);
    self->mValue2Title = result;
  }

  return result;
}

- (void)dealloc
{
  mChartData = self->mChartData;
  if (mChartData)
  {
    CFRelease(mChartData);
  }

  mColumnNames = self->mColumnNames;
  if (mColumnNames)
  {
    CFRelease(mColumnNames);
  }

  mRowNames = self->mRowNames;
  if (mRowNames)
  {
    CFRelease(mRowNames);
  }

  mPropertyBag = self->mPropertyBag;
  if (mPropertyBag)
  {
    CFRelease(mPropertyBag);
  }

  mTitle = self->mTitle;
  if (mTitle)
  {
    CFRelease(mTitle);
  }

  mCatagoryTitle = self->mCatagoryTitle;
  if (mCatagoryTitle)
  {
    CFRelease(mCatagoryTitle);
  }

  mValueTitle = self->mValueTitle;
  if (mValueTitle)
  {
    CFRelease(mValueTitle);
  }

  mValue2Title = self->mValue2Title;
  if (mValue2Title)
  {
    CFRelease(mValue2Title);
  }

  v11.receiver = self;
  v11.super_class = GQDChartModel;
  [(GQDChartModel *)&v11 dealloc];
}

- (void)transpose
{
  if (self->mChartData)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(self->mChartData);
    v5 = Count;
    if (Count)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->mChartData, v6);
        v8 = CFArrayGetCount(ValueAtIndex);
        v9 = v8;
        if (v8)
        {
          v10 = 0;
          do
          {
            if (!v6)
            {
              v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              CFArraySetValueAtIndex(Mutable, v10, v11);
              CFRelease(v11);
            }

            if (v10 < CFArrayGetCount(Mutable))
            {
              v12 = CFArrayGetValueAtIndex(Mutable, v10);
              v13 = CFArrayGetCount(v12);
              if (v12)
              {
                if (v6 <= v13)
                {
                  v14 = CFArrayGetValueAtIndex(ValueAtIndex, v10);
                  CFArraySetValueAtIndex(v12, v6, v14);
                }
              }
            }

            ++v10;
          }

          while (v9 != v10);
        }

        ++v6;
      }

      while (v6 != v5);
    }

    CFRelease(self->mChartData);
    self->mChartData = Mutable;
  }
}

@end