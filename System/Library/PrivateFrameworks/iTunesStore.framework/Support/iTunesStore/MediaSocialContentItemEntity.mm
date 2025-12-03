@interface MediaSocialContentItemEntity
+ (id)newEntityValuesWithMediaSocialPostItem:(id)item;
@end

@implementation MediaSocialContentItemEntity

+ (id)newEntityValuesWithMediaSocialPostItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(NSMutableDictionary);
  identifier = [itemCopy identifier];
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"item_id"];
  }

  type = [itemCopy type];

  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  return v4;
}

@end