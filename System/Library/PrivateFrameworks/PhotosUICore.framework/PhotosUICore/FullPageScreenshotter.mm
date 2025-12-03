@interface FullPageScreenshotter
- (_TtC12PhotosUICore21FullPageScreenshotter)init;
- (void)screenshotService:(UIScreenshotService *)service generatePDFRepresentationWithCompletion:(id)completion;
@end

@implementation FullPageScreenshotter

- (void)screenshotService:(UIScreenshotService *)service generatePDFRepresentationWithCompletion:(id)completion
{
  sub_1A3C4D1D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = service;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A532BA60;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A532BA70;
  v14[5] = v13;
  serviceCopy = service;
  selfCopy = self;
  sub_1A403AC74(0, 0, v9, &unk_1A532BA80, v14);
}

- (_TtC12PhotosUICore21FullPageScreenshotter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end