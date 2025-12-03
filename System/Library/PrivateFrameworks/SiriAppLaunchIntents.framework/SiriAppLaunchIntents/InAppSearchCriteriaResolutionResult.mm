@interface InAppSearchCriteriaResolutionResult
+ (id)confirmationRequiredWithInAppSearchCriteriaToConfirm:(id)confirm;
+ (id)disambiguationWithInAppSearchCriteriasToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedInAppSearchCriteria:(id)criteria;
@end

@implementation InAppSearchCriteriaResolutionResult

+ (id)successWithResolvedInAppSearchCriteria:(id)criteria
{
  swift_getObjCClassMetadata();
  criteriaCopy = criteria;
  v5 = static InAppSearchCriteriaResolutionResult.success(with:)(criteriaCopy);

  return v5;
}

+ (id)disambiguationWithInAppSearchCriteriasToDisambiguate:(id)disambiguate
{
  type metadata accessor for InAppSearchCriteria();
  v3 = sub_26618C9B0();
  swift_getObjCClassMetadata();
  v4 = static InAppSearchCriteriaResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithInAppSearchCriteriaToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static InAppSearchCriteriaResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26618922C();
  sub_26618C9B0();
  static InAppSearchCriteriaResolutionResult.disambiguation(with:)();
}

@end