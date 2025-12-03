@interface SKInvitationPayload
+ (id)logger;
- (NSDictionary)payloadDictionary;
- (SKInvitationPayload)initWithCoder:(id)coder;
- (SKInvitationPayload)initWithData:(id)data dateCreated:(id)created;
- (SKInvitationPayload)initWithDictionary:(id)dictionary dateCreated:(id)created;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKInvitationPayload

- (SKInvitationPayload)initWithData:(id)data dateCreated:(id)created
{
  dataCopy = data;
  createdCopy = created;
  v12.receiver = self;
  v12.super_class = SKInvitationPayload;
  v9 = [(SKInvitationPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payloadData, data);
    objc_storeStrong(&v10->_dateCreated, created);
  }

  return v10;
}

+ (id)logger
{
  if (logger_onceToken_4 != -1)
  {
    +[SKInvitationPayload logger];
  }

  v3 = logger__logger_4;

  return v3;
}

uint64_t __29__SKInvitationPayload_logger__block_invoke()
{
  logger__logger_4 = os_log_create("com.apple.StatusKit", "SKInvitationPayload");

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  payloadDictionary = [(SKInvitationPayload *)self payloadDictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (payloadDictionary)
  {
    dateCreated = [(SKInvitationPayload *)self dateCreated];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadDictionary = %@; dateCreated = %@>;", v5, self, payloadDictionary, dateCreated];;
  }

  else
  {
    dateCreated = [(SKInvitationPayload *)self payloadData];
    dateCreated2 = [(SKInvitationPayload *)self dateCreated];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadData = %@; dateCreated = %@>;", v5, self, dateCreated, dateCreated2];;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  payloadData = self->_payloadData;
  coderCopy = coder;
  [coderCopy encodeObject:payloadData forKey:@"payloadData"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
}

- (SKInvitationPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];

  v7 = [(SKInvitationPayload *)self initWithData:v5 dateCreated:v6];
  return v7;
}

- (SKInvitationPayload)initWithDictionary:(id)dictionary dateCreated:(id)created
{
  createdCopy = created;
  if (dictionary)
  {
    v11 = 0;
    dictionary = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = +[SKInvitationPayload logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SKInvitationPayload(DictionaryPayloads) initWithDictionary:v7 dateCreated:v8];
      }
    }
  }

  v9 = [(SKInvitationPayload *)self initWithData:dictionary dateCreated:createdCopy];

  return v9;
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

    payloadData = [(SKInvitationPayload *)selfCopy payloadData];
    if (payloadData)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:payloadData options:0 format:0 error:&v11];
      v7 = v11;
      if (v7)
      {
        v8 = +[SKInvitationPayload logger];
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