@interface SMMadridMessageResultWaitingForProcessing
- (SMMadridMessageResultWaitingForProcessing)initWithMessageGUID:(id)d success:(BOOL)success error:(id)error;
@end

@implementation SMMadridMessageResultWaitingForProcessing

- (SMMadridMessageResultWaitingForProcessing)initWithMessageGUID:(id)d success:(BOOL)success error:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (dCopy)
  {
    v16.receiver = self;
    v16.super_class = SMMadridMessageResultWaitingForProcessing;
    v11 = [(SMMadridMessageResultWaitingForProcessing *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_messageGUID, d);
      v12->_success = success;
      objc_storeStrong(&v12->_error, error);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end