@interface MediaStreamResolutionResult
+ (id)confirmationRequiredWithMediaStreamToConfirm:(id)a3;
+ (id)disambiguationWithMediaStreamsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedMediaStream:(id)a3;
@end

@implementation MediaStreamResolutionResult

+ (id)successWithResolvedMediaStream:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B32628(v4);

  return v5;
}

+ (id)disambiguationWithMediaStreamsToDisambiguate:(id)a3
{
  type metadata accessor for MediaStream();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B3268C(v3);

  return v4;
}

+ (id)confirmationRequiredWithMediaStreamToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B32784(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B32DB8();
}

@end