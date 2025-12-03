@interface ICURLPerformanceMetrics
- (ICURLPerformanceMetrics)initWithDictionaryRepresentation:(id)representation;
- (ICURLPerformanceMetrics)initWithTransactionMetrics:(id)metrics request:(id)request taskIdentifier:(id)identifier;
- (double)connectionTime;
- (double)dnsTime;
- (double)endTime;
- (double)requestTime;
- (double)responseTime;
- (double)totalTime;
- (id)dictionaryRepresentation;
- (id)humanDescription;
@end

@implementation ICURLPerformanceMetrics

- (double)totalTime
{
  [(ICURLPerformanceMetrics *)self endTime];
  v4 = v3;
  [(ICURLPerformanceMetrics *)self fetchStartTime];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    [(ICURLPerformanceMetrics *)self fetchStartTime];
    if (v4 > v7)
    {
      [(ICURLPerformanceMetrics *)self fetchStartTime];
      return v4 - v8;
    }
  }

  return v5;
}

- (double)responseTime
{
  [(ICURLPerformanceMetrics *)self responseEndTime];
  v4 = v3;
  [(ICURLPerformanceMetrics *)self responseStartTime];
  v6 = v5;
  result = 0.0;
  if (v4 > v6)
  {
    [(ICURLPerformanceMetrics *)self responseEndTime];
    v9 = v8;
    [(ICURLPerformanceMetrics *)self responseStartTime];
    return v9 - v10;
  }

  return result;
}

- (double)requestTime
{
  [(ICURLPerformanceMetrics *)self requestStartTime];
  v3 = 0.0;
  if (v4 > 0.0)
  {
    [(ICURLPerformanceMetrics *)self responseStartTime];
    v6 = v5;
    [(ICURLPerformanceMetrics *)self requestStartTime];
    if (v6 > v7)
    {
      [(ICURLPerformanceMetrics *)self responseStartTime];
      v9 = v8;
      [(ICURLPerformanceMetrics *)self requestStartTime];
      return v9 - v10;
    }
  }

  return v3;
}

- (double)dnsTime
{
  [(ICURLPerformanceMetrics *)self domainLookupEndTime];
  v4 = v3;
  [(ICURLPerformanceMetrics *)self domainLookupStartTime];
  v6 = v5;
  result = 0.0;
  if (v4 > v6)
  {
    [(ICURLPerformanceMetrics *)self domainLookupEndTime];
    v9 = v8;
    [(ICURLPerformanceMetrics *)self domainLookupStartTime];
    return v9 - v10;
  }

  return result;
}

- (double)connectionTime
{
  [(ICURLPerformanceMetrics *)self connectionEndTime];
  v4 = v3;
  [(ICURLPerformanceMetrics *)self connectionStartTime];
  v6 = v5;
  result = 0.0;
  if (v4 > v6)
  {
    [(ICURLPerformanceMetrics *)self connectionEndTime];
    v9 = v8;
    [(ICURLPerformanceMetrics *)self connectionStartTime];
    return v9 - v10;
  }

  return result;
}

- (double)endTime
{
  result = self->_responseEndTime;
  if (result <= 0.0)
  {
    result = self->_responseStartTime;
    if (result <= 0.0)
    {
      result = self->_requestStartTime;
      if (result <= 0.0)
      {
        result = self->_connectionEndTime;
        if (result <= 0.0)
        {
          result = self->_secureConnectionStartTime;
          if (result <= 0.0)
          {
            result = self->_connectionStartTime;
            if (result <= 0.0)
            {
              result = self->_domainLookupEndTime;
              if (result <= 0.0)
              {
                result = self->_domainLookupStartTime;
                if (result <= 0.0)
                {
                  return self->_fetchStartTime;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)humanDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:self->_taskIdentifier];
  statusCode = [(ICURLPerformanceMetrics *)self statusCode];
  v5 = [(ICURLPerformanceMetrics *)self responseMessageSize]/ 0x3E8;
  [(ICURLPerformanceMetrics *)self totalTime];
  [v3 appendFormat:@" %ld %ldkB total:%.0fms", statusCode, v5, v6 * 1000.0];
  if ([(ICURLPerformanceMetrics *)self cachedResponse])
  {
    v7 = @" cached:YES";
LABEL_5:
    [v3 appendString:v7];
    goto LABEL_7;
  }

  if ([(ICURLPerformanceMetrics *)self connectionReused])
  {
    v7 = @" connReused:YES";
    goto LABEL_5;
  }

  [(ICURLPerformanceMetrics *)self connectionTime];
  v9 = v8 * 1000.0;
  [(ICURLPerformanceMetrics *)self dnsTime];
  [v3 appendFormat:@" conn:%.0fms dns:%.0fms", *&v9, v10 * 1000.0];
LABEL_7:
  jingleCorrelationKey = [(ICURLPerformanceMetrics *)self jingleCorrelationKey];

  if (jingleCorrelationKey)
  {
    [v3 appendString:@" jingleCorrelationKey:"];
    jingleCorrelationKey2 = [(ICURLPerformanceMetrics *)self jingleCorrelationKey];
    [v3 appendString:jingleCorrelationKey2];
  }

  requestUrl = [(ICURLPerformanceMetrics *)self requestUrl];
  [v3 appendFormat:@" %@", requestUrl];

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_taskIdentifier forKeyedSubscript:@"taskIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectionStartTime];
  [dictionary setObject:v4 forKeyedSubscript:@"connectionStartTime"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectionEndTime];
  [dictionary setObject:v5 forKeyedSubscript:@"connectionEndTime"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_domainLookupStartTime];
  [dictionary setObject:v6 forKeyedSubscript:@"domainLookupStartTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_domainLookupEndTime];
  [dictionary setObject:v7 forKeyedSubscript:@"domainLookupEndTime"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fetchStartTime];
  [dictionary setObject:v8 forKeyedSubscript:@"fetchStartTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_requestStartTime];
  [dictionary setObject:v9 forKeyedSubscript:@"requestStartTime"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_responseStartTime];
  [dictionary setObject:v10 forKeyedSubscript:@"responseStartTime"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_responseEndTime];
  [dictionary setObject:v11 forKeyedSubscript:@"responseEndTime"];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secureConnectionStartTime];
  [dictionary setObject:v12 forKeyedSubscript:@"secureConnectionStartTime"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_cachedResponse];
  [dictionary setObject:v13 forKeyedSubscript:@"cachedResponse"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_connectionReused];
  [dictionary setObject:v14 forKeyedSubscript:@"connectionReused"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_redirectCount];
  [dictionary setObject:v15 forKeyedSubscript:@"redirectCount"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestMessageSize];
  [dictionary setObject:v16 forKeyedSubscript:@"requestMessageSize"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestBytesSent];
  [dictionary setObject:v17 forKeyedSubscript:@"requestBytesSent"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_responseMessageSize];
  [dictionary setObject:v18 forKeyedSubscript:@"responseMessageSize"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_responseBytesReceived];
  [dictionary setObject:v19 forKeyedSubscript:@"responseBytesReceived"];

  [dictionary setObject:self->_requestUrl forKeyedSubscript:@"requestUrl"];
  [dictionary setObject:self->_appleTimingApp forKeyedSubscript:@"appleTimingApp"];
  [dictionary setObject:self->_connectionType forKeyedSubscript:@"connectionType"];
  [dictionary setObject:self->_edgeNodeCacheStatus forKeyedSubscript:@"edgeNodeCacheStatus"];
  [dictionary setObject:self->_environmentDataCenter forKeyedSubscript:@"environmentDataCenter"];
  [dictionary setObject:self->_jingleCorrelationKey forKeyedSubscript:@"jingleCorrelationKey"];
  [dictionary setObject:self->_responseDate forKeyedSubscript:@"responseDate"];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_statusCode];
  [dictionary setObject:v20 forKeyedSubscript:@"statusCode"];

  [dictionary setObject:self->_resolvedIPAddress forKeyedSubscript:@"resolvedIPAddress"];

  return dictionary;
}

- (ICURLPerformanceMetrics)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v51.receiver = self;
  v51.super_class = ICURLPerformanceMetrics;
  v5 = [(ICURLPerformanceMetrics *)&v51 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"taskIdentifier"];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"connectionStartTime"];
    [v8 doubleValue];
    v5->_connectionStartTime = v9;

    v10 = [representationCopy objectForKeyedSubscript:@"connectionEndTime"];
    [v10 doubleValue];
    v5->_connectionEndTime = v11;

    v12 = [representationCopy objectForKeyedSubscript:@"domainLookupStartTime"];
    [v12 doubleValue];
    v5->_domainLookupStartTime = v13;

    v14 = [representationCopy objectForKeyedSubscript:@"domainLookupEndTime"];
    [v14 doubleValue];
    v5->_domainLookupEndTime = v15;

    v16 = [representationCopy objectForKeyedSubscript:@"fetchStartTime"];
    [v16 doubleValue];
    v5->_fetchStartTime = v17;

    v18 = [representationCopy objectForKeyedSubscript:@"requestStartTime"];
    [v18 doubleValue];
    v5->_requestStartTime = v19;

    v20 = [representationCopy objectForKeyedSubscript:@"responseStartTime"];
    [v20 doubleValue];
    v5->_responseStartTime = v21;

    v22 = [representationCopy objectForKeyedSubscript:@"responseEndTime"];
    [v22 doubleValue];
    v5->_responseEndTime = v23;

    v24 = [representationCopy objectForKeyedSubscript:@"secureConnectionStartTime"];
    [v24 doubleValue];
    v5->_secureConnectionStartTime = v25;

    v26 = [representationCopy objectForKeyedSubscript:@"cachedResponse"];
    v5->_cachedResponse = [v26 BOOLValue];

    v27 = [representationCopy objectForKeyedSubscript:@"connectionReused"];
    v5->_connectionReused = [v27 BOOLValue];

    v28 = [representationCopy objectForKeyedSubscript:@"redirectCount"];
    v5->_redirectCount = [v28 integerValue];

    v29 = [representationCopy objectForKeyedSubscript:@"requestMessageSize"];
    v5->_requestMessageSize = [v29 integerValue];

    v30 = [representationCopy objectForKeyedSubscript:@"requestBytesSent"];
    v5->_requestBytesSent = [v30 integerValue];

    v31 = [representationCopy objectForKeyedSubscript:@"responseMessageSize"];
    v5->_responseMessageSize = [v31 integerValue];

    v32 = [representationCopy objectForKeyedSubscript:@"responseBytesReceived"];
    v5->_responseBytesReceived = [v32 integerValue];

    v33 = [representationCopy objectForKeyedSubscript:@"requestUrl"];
    requestUrl = v5->_requestUrl;
    v5->_requestUrl = v33;

    v35 = [representationCopy objectForKeyedSubscript:@"appleTimingApp"];
    appleTimingApp = v5->_appleTimingApp;
    v5->_appleTimingApp = v35;

    v37 = [representationCopy objectForKeyedSubscript:@"connectionType"];
    connectionType = v5->_connectionType;
    v5->_connectionType = v37;

    v39 = [representationCopy objectForKeyedSubscript:@"edgeNodeCacheStatus"];
    edgeNodeCacheStatus = v5->_edgeNodeCacheStatus;
    v5->_edgeNodeCacheStatus = v39;

    v41 = [representationCopy objectForKeyedSubscript:@"environmentDataCenter"];
    environmentDataCenter = v5->_environmentDataCenter;
    v5->_environmentDataCenter = v41;

    v43 = [representationCopy objectForKeyedSubscript:@"jingleCorrelationKey"];
    jingleCorrelationKey = v5->_jingleCorrelationKey;
    v5->_jingleCorrelationKey = v43;

    v45 = [representationCopy objectForKeyedSubscript:@"responseDate"];
    responseDate = v5->_responseDate;
    v5->_responseDate = v45;

    v47 = [representationCopy objectForKeyedSubscript:@"statusCode"];
    v5->_statusCode = [v47 integerValue];

    v48 = [representationCopy objectForKeyedSubscript:@"resolvedIPAddress"];
    resolvedIPAddress = v5->_resolvedIPAddress;
    v5->_resolvedIPAddress = v48;
  }

  return v5;
}

- (ICURLPerformanceMetrics)initWithTransactionMetrics:(id)metrics request:(id)request taskIdentifier:(id)identifier
{
  v65 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  requestCopy = request;
  identifierCopy = identifier;
  v64.receiver = self;
  v64.super_class = ICURLPerformanceMetrics;
  v11 = [(ICURLPerformanceMetrics *)&v64 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_taskIdentifier, identifier);
    connectStartDate = [metricsCopy connectStartDate];
    [connectStartDate timeIntervalSince1970];
    v12->_connectionStartTime = v14;

    connectEndDate = [metricsCopy connectEndDate];
    [connectEndDate timeIntervalSince1970];
    v12->_connectionEndTime = v16;

    domainLookupStartDate = [metricsCopy domainLookupStartDate];
    [domainLookupStartDate timeIntervalSince1970];
    v12->_domainLookupStartTime = v18;

    domainLookupEndDate = [metricsCopy domainLookupEndDate];
    [domainLookupEndDate timeIntervalSince1970];
    v12->_domainLookupEndTime = v20;

    fetchStartDate = [metricsCopy fetchStartDate];
    [fetchStartDate timeIntervalSince1970];
    v12->_fetchStartTime = v22;

    requestStartDate = [metricsCopy requestStartDate];
    [requestStartDate timeIntervalSince1970];
    v12->_requestStartTime = v24;

    responseStartDate = [metricsCopy responseStartDate];
    [responseStartDate timeIntervalSince1970];
    v12->_responseStartTime = v26;

    responseEndDate = [metricsCopy responseEndDate];
    [responseEndDate timeIntervalSince1970];
    v12->_responseEndTime = v28;

    secureConnectionStartDate = [metricsCopy secureConnectionStartDate];
    [secureConnectionStartDate timeIntervalSince1970];
    v12->_secureConnectionStartTime = v30;

    v12->_cachedResponse = [metricsCopy resourceFetchType] == 3;
    v12->_connectionReused = [metricsCopy isReusedConnection];
    v12->_redirectCount = [requestCopy redirectCount];
    urlRequest = [requestCopy urlRequest];
    hTTPBody = [urlRequest HTTPBody];
    v12->_requestMessageSize = [hTTPBody length];

    countOfRequestHeaderBytesSent = [metricsCopy countOfRequestHeaderBytesSent];
    v12->_requestBytesSent = [metricsCopy countOfRequestBodyBytesSent] + countOfRequestHeaderBytesSent;
    responseData = [requestCopy responseData];
    v12->_responseMessageSize = [responseData length];

    countOfResponseBodyBytesReceived = [metricsCopy countOfResponseBodyBytesReceived];
    v12->_responseBytesReceived = [metricsCopy countOfResponseHeaderBytesReceived] + countOfResponseBodyBytesReceived;
    urlRequest2 = [requestCopy urlRequest];
    v37 = [urlRequest2 URL];
    absoluteString = [v37 absoluteString];
    requestUrl = v12->_requestUrl;
    v12->_requestUrl = absoluteString;

    response = [metricsCopy response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = response;
      v42 = [v41 valueForHTTPHeaderField:@"apple-timing-app"];
      appleTimingApp = v12->_appleTimingApp;
      v12->_appleTimingApp = v42;

      v44 = [v41 valueForHTTPHeaderField:@"X-Apple-Connection-Type"];
      connectionType = v12->_connectionType;
      v12->_connectionType = v44;

      v46 = [v41 valueForHTTPHeaderField:@"X-Cache"];
      edgeNodeCacheStatus = v12->_edgeNodeCacheStatus;
      v12->_edgeNodeCacheStatus = v46;

      v48 = [v41 valueForHTTPHeaderField:@"X-Apple-Application-Site"];
      environmentDataCenter = v12->_environmentDataCenter;
      v12->_environmentDataCenter = v48;

      v50 = [v41 ic_valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
      jingleCorrelationKey = v12->_jingleCorrelationKey;
      v12->_jingleCorrelationKey = v50;

      v52 = [v41 valueForHTTPHeaderField:@"date"];
      responseDate = v12->_responseDate;
      v12->_responseDate = v52;

      statusCode = [v41 statusCode];
      v12->_statusCode = statusCode;
    }

    if ([response _CFURLResponse])
    {
      [response _CFURLResponse];
      v55 = CFURLResponseCopyPeerAddress();
      if (v55)
      {
        v56 = v55;
        BytePtr = CFDataGetBytePtr(v55);
        v58 = *BytePtr;
        v59 = &v63 - ((v58 + 15) & 0x1F0);
        inet_ntop(BytePtr[1], BytePtr + 4, v59, v58);
        v60 = [MEMORY[0x1E696AEC0] stringWithCString:v59 encoding:1];
        resolvedIPAddress = v12->_resolvedIPAddress;
        v12->_resolvedIPAddress = v60;

        CFRelease(v56);
      }
    }
  }

  return v12;
}

@end