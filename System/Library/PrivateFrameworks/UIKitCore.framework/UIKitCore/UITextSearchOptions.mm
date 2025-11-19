@interface UITextSearchOptions
+ (id)defaultSearchOptions;
- (BOOL)isEqual:(id)a3;
@end

@implementation UITextSearchOptions

+ (id)defaultSearchOptions
{
  v2 = objc_alloc_init(UITextSearchOptions);
  [(UITextSearchOptions *)v2 setWordMatchMethod:0];
  [(UITextSearchOptions *)v2 setStringCompareOptions:129];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 stringCompareOptions];
    if (v6 == [(UITextSearchOptions *)self stringCompareOptions])
    {
      v7 = [v5 wordMatchMethod];
      v8 = v7 == [(UITextSearchOptions *)self wordMatchMethod];
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