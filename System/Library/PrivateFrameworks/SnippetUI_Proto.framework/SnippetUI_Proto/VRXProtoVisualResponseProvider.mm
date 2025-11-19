@interface VRXProtoVisualResponseProvider
- (VRXProtoVisualResponseProvider)init;
- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4;
- (id)viewForModel:(id)a3 mode:(int64_t)a4;
- (void)reset;
- (void)viewControllerForModel:(id)a3 mode:(int64_t)a4 completion:(id)a5;
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

- (id)viewControllerForModel:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  v7 = [(VRXProtoVisualResponseProvider *)self provider];
  v8 = [v7 viewControllerForModel:v6 mode:a4];

  return v8;
}

- (void)viewControllerForModel:(id)a3 mode:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(VRXProtoVisualResponseProvider *)self provider];
  [v10 viewControllerFor:v9 mode:a4 completion:v8];
}

- (id)viewForModel:(id)a3 mode:(int64_t)a4
{
  v6 = a3;
  v7 = [(VRXProtoVisualResponseProvider *)self provider];
  v8 = [v7 viewForModel:v6 mode:a4 overload:0];

  return v8;
}

- (void)reset
{
  v2 = [(VRXProtoVisualResponseProvider *)self provider];
  [v2 reset];
}

@end