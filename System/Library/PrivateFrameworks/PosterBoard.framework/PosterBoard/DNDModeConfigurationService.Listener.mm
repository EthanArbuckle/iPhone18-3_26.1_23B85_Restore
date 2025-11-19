@interface DNDModeConfigurationService.Listener
- (_TtCE11PosterBoardCSo27DNDModeConfigurationServiceP33_810B7575001E280934AD3AE501DC549F8Listener)init;
- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
@end

@implementation DNDModeConfigurationService.Listener

- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCE11PosterBoardCSo27DNDModeConfigurationServiceP33_810B7575001E280934AD3AE501DC549F8Listener_onUpdate);
  if (v4)
  {
    v5 = *&self->onUpdate[OBJC_IVAR____TtCE11PosterBoardCSo27DNDModeConfigurationServiceP33_810B7575001E280934AD3AE501DC549F8Listener_onUpdate];
    v6 = self;
    v7 = sub_21B638B64(v4);
    v4(v7);

    sub_21B638B68(v4, v5);
  }
}

- (_TtCE11PosterBoardCSo27DNDModeConfigurationServiceP33_810B7575001E280934AD3AE501DC549F8Listener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end