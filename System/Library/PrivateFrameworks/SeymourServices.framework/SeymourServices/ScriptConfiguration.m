@interface ScriptConfiguration
- (BOOL)disableHTTPCaching;
- (NSString)platformName;
- (_TtC15SeymourServices19ScriptConfiguration)init;
@end

@implementation ScriptConfiguration

- (BOOL)disableHTTPCaching
{
  v2 = sub_227669A90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x277D4EEA8], v2);
  v8[14] = 0;
  sub_227669740();
  (*(v3 + 8))(v6, v2);
  return v8[15];
}

- (NSString)platformName
{
  *(&self->super.isa + OBJC_IVAR____TtC15SeymourServices19ScriptConfiguration_platform);
  v2 = sub_22766BFD0();

  return v2;
}

- (_TtC15SeymourServices19ScriptConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end