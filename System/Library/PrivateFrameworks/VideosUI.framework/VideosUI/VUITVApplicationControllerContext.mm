@interface VUITVApplicationControllerContext
- (VUITVApplicationControllerContext)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUITVApplicationControllerContext

- (VUITVApplicationControllerContext)init
{
  v6.receiver = self;
  v6.super_class = VUITVApplicationControllerContext;
  v2 = [(VUITVApplicationControllerContext *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    launchOptions = v2->_launchOptions;
    v2->_launchOptions = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VUITVApplicationControllerContext allocWithZone:?]];
  javaScriptApplicationURL = [(VUITVApplicationControllerContext *)self javaScriptApplicationURL];
  [(VUITVApplicationControllerContext *)v4 setJavaScriptApplicationURL:javaScriptApplicationURL];

  launchOptions = [(VUITVApplicationControllerContext *)self launchOptions];
  [(VUITVApplicationControllerContext *)v4 setLaunchOptions:launchOptions];

  return v4;
}

@end