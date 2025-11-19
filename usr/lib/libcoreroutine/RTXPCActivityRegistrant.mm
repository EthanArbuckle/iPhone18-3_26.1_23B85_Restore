@interface RTXPCActivityRegistrant
- (RTXPCActivityRegistrant)initWithIdentifier:(id)a3 criteria:(id)a4 handler:(id)a5 deferHandler:(id)a6;
- (id)description;
@end

@implementation RTXPCActivityRegistrant

- (RTXPCActivityRegistrant)initWithIdentifier:(id)a3 criteria:(id)a4 handler:(id)a5 deferHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: identifier";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_16;
  }

  if (!v12)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: criteria";
    goto LABEL_15;
  }

  if (!v13)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: handler";
      goto LABEL_15;
    }

LABEL_16:

    v22 = 0;
    goto LABEL_17;
  }

  v26.receiver = self;
  v26.super_class = RTXPCActivityRegistrant;
  v15 = [(RTXPCActivityRegistrant *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_criteria, a4);
    v17 = [v13 copy];
    handler = v16->_handler;
    v16->_handler = v17;

    deferHandler = v16->_deferHandler;
    v16->_deferHandler = 0;

    if (v14)
    {
      v20 = [v14 copy];
      v21 = v16->_deferHandler;
      v16->_deferHandler = v20;
    }

    v16->_didInvokeDeferHandler = 0;
  }

  self = v16;
  v22 = self;
LABEL_17:

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTXPCActivityRegistrant *)self identifier];
  v5 = [(RTXPCActivityRegistrant *)self criteria];
  v6 = [v3 stringWithFormat:@"identifier, %@, criteria, %@", v4, v5];

  return v6;
}

@end