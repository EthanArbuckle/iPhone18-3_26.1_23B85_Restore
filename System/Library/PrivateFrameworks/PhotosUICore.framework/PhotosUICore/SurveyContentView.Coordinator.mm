@interface SurveyContentView.Coordinator
- (_TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator)init;
- (void)surveyQuestionGadget:(id)gadget presentAssetCollection:(id)collection regionOfInterest:(id)interest;
- (void)surveyQuestionGadget:(id)gadget presentViewController:(id)controller regionOfInterest:(id)interest;
- (void)surveyQuestionGadgetPresentOneUp:(id)up keyAsset:(id)asset assetCollection:(id)collection regionOfInterest:(id)interest;
@end

@implementation SurveyContentView.Coordinator

- (void)surveyQuestionGadgetPresentOneUp:(id)up keyAsset:(id)asset assetCollection:(id)collection regionOfInterest:(id)interest
{
  upCopy = up;
  assetCopy = asset;
  collectionCopy = collection;
  interestCopy = interest;
  selfCopy = self;
  sub_1A43A5A1C(assetCopy, collectionCopy, interest);
}

- (void)surveyQuestionGadget:(id)gadget presentAssetCollection:(id)collection regionOfInterest:(id)interest
{
  gadgetCopy = gadget;
  collectionCopy = collection;
  interestCopy = interest;
  selfCopy = self;
  sub_1A43A5B54(collectionCopy, interest);
}

- (void)surveyQuestionGadget:(id)gadget presentViewController:(id)controller regionOfInterest:(id)interest
{
  v8 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = controller;
  swift_storeEnumTagMultiPayload();
  controllerCopy = controller;
  interestCopy = interest;
  selfCopy = self;
  sub_1A43A48C0(v10, interest);

  sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
}

- (_TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end