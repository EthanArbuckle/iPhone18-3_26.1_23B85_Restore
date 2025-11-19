@interface MTContentKeyRequest
- (MTContentKeyRequest)init;
- (MTContentKeyRequest)initWithKeyIdentifier:(id)a3 adamId:(id)a4 requestType:(int64_t)a5 offlineRequest:(BOOL)a6 secureInvalidationDsid:(id)a7;
- (id)copyWith:(int64_t)a3;
- (id)initFrom:(id)a3 adamId:(id)a4 requestType:(int64_t)a5 offlineRequest:(BOOL)a6;
@end

@implementation MTContentKeyRequest

- (id)initFrom:(id)a3 adamId:(id)a4 requestType:(int64_t)a5 offlineRequest:(BOOL)a6
{
  v6 = a6;
  v9 = sub_1D917820C();
  return ContentKeyRequest.init(from:adamId:requestType:offlineRequest:)(a3, v9, v10, a5, v6);
}

- (MTContentKeyRequest)initWithKeyIdentifier:(id)a3 adamId:(id)a4 requestType:(int64_t)a5 offlineRequest:(BOOL)a6 secureInvalidationDsid:(id)a7
{
  v8 = a6;
  v10 = sub_1D917820C();
  v12 = v11;
  v13 = sub_1D917820C();
  v15 = v14;
  v16 = a7;
  sub_1D8FF943C(v10, v12, v13, v15, a5, v8, a7);
  v18 = v17;

  return v18;
}

- (id)copyWith:(int64_t)a3
{
  v4 = self;
  v5 = sub_1D8FF8470(a3);

  return v5;
}

- (MTContentKeyRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end