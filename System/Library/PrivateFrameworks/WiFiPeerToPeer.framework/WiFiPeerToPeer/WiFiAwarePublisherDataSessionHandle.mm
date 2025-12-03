@interface WiFiAwarePublisherDataSessionHandle
- (BOOL)isEqual:(id)equal;
- (WiFiAwarePublisherDataSessionHandle)initWithCoder:(id)coder;
- (WiFiAwarePublisherDataSessionHandle)initWithDatapathID:(unsigned __int8)d initiatorDataAddress:(id)address;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublisherDataSessionHandle

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedChar:{-[WiFiAwarePublisherDataSessionHandle datapathID](self, "datapathID")}];
  [coderCopy encodeObject:v6 forKey:@"WiFiAwarePublisherDataSessionHandle.datapathID"];

  initiatorDataAddress = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  [coderCopy encodeObject:initiatorDataAddress forKey:@"WiFiAwarePublisherDataSessionHandle.initiatorDataAddress"];
}

- (WiFiAwarePublisherDataSessionHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = decodeInstanceIDFrom(coderCopy, @"WiFiAwarePublisherDataSessionHandle.datapathID");
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublisherDataSessionHandle.initiatorDataAddress"];

  v7 = [(WiFiAwarePublisherDataSessionHandle *)self initWithDatapathID:v5 initiatorDataAddress:v6];
  return v7;
}

- (WiFiAwarePublisherDataSessionHandle)initWithDatapathID:(unsigned __int8)d initiatorDataAddress:(id)address
{
  addressCopy = address;
  v11.receiver = self;
  v11.super_class = WiFiAwarePublisherDataSessionHandle;
  v8 = [(WiFiAwarePublisherDataSessionHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_datapathID = d;
    objc_storeStrong(&v8->_initiatorDataAddress, address);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  datapathID = [(WiFiAwarePublisherDataSessionHandle *)self datapathID];
  if (datapathID == [(WiFiAwarePublisherDataSessionHandle *)v5 datapathID])
  {
    initiatorDataAddress = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
    initiatorDataAddress2 = [(WiFiAwarePublisherDataSessionHandle *)v5 initiatorDataAddress];
    v9 = [initiatorDataAddress isEqual:initiatorDataAddress2];

    if (v9)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwarePublisherDataSessionHandle datapathID](self, "datapathID")}];
  v4 = [v3 hash];
  initiatorDataAddress = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  v6 = [initiatorDataAddress hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  datapathID = [(WiFiAwarePublisherDataSessionHandle *)self datapathID];
  initiatorDataAddress = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  v6 = [v3 stringWithFormat:@"<WiFiAwarePublisherDataSessionHandle: ID=%u, initiator=%@>", datapathID, initiatorDataAddress];

  return v6;
}

@end