@interface AppleAccountMonitor
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
@end

@implementation AppleAccountMonitor

- (void)accountWasAdded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_261300C18(v4, "accountWasAdded");
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_261300968(v4);
}

- (void)accountWasModified:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_261300C18(v4, "accountWasModified");
}

@end