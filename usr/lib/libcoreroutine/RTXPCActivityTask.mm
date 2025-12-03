@interface RTXPCActivityTask
- (RTXPCActivityTask)initWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler;
@end

@implementation RTXPCActivityTask

- (RTXPCActivityTask)initWithIdentifier:(id)identifier activity:(id)activity handler:(id)handler
{
  identifierCopy = identifier;
  activityCopy = activity;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!identifierCopy)
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

  if (!activityCopy)
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

  if (!handlerCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: handler";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = RTXPCActivityTask;
  v13 = [(RTXPCActivityTask *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_activity, activity);
    v15 = [v12 copy];
    handler = v14->_handler;
    v14->_handler = v15;
  }

  self = v14;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end