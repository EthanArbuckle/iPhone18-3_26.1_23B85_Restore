@interface RCNetworkEvent
- (RCNetworkEvent)initWithResultType:(int64_t)type request:(id)request startDate:(id)date operationID:(id)d requestID:(id)iD response:(id)response metrics:(id)metrics error:(id)self0;
@end

@implementation RCNetworkEvent

- (RCNetworkEvent)initWithResultType:(int64_t)type request:(id)request startDate:(id)date operationID:(id)d requestID:(id)iD response:(id)response metrics:(id)metrics error:(id)self0
{
  requestCopy = request;
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  responseCopy = response;
  metricsCopy = metrics;
  errorCopy = error;
  v27.receiver = self;
  v27.super_class = RCNetworkEvent;
  v18 = [(RCNetworkEvent *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_resultType = type;
    objc_storeStrong(&v18->_request, request);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_operationID, d);
    objc_storeStrong(&v19->_requestID, iD);
    objc_storeStrong(&v19->_response, response);
    objc_storeStrong(&v19->_metrics, metrics);
    objc_storeStrong(&v19->_error, error);
  }

  return v19;
}

@end