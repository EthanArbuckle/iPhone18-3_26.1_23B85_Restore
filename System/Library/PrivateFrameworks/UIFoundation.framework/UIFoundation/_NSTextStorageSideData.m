@interface _NSTextStorageSideData
- (void)dealloc;
@end

@implementation _NSTextStorageSideData

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = _NSTextStorageSideData;
  [(_NSTextStorageSideData *)&v3 dealloc];
}

@end