@interface SFCommunalDeviceRepairManager
- (_TtC7Sharing29SFCommunalDeviceRepairManager)init;
- (id)updateIDSCacheHandler;
- (void)handleBLEDeviceFound:(id)found;
- (void)setUpdateIDSCacheHandler:(id)handler;
@end

@implementation SFCommunalDeviceRepairManager

- (id)updateIDSCacheHandler
{
  if (*(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1A9921D7C;
    v5[3] = &block_descriptor_7;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdateIDSCacheHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1A9923144;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler);
  v8 = *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler);
  v9 = *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1A967C46C(v8);
}

- (void)handleBLEDeviceFound:(id)found
{
  foundCopy = found;
  selfCopy = self;
  sub_1A9921EB8(foundCopy);
}

- (_TtC7Sharing29SFCommunalDeviceRepairManager)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_isAttemptingRepair) = 0;
  *(self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession) = 0;
  v4 = (self + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SFCommunalDeviceRepairManager *)&v6 init];
}

@end