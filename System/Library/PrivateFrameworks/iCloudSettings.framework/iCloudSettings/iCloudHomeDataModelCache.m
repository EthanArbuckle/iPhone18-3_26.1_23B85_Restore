@interface iCloudHomeDataModelCache
- (_TtC14iCloudSettings24iCloudHomeDataModelCache)init;
@end

@implementation iCloudHomeDataModelCache

- (_TtC14iCloudSettings24iCloudHomeDataModelCache)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_dataModelCache) = MEMORY[0x277D84F98];
  *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_preLaunchActionHasExecuted) = 0;
  v3 = swift_slowAlloc();
  *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock) = v3;
  *v3 = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for iCloudHomeDataModelCache();
  return [(iCloudHomeDataModelCache *)&v5 init];
}

@end