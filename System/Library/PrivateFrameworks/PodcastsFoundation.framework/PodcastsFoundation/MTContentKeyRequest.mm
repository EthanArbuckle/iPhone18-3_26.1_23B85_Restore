@interface MTContentKeyRequest
- (MTContentKeyRequest)init;
- (MTContentKeyRequest)initWithKeyIdentifier:(id)identifier adamId:(id)id requestType:(int64_t)type offlineRequest:(BOOL)request secureInvalidationDsid:(id)dsid;
- (id)copyWith:(int64_t)with;
- (id)initFrom:(id)from adamId:(id)id requestType:(int64_t)type offlineRequest:(BOOL)request;
@end

@implementation MTContentKeyRequest

- (id)initFrom:(id)from adamId:(id)id requestType:(int64_t)type offlineRequest:(BOOL)request
{
  requestCopy = request;
  v9 = sub_1D917820C();
  return ContentKeyRequest.init(from:adamId:requestType:offlineRequest:)(from, v9, v10, type, requestCopy);
}

- (MTContentKeyRequest)initWithKeyIdentifier:(id)identifier adamId:(id)id requestType:(int64_t)type offlineRequest:(BOOL)request secureInvalidationDsid:(id)dsid
{
  requestCopy = request;
  v10 = sub_1D917820C();
  v12 = v11;
  v13 = sub_1D917820C();
  v15 = v14;
  dsidCopy = dsid;
  sub_1D8FF943C(v10, v12, v13, v15, type, requestCopy, dsid);
  v18 = v17;

  return v18;
}

- (id)copyWith:(int64_t)with
{
  selfCopy = self;
  v5 = sub_1D8FF8470(with);

  return v5;
}

- (MTContentKeyRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end