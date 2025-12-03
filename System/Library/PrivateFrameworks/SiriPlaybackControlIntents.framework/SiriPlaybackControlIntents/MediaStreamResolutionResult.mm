@interface MediaStreamResolutionResult
+ (id)confirmationRequiredWithMediaStreamToConfirm:(id)confirm;
+ (id)disambiguationWithMediaStreamsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedMediaStream:(id)stream;
@end

@implementation MediaStreamResolutionResult

+ (id)successWithResolvedMediaStream:(id)stream
{
  swift_getObjCClassMetadata();
  streamCopy = stream;
  v5 = sub_268B32628(streamCopy);

  return v5;
}

+ (id)disambiguationWithMediaStreamsToDisambiguate:(id)disambiguate
{
  type metadata accessor for MediaStream();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B3268C(v3);

  return v4;
}

+ (id)confirmationRequiredWithMediaStreamToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B32784(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B32DB8();
}

@end