@interface SWMessageSecurityOrigin
- (SWMessageSecurityOrigin)initWithProtocol:(id)a3 host:(id)a4 request:(id)a5;
@end

@implementation SWMessageSecurityOrigin

- (SWMessageSecurityOrigin)initWithProtocol:(id)a3 host:(id)a4 request:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SWMessageSecurityOrigin;
  v11 = [(SWMessageSecurityOrigin *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    protocol = v11->_protocol;
    v11->_protocol = v12;

    v14 = [v9 copy];
    host = v11->_host;
    v11->_host = v14;

    v16 = [v10 copy];
    request = v11->_request;
    v11->_request = v16;
  }

  return v11;
}

@end