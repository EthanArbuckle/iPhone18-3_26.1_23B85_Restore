@interface TranslationResultItemResolutionResult
+ (id)confirmationRequiredWithTranslationResultItemToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithTranslationResultItemsToDisambiguate:(id)a3;
+ (id)successWithResolvedTranslationResultItem:(id)a3;
@end

@implementation TranslationResultItemResolutionResult

+ (id)successWithResolvedTranslationResultItem:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static TranslationResultItemResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithTranslationResultItemsToDisambiguate:(id)a3
{
  type metadata accessor for TranslationResultItem();
  v3 = sub_269424288();
  swift_getObjCClassMetadata();
  v4 = static TranslationResultItemResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithTranslationResultItemToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static TranslationResultItemResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_269422694();
  sub_269424288();
  static TranslationResultItemResolutionResult.disambiguation(with:)();
}

@end