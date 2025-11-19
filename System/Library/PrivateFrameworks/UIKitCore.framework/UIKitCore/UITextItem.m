@interface UITextItem
+ (id)_itemWithLink:(id)a3 range:(_NSRange)a4;
+ (id)_itemWithTag:(id)a3 range:(_NSRange)a4;
+ (id)_itemWithTextAttachment:(id)a3 range:(_NSRange)a4;
- (NSRange)range;
- (id)_initWithType:(int64_t)a3 range:(_NSRange)a4;
@end

@implementation UITextItem

- (id)_initWithType:(int64_t)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8.receiver = self;
  v8.super_class = UITextItem;
  result = [(UITextItem *)&v8 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 5) = location;
    *(result + 6) = length;
  }

  return result;
}

+ (id)_itemWithLink:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] _initWithType:0 range:{location, length}];
  v9 = v8[2];
  v8[2] = v7;

  return v8;
}

+ (id)_itemWithTextAttachment:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] _initWithType:1 range:{location, length}];
  v9 = v8[3];
  v8[3] = v7;

  return v8;
}

+ (id)_itemWithTag:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] _initWithType:2 range:{location, length}];
  v9 = v8[4];
  v8[4] = v7;

  return v8;
}

- (NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end