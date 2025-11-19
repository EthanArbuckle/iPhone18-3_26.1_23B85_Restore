@interface W5Peer
- (BOOL)_isOSVersionSupported:(id *)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeer:(id)a3;
- (W5Peer)initWithCoder:(id)a3;
- (W5Peer)initWithCompanionLinkDevice:(id)a3;
- (id)companionLinkDevice;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5Peer

- (W5Peer)initWithCompanionLinkDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = W5Peer;
  v4 = [(W5Peer *)&v7 init];
  if (v4)
  {
    v4->_peerID = [objc_msgSend(a3 "idsDeviceIdentifier")];
    v4->_name = [objc_msgSend(a3 "name")];
    v4->_model = [objc_msgSend(a3 "model")];
    v4->_proximity = [a3 proximity];
    *&v4->_discoveryFlags = xmmword_27424F1F0;
    if (a3)
    {
      [a3 operatingSystemVersion];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    if (-[W5Peer _isOSVersionSupported:](v4, "_isOSVersionSupported:", v6) && (([a3 statusFlags] & 2) != 0 || (objc_msgSend(a3, "statusFlags") & 4) != 0 && (objc_msgSend(objc_msgSend(a3, "serviceTypes"), "containsObject:", @"com.apple.wifivelocityd.rapportWake") & 1) != 0 || (objc_msgSend(a3, "statusFlags") & 4) != 0 && -[W5Peer type](v4, "type") == 1))
    {
      v4->_discoveryFlags |= 2uLL;
    }
  }

  return v4;
}

- (BOOL)_isOSVersionSupported:(id *)a3
{
  var0 = a3->var0;
  v4 = [(W5Peer *)self type];
  if (v4 > 5)
  {
    switch(v4)
    {
      case 6:
        v5 = var0 <= 10;
        break;
      case 8:
        v5 = var0 <= 1;
        break;
      case 7:
        goto LABEL_3;
      default:
        return 0;
    }

    return !v5;
  }

  if ((v4 - 2) < 4)
  {
LABEL_3:
    v5 = var0 <= 17;
    return !v5;
  }

  return v4 == 1 && var0 > 14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5Peer;
  [(W5Peer *)&v3 dealloc];
}

- (int64_t)type
{
  v2 = [(W5Peer *)self model];
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSString *)v2 rangeOfString:@"iPod"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 3;
  }

  if ([(NSString *)v2 rangeOfString:@"iPad"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  if ([(NSString *)v2 rangeOfString:@"iPhone"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  if ([(NSString *)v2 rangeOfString:@"Mac"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if ([(NSString *)v2 rangeOfString:@"AppleTV"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 5;
  }

  if ([(NSString *)v2 rangeOfString:@"Watch"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 6;
  }

  if ([(NSString *)v2 rangeOfString:@"HomePod"]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)v2 rangeOfString:@"AudioAccessory"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 7;
  }

  if ([(NSString *)v2 rangeOfString:@"rProd"]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)v2 rangeOfString:@"RealityDevice"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 8;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v4 = v3;
  peerID = @"LOCAL";
  if (self->_peerID)
  {
    peerID = self->_peerID;
  }

  [v3 appendFormat:@"[%@] %@ / %@, ", peerID, self->_name, self->_model];
  if (self->_build)
  {
    [v4 appendFormat:@"%@, ", self->_build];
  }

  if (self->_os)
  {
    [v4 appendFormat:@"%@, ", self->_os];
  }

  if (self->_version)
  {
    [v4 appendFormat:@"%@, ", self->_version];
  }

  if (self->_nearby)
  {
    [v4 appendFormat:@"Nearby=%d, ", 1];
  }

  if (self->_discoveryFlags)
  {
    [v4 appendFormat:@"DiscoveryFlags=%lu, ", self->_discoveryFlags];
  }

  if (self->_controlFlags)
  {
    [v4 appendFormat:@"ControlFlags=%lu, ", self->_controlFlags];
  }

  if ([v4 hasSuffix:{@", "}])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 2}];
  }

  v6 = [v4 copy];

  return v6;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4.receiver = self;
  v4.super_class = W5Peer;
  return [(W5Peer *)&v4 conformsToProtocol:a3];
}

- (BOOL)isEqualToPeer:(id)a3
{
  peerID = self->_peerID;
  if (peerID == [a3 peerID])
  {
    LOBYTE(v6) = 1;
  }

  else if (self->_peerID)
  {
    v6 = [a3 peerID];
    if (v6)
    {
      v7 = self->_peerID;
      v8 = [a3 peerID];

      LOBYTE(v6) = [(NSString *)v7 isEqual:v8];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5Peer *)self isEqualToPeer:a3];
}

- (id)companionLinkDevice
{
  device = self->_device;
  if (device)
  {
  }

  v4 = objc_alloc_init(MEMORY[0x277D44170]);
  self->_device = v4;
  [(RPCompanionLinkDevice *)v4 setIdentifier:self->_peerID];
  return self->_device;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5Peer allocWithZone:?]];
  [(W5Peer *)v4 setName:self->_name];
  [(W5Peer *)v4 setPeerID:self->_peerID];
  [(W5Peer *)v4 setModel:self->_model];
  [(W5Peer *)v4 setBuild:self->_build];
  [(W5Peer *)v4 setVersion:self->_version];
  [(W5Peer *)v4 setOs:self->_os];
  [(W5Peer *)v4 setNearby:self->_nearby];
  [(W5Peer *)v4 setProximity:self->_proximity];
  -[W5Peer setDevice:](v4, "setDevice:", [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(MEMORY[0x277CCAAB0] error:{"archivedDataWithRootObject:requiringSecureCoding:error:", self->_device, 1, 0), 0}]);
  [(W5Peer *)v4 setControlFlags:self->_controlFlags];
  [(W5Peer *)v4 setDiscoveryFlags:self->_discoveryFlags];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"_name"];
  [a3 encodeObject:self->_peerID forKey:@"_peerID"];
  [a3 encodeObject:self->_model forKey:@"_model"];
  [a3 encodeObject:self->_build forKey:@"_build"];
  [a3 encodeObject:self->_version forKey:@"_version"];
  [a3 encodeObject:self->_os forKey:@"_os"];
  [a3 encodeBool:self->_nearby forKey:@"_nearby"];
  [a3 encodeInteger:self->_proximity forKey:@"_proximity"];
  [a3 encodeObject:self->_device forKey:@"_device"];
  [a3 encodeInteger:self->_controlFlags forKey:@"_controlFlags"];
  discoveryFlags = self->_discoveryFlags;

  [a3 encodeInteger:discoveryFlags forKey:@"_discoveryFlags"];
}

- (W5Peer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = W5Peer;
  v4 = [(W5Peer *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_name", "copy"}];
    v4->_peerID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_peerID", "copy"}];
    v4->_model = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_model", "copy"}];
    v4->_build = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_build", "copy"}];
    v4->_version = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_version", "copy"}];
    v4->_os = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_os", "copy"}];
    v4->_nearby = [a3 decodeBoolForKey:@"_nearby"];
    v4->_proximity = [a3 decodeIntegerForKey:@"_proximity"];
    v4->_device = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_device"];
    v4->_discoveryFlags = [a3 decodeIntegerForKey:@"_discoveryFlags"];
    v4->_controlFlags = [a3 decodeIntegerForKey:@"_controlFlags"];
  }

  return v4;
}

@end