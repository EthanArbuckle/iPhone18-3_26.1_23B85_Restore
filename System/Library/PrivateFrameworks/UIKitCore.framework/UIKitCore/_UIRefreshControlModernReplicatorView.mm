@interface _UIRefreshControlModernReplicatorView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIRefreshControlModernReplicatorView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIRefreshControlModernReplicatorView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, keyCopy) || ([keyCopy isEqualToString:@"instanceCount"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"instanceAlphaOffset") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"instanceColor"];
  }

  return v5;
}

@end