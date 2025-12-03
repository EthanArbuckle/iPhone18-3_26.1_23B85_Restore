@interface GenerativeStoryVisualDiagnosticsProvider
- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler;
@end

@implementation GenerativeStoryVisualDiagnosticsProvider

- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler
{
  isa = self->super.isa;
  sub_1A3C710D4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = context;
  v14[6] = sub_1A3D7A9AC;
  v14[7] = v12;
  v14[8] = isa;
  contextCopy = context;

  sub_1A3D4D930(0, 0, v10, &unk_1A530AC18, v14);
}

@end