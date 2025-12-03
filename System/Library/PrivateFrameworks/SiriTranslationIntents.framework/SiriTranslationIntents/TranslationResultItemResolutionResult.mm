@interface TranslationResultItemResolutionResult
+ (id)confirmationRequiredWithTranslationResultItemToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithTranslationResultItemsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedTranslationResultItem:(id)item;
@end

@implementation TranslationResultItemResolutionResult

+ (id)successWithResolvedTranslationResultItem:(id)item
{
  swift_getObjCClassMetadata();
  itemCopy = item;
  v5 = static TranslationResultItemResolutionResult.success(with:)(itemCopy);

  return v5;
}

+ (id)disambiguationWithTranslationResultItemsToDisambiguate:(id)disambiguate
{
  type metadata accessor for TranslationResultItem();
  v3 = sub_269424288();
  swift_getObjCClassMetadata();
  v4 = static TranslationResultItemResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithTranslationResultItemToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static TranslationResultItemResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_269422694();
  sub_269424288();
  static TranslationResultItemResolutionResult.disambiguation(with:)();
}

@end