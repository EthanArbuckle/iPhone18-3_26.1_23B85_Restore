@interface SearchUIPlayVideoHandler
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIPlayVideoHandler

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  commandCopy = command;
  v5 = [SearchUIMediaPlayerViewController alloc];
  v6 = MEMORY[0x1E69CA320];
  v7 = [commandCopy url];

  v8 = [v6 punchoutWithURL:v7];
  v9 = [(SearchUIMediaPlayerViewController *)v5 initWithDestination:v8];

  return v9;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  viewController = [(SearchUICommandHandler *)self viewController];
  sourceView = [environmentCopy sourceView];

  [viewController showFullScreenPresentationFromView:sourceView completion:0];
}

@end