@interface SKAProtobufMessage
+ (id)logger;
- (BOOL)expectingMoreResponses;
- (NSArray)responses;
- (SKAProtobufMessage)initWithPushTopic:(id)a3 request:(id)a4;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation SKAProtobufMessage

- (SKAProtobufMessage)initWithPushTopic:(id)a3 request:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 data];
  v15.receiver = self;
  v15.super_class = SKAProtobufMessage;
  v10 = [(FTProtobufMessage *)&v15 initWithPushTopic:v8 protoData:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_request, a4);
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
    LOBYTE(v4) = 0;
    return v4;
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

  v4 = [(NSNumber *)expectedResponseCount integerValue];
  if (v4)
  {
    LOBYTE(v4) = self->_receivedResponseCount != self->_expectedResponseCount;
  }

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SKAProtobufMessage;
  [(FTProtobufMessage *)&v36 handleResponseDictionary:a3];
  if (![(FTProtobufMessage *)self responseValue])
  {
    v5 = [SharedChannelActivityResponse alloc];
    v6 = [(FTProtobufMessage *)self protoResponse];
    v4 = [(SharedChannelActivityResponse *)v5 initWithData:v6];

    [(NSMutableArray *)self->_mutableResponses addObject:v4];
    v7 = [v4 response];
    switch(v7)
    {
      case 3:
        v8 = [v4 pollingResponse];
        v24 = objc_alloc(MEMORY[0x277CCAD78]);
        v25 = [v8 uuid];
        v26 = [v24 initWithUUIDBytes:{objc_msgSend(v25, "bytes")}];
        uuid = self->_uuid;
        self->_uuid = v26;

        v13 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v8 responseMessageIndex]+ 1;
          v29 = [v8 totalResponseMessages];
          v30 = self->_uuid;
          *buf = 67109634;
          *v38 = v28;
          *&v38[4] = 1024;
          *&v38[6] = v29;
          v39 = 2112;
          v40 = v30;
          v17 = "Received polling message %u/%u for request %@";
          goto LABEL_14;
        }

        break;
      case 2:
        v8 = [v4 deactivationResponse];
        v18 = objc_alloc(MEMORY[0x277CCAD78]);
        v19 = [v8 uuid];
        v20 = [v18 initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];
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
        v8 = [v4 activationResponse];
        v9 = objc_alloc(MEMORY[0x277CCAD78]);
        v10 = [v8 uuid];
        v11 = [v9 initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
        v12 = self->_uuid;
        self->_uuid = v11;

        v13 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v8 responseMessageIndex]+ 1;
          v15 = [v8 totalResponseMessages];
          v16 = self->_uuid;
          *buf = 67109634;
          *v38 = v14;
          *&v38[4] = 1024;
          *&v38[6] = v15;
          v39 = 2112;
          v40 = v16;
          v17 = "Received activation message %u/%u for request %@";
LABEL_14:
          _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, v17, buf, 0x18u);
        }

        break;
      default:
        v8 = +[SKAProtobufMessage logger];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SKAProtobufMessage *)v4 handleResponseDictionary:v8];
        }

        goto LABEL_18;
    }

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSObject totalResponseMessages](v8, "totalResponseMessages")}];
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