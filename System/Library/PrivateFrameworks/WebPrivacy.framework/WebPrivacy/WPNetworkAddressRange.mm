@interface WPNetworkAddressRange
- (BOOL)isEqual:(id)equal;
- (WPNetworkAddressRange)init;
- (WPNetworkAddressRange)initWithAddress:(const sockaddr_in6 *)address netMaskLength:(unint64_t)length owner:(id)owner host:(id)host;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)version;
- (unint64_t)_addressLength;
@end

@implementation WPNetworkAddressRange

- (WPNetworkAddressRange)init
{
  *&self->_address.sin6_len = 0;
  *self->_address.sin6_addr.__u6_addr8 = 0;
  self->_address.sin6_scope_id = 0;
  *&self->_address.sin6_addr.__u6_addr32[2] = 0;
  return self;
}

- (WPNetworkAddressRange)initWithAddress:(const sockaddr_in6 *)address netMaskLength:(unint64_t)length owner:(id)owner host:(id)host
{
  ownerCopy = owner;
  hostCopy = host;
  v18.receiver = self;
  v18.super_class = WPNetworkAddressRange;
  v13 = [(WPNetworkAddressRange *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&address->sin6_len;
    *(v13 + 20) = *(&address->sin6_addr + 4);
    *(v13 + 8) = v15;
    *(v13 + 5) = length;
    objc_storeStrong(v13 + 6, owner);
    objc_storeStrong(&v14->_host, host);
    v16 = v14;
  }

  return v14;
}

- (int64_t)version
{
  sin6_family = self->_address.sin6_family;
  if (sin6_family == 2)
  {
    return 4;
  }

  if (sin6_family != 30)
  {
    [WPNetworkAddressRange version];
  }

  return 6;
}

- (id)description
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_address.sin6_family == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 30;
  }

  inet_ntop(v3, &self->_address.sin6_addr, v7, 0x2Eu);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%zu %@ %@", v7, self->_netMaskLength, self->_owner, self->_host];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)_addressLength
{
  result = [(WPNetworkAddressRange *)self version];
  if (result != 4)
  {
    return 16;
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  version = [(WPNetworkAddressRange *)self version];
  if (version == [compareCopy version])
  {
    v6 = memcmp(-[WPNetworkAddressRange _addressPointer](self, "_addressPointer"), [compareCopy _addressPointer], -[WPNetworkAddressRange _addressLength](self, "_addressLength"));
    if ((v6 & 0x80000000) == 0)
    {
      if (v6)
      {
        v7 = 1;
        goto LABEL_11;
      }

      netMaskLength = [(WPNetworkAddressRange *)self netMaskLength];
      if (netMaskLength >= [compareCopy netMaskLength])
      {
        netMaskLength2 = [(WPNetworkAddressRange *)self netMaskLength];
        v7 = netMaskLength2 > [compareCopy netMaskLength];
        goto LABEL_11;
      }
    }

    v7 = -1;
  }

  else if (version == 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    owner = equalCopy;
LABEL_8:

    goto LABEL_10;
  }

  if (!equalCopy)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  version = [(WPNetworkAddressRange *)self version];
  if (version == [equalCopy version])
  {
    netMaskLength = [(WPNetworkAddressRange *)self netMaskLength];
    if (netMaskLength == [equalCopy netMaskLength] && !memcmp(-[WPNetworkAddressRange _addressPointer](self, "_addressPointer"), objc_msgSend(equalCopy, "_addressPointer"), -[WPNetworkAddressRange _addressLength](self, "_addressLength")))
    {
      owner = [(WPNetworkAddressRange *)self owner];
      owner2 = [equalCopy owner];
      if ([owner isEqualToString:owner2])
      {
        host = [(WPNetworkAddressRange *)self host];
        host2 = [equalCopy host];
        v7 = [host isEqualToString:host2];
      }

      else
      {
        v7 = 0;
      }

      v8 = equalCopy;
      goto LABEL_8;
    }
  }

  v7 = 0;
  v8 = equalCopy;
LABEL_10:

  return v7;
}

@end