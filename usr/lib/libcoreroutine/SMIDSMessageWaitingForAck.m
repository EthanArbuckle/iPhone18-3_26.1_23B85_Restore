@interface SMIDSMessageWaitingForAck
- (SMIDSMessageWaitingForAck)initWithIdentifier:(id)a3 destinations:(id)a4 message:(id)a5 pendingRetryCount:(int64_t)a6 messageSentDate:(id)a7 callback:(id)a8;
@end

@implementation SMIDSMessageWaitingForAck

- (SMIDSMessageWaitingForAck)initWithIdentifier:(id)a3 destinations:(id)a4 message:(id)a5 pendingRetryCount:(int64_t)a6 messageSentDate:(id)a7 callback:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v28 = a7;
  v18 = a8;
  v19 = v18;
  if (!v15)
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

  if (!v16)
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

  if (!v17)
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

  if (a6 < 0)
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

  if (!v18)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: callback";
      goto LABEL_19;
    }

LABEL_20:

    v24 = 0;
    goto LABEL_21;
  }

  v29.receiver = self;
  v29.super_class = SMIDSMessageWaitingForAck;
  v20 = [(SMIDSMessageWaitingForAck *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_destinations, a4);
    objc_storeStrong(&v21->_message, a5);
    v21->_pendingRetryCount = a6;
    v22 = _Block_copy(v19);
    callback = v21->_callback;
    v21->_callback = v22;

    objc_storeStrong(&v21->_messageSentDate, a7);
  }

  self = v21;
  v24 = self;
LABEL_21:

  return v24;
}

@end