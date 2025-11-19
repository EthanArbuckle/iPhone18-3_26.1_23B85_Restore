@interface ICSLazyDigestUIDGenerator
- (ICSLazyDigestUIDGenerator)initWithData:(id)a3;
- (id)_digest;
- (id)generateUID;
@end

@implementation ICSLazyDigestUIDGenerator

- (ICSLazyDigestUIDGenerator)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSLazyDigestUIDGenerator;
  v6 = [(ICSLazyDigestUIDGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (id)_digest
{
  digest = self->_digest;
  if (!digest)
  {
    data = self->_data;
    if (data)
    {
      digest = [(NSData *)data ical_digest];
      v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{2 * objc_msgSend(digest, "length")}];
      v6 = [digest bytes];
      if ([digest length])
      {
        v7 = 0;
        do
        {
          [v5 appendFormat:@"%02X", *(v6 + v7++)];
        }

        while (v7 != [digest length]);
      }

      v8 = [v5 copy];
      v9 = self->_digest;
      self->_digest = v8;
    }

    else
    {
      self->_digest = &stru_28841D818;
    }
  }

  v10 = self->_digest;

  return v10;
}

- (id)generateUID
{
  v3 = [(ICSLazyDigestUIDGenerator *)self _digest];
  v4 = MEMORY[0x277CCACA8];
  lastIndex = self->_lastIndex;
  self->_lastIndex = lastIndex + 1;
  v6 = [v4 stringWithFormat:@"%@_%d", v3, lastIndex];

  return v6;
}

@end