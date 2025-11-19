@interface OFUIGridViewItem
- (OFUIGridViewItem)init;
- (void)dealloc;
@end

@implementation OFUIGridViewItem

- (OFUIGridViewItem)init
{
  v3.receiver = self;
  v3.super_class = OFUIGridViewItem;
  result = [(OFUIGridViewItem *)&v3 init];
  if (result)
  {
    result->_object = 0;
    *&result->_highlighted = 0;
  }

  return result;
}

- (void)dealloc
{
  object = self->_object;
  if (object)
  {

    self->_object = 0;
  }

  v4.receiver = self;
  v4.super_class = OFUIGridViewItem;
  [(OFUIGridViewItem *)&v4 dealloc];
}

@end