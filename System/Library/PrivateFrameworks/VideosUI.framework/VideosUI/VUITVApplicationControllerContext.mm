@interface VUITVApplicationControllerContext
- (VUITVApplicationControllerContext)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUITVApplicationControllerContext

- (VUITVApplicationControllerContext)init
{
  v6.receiver = self;
  v6.super_class = VUITVApplicationControllerContext;
  v2 = [(VUITVApplicationControllerContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    launchOptions = v2->_launchOptions;
    v2->_launchOptions = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VUITVApplicationControllerContext allocWithZone:?]];
  v5 = [(VUITVApplicationControllerContext *)self javaScriptApplicationURL];
  [(VUITVApplicationControllerContext *)v4 setJavaScriptApplicationURL:v5];

  v6 = [(VUITVApplicationControllerContext *)self launchOptions];
  [(VUITVApplicationControllerContext *)v4 setLaunchOptions:v6];

  return v4;
}

@end