@interface SuggestionResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSuggestionToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSuggestionsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSuggestion:(id)a3;
@end

@implementation SuggestionResolutionResult

+ (id)successWithResolvedSuggestion:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266EBF8B4(v4);

  return v5;
}

+ (id)disambiguationWithSuggestionsToDisambiguate:(id)a3
{
  type metadata accessor for Suggestion();
  v3 = sub_266EC1E98();
  swift_getObjCClassMetadata();
  v4 = sub_266EBF968(v3);

  return v4;
}

+ (id)confirmationRequiredWithSuggestionToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_266EBFB18(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

@end