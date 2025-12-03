@interface ICSuzeLeaseSessionConfiguration
- (ICSuzeLeaseSessionConfiguration)initWithRequestContext:(id)context leaseID:(id)d mediaType:(int64_t)type;
@end

@implementation ICSuzeLeaseSessionConfiguration

- (ICSuzeLeaseSessionConfiguration)initWithRequestContext:(id)context leaseID:(id)d mediaType:(int64_t)type
{
  contextCopy = context;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ICSuzeLeaseSessionConfiguration;
  v10 = [(ICSuzeLeaseSessionConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [contextCopy copy];
    requestContext = v10->_requestContext;
    v10->_requestContext = v11;

    objc_storeStrong(&v10->_leaseID, d);
    v10->_mediaType = type;
  }

  return v10;
}

@end