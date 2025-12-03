@interface SKAProtobufMessage
+ (id)logger;
- (BOOL)expectingMoreResponses;
- (NSArray)responses;
- (SKAProtobufMessage)initWithPushTopic:(id)topic request:(id)request;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation SKAProtobufMessage

- (SKAProtobufMessage)initWithPushTopic:(id)topic request:(id)request
{
  requestCopy = request;
  topicCopy = topic;
  data = [requestCopy data];
  v15.receiver = self;
  v15.super_class = SKAProtobufMessage;
  v10 = [(FTProtobufMessage *)&v15 initWithPushTopic:topicCopy protoData:data];

  if (v10)
  {
    objc_storeStrong(&v10->_request, request);
    receivedResponseCount = v10->_receivedResponseCount;
    v10->_receivedResponseCount = &unk_2833EBA08;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableResponses = v10->_mutableResponses;
    v10->_mutableResponses = v12;
  }

  return v10;
}

- (NSArray)responses
{
  v2 = [(NSMutableArray *)self->_mutableResponses copy];

  return v2;
}

- (BOOL)expectingMoreResponses
{
  if ([(SharedChannelActivityRequest *)self->_request request]!= 1 && [(SharedChannelActivityRequest *)self->_request request]!= 3)
  {
LABEL_9:
    LOBYTE(integerValue) = 0;
    return integerValue;
  }

  expectedResponseCount = self->_expectedResponseCount;
  if (!expectedResponseCount)
  {
    v5 = +[SKAProtobufMessage logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SKAProtobufMessage *)v5 expectingMoreResponses];
    }

    goto LABEL_9;
  }

  integerValue = [(NSNumber *)expectedResponseCount integerValue];
  if (integerValue)
  {
    LOBYTE(integerValue) = self->_receivedResponseCount != self->_expectedResponseCount;
  }

  return integerValue;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v41 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SKAProtobufMessage;
  [(FTProtobufMessage *)&v36 handleResponseDictionary:dictionary];
  if (![(FTProtobufMessage *)self responseValue])
  {
    v5 = [SharedChannelActivityResponse alloc];
    protoResponse = [(FTProtobufMessage *)self protoResponse];
    v4 = [(SharedChannelActivityResponse *)v5 initWithData:protoResponse];

    [(NSMutableArray *)self->_mutableResponses addObject:v4];
    response = [v4 response];
    switch(response)
    {
      case 3:
        pollingResponse = [v4 pollingResponse];
        v24 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid = [pollingResponse uuid];
        v26 = [v24 initWithUUIDBytes:{objc_msgSend(uuid, "bytes")}];
        uuid = self->_uuid;
        self->_uuid = v26;

        v13 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [pollingResponse responseMessageIndex]+ 1;
          totalResponseMessages = [pollingResponse totalResponseMessages];
          v30 = self->_uuid;
          *buf = 67109634;
          *v38 = v28;
          *&v38[4] = 1024;
          *&v38[6] = totalResponseMessages;
          v39 = 2112;
          v40 = v30;
          v17 = "Received polling message %u/%u for request %@";
          goto LABEL_14;
        }

        break;
      case 2:
        pollingResponse = [v4 deactivationResponse];
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid2 = [pollingResponse uuid];
        v20 = [v18 initWithUUIDBytes:{objc_msgSend(uuid2, "bytes")}];
        v21 = self->_uuid;
        self->_uuid = v20;

        v22 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_uuid;
          *buf = 138412290;
          *v38 = v23;
          _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Received deactivation message for request: %@", buf, 0xCu);
        }

        goto LABEL_18;
      case 1:
        pollingResponse = [v4 activationResponse];
        v9 = objc_alloc(MEMORY[0x277CCAD78]);
        uuid3 = [pollingResponse uuid];
        v11 = [v9 initWithUUIDBytes:{objc_msgSend(uuid3, "bytes")}];
        v12 = self->_uuid;
        self->_uuid = v11;

        v13 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [pollingResponse responseMessageIndex]+ 1;
          totalResponseMessages2 = [pollingResponse totalResponseMessages];
          v16 = self->_uuid;
          *buf = 67109634;
          *v38 = v14;
          *&v38[4] = 1024;
          *&v38[6] = totalResponseMessages2;
          v39 = 2112;
          v40 = v16;
          v17 = "Received activation message %u/%u for request %@";
LABEL_14:
          _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, v17, buf, 0x18u);
        }

        break;
      default:
        pollingResponse = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(pollingResponse, OS_LOG_TYPE_ERROR))
        {
          [(SKAProtobufMessage *)v4 handleResponseDictionary:pollingResponse];
        }

        goto LABEL_18;
    }

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSObject totalResponseMessages](pollingResponse, "totalResponseMessages")}];
    expectedResponseCount = self->_expectedResponseCount;
    self->_expectedResponseCount = v31;

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_receivedResponseCount, "integerValue") + 1}];
    receivedResponseCount = self->_receivedResponseCount;
    self->_receivedResponseCount = v33;

LABEL_18:
    goto LABEL_19;
  }

  v4 = +[SKAProtobufMessage logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SKAProtobufMessage *)self handleResponseDictionary:v4];
  }

LABEL_19:

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)logger
{
  if (logger_onceToken_6 != -1)
  {
    +[SKAProtobufMessage logger];
  }

  v3 = logger__logger_6;

  return v3;
}

uint64_t __28__SKAProtobufMessage_logger__block_invoke()
{
  logger__logger_6 = os_log_create("com.apple.StatusKit", "SKAProtobufMessage");

  return MEMORY[0x2821F96F8]();
}

- (void)handleResponseDictionary:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 responseValue];
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Response failed with code: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)handleResponseDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Unexpected message: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end