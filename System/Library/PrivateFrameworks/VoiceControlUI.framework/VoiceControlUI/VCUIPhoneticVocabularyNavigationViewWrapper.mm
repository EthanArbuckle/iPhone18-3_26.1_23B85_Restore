@interface VCUIPhoneticVocabularyNavigationViewWrapper
+ (id)createRecordOnlyViewWithVoiceControlLocaleIdentifier:(id)identifier text:(id)text completionHandler:(id)handler;
+ (id)createTypeAndRecordViewWithVoiceControlLocaleIdentifier:(id)identifier completionHandler:(id)handler;
- (VCUIPhoneticVocabularyNavigationViewWrapper)init;
@end

@implementation VCUIPhoneticVocabularyNavigationViewWrapper

+ (id)createTypeAndRecordViewWithVoiceControlLocaleIdentifier:(id)identifier completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = sub_272434930();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE019createTypeAndRecordD004withfG16LocaleIdentifier17completionHandlerSo16UIViewControllerCSS_ySSSg_SaySSGSgtctFZ_0(v5, v7, sub_2724165D8, v8);

  return v9;
}

+ (id)createRecordOnlyViewWithVoiceControlLocaleIdentifier:(id)identifier text:(id)text completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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