@interface RTXPCActivityTask
- (RTXPCActivityTask)initWithIdentifier:(id)a3 activity:(id)a4 handler:(id)a5;
@end

@implementation RTXPCActivityTask

- (RTXPCActivityTask)initWithIdentifier:(id)a3 activity:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: identifier";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: activity";
    goto LABEL_13;
  }

  if (!v11)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = RTXPCActivityTask;
  v13 = [(RTXPCActivityTask *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_activity, a4);
    v15 = [v12 copy];
    handler = v14->_handler;
    v14->_handler = v15;
  }

  self = v14;
  v17 = self;
LABEL_15:

  return v17;
}

@end