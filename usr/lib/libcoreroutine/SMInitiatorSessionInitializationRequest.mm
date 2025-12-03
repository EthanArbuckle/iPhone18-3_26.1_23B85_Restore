@interface SMInitiatorSessionInitializationRequest
- (BOOL)isEqual:(id)equal;
- (SMInitiatorSessionInitializationRequest)initWithSessionID:(id)d conversation:(id)conversation handler:(id)handler;
- (id)description;
- (unint64_t)hash;
@end

@implementation SMInitiatorSessionInitializationRequest

- (SMInitiatorSessionInitializationRequest)initWithSessionID:(id)d conversation:(id)conversation handler:(id)handler
{
  dCopy = d;
  conversationCopy = conversation;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!dCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: sessionID";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_14;
  }

  if (!conversationCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: conversation";
    goto LABEL_13;
  }

  if (!handlerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = SMInitiatorSessionInitializationRequest;
  v13 = [(SMInitiatorSessionInitializationRequest *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sessionID, d);
    objc_storeStrong(&v14->_conversation, conversation);
    v15 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v15;

    date = [MEMORY[0x277CBEAA8] date];
    startDate = v14->_startDate;
    v14->_startDate = date;
  }

  self = v14;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionID = [(SMInitiatorSessionInitializationRequest *)self sessionID];
  uUIDString = [sessionID UUIDString];
  conversation = [(SMInitiatorSessionInitializationRequest *)self conversation];
  receiverHandles = [conversation receiverHandles];
  startDate = [(SMInitiatorSessionInitializationRequest *)self startDate];
  stringFromDate = [startDate stringFromDate];
  date = [MEMORY[0x277CBEAA8] date];
  startDate2 = [(SMInitiatorSessionInitializationRequest *)self startDate];
  [date timeIntervalSinceDate:startDate2];
  v13 = [v3 stringWithFormat:@"sessionID, %@, handles, %@, startDate, %@, elapsed interval, %.2f", uUIDString, receiverHandles, stringFromDate, v12];

  return v13;
}

- (unint64_t)hash
{
  sessionID = [(SMInitiatorSessionInitializationRequest *)self sessionID];
  v4 = [sessionID hash];
  conversation = [(SMInitiatorSessionInitializationRequest *)self conversation];
  v6 = [conversation hash] ^ v4;
  startDate = [(SMInitiatorSessionInitializationRequest *)self startDate];
  v8 = [startDate hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      sessionID = [(SMInitiatorSessionInitializationRequest *)self sessionID];
      sessionID2 = [(SMInitiatorSessionInitializationRequest *)v7 sessionID];
      if (sessionID != sessionID2)
      {
        sessionID3 = [(SMInitiatorSessionInitializationRequest *)self sessionID];
        sessionID4 = [(SMInitiatorSessionInitializationRequest *)v7 sessionID];
        if (![sessionID3 isEqual:sessionID4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      conversation = [(SMInitiatorSessionInitializationRequest *)self conversation];
      conversation2 = [(SMInitiatorSessionInitializationRequest *)v7 conversation];
      v13 = conversation2;
      if (conversation == conversation2)
      {
        v28 = conversation2;
      }

      else
      {
        conversation3 = [(SMInitiatorSessionInitializationRequest *)self conversation];
        conversation4 = [(SMInitiatorSessionInitializationRequest *)v7 conversation];
        if (![conversation3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = conversation3;
        v28 = v13;
      }

      startDate = [(SMInitiatorSessionInitializationRequest *)self startDate];
      startDate2 = [(SMInitiatorSessionInitializationRequest *)v7 startDate];
      v17 = startDate2;
      if (startDate == startDate2)
      {

        v10 = 1;
      }

      else
      {
        [(SMInitiatorSessionInitializationRequest *)self startDate];
        v18 = v25 = sessionID3;
        [(SMInitiatorSessionInitializationRequest *)v7 startDate];
        v24 = conversation;
        v19 = sessionID4;
        v20 = sessionID2;
        v22 = v21 = sessionID;
        v10 = [v18 isEqual:v22];

        sessionID = v21;
        sessionID2 = v20;
        sessionID4 = v19;
        conversation = v24;

        sessionID3 = v25;
      }

      v13 = v28;
      conversation3 = v26;
      if (conversation == v28)
      {
LABEL_18:

        if (sessionID == sessionID2)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

@end