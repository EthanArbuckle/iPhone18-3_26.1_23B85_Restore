@interface VCUIPhoneticVocabularyNavigationViewWrapper
+ (id)createRecordOnlyViewWithVoiceControlLocaleIdentifier:(id)a3 text:(id)a4 completionHandler:(id)a5;
+ (id)createTypeAndRecordViewWithVoiceControlLocaleIdentifier:(id)a3 completionHandler:(id)a4;
- (VCUIPhoneticVocabularyNavigationViewWrapper)init;
@end

@implementation VCUIPhoneticVocabularyNavigationViewWrapper

+ (id)createTypeAndRecordViewWithVoiceControlLocaleIdentifier:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_272434930();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE019createTypeAndRecordD004withfG16LocaleIdentifier17completionHandlerSo16UIViewControllerCSS_ySSSg_SaySSGSgtctFZ_0(v5, v7, sub_2724165D8, v8);

  return v9;
}

+ (id)createRecordOnlyViewWithVoiceControlLocaleIdentifier:(id)a3 text:(id)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_272434930();
  v8 = v7;
  v9 = sub_272434930();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE016createRecordOnlyD004withfG16LocaleIdentifier4text17completionHandlerSo16UIViewControllerCSS_SSySSSg_SaySSGSgtctFZ_0(v6, v8, v9, v11, sub_272416448, v12);

  return v13;
}

- (VCUIPhoneticVocabularyNavigationViewWrapper)init
{
  v3.receiver = self;
  v3.super_class = VCUIPhoneticVocabularyNavigationViewWrapper;
  return [(VCUIPhoneticVocabularyNavigationViewWrapper *)&v3 init];
}

@end