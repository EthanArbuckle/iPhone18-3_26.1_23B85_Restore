@interface SuggestionResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSuggestionToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSuggestionsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSuggestion:(id)suggestion;
@end

@implementation SuggestionResolutionResult

+ (id)successWithResolvedSuggestion:(id)suggestion
{
  swift_getObjCClassMetadata();
  suggestionCopy = suggestion;
  v5 = sub_266EBF8B4(suggestionCopy);

  return v5;
}

+ (id)disambiguationWithSuggestionsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Suggestion();
  v3 = sub_266EC1E98();
  swift_getObjCClassMetadata();
  v4 = sub_266EBF968(v3);

  return v4;
}

+ (id)confirmationRequiredWithSuggestionToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_266EBFB18(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_266EC1EA8();
  __break(1u);
  return result;
}

@end