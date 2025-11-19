@interface ICSuzeLeaseSessionConfiguration
- (ICSuzeLeaseSessionConfiguration)initWithRequestContext:(id)a3 leaseID:(id)a4 mediaType:(int64_t)a5;
@end

@implementation ICSuzeLeaseSessionConfiguration

- (ICSuzeLeaseSessionConfiguration)initWithRequestContext:(id)a3 leaseID:(id)a4 mediaType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = ICSuzeLeaseSessionConfiguration;
  v10 = [(ICSuzeLeaseSessionConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    requestContext = v10->_requestContext;
    v10->_requestContext = v11;

    objc_storeStrong(&v10->_leaseID, a4);
    v10->_mediaType = a5;
  }

  return v10;
}

@end