@interface ICURLPerformanceMetrics
- (ICURLPerformanceMetrics)initWithDictionaryRepresentation:(id)a3;
- (ICURLPerformanceMetrics)initWithTransactionMetrics:(id)a3 request:(id)a4 taskIdentifier:(id)a5;
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
  v4 = [(ICURLPerformanceMetrics *)self statusCode];
  v5 = [(ICURLPerformanceMetrics *)self responseMessageSize]/ 0x3E8;
  [(ICURLPerformanceMetrics *)self totalTime];
  [v3 appendFormat:@" %ld %ldkB total:%.0fms", v4, v5, v6 * 1000.0];
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
  v11 = [(ICURLPerformanceMetrics *)self jingleCorrelationKey];

  if (v11)
  {
    [v3 appendString:@" jingleCorrelationKey:"];
    v12 = [(ICURLPerformanceMetrics *)self jingleCorrelationKey];
    [v3 appendString:v12];
  }

  v13 = [(ICURLPerformanceMetrics *)self requestUrl];
  [v3 appendFormat:@" %@", v13];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_taskIdentifier forKeyedSubscript:@"taskIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectionStartTime];
  [v3 setObject:v4 forKeyedSubscript:@"connectionStartTime"];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_connectionEndTime];
  [v3 setObject:v5 forKeyedSubscript:@"connectionEndTime"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_domainLookupStartTime];
  [v3 setObject:v6 forKeyedSubscript:@"domainLookupStartTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_domainLookupEndTime];
  [v3 setObject:v7 forKeyedSubscript:@"domainLookupEndTime"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fetchStartTime];
  [v3 setObject:v8 forKeyedSubscript:@"fetchStartTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_requestStartTime];
  [v3 setObject:v9 forKeyedSubscript:@"requestStartTime"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_responseStartTime];
  [v3 setObject:v10 forKeyedSubscript:@"responseStartTime"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_responseEndTime];
  [v3 setObject:v11 forKeyedSubscript:@"responseEndTime"];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secureConnectionStartTime];
  [v3 setObject:v12 forKeyedSubscript:@"secureConnectionStartTime"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_cachedResponse];
  [v3 setObject:v13 forKeyedSubscript:@"cachedResponse"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_connectionReused];
  [v3 setObject:v14 forKeyedSubscript:@"connectionReused"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_redirectCount];
  [v3 setObject:v15 forKeyedSubscript:@"redirectCount"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestMessageSize];
  [v3 setObject:v16 forKeyedSubscript:@"requestMessageSize"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestBytesSent];
  [v3 setObject:v17 forKeyedSubscript:@"requestBytesSent"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_responseMessageSize];
  [v3 setObject:v18 forKeyedSubscript:@"responseMessageSize"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_responseBytesReceived];
  [v3 setObject:v19 forKeyedSubscript:@"responseBytesReceived"];

  [v3 setObject:self->_requestUrl forKeyedSubscript:@"requestUrl"];
  [v3 setObject:self->_appleTimingApp forKeyedSubscript:@"appleTimingApp"];
  [v3 setObject:self->_connectionType forKeyedSubscript:@"connectionType"];
  [v3 setObject:self->_edgeNodeCacheStatus forKeyedSubscript:@"edgeNodeCacheStatus"];
  [v3 setObject:self->_environmentDataCenter forKeyedSubscript:@"environmentDataCenter"];
  [v3 setObject:self->_jingleCorrelationKey forKeyedSubscript:@"jingleCorrelationKey"];
  [v3 setObject:self->_responseDate forKeyedSubscript:@"responseDate"];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_statusCode];
  [v3 setObject:v20 forKeyedSubscript:@"statusCode"];

  [v3 setObject:self->_resolvedIPAddress forKeyedSubscript:@"resolvedIPAddress"];

  return v3;
}

