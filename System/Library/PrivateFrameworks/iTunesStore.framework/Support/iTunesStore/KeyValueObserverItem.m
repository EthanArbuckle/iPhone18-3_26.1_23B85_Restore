@interface KeyValueObserverItem
- (KeyValueObserverItem)initWithObject:(id)a3 keyPath:(id)a4 block:(id)a5;
- (void)dealloc;
@end

@implementation KeyValueObserverItem

- (KeyValueObserverItem)initWithObject:(id)a3 keyPath:(id)a4 block:(id)a5
{
  v10.receiver = self;
  v10.super_class = KeyValueObserverItem;
  v8 = [(KeyValueObserverItem *)&v10 init];
  if (v8)
  {
    v8->_block = [a5 copy];
    v8->_keyPath = [a4 copy];
    v8->_object = a3;
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