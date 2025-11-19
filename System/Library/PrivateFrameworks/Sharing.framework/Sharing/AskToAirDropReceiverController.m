@interface AskToAirDropReceiverController
- (BOOL)hasPendingOrActiveConnections;
- (BOOL)hasSeenPrivacyPrompt;
- (BOOL)isLegacyMode;
- (BOOL)isNearbyDeviceClose;
- (NSArray)connectedNearbyDeviceNames;
- (_TtC7Sharing30AskToAirDropReceiverController)initWithQueue:(id)a3;
- (id)errorHandler;
- (int64_t)connectionState;
- (void)connectToAllNearbyDevices;
- (void)disconnectFromAllNearbyDevices;
- (void)setConnectedNearbyDeviceNames:(id)a3;
- (void)setConnectionState:(int64_t)a3;
- (void)setConnectionStateChangedHandler:(id)a3;
- (void)setErrorHandler:(id)a3;
- (void)setIsLegacyMode:(BOOL)a3;
- (void)setNearbyDeviceCloseChangedHandler:(id)a3;
- (void)setPendingOrActiveConnectionsChangedHandler:(id)a3;
- (void)setStateChangedHandler:(id)a3;
@end

@implementation AskToAirDropReceiverController

- (BOOL)isNearbyDeviceClose
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)hasPendingOrActiveConnections
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isLegacyMode
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLegacyMode:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)connectionState
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConnectionState:(int64_t)a3
{
  v4 = self;
  sub_1A98A23F0(a3);
}

- (void)setStateChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (void)setConnectionStateChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (void)setPendingOrActiveConnectionsChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98766A4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (void)setNearbyDeviceCloseChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A9875F30;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (id)errorHandler
{
  v2 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A98A327C;
    aBlock[3] = &block_descriptor_83;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setErrorHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1A98A7824;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (BOOL)hasSeenPrivacyPrompt
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1A99767E0();
  v6 = [v4 BOOLForKey_];

  return v6;
}

- (NSArray)connectedNearbyDeviceNames
{
  v3 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1A9976AB0();

  return v5;
}

- (void)setConnectedNearbyDeviceNames:(id)a3
{
  v4 = sub_1A9976AC0();
  v5 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC7Sharing30AskToAirDropReceiverController)initWithQueue:(id)a3
{
  v3 = a3;
  v4 = sub_1A98A717C(v3);

  return v4;
}

- (void)connectToAllNearbyDevices
{
  v2 = self;
  AskToAirDropReceiverController.connectToAllNearbyDevices()();
}

- (void)disconnectFromAllNearbyDevices
{
  v2 = self;
  AskToAirDropReceiverController.disconnectFromAllNearbyDevices()();
}

@end