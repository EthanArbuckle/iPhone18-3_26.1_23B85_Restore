@interface WorkspaceDownloadObserver
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WorkspaceDownloadObserver

- (void)startObserving
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];

  [v3 addObserver:self];
}

- (void)stopObserving
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];

  [v3 removeObserver:self];
}

@end