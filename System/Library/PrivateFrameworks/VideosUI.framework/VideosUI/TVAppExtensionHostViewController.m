@interface TVAppExtensionHostViewController
+ (id)createWithURLWithUrl:(id)a3;
+ (id)createWithURLWithUrl:(id)a3 completion:(id)a4;
- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithURL:(id)a3;
- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithUrl:(id)a3 completion:(id)a4;
- (void)reportWithError:(id)a3;
- (void)setURL:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVAppExtensionHostViewController

+ (id)createWithURLWithUrl:(id)a3
{
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_20();
  v8 = static TVAppExtensionHostViewController.createWithURL(url:)();
  (*(v6 + 8))(v3, v4);

  return v8;
}

+ (id)createWithURLWithUrl:(id)a3 completion:(id)a4
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = _Block_copy(a4);
  sub_1E41FE3C4();
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_1E38DA53C;
  }

  else
  {
    v10 = 0;
  }

  v11 = static TVAppExtensionHostViewController.createWithURL(url:completion:)(v8, v9, v10);
  v12 = OUTLINED_FUNCTION_74();
  sub_1E34AF594(v12);
  v13 = OUTLINED_FUNCTION_16_0();
  v14(v13);

  return v11;
}

- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithURL:(id)a3
{
  OUTLINED_FUNCTION_106();
  v3 = sub_1E41FE414();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_20();
  return TVAppExtensionHostViewController.init(url:)();
}

- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithUrl:(id)a3 completion:(id)a4
{
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FE414();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = _Block_copy(a4);
  sub_1E41FE3C4();
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = sub_1E38DA520;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return TVAppExtensionHostViewController.init(url:completion:)(v9, v12, v11);
}

- (void)setURL:(id)a3
{
  OUTLINED_FUNCTION_106();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E41FE3C4();
  v8 = v3;
  TVAppExtensionHostViewController.setURL(_:)(v7);

  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
}

- (void)reportWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  TVAppExtensionHostViewController.report(error:)(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  TVAppExtensionHostViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  TVAppExtensionHostViewController.viewWillLayoutSubviews()();
}

- (_TtC8VideosUI32TVAppExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  TVAppExtensionHostViewController.init(nibName:bundle:)();
}

@end