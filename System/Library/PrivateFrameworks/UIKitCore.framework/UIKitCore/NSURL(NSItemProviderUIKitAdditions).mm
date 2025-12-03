@interface NSURL(NSItemProviderUIKitAdditions)
+ (uint64_t)_allowsCreationOfFileURLFromItemProvider;
+ (void)_setAllowsCreationOfFileURLFromItemProvider:()NSItemProviderUIKitAdditions;
- (id)_NSItemProviderArchive_customArchiveDictionary;
- (id)_title;
- (void)_NSItemProviderArchive_didUnarchiveCustomDictionary:()NSItemProviderUIKitAdditions;
@end

@implementation NSURL(NSItemProviderUIKitAdditions)

+ (uint64_t)_allowsCreationOfFileURLFromItemProvider
{
  if (qword_1ED49FB90 != -1)
  {
    dispatch_once(&qword_1ED49FB90, &__block_literal_global_139_0);
  }

  return _MergedGlobals_1227;
}

+ (void)_setAllowsCreationOfFileURLFromItemProvider:()NSItemProviderUIKitAdditions
{
  if (qword_1ED49FB90 != -1)
  {
    dispatch_once(&qword_1ED49FB90, &__block_literal_global_139_0);
  }

  _MergedGlobals_1227 = a3;
}

- (id)_title
{
  v1 = objc_getAssociatedObject(self, &kTitleObjKey);
  v2 = [v1 copy];

  return v2;
}

- (id)_NSItemProviderArchive_customArchiveDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _title = [self _title];

  if (_title)
  {
    _title2 = [self _title];
    [dictionary setObject:_title2 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (void)_NSItemProviderArchive_didUnarchiveCustomDictionary:()NSItemProviderUIKitAdditions
{
  v4 = [a3 objectForKeyedSubscript:@"title"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self _setTitle:v4];
    }
  }
}

@end