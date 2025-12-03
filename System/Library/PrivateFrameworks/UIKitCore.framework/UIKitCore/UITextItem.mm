@interface UITextItem
+ (id)_itemWithLink:(id)link range:(_NSRange)range;
+ (id)_itemWithTag:(id)tag range:(_NSRange)range;
+ (id)_itemWithTextAttachment:(id)attachment range:(_NSRange)range;
- (NSRange)range;
- (id)_initWithType:(int64_t)type range:(_NSRange)range;
@end

@implementation UITextItem

- (id)_initWithType:(int64_t)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = UITextItem;
  result = [(UITextItem *)&v8 init];
  if (result)
  {
    *(result + 1) = type;
    *(result + 5) = location;
    *(result + 6) = length;
  }

  return result;
}

+ (id)_itemWithLink:(id)link range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  linkCopy = link;
  v8 = [[self alloc] _initWithType:0 range:{location, length}];
  v9 = v8[2];
  v8[2] = linkCopy;

  return v8;
}

+ (id)_itemWithTextAttachment:(id)attachment range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  v8 = [[self alloc] _initWithType:1 range:{location, length}];
  v9 = v8[3];
  v8[3] = attachmentCopy;

  return v8;
}

+ (id)_itemWithTag:(id)tag range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  tagCopy = tag;
  v8 = [[self alloc] _initWithType:2 range:{location, length}];
  v9 = v8[4];
  v8[4] = tagCopy;

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