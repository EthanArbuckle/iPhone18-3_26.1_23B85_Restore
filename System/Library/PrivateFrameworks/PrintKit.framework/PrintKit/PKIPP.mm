@interface PKIPP
+ (id)makeEmptyResponse;
+ (id)requestFromData:(id)data;
+ (id)responseFromData:(id)data;
+ (id)responseFromRequest:(id)request;
@end

@implementation PKIPP

+ (id)responseFromRequest:(id)request
{
  requestCopy = request;
  v4 = [[PK_ipp_response_t alloc] initWithRequest:requestCopy];

  return v4;
}

+ (id)requestFromData:(id)data
{
  dataCopy = data;
  v4 = [(PK_ipp_t *)[PK_ipp_request_t alloc] initWithData:dataCopy];

  return v4;
}

+ (id)responseFromData:(id)data
{
  dataCopy = data;
  v4 = [(PK_ipp_t *)[PK_ipp_response_t alloc] initWithData:dataCopy];

  return v4;
}

+ (id)makeEmptyResponse
{
  v2 = objc_alloc_init(PK_ipp_response_t);

  return v2;
}

@end