@interface PSSGComms
- (NSString)sessionName;
- (PSSGClient)client;
- (int)sendMessageonReceiveChannel:(id)a3 withReceiverPort:(BOOL)a4;
- (void)dealloc;
- (void)deregisterForClient:(id)a3;
- (void)receiveMessageLoop;
- (void)registerForClient:(id)a3;
- (void)sendDeregisterMessage:(id)a3;
- (void)sendMessage:(id)a3;
- (void)sendRegisterMessage:(id)a3;
- (void)waitForMessageOnReceiveChannel:(id *)a3;
@end

@implementation PSSGComms

- (void)registerForClient:(id)a3
{
  v4 = a3;
  [(PSSGComms *)self setClient:v4];
  [(PSSGComms *)self setSendChannel:ps_create_comms_client_without_reply_port()];
  [(PSSGComms *)self setReceiveChannel:ps_create_comms_client_without_reply_port()];
  v5 = [v4 sessionName];
  [(PSSGComms *)self setSessionName:v5];

  v6 = [v4 sessionName];
  [(PSSGComms *)self sendRegisterMessage:v6];

  v7 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel_receiveMessageLoop object:0];
  [(PSSGComms *)self setReceiveMessageThread:v7];

  v8 = [v4 sessionName];

  v9 = [@"polaris-systemgraph-rx" stringByAppendingPathExtension:v8];
  v10 = [(PSSGComms *)self receiveMessageThread];
  [v10 setName:v9];

  v11 = [(PSSGComms *)self receiveMessageThread];
  [v11 setThreadPriority:60.0];

  v12 = [(PSSGComms *)self receiveMessageThread];
  [v12 start];
}

- (void)deregisterForClient:(id)a3
{
  v4 = [(PSSGComms *)self sessionName];
  [(PSSGComms *)self sendDeregisterMessage:v4];
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

- (void)sendRegisterMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PSSGMessageRegister messageWithSessionName:v4];
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
        v17 = v4;
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
    v17 = v4;
    v18 = 1024;
    v19 = v13;
    _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_DEFAULT, "Successfully registered %@ (pid=%d)", buf, 0x12u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendDeregisterMessage:(id)a3
{
  v4 = [PSSGMessageDeRegister messageWithSessionName:a3];
  [(PSSGComms *)self sendMessageonReceiveChannel:v4 withReceiverPort:0];
}

- (void)sendMessage:(id)a3
{
  v4 = [a3 serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(v4 + 48)];
  v5 = *(v4 + 340);
  v6 = [(PSSGComms *)self sendChannel];
  if (v5)
  {
    v7 = *(v4 + 344);
    v8 = *(v4 + 340);

    MEMORY[0x28219F328](v6, v4, 336, v7, v8, 3);
  }

  else
  {

    MEMORY[0x28219F320](v6, v4, 336, 3);
  }
}

- (int)sendMessageonReceiveChannel:(id)a3 withReceiverPort:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(v6 + 48)];
  v7 = [(PSSGComms *)self receiveChannel];
  if (v4)
  {

    return MEMORY[0x28219F338](v7, v6, 336, 3);
  }

  else
  {

    return MEMORY[0x28219F320](v7, v6, 336, 3);
  }
}

