@interface SMMadridMessageWaitingForAck
- (SMMadridMessageWaitingForAck)initWithIdentifier:(id)identifier messageType:(unint64_t)type messageSentDate:(id)date pendingRetryCount:(int64_t)count conversation:(id)conversation callback:(id)callback;
@end

@implementation SMMadridMessageWaitingForAck

- (SMMadridMessageWaitingForAck)initWithIdentifier:(id)identifier messageType:(unint64_t)type messageSentDate:(id)date pendingRetryCount:(int64_t)count conversation:(id)conversation callback:(id)callback
{
  identifierCopy = identifier;
  dateCopy = date;
  conversationCopy = conversation;
  callbackCopy = callback;
  if (!identifierCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: identifier";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_14;
  }

  if (!dateCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: messageSentDate";
    goto LABEL_13;
  }

  if (count < 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: pendingRetryCount >= 0";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v27.receiver = self;
  v27.super_class = SMMadridMessageWaitingForAck;
  v19 = [(SMMadridMessageWaitingForAck *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    v20->_messageType = type;
    v21 = [callbackCopy copy];
    callback = v20->_callback;
    v20->_callback = v21;

    objc_storeStrong(&v20->_messageSentDate, date);
    v20->_pendingRetryCount = count;
    objc_storeStrong(&v20->_conversation, conversation);
  }

  self = v20;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end