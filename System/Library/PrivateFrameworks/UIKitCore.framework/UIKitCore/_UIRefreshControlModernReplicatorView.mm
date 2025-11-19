@interface _UIRefreshControlModernReplicatorView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIRefreshControlModernReplicatorView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIRefreshControlModernReplicatorView;
  if (-[UIView _shouldAnimatePropertyWithKey:](&v7, sel__shouldAnimatePropertyWithKey_, v4) || ([v4 isEqualToString:@"instanceCount"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"instanceAlphaOffset") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"instanceColor"];
  }

  return v5;
}

@end