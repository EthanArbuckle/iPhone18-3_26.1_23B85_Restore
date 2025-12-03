@interface CSDIDSTransport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransport:(id)transport;
- (CSDIDSTransport)initWithDestination:(id)destination;
- (CSDIDSTransport)initWithSocket:(int)socket;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDIDSTransport

- (CSDIDSTransport)initWithSocket:(int)socket
{
  v5.receiver = self;
  v5.super_class = CSDIDSTransport;
  result = [(CSDIDSTransport *)&v5 init];
  if (result)
  {
    result->_type = 1;
    result->_socket = socket;
  }

  return result;
}

- (CSDIDSTransport)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = CSDIDSTransport;
  v6 = [(CSDIDSTransport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 2;
    objc_storeStrong(&v6->_destination, destination);
    v7->_socket = -1;
  }

  return v7;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p type=%d", objc_opt_class(), self, [(CSDIDSTransport *)self type]];
  type = [(CSDIDSTransport *)self type];
  if (type == 2)
  {
    destination = [(CSDIDSTransport *)self destination];
    [v3 appendFormat:@" destination=%@", destination];
  }

  else if (type == 1)
  {
    [v3 appendFormat:@" socket=%d", -[CSDIDSTransport socket](self, "socket")];
  }

  [v3 appendFormat:@" initialLinkType=%lu", -[CSDIDSTransport initialLinkType](self, "initialLinkType")];
  remoteDestination = [(CSDIDSTransport *)self remoteDestination];

  if (remoteDestination)
  {
    remoteDestination2 = [(CSDIDSTransport *)self remoteDestination];
    [v3 appendFormat:@" remoteDestination=%@", remoteDestination2];
  }

  remoteDevice = [(CSDIDSTransport *)self remoteDevice];

  if (remoteDevice)
  {
    remoteDevice2 = [(CSDIDSTransport *)self remoteDevice];
    uniqueIDOverride = [remoteDevice2 uniqueIDOverride];
    [v3 appendFormat:@" remoteDeviceUniqueIdentifier=%@", uniqueIDOverride];
  }

  [v3 appendString:@">"];
  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CSDIDSTransport *)self isEqualToTransport:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToTransport:(id)transport
{
  transportCopy = transport;
  type = [(CSDIDSTransport *)self type];
  if (type == [transportCopy type] && (v6 = -[CSDIDSTransport socket](self, "socket"), v6 == objc_msgSend(transportCopy, "socket")))
  {
    destination = [(CSDIDSTransport *)self destination];
    destination2 = [transportCopy destination];
    if (TUStringsAreEqualOrNil() && (v9 = -[CSDIDSTransport initialLinkType](self, "initialLinkType"), v9 == [transportCopy initialLinkType]))
    {
      remoteDestination = [(CSDIDSTransport *)self remoteDestination];
      remoteDestination2 = [transportCopy remoteDestination];
      if (TUObjectsAreEqualOrNil())
      {
        remoteDevice = [(CSDIDSTransport *)self remoteDevice];
        uniqueIDOverride = [remoteDevice uniqueIDOverride];
        remoteDevice2 = [transportCopy remoteDevice];
        uniqueIDOverride2 = [remoteDevice2 uniqueIDOverride];
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
  type = [(CSDIDSTransport *)self type];
  v4 = ([(CSDIDSTransport *)self socket]^ type);
  destination = [(CSDIDSTransport *)self destination];
  v6 = [destination hash];
  v7 = v6 ^ [(CSDIDSTransport *)self initialLinkType]^ v4;
  remoteDestination = [(CSDIDSTransport *)self remoteDestination];
  v9 = [remoteDestination hash];
  remoteDevice = [(CSDIDSTransport *)self remoteDevice];
  uniqueIDOverride = [remoteDevice uniqueIDOverride];
  v12 = v9 ^ [uniqueIDOverride hash];

  return v7 ^ v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  type = [(CSDIDSTransport *)self type];
  if (type == 2)
  {
    v7 = [objc_opt_class() allocWithZone:zone];
    destination = [(CSDIDSTransport *)self destination];
    v6 = [v7 initWithDestination:destination];
  }

  else if (type == 1)
  {
    v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSocket:", -[CSDIDSTransport socket](self, "socket")}];
  }

  else
  {
    v6 = 0;
  }

  [v6 setInitialLinkType:{-[CSDIDSTransport initialLinkType](self, "initialLinkType")}];
  remoteDestination = [(CSDIDSTransport *)self remoteDestination];
  [v6 setRemoteDestination:remoteDestination];

  remoteDevice = [(CSDIDSTransport *)self remoteDevice];
  [v6 setRemoteDevice:remoteDevice];

  return v6;
}

@end