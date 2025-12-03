@interface SWMessageSecurityOrigin
- (SWMessageSecurityOrigin)initWithProtocol:(id)protocol host:(id)host request:(id)request;
@end

@implementation SWMessageSecurityOrigin

- (SWMessageSecurityOrigin)initWithProtocol:(id)protocol host:(id)host request:(id)request
{
  protocolCopy = protocol;
  hostCopy = host;
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = SWMessageSecurityOrigin;
  v11 = [(SWMessageSecurityOrigin *)&v19 init];
  if (v11)
  {
    v12 = [protocolCopy copy];
    protocol = v11->_protocol;
    v11->_protocol = v12;

    v14 = [hostCopy copy];
    host = v11->_host;
    v11->_host = v14;

    v16 = [requestCopy copy];
    request = v11->_request;
    v11->_request = v16;
  }

  return v11;
}

@end