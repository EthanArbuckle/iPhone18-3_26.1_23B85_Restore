@interface SMInitiatorSessionInitializationRequest
- (BOOL)isEqual:(id)a3;
- (SMInitiatorSessionInitializationRequest)initWithSessionID:(id)a3 conversation:(id)a4 handler:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation SMInitiatorSessionInitializationRequest

- (SMInitiatorSessionInitializationRequest)initWithSessionID:(id)a3 conversation:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
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

  if (!v10)
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

  if (!v11)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    v19 = 0;
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = SMInitiatorSessionInitializationRequest;
  v13 = [(SMInitiatorSessionInitializationRequest *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_sessionID, a3);
    objc_storeStrong(&v14->_conversation, a4);
    v15 = _Block_copy(v12);
    handler = v14->_handler;
    v14->_handler = v15;

    v17 = [MEMORY[0x277CBEAA8] date];
    startDate = v14->_startDate;
    v14->_startDate = v17;
  }

  self = v14;
  v19 = self;
LABEL_15:

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SMInitiatorSessionInitializationRequest *)self sessionID];
  v5 = [v4 UUIDString];
  v6 = [(SMInitiatorSessionInitializationRequest *)self conversation];
  v7 = [v6 receiverHandles];
  v8 = [(SMInitiatorSessionInitializationRequest *)self startDate];
  v9 = [v8 stringFromDate];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(SMInitiatorSessionInitializationRequest *)self startDate];
  [v10 timeIntervalSinceDate:v11];
  v13 = [v3 stringWithFormat:@"sessionID, %@, handles, %@, startDate, %@, elapsed interval, %.2f", v5, v7, v9, v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(SMInitiatorSessionInitializationRequest *)self sessionID];
  v4 = [v3 hash];
  v5 = [(SMInitiatorSessionInitializationRequest *)self conversation];
  v6 = [v5 hash] ^ v4;
  v7 = [(SMInitiatorSessionInitializationRequest *)self startDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SMInitiatorSessionInitializationRequest *)self sessionID];
      v9 = [(SMInitiatorSessionInitializationRequest *)v7 sessionID];
      if (v8 != v9)
      {
        v3 = [(SMInitiatorSessionInitializationRequest *)self sessionID];
        v4 = [(SMInitiatorSessionInitializationRequest *)v7 sessionID];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(SMInitiatorSessionInitializationRequest *)self conversation];
      v12 = [(SMInitiatorSessionInitializationRequest *)v7 conversation];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(SMInitiatorSessionInitializationRequest *)self conversation];
        v27 = [(SMInitiatorSessionInitializationRequest *)v7 conversation];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(SMInitiatorSessionInitializationRequest *)self startDate];
      v16 = [(SMInitiatorSessionInitializationRequest *)v7 startDate];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(SMInitiatorSessionInitializationRequest *)self startDate];
        v18 = v25 = v3;
        [(SMInitiatorSessionInitializationRequest *)v7 startDate];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
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