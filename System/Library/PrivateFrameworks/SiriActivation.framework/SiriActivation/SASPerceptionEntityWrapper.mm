@interface SASPerceptionEntityWrapper
- (SASPerceptionEntityWrapper)init;
- (void)userEngagementStatusWith:(id)with;
@end

@implementation SASPerceptionEntityWrapper

- (SASPerceptionEntityWrapper)init
{
  type metadata accessor for PerceptionModelImpl();
  v2 = swift_allocObject();
  swift_getObjectType();
  v3 = type metadata accessor for PerceptionEntityWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___SASPerceptionEntityWrapper_model] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(SASPerceptionEntityWrapper *)&v7 init];
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)userEngagementStatusWith:(id)with
{
  v3 = _Block_copy(with);
  v3[2](v3, 0);

  _Block_release(v3);
}

@end