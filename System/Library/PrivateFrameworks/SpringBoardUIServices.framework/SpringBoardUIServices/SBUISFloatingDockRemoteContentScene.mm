@interface SBUISFloatingDockRemoteContentScene
- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4;
- (void)requestActionForFloatingDockRemoteContentScene:(id)a3;
- (void)requestUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)a3;
@end

@implementation SBUISFloatingDockRemoteContentScene

- (void)requestUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)a3
{
  v4 = a3;
  v5 = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [v5 requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:v4];
}

- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [v8 completeContextRequestUpdateFromHost:v7 withError:v6];
}

- (void)requestActionForFloatingDockRemoteContentScene:(id)a3
{
  v4 = a3;
  v5 = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [v5 requestActionForFloatingDockRemoteContentScene:v4];
}

@end