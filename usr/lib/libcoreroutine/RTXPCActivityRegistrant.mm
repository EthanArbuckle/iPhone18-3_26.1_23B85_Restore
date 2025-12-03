@interface RTXPCActivityRegistrant
- (RTXPCActivityRegistrant)initWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler;
- (id)description;
@end

@implementation RTXPCActivityRegistrant

- (RTXPCActivityRegistrant)initWithIdentifier:(id)identifier criteria:(id)criteria handler:(id)handler deferHandler:(id)deferHandler
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  handlerCopy = handler;
  deferHandlerCopy = deferHandler;
  if (!identifierCopy)
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

  if (!criteriaCopy)
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

  if (!handlerCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v24 = "Invalid parameter not satisfying: handler";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_17;
  }

  v26.receiver = self;
  v26.super_class = RTXPCActivityRegistrant;
  v15 = [(RTXPCActivityRegistrant *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_criteria, criteria);
    v17 = [handlerCopy copy];
    handler = v16->_handler;
    v16->_handler = v17;

    deferHandler = v16->_deferHandler;
    v16->_deferHandler = 0;

    if (deferHandlerCopy)
    {
      v20 = [deferHandlerCopy copy];
      v21 = v16->_deferHandler;
      v16->_deferHandler = v20;
    }

    v16->_didInvokeDeferHandler = 0;
  }

  self = v16;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(RTXPCActivityRegistrant *)self identifier];
  criteria = [(RTXPCActivityRegistrant *)self criteria];
  v6 = [v3 stringWithFormat:@"identifier, %@, criteria, %@", identifier, criteria];

  return v6;
}

@end