- (ICURLPerformanceMetrics)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = ICURLPerformanceMetrics;
  v5 = [(ICURLPerformanceMetrics *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"taskIdentifier"];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"connectionStartTime"];
    [v8 doubleValue];
    v5->_connectionStartTime = v9;

    v10 = [v4 objectForKeyedSubscript:@"connectionEndTime"];
    [v10 doubleValue];
    v5->_connectionEndTime = v11;

    v12 = [v4 objectForKeyedSubscript:@"domainLookupStartTime"];
    [v12 doubleValue];
    v5->_domainLookupStartTime = v13;

    v14 = [v4 objectForKeyedSubscript:@"domainLookupEndTime"];
    [v14 doubleValue];
    v5->_domainLookupEndTime = v15;

    v16 = [v4 objectForKeyedSubscript:@"fetchStartTime"];
    [v16 doubleValue];
    v5->_fetchStartTime = v17;

    v18 = [v4 objectForKeyedSubscript:@"requestStartTime"];
    [v18 doubleValue];
    v5->_requestStartTime = v19;

    v20 = [v4 objectForKeyedSubscript:@"responseStartTime"];
    [v20 doubleValue];
    v5->_responseStartTime = v21;

    v22 = [v4 objectForKeyedSubscript:@"responseEndTime"];
    [v22 doubleValue];
    v5->_responseEndTime = v23;

    v24 = [v4 objectForKeyedSubscript:@"secureConnectionStartTime"];
    [v24 doubleValue];
    v5->_secureConnectionStartTime = v25;

    v26 = [v4 objectForKeyedSubscript:@"cachedResponse"];
    v5->_cachedResponse = [v26 BOOLValue];

    v27 = [v4 objectForKeyedSubscript:@"connectionReused"];
    v5->_connectionReused = [v27 BOOLValue];

    v28 = [v4 objectForKeyedSubscript:@"redirectCount"];
    v5->_redirectCount = [v28 integerValue];

    v29 = [v4 objectForKeyedSubscript:@"requestMessageSize"];
    v5->_requestMessageSize = [v29 integerValue];

    v30 = [v4 objectForKeyedSubscript:@"requestBytesSent"];
    v5->_requestBytesSent = [v30 integerValue];

    v31 = [v4 objectForKeyedSubscript:@"responseMessageSize"];
    v5->_responseMessageSize = [v31 integerValue];

    v32 = [v4 objectForKeyedSubscript:@"responseBytesReceived"];
    v5->_responseBytesReceived = [v32 integerValue];

    v33 = [v4 objectForKeyedSubscript:@"requestUrl"];
    requestUrl = v5->_requestUrl;
    v5->_requestUrl = v33;

    v35 = [v4 objectForKeyedSubscript:@"appleTimingApp"];
    appleTimingApp = v5->_appleTimingApp;
    v5->_appleTimingApp = v35;

    v37 = [v4 objectForKeyedSubscript:@"connectionType"];
    connectionType = v5->_connectionType;
    v5->_connectionType = v37;

    v39 = [v4 objectForKeyedSubscript:@"edgeNodeCacheStatus"];
    edgeNodeCacheStatus = v5->_edgeNodeCacheStatus;
    v5->_edgeNodeCacheStatus = v39;

    v41 = [v4 objectForKeyedSubscript:@"environmentDataCenter"];
    environmentDataCenter = v5->_environmentDataCenter;
    v5->_environmentDataCenter = v41;

    v43 = [v4 objectForKeyedSubscript:@"jingleCorrelationKey"];
    jingleCorrelationKey = v5->_jingleCorrelationKey;
    v5->_jingleCorrelationKey = v43;

    v45 = [v4 objectForKeyedSubscript:@"responseDate"];
    responseDate = v5->_responseDate;
    v5->_responseDate = v45;

    v47 = [v4 objectForKeyedSubscript:@"statusCode"];
    v5->_statusCode = [v47 integerValue];

    v48 = [v4 objectForKeyedSubscript:@"resolvedIPAddress"];
    resolvedIPAddress = v5->_resolvedIPAddress;
    v5->_resolvedIPAddress = v48;
  }

  return v5;
}

- (ICURLPerformanceMetrics)initWithTransactionMetrics:(id)a3 request:(id)a4 taskIdentifier:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v64.receiver = self;
  v64.super_class = ICURLPerformanceMetrics;
  v11 = [(ICURLPerformanceMetrics *)&v64 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_taskIdentifier, a5);
    v13 = [v8 connectStartDate];
    [v13 timeIntervalSince1970];
    v12->_connectionStartTime = v14;

    v15 = [v8 connectEndDate];
    [v15 timeIntervalSince1970];
    v12->_connectionEndTime = v16;

    v17 = [v8 domainLookupStartDate];
    [v17 timeIntervalSince1970];
    v12->_domainLookupStartTime = v18;

    v19 = [v8 domainLookupEndDate];
    [v19 timeIntervalSince1970];
    v12->_domainLookupEndTime = v20;

    v21 = [v8 fetchStartDate];
    [v21 timeIntervalSince1970];
    v12->_fetchStartTime = v22;

    v23 = [v8 requestStartDate];
    [v23 timeIntervalSince1970];
    v12->_requestStartTime = v24;

    v25 = [v8 responseStartDate];
    [v25 timeIntervalSince1970];
    v12->_responseStartTime = v26;

    v27 = [v8 responseEndDate];
    [v27 timeIntervalSince1970];
    v12->_responseEndTime = v28;

    v29 = [v8 secureConnectionStartDate];
    [v29 timeIntervalSince1970];
    v12->_secureConnectionStartTime = v30;

    v12->_cachedResponse = [v8 resourceFetchType] == 3;
    v12->_connectionReused = [v8 isReusedConnection];
    v12->_redirectCount = [v9 redirectCount];
    v31 = [v9 urlRequest];
    v32 = [v31 HTTPBody];
    v12->_requestMessageSize = [v32 length];

    v33 = [v8 countOfRequestHeaderBytesSent];
    v12->_requestBytesSent = [v8 countOfRequestBodyBytesSent] + v33;
    v34 = [v9 responseData];
    v12->_responseMessageSize = [v34 length];

    v35 = [v8 countOfResponseBodyBytesReceived];
    v12->_responseBytesReceived = [v8 countOfResponseHeaderBytesReceived] + v35;
    v36 = [v9 urlRequest];
    v37 = [v36 URL];
    v38 = [v37 absoluteString];
    requestUrl = v12->_requestUrl;
    v12->_requestUrl = v38;

    v40 = [v8 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
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

      v54 = [v41 statusCode];
      v12->_statusCode = v54;
    }

    if ([v40 _CFURLResponse])
    {
      [v40 _CFURLResponse];
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