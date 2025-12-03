@interface VRXProtoVisualResponseProvider
- (VRXProtoVisualResponseProvider)init;
- (id)viewControllerForModel:(id)model mode:(int64_t)mode;
- (id)viewForModel:(id)model mode:(int64_t)mode;
- (void)reset;
- (void)viewControllerForModel:(id)model mode:(int64_t)mode completion:(id)completion;
@end

@implementation VRXProtoVisualResponseProvider

- (VRXProtoVisualResponseProvider)init
{
  v6.receiver = self;
  v6.super_class = VRXProtoVisualResponseProvider;
  v2 = [(VRXProtoVisualResponseProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC15SnippetUI_Proto27ProtoVisualResponseProvider);
    provider = v2->_provider;
    v2->_provider = v3;
  }

  return v2;
}

- (id)viewControllerForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  provider = [(VRXProtoVisualResponseProvider *)self provider];
  v8 = [provider viewControllerForModel:modelCopy mode:mode];

  return v8;
}

- (void)viewControllerForModel:(id)model mode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  provider = [(VRXProtoVisualResponseProvider *)self provider];
  [provider viewControllerFor:modelCopy mode:mode completion:completionCopy];
}

- (id)viewForModel:(id)model mode:(int64_t)mode
{
  modelCopy = model;
  provider = [(VRXProtoVisualResponseProvider *)self provider];
  v8 = [provider viewForModel:modelCopy mode:mode overload:0];

  return v8;
}

- (void)reset
{
  provider = [(VRXProtoVisualResponseProvider *)self provider];
  [provider reset];
}

@end