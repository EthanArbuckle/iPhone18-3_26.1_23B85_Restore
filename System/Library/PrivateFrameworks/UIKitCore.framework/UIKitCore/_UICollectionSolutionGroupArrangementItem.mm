@interface _UICollectionSolutionGroupArrangementItem
- (void)item;
@end

@implementation _UICollectionSolutionGroupArrangementItem

- (void)item
{
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      v2 = v2[2];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

@end