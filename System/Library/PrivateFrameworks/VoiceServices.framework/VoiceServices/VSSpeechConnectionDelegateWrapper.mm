@interface VSSpeechConnectionDelegateWrapper
- (VSSpeechConnection)connection;
- (VSSpeechConnectionDelegate)delegate;
- (VSSpeechConnectionDelegateWrapper)init;
- (id)getLocalAudioRequest:(id)request;
- (id)getLocalRequest:(id)request;
- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error;
- (void)audioRequestDidStart:(id)start;
- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics;
- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range;
- (void)speechRequestDidContinue:(id)continue;
- (void)speechRequestDidPause:(id)pause;
- (void)speechRequestDidStart:(id)start;
- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error;
- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info;
@end

@implementation VSSpeechConnectionDelegateWrapper

- (VSSpeechConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (VSSpeechConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_delegate);

    if (v12)
    {
      v13 = [(VSSpeechConnectionDelegateWrapper *)self getLocalAudioRequest:requestCopy];
      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        v15 = objc_loadWeakRetained(&self->_connection);
        [v14 connection:v15 presynthesizedAudioRequest:v13 successWithInstrumentMetrics:metricsCopy error:errorCopy];
      }
    }
  }
}

- (void)audioRequestDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalAudioRequest:startCopy];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 presynthesizedAudioRequestDidStart:v7];
      }
    }
  }
}

- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_delegate);

    if (v12)
    {
      concurrentSynthesisRequests = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "pointer")}];
      v15 = [concurrentSynthesisRequests objectForKey:v14];

      if (v15)
      {
        concurrentSynthesisRequests2 = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "pointer")}];
        [concurrentSynthesisRequests2 removeObjectForKey:v17];

        v18 = objc_loadWeakRetained(&self->_delegate);
        v19 = objc_loadWeakRetained(&self->_connection);
        [v18 connection:v19 synthesisRequest:v15 didFinishWithInstrumentMetrics:metricsCopy error:errorCopy];
      }
    }
  }
}

- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  requestCopy = request;
  chunkCopy = chunk;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      concurrentSynthesisRequests = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "pointer")}];
      v12 = [concurrentSynthesisRequests objectForKey:v11];

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 didGenerateAudioChunk:chunkCopy];
      }
    }
  }
}

- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics
{
  requestCopy = request;
  metricsCopy = metrics;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:requestCopy];
      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_loadWeakRetained(&self->_connection);
        [v11 connection:v12 speechRequest:v10 successWithInstrumentMetrics:metricsCopy];
      }
    }
  }
}

- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      concurrentSynthesisRequests = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(requestCopy, "pointer")}];
      v12 = [concurrentSynthesisRequests objectForKey:v11];

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 didReceiveTimingInfo:infoCopy];
      }
    }
  }
}

- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:requestCopy];
      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_loadWeakRetained(&self->_connection);
        [v11 connection:v12 speechRequest:v10 didReceiveTimingInfo:infoCopy];
      }
    }
  }
}

- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);

    if (v11)
    {
      v12 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:requestCopy];
      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 willSpeakMark:mark inRange:{location, length}];
      }
    }
  }
}

- (void)speechRequestDidContinue:(id)continue
{
  continueCopy = continue;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:continueCopy];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidContinue:v7];
      }
    }
  }
}

- (void)speechRequestDidPause:(id)pause
{
  pauseCopy = pause;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:pauseCopy];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidPause:v7];
      }
    }
  }
}

- (void)speechRequestDidStart:(id)start
{
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:startCopy];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidStart:v7];
      }
    }
  }
}

- (id)getLocalAudioRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  audioRequests = [(VSSpeechConnectionDelegateWrapper *)self audioRequests];
  v6 = [audioRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(audioRequests);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
        if (requestCreatedTimestamp == [v9 requestCreatedTimestamp])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [audioRequests countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getLocalRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  requests = [(VSSpeechConnectionDelegateWrapper *)self requests];
  v6 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(requests);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
        if (requestCreatedTimestamp == [v9 requestCreatedTimestamp])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [requests countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (VSSpeechConnectionDelegateWrapper)init
{
  v10.receiver = self;
  v10.super_class = VSSpeechConnectionDelegateWrapper;
  v2 = [(VSSpeechConnectionDelegateWrapper *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v2->_requests;
    v2->_requests = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    audioRequests = v2->_audioRequests;
    v2->_audioRequests = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    concurrentSynthesisRequests = v2->_concurrentSynthesisRequests;
    v2->_concurrentSynthesisRequests = v7;
  }

  return v2;
}

@end