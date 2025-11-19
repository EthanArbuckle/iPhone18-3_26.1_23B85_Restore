@interface SMMadridMessageResultWaitingForProcessing
- (SMMadridMessageResultWaitingForProcessing)initWithMessageGUID:(id)a3 success:(BOOL)a4 error:(id)a5;
@end

@implementation SMMadridMessageResultWaitingForProcessing

- (SMMadridMessageResultWaitingForProcessing)initWithMessageGUID:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = SMMadridMessageResultWaitingForProcessing;
    v11 = [(SMMadridMessageResultWaitingForProcessing *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_messageGUID, a3);
      v12->_success = a4;
      objc_storeStrong(&v12->_error, a5);
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

@end