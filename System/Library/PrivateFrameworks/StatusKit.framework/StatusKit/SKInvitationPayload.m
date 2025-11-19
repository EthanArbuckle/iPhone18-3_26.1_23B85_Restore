@interface SKInvitationPayload
+ (id)logger;
- (NSDictionary)payloadDictionary;
- (SKInvitationPayload)initWithCoder:(id)a3;
- (SKInvitationPayload)initWithData:(id)a3 dateCreated:(id)a4;
- (SKInvitationPayload)initWithDictionary:(id)a3 dateCreated:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKInvitationPayload

- (SKInvitationPayload)initWithData:(id)a3 dateCreated:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SKInvitationPayload;
  v9 = [(SKInvitationPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payloadData, a3);
    objc_storeStrong(&v10->_dateCreated, a4);
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
  v3 = [(SKInvitationPayload *)self payloadDictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(SKInvitationPayload *)self dateCreated];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadDictionary = %@; dateCreated = %@>;", v5, self, v3, v6];;
  }

  else
  {
    v6 = [(SKInvitationPayload *)self payloadData];
    v8 = [(SKInvitationPayload *)self dateCreated];
    v7 = [v4 stringWithFormat:@"<%@: %p payloadData = %@; dateCreated = %@>;", v5, self, v6, v8];;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  payloadData = self->_payloadData;
  v5 = a3;
  [v5 encodeObject:payloadData forKey:@"payloadData"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
}

- (SKInvitationPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];

  v7 = [(SKInvitationPayload *)self initWithData:v5 dateCreated:v6];
  return v7;
}

- (SKInvitationPayload)initWithDictionary:(id)a3 dateCreated:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v11 = 0;
    a3 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v11];
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

  v9 = [(SKInvitationPayload *)self initWithData:a3 dateCreated:v6];

  return v9;
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

    v6 = [(SKInvitationPayload *)v2 payloadData];
    if (v6)
    {
      v11 = 0;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v11];
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

    v9 = v2;
    objc_sync_enter(v9);
    objc_storeStrong(p_cachedPayloadDictionary, v5);
    objc_sync_exit(v9);
  }

  return v5;
}

@end