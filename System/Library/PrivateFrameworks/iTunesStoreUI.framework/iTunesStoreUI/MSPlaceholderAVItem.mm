@interface MSPlaceholderAVItem
- (MSPlaceholderAVItem)initWithAVItemType:(int64_t)type;
@end

@implementation MSPlaceholderAVItem

- (MSPlaceholderAVItem)initWithAVItemType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MSPlaceholderAVItem;
  result = [(MSPlaceholderAVItem *)&v5 init];
  if (result)
  {
    result->_itemType = type;
  }

  return result;
}

@end