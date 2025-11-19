@interface RTCSecureHierarchyToken
- (RTCSecureHierarchyToken)initWithCoder:(id)a3;
- (RTCSecureHierarchyToken)initWithToken:(id)a3 level:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTCSecureHierarchyToken

- (RTCSecureHierarchyToken)initWithToken:(id)a3 level:(int)a4
{
  v8.receiver = self;
  v8.super_class = RTCSecureHierarchyToken;
  v6 = [(RTCSecureHierarchyToken *)&v8 init];
  if (v6)
  {
    v6->_token = [a3 copy];
    v6->_level = a4;
  }

  return v6;
}

- (RTCSecureHierarchyToken)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RTCSecureHierarchyToken;
  v4 = [(RTCSecureHierarchyToken *)&v6 init];
  if (v4)
  {
    v4->_token = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"token", "copy"}];
    v4->_level = [a3 decodeInt32ForKey:@"level"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RTCSecureHierarchyToken;
  [(RTCSecureHierarchyToken *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_token forKey:@"token"];
  level = self->_level;

  [a3 encodeInt32:level forKey:@"level"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTCSecureHierarchyToken allocWithZone:a3];
  token = self->_token;
  level = self->_level;

  return [(RTCSecureHierarchyToken *)v4 initWithToken:token level:level];
}

@end