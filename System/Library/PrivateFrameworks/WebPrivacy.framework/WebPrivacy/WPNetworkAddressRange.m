@interface WPNetworkAddressRange
- (BOOL)isEqual:(id)a3;
- (WPNetworkAddressRange)init;
- (WPNetworkAddressRange)initWithAddress:(const sockaddr_in6 *)a3 netMaskLength:(unint64_t)a4 owner:(id)a5 host:(id)a6;
- (id)description;
- (int64_t)compare:(id)a3;
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

- (WPNetworkAddressRange)initWithAddress:(const sockaddr_in6 *)a3 netMaskLength:(unint64_t)a4 owner:(id)a5 host:(id)a6
{
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = WPNetworkAddressRange;
  v13 = [(WPNetworkAddressRange *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&a3->sin6_len;
    *(v13 + 20) = *(&a3->sin6_addr + 4);
    *(v13 + 8) = v15;
    *(v13 + 5) = a4;
    objc_storeStrong(v13 + 6, a5);
    objc_storeStrong(&v14->_host, a6);
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WPNetworkAddressRange *)self version];
  if (v5 == [v4 version])
  {
    v6 = memcmp(-[WPNetworkAddressRange _addressPointer](self, "_addressPointer"), [v4 _addressPointer], -[WPNetworkAddressRange _addressLength](self, "_addressLength"));
    if ((v6 & 0x80000000) == 0)
    {
      if (v6)
      {
        v7 = 1;
        goto LABEL_11;
      }

      v8 = [(WPNetworkAddressRange *)self netMaskLength];
      if (v8 >= [v4 netMaskLength])
      {
        v9 = [(WPNetworkAddressRange *)self netMaskLength];
        v7 = v9 > [v4 netMaskLength];
        goto LABEL_11;
      }
    }

    v7 = -1;
  }

  else if (v5 == 4)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v7 = 0;
    v9 = v4;
LABEL_8:

    goto LABEL_10;
  }

  if (!v4)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [(WPNetworkAddressRange *)self version];
  if (v5 == [v4 version])
  {
    v6 = [(WPNetworkAddressRange *)self netMaskLength];
    if (v6 == [v4 netMaskLength] && !memcmp(-[WPNetworkAddressRange _addressPointer](self, "_addressPointer"), objc_msgSend(v4, "_addressPointer"), -[WPNetworkAddressRange _addressLength](self, "_addressLength")))
    {
      v9 = [(WPNetworkAddressRange *)self owner];
      v11 = [v4 owner];
      if ([v9 isEqualToString:v11])
      {
        v12 = [(WPNetworkAddressRange *)self host];
        v13 = [v4 host];
        v7 = [v12 isEqualToString:v13];
      }

      else
      {
        v7 = 0;
      }

      v8 = v4;
      goto LABEL_8;
    }
  }

  v7 = 0;
  v8 = v4;
LABEL_10:

  return v7;
}

@end