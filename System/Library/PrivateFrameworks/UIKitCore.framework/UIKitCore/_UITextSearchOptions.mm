@interface _UITextSearchOptions
+ (id)defaultSearchOptions;
- (BOOL)isEqual:(id)equal;
@end

@implementation _UITextSearchOptions

+ (id)defaultSearchOptions
{
  v2 = objc_alloc_init(_UITextSearchOptions);
  [(_UITextSearchOptions *)v2 setWordMatchMethod:0];
  [(_UITextSearchOptions *)v2 setStringCompareOptions:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    stringCompareOptions = [v5 stringCompareOptions];
    if (stringCompareOptions == [(_UITextSearchOptions *)self stringCompareOptions])
    {
      wordMatchMethod = [v5 wordMatchMethod];
      v8 = wordMatchMethod == [(_UITextSearchOptions *)self wordMatchMethod];
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