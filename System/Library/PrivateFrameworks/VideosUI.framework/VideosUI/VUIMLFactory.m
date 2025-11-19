@interface VUIMLFactory
+ (id)sharedInstance;
+ (void)_registerElements;
- (VUIMLFactory)init;
- (id)URLForResource:(id)a3;
- (id)_URLForResource:(id)a3 inBundle:(id)a4;
- (id)imageForResource:(id)a3;
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

- (id)URLForResource:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v6 = [(VUIMLFactory *)self _URLForResource:v4 inBundle:v5];
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AAE8] mainBundle];
      v6 = [(VUIMLFactory *)self _URLForResource:v4 inBundle:v7];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForResource:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v6 = 0;
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v5 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:v4];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [MEMORY[0x1E69DCAB8] imageNamed:v3 inBundle:v7];

    if (v6)
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  }

  v6 = v5;
LABEL_6:

LABEL_7:

  return v6;
}

- (id)_URLForResource:(id)a3 inBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 pathForResource:v5 ofType:@"png"];
  if (!v7)
  {
    v7 = [v6 pathForResource:v5 ofType:@"jpeg"];
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