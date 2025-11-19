@interface SharingBackedAuthenticationPrimitives
- (_TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives)init;
- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didFailToDisableDeviceForSessionWithID:(id)a4 error:(id)a5;
- (void)manager:(id)a3 didReceiveRequestToApproveForSessionID:(id)a4 info:(id)a5 completionHandler:(id)a6;
@end

@implementation SharingBackedAuthenticationPrimitives

- (_TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)manager:(id)a3 didFailAuthenticationForSessionWithID:(id)a4 error:(id)a5
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_264A0D088(v12, v14, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration, "Failed to unlock paired iPhone with error: %{public}s", "Authentication failed for a different unlock generation: %{public}s due to: %{public}s", "unlockDeviceContinuation is not available.");

  (*(v9 + 8))(v12, v8);
}

- (void)manager:(id)a3 didReceiveRequestToApproveForSessionID:(id)a4 info:(id)a5 completionHandler:(id)a6
{
  v10 = sub_264B40104();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_264B400D4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a3;
  v18 = a5;
  v19 = self;
  sub_264A0B964(v14, v18, sub_264A0DF90, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)manager:(id)a3 didFailToDisableDeviceForSessionWithID:(id)a4 error:(id)a5
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_264A0D088(v12, v14, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation, &OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration, "Failed to disable paired iPhone with error: %{public}s", "Disable device failed for a different reset generation: %{public}s due to: %{public}s", "disableDeviceContinuation is not available.");

  (*(v9 + 8))(v12, v8);
}

@end