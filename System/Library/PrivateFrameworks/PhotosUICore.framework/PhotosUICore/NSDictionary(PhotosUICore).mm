@interface NSDictionary(PhotosUICore)
- (id)px_dictionaryByAddingEntriesFromDictionary:()PhotosUICore;
- (id)px_dictionaryBySettingObject:()PhotosUICore forKey:;
@end

@implementation NSDictionary(PhotosUICore)

- (id)px_dictionaryByAddingEntriesFromDictionary:()PhotosUICore
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)px_dictionaryBySettingObject:()PhotosUICore forKey:
{
  v6 = a4;
  v7 = a3;
  v8 = [self mutableCopy];
  [v8 setObject:v7 forKeyedSubscript:v6];

  v9 = [v8 copy];

  return v9;
}

@end