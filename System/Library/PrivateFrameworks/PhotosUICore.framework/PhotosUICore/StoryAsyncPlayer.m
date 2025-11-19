@interface StoryAsyncPlayer
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
@end

@implementation StoryAsyncPlayer

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = sub_1A3D7A9AC;
  v13[7] = v11;
  v14 = a3;

  sub_1A3D4D930(0, 0, v9, &unk_1A53037E8, v13);
}

@end