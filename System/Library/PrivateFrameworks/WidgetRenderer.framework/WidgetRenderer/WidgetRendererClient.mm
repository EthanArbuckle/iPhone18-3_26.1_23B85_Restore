@interface WidgetRendererClient
- (_TtC14WidgetRenderer20WidgetRendererClient)init;
- (uint64_t)flushPowerlog;
- (void)clientConfigurationsDidChange:(id)a3 forHost:(id)a4;
- (void)extensionsDidChange:(id)a3;
- (void)initializeConnection:(id)a3;
- (void)systemEnvironmentDidChange:(id)a3;
@end

@implementation WidgetRendererClient

- (void)initializeConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAD6FB3C(v4);
}

- (_TtC14WidgetRenderer20WidgetRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clientConfigurationsDidChange:(id)a3 forHost:(id)a4
{
  v6 = sub_1DAED1CEC();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1DAEB6A98(a3, v6, v8);
}

- (void)extensionsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DAEB6FD4(v4);
}

- (void)systemEnvironmentDidChange:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1DAECDC1C();
  v7 = v6;

  sub_1DAEB7AE0();
  sub_1DAD70BB4(v5, v7);
}

- (uint64_t)flushPowerlog
{
  v0 = sub_1DAED09DC();
  v12 = *(v0 - 8);
  v1 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED0A3C();
  v4 = *(v11 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v8 = sub_1DAED20EC();
  aBlock[4] = sub_1DAEB67F4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_121;
  v9 = _Block_copy(aBlock);
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v7, v3, v9);
  _Block_release(v9);

  (*(v12 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v11);
}

@end