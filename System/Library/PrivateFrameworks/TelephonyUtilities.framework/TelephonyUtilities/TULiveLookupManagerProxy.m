@interface TULiveLookupManagerProxy
- (TULiveLookupManagerProxy)init;
- (int64_t)extensionCount;
@end

@implementation TULiveLookupManagerProxy

- (TULiveLookupManagerProxy)init
{
  v3 = OBJC_IVAR___TULiveLookupManagerProxy_manager;
  sub_19586EB90();
  *(&self->super.isa + v3) = sub_19586EB80();
  v5.receiver = self;
  v5.super_class = TULiveLookupManagerProxy;
  return [(TULiveLookupManagerProxy *)&v5 init];
}

- (int64_t)extensionCount
{
  v2 = *(&self->super.isa + OBJC_IVAR___TULiveLookupManagerProxy_manager);
  v3 = self;
  v4 = sub_19586EB70();
  if (v4 >> 62)
  {
    v5 = sub_19586F160();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

@end