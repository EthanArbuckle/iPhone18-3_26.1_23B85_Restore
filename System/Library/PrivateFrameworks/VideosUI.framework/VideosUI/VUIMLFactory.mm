@interface VUIMLFactory
+ (id)sharedInstance;
+ (void)_registerElements;
- (VUIMLFactory)init;
- (id)URLForResource:(id)resource;
- (id)_URLForResource:(id)resource inBundle:(id)bundle;
- (id)imageForResource:(id)resource;
@end

@implementation VUIMLFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_26 != -1)
  {
    +[VUIMLFactory sharedInstance];
  }

  v3 = sharedInstance_factory;

  return v3;
}

void __30__VUIMLFactory_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_factory;
  sharedInstance_factory = v0;
}

- (VUIMLFactory)init
{
  v4.receiver = self;
  v4.super_class = VUIMLFactory;
  v2 = [(VUIMLFactory *)&v4 init];
  if (v2)
  {
    +[VUIMLFactory _registerElements];
  }

  return v2;
}

+ (void)_registerElements
{
  [MEMORY[0x1E69D5938] registerIKClass:objc_opt_class() forElementName:@"confirmationCardTemplate" elementType:4037 dependent:0];
  [MEMORY[0x1E69D5938] registerIKClass:objc_opt_class() forElementName:@"upsellOfferTemplate" elementType:4030 dependent:0];
  [MEMORY[0x1E69D5938] registerIKClass:objc_opt_class() forElementName:*MEMORY[0x1E69D59D8] elementType:36 dependent:0];
  [MEMORY[0x1E69D5938] registerIKClass:objc_opt_class() forElementName:@"timeline" elementType:4020 dependent:0];
  v2 = MEMORY[0x1E69D5938];
  v3 = objc_opt_class();

  [v2 registerIKClass:v3 forElementName:@"event" elementType:4021 dependent:0];
}

- (id)URLForResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy length])
  {
    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v6 = [(VUIMLFactory *)self _URLForResource:resourceCopy inBundle:vui_videosUIBundle];
    if (!v6)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v6 = [(VUIMLFactory *)self _URLForResource:resourceCopy inBundle:mainBundle];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForResource:(id)resource
{
  resourceCopy = resource;
  if (![resourceCopy length])
  {
    v6 = 0;
    goto LABEL_7;
  }

  vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v5 = [MEMORY[0x1E69DCAB8] imageNamed:resourceCopy inBundle:vui_videosUIBundle];
  if (!v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [MEMORY[0x1E69DCAB8] imageNamed:resourceCopy inBundle:mainBundle];

    if (v6)
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:resourceCopy];
  }

  v6 = v5;
LABEL_6:

LABEL_7:

  return v6;
}

- (id)_URLForResource:(id)resource inBundle:(id)bundle
{
  resourceCopy = resource;
  bundleCopy = bundle;
  v7 = [bundleCopy pathForResource:resourceCopy ofType:@"png"];
  if (!v7)
  {
    v7 = [bundleCopy pathForResource:resourceCopy ofType:@"jpeg"];
  }

  if ([v7 length])
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end