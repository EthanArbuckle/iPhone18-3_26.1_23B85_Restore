@interface AskToAirDropSenderController
- (BOOL)hasSeenPrivacyPrompt;
- (_TtC7Sharing28AskToAirDropSenderController)init;
- (_TtC7Sharing28AskToAirDropSenderController)initWithQueue:(id)a3;
- (id)didStopHandler;
- (int64_t)nearbyDeviceCount;
- (void)fetchPrivacyPromptInformationWithCompletion:(id)a3;
- (void)fetchSharingNameWithCompletionHandler:(id)a3;
- (void)setDidStopHandler:(id)a3;
- (void)setNearbyDeviceCount:(int64_t)a3;
- (void)setNearbyDeviceCountChangedHandler:(id)a3;
- (void)startAs:(id)a3 pin:(id)a4;
- (void)startWithPin:(id)a3;
- (void)stop;
@end

@implementation AskToAirDropSenderController

- (int64_t)nearbyDeviceCount
{
  v3 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNearbyDeviceCount:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_1A989D814();
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

- (void)setNearbyDeviceCountChangedHandler:(id)a3
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

  v6 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (id)didStopHandler
{
  v2 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989E660;
    aBlock[3] = &block_descriptor_163;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidStopHandler:(id)a3
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

  v6 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1A967C46C(v7);
}

- (_TtC7Sharing28AskToAirDropSenderController)init
{
  *(self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount) = 0;
  v2 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (self + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1A9977470();
  __break(1u);
  return result;
}

- (_TtC7Sharing28AskToAirDropSenderController)initWithQueue:(id)a3
{
  v3 = a3;
  v4 = sub_1A98A6BE8(v3);

  return v4;
}

- (void)startAs:(id)a3 pin:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = a4;
  v11 = self;
  v12 = sub_1A9976070();
  v14 = v13;

  v15 = sub_1A9976C00();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = v12;
  v16[6] = v14;
  sub_1A989FBEC(0, 0, v9, &unk_1A999FCF0, v16);
}

- (void)startWithPin:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = a3;
  v10 = self;
  v11 = sub_1A9976070();
  v13 = v12;

  v14 = sub_1A9976C00();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v13;
  sub_1A989FBEC(0, 0, v8, &unk_1A999FCE8, v15);
}

- (void)stop
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1A9976C00();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_1A989FBEC(0, 0, v6, &unk_1A999FCE0, v8);
}

- (void)fetchPrivacyPromptInformationWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1A9976C00();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_1A98A799C;
  v12[6] = v10;
  v13 = self;
  sub_1A97B4F40(0, 0, v8, &unk_1A999FCD8, v12);
}

- (void)fetchSharingNameWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A9976C00();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A999FC98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A9998300;
  v13[5] = v12;
  v14 = self;
  sub_1A98A683C(0, 0, v8, &unk_1A9998308, v13);
}

@end