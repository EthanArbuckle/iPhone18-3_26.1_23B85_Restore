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
  v2 = self;
  sub_1E3D59FD8();
}

- (void)handleNotifAuthStatusDidChange
{
  v2 = self;
  sub_1E3D58F58();
}

- (void)handleAppDidFinishLoading
{
  v2 = self;
  sub_1E3D59680();
}

- (void)handleDownloadDidStart
{
  v2 = self;
  OUTLINED_FUNCTION_46_45();
  sub_1E3D59FD8();
}

- (void)handleGDPRDidAccept
{
  v2 = self;
  OUTLINED_FUNCTION_45_49();
  sub_1E3D59FD8();
}

@end