@interface SMMadridMessageWaitingForAck
- (SMMadridMessageWaitingForAck)initWithIdentifier:(id)a3 messageType:(unint64_t)a4 messageSentDate:(id)a5 pendingRetryCount:(int64_t)a6 conversation:(id)a7 callback:(id)a8;
@end

@implementation SMMadridMessageWaitingForAck

- (SMMadridMessageWaitingForAck)initWithIdentifier:(id)a3 messageType:(unint64_t)a4 messageSentDate:(id)a5 pendingRetryCount:(int64_t)a6 conversation:(id)a7 callback:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v15)
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

  if (!v16)
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

  if (a6 < 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: pendingRetryCount >= 0";
      goto LABEL_13;
    }

LABEL_14:

    v23 = 0;
    goto LABEL_15;
  }

  v27.receiver = self;
  v27.super_class = SMMadridMessageWaitingForAck;
  v19 = [(SMMadridMessageWaitingForAck *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    v20->_messageType = a4;
    v21 = [v18 copy];
    callback = v20->_callback;
    v20->_callback = v21;

    objc_storeStrong(&v20->_messageSentDate, a5);
    v20->_pendingRetryCount = a6;
    objc_storeStrong(&v20->_conversation, a7);
  }

  self = v20;
  v23 = self;
LABEL_15:

  return v23;
}

@end