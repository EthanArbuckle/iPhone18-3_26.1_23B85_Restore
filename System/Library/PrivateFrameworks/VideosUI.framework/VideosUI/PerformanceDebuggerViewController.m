@interface PerformanceDebuggerViewController
- (_TtC8VideosUI33PerformanceDebuggerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clear;
- (void)setupWithPlaybackEventsDictionary:(id)a3;
@end

@implementation PerformanceDebuggerViewController

- (_TtC8VideosUI33PerformanceDebuggerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E41852DC();
}

- (void)setupWithPlaybackEventsDictionary:(id)a3
{
  sub_1E3280A90(0, &qword_1ECF41518);
  sub_1E4205C64();
  v4 = self;
  sub_1E41853B4();
}

- (void)clear
{
  v2 = self;
  sub_1E41854D8();
}

@end