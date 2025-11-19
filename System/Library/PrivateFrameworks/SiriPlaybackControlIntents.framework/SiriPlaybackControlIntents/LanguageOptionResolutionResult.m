@interface LanguageOptionResolutionResult
+ (id)confirmationRequiredWithLanguageOptionToConfirm:(id)a3;
+ (id)disambiguationWithLanguageOptionsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedLanguageOption:(id)a3;
@end

@implementation LanguageOptionResolutionResult

+ (id)successWithResolvedLanguageOption:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2F5B4(v4);

  return v5;
}

+ (id)disambiguationWithLanguageOptionsToDisambiguate:(id)a3
{
  type metadata accessor for LanguageOption();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B2F618(v3);

  return v4;
}

+ (id)confirmationRequiredWithLanguageOptionToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B2F710(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B2FD34();
}

@end