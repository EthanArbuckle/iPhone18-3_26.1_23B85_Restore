@interface PSSGComms
- (NSString)sessionName;
- (PSSGClient)client;
- (int)sendMessageonReceiveChannel:(id)channel withReceiverPort:(BOOL)port;
- (void)dealloc;
- (void)deregisterForClient:(id)client;
- (void)receiveMessageLoop;
- (void)registerForClient:(id)client;
- (void)sendDeregisterMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)sendRegisterMessage:(id)message;
- (void)waitForMessageOnReceiveChannel:(id *)channel;
@end

@implementation PSSGComms

- (void)registerForClient:(id)client
{
  clientCopy = client;
  [(PSSGComms *)self setClient:clientCopy];
  [(PSSGComms *)self setSendChannel:ps_create_comms_client_without_reply_port()];
  [(PSSGComms *)self setReceiveChannel:ps_create_comms_client_without_reply_port()];
  sessionName = [clientCopy sessionName];
  [(PSSGComms *)self setSessionName:sessionName];

  sessionName2 = [clientCopy sessionName];
  [(PSSGComms *)self sendRegisterMessage:sessionName2];

  v7 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel_receiveMessageLoop object:0];
  [(PSSGComms *)self setReceiveMessageThread:v7];

  sessionName3 = [clientCopy sessionName];

  v9 = [@"polaris-systemgraph-rx" stringByAppendingPathExtension:sessionName3];
  receiveMessageThread = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread setName:v9];

  receiveMessageThread2 = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread2 setThreadPriority:60.0];

  receiveMessageThread3 = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread3 start];
}

- (void)deregisterForClient:(id)client
{
  sessionName = [(PSSGComms *)self sessionName];
  [(PSSGComms *)self sendDeregisterMessage:sessionName];
}

- (void)dealloc
{
  [(PSSGComms *)self sendChannel];
  ps_delete_comms_client();
  [(PSSGComms *)self receiveChannel];
  ps_delete_comms_client();
  [(PSSGComms *)self setClient:0];
  v3.receiver = self;
  v3.super_class = PSSGComms;
  [(PSSGComms *)&v3 dealloc];
}

