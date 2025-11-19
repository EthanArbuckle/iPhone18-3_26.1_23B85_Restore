@interface DefaultOneUpBadgeContentProvider
- (id)undoManagerForActionPerformer:(id)a3;
@end

@implementation DefaultOneUpBadgeContentProvider

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DefaultOneUpBadgeContentProvider.undoManager(for:)(v5);

  return v6;
}

@end