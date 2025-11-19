@interface RTPredictedContextClient
- (RTPredictedContextClient)initWithClient:(id)a3 options:(id)a4 singleShot:(BOOL)a5 handler:(id)a6;
- (id)description;
@end

@implementation RTPredictedContextClient

- (RTPredictedContextClient)initWithClient:(id)a3 options:(id)a4 singleShot:(BOOL)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      v21 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: options";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_10;
  }

  if (!v13)
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
    objc_storeStrong(&v15->_client, a3);
    if (v11)
    {
      v17 = [v11 clientIdentity];
      v18 = [v17 copy];

      if (v18)
      {
        objc_storeStrong(&v16->_clientIdentity, v18);
      }
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&v16->_options, a4);
    v16->_singleShot = a5;
    v22 = [v14 copy];
    handler = v16->_handler;
    v16->_handler = v22;
  }

  self = v16;
  v21 = self;
LABEL_14:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTPredictedContextClient *)self client];
  v5 = [(RTPredictedContextClient *)self options];
  if ([(RTPredictedContextClient *)self singleShot])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(RTPredictedContextClient *)self handler];
  if (v7)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"client, %@, options, %@, singleShot, %@, handler, %@", v4, v5, v6, v8];

  return v9;
}

@end