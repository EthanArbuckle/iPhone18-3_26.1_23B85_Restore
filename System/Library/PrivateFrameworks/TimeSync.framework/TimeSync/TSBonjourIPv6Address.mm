@interface TSBonjourIPv6Address
+ (BOOL)getLinkLayerAddress:(char *)a3 forIPv6Address:(const char *)a4 error:(id *)a5;
- (BOOL)getLinkLayerAddressError:(id *)a3;
- (TSBonjourIPv6Address)init;
- (TSBonjourIPv6Address)initWithIPv6Address:(const char *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)pokeDestinationAtPort:(unsigned __int16)a3 onInterfaceIndex:(unsigned int)a4;
@end

@implementation TSBonjourIPv6Address

+ (BOOL)getLinkLayerAddress:(char *)a3 forIPv6Address:(const char *)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = 101;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    size = 0;
    *v29 = xmmword_26F0DFC50;
    v30 = 0x40000000002;
    if (sysctl(v29, 6u, 0, &size, 0, 0))
    {
      v13 = __error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v13;
        *buf = 67109120;
        v28 = v14;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table size", buf, 8u);
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v9 = malloc_type_malloc(size, 0xF81040DBuLL);
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
  if (sysctl(v29, 6u, v9, &size, 0, 0))
  {
    v11 = __error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v11;
      *buf = 67109120;
      v28 = v12;
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

    if (*(v19 + 93) == 30)
    {
      v21 = v19 + v20 + 92;
      if (v21[1] == 18 && v21[6] == 6 && *(v21 + 1) && *(v19 + 50) == *a4 && *(v19 + 54) == *(a4 + 1))
      {
        break;
      }
    }

    v23 = *v19;
    v18 += v23;
    v19 = (v19 + v23);
    if (v18 >= size)
    {
      goto LABEL_13;
    }
  }

  v24 = &v21[v21[5]];
  v25 = *(v24 + 2);
  *(a3 + 2) = *(v24 + 6);
  *a3 = v25;
  v15 = 1;
LABEL_14:
  free(v10);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (TSBonjourIPv6Address)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSBonjourIPv6Address init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSBonjourIPv6Address)initWithIPv6Address:(const char *)a3
{
  v5.receiver = self;
  v5.super_class = TSBonjourIPv6Address;
  result = [(TSBonjourIPv6Address *)&v5 init];
  if (result)
  {
    *result->_ipv6Address = *a3;
    result->_hasLinkLayerAddress = 0;
    *result->_linkLayerAddress = -1;
    *&result->_linkLayerAddress[4] = -1;
  }

  return result;
}

- (BOOL)getLinkLayerAddressError:(id *)a3
{
  v4 = [objc_opt_class() getLinkLayerAddress:self->_linkLayerAddress forIPv6Address:self->_ipv6Address error:a3];
  if (v4)
  {
    self->_hasLinkLayerAddress = 1;
  }

  return v4;
}

- (void)pokeDestinationAtPort:(unsigned __int16)a3 onInterfaceIndex:(unsigned int)a4
{
  memset(&v6[1], 0, 24);
  HIWORD(v6[0]) = __rev16(a3);
  LOWORD(v6[0]) = 7708;
  *&v6[2] = *[(TSBonjourIPv6Address *)self ipv6Address];
  if (LOBYTE(v6[2]) == 254 && (BYTE1(v6[2]) & 0xC0) == 0x80)
  {
    v6[6] = a4;
  }

  v5 = socket(30, 1, 0);
  fcntl(v5, 4, 4);
  connect(v5, v6, 0x1Cu);
  close(v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithIPv6Address:", -[TSBonjourIPv6Address ipv6Address](self, "ipv6Address")}];
  if ([(TSBonjourIPv6Address *)self hasLinkLayerAddress])
  {
    [v4 setHasLinkLayerAddress:1];
    v5 = [v4 linkLayerAddress];
    v6 = [(TSBonjourIPv6Address *)self linkLayerAddress];
    v7 = *(v6 + 2);
    *v5 = *v6;
    *(v5 + 4) = v7;
  }

  return v4;
}

@end