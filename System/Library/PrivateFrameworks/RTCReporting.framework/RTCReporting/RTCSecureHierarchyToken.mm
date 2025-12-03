@interface RTCSecureHierarchyToken
- (RTCSecureHierarchyToken)initWithCoder:(id)coder;
- (RTCSecureHierarchyToken)initWithToken:(id)token level:(int)level;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTCSecureHierarchyToken

- (RTCSecureHierarchyToken)initWithToken:(id)token level:(int)level
{
  v8.receiver = self;
  v8.super_class = RTCSecureHierarchyToken;
  v6 = [(RTCSecureHierarchyToken *)&v8 init];
  if (v6)
  {
    v6->_token = [token copy];
    v6->_level = level;
  }

  return v6;
}

- (RTCSecureHierarchyToken)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RTCSecureHierarchyToken;
  v4 = [(RTCSecureHierarchyToken *)&v6 init];
  if (v4)
  {
    v4->_token = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"token", "copy"}];
    v4->_level = [coder decodeInt32ForKey:@"level"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RTCSecureHierarchyToken;
  [(RTCSecureHierarchyToken *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_token forKey:@"token"];
  level = self->_level;

  [coder encodeInt32:level forKey:@"level"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTCSecureHierarchyToken allocWithZone:zone];
  token = self->_token;
  level = self->_level;

  return [(RTCSecureHierarchyToken *)v4 initWithToken:token level:level];
}

@end