@interface GQDChartModel
- (BOOL)hasFloatValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(float *)value;
- (BOOL)hasIntValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(int *)value;
- (BOOL)hasStringValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(const __CFString *)value;
- (BOOL)hasValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(const void *)value;
- (__CFArray)seriesArray;
- (__CFDictionary)propertiesForSeriesAtIndex:(int64_t)index;
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

- (__CFDictionary)propertiesForSeriesAtIndex:(int64_t)index
{
  result = [(GQDChartModel *)self seriesArray];
  if (result)
  {
    seriesArray = [(GQDChartModel *)self seriesArray];

    return CFArrayGetValueAtIndex(seriesArray, index);
  }

  return result;
}

- (BOOL)hasValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(const void *)value
{
  v9 = [(GQDChartModel *)self propertiesForSeriesAtIndex:index];
  if (v9)
  {
    LOBYTE(v9) = CFDictionaryGetValueIfPresent([(GQDChartModel *)self propertiesForSeriesAtIndex:index], property, value) != 0;
  }

  return v9;
}

- (BOOL)hasStringValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(const __CFString *)value
{
  v8 = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:property forSeriesAtIndex:index value:&v8];
  if (v6)
  {
    *value = v8;
  }

  return v6;
}

- (BOOL)hasIntValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(int *)value
{
  number = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:property forSeriesAtIndex:index value:&number];
  if (v6)
  {
    CFNumberGetValue(number, kCFNumberIntType, value);
  }

  return v6;
}

- (BOOL)hasFloatValueForProperty:(__CFString *)property forSeriesAtIndex:(int64_t)index value:(float *)value
{
  number = 0;
  v6 = [(GQDChartModel *)self hasValueForProperty:property forSeriesAtIndex:index value:&number];
  if (v6)
  {
    CFNumberGetValue(number, kCFNumberFloatType, value);
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