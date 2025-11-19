@interface WiFiMACAddress
+ (id)zeroAddress;
- (BOOL)isEqual:(id)a3;
- (WiFiMACAddress)initWithAddress:(ether_addr)a3 ipv6Address:(in6_addr)a4;
- (WiFiMACAddress)initWithCoder:(id)a3;
- (WiFiMACAddress)initWithLinkLocalIPv6Address:(in6_addr)a3;
- (WiFiMACAddress)initWithMulticastIPv6Address:(in6_addr)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (WiFiMACAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiMACAddress.data"];
  v6 = v5;
  if (v5 && [v5 length] == 6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiMACAddress.ipv6"];
    v8 = v7;
    if (v7 && [v7 length] == 16)
    {
      v9 = [v6 bytes];
      v10 = [v8 bytes];
      v11 = [(WiFiMACAddress *)self initWithAddress:*v9 | (*(v9 + 2) << 32) ipv6Address:*v10, v10[1]];
    }

    else
    {
      v13 = [v6 bytes];
      v11 = [(WiFiMACAddress *)self initWithAddress:*v13 | (*(v13 + 2) << 32)];
    }

    self = v11;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WiFiMACAddress *)self data];
  [v5 encodeObject:v4 forKey:@"WiFiMACAddress.data"];

  [v5 encodeObject:self->_ipv6LinkLocalAddress forKey:@"WiFiMACAddress.ipv6"];
}

- (WiFiMACAddress)initWithAddress:(ether_addr)a3 ipv6Address:(in6_addr)a4
{
  v12 = a3;
  v11 = a4;
  v10.receiver = self;
  v10.super_class = WiFiMACAddress;
  v4 = [(WiFiMACAddress *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v12 length:6];
    data = v4->_data;
    v4->_data = v5;

    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v11 length:16];
    ipv6LinkLocalAddress = v4->_ipv6LinkLocalAddress;
    v4->_ipv6LinkLocalAddress = v7;
  }

  return v4;
}

- (WiFiMACAddress)initWithLinkLocalIPv6Address:(in6_addr)a3
{
  if ((a3.__u6_addr16[0] & 0xC0FF) == 0x80FELL)
  {
    self = [(WiFiMACAddress *)self initWithAddress:(*&a3.__u6_addr32[2] & 0xFFFFFFLL | (*&a3.__u6_addr32[2] >> 40 << 24)) ^ 2 ipv6Address:*a3.__u6_addr8];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WiFiMACAddress)initWithMulticastIPv6Address:(in6_addr)a3
{
  if (a3.__u6_addr8[0] == 0xFF)
  {
    self = [(WiFiMACAddress *)self initWithAddress:(a3.__u6_addr32[3] << 16) | 0x3333 ipv6Address:?];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

    v5 = v4;
    v6 = [(WiFiMACAddress *)self data];
    v7 = [(WiFiMACAddress *)v5 data];
    if (([v6 isEqualToData:v7] & 1) == 0)
    {

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v8 = [(WiFiMACAddress *)self ipv6LinkLocalAddress];
    v9 = [(WiFiMACAddress *)v5 ipv6LinkLocalAddress];
    v10 = [v8 isEqualToData:v9];

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
  v2 = [(WiFiMACAddress *)self data];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(WiFiMACAddress *)self data];
  v3 = [v2 bytes];

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *v3, v3[1], v3[2], v3[3], v3[4], v3[5]];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiMACAddress alloc];
  v5 = [(WiFiMACAddress *)self data];
  v6 = [v5 bytes];
  v7 = [(WiFiMACAddress *)self ipv6LinkLocalAddress];
  v8 = [v7 bytes];
  v9 = [(WiFiMACAddress *)v4 initWithAddress:*v6 | (*(v6 + 2) << 32) ipv6Address:*v8, v8[1]];

  return v9;
}

@end