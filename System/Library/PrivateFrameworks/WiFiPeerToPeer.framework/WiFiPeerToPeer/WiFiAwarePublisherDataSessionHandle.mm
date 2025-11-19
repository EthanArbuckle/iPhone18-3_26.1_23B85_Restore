@interface WiFiAwarePublisherDataSessionHandle
- (BOOL)isEqual:(id)a3;
- (WiFiAwarePublisherDataSessionHandle)initWithCoder:(id)a3;
- (WiFiAwarePublisherDataSessionHandle)initWithDatapathID:(unsigned __int8)a3 initiatorDataAddress:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublisherDataSessionHandle

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedChar:{-[WiFiAwarePublisherDataSessionHandle datapathID](self, "datapathID")}];
  [v5 encodeObject:v6 forKey:@"WiFiAwarePublisherDataSessionHandle.datapathID"];

  v7 = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  [v5 encodeObject:v7 forKey:@"WiFiAwarePublisherDataSessionHandle.initiatorDataAddress"];
}

- (WiFiAwarePublisherDataSessionHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = decodeInstanceIDFrom(v4, @"WiFiAwarePublisherDataSessionHandle.datapathID");
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublisherDataSessionHandle.initiatorDataAddress"];

  v7 = [(WiFiAwarePublisherDataSessionHandle *)self initWithDatapathID:v5 initiatorDataAddress:v6];
  return v7;
}

- (WiFiAwarePublisherDataSessionHandle)initWithDatapathID:(unsigned __int8)a3 initiatorDataAddress:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WiFiAwarePublisherDataSessionHandle;
  v8 = [(WiFiAwarePublisherDataSessionHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_datapathID = a3;
    objc_storeStrong(&v8->_initiatorDataAddress, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(WiFiAwarePublisherDataSessionHandle *)self datapathID];
  if (v6 == [(WiFiAwarePublisherDataSessionHandle *)v5 datapathID])
  {
    v7 = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
    v8 = [(WiFiAwarePublisherDataSessionHandle *)v5 initiatorDataAddress];
    v9 = [v7 isEqual:v8];

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
  v5 = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WiFiAwarePublisherDataSessionHandle *)self datapathID];
  v5 = [(WiFiAwarePublisherDataSessionHandle *)self initiatorDataAddress];
  v6 = [v3 stringWithFormat:@"<WiFiAwarePublisherDataSessionHandle: ID=%u, initiator=%@>", v4, v5];

  return v6;
}

@end