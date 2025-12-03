@interface _LTDSELFLoggingFrameworkRequest
- (_LTDSELFLoggingFrameworkRequest)initWithInvocationId:(id)id endpoints:(id)endpoints sessionIdProvider:(id)provider qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size;
- (void)responseReceived:(unint64_t)received;
@end

@implementation _LTDSELFLoggingFrameworkRequest

- (_LTDSELFLoggingFrameworkRequest)initWithInvocationId:(id)id endpoints:(id)endpoints sessionIdProvider:(id)provider qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size
{
  v48 = *MEMORY[0x277D85DE8];
  idCopy = id;
  endpointsCopy = endpoints;
  providerCopy = provider;
  sessionIdCopy = sessionId;
  v46.receiver = self;
  v46.super_class = _LTDSELFLoggingFrameworkRequest;
  v17 = [(_LTDSELFLoggingFrameworkRequest *)&v46 init];
  if (v17)
  {
    v36 = providerCopy;
    v37 = endpointsCopy;
    v38 = idCopy;
    v18 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:idCopy];
    mtId = v17->_mtId;
    v17->_mtId = v18;

    objc_storeStrong(&v17->_endpoints, endpoints);
    objc_storeStrong(&v17->_sessionIdProvider, provider);
    v20 = objc_alloc(MEMORY[0x277D5AC78]);
    v21 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v22 = [v20 initWithNSUUID:v21];
    frameworkRequestId = v17->_frameworkRequestId;
    v17->_frameworkRequestId = v22;

    v17->_requestRoute = route;
    v17->_isResponseReceivedEventSent = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v17->_endpoints;
    v24 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v42 + 1) + 8 * i);
          v29 = v17->_frameworkRequestId;
          requestRoute = v17->_requestRoute;
          v31 = v17->_mtId;
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)v17->_sessionIdProvider sessionId];
          [v28 frameworkRequestSentWithFrameworkRequestId:v29 qssSessionId:sessionIdCopy requestType:type requestRoute:requestRoute requestSize:size mtId:v31 sessionId:sessionId];
        }

        v25 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v25);
    }

    v33 = v17;
    endpointsCopy = v37;
    idCopy = v38;
    providerCopy = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)responseReceived:(unint64_t)received
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_isResponseReceivedEventSent)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = self->_endpoints;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          frameworkRequestId = self->_frameworkRequestId;
          requestRoute = self->_requestRoute;
          mtId = self->_mtId;
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v9 frameworkRequestResponseReceivedWithFrameworkRequestId:frameworkRequestId requestRoute:requestRoute mtId:mtId sessionId:sessionId numberOfSentences:received];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    self->_isResponseReceivedEventSent = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end