@interface SEProxy
+ (id)withEndpoint:(id)endpoint;
+ (id)withSession:(id)session seid:(id)seid;
@end

@implementation SEProxy

+ (id)withSession:(id)session seid:(id)seid
{
  seidCopy = seid;
  sessionCopy = session;
  v7 = objc_alloc_init(SEProxyWithManagerSession);
  [(SEProxyWithManagerSession *)v7 setSession:sessionCopy seid:seidCopy];

  return v7;
}

+ (id)withEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = objc_alloc_init(SEProxyWithRemoteTransceiver);
  v5 = [objc_alloc(MEMORY[0x1E69C8760]) initWithListenerEndpoint:endpointCopy];

  if (v5)
  {
    [(SEProxyWithRemoteTransceiver *)v4 setRemoteTransceiver:v5];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end