@interface WFTagFactory
+ (id)defaultFactory;
+ (id)tagsForWebpage:(id)a3;
- (WFTagFactory)init;
- (id)tagWithClass:(Class)a3 webpage:(id)a4;
- (void)dealloc;
@end

@implementation WFTagFactory

+ (id)tagsForWebpage:(id)a3
{
  v4 = +[WFTagFactory defaultFactory];
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [v4 tagWithClass:objc_opt_class() webpage:a3];
  v7 = [v4 tagWithClass:objc_opt_class() webpage:a3];
  v8 = [v4 tagWithClass:objc_opt_class() webpage:a3];
  if (v6)
  {
    [v5 appendString:v6];
  }

  if (v7)
  {
    [v5 appendString:@"\n"];
    [v5 appendString:v7];
  }

  if (v8)
  {
    [v5 appendString:@"\n"];
    [v5 appendString:v8];
  }

  return v5;
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

- (id)tagWithClass:(Class)a3 webpage:(id)a4
{
  v7 = NSStringFromClass(a3);
  v8 = [(NSMutableDictionary *)self->sharedTags objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(a3);
    [(NSMutableDictionary *)self->sharedTags setObject:v8 forKey:v7];
  }

  v9 = [v8 tagWithWebpage:a4];
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