@interface SKPresencePayload
+ (id)logger;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)payloadDictionary;
- (SKPresencePayload)initWithCoder:(id)a3;
- (SKPresencePayload)initWithData:(id)a3;
- (SKPresencePayload)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKPresencePayload

- (SKPresencePayload)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKPresencePayload;
  v5 = [(SKPresencePayload *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    payloadData = v5->_payloadData;
    v5->_payloadData = v6;
  }

  return v5;
}

+ (id)logger
{
  if (logger_onceToken_0 != -1)
  {
    +[SKPresencePayload logger];
  }

  v3 = logger__logger_0;

  return v3;
}

uint64_t __27__SKPresencePayload_logger__block_invoke()
{
  logger__logger_0 = os_log_create("com.apple.StatusKit", "SKPresencePayload");

  return MEMORY[0x2821F96F8]();
}

- (SKPresencePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];

  v6 = [(SKPresencePayload *)self initWithData:v5];
  return v6;
}

- (id)description
{
  v3 = [(SKPresencePayload *)self payloadDictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [v4 stringWithFormat:@"<%@: %p payloadDictionary = %@>;", v5, self, v3];;
  }

  else
  {
    v8 = [(SKPresencePayload *)self payloadData];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadData = %@>;", v6, self, v8];;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKPresencePayload *)self payloadData];
    if (v6)
    {
    }

    else
    {
      v8 = [v5 payloadData];

      if (!v8)
      {
        v7 = 1;
        goto LABEL_7;
      }
    }

    v9 = [(SKPresencePayload *)self payloadData];
    v10 = [v5 payloadData];
    v7 = [v9 isEqualToData:v10];

LABEL_7:
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SKPresencePayload *)self payloadData];

  if (v3)
  {
    v4 = [(SKPresencePayload *)self payloadData];
    v5 = [v4 bytes];
    v6 = [(SKPresencePayload *)self payloadData];
    CC_SHA256(v5, [v6 length], md);

    v7 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
    v8 = [v7 hash];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SKPresencePayload allocWithZone:a3];
  v5 = [(SKPresencePayload *)self payloadData];
  v6 = [(SKPresencePayload *)v4 initWithData:v5];

  return v6;
}

- (SKPresencePayload)initWithDictionary:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = +[SKPresencePayload logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SKPresencePayload(DictionaryPayloads) *)v5 initWithDictionary:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [(SKPresencePayload *)self initWithData:v4];

  return v7;
}

- (NSDictionary)payloadDictionary
{
  v2 = self;
  objc_sync_enter(v2);
  p_cachedPayloadDictionary = &v2->_cachedPayloadDictionary;
  cachedPayloadDictionary = v2->_cachedPayloadDictionary;
  if (cachedPayloadDictionary)
  {
    v5 = cachedPayloadDictionary;
    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    v6 = [(SKPresencePayload *)v2 payloadData];
    if (v6)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v11];
      v7 = v11;
      if (v7)
      {
        v8 = +[SKPresencePayload logger];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SKPresencePayload(DictionaryPayloads) *)v7 payloadDictionary];
        }
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = v2;
    objc_sync_enter(v9);
    objc_storeStrong(p_cachedPayloadDictionary, v5);
    objc_sync_exit(v9);
  }

  return v5;
}

@end