- (void)waitForMessageOnReceiveChannel:(id *)a3
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
        v4 = [(PSSGComms *)self client];
        v5 = [v4 isRegistered];

        v6 = __PSSGLogSharedInstance();
        v7 = v6;
        if (v5)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v8;
            _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v184 = [(PSSGComms *)self sessionName];
          v185 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v186 = [(PSSGComms *)self client];
          v187 = [v186 isRegistered];
          v188 = [(PSSGComms *)self client];
          v189 = [v188 isPublished];
          v190 = [(PSSGComms *)self client];
          v191 = [v190 isReplaying];
          *buf = 138413314;
          v275 = v184;
          v276 = 2080;
          v277 = v185;
          v278 = 1024;
          v279 = v187;
          v280 = 1024;
          v281 = v189;
          v282 = 1024;
          v283 = v191;
          _os_log_impl(&dword_25ECD8000, v7, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessagePublishResourceKeysAndStrides alloc] initWithRawMessage:v284];
        [v81 handlePublishResourceKeysAndStridesMessage:v82];
        goto LABEL_152;
      case 25:
        v62 = [(PSSGComms *)self client];
        v63 = [v62 isRegistered];

        v64 = __PSSGLogSharedInstance();
        v65 = v64;
        if (v63)
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v66;
            _os_log_impl(&dword_25ECD8000, v65, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_STREAMS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v192 = [(PSSGComms *)self sessionName];
          v193 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v194 = [(PSSGComms *)self client];
          v195 = [v194 isRegistered];
          v196 = [(PSSGComms *)self client];
          v197 = [v196 isPublished];
          v198 = [(PSSGComms *)self client];
          v199 = [v198 isReplaying];
          *buf = 138413314;
          v275 = v192;
          v276 = 2080;
          v277 = v193;
          v278 = 1024;
          v279 = v195;
          v280 = 1024;
          v281 = v197;
          v282 = 1024;
          v283 = v199;
          _os_log_impl(&dword_25ECD8000, v65, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_STREAMS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessagePublishResourceStreams alloc] initWithRawMessage:v284];
        [v81 handlePublishResourceStreamsMessage:v82];
        goto LABEL_152;
      case 26:
        v36 = [(PSSGComms *)self client];
        if ([v36 isRegistered])
        {
          v37 = [(PSSGComms *)self client];
          v38 = [v37 isPublished];

          if (v38)
          {
            v39 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v40;
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
          v160 = [(PSSGComms *)self sessionName];
          v161 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v162 = [(PSSGComms *)self client];
          v163 = [v162 isRegistered];
          v164 = [(PSSGComms *)self client];
          v165 = [v164 isPublished];
          v166 = [(PSSGComms *)self client];
          v167 = [v166 isReplaying];
          *buf = 138413314;
          v275 = v160;
          v276 = 2080;
          v277 = v161;
          v278 = 1024;
          v279 = v163;
          v280 = 1024;
          v281 = v165;
          v282 = 1024;
          v283 = v167;
          _os_log_impl(&dword_25ECD8000, v39, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_RESOURCES_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_103:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageRequestResourcesWithStrides alloc] initWithRawMessage:v284];
        [v81 handleResourceRequestWithStridesMessage:v82];
        goto LABEL_152;
      case 27:
        v46 = [(PSSGComms *)self client];
        if ([v46 isRegistered])
        {
          v47 = [(PSSGComms *)self lastMessageTypeSent];

          if (v47 == 26)
          {
            v48 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v49;
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
          v176 = [(PSSGComms *)self sessionName];
          v177 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v178 = [(PSSGComms *)self client];
          v179 = [v178 isRegistered];
          v180 = [(PSSGComms *)self client];
          v181 = [v180 isPublished];
          v182 = [(PSSGComms *)self client];
          v183 = [v182 isReplaying];
          *buf = 138413314;
          v275 = v176;
          v276 = 2080;
          v277 = v177;
          v278 = 1024;
          v279 = v179;
          v280 = 1024;
          v281 = v181;
          v282 = 1024;
          v283 = v183;
          _os_log_impl(&dword_25ECD8000, v48, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_RESOURCE_REQUEST_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_111:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageCompletedResourceRequestWithStrides alloc] initWithRawMessage:v284];
        [v81 handleResourceRequestWithStridesCompletedMessage:v82];
        goto LABEL_152;
      case 28:
        v23 = [(PSSGComms *)self client];
        v24 = [v23 isRegistered];

        v25 = __PSSGLogSharedInstance();
        v26 = v25;
        if (v24)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v27;
            _os_log_impl(&dword_25ECD8000, v26, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v136 = [(PSSGComms *)self sessionName];
          v137 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v138 = [(PSSGComms *)self client];
          v139 = [v138 isRegistered];
          v140 = [(PSSGComms *)self client];
          v141 = [v140 isPublished];
          v142 = [(PSSGComms *)self client];
          v143 = [v142 isReplaying];
          *buf = 138413314;
          v275 = v136;
          v276 = 2080;
          v277 = v137;
          v278 = 1024;
          v279 = v139;
          v280 = 1024;
          v281 = v141;
          v282 = 1024;
          v283 = v143;
          _os_log_impl(&dword_25ECD8000, v26, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessagePublishCurrentGraphs alloc] initWithRawMessage:v284];
        [v81 handlePublishCurrentGraphsMessage:v82];
        goto LABEL_152;
      case 29:
        v77 = [(PSSGComms *)self client];
        if ([v77 isRegistered])
        {
          v78 = [(PSSGComms *)self lastMessageTypeSent];

          if (v78 == 26)
          {
            v79 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v80 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v80;
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
          v216 = [(PSSGComms *)self sessionName];
          v217 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v218 = [(PSSGComms *)self client];
          v219 = [v218 isRegistered];
          v220 = [(PSSGComms *)self client];
          v221 = [v220 isPublished];
          v222 = [(PSSGComms *)self client];
          v223 = [v222 isReplaying];
          *buf = 138413314;
          v275 = v216;
          v276 = 2080;
          v277 = v217;
          v278 = 1024;
          v279 = v219;
          v280 = 1024;
          v281 = v221;
          v282 = 1024;
          v283 = v223;
          _os_log_impl(&dword_25ECD8000, v79, OS_LOG_TYPE_ERROR, "(%@) <-- RESOURCE_REQUESTS_FAILED: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_132:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageResourceRequestsFailed alloc] initWithRawMessage:v284];
        [v81 handleResourceRequestsFailedMessage:v82];
        goto LABEL_152;
      case 30:
        v88 = [(PSSGComms *)self client];
        v89 = [v88 isRegistered];

        v90 = __PSSGLogSharedInstance();
        v91 = v90;
        if (v89)
        {
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v92;
            _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_DEFAULT, "(%@) <-- SET_RESOURCE_AVAILABILITY", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v232 = [(PSSGComms *)self sessionName];
          v233 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v234 = [(PSSGComms *)self client];
          v235 = [v234 isRegistered];
          v236 = [(PSSGComms *)self client];
          v237 = [v236 isPublished];
          v238 = [(PSSGComms *)self client];
          v239 = [v238 isReplaying];
          *buf = 138413314;
          v275 = v232;
          v276 = 2080;
          v277 = v233;
          v278 = 1024;
          v279 = v235;
          v280 = 1024;
          v281 = v237;
          v282 = 1024;
          v283 = v239;
          _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_ERROR, "(%@) <-- SET_RESOURCE_AVAILABILITY: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSetResourceAvailability alloc] initWithRawMessage:v284];
        [v81 handleResourceAvailabilityUpdates:v82];
        goto LABEL_152;
      case 31:
        v50 = [(PSSGComms *)self client];
        v51 = [v50 isRegistered];

        v52 = __PSSGLogSharedInstance();
        v53 = v52;
        if (v51)
        {
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_115;
          }

          v54 = [(PSSGComms *)self sessionName];
          v55 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v56 = [(PSSGComms *)self client];
          v57 = [v56 isRegistered];
          v58 = [(PSSGComms *)self client];
          v59 = [v58 isPublished];
          v60 = [(PSSGComms *)self client];
          v61 = [v60 isReplaying];
          *buf = 138413314;
          v275 = v54;
          v276 = 2080;
          v277 = v55;
          v278 = 1024;
          v279 = v57;
          v280 = 1024;
          v281 = v59;
          v282 = 1024;
          v283 = v61;
          _os_log_impl(&dword_25ECD8000, v53, OS_LOG_TYPE_ERROR, "(%@) <-- REGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        else
        {
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          v54 = [(PSSGComms *)self sessionName];
          *buf = 138412290;
          v275 = v54;
          _os_log_impl(&dword_25ECD8000, v53, OS_LOG_TYPE_DEFAULT, "(%@) <-- REGISTER_ACK", buf, 0xCu);
        }

LABEL_115:
        v81 = [(PSSGComms *)self client];
        [v81 handleRegisterClientAck];
        goto LABEL_153;
      case 32:
        v102 = [(PSSGComms *)self client];
        v103 = [v102 isRegistered];

        v104 = __PSSGLogSharedInstance();
        v105 = v104;
        if (v103)
        {
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v106 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v106;
            _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_DEFAULT, "(%@) <-- DEREGISTER_ACK", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v256 = [(PSSGComms *)self sessionName];
          v257 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v258 = [(PSSGComms *)self client];
          v259 = [v258 isRegistered];
          v260 = [(PSSGComms *)self client];
          v261 = [v260 isPublished];
          v262 = [(PSSGComms *)self client];
          v263 = [v262 isReplaying];
          *buf = 138413314;
          v275 = v256;
          v276 = 2080;
          v277 = v257;
          v278 = 1024;
          v279 = v259;
          v280 = 1024;
          v281 = v261;
          v282 = 1024;
          v283 = v263;
          _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_ERROR, "(%@) <-- DEREGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        [v81 handleDeRegisterClientAck];
        v264 = 1;
        goto LABEL_154;
      case 33:
        v32 = [(PSSGComms *)self client];
        if ([v32 isRegistered])
        {
          v33 = [(PSSGComms *)self lastMessageTypeSent];

          if (v33 == 6)
          {
            v34 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v35;
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
          v152 = [(PSSGComms *)self sessionName];
          v153 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v154 = [(PSSGComms *)self client];
          v155 = [v154 isRegistered];
          v156 = [(PSSGComms *)self client];
          v157 = [v156 isPublished];
          v158 = [(PSSGComms *)self client];
          v159 = [v158 isReplaying];
          *buf = 138413314;
          v275 = v152;
          v276 = 2080;
          v277 = v153;
          v278 = 1024;
          v279 = v155;
          v280 = 1024;
          v281 = v157;
          v282 = 1024;
          v283 = v159;
          _os_log_impl(&dword_25ECD8000, v34, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_ALL_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_99:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSHPublishAllGraphs alloc] initWithRawMessage:v284];
        [v81 handlePublishAllGraphs:v82];
        goto LABEL_152;
      case 34:
        v98 = [(PSSGComms *)self client];
        if ([v98 isRegistered])
        {
          v99 = [(PSSGComms *)self lastMessageTypeSent];

          if (v99 == 7)
          {
            v100 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
            {
              v101 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v101;
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
          v248 = [(PSSGComms *)self sessionName];
          v249 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v250 = [(PSSGComms *)self client];
          v251 = [v250 isRegistered];
          v252 = [(PSSGComms *)self client];
          v253 = [v252 isPublished];
          v254 = [(PSSGComms *)self client];
          v255 = [v254 isReplaying];
          *buf = 138413314;
          v275 = v248;
          v276 = 2080;
          v277 = v249;
          v278 = 1024;
          v279 = v251;
          v280 = 1024;
          v281 = v253;
          v282 = 1024;
          v283 = v255;
          _os_log_impl(&dword_25ECD8000, v100, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_145:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorStats alloc] initWithRawMessage:v284];
        [v81 handleReportProcessMonitorStats:v82];
        goto LABEL_152;
      case 35:
        v19 = [(PSSGComms *)self client];
        if ([v19 isRegistered])
        {
          v20 = [(PSSGComms *)self lastMessageTypeSent];

          if (v20 == 8)
          {
            v21 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v22;
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
          v128 = [(PSSGComms *)self sessionName];
          v129 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v130 = [(PSSGComms *)self client];
          v131 = [v130 isRegistered];
          v132 = [(PSSGComms *)self client];
          v133 = [v132 isPublished];
          v134 = [(PSSGComms *)self client];
          v135 = [v134 isReplaying];
          *buf = 138413314;
          v275 = v128;
          v276 = 2080;
          v277 = v129;
          v278 = 1024;
          v279 = v131;
          v280 = 1024;
          v281 = v133;
          v282 = 1024;
          v283 = v135;
          _os_log_impl(&dword_25ECD8000, v21, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_SYSTEM_ACTION_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_88:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSHReportSystemActionStats alloc] initWithRawMessage:v284];
        [v81 handleReportSystemActionStats:v82];
        goto LABEL_152;
      case 36:
        v28 = [(PSSGComms *)self client];
        if ([v28 isRegistered])
        {
          v29 = [(PSSGComms *)self lastMessageTypeSent];

          if (v29 == 9)
          {
            v30 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v31;
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
          v144 = [(PSSGComms *)self sessionName];
          v145 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v146 = [(PSSGComms *)self client];
          v147 = [v146 isRegistered];
          v148 = [(PSSGComms *)self client];
          v149 = [v148 isPublished];
          v150 = [(PSSGComms *)self client];
          v151 = [v150 isReplaying];
          *buf = 138413314;
          v275 = v144;
          v276 = 2080;
          v277 = v145;
          v278 = 1024;
          v279 = v147;
          v280 = 1024;
          v281 = v149;
          v282 = 1024;
          v283 = v151;
          _os_log_impl(&dword_25ECD8000, v30, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_EVENT_LOG: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_95:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorEventLog alloc] initWithRawMessage:v284];
        [v81 handleReportProcessMonitorEventLog:v82];
        goto LABEL_152;
      case 37:
        v83 = [(PSSGComms *)self client];
        v84 = [v83 isRegistered];

        v85 = __PSSGLogSharedInstance();
        v86 = v85;
        if (v84)
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v87 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v87;
            _os_log_impl(&dword_25ECD8000, v86, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v224 = [(PSSGComms *)self sessionName];
          v225 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v226 = [(PSSGComms *)self client];
          v227 = [v226 isRegistered];
          v228 = [(PSSGComms *)self client];
          v229 = [v228 isPublished];
          v230 = [(PSSGComms *)self client];
          v231 = [v230 isReplaying];
          *buf = 138413314;
          v275 = v224;
          v276 = 2080;
          v277 = v225;
          v278 = 1024;
          v279 = v227;
          v280 = 1024;
          v281 = v229;
          v282 = 1024;
          v283 = v231;
          _os_log_impl(&dword_25ECD8000, v86, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphs alloc] initWithRawMessage:v284];
        [v81 handleRequestCurrentGraphsMessage:v82];
        goto LABEL_152;
      case 38:
        v14 = [(PSSGComms *)self client];
        v15 = [v14 isRegistered];

        v16 = __PSSGLogSharedInstance();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v18;
            _os_log_impl(&dword_25ECD8000, v17, OS_LOG_TYPE_DEFAULT, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v120 = [(PSSGComms *)self sessionName];
          v121 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v122 = [(PSSGComms *)self client];
          v123 = [v122 isRegistered];
          v124 = [(PSSGComms *)self client];
          v125 = [v124 isPublished];
          v126 = [(PSSGComms *)self client];
          v127 = [v126 isReplaying];
          *buf = 138413314;
          v275 = v120;
          v276 = 2080;
          v277 = v121;
          v278 = 1024;
          v279 = v123;
          v280 = 1024;
          v281 = v125;
          v282 = 1024;
          v283 = v127;
          _os_log_impl(&dword_25ECD8000, v17, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageCompletedCurrentGraphsRequest alloc] initWithRawMessage:v284];
        [v81 handleCompletedCurrentGraphsRequestMessage:v82];
        goto LABEL_152;
      case 39:
        v41 = [(PSSGComms *)self client];
        if ([v41 isRegistered])
        {
          v42 = [(PSSGComms *)self client];
          v43 = [v42 isReplaying];

          if ((v43 & 1) == 0)
          {
            v44 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v45;
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
          v168 = [(PSSGComms *)self sessionName];
          v169 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v170 = [(PSSGComms *)self client];
          v171 = [v170 isRegistered];
          v172 = [(PSSGComms *)self client];
          v173 = [v172 isPublished];
          v174 = [(PSSGComms *)self client];
          v175 = [v174 isReplaying];
          *buf = 138413314;
          v275 = v168;
          v276 = 2080;
          v277 = v169;
          v278 = 1024;
          v279 = v171;
          v280 = 1024;
          v281 = v173;
          v282 = 1024;
          v283 = v175;
          _os_log_impl(&dword_25ECD8000, v44, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_STARTING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_107:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSystemReplayStarting alloc] initWithRawMessage:v284];
        [v81 handleSystemReplayStarting:v82];
        goto LABEL_152;
      case 40:
        v9 = [(PSSGComms *)self client];
        if ([v9 isRegistered])
        {
          v10 = [(PSSGComms *)self client];
          v11 = [v10 isReplaying];

          if (v11)
          {
            v12 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v13;
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
          v112 = [(PSSGComms *)self sessionName];
          v113 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v114 = [(PSSGComms *)self client];
          v115 = [v114 isRegistered];
          v116 = [(PSSGComms *)self client];
          v117 = [v116 isPublished];
          v118 = [(PSSGComms *)self client];
          v119 = [v118 isReplaying];
          *buf = 138413314;
          v275 = v112;
          v276 = 2080;
          v277 = v113;
          v278 = 1024;
          v279 = v115;
          v280 = 1024;
          v281 = v117;
          v282 = 1024;
          v283 = v119;
          _os_log_impl(&dword_25ECD8000, v12, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_ENDING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_81:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageSystemReplayEnding alloc] initWithRawMessage:v284];
        [v81 handleSystemReplayEnding:v82];
        goto LABEL_152;
      case 41:
        v67 = [(PSSGComms *)self client];
        if ([v67 isRegistered])
        {
          v68 = [(PSSGComms *)self client];
          v69 = [v68 isReplaying];

          if (v69)
          {
            v70 = __PSSGLogSharedInstance();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v275 = v71;
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
          v200 = [(PSSGComms *)self sessionName];
          v201 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v202 = [(PSSGComms *)self client];
          v203 = [v202 isRegistered];
          v204 = [(PSSGComms *)self client];
          v205 = [v204 isPublished];
          v206 = [(PSSGComms *)self client];
          v207 = [v206 isReplaying];
          *buf = 138413314;
          v275 = v200;
          v276 = 2080;
          v277 = v201;
          v278 = 1024;
          v279 = v203;
          v280 = 1024;
          v281 = v205;
          v282 = 1024;
          v283 = v207;
          _os_log_impl(&dword_25ECD8000, v70, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_GRAPH_RESUBMISSION: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_125:

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageRequestGraphResubmission alloc] initWithRawMessage:v284];
        [v81 handleRequestGraphResubmission:v82];
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
        v93 = [(PSSGComms *)self client];
        v94 = [v93 isRegistered];

        v95 = __PSSGLogSharedInstance();
        v96 = v95;
        if (v94)
        {
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v97 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v97;
            _os_log_impl(&dword_25ECD8000, v96, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_REPLAY_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v240 = [(PSSGComms *)self sessionName];
          v241 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v242 = [(PSSGComms *)self client];
          v243 = [v242 isRegistered];
          v244 = [(PSSGComms *)self client];
          v245 = [v244 isPublished];
          v246 = [(PSSGComms *)self client];
          v247 = [v246 isReplaying];
          *buf = 138413314;
          v275 = v240;
          v276 = 2080;
          v277 = v241;
          v278 = 1024;
          v279 = v243;
          v280 = 1024;
          v281 = v245;
          v282 = 1024;
          v283 = v247;
          _os_log_impl(&dword_25ECD8000, v96, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_REPLAY_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessageRequestResourceContext alloc] initWithRawMessage:v284];
        [v81 handleRequestReplayResources:v82];
        goto LABEL_152;
      case 43:
        v107 = [(PSSGComms *)self client];
        v108 = [v107 isRegistered];

        v109 = __PSSGLogSharedInstance();
        v110 = v109;
        if (v108)
        {
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v111 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v111;
            _os_log_impl(&dword_25ECD8000, v110, OS_LOG_TYPE_DEFAULT, "(%@) <-- SETUP_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v265 = [(PSSGComms *)self sessionName];
          v266 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v267 = [(PSSGComms *)self client];
          v268 = [v267 isRegistered];
          v269 = [(PSSGComms *)self client];
          v270 = [v269 isPublished];
          v271 = [(PSSGComms *)self client];
          v272 = [v271 isReplaying];
          *buf = 138413314;
          v275 = v265;
          v276 = 2080;
          v277 = v266;
          v278 = 1024;
          v279 = v268;
          v280 = 1024;
          v281 = v270;
          v282 = 1024;
          v283 = v272;
          _os_log_impl(&dword_25ECD8000, v110, OS_LOG_TYPE_ERROR, "(%@) <-- SETUP_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResources alloc] initWithRawMessage:v284];
        [v81 handleSetupResourcesMessage:v82];
        goto LABEL_152;
      case 44:
        v72 = [(PSSGComms *)self client];
        v73 = [v72 isRegistered];

        v74 = __PSSGLogSharedInstance();
        v75 = v74;
        if (v73)
        {
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v275 = v76;
            _os_log_impl(&dword_25ECD8000, v75, OS_LOG_TYPE_DEFAULT, "(%@) <-- PAUSE_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v208 = [(PSSGComms *)self sessionName];
          v209 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          v210 = [(PSSGComms *)self client];
          v211 = [v210 isRegistered];
          v212 = [(PSSGComms *)self client];
          v213 = [v212 isPublished];
          v214 = [(PSSGComms *)self client];
          v215 = [v214 isReplaying];
          *buf = 138413314;
          v275 = v208;
          v276 = 2080;
          v277 = v209;
          v278 = 1024;
          v279 = v211;
          v280 = 1024;
          v281 = v213;
          v282 = 1024;
          v283 = v215;
          _os_log_impl(&dword_25ECD8000, v75, OS_LOG_TYPE_ERROR, "(%@) <-- PAUSE_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        v81 = [(PSSGComms *)self client];
        v82 = [(PSSGMessageBase *)[PSSGMessagePauseResources alloc] initWithRawMessage:v284];
        [v81 handlePauseResourcesMessage:v82];
        goto LABEL_152;
      default:
        v81 = __PSSGLogSharedInstance();
        if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_153;
        }

        v82 = [(PSSGComms *)self sessionName];
        *buf = 138412546;
        v275 = v82;
        v276 = 2048;
        v277 = v285;
        _os_log_impl(&dword_25ECD8000, v81, OS_LOG_TYPE_DEFAULT, "(%@) <-- UNKNOWN! (%llu)", buf, 0x16u);
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