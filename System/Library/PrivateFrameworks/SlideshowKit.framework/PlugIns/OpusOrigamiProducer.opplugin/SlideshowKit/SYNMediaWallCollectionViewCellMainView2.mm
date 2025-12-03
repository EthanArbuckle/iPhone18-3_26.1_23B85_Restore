@interface SYNMediaWallCollectionViewCellMainView2
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation SYNMediaWallCollectionViewCellMainView2

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if ([key isEqualToString:@"shadowPath"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SYNMediaWallCollectionViewCellMainView2;
  return [(SYNMediaWallCollectionViewCellMainView2 *)&v6 _shouldAnimatePropertyWithKey:key];
}

@end