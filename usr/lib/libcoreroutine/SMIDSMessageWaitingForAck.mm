@interface SMIDSMessageWaitingForAck
- (SMIDSMessageWaitingForAck)initWithIdentifier:(id)identifier destinations:(id)destinations message:(id)message pendingRetryCount:(int64_t)count messageSentDate:(id)date callback:(id)callback;
@end

@implementation SMIDSMessageWaitingForAck

- (SMIDSMessageWaitingForAck)initWithIdentifier:(id)identifier destinations:(id)destinations message:(id)message pendingRetryCount:(int64_t)count messageSentDate:(id)date callback:(id)callback
{
  identifierCopy = identifier;
  destinationsCopy = destinations;
  messageCopy = message;
  dateCopy = date;
  callbackCopy = callback;
  v19 = callbackCopy;
  if (!identifierCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: identifier";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_20;
  }

  if (!destinationsCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: destinations";
    goto LABEL_19;
  }

  if (!messageCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: message";
    goto LABEL_19;
  }

  if (count < 0)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: pendingRetryCount >= 0";
    goto LABEL_19;
  }

  if (!callbackCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: callback";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v29.receiver = self;
  v29.super_class = SMIDSMessageWaitingForAck;
  v20 = [(SMIDSMessageWaitingForAck *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v21->_destinations, destinations);
    objc_storeStrong(&v21->_message, message);
    v21->_pendingRetryCount = count;
    v22 = _Block_copy(v19);
    callback = v21->_callback;
    v21->_callback = v22;

    objc_storeStrong(&v21->_messageSentDate, date);
  }

  self = v21;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

@end