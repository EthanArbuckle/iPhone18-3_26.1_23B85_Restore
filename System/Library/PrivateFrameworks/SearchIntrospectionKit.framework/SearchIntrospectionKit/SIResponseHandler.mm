@interface SIResponseHandler
+ (void)handleSpotlightResponse:(id)response forQuery:(id)query;
- (SIResponseHandler)init;
@end

@implementation SIResponseHandler

+ (void)handleSpotlightResponse:(id)response forQuery:(id)query
{
  responseCopy = response;
  queryCopy = query;
  v7 = sub_264E89854();
  v9 = v8;

  v10 = sub_264E899D4();
  v12 = v11;

  _sSo17SIResponseHandlerC22SearchIntrospectionKitE23handleSpotlightResponse_8forQueryy10Foundation4DataV_SStFZ_0(v7, v9, v10, v12);

  sub_264E658D4(v7, v9);
}

- (SIResponseHandler)init
{
  v3.receiver = self;
  v3.super_class = SIResponseHandler;
  return [(SIResponseHandler *)&v3 init];
}

@end