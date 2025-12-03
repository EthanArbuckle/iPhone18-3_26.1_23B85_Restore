@interface WFTagFactory
+ (id)defaultFactory;
+ (id)tagsForWebpage:(id)webpage;
- (WFTagFactory)init;
- (id)tagWithClass:(Class)class webpage:(id)webpage;
- (void)dealloc;
@end

@implementation WFTagFactory

+ (id)tagsForWebpage:(id)webpage
{
  v4 = +[WFTagFactory defaultFactory];
  string = [MEMORY[0x277CCAB68] string];
  v6 = [v4 tagWithClass:objc_opt_class() webpage:webpage];
  v7 = [v4 tagWithClass:objc_opt_class() webpage:webpage];
  v8 = [v4 tagWithClass:objc_opt_class() webpage:webpage];
  if (v6)
  {
    [string appendString:v6];
  }

  if (v7)
  {
    [string appendString:@"\n"];
    [string appendString:v7];
  }

  if (v8)
  {
    [string appendString:@"\n"];
    [string appendString:v8];
  }

  return string;
}

+ (id)defaultFactory
{
  if (defaultFactory_TagFactory)
  {
    v2 = defaultFactory_TagFactory;
    return defaultFactory_TagFactory;
  }

  else
  {
    objc_opt_class();
    result = objc_opt_new();
    defaultFactory_TagFactory = result;
  }

  return result;
}

- (WFTagFactory)init
{
  v4.receiver = self;
  v4.super_class = WFTagFactory;
  v2 = [(WFTagFactory *)&v4 init];
  if (v2)
  {
    v2->sharedTags = objc_opt_new();
  }

  return v2;
}

- (id)tagWithClass:(Class)class webpage:(id)webpage
{
  v7 = NSStringFromClass(class);
  v8 = [(NSMutableDictionary *)self->sharedTags objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(class);
    [(NSMutableDictionary *)self->sharedTags setObject:v8 forKey:v7];
  }

  v9 = [v8 tagWithWebpage:webpage];
  v10 = v9;
  if (v9)
  {
    [v9 insertString:@"[ " atIndex:0];
    [v10 appendString:@" ]"];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFTagFactory;
  [(WFTagFactory *)&v3 dealloc];
}

@end