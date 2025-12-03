@interface AppleAccountMonitor
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
@end

@implementation AppleAccountMonitor

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  selfCopy = self;
  sub_261300C18(addedCopy, "accountWasAdded");
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  sub_261300968(removedCopy);
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  sub_261300C18(modifiedCopy, "accountWasModified");
}

@end