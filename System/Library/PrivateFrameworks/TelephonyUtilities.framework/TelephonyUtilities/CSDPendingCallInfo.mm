@interface CSDPendingCallInfo
- (CSDPendingCallInfo)initWithCallSource:(id)source withCallUpdate:(id)update withProvider:(id)provider callUUID:(id)d screeningType:(int64_t)type;
@end

@implementation CSDPendingCallInfo

- (CSDPendingCallInfo)initWithCallSource:(id)source withCallUpdate:(id)update withProvider:(id)provider callUUID:(id)d screeningType:(int64_t)type
{
  sourceCopy = source;
  updateCopy = update;
  providerCopy = provider;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = CSDPendingCallInfo;
  v17 = [(CSDPendingCallInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_callSource, source);
    objc_storeStrong(&v18->_callUpdate, update);
    objc_storeStrong(&v18->_provider, provider);
    objc_storeStrong(&v18->_callUUID, d);
    v18->_screeningType = type;
  }

  return v18;
}

@end