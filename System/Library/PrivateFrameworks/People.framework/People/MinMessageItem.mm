@interface MinMessageItem
- (MinMessageItem)initWith:(id)with andText:(id)text;
@end

@implementation MinMessageItem

- (MinMessageItem)initWith:(id)with andText:(id)text
{
  withCopy = with;
  textCopy = text;
  v13.receiver = self;
  v13.super_class = MinMessageItem;
  v8 = [(MinMessageItem *)&v13 init];
  text = v8->_text;
  v8->_text = textCopy;
  v10 = textCopy;

  date = v8->_date;
  v8->_date = withCopy;

  return v8;
}

@end