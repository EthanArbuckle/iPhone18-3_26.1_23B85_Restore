@interface UITextSearchOptions
+ (id)defaultSearchOptions;
- (BOOL)isEqual:(id)equal;
@end

@implementation UITextSearchOptions

+ (id)defaultSearchOptions
{
  v2 = objc_alloc_init(UITextSearchOptions);
  [(UITextSearchOptions *)v2 setWordMatchMethod:0];
  [(UITextSearchOptions *)v2 setStringCompareOptions:129];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    stringCompareOptions = [v5 stringCompareOptions];
    if (stringCompareOptions == [(UITextSearchOptions *)self stringCompareOptions])
    {
      wordMatchMethod = [v5 wordMatchMethod];
      v8 = wordMatchMethod == [(UITextSearchOptions *)self wordMatchMethod];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end