@interface SUScriptVolumeViewController
- (id)newNativeViewController;
@end

@implementation SUScriptVolumeViewController

- (id)newNativeViewController
{
  v3 = [-[SUScriptObject viewControllerFactory](self "viewControllerFactory")];
  [v3 setClientInterface:{-[SUScriptObject clientInterface](self, "clientInterface")}];
  return v3;
}

@end