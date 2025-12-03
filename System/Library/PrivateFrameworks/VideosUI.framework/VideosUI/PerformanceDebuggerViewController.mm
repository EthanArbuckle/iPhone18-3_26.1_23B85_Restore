@interface PerformanceDebuggerViewController
- (_TtC8VideosUI33PerformanceDebuggerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)clear;
- (void)setupWithPlaybackEventsDictionary:(id)dictionary;
@end

@implementation PerformanceDebuggerViewController

- (_TtC8VideosUI33PerformanceDebuggerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E41852DC();
}

- (void)setupWithPlaybackEventsDictionary:(id)dictionary
{
  sub_1E3280A90(0, &qword_1ECF41518);
  sub_1E4205C64();
  selfCopy = self;
  sub_1E41853B4();
}

- (void)clear
{
  selfCopy = self;
  sub_1E41854D8();
}

@end