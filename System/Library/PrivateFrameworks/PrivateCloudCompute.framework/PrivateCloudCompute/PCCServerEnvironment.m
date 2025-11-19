@interface PCCServerEnvironment
- (PCCServerEnvironment)init;
- (void)selectedEnvironmentNameWithCompletionHandler:(id)a3;
@end

@implementation PCCServerEnvironment

- (PCCServerEnvironment)init
{
  v3.receiver = self;
  v3.super_class = PCCServerEnvironment;
  return [(PCCServerEnvironment *)&v3 init];
}

- (void)selectedEnvironmentNameWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1CEFA84F0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1CEFA9840;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1CEFA9850;
  v13[5] = v12;
  v14 = self;
  sub_1CEF3C270(0, 0, v8, &unk_1CEFA9860, v13);
}

@end