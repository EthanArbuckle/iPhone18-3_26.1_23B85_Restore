@interface WFNetworkEvent
- (WFNetworkEvent)initWithEventType:(int64_t)a3 metrics:(id)a4;
- (WFNetworkEvent)initWithEventType:(int64_t)a3 startDate:(id)a4 DNSDuration:(double)a5 connectDuration:(double)a6 requestDuration:(double)a7 responseDuration:(double)a8 responseSize:(unint64_t)a9 HTTPStatusCode:(unint64_t)a10 errorCode:(int64_t)a11;
- (WFNetworkEvent)initWithEventType:(int64_t)a3 startDate:(id)a4 error:(id)a5;
@end

@implementation WFNetworkEvent

- (WFNetworkEvent)initWithEventType:(int64_t)a3 startDate:(id)a4 DNSDuration:(double)a5 connectDuration:(double)a6 requestDuration:(double)a7 responseDuration:(double)a8 responseSize:(unint64_t)a9 HTTPStatusCode:(unint64_t)a10 errorCode:(int64_t)a11
{
  v21 = a4;
  v25.receiver = self;
  v25.super_class = WFNetworkEvent;
  v22 = [(WFNetworkEvent *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_eventType = a3;
    objc_storeStrong(&v22->_startDate, a4);
    v23->_DNSDuration = a5;
    v23->_connectDuration = a6;
    v23->_requestDuration = a7;
    v23->_responseDuration = a8;
    v23->_responseSize = a9;
    v23->_HTTPStatusCode = a10;
    v23->_errorCode = a11;
  }

  return v23;
}

- (WFNetworkEvent)initWithEventType:(int64_t)a3 metrics:(id)a4
{
  v4 = a4;
  v5 = [v4 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v4 response];
  }

  else
  {
    v26 = 0;
  }

  v6 = [v4 fetchStartDate];
  v23 = [v4 domainLookupEndDate];
  v22 = [v4 domainLookupStartDate];
  [v23 timeIntervalSinceDate:v22];
  v8 = v7;
  v9 = [v4 secureConnectionEndDate];
  v10 = [v4 secureConnectionStartDate];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;
  v13 = [v4 requestEndDate];
  v14 = [v4 requestStartDate];
  [v13 timeIntervalSinceDate:v14];
  v16 = v15;
  v17 = [v4 responseEndDate];
  v18 = [v4 responseStartDate];
  [v17 timeIntervalSinceDate:v18];
  v20 = -[WFNetworkEvent initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:](self, "initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:", a3, v6, [v4 countOfResponseBodyBytesReceived], objc_msgSend(v26, "statusCode"), 0, v8, v12, v16, v19);

  return v20;
}

- (WFNetworkEvent)initWithEventType:(int64_t)a3 startDate:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = -[WFNetworkEvent initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:](self, "initWithEventType:startDate:DNSDuration:connectDuration:requestDuration:responseDuration:responseSize:HTTPStatusCode:errorCode:", a3, v8, 0, 0, [a5 code], 0.0, 0.0, 0.0, 0.0);

  return v9;
}

@end