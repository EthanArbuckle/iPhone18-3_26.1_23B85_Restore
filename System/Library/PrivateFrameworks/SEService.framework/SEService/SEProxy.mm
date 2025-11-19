@interface SEProxy
+ (id)withEndpoint:(id)a3;
+ (id)withSession:(id)a3 seid:(id)a4;
@end

@implementation SEProxy

+ (id)withSession:(id)a3 seid:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SEProxyWithManagerSession);
  [(SEProxyWithManagerSession *)v7 setSession:v6 seid:v5];

  return v7;
}

+ (id)withEndpoint:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SEProxyWithRemoteTransceiver);
  v5 = [objc_alloc(MEMORY[0x1E69C8760]) initWithListenerEndpoint:v3];

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