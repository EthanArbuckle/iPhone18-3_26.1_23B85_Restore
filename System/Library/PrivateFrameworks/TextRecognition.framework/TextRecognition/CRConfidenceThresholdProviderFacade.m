@interface CRConfidenceThresholdProviderFacade
- (_TtC15TextRecognition35CRConfidenceThresholdProviderFacade)init;
- (id)thresholdsForTextRegion:(id)a3 withLocale:(id)a4;
@end

@implementation CRConfidenceThresholdProviderFacade

- (id)thresholdsForTextRegion:(id)a3 withLocale:(id)a4
{
  if (a4)
  {
    v6 = sub_1B429FB98();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(&self->super.isa + OBJC_IVAR____TtC15TextRecognition35CRConfidenceThresholdProviderFacade_thresholdsForTextRegionBlock);
  swift_unknownObjectRetain();
  v10 = self;
  v11 = v9(a3, v6, v8);
  swift_unknownObjectRelease();

  return v11;
}

- (_TtC15TextRecognition35CRConfidenceThresholdProviderFacade)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end