@interface SBUISFloatingDockRemoteContentScene
- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error;
- (void)requestActionForFloatingDockRemoteContentScene:(id)scene;
- (void)requestUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)context;
@end

@implementation SBUISFloatingDockRemoteContentScene

- (void)requestUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)context
{
  contextCopy = context;
  floatingDockRemoteContentClientComponent = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [floatingDockRemoteContentClientComponent requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:contextCopy];
}

- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error
{
  errorCopy = error;
  hostCopy = host;
  floatingDockRemoteContentClientComponent = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [floatingDockRemoteContentClientComponent completeContextRequestUpdateFromHost:hostCopy withError:errorCopy];
}

- (void)requestActionForFloatingDockRemoteContentScene:(id)scene
{
  sceneCopy = scene;
  floatingDockRemoteContentClientComponent = [(UIScene *)self floatingDockRemoteContentClientComponent];
  [floatingDockRemoteContentClientComponent requestActionForFloatingDockRemoteContentScene:sceneCopy];
}

@end