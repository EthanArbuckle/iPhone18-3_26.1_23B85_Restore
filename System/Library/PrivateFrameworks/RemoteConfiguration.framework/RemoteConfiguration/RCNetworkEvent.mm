@interface RCNetworkEvent
- (RCNetworkEvent)initWithResultType:(int64_t)a3 request:(id)a4 startDate:(id)a5 operationID:(id)a6 requestID:(id)a7 response:(id)a8 metrics:(id)a9 error:(id)a10;
@end

@implementation RCNetworkEvent

- (RCNetworkEvent)initWithResultType:(int64_t)a3 request:(id)a4 startDate:(id)a5 operationID:(id)a6 requestID:(id)a7 response:(id)a8 metrics:(id)a9 error:(id)a10
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = RCNetworkEvent;
  v18 = [(RCNetworkEvent *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_resultType = a3;
    objc_storeStrong(&v18->_request, a4);
    objc_storeStrong(&v19->_startDate, a5);
    objc_storeStrong(&v19->_operationID, a6);
    objc_storeStrong(&v19->_requestID, a7);
    objc_storeStrong(&v19->_response, a8);
    objc_storeStrong(&v19->_metrics, a9);
    objc_storeStrong(&v19->_error, a10);
  }

  return v19;
}

@end