@interface TimedMetadataViewController
- (_TtC8VideosUI27TimedMetadataViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)nowPlayingTabHeight;
- (void)setNowPlayingTabContextData:(id)a3;
- (void)setNowPlayingTabDelegate:(id)a3;
- (void)setPlayerViewSize:(CGSize)a3;
- (void)updatePlaybackInfo:(id)a3;
- (void)updatePlaybackRate:(double)a3 elapsedTime:(id)a4 elapsedTimeTimestamp:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation TimedMetadataViewController

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3AEF200();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1E3AEF8A8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AEFE28(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF0104(a3);
}

- (_TtC8VideosUI27TimedMetadataViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3AF1810();
}

- (void)setPlayerViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1E3AF2EF0(width, height);
}

- (void)setNowPlayingTabDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF30E4();
  swift_unknownObjectRelease();
}

- (void)setNowPlayingTabContextData:(id)a3
{
  sub_1E4205C64();
}

- (double)nowPlayingTabHeight
{
  v2 = self;
  sub_1E3AF3260();
  v4 = v3;

  return v4;
}

- (void)updatePlaybackRate:(double)a3 elapsedTime:(id)a4 elapsedTimeTimestamp:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  if (a5)
  {
    sub_1E41FE584();
    v11 = sub_1E41FE5D4();
    v12 = 0;
  }

  else
  {
    v11 = sub_1E41FE5D4();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v12, 1, v11);
  v13 = a4;
  v14 = self;
  OUTLINED_FUNCTION_27_0();
  sub_1E3AF3354();

  sub_1E325F6F0(v5, &unk_1ECF28E20);
}

- (void)updatePlaybackInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF379C();
}

@end