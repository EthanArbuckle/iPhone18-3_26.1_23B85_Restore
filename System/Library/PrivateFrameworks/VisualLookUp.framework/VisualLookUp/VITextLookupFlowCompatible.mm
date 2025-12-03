@interface VITextLookupFlowCompatible
- (_TtC12VisualLookUp26VITextLookupFlowCompatible)init;
- (id)lookupTextWithQuery:(id)query completion:(id)completion;
@end

@implementation VITextLookupFlowCompatible

- (_TtC12VisualLookUp26VITextLookupFlowCompatible)init
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54548);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp26VITextLookupFlowCompatible_flow) = sub_1D9C1AB3C(0, sub_1D9C1AC84, 0);
  v4.receiver = self;
  v4.super_class = type metadata accessor for VITextLookupFlowCompatible();
  return [(VITextLookupFlowCompatible *)&v4 init];
}

- (id)lookupTextWithQuery:(id)query completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  queryCopy = query;
  selfCopy = self;
  v9 = sub_1D9C1B248(queryCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v9;
}

@end