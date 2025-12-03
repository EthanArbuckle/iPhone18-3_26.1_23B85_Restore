@interface KeyValueObserverItem
- (KeyValueObserverItem)initWithObject:(id)object keyPath:(id)path block:(id)block;
- (void)dealloc;
@end

@implementation KeyValueObserverItem

- (KeyValueObserverItem)initWithObject:(id)object keyPath:(id)path block:(id)block
{
  v10.receiver = self;
  v10.super_class = KeyValueObserverItem;
  v8 = [(KeyValueObserverItem *)&v10 init];
  if (v8)
  {
    v8->_block = [block copy];
    v8->_keyPath = [path copy];
    v8->_object = object;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KeyValueObserverItem;
  [(KeyValueObserverItem *)&v3 dealloc];
}

@end