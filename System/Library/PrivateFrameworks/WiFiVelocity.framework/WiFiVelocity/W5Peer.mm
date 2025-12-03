@interface W5Peer
- (BOOL)_isOSVersionSupported:(id *)supported;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeer:(id)peer;
- (W5Peer)initWithCoder:(id)coder;
- (W5Peer)initWithCompanionLinkDevice:(id)device;
- (id)companionLinkDevice;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)type;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5Peer

- (W5Peer)initWithCompanionLinkDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = W5Peer;
  v4 = [(W5Peer *)&v7 init];
  if (v4)
  {
    v4->_peerID = [objc_msgSend(device "idsDeviceIdentifier")];
    v4->_name = [objc_msgSend(device "name")];
    v4->_model = [objc_msgSend(device "model")];
    v4->_proximity = [device proximity];
    *&v4->_discoveryFlags = xmmword_27424F1F0;
    if (device)
    {
      [device operatingSystemVersion];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    if (-[W5Peer _isOSVersionSupported:](v4, "_isOSVersionSupported:", v6) && (([device statusFlags] & 2) != 0 || (objc_msgSend(device, "statusFlags") & 4) != 0 && (objc_msgSend(objc_msgSend(device, "serviceTypes"), "containsObject:", @"com.apple.wifivelocityd.rapportWake") & 1) != 0 || (objc_msgSend(device, "statusFlags") & 4) != 0 && -[W5Peer type](v4, "type") == 1))
    {
      v4->_discoveryFlags |= 2uLL;
    }
  }

  return v4;
}

- (BOOL)_isOSVersionSupported:(id *)supported
{
  var0 = supported->var0;
  type = [(W5Peer *)self type];
  if (type > 5)
  {
    switch(type)
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

  if ((type - 2) < 4)
  {
LABEL_3:
    v5 = var0 <= 17;
    return !v5;
  }

  return type == 1 && var0 > 14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5Peer;
  [(W5Peer *)&v3 dealloc];
}

- (int64_t)type
{
  model = [(W5Peer *)self model];
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSString *)model rangeOfString:@"iPod"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 3;
  }

  if ([(NSString *)model rangeOfString:@"iPad"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 4;
  }

  if ([(NSString *)model rangeOfString:@"iPhone"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 2;
  }

  if ([(NSString *)model rangeOfString:@"Mac"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if ([(NSString *)model rangeOfString:@"AppleTV"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 5;
  }

  if ([(NSString *)model rangeOfString:@"Watch"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 6;
  }

  if ([(NSString *)model rangeOfString:@"HomePod"]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)model rangeOfString:@"AudioAccessory"]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 7;
  }

  if ([(NSString *)model rangeOfString:@"rProd"]!= 0x7FFFFFFFFFFFFFFFLL || [(NSString *)model rangeOfString:@"RealityDevice"]!= 0x7FFFFFFFFFFFFFFFLL)
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

- (BOOL)conformsToProtocol:(id)protocol
{
  v4.receiver = self;
  v4.super_class = W5Peer;
  return [(W5Peer *)&v4 conformsToProtocol:protocol];
}

- (BOOL)isEqualToPeer:(id)peer
{
  peerID = self->_peerID;
  if (peerID == [peer peerID])
  {
    LOBYTE(peerID) = 1;
  }

  else if (self->_peerID)
  {
    peerID = [peer peerID];
    if (peerID)
    {
      v7 = self->_peerID;
      peerID2 = [peer peerID];

      LOBYTE(peerID) = [(NSString *)v7 isEqual:peerID2];
    }
  }

  else
  {
    LOBYTE(peerID) = 0;
  }

  return peerID;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5Peer *)self isEqualToPeer:equal];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:@"_name"];
  [coder encodeObject:self->_peerID forKey:@"_peerID"];
  [coder encodeObject:self->_model forKey:@"_model"];
  [coder encodeObject:self->_build forKey:@"_build"];
  [coder encodeObject:self->_version forKey:@"_version"];
  [coder encodeObject:self->_os forKey:@"_os"];
  [coder encodeBool:self->_nearby forKey:@"_nearby"];
  [coder encodeInteger:self->_proximity forKey:@"_proximity"];
  [coder encodeObject:self->_device forKey:@"_device"];
  [coder encodeInteger:self->_controlFlags forKey:@"_controlFlags"];
  discoveryFlags = self->_discoveryFlags;

  [coder encodeInteger:discoveryFlags forKey:@"_discoveryFlags"];
}

- (W5Peer)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = W5Peer;
  v4 = [(W5Peer *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_name", "copy"}];
    v4->_peerID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_peerID", "copy"}];
    v4->_model = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_model", "copy"}];
    v4->_build = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_build", "copy"}];
    v4->_version = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_version", "copy"}];
    v4->_os = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_os", "copy"}];
    v4->_nearby = [coder decodeBoolForKey:@"_nearby"];
    v4->_proximity = [coder decodeIntegerForKey:@"_proximity"];
    v4->_device = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_device"];
    v4->_discoveryFlags = [coder decodeIntegerForKey:@"_discoveryFlags"];
    v4->_controlFlags = [coder decodeIntegerForKey:@"_controlFlags"];
  }

  return v4;
}

@end