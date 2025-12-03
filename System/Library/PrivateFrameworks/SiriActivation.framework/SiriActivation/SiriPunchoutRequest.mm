@interface SiriPunchoutRequest
- (SiriPunchoutRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SiriPunchoutRequest

- (SiriPunchoutRequest)init
{
  v3.receiver = self;
  v3.super_class = SiriPunchoutRequest;
  result = [(SiriPunchoutRequest *)&v3 init];
  if (result)
  {
    result->_punchoutStyle = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SiriPunchoutRequest);
  bundleIdentifier = [(SiriPunchoutRequest *)self bundleIdentifier];
  [(SiriPunchoutRequest *)v4 setBundleIdentifier:bundleIdentifier];

  v6 = [(SiriPunchoutRequest *)self url];
  [(SiriPunchoutRequest *)v4 setUrl:v6];

  [(SiriPunchoutRequest *)v4 setPunchoutStyle:[(SiriPunchoutRequest *)self punchoutStyle]];
  return v4;
}

@end