- (void)sendRegisterMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [PSSGMessageRegister messageWithSessionName:messageCopy];
  v6 = [(PSSGComms *)self sendMessageonReceiveChannel:v5 withReceiverPort:1];
  v7 = __PSSGLogSharedInstance();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = 10000;
    *&v9 = 138412802;
    v15 = v9;
    do
    {
      if (v8)
      {
        v11 = getpid();
        *buf = v15;
        v17 = messageCopy;
        v18 = 1024;
        v19 = v11;
        v20 = 1024;
        v21 = v10 / 0x3E8;
        _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_DEFAULT, "%@ (pid=%d) failed to send register message, will sleep for %d ms and retry", buf, 0x18u);
      }

      usleep(v10);
      if (2 * v10 >= 0xF4240)
      {
        v10 = 1000000;
      }

      else
      {
        v10 *= 2;
      }

      v12 = [(PSSGComms *)self sendMessageonReceiveChannel:v5 withReceiverPort:1, v15];
      v7 = __PSSGLogSharedInstance();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    }

    while (v12);
  }

  if (v8)
  {
    v13 = getpid();
    *buf = 138412546;
    v17 = messageCopy;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_DEFAULT, "Successfully registered %@ (pid=%d)", buf, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendDeregisterMessage:(id)message
{
  v4 = [PSSGMessageDeRegister messageWithSessionName:message];
  [(PSSGComms *)self sendMessageonReceiveChannel:v4 withReceiverPort:0];
}

- (void)sendMessage:(id)message
{
  serialize = [message serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(serialize + 48)];
  v5 = *(serialize + 340);
  sendChannel = [(PSSGComms *)self sendChannel];
  if (v5)
  {
    v7 = *(serialize + 344);
    v8 = *(serialize + 340);

    MEMORY[0x28219F328](sendChannel, serialize, 336, v7, v8, 3);
  }

  else
  {

    MEMORY[0x28219F320](sendChannel, serialize, 336, 3);
  }
}

- (int)sendMessageonReceiveChannel:(id)channel withReceiverPort:(BOOL)port
{
  portCopy = port;
  serialize = [channel serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(serialize + 48)];
  receiveChannel = [(PSSGComms *)self receiveChannel];
  if (portCopy)
  {

    return MEMORY[0x28219F338](receiveChannel, serialize, 336, 3);
  }

  else
  {

    return MEMORY[0x28219F320](receiveChannel, serialize, 336, 3);
  }
}

- (void)waitForMessageOnReceiveChannel:(id *)channel
{
  [(PSSGComms *)self receiveChannel];

  JUMPOUT(0x25F8CD340);
}

- (void)receiveMessageLoop
{
  v303 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v3 = objc_autoreleasePoolPush();
    v302 = 0;
    memset(v301, 0, sizeof(v301));
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    memset(v284, 0, sizeof(v284));
    [(PSSGComms *)self waitForMessageOnReceiveChannel:v284];
    switch(v285)
    {
      case 24:
        client = [(PSSGComms *)self client];
        isRegistered = [client isRegistered];

        v6 = __PSSGLogSharedInstance();
        v7 = v6;
        if (isRegistered)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            sessionName = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName;
            _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sessionName2 = [(PSSGComms *)self sessionName];
          v185 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client2 = [(PSSGComms *)self client];
          isRegistered2 = [client2 isRegistered];
          client3 = [(PSSGComms *)self client];
          isPublished = [client3 isPublished];
          client4 = [(PSSGComms *)self client];
          isReplaying = [client4 isReplaying];
          *buf = 138413314;
          v275 = sessionName2;
          v276 = 2080;
          v277 = v185;
          v278 = 1024;
          v279 = isRegistered2;
          v280 = 1024;
          v281 = isPublished;
          v282 = 1024;
          v283 = isReplaying;
          _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishResourceKeysAndStrides alloc] initWithRawMessage:v284];
        [client5 handlePublishResourceKeysAndStridesMessage:sessionName42];
        goto LABEL_152;
      case 25:
        client6 = [(PSSGComms *)self client];
        isRegistered3 = [client6 isRegistered];

        v64 = __PSSGLogSharedInstance();
        v65 = v64;
        if (isRegistered3)
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            sessionName3 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName3;
            _os_log_impl(&dword_25ECD8000, v65, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_STREAMS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sessionName4 = [(PSSGComms *)self sessionName];
          v193 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client7 = [(PSSGComms *)self client];
          isRegistered4 = [client7 isRegistered];
          client8 = [(PSSGComms *)self client];
          isPublished2 = [client8 isPublished];
          client9 = [(PSSGComms *)self client];
          isReplaying2 = [client9 isReplaying];
          *buf = 138413314;
          v275 = sessionName4;
          v276 = 2080;
          v277 = v193;
          v278 = 1024;
          v279 = isRegistered4;
          v280 = 1024;
          v281 = isPublished2;
          v282 = 1024;
          v283 = isReplaying2;
          _os_log_impl(&dword_25ECD8000, v65, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_STREAMS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishResourceStreams alloc] initWithRawMessage:v284];
        [client5 handlePublishResourceStreamsMessage:sessionName42];
        goto LABEL_152;
      case 26:
        client10 = [(PSSGComms *)self client];
        if ([client10 isRegistered])
        {
          client11 = [(PSSGComms *)self client];
          isPublished3 = [client11 isPublished];

          if (isPublished3)
          {
            v39 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              sessionName5 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName5;
              _os_log_impl(&dword_25ECD8000, v39, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_RESOURCES_WITH_STRIDES", buf, 0xCu);
            }

            goto LABEL_103;
          }
        }

        else
        {
        }

        v39 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sessionName6 = [(PSSGComms *)self sessionName];
          v161 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client12 = [(PSSGComms *)self client];
          isRegistered5 = [client12 isRegistered];
          client13 = [(PSSGComms *)self client];
          isPublished4 = [client13 isPublished];
          client14 = [(PSSGComms *)self client];
          isReplaying3 = [client14 isReplaying];
          *buf = 138413314;
          v275 = sessionName6;
          v276 = 2080;
          v277 = v161;
          v278 = 1024;
          v279 = isRegistered5;
          v280 = 1024;
          v281 = isPublished4;
          v282 = 1024;
          v283 = isReplaying3;
          _os_log_impl(&dword_25ECD8000, v39, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_RESOURCES_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_103:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageRequestResourcesWithStrides alloc] initWithRawMessage:v284];
        [client5 handleResourceRequestWithStridesMessage:sessionName42];
        goto LABEL_152;
      case 27:
        client15 = [(PSSGComms *)self client];
        if ([client15 isRegistered])
        {
          lastMessageTypeSent = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent == 26)
          {
            v48 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              sessionName7 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName7;
              _os_log_impl(&dword_25ECD8000, v48, OS_LOG_TYPE_DEFAULT, "(%@) <-- COMPLETED_RESOURCE_REQUEST_WITH_STRIDES", buf, 0xCu);
            }

            goto LABEL_111;
          }
        }

        else
        {
        }

        v48 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sessionName8 = [(PSSGComms *)self sessionName];
          v177 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client16 = [(PSSGComms *)self client];
          isRegistered6 = [client16 isRegistered];
          client17 = [(PSSGComms *)self client];
          isPublished5 = [client17 isPublished];
          client18 = [(PSSGComms *)self client];
          isReplaying4 = [client18 isReplaying];
          *buf = 138413314;
          v275 = sessionName8;
          v276 = 2080;
          v277 = v177;
          v278 = 1024;
          v279 = isRegistered6;
          v280 = 1024;
          v281 = isPublished5;
          v282 = 1024;
          v283 = isReplaying4;
          _os_log_impl(&dword_25ECD8000, v48, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_RESOURCE_REQUEST_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_111:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageCompletedResourceRequestWithStrides alloc] initWithRawMessage:v284];
        [client5 handleResourceRequestWithStridesCompletedMessage:sessionName42];
        goto LABEL_152;
      case 28:
        client19 = [(PSSGComms *)self client];
        isRegistered7 = [client19 isRegistered];

        v25 = __PSSGLogSharedInstance();
        v26 = v25;
        if (isRegistered7)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            sessionName9 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName9;
            _os_log_impl(&dword_25ECD8000, v26, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sessionName10 = [(PSSGComms *)self sessionName];
          v137 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client20 = [(PSSGComms *)self client];
          isRegistered8 = [client20 isRegistered];
          client21 = [(PSSGComms *)self client];
          isPublished6 = [client21 isPublished];
          client22 = [(PSSGComms *)self client];
          isReplaying5 = [client22 isReplaying];
          *buf = 138413314;
          v275 = sessionName10;
          v276 = 2080;
          v277 = v137;
          v278 = 1024;
          v279 = isRegistered8;
          v280 = 1024;
          v281 = isPublished6;
          v282 = 1024;
          v283 = isReplaying5;
          _os_log_impl(&dword_25ECD8000, v26, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishCurrentGraphs alloc] initWithRawMessage:v284];
        [client5 handlePublishCurrentGraphsMessage:sessionName42];
        goto LABEL_152;
      case 29:
        client23 = [(PSSGComms *)self client];
        if ([client23 isRegistered])
        {
          lastMessageTypeSent2 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent2 == 26)
          {
            v79 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              sessionName11 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName11;
              _os_log_impl(&dword_25ECD8000, v79, OS_LOG_TYPE_DEFAULT, "(%@) <-- RESOURCE_REQUESTS_FAILED", buf, 0xCu);
            }

            goto LABEL_132;
          }
        }

        else
        {
        }

        v79 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sessionName12 = [(PSSGComms *)self sessionName];
          v217 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client24 = [(PSSGComms *)self client];
          isRegistered9 = [client24 isRegistered];
          client25 = [(PSSGComms *)self client];
          isPublished7 = [client25 isPublished];
          client26 = [(PSSGComms *)self client];
          isReplaying6 = [client26 isReplaying];
          *buf = 138413314;
          v275 = sessionName12;
          v276 = 2080;
          v277 = v217;
          v278 = 1024;
          v279 = isRegistered9;
          v280 = 1024;
          v281 = isPublished7;
          v282 = 1024;
          v283 = isReplaying6;
          _os_log_impl(&dword_25ECD8000, v79, OS_LOG_TYPE_ERROR, "(%@) <-- RESOURCE_REQUESTS_FAILED: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_132:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageResourceRequestsFailed alloc] initWithRawMessage:v284];
        [client5 handleResourceRequestsFailedMessage:sessionName42];
        goto LABEL_152;
      case 30:
        client27 = [(PSSGComms *)self client];
        isRegistered10 = [client27 isRegistered];

        v90 = __PSSGLogSharedInstance();
        v91 = v90;
        if (isRegistered10)
        {
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            sessionName13 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName13;
            _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_DEFAULT, "(%@) <-- SET_RESOURCE_AVAILABILITY", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          sessionName14 = [(PSSGComms *)self sessionName];
          v233 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client28 = [(PSSGComms *)self client];
          isRegistered11 = [client28 isRegistered];
          client29 = [(PSSGComms *)self client];
          isPublished8 = [client29 isPublished];
          client30 = [(PSSGComms *)self client];
          isReplaying7 = [client30 isReplaying];
          *buf = 138413314;
          v275 = sessionName14;
          v276 = 2080;
          v277 = v233;
          v278 = 1024;
          v279 = isRegistered11;
          v280 = 1024;
          v281 = isPublished8;
          v282 = 1024;
          v283 = isReplaying7;
          _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_ERROR, "(%@) <-- SET_RESOURCE_AVAILABILITY: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSetResourceAvailability alloc] initWithRawMessage:v284];
        [client5 handleResourceAvailabilityUpdates:sessionName42];
        goto LABEL_152;
      case 31:
        client31 = [(PSSGComms *)self client];
        isRegistered12 = [client31 isRegistered];

        v52 = __PSSGLogSharedInstance();
        v53 = v52;
        if (isRegistered12)
        {
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_115;
          }

          sessionName15 = [(PSSGComms *)self sessionName];
          v55 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client32 = [(PSSGComms *)self client];
          isRegistered13 = [client32 isRegistered];
          client33 = [(PSSGComms *)self client];
          isPublished9 = [client33 isPublished];
          client34 = [(PSSGComms *)self client];
          isReplaying8 = [client34 isReplaying];
          *buf = 138413314;
          v275 = sessionName15;
          v276 = 2080;
          v277 = v55;
          v278 = 1024;
          v279 = isRegistered13;
          v280 = 1024;
          v281 = isPublished9;
          v282 = 1024;
          v283 = isReplaying8;
          _os_log_impl(&dword_25ECD8000, v53, OS_LOG_TYPE_ERROR, "(%@) <-- REGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        else
        {
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          sessionName15 = [(PSSGComms *)self sessionName];
          *buf = 138412290;
          v275 = sessionName15;
          _os_log_impl(&dword_25ECD8000, v53, OS_LOG_TYPE_DEFAULT, "(%@) <-- REGISTER_ACK", buf, 0xCu);
        }

LABEL_115:
        client5 = [(PSSGComms *)self client];
        [client5 handleRegisterClientAck];
        goto LABEL_153;
      case 32:
        client35 = [(PSSGComms *)self client];
        isRegistered14 = [client35 isRegistered];

        v104 = __PSSGLogSharedInstance();
        v105 = v104;
        if (isRegistered14)
        {
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            sessionName16 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName16;
            _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_DEFAULT, "(%@) <-- DEREGISTER_ACK", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          sessionName17 = [(PSSGComms *)self sessionName];
          v257 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client36 = [(PSSGComms *)self client];
          isRegistered15 = [client36 isRegistered];
          client37 = [(PSSGComms *)self client];
          isPublished10 = [client37 isPublished];
          client38 = [(PSSGComms *)self client];
          isReplaying9 = [client38 isReplaying];
          *buf = 138413314;
          v275 = sessionName17;
          v276 = 2080;
          v277 = v257;
          v278 = 1024;
          v279 = isRegistered15;
          v280 = 1024;
          v281 = isPublished10;
          v282 = 1024;
          v283 = isReplaying9;
          _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_ERROR, "(%@) <-- DEREGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        [client5 handleDeRegisterClientAck];
        v264 = 1;
        goto LABEL_154;
      case 33:
        client39 = [(PSSGComms *)self client];
        if ([client39 isRegistered])
        {
          lastMessageTypeSent3 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent3 == 6)
          {
            v34 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              sessionName18 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName18;
              _os_log_impl(&dword_25ECD8000, v34, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_ALL_GRAPHS", buf, 0xCu);
            }

            goto LABEL_99;
          }
        }

        else
        {
        }

        v34 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sessionName19 = [(PSSGComms *)self sessionName];
          v153 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client40 = [(PSSGComms *)self client];
          isRegistered16 = [client40 isRegistered];
          client41 = [(PSSGComms *)self client];
          isPublished11 = [client41 isPublished];
          client42 = [(PSSGComms *)self client];
          isReplaying10 = [client42 isReplaying];
          *buf = 138413314;
          v275 = sessionName19;
          v276 = 2080;
          v277 = v153;
          v278 = 1024;
          v279 = isRegistered16;
          v280 = 1024;
          v281 = isPublished11;
          v282 = 1024;
          v283 = isReplaying10;
          _os_log_impl(&dword_25ECD8000, v34, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_ALL_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_99:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHPublishAllGraphs alloc] initWithRawMessage:v284];
        [client5 handlePublishAllGraphs:sessionName42];
        goto LABEL_152;
      case 34:
        client43 = [(PSSGComms *)self client];
        if ([client43 isRegistered])
        {
          lastMessageTypeSent4 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent4 == 7)
          {
            v100 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              sessionName20 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName20;
              _os_log_impl(&dword_25ECD8000, v100, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_STATS", buf, 0xCu);
            }

            goto LABEL_145;
          }
        }

        else
        {
        }

        v100 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          sessionName21 = [(PSSGComms *)self sessionName];
          v249 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client44 = [(PSSGComms *)self client];
          isRegistered17 = [client44 isRegistered];
          client45 = [(PSSGComms *)self client];
          isPublished12 = [client45 isPublished];
          client46 = [(PSSGComms *)self client];
          isReplaying11 = [client46 isReplaying];
          *buf = 138413314;
          v275 = sessionName21;
          v276 = 2080;
          v277 = v249;
          v278 = 1024;
          v279 = isRegistered17;
          v280 = 1024;
          v281 = isPublished12;
          v282 = 1024;
          v283 = isReplaying11;
          _os_log_impl(&dword_25ECD8000, v100, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_145:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorStats alloc] initWithRawMessage:v284];
        [client5 handleReportProcessMonitorStats:sessionName42];
        goto LABEL_152;
      case 35:
        client47 = [(PSSGComms *)self client];
        if ([client47 isRegistered])
        {
          lastMessageTypeSent5 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent5 == 8)
          {
            v21 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              sessionName22 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName22;
              _os_log_impl(&dword_25ECD8000, v21, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_SYSTEM_ACTION_STATS", buf, 0xCu);
            }

            goto LABEL_88;
          }
        }

        else
        {
        }

        v21 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sessionName23 = [(PSSGComms *)self sessionName];
          v129 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client48 = [(PSSGComms *)self client];
          isRegistered18 = [client48 isRegistered];
          client49 = [(PSSGComms *)self client];
          isPublished13 = [client49 isPublished];
          client50 = [(PSSGComms *)self client];
          isReplaying12 = [client50 isReplaying];
          *buf = 138413314;
          v275 = sessionName23;
          v276 = 2080;
          v277 = v129;
          v278 = 1024;
          v279 = isRegistered18;
          v280 = 1024;
          v281 = isPublished13;
          v282 = 1024;
          v283 = isReplaying12;
          _os_log_impl(&dword_25ECD8000, v21, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_SYSTEM_ACTION_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_88:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportSystemActionStats alloc] initWithRawMessage:v284];
        [client5 handleReportSystemActionStats:sessionName42];
        goto LABEL_152;
      case 36:
        client51 = [(PSSGComms *)self client];
        if ([client51 isRegistered])
        {
          lastMessageTypeSent6 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent6 == 9)
          {
            v30 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              sessionName24 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName24;
              _os_log_impl(&dword_25ECD8000, v30, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_EVENT_LOG", buf, 0xCu);
            }

            goto LABEL_95;
          }
        }

        else
        {
        }

        v30 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sessionName25 = [(PSSGComms *)self sessionName];
          v145 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client52 = [(PSSGComms *)self client];
          isRegistered19 = [client52 isRegistered];
          client53 = [(PSSGComms *)self client];
          isPublished14 = [client53 isPublished];
          client54 = [(PSSGComms *)self client];
          isReplaying13 = [client54 isReplaying];
          *buf = 138413314;
          v275 = sessionName25;
          v276 = 2080;
          v277 = v145;
          v278 = 1024;
          v279 = isRegistered19;
          v280 = 1024;
          v281 = isPublished14;
          v282 = 1024;
          v283 = isReplaying13;
          _os_log_impl(&dword_25ECD8000, v30, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_EVENT_LOG: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_95:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorEventLog alloc] initWithRawMessage:v284];
        [client5 handleReportProcessMonitorEventLog:sessionName42];
        goto LABEL_152;
      case 37:
        client55 = [(PSSGComms *)self client];
        isRegistered20 = [client55 isRegistered];

        v85 = __PSSGLogSharedInstance();
        v86 = v85;
        if (isRegistered20)
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            sessionName26 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName26;
            _os_log_impl(&dword_25ECD8000, v86, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sessionName27 = [(PSSGComms *)self sessionName];
          v225 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client56 = [(PSSGComms *)self client];
          isRegistered21 = [client56 isRegistered];
          client57 = [(PSSGComms *)self client];
          isPublished15 = [client57 isPublished];
          client58 = [(PSSGComms *)self client];
          isReplaying14 = [client58 isReplaying];
          *buf = 138413314;
          v275 = sessionName27;
          v276 = 2080;
          v277 = v225;
          v278 = 1024;
          v279 = isRegistered21;
          v280 = 1024;
          v281 = isPublished15;
          v282 = 1024;
          v283 = isReplaying14;
          _os_log_impl(&dword_25ECD8000, v86, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphs alloc] initWithRawMessage:v284];
        [client5 handleRequestCurrentGraphsMessage:sessionName42];
        goto LABEL_152;
      case 38:
        client59 = [(PSSGComms *)self client];
        isRegistered22 = [client59 isRegistered];

        v16 = __PSSGLogSharedInstance();
        v17 = v16;
        if (isRegistered22)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sessionName28 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName28;
            _os_log_impl(&dword_25ECD8000, v17, OS_LOG_TYPE_DEFAULT, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sessionName29 = [(PSSGComms *)self sessionName];
          v121 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client60 = [(PSSGComms *)self client];
          isRegistered23 = [client60 isRegistered];
          client61 = [(PSSGComms *)self client];
          isPublished16 = [client61 isPublished];
          client62 = [(PSSGComms *)self client];
          isReplaying15 = [client62 isReplaying];
          *buf = 138413314;
          v275 = sessionName29;
          v276 = 2080;
          v277 = v121;
          v278 = 1024;
          v279 = isRegistered23;
          v280 = 1024;
          v281 = isPublished16;
          v282 = 1024;
          v283 = isReplaying15;
          _os_log_impl(&dword_25ECD8000, v17, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageCompletedCurrentGraphsRequest alloc] initWithRawMessage:v284];
        [client5 handleCompletedCurrentGraphsRequestMessage:sessionName42];
        goto LABEL_152;
      case 39:
        client63 = [(PSSGComms *)self client];
        if ([client63 isRegistered])
        {
          client64 = [(PSSGComms *)self client];
          isReplaying16 = [client64 isReplaying];

          if ((isReplaying16 & 1) == 0)
          {
            v44 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              sessionName30 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName30;
              _os_log_impl(&dword_25ECD8000, v44, OS_LOG_TYPE_DEFAULT, "(%@) <-- SYSTEM_REPLAY_STARTING", buf, 0xCu);
            }

            goto LABEL_107;
          }
        }

        else
        {
        }

        v44 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sessionName31 = [(PSSGComms *)self sessionName];
          v169 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client65 = [(PSSGComms *)self client];
          isRegistered24 = [client65 isRegistered];
          client66 = [(PSSGComms *)self client];
          isPublished17 = [client66 isPublished];
          client67 = [(PSSGComms *)self client];
          isReplaying17 = [client67 isReplaying];
          *buf = 138413314;
          v275 = sessionName31;
          v276 = 2080;
          v277 = v169;
          v278 = 1024;
          v279 = isRegistered24;
          v280 = 1024;
          v281 = isPublished17;
          v282 = 1024;
          v283 = isReplaying17;
          _os_log_impl(&dword_25ECD8000, v44, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_STARTING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_107:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSystemReplayStarting alloc] initWithRawMessage:v284];
        [client5 handleSystemReplayStarting:sessionName42];
        goto LABEL_152;
      case 40:
        client68 = [(PSSGComms *)self client];
        if ([client68 isRegistered])
        {
          client69 = [(PSSGComms *)self client];
          isReplaying18 = [client69 isReplaying];

          if (isReplaying18)
          {
            v12 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              sessionName32 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName32;
              _os_log_impl(&dword_25ECD8000, v12, OS_LOG_TYPE_DEFAULT, "(%@) <-- SYSTEM_REPLAY_ENDING", buf, 0xCu);
            }

            goto LABEL_81;
          }
        }

        else
        {
        }

        v12 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sessionName33 = [(PSSGComms *)self sessionName];
          v113 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client70 = [(PSSGComms *)self client];
          isRegistered25 = [client70 isRegistered];
          client71 = [(PSSGComms *)self client];
          isPublished18 = [client71 isPublished];
          client72 = [(PSSGComms *)self client];
          isReplaying19 = [client72 isReplaying];
          *buf = 138413314;
          v275 = sessionName33;
          v276 = 2080;
          v277 = v113;
          v278 = 1024;
          v279 = isRegistered25;
          v280 = 1024;
          v281 = isPublished18;
          v282 = 1024;
          v283 = isReplaying19;
          _os_log_impl(&dword_25ECD8000, v12, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_ENDING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_81:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSystemReplayEnding alloc] initWithRawMessage:v284];
        [client5 handleSystemReplayEnding:sessionName42];
        goto LABEL_152;
      case 41:
        client73 = [(PSSGComms *)self client];
        if ([client73 isRegistered])
        {
          client74 = [(PSSGComms *)self client];
          isReplaying20 = [client74 isReplaying];

          if (isReplaying20)
          {
            v70 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              sessionName34 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = sessionName34;
              _os_log_impl(&dword_25ECD8000, v70, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_GRAPH_RESUBMISSION", buf, 0xCu);
            }

            goto LABEL_125;
          }
        }

        else
        {
        }

        v70 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sessionName35 = [(PSSGComms *)self sessionName];
          v201 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client75 = [(PSSGComms *)self client];
          isRegistered26 = [client75 isRegistered];
          client76 = [(PSSGComms *)self client];
          isPublished19 = [client76 isPublished];
          client77 = [(PSSGComms *)self client];
          isReplaying21 = [client77 isReplaying];
          *buf = 138413314;
          v275 = sessionName35;
          v276 = 2080;
          v277 = v201;
          v278 = 1024;
          v279 = isRegistered26;
          v280 = 1024;
          v281 = isPublished19;
          v282 = 1024;
          v283 = isReplaying21;
          _os_log_impl(&dword_25ECD8000, v70, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_GRAPH_RESUBMISSION: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_125:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestGraphResubmission alloc] initWithRawMessage:v284];
        [client5 handleRequestGraphResubmission:sessionName42];
LABEL_152:

LABEL_153:
        v264 = 0;
LABEL_154:

        if (*(v301 + 8) != 0 || *(&v301[1] + 1))
        {
          MEMORY[0x25F8CD300](v284);
        }

        objc_autoreleasePoolPop(v3);
        if (!v264)
        {
          continue;
        }

        v273 = *MEMORY[0x277D85DE8];
        return;
      case 42:
        client78 = [(PSSGComms *)self client];
        isRegistered27 = [client78 isRegistered];

        v95 = __PSSGLogSharedInstance();
        v96 = v95;
        if (isRegistered27)
        {
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            sessionName36 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName36;
            _os_log_impl(&dword_25ECD8000, v96, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_REPLAY_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          sessionName37 = [(PSSGComms *)self sessionName];
          v241 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client79 = [(PSSGComms *)self client];
          isRegistered28 = [client79 isRegistered];
          client80 = [(PSSGComms *)self client];
          isPublished20 = [client80 isPublished];
          client81 = [(PSSGComms *)self client];
          isReplaying22 = [client81 isReplaying];
          *buf = 138413314;
          v275 = sessionName37;
          v276 = 2080;
          v277 = v241;
          v278 = 1024;
          v279 = isRegistered28;
          v280 = 1024;
          v281 = isPublished20;
          v282 = 1024;
          v283 = isReplaying22;
          _os_log_impl(&dword_25ECD8000, v96, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_REPLAY_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestResourceContext alloc] initWithRawMessage:v284];
        [client5 handleRequestReplayResources:sessionName42];
        goto LABEL_152;
      case 43:
        client82 = [(PSSGComms *)self client];
        isRegistered29 = [client82 isRegistered];

        v109 = __PSSGLogSharedInstance();
        v110 = v109;
        if (isRegistered29)
        {
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            sessionName38 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName38;
            _os_log_impl(&dword_25ECD8000, v110, OS_LOG_TYPE_DEFAULT, "(%@) <-- SETUP_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          sessionName39 = [(PSSGComms *)self sessionName];
          v266 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client83 = [(PSSGComms *)self client];
          isRegistered30 = [client83 isRegistered];
          client84 = [(PSSGComms *)self client];
          isPublished21 = [client84 isPublished];
          client85 = [(PSSGComms *)self client];
          isReplaying23 = [client85 isReplaying];
          *buf = 138413314;
          v275 = sessionName39;
          v276 = 2080;
          v277 = v266;
          v278 = 1024;
          v279 = isRegistered30;
          v280 = 1024;
          v281 = isPublished21;
          v282 = 1024;
          v283 = isReplaying23;
          _os_log_impl(&dword_25ECD8000, v110, OS_LOG_TYPE_ERROR, "(%@) <-- SETUP_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResources alloc] initWithRawMessage:v284];
        [client5 handleSetupResourcesMessage:sessionName42];
        goto LABEL_152;
      case 44:
        client86 = [(PSSGComms *)self client];
        isRegistered31 = [client86 isRegistered];

        v74 = __PSSGLogSharedInstance();
        v75 = v74;
        if (isRegistered31)
        {
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            sessionName40 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = sessionName40;
            _os_log_impl(&dword_25ECD8000, v75, OS_LOG_TYPE_DEFAULT, "(%@) <-- PAUSE_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sessionName41 = [(PSSGComms *)self sessionName];
          v209 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client87 = [(PSSGComms *)self client];
          isRegistered32 = [client87 isRegistered];
          client88 = [(PSSGComms *)self client];
          isPublished22 = [client88 isPublished];
          client89 = [(PSSGComms *)self client];
          isReplaying24 = [client89 isReplaying];
          *buf = 138413314;
          v275 = sessionName41;
          v276 = 2080;
          v277 = v209;
          v278 = 1024;
          v279 = isRegistered32;
          v280 = 1024;
          v281 = isPublished22;
          v282 = 1024;
          v283 = isReplaying24;
          _os_log_impl(&dword_25ECD8000, v75, OS_LOG_TYPE_ERROR, "(%@) <-- PAUSE_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePauseResources alloc] initWithRawMessage:v284];
        [client5 handlePauseResourcesMessage:sessionName42];
        goto LABEL_152;
      default:
        client5 = __PSSGLogSharedInstance();
        if (!os_log_type_enabled(client5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_153;
        }

        sessionName42 = [(PSSGComms *)self sessionName];
        *buf = 138412546;
        v275 = sessionName42;
        v276 = 2048;
        v277 = v285;
        _os_log_impl(&dword_25ECD8000, client5, OS_LOG_TYPE_DEFAULT, "(%@) <-- UNKNOWN! (%llu)", buf, 0x16u);
        goto LABEL_152;
    }
  }
}

- (PSSGClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (NSString)sessionName
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionName);

  return WeakRetained;
}

@end