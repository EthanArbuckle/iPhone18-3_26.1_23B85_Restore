@interface SKStatusPayload
+ (id)logger;
- (NSDictionary)payloadDictionary;
- (SKStatusPayload)initWithCoder:(id)a3;
- (SKStatusPayload)initWithData:(id)a3;
- (SKStatusPayload)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation SKStatusPayload

- (SKStatusPayload)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKStatusPayload;
  v6 = [(SKStatusPayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadData, a3);
  }

  return v7;
}

+ (id)logger
{
  if (logger_onceToken_5 != -1)
  {
    +[SKStatusPayload logger];
  }

  v3 = logger__logger_5;

  return v3;
}

uint64_t __25__SKStatusPayload_logger__block_invoke()
{
  logger__logger_5 = os_log_create("com.apple.StatusKit", "SKStatusPayload");

  return MEMORY[0x2821F96F8]();
}

- (SKStatusPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];

  v6 = [(SKStatusPayload *)self initWithData:v5];
  return v6;
}

- (id)description
{
  v3 = [(SKStatusPayload *)self payloadDictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = [v4 stringWithFormat:@"<%@: %p payloadDictionary = %@>;", v5, self, v3];;
  }

  else
  {
    v8 = [(SKStatusPayload *)self payloadData];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadData = %@>;", v6, self, v8];;
  }

  return v7;
}

- (SKStatusPayload)initWithDictionary:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = +[SKStatusPayload logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SKInvitationPayload(DictionaryPayloads) initWithDictionary:v5 dateCreated:v6];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [(SKStatusPayload *)self initWithData:v4];

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

    v6 = [(SKStatusPayload *)v2 payloadData];
    if (v6)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v11];
      v7 = v11;
      if (v7)
      {
        v8 = +[SKStatusPayload logger];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SKInvitationPayload(DictionaryPayloads) *)v7 payloadDictionary];
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