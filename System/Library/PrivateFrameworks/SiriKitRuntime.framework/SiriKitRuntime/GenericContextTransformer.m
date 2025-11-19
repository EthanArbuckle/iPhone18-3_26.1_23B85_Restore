@interface GenericContextTransformer
- (_TtC14SiriKitRuntime25GenericContextTransformer)init;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
@end

@implementation GenericContextTransformer

- (_TtC14SiriKitRuntime25GenericContextTransformer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericContextTransformer();
  return [(GenericContextTransformer *)&v3 init];
}

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v8[2](v8, a3, a4);

  _Block_release(v8);
}

@end