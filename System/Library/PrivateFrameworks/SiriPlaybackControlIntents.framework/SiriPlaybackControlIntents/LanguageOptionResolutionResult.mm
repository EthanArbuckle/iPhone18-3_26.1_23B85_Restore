@interface LanguageOptionResolutionResult
+ (id)confirmationRequiredWithLanguageOptionToConfirm:(id)confirm;
+ (id)disambiguationWithLanguageOptionsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedLanguageOption:(id)option;
@end

@implementation LanguageOptionResolutionResult

+ (id)successWithResolvedLanguageOption:(id)option
{
  swift_getObjCClassMetadata();
  optionCopy = option;
  v5 = sub_268B2F5B4(optionCopy);

  return v5;
}

+ (id)disambiguationWithLanguageOptionsToDisambiguate:(id)disambiguate
{
  type metadata accessor for LanguageOption();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2F618(v3);

  return v4;
}

+ (id)confirmationRequiredWithLanguageOptionToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B2F710(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2FD34();
}

@end