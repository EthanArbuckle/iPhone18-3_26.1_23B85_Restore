@interface CSDPendingCallInfo
- (CSDPendingCallInfo)initWithCallSource:(id)a3 withCallUpdate:(id)a4 withProvider:(id)a5 callUUID:(id)a6 screeningType:(int64_t)a7;
@end

@implementation CSDPendingCallInfo

- (CSDPendingCallInfo)initWithCallSource:(id)a3 withCallUpdate:(id)a4 withProvider:(id)a5 callUUID:(id)a6 screeningType:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = CSDPendingCallInfo;
  v17 = [(CSDPendingCallInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_callSource, a3);
    objc_storeStrong(&v18->_callUpdate, a4);
    objc_storeStrong(&v18->_provider, a5);
    objc_storeStrong(&v18->_callUUID, a6);
    v18->_screeningType = a7;
  }

  return v18;
}

@end