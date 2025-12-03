@interface RTPredictedContextClient
- (RTPredictedContextClient)initWithClient:(id)client options:(id)options singleShot:(BOOL)shot handler:(id)handler;
- (id)description;
@end

@implementation RTPredictedContextClient

- (RTPredictedContextClient)initWithClient:(id)client options:(id)options singleShot:(BOOL)shot handler:(id)handler
{
  clientCopy = client;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (!optionsCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      selfCopy = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: options";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_10;
  }

  if (!handlerCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: handler";
    goto LABEL_16;
  }

  v25.receiver = self;
  v25.super_class = RTPredictedContextClient;
  v15 = [(RTPredictedContextClient *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_client, client);
    if (clientCopy)
    {
      clientIdentity = [clientCopy clientIdentity];
      v18 = [clientIdentity copy];

      if (v18)
      {
        objc_storeStrong(&v16->_clientIdentity, v18);
      }
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v16->_options, options);
    v16->_singleShot = shot;
    v22 = [v14 copy];
    handler = v16->_handler;
    v16->_handler = v22;
  }

  self = v16;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  client = [(RTPredictedContextClient *)self client];
  options = [(RTPredictedContextClient *)self options];
  if ([(RTPredictedContextClient *)self singleShot])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  handler = [(RTPredictedContextClient *)self handler];
  if (handler)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"client, %@, options, %@, singleShot, %@, handler, %@", client, options, v6, v8];

  return v9;
}

@end