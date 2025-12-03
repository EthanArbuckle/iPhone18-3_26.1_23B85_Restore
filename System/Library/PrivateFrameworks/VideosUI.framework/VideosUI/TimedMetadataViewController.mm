@interface TimedMetadataViewController
- (_TtC8VideosUI27TimedMetadataViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)nowPlayingTabHeight;
- (void)setNowPlayingTabContextData:(id)data;
- (void)setNowPlayingTabDelegate:(id)delegate;
- (void)setPlayerViewSize:(CGSize)size;
- (void)updatePlaybackInfo:(id)info;
- (void)updatePlaybackRate:(double)rate elapsedTime:(id)time elapsedTimeTimestamp:(id)timestamp;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)vui_viewDidLayoutSubviews;
@end

@implementation TimedMetadataViewController

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3AEF200();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E3AEF8A8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AEFE28(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF0104(disappear);
}

- (_TtC8VideosUI27TimedMetadataViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3AF1810();
}

- (void)setPlayerViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1E3AF2EF0(width, height);
}

- (void)setNowPlayingTabDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF30E4();
  swift_unknownObjectRelease();
}

- (void)setNowPlayingTabContextData:(id)data
{
  sub_1E4205C64();
}

- (double)nowPlayingTabHeight
{
  selfCopy = self;
  sub_1E3AF3260();
  v4 = v3;

  return v4;
}

- (void)updatePlaybackRate:(double)rate elapsedTime:(id)time elapsedTimeTimestamp:(id)timestamp
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  if (timestamp)
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
  timeCopy = time;
  selfCopy = self;
  OUTLINED_FUNCTION_27_0();
  sub_1E3AF3354();

  sub_1E325F6F0(v5, &unk_1ECF28E20);
}

- (void)updatePlaybackInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3AF379C();
}

@end