@interface UnifiedMessagingSignalProvider
- (void)debounceActiveDownloadButtonDidChange;
- (void)handleAppDidFinishLoading;
- (void)handleDownloadDidStart;
- (void)handleGDPRDidAccept;
- (void)handleNotifAuthStatusDidChange;
@end

@implementation UnifiedMessagingSignalProvider

- (void)debounceActiveDownloadButtonDidChange
{
  selfCopy = self;
  sub_1E3D59FD8();
}

- (void)handleNotifAuthStatusDidChange
{
  selfCopy = self;
  sub_1E3D58F58();
}

- (void)handleAppDidFinishLoading
{
  selfCopy = self;
  sub_1E3D59680();
}

- (void)handleDownloadDidStart
{
  selfCopy = self;
  OUTLINED_FUNCTION_46_45();
  sub_1E3D59FD8();
}

- (void)handleGDPRDidAccept
{
  selfCopy = self;
  OUTLINED_FUNCTION_45_49();
  sub_1E3D59FD8();
}

@end