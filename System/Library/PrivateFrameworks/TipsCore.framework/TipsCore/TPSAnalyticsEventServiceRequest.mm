@interface TPSAnalyticsEventServiceRequest
+ (id)serviceRequestEventWithType:(id)type metrics:(id)metrics;
- (TPSAnalyticsEventServiceRequest)initWithCoder:(id)coder;
- (id)_initWithType:(id)type metrics:(id)metrics;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventServiceRequest

- (id)_initWithType:(id)type metrics:(id)metrics
{
  typeCopy = type;
  metricsCopy = metrics;
  v46.receiver = self;
  v46.super_class = TPSAnalyticsEventServiceRequest;
  v9 = [(TPSAnalyticsEvent *)&v46 initWithDate:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    transactionMetrics = [metricsCopy transactionMetrics];
    firstObject = [transactionMetrics firstObject];

    request = [firstObject request];
    v14 = [request URL];
    url = v10->_url;
    v10->_url = v14;

    response = [firstObject response];
    v17 = response;
    if (response)
    {
      v10->_statusCode = [response statusCode];
      v18 = [v17 valueForHTTPHeaderField:@"Etag"];
      etag = v10->_etag;
      v10->_etag = v18;
    }

    v10->_responseSize = [firstObject countOfResponseBodyBytesAfterDecoding];
    requestEndDate = [firstObject requestEndDate];
    if (requestEndDate)
    {
      v21 = requestEndDate;
      requestStartDate = [firstObject requestStartDate];

      if (requestStartDate)
      {
        requestEndDate2 = [firstObject requestEndDate];
        requestStartDate2 = [firstObject requestStartDate];
        [requestEndDate2 timeIntervalSinceDate:requestStartDate2];
        v10->_requestTime = v25;
      }
    }

    responseStartDate = [firstObject responseStartDate];
    if (responseStartDate)
    {
      v27 = responseStartDate;
      responseEndDate = [firstObject responseEndDate];

      if (responseEndDate)
      {
        responseStartDate2 = [firstObject responseStartDate];
        responseEndDate2 = [firstObject responseEndDate];
        [responseStartDate2 timeIntervalSinceDate:responseEndDate2];
        v10->_responseTime = v31;
      }
    }

    responseStartDate3 = [firstObject responseStartDate];

    if (responseStartDate3)
    {
      v33 = [MEMORY[0x1E695DF00] now];
      responseStartDate4 = [firstObject responseStartDate];
      [v33 timeIntervalSinceDate:responseStartDate4];
      v10->_requestTtfb = v35;
    }

    taskInterval = [metricsCopy taskInterval];
    endDate = [taskInterval endDate];
    if (endDate)
    {
      v38 = endDate;
      taskInterval2 = [metricsCopy taskInterval];
      startDate = [taskInterval2 startDate];

      if (!startDate)
      {
LABEL_16:
        v10->_responseHeadersSize = [firstObject countOfResponseHeaderBytesReceived];

        goto LABEL_17;
      }

      taskInterval = [metricsCopy taskInterval];
      endDate2 = [taskInterval endDate];
      taskInterval3 = [metricsCopy taskInterval];
      startDate2 = [taskInterval3 startDate];
      [endDate2 timeIntervalSinceDate:startDate2];
      v10->_timeToDownloadResponse = v44;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v10;
}

+ (id)serviceRequestEventWithType:(id)type metrics:(id)metrics
{
  metricsCopy = metrics;
  typeCopy = type;
  v8 = [[self alloc] _initWithType:typeCopy metrics:metricsCopy];

  return v8;
}

- (TPSAnalyticsEventServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAnalyticsEventServiceRequest;
  v5 = [(TPSAnalyticsEvent *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v5->_statusCode = [coderCopy decodeIntegerForKey:@"response_status_code"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"etag"];
    etag = v5->_etag;
    v5->_etag = v10;

    v5->_requestTime = [coderCopy decodeIntegerForKey:@"request_time"];
    v5->_requestTtfb = [coderCopy decodeIntegerForKey:@"request_ttfb"];
    v5->_responseHeadersSize = [coderCopy decodeInt64ForKey:@"response_headers_size"];
    v5->_responseSize = [coderCopy decodeInt64ForKey:@"response_size"];
    v5->_responseTime = [coderCopy decodeIntegerForKey:@"response_time"];
    v5->_timeToDownloadResponse = [coderCopy decodeIntegerForKey:@"time_to_download_response"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventServiceRequest;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeInteger:self->_statusCode forKey:@"response_status_code"];
  [coderCopy encodeObject:self->_etag forKey:@"etag"];
  [coderCopy encodeInteger:self->_requestTime forKey:@"request_time"];
  [coderCopy encodeInteger:self->_requestTtfb forKey:@"request_ttfb"];
  [coderCopy encodeInt64:self->_responseHeadersSize forKey:@"response_headers_size"];
  [coderCopy encodeInt64:self->_responseSize forKey:@"response_size"];
  [coderCopy encodeInteger:self->_responseTime forKey:@"response_time"];
  [coderCopy encodeInteger:self->_timeToDownloadResponse forKey:@"time_to_download_response"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_type forKeyedSubscript:@"type"];
  absoluteString = [(NSURL *)self->_url absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"url"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
  [dictionary setObject:v5 forKeyedSubscript:@"response_status_code"];

  [dictionary setObject:self->_etag forKeyedSubscript:@"etag"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestTime];
  [dictionary setObject:v6 forKeyedSubscript:@"request_time"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestTtfb];
  [dictionary setObject:v7 forKeyedSubscript:@"request_ttfb"];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_responseHeadersSize];
  [dictionary setObject:v8 forKeyedSubscript:@"response_headers_size"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_responseSize];
  [dictionary setObject:v9 forKeyedSubscript:@"response_size"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_responseTime];
  [dictionary setObject:v10 forKeyedSubscript:@"response_time"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_timeToDownloadResponse];
  [dictionary setObject:v11 forKeyedSubscript:@"time_to_download_response"];

  return dictionary;
}

@end