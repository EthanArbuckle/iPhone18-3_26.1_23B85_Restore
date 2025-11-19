@interface CSDIDSTransport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransport:(id)a3;
- (CSDIDSTransport)initWithDestination:(id)a3;
- (CSDIDSTransport)initWithSocket:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDIDSTransport

- (CSDIDSTransport)initWithSocket:(int)a3
{
  v5.receiver = self;
  v5.super_class = CSDIDSTransport;
  result = [(CSDIDSTransport *)&v5 init];
  if (result)
  {
    result->_type = 1;
    result->_socket = a3;
  }

  return result;
}

- (CSDIDSTransport)initWithDestination:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDIDSTransport;
  v6 = [(CSDIDSTransport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_destination, a3);
    v7->_socket = -1;
  }

  return v7;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p type=%d", objc_opt_class(), self, [(CSDIDSTransport *)self type]];
  v4 = [(CSDIDSTransport *)self type];
  if (v4 == 2)
  {
    v5 = [(CSDIDSTransport *)self destination];
    [v3 appendFormat:@" destination=%@", v5];
  }

  else if (v4 == 1)
  {
    [v3 appendFormat:@" socket=%d", -[CSDIDSTransport socket](self, "socket")];
  }

  [v3 appendFormat:@" initialLinkType=%lu", -[CSDIDSTransport initialLinkType](self, "initialLinkType")];
  v6 = [(CSDIDSTransport *)self remoteDestination];

  if (v6)
  {
    v7 = [(CSDIDSTransport *)self remoteDestination];
    [v3 appendFormat:@" remoteDestination=%@", v7];
  }

  v8 = [(CSDIDSTransport *)self remoteDevice];

  if (v8)
  {
    v9 = [(CSDIDSTransport *)self remoteDevice];
    v10 = [v9 uniqueIDOverride];
    [v3 appendFormat:@" remoteDeviceUniqueIdentifier=%@", v10];
  }

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CSDIDSTransport *)self isEqualToTransport:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTransport:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSTransport *)self type];
  if (v5 == [v4 type] && (v6 = -[CSDIDSTransport socket](self, "socket"), v6 == objc_msgSend(v4, "socket")))
  {
    v7 = [(CSDIDSTransport *)self destination];
    v8 = [v4 destination];
    if (TUStringsAreEqualOrNil() && (v9 = -[CSDIDSTransport initialLinkType](self, "initialLinkType"), v9 == [v4 initialLinkType]))
    {
      v10 = [(CSDIDSTransport *)self remoteDestination];
      v11 = [v4 remoteDestination];
      if (TUObjectsAreEqualOrNil())
      {
        v12 = [(CSDIDSTransport *)self remoteDevice];
        v13 = [v12 uniqueIDOverride];
        v14 = [v4 remoteDevice];
        v15 = [v14 uniqueIDOverride];
        v16 = TUStringsAreEqualOrNil();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(CSDIDSTransport *)self type];
  v4 = ([(CSDIDSTransport *)self socket]^ v3);
  v5 = [(CSDIDSTransport *)self destination];
  v6 = [v5 hash];
  v7 = v6 ^ [(CSDIDSTransport *)self initialLinkType]^ v4;
  v8 = [(CSDIDSTransport *)self remoteDestination];
  v9 = [v8 hash];
  v10 = [(CSDIDSTransport *)self remoteDevice];
  v11 = [v10 uniqueIDOverride];
  v12 = v9 ^ [v11 hash];

  return v7 ^ v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(CSDIDSTransport *)self type];
  if (v5 == 2)
  {
    v7 = [objc_opt_class() allocWithZone:a3];
    v8 = [(CSDIDSTransport *)self destination];
    v6 = [v7 initWithDestination:v8];
  }

  else if (v5 == 1)
  {
    v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSocket:", -[CSDIDSTransport socket](self, "socket")}];
  }

  else
  {
    v6 = 0;
  }

  [v6 setInitialLinkType:{-[CSDIDSTransport initialLinkType](self, "initialLinkType")}];
  v9 = [(CSDIDSTransport *)self remoteDestination];
  [v6 setRemoteDestination:v9];

  v10 = [(CSDIDSTransport *)self remoteDevice];
  [v6 setRemoteDevice:v10];

  return v6;
}

@end