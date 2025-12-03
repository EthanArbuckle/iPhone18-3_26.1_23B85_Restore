@interface VRXVisualResponseProvider
+ (void)preloadPlugins;
- (VRXVisualResponseProvider)init;
- (id)viewControllerForModel:(id)model mode:(int64_t)mode;
- (id)viewControllerForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode;
- (id)viewForModel:(id)model mode:(int64_t)mode;
- (id)viewForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode;
- (void)reset;
- (void)viewControllerForModel:(id)model mode:(int64_t)mode completion:(id)completion;
@end

@implementation VRXVisualResponseProvider

- (VRXVisualResponseProvider)init
{
  v6.receiver = self;
  v6.super_class = VRXVisualResponseProvider;
  v2 = [(VRXVisualResponseProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9SnippetUI22VisualResponseProvider);
    provider = v2->_provider;
    v2->_provider = v3;
  }

  return v2;
}

+ (void)preloadPlugins
{
  if (preloadPlugins_once[0] != -1)
  {
    +[VRXVisualResponseProvider preloadPlugins];
  }
}

- (id)viewControllerForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  provider = [(VRXVisualResponseProvider *)self provider];
  v8 = [provider viewControllerForModel:modelCopy mode:mode];

  return v8;
}

- (id)viewControllerForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode
{
  nameCopy = name;
  modelCopy = model;
  provider = [(VRXVisualResponseProvider *)self provider];
  v11 = [provider viewControllerForSnippetModel:modelCopy bundleName:nameCopy mode:mode];

  return v11;
}

- (void)viewControllerForModel:(id)model mode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  provider = [(VRXVisualResponseProvider *)self provider];
  [provider viewControllerFor:modelCopy mode:mode completion:completionCopy];
}

- (id)viewForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  provider = [(VRXVisualResponseProvider *)self provider];
  v8 = [provider viewForModel:modelCopy mode:mode overload:0];

  return v8;
}

- (id)viewForSnippetModel:(id)model bundleName:(id)name mode:(int64_t)mode
{
  nameCopy = name;
  modelCopy = model;
  provider = [(VRXVisualResponseProvider *)self provider];
  v11 = [provider viewForSnippetModel:modelCopy bundleName:nameCopy mode:mode];

  return v11;
}

- (void)reset
{
  provider = [(VRXVisualResponseProvider *)self provider];
  [provider reset];
}

@end