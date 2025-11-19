@interface PKIPP
+ (id)makeEmptyResponse;
+ (id)requestFromData:(id)a3;
+ (id)responseFromData:(id)a3;
+ (id)responseFromRequest:(id)a3;
@end

@implementation PKIPP

+ (id)responseFromRequest:(id)a3
{
  v3 = a3;
  v4 = [[PK_ipp_response_t alloc] initWithRequest:v3];

  return v4;
}

+ (id)requestFromData:(id)a3
{
  v3 = a3;
  v4 = [(PK_ipp_t *)[PK_ipp_request_t alloc] initWithData:v3];

  return v4;
}

+ (id)responseFromData:(id)a3
{
  v3 = a3;
  v4 = [(PK_ipp_t *)[PK_ipp_response_t alloc] initWithData:v3];

  return v4;
}

+ (id)makeEmptyResponse
{
  v2 = objc_alloc_init(PK_ipp_response_t);

  return v2;
}

@end