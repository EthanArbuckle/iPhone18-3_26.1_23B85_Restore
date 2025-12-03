@interface WFNetworkEvent
- (WFNetworkEvent)initWithEventType:(int64_t)type metrics:(id)metrics;
- (WFNetworkEvent)initWithEventType:(int64_t)type startDate:(id)date DNSDuration:(double)duration connectDuration:(double)connectDuration requestDuration:(double)requestDuration responseDuration:(double)responseDuration responseSize:(unint64_t)size HTTPStatusCode:(unint64_t)self0 errorCode:(int64_t)self1;
- (WFNetworkEvent)initWithEventType:(int64_t)type startDate:(id)date error:(id)error;
@end

@implementation WFNetworkEvent

- (WFNetworkEvent)initWithEventType:(int64_t)type startDate:(id)date DNSDuration:(double)duration connectDuration:(double)connectDuration requestDuration:(double)requestDuration responseDuration:(double)responseDuration responseSize:(unint64_t)size HTTPStatusCode:(unint64_t)self0 errorCode:(int64_t)self1
{
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = WFNetworkEvent;
  v22 = [(WFNetworkEvent *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_eventType = type;
    objc_storeStrong(&v22->_startDate, date);
    v23->_DNSDuration = duration;
    v23->_connectDuration = connectDuration;
    v23->_requestDuration = requestDuration;
    v23->_responseDuration = responseDuration;
    v23->_responseSize = size;
    v23->_HTTPStatusCode = code;
    v23->_errorCode = errorCode;
  }

  return v23;
}

- (WFNetworkEvent)initWithEventType:(int64_t)type metrics:(id)metrics
{
  metricsCopy = metrics;
  response = [metricsCopy response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    response2 = [metricsCopy response];
  }

  else
  {
    response2 = 0;
  }

  fetchStartDate = [metricsCopy fetchStartDate];
  domainLookupEndDate = [metricsCopy domainLookupEndDate];
  domainLookupStartDate = [metricsCopy domainLookupStartDate];
  [domainLookupEndDate timeIntervalSinceDate:domainLookupStartDate];
  v8 = v7;
  secureConnectionEndDate = [metricsCopy secureConnectionEndDate];
  secureConnectionStartDate = [metricsCopy secureConnectionStartDate];
  [secureConnectionEndDate timeIntervalSinceDate:secureConnectionStartDate];
  v12 = v11;
  requestEndDate = [metricsCopy requestEndDate];
  requestStartDate = [metricsCopy requestStartDate];
  [requestEndDate timeIntervalSinceDate:requestStartDate];
  v16 = v15;
  responseEndDate = [metricsCopy responseEndDate];
  responseStartDate = [metricsCopy responseStartDate];
  [responseEndDate timeIntervalSinceDate:responseStartDate];
  v20 = -[WFNetworkEvent initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:](self, "initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:", type, fetchStartDate, [metricsCopy countOfResponseBodyBytesReceived], objc_msgSend(response2, "statusCode"), 0, v8, v12, v16, v19);

  return v20;
}

- (WFNetworkEvent)initWithEventType:(int64_t)type startDate:(id)date error:(id)error
{
  dateCopy = date;
  v9 = -[WFNetworkEvent initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:](self, "initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:", type, dateCopy, 0, 0, [error code], 0.0, 0.0, 0.0, 0.0);

  return v9;
}

@end