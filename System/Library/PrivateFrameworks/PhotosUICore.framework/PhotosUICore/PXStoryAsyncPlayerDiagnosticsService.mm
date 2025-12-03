@interface PXStoryAsyncPlayerDiagnosticsService
- (NSString)title;
- (PXStoryAsyncPlayerDiagnosticsService)initWithItemProviders:(id)providers;
- (void)performAction;
@end

@implementation PXStoryAsyncPlayerDiagnosticsService

- (PXStoryAsyncPlayerDiagnosticsService)initWithItemProviders:(id)providers
{
  sub_1A3C52C70(0, &qword_1EB143168);
  v3 = sub_1A524CA34();
  return StoryAsyncPlayerDiagnosticsService.init(itemProviders:)(v3);
}

- (NSString)title
{
  v2 = sub_1A524C634();

  return v2;
}

- (void)performAction
{
  selfCopy = self;
  sub_1A482246C();
}

@end