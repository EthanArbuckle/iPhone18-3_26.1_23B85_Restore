@interface MSPlaceholderAVItem
- (MSPlaceholderAVItem)initWithAVItemType:(int64_t)a3;
@end

@implementation MSPlaceholderAVItem

- (MSPlaceholderAVItem)initWithAVItemType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MSPlaceholderAVItem;
  result = [(MSPlaceholderAVItem *)&v5 init];
  if (result)
  {
    result->_itemType = a3;
  }

  return result;
}

@end