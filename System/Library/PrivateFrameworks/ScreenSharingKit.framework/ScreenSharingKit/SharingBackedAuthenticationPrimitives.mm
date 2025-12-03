@interface SharingBackedAuthenticationPrimitives
- (_TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives)init;
- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error;
- (void)manager:(id)manager didFailToDisableDeviceForSessionWithID:(id)d error:(id)error;
- (void)manager:(id)manager didReceiveRequestToApproveForSessionID:(id)d info:(id)info completionHandler:(id)handler;
@end

@implementation SharingBackedAuthenticationPrimitives

- (_TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_264A0D088(v12, errorCopy, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration, "Failed to unlock paired iPhone with error: %{public}s", "Authentication failed for a different unlock generation: %{public}s due to: %{public}s", "unlockDeviceContinuation is not available.");

  (*(v9 + 8))(v12, v8);
}

- (void)manager:(id)manager didReceiveRequestToApproveForSessionID:(id)d info:(id)info completionHandler:(id)handler
{
  v10 = sub_264B40104();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_264B400D4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  managerCopy = manager;
  infoCopy = info;
  selfCopy = self;
  sub_264A0B964(v14, infoCopy, sub_264A0DF90, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)manager:(id)manager didFailToDisableDeviceForSessionWithID:(id)d error:(id)error
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_264A0D088(v12, errorCopy, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration, "Failed to disable paired iPhone with error: %{public}s", "Disable device failed for a different reset generation: %{public}s due to: %{public}s", "disableDeviceContinuation is not available.");

  (*(v9 + 8))(v12, v8);
}

@end