@interface CollectionViewHeaderView
- (void)prepareForReuse;
@end

@implementation CollectionViewHeaderView

- (void)prepareForReuse
{
  selfCopy = self;
  sub_274869474();
}

@end