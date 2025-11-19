@interface SiriCallAnnouncementProvider
- (void)propertiesDidChangeForConfiguration:(id)a3;
- (void)voiceOverObserver:(id)a3 didChangeEnabled:(BOOL)a4;
@end

@implementation SiriCallAnnouncementProvider

- (void)voiceOverObserver:(id)a3 didChangeEnabled:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1003FF9C0(v6, a4);
  swift_unknownObjectRelease();
}

- (void)propertiesDidChangeForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003FFCFC(v4);
}

@end