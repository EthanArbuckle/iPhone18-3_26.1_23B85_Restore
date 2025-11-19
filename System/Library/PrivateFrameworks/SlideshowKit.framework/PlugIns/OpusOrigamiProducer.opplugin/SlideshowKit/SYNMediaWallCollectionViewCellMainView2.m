@interface SYNMediaWallCollectionViewCellMainView2
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation SYNMediaWallCollectionViewCellMainView2

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if ([a3 isEqualToString:@"shadowPath"])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SYNMediaWallCollectionViewCellMainView2;
  return [(SYNMediaWallCollectionViewCellMainView2 *)&v6 _shouldAnimatePropertyWithKey:a3];
}

@end