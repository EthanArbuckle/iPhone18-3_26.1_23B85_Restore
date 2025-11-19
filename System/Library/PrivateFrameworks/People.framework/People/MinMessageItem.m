@interface MinMessageItem
- (MinMessageItem)initWith:(id)a3 andText:(id)a4;
@end

@implementation MinMessageItem

- (MinMessageItem)initWith:(id)a3 andText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MinMessageItem;
  v8 = [(MinMessageItem *)&v13 init];
  text = v8->_text;
  v8->_text = v7;
  v10 = v7;

  date = v8->_date;
  v8->_date = v6;

  return v8;
}

@end