@interface VSSpeechConnectionDelegateWrapper
- (VSSpeechConnection)connection;
- (VSSpeechConnectionDelegate)delegate;
- (VSSpeechConnectionDelegateWrapper)init;
- (id)getLocalAudioRequest:(id)a3;
- (id)getLocalRequest:(id)a3;
- (void)audioRequest:(id)a3 didReportInstrumentMetrics:(id)a4 error:(id)a5;
- (void)audioRequestDidStart:(id)a3;
- (void)speechRequest:(id)a3 didReceiveTimingInfo:(id)a4;
- (void)speechRequest:(id)a3 didReportInstrumentMetrics:(id)a4;
- (void)speechRequest:(id)a3 didStartWithMark:(int64_t)a4 forRange:(_NSRange)a5;
- (void)speechRequestDidContinue:(id)a3;
- (void)speechRequestDidPause:(id)a3;
- (void)speechRequestDidStart:(id)a3;
- (void)synthesisRequest:(id)a3 didFinishWithInstrumentMetrics:(id)a4 error:(id)a5;
- (void)synthesisRequest:(id)a3 didGenerateAudioChunk:(id)a4;
- (void)synthesisRequest:(id)a3 didReceiveTimingInfo:(id)a4;
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

- (void)audioRequest:(id)a3 didReportInstrumentMetrics:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_delegate);

    if (v12)
    {
      v13 = [(VSSpeechConnectionDelegateWrapper *)self getLocalAudioRequest:v16];
      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        v15 = objc_loadWeakRetained(&self->_connection);
        [v14 connection:v15 presynthesizedAudioRequest:v13 successWithInstrumentMetrics:v8 error:v9];
      }
    }
  }
}

- (void)audioRequestDidStart:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalAudioRequest:v10];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 presynthesizedAudioRequestDidStart:v7];
      }
    }
  }
}

- (void)synthesisRequest:(id)a3 didFinishWithInstrumentMetrics:(id)a4 error:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_delegate);

    if (v12)
    {
      v13 = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "pointer")}];
      v15 = [v13 objectForKey:v14];

      if (v15)
      {
        v16 = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "pointer")}];
        [v16 removeObjectForKey:v17];

        v18 = objc_loadWeakRetained(&self->_delegate);
        v19 = objc_loadWeakRetained(&self->_connection);
        [v18 connection:v19 synthesisRequest:v15 didFinishWithInstrumentMetrics:v8 error:v9];
      }
    }
  }
}

- (void)synthesisRequest:(id)a3 didGenerateAudioChunk:(id)a4
{
  v15 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "pointer")}];
      v12 = [v10 objectForKey:v11];

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 didGenerateAudioChunk:v6];
      }
    }
  }
}

- (void)speechRequest:(id)a3 didReportInstrumentMetrics:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v13];
      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_loadWeakRetained(&self->_connection);
        [v11 connection:v12 speechRequest:v10 successWithInstrumentMetrics:v6];
      }
    }
  }
}

- (void)synthesisRequest:(id)a3 didReceiveTimingInfo:(id)a4
{
  v15 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self concurrentSynthesisRequests];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "pointer")}];
      v12 = [v10 objectForKey:v11];

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 didReceiveTimingInfo:v6];
      }
    }
  }
}

- (void)speechRequest:(id)a3 didReceiveTimingInfo:(id)a4
{
  v13 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);

    if (v9)
    {
      v10 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v13];
      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_loadWeakRetained(&self->_connection);
        [v11 connection:v12 speechRequest:v10 didReceiveTimingInfo:v6];
      }
    }
  }
}

- (void)speechRequest:(id)a3 didStartWithMark:(int64_t)a4 forRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);

    if (v11)
    {
      v12 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v15];
      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_loadWeakRetained(&self->_connection);
        [v13 connection:v14 speechRequest:v12 willSpeakMark:a4 inRange:{location, length}];
      }
    }
  }
}

- (void)speechRequestDidContinue:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v10];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidContinue:v7];
      }
    }
  }
}

- (void)speechRequestDidPause:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v10];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidPause:v7];
      }
    }
  }
}

- (void)speechRequestDidStart:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      v7 = [(VSSpeechConnectionDelegateWrapper *)self getLocalRequest:v10];
      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        v9 = objc_loadWeakRetained(&self->_connection);
        [v8 connection:v9 speechRequestDidStart:v7];
      }
    }
  }
}

- (id)getLocalAudioRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VSSpeechConnectionDelegateWrapper *)self audioRequests];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 requestCreatedTimestamp];
        if (v10 == [v9 requestCreatedTimestamp])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)getLocalRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VSSpeechConnectionDelegateWrapper *)self requests];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 requestCreatedTimestamp];
        if (v10 == [v9 requestCreatedTimestamp])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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