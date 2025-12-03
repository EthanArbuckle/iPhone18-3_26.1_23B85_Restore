@interface WiFiMACAddress
+ (id)zeroAddress;
- (BOOL)isEqual:(id)equal;
- (WiFiMACAddress)initWithAddress:(ether_addr)address ipv6Address:(in6_addr)ipv6Address;
- (WiFiMACAddress)initWithCoder:(id)coder;
- (WiFiMACAddress)initWithLinkLocalIPv6Address:(in6_addr)address;
- (WiFiMACAddress)initWithMulticastIPv6Address:(in6_addr)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiMACAddress

+ (id)zeroAddress
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_2);
  }

  v3 = qword_280B20B18;

  return v3;
}

uint64_t __29__WiFiMACAddress_zeroAddress__block_invoke()
{
  qword_280B20B18 = [[WiFiMACAddress alloc] initWithAddress:0];

  return MEMORY[0x2821F96F8]();
}

- (WiFiMACAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiMACAddress.data"];
  v6 = v5;
  if (v5 && [v5 length] == 6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiMACAddress.ipv6"];
    v8 = v7;
    if (v7 && [v7 length] == 16)
    {
      bytes = [v6 bytes];
      bytes2 = [v8 bytes];
      v11 = [(WiFiMACAddress *)self initWithAddress:*bytes | (*(bytes + 2) << 32) ipv6Address:*bytes2, bytes2[1]];
    }

    else
    {
      bytes3 = [v6 bytes];
      v11 = [(WiFiMACAddress *)self initWithAddress:*bytes3 | (*(bytes3 + 2) << 32)];
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(WiFiMACAddress *)self data];
  [coderCopy encodeObject:data forKey:@"WiFiMACAddress.data"];

  [coderCopy encodeObject:self->_ipv6LinkLocalAddress forKey:@"WiFiMACAddress.ipv6"];
}

- (WiFiMACAddress)initWithAddress:(ether_addr)address ipv6Address:(in6_addr)ipv6Address
{
  addressCopy = address;
  ipv6AddressCopy = ipv6Address;
  v10.receiver = self;
  v10.super_class = WiFiMACAddress;
  v4 = [(WiFiMACAddress *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&addressCopy length:6];
    data = v4->_data;
    v4->_data = v5;

    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&ipv6AddressCopy length:16];
    ipv6LinkLocalAddress = v4->_ipv6LinkLocalAddress;
    v4->_ipv6LinkLocalAddress = v7;
  }

  return v4;
}

- (WiFiMACAddress)initWithLinkLocalIPv6Address:(in6_addr)address
{
  if ((address.__u6_addr16[0] & 0xC0FF) == 0x80FELL)
  {
    self = [(WiFiMACAddress *)self initWithAddress:(*&address.__u6_addr32[2] & 0xFFFFFFLL | (*&address.__u6_addr32[2] >> 40 << 24)) ^ 2 ipv6Address:*address.__u6_addr8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WiFiMACAddress)initWithMulticastIPv6Address:(in6_addr)address
{
  if (address.__u6_addr8[0] == 0xFF)
  {
    self = [(WiFiMACAddress *)self initWithAddress:(address.__u6_addr32[3] << 16) | 0x3333 ipv6Address:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      v5 = 0;
      goto LABEL_11;
    }

    v5 = equalCopy;
    data = [(WiFiMACAddress *)self data];
    data2 = [(WiFiMACAddress *)v5 data];
    if (([data isEqualToData:data2] & 1) == 0)
    {

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    ipv6LinkLocalAddress = [(WiFiMACAddress *)self ipv6LinkLocalAddress];
    ipv6LinkLocalAddress2 = [(WiFiMACAddress *)v5 ipv6LinkLocalAddress];
    v10 = [ipv6LinkLocalAddress isEqualToData:ipv6LinkLocalAddress2];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (unint64_t)hash
{
  data = [(WiFiMACAddress *)self data];
  v3 = [data hash];

  return v3;
}

- (id)description
{
  data = [(WiFiMACAddress *)self data];
  bytes = [data bytes];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiMACAddress alloc];
  data = [(WiFiMACAddress *)self data];
  bytes = [data bytes];
  ipv6LinkLocalAddress = [(WiFiMACAddress *)self ipv6LinkLocalAddress];
  bytes2 = [ipv6LinkLocalAddress bytes];
  v9 = [(WiFiMACAddress *)v4 initWithAddress:*bytes | (*(bytes + 2) << 32) ipv6Address:*bytes2, bytes2[1]];

  return v9;
}

@end