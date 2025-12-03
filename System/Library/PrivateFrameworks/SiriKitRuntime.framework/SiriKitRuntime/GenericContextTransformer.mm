@interface GenericContextTransformer
- (_TtC14SiriKitRuntime25GenericContextTransformer)init;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
@end

@implementation GenericContextTransformer

- (_TtC14SiriKitRuntime25GenericContextTransformer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenericContextTransformer();
  return [(GenericContextTransformer *)&v3 init];
}

- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion
{
  v8 = _Block_copy(completion);
  v8[2](v8, snapshot, metadata);

  _Block_release(v8);
}

@end