@interface IPPEndpoint
- (IPPEndpoint)initWithSession:(id)session endpoint:(id)endpoint;
@end

@implementation IPPEndpoint

- (IPPEndpoint)initWithSession:(id)session endpoint:(id)endpoint
{
  sessionCopy = session;
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = IPPEndpoint;
  v9 = [(IPPEndpoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_endpoint, endpoint);
  }

  return v10;
}

@end