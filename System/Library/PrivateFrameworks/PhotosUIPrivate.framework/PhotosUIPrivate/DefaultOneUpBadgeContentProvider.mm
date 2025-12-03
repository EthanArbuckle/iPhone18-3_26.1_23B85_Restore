@interface DefaultOneUpBadgeContentProvider
- (id)undoManagerForActionPerformer:(id)performer;
@end

@implementation DefaultOneUpBadgeContentProvider

- (id)undoManagerForActionPerformer:(id)performer
{
  performerCopy = performer;
  selfCopy = self;
  v6 = DefaultOneUpBadgeContentProvider.undoManager(for:)(selfCopy);

  return v6;
}

@end