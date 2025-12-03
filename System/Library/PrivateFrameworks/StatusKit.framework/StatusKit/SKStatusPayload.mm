@interface SKStatusPayload
+ (id)logger;
- (NSDictionary)payloadDictionary;
- (SKStatusPayload)initWithCoder:(id)coder;
- (SKStatusPayload)initWithData:(id)data;
- (SKStatusPayload)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation SKStatusPayload

- (SKStatusPayload)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = SKStatusPayload;
  v6 = [(SKStatusPayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payloadData, data);
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

- (SKStatusPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];

  v6 = [(SKStatusPayload *)self initWithData:v5];
  return v6;
}

- (id)description
{
  payloadDictionary = [(SKStatusPayload *)self payloadDictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = v5;
  if (payloadDictionary)
  {
    v7 = [v4 stringWithFormat:@"<%@: %p payloadDictionary = %@>;", v5, self, payloadDictionary];;
  }

  else
  {
    payloadData = [(SKStatusPayload *)self payloadData];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadData = %@>;", v6, self, payloadData];;
  }

  return v7;
}

- (SKStatusPayload)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v9];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_cachedPayloadDictionary = &selfCopy->_cachedPayloadDictionary;
  cachedPayloadDictionary = selfCopy->_cachedPayloadDictionary;
  if (cachedPayloadDictionary)
  {
    v5 = cachedPayloadDictionary;
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    payloadData = [(SKStatusPayload *)selfCopy payloadData];
    if (payloadData)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:payloadData options:0 format:0 error:&v11];
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

    v9 = selfCopy;
    objc_sync_enter(v9);
    objc_storeStrong(p_cachedPayloadDictionary, v5);
    objc_sync_exit(v9);
  }

  return v5;
}

@end