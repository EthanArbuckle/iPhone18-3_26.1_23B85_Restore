@interface SurveyContentView.Coordinator
- (_TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator)init;
- (void)surveyQuestionGadget:(id)a3 presentAssetCollection:(id)a4 regionOfInterest:(id)a5;
- (void)surveyQuestionGadget:(id)a3 presentViewController:(id)a4 regionOfInterest:(id)a5;
- (void)surveyQuestionGadgetPresentOneUp:(id)a3 keyAsset:(id)a4 assetCollection:(id)a5 regionOfInterest:(id)a6;
@end

@implementation SurveyContentView.Coordinator

- (void)surveyQuestionGadgetPresentOneUp:(id)a3 keyAsset:(id)a4 assetCollection:(id)a5 regionOfInterest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1A43A5A1C(v11, v12, a6);
}

- (void)surveyQuestionGadget:(id)a3 presentAssetCollection:(id)a4 regionOfInterest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1A43A5B54(v9, a5);
}

- (void)surveyQuestionGadget:(id)a3 presentViewController:(id)a4 regionOfInterest:(id)a5
{
  v8 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a4;
  swift_storeEnumTagMultiPayload();
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_1A43A48C0(v10, a5);

  sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
}

- (_TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end