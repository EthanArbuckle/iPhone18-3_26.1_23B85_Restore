@interface TSBonjourIPv4Address
+ (BOOL)getLinkLayerAddress:(char *)address forIPv4Address:(unsigned int)pv4Address error:(id *)error;
- (BOOL)getLinkLayerAddressError:(id *)error;
- (TSBonjourIPv4Address)init;
- (TSBonjourIPv4Address)initWithIPv4Address:(unsigned int)address;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSBonjourIPv4Address

+ (BOOL)getLinkLayerAddress:(char *)address forIPv4Address:(unsigned int)pv4Address error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = 101;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    size = 0;
    *v28 = xmmword_26F0DFC40;
    v29 = 0x40000000002;
    if (sysctl(v28, 6u, 0, &size, 0, 0))
    {
      v13 = __error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v13;
        *buf = 67109120;
        v27 = v14;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table size", buf, 8u);
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v9 = malloc_type_malloc(size, 0x7A9EB9A3uLL);
    if (v9)
    {
      break;
    }

LABEL_8:
    if (--v7 <= 1)
    {
      goto LABEL_12;
    }
  }

  v10 = v9;
  if (sysctl(v28, 6u, v9, &size, 0, 0))
  {
    v11 = __error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v11;
      *buf = 67109120;
      v27 = v12;
      _os_log_impl(&dword_26F080000, v8, OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table", buf, 8u);
    }

    free(v10);
    goto LABEL_8;
  }

  if (!size)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v18 = 0;
  v19 = v10;
  while (1)
  {
    v20 = *(v19 + 92);
    if ((v20 & 3) != 0)
    {
      v20 = (v20 | 3) + 1;
    }

    if (*(v19 + 93) == 2)
    {
      v21 = v19 + v20 + 92;
      if (v21[1] == 18 && v21[6] == 6 && *(v21 + 1) && bswap32(*(v19 + 24)) == pv4Address)
      {
        break;
      }
    }

    v22 = *v19;
    v18 += v22;
    v19 = (v19 + v22);
    if (v18 >= size)
    {
      goto LABEL_13;
    }
  }

  v23 = &v21[v21[5]];
  v24 = *(v23 + 2);
  *(address + 2) = *(v23 + 6);
  *address = v24;
  v15 = 1;
LABEL_14:
  free(v10);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (TSBonjourIPv4Address)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSBonjourIPv4Address init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSBonjourIPv4Address)initWithIPv4Address:(unsigned int)address
{
  v5.receiver = self;
  v5.super_class = TSBonjourIPv4Address;
  result = [(TSBonjourIPv4Address *)&v5 init];
  if (result)
  {
    result->_ipv4Address = address;
    result->_hasLinkLayerAddress = 0;
    *result->_linkLayerAddress = -1;
    *&result->_linkLayerAddress[4] = -1;
  }

  return result;
}

- (BOOL)getLinkLayerAddressError:(id *)error
{
  v4 = [objc_opt_class() getLinkLayerAddress:self->_linkLayerAddress forIPv4Address:self->_ipv4Address error:error];
  if (v4)
  {
    self->_hasLinkLayerAddress = 1;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithIPv4Address:", -[TSBonjourIPv4Address ipv4Address](self, "ipv4Address")}];
  if ([(TSBonjourIPv4Address *)self hasLinkLayerAddress])
  {
    [v4 setHasLinkLayerAddress:1];
    linkLayerAddress = [v4 linkLayerAddress];
    linkLayerAddress2 = [(TSBonjourIPv4Address *)self linkLayerAddress];
    v7 = *(linkLayerAddress2 + 2);
    *linkLayerAddress = *linkLayerAddress2;
    *(linkLayerAddress + 4) = v7;
  }

  return v4;
}

@end