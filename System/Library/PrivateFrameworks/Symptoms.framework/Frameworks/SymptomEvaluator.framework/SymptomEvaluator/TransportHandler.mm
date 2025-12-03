@interface TransportHandler
+ (void)initialize;
+ (void)requestExplicitDisconnectSymptom:(unint64_t)symptom;
+ (void)updateFilters:(unint64_t)filters;
- (TransportHandler)init;
- (id)description;
- (void)_sendAck:(unsigned int)ack;
- (void)_sendFilterUpdate;
- (void)connect:(_transport_connection_s *)connect connId:(unint64_t)id writefn:(void *)writefn auditToken:(id *)token pid:(unint64_t)pid name:(char *)name verifiedDelegateSymptom:(BOOL)symptom;
- (void)dealloc;
- (void)didReceiveEvent:(id)event;
- (void)disconnect;
- (void)generateLibnetcoreSymptomSignpost:(id)signpost;
- (void)receivePayload:(const void *)payload length:(unint64_t)length;
- (void)startRead;
@end

@implementation TransportHandler

- (void)startRead
{
  if (OUTLINED_FUNCTION_1_0())
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_malloc called with size 0", v4, v5, v6, v7, 0);
  }

  *self = 0;
  asprintf(self, "strict_malloc called with size 0");
  qword_27DDA0B50 = *self;
  __break(1u);
}

- (TransportHandler)init
{
  v3.receiver = self;
  v3.super_class = TransportHandler;
  result = [(TransportHandler *)&v3 init];
  if (result)
  {
    result->_reporterId = 0;
    result->_reporterName = "tbd";
    result->_reporterVersion = 0;
    result->_ackId = 1;
  }

  return result;
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = transportConnections;
  transportConnections = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (void)updateFilters:(unint64_t)filters
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = transportConnections;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (*(v9 + 40) == filters)
        {
          *(v9 + 37) = 1;
          v10 = *(v9 + 124);
          if (v10 == 2)
          {
            [v9 _sendFilterUpdate];
          }

          else if (v10 == 1 && (*(v9 + 36) & 1) == 0)
          {
            [v9 startRead];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)requestExplicitDisconnectSymptom:(unint64_t)symptom
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = transportConnections;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (*(v9 + 88) == symptom)
        {
          *(v9 + 39) = 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  processName = "null-process";
  if (self->_processName)
  {
    processName = self->_processName;
  }

  bundleId = "null-bundle";
  if (self->_bundleId)
  {
    bundleId = self->_bundleId;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"TransportHandler at %p reporter %s (%s, %s) connection ref %lld", self, self->_reporterName, processName, bundleId, self->_connectionId];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = [(TransportHandler *)self description];
    *buf = 136315138;
    uTF8String = [v5 UTF8String];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "TransportHandler: Dealloc of %s", buf, 0xCu);
  }

  processName = self->_processName;
  if (processName)
  {
    free(processName);
  }

  self->_processName = 0;
  reporterName = self->_reporterName;
  if (reporterName && reporterName != "tbd")
  {
    free(reporterName);
  }

  self->_reporterName = 0;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    free(bundleId);
  }

  self->_bundleId = 0;
  v10.receiver = self;
  v10.super_class = TransportHandler;
  [(TransportHandler *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)generateLibnetcoreSymptomSignpost:(id)signpost
{
  v61 = *MEMORY[0x277D85DE8];
  signpostCopy = signpost;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
  bundleId = [signpostCopy bundleId];
  v6 = "unknownBundle";
  if (bundleId)
  {
    v6 = bundleId;
  }

  processName = [signpostCopy processName];
  v8 = "unknownProcess";
  if (processName)
  {
    v8 = processName;
  }

  v43 = v8;
  eventData = [signpostCopy eventData];
  v10 = eventData;
  v11 = *(eventData + 16);
  if ((*(eventData + 4) & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(eventData + 24);
  if (!v12)
  {
    v16 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v45 = signpostCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Received interface index zero in libnetcore event %@", buf, 0xCu);
    }

LABEL_6:
    LODWORD(v12) = 0;
    v13 = "other";
    goto LABEL_21;
  }

  v14 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v12];
  v15 = v14;
  if (!v14)
  {
    v17 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v45 = v12;
      *&v45[4] = 2112;
      *&v45[6] = signpostCopy;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Can't lookup interface index %d from libnetcore event %@", buf, 0x12u);
    }

LABEL_15:
    v13 = "other";
    goto LABEL_20;
  }

  if ([v14 type] != 1)
  {
    if ([v15 type] == 2)
    {
      v13 = "cell";
      goto LABEL_20;
    }

    if ([v15 type] == 3)
    {
      v13 = "eth";
      goto LABEL_20;
    }

    if ([v15 type] != 4)
    {
      v40 = transportLogHandle;
      if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
        *buf = 134218498;
        *v45 = [v15 type];
        *&v45[8] = 1024;
        *&v45[10] = v12;
        v46 = 2112;
        v47 = signpostCopy;
        _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "Unexpected type %ld for interface index %d from libnetcore event %@", buf, 0x1Cu);
      }
    }

    goto LABEL_15;
  }

  v13 = "wifi";
LABEL_20:

LABEL_21:
  if ((*(v10 + 4) & 2) != 0)
  {
    v18 = *(v10 + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = v11 & 0xFFFFF;
  eventQualifiers = [signpostCopy eventQualifiers];
  v21 = [eventQualifiers objectForKeyedSubscript:@"2"];

  if (v21 && [v21 length])
  {
    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v21, "bytes")}];

    v4 = v22;
  }

  v23 = [signpostCopy eventQualifierStringForKey:@"3"];
  v24 = [signpostCopy eventQualifierStringForKey:@"4"];
  if (v19 > 421892)
  {
    switch(v19)
    {
      case 421893:
        v33 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v33;
          processId = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "TLSHandshakeFailed";
          goto LABEL_46;
        }

        break;
      case 421894:
        v37 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v37;
          processId2 = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId2;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "DNSFailed";
          goto LABEL_46;
        }

        break;
      case 421895:
        v29 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v29;
          processId3 = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId3;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "TLSHandshakeTimeout";
          goto LABEL_46;
        }

        break;
    }
  }

  else
  {
    switch(v19)
    {
      case 421890:
        v31 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v31;
          processId4 = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId4;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "dataStall";
          goto LABEL_46;
        }

        break;
      case 421891:
        v35 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v35;
          processId5 = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId5;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "adaptiveWriteTimeout";
          goto LABEL_46;
        }

        break;
      case 421892:
        v25 = signpostLogHandle;
        if (os_signpost_enabled(signpostLogHandle))
        {
          v26 = v25;
          processId6 = [signpostCopy processId];
          *buf = 136317187;
          *v45 = v13;
          *&v45[8] = 1024;
          *&v45[10] = v12;
          v46 = 2081;
          v47 = v42;
          v48 = 2081;
          v49 = v43;
          v50 = 2113;
          v51 = v23;
          v52 = 2048;
          v53 = processId6;
          v54 = 2048;
          v55 = v18;
          v56 = 2112;
          v57 = v4;
          v58 = 2117;
          v59 = v24;
          v28 = "adaptiveReadTimeout";
LABEL_46:
          _os_signpost_emit_with_name_impl(&dword_23255B000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v28, "iftype=%s ifIndex=%d bundle=%{private}s procName=%{private}s eprocName=%{private}@ pid=%lld epid=%lld EUUID=%@ endpoint=%{sensitive}@", buf, 0x58u);
        }

        break;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)connect:(_transport_connection_s *)connect connId:(unint64_t)id writefn:(void *)writefn auditToken:(id *)token pid:(unint64_t)pid name:(char *)name verifiedDelegateSymptom:(BOOL)symptom
{
  v34 = *MEMORY[0x277D85DE8];
  self->_connection = connect;
  self->_connectionId = id;
  self->_writeFn = writefn;
  v9 = *token->var0;
  *&self->_auditToken.val[4] = *&token->var0[4];
  *self->_auditToken.val = v9;
  self->_pid = pid;
  if (!name)
  {
    [ManagedEventHandler initWithName:buf];
  }

  v12 = strdup(name);
  if (!v12)
  {
    [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
  }

  self->_processName = v12;
  self->_verifiedDelegateSymptom = symptom;
  self->_sendEventOnClose = 0;
  v13 = [MEMORY[0x277D46F50] identifierWithPid:pid];
  if (v13)
  {
    v31 = 0;
    v14 = [MEMORY[0x277D46F48] handleForIdentifier:v13 error:&v31];
    v15 = v31;
    if (v14)
    {
      identity = [v14 identity];
      if (identity)
      {
        bundle = [v14 bundle];
        embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
        v19 = embeddedApplicationIdentifier;
        if (embeddedApplicationIdentifier)
        {
          v20 = embeddedApplicationIdentifier;
        }

        else
        {
          xpcServiceIdentifier = [identity xpcServiceIdentifier];
          v22 = xpcServiceIdentifier;
          if (xpcServiceIdentifier)
          {
            identifier = xpcServiceIdentifier;
          }

          else
          {
            identifier = [bundle identifier];
          }

          v20 = identifier;
        }

        if ([v20 length])
        {
          uTF8String = [v20 UTF8String];
          if (!uTF8String)
          {
            [ManagedEventHandler initWithName:buf];
          }

          v25 = strdup(uTF8String);
          if (!v25)
          {
            [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
          }

          self->_bundleId = v25;
        }
      }
    }
  }

  v26 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v27 = v26;
    v28 = [(TransportHandler *)self description];
    uTF8String2 = [v28 UTF8String];
    *buf = 136315138;
    v33 = uTF8String2;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "TransportHandler: Connect of %s", buf, 0xCu);
  }

  [transportConnections addObject:self];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  if (self->_sendEventOnClose)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    LODWORD(v14) = 405524;
    v3 = [EventDescription alloc];
    pid = self->_pid;
    processName = self->_processName;
    bundleId = self->_bundleId;
    verifiedDelegateSymptom = self->_verifiedDelegateSymptom;
    v8 = *&self->_auditToken.val[4];
    v12[0] = *self->_auditToken.val;
    v12[1] = v8;
    LOBYTE(v11) = verifiedDelegateSymptom;
    v9 = [(EventDescription *)v3 initWithType:0 length:88 data:&v13 fromAuditToken:v12 fromPid:pid named:processName bundleId:bundleId verifiedDelegateSymptom:v11];
    v10 = [SymptomStore keyFromSymptomId:v14];
    [(EventDescription *)v9 setEventKey:v10];

    [(TransportHandler *)self didReceiveEvent:v9];
  }

  [transportConnections removeObject:self];
}

- (void)didReceiveEvent:(id)event
{
  v10 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_INFO))
  {
    [SymptomTracer traceBasicSymptom:eventCopy];
    v4 = transportLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = [eventCopy description];
    v8 = 136315138;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received basic symptom, event %s", &v8, 0xCu);
  }

  [SimpleSymptomEvaluator postIncomingEvent:eventCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendFilterUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_filterUpdateOutstanding)
  {
    filterMessage = [(ReporterFilter *)self->_reporterFilter filterMessage];

    if (filterMessage)
    {
      filterMessage2 = [(ReporterFilter *)self->_reporterFilter filterMessage];
      v5 = [filterMessage2 length];
      v6 = v5 + 12;
      if (v5 == -12)
      {
        [(TransportHandler *)&v15 startRead];
      }

      v7 = v5;
      v8 = malloc_type_malloc(v5 + 12, 0xF6D2F2DuLL);
      if (!v8)
      {
        [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
      }

      v9 = v8;
      *v8 = 1;
      v8[1] = v7 + 8;
      v8[2] = 12;
      v8[3] = v7;
      v10 = v8 + 4;
      [filterMessage2 getBytes:v8 + 4 length:v7];
      *(v10 + v7) = 0;
      self->_filterUpdateOutstanding = 0;
      v11 = transportLogHandle;
      if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_INFO))
      {
        pid = self->_pid;
        processName = self->_processName;
        v15 = 134218242;
        v16 = pid;
        v17 = 2080;
        v18 = processName;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Updating symptom filters for pid %llu,  %s", &v15, 0x16u);
      }

      (self->_writeFn)(self->_connection, self->_connectionId, v9, v6);
      free(v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendAck:(unsigned int)ack
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = ack;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Sending an ack for seqno %d", v7, 8u);
  }

  dword_27DDA04E0 = ack;
  (self->_writeFn)(self->_connection, self->_connectionId);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)receivePayload:(const void *)payload length:(unint64_t)length
{
  selfCopy = self;
  v135 = *MEMORY[0x277D85DE8];
  disabled = self->_disabled;
  v8 = &transportLogHandle;
  v9 = transportLogHandle;
  v10 = os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG);
  if (disabled)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    processName = selfCopy->_processName;
    if (!processName)
    {
      processName = "unknown-process";
    }

    *buf = 136315138;
    *&buf[4] = processName;
    v12 = "receivePayload on disabled channel from %s";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEBUG;
    goto LABEL_6;
  }

  if (v10)
  {
    reporterName = selfCopy->_reporterName;
    v16 = *payload;
    v17 = *(payload + 1);
    *buf = 136316162;
    *&buf[4] = reporterName;
    *&buf[12] = 2048;
    *&buf[14] = payload;
    *&buf[22] = 1024;
    *&buf[24] = v16;
    *&buf[28] = 1024;
    *&buf[30] = v17;
    v133 = 2048;
    lengthCopy = length;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "receivePayload: reporter %s desc %p type %d len %d msg size %lu\n", buf, 0x2Cu);
  }

  if (length <= 3)
  {
    v18 = transportLogHandle;
    if (!os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v19 = selfCopy->_processName;
    if (!v19)
    {
      v19 = "unknown-process";
    }

    *buf = 134218242;
    *&buf[4] = length;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    v20 = "receivePayload: payload under size %lu, sender %s (possible mismatch between SymptomReporter framework and the daemon?)\n";
LABEL_14:
    v21 = v18;
    v22 = 22;
    goto LABEL_15;
  }

  if (*payload == 1)
  {
    length -= 4;
    if (length <= 3)
    {
      v18 = transportLogHandle;
      if (!os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v24 = selfCopy->_processName;
      if (!v24)
      {
        v24 = "unknown-process";
      }

      *buf = 134218242;
      *&buf[4] = length;
      *&buf[12] = 2080;
      *&buf[14] = v24;
      v20 = "receivePayload: inner payload under size %lu, sender %s (possible mismatch between SymptomReporter framework and the daemon?)\n";
      goto LABEL_14;
    }

    payload = payload + 4;
  }

  v25 = off_278989000;
  v130 = selfCopy;
  while (1)
  {
    v26 = *payload;
    if (v26 > 2)
    {
      switch(v26)
      {
        case 3u:
          if (!selfCopy->_reporterId)
          {
            if (*(payload + 1) != 36)
            {
              v117 = *v8;
              if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v118 = *(payload + 1);
              *buf = 67109376;
              *&buf[4] = 36;
              *&buf[8] = 1024;
              *&buf[10] = v118;
              v20 = "receivePayload: unexpected size for SYMTLV_SENDER_ID, expect %d, found %d (possible mismatch between SymptomReporter framework and the daemon?)";
              v21 = v117;
LABEL_162:
              v22 = 14;
              goto LABEL_15;
            }

            selfCopy->_reporterVersion = *(payload + 4);
            if (*(payload + 5))
            {
              v38 = [SymptomStore nameFromReporterId:?];
              if (!v38)
              {
                v106 = *v8;
                if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_16;
                }

                v127 = *(payload + 5);
                v128 = selfCopy->_processName;
                if (!v128)
                {
                  v128 = "unknown-process";
                }

LABEL_195:
                *buf = 67109378;
                *&buf[4] = v127;
                *&buf[8] = 2080;
                *&buf[10] = v128;
                v20 = "receivePayload: unknown reporter id: %u sender %s";
                goto LABEL_196;
              }

              v39 = v38;
              selfCopy->_reporterId = *(payload + 5);
              uTF8String = [v38 UTF8String];
              if (!uTF8String)
              {
                [ManagedEventHandler initWithName:buf];
              }

              v41 = strdup(uTF8String);
              if (!v41)
              {
                [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
              }

              selfCopy->_reporterName = v41;
              v42 = [ReporterFilter filterForId:selfCopy->_reporterId];
              reporterFilter = selfCopy->_reporterFilter;
              selfCopy->_reporterFilter = v42;

              v44 = selfCopy->_reporterFilter;
              if (v44)
              {
                filterMessage = [(ReporterFilter *)v44 filterMessage];

                if (filterMessage)
                {
                  selfCopy->_filterUpdateOutstanding = 1;
                }
              }
            }

            else
            {
              selfCopy->_reporterId = 14613999;
              v71 = strndup(payload + 8, 0x1FuLL);
              if (!v71)
              {
                [TransportHandler receivePayload:buf length:?];
              }

              selfCopy->_reporterName = v71;
            }

            v72 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
            {
              reporterId = selfCopy->_reporterId;
              v74 = selfCopy->_reporterName;
              reporterVersion = selfCopy->_reporterVersion;
              filterUpdateOutstanding = selfCopy->_filterUpdateOutstanding;
              *buf = 67109890;
              *&buf[4] = reporterId;
              *&buf[8] = 2080;
              *&buf[10] = v74;
              *&buf[18] = 1024;
              *&buf[20] = reporterVersion;
              *&buf[24] = 1024;
              *&buf[26] = filterUpdateOutstanding;
              _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEBUG, "Found Sender ID, Added reporter id %d name %s version %d filter updated %d", buf, 0x1Eu);
            }
          }

LABEL_100:
          payloadCopy3 = payload;
          goto LABEL_101;
        case 7u:
          v27 = selfCopy->_reporterVersion;
          if (v27)
          {
            if (v27 != 1)
            {
              v114 = *v8;
              if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v116 = selfCopy->_reporterVersion;
              *buf = 67109376;
              *&buf[4] = v116;
              *&buf[8] = 1024;
              *&buf[10] = 1;
              v20 = "receivePayload: unexpected version transition, %d to %d";
LABEL_159:
              v21 = v114;
              goto LABEL_162;
            }
          }

          else
          {
            selfCopy->_reporterVersion = 1;
          }

          if (*(payload + 1) != 48)
          {
            v109 = *v8;
            if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_16;
            }

            v112 = *(payload + 1);
            v113 = selfCopy->_processName;
            if (!v113)
            {
              v113 = "unknown-process";
            }

            *buf = 67109634;
            *&buf[4] = v112;
            *&buf[8] = 2048;
            *&buf[10] = 48;
            *&buf[18] = 2080;
            *&buf[20] = v113;
            v20 = "receivePayload: SYMTLV_STATUS has bad len, %u, expect %lu,  sender %s (possible mismatch between SymptomReporter framework and the daemon?)\n";
            goto LABEL_156;
          }

          if (!selfCopy->_reporterId)
          {
            if (*(payload + 5))
            {
              v46 = [SymptomStore nameFromReporterId:?];
              if (!v46)
              {
                v106 = *v8;
                if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_16;
                }

                v127 = *(payload + 5);
                v128 = selfCopy->_processName;
                if (!v128)
                {
                  v128 = "unknown-process";
                }

                goto LABEL_195;
              }

              v47 = v46;
              selfCopy->_reporterId = *(payload + 5);
              uTF8String2 = [v46 UTF8String];
              if (!uTF8String2)
              {
                [ManagedEventHandler initWithName:buf];
              }

              v49 = strdup(uTF8String2);
              if (!v49)
              {
                [EventDescription initWithType:buf length:? data:? fromPid:? named:? bundleId:?];
              }

              selfCopy->_reporterName = v49;
              v50 = [ReporterFilter filterForId:selfCopy->_reporterId];
              v51 = selfCopy->_reporterFilter;
              selfCopy->_reporterFilter = v50;

              v52 = selfCopy->_reporterFilter;
              if (v52)
              {
                filterMessage2 = [(ReporterFilter *)v52 filterMessage];

                if (filterMessage2)
                {
                  selfCopy->_filterUpdateOutstanding = 1;
                }
              }
            }

            else
            {
              selfCopy->_reporterId = 14613999;
              v77 = strndup(payload + 20, 0x1FuLL);
              if (!v77)
              {
                [TransportHandler receivePayload:buf length:?];
              }

              selfCopy->_reporterName = v77;
            }
          }

          if (*(payload + 6))
          {
            selfCopy->_readOutstanding = 0;
            if (*(payload + 2) != selfCopy->_ackId)
            {
              v78 = *v8;
              if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
              {
                v79 = *(payload + 2);
                ackId = selfCopy->_ackId;
                v81 = selfCopy->_processName;
                if (!v81)
                {
                  v81 = "unknown-process";
                }

                *buf = 67109634;
                *&buf[4] = v79;
                *&buf[8] = 1024;
                *&buf[10] = ackId;
                *&buf[14] = 2080;
                *&buf[16] = v81;
                _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_ERROR, "receivePayload: SYMTLV_STATUS has ack ID %d, expect %d, sender %s\n", buf, 0x18u);
              }
            }
          }

          if (*(payload + 3))
          {
            [(TransportHandler *)selfCopy startRead];
          }

          goto LABEL_100;
        case 0x28u:
          v104 = selfCopy->_reporterVersion;
          if (v104)
          {
            if (v104 != 2)
            {
              v114 = *v8;
              if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_16;
              }

              v105 = selfCopy->_reporterVersion;
              *buf = 67109376;
              *&buf[4] = v105;
              *&buf[8] = 1024;
              *&buf[10] = 2;
              v20 = "receivePayload: unexpected version transition, %d to %d";
              goto LABEL_159;
            }
          }

          else
          {
            selfCopy->_reporterVersion = 2;
          }

          if (*(payload + 1) == 4)
          {
            [(TransportHandler *)selfCopy _sendAck:*(payload + 1)];
            goto LABEL_171;
          }

          v106 = *v8;
          if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          v125 = *(payload + 1);
          v126 = selfCopy->_processName;
          if (!v126)
          {
            v126 = "unknown-process";
          }

          *buf = 67109378;
          *&buf[4] = v125;
          *&buf[8] = 2080;
          *&buf[10] = v126;
          v20 = "receivePayload: SYMTLV_TERMINAL_SOLICIT_ACK payload unexpected size %d, sender %s (possible mismatch between SymptomReporter framework and the daemon?)\n";
LABEL_196:
          v21 = v106;
          v22 = 18;
          goto LABEL_15;
      }

LABEL_144:
      v106 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v107 = *payload;
      v108 = selfCopy->_processName;
      if (!v108)
      {
        v108 = "unknown-process";
      }

      *buf = 67109378;
      *&buf[4] = v107;
      *&buf[8] = 2080;
      *&buf[10] = v108;
      v20 = "Unknown SYMTLV value %d, sender %s\n";
      goto LABEL_196;
    }

    if (v26 != 2)
    {
      if (!*payload)
      {
LABEL_171:
        if (!selfCopy->_filterUpdateOutstanding)
        {
          goto LABEL_17;
        }

        v122 = selfCopy->_reporterVersion;
        v123 = filterLogHandle;
        if (v122 == 2)
        {
          if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v123, OS_LOG_TYPE_DEBUG, "receivePayload: start filter update due to _filterUpdateOutstanding\n", buf, 2u);
          }

          [(TransportHandler *)selfCopy _sendFilterUpdate];
          goto LABEL_17;
        }

        if (v122 == 1)
        {
          if (os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v123, OS_LOG_TYPE_DEBUG, "receivePayload: start read due to _filterUpdateOutstanding\n", buf, 2u);
          }

          [(TransportHandler *)selfCopy startRead];
          goto LABEL_17;
        }

        if (!os_log_type_enabled(filterLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v124 = selfCopy->_processName;
        if (!v124)
        {
          v124 = "unknown-process";
        }

        *buf = 136315138;
        *&buf[4] = v124;
        v12 = "Unexpected update filter action for %s when reporterversion not known";
        v13 = v123;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_6:
        _os_log_impl(&dword_23255B000, v13, v14, v12, buf, 0xCu);
        goto LABEL_17;
      }

      if (v26 == 1)
      {
        v84 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v85 = selfCopy->_processName;
          if (!v85)
          {
            v85 = "unknown-process";
          }

          *buf = 136315138;
          *&buf[4] = v85;
          v20 = "receivePayload: OUTER_ENVELOPE received, sender %s\n";
          v21 = v84;
          v22 = 12;
LABEL_15:
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
        }

LABEL_16:
        selfCopy->_disabled = 1;
        goto LABEL_17;
      }

      goto LABEL_144;
    }

    if (*(payload + 1) != 88)
    {
      v109 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v110 = *(payload + 1);
      v111 = selfCopy->_processName;
      if (!v111)
      {
        v111 = "unknown-process";
      }

      *buf = 67109634;
      *&buf[4] = v110;
      *&buf[8] = 2048;
      *&buf[10] = 88;
      *&buf[18] = 2080;
      *&buf[20] = v111;
      v20 = "receivePayload: SYMTLV_SYM_BASIC has bad len, %d, expect %lu, sender %s (possible mismatch between SymptomReporter framework and the daemon?)\n";
LABEL_156:
      v21 = v109;
      v22 = 28;
      goto LABEL_15;
    }

    v28 = objc_alloc(v25[8]);
    pid = selfCopy->_pid;
    v30 = selfCopy->_processName;
    bundleId = selfCopy->_bundleId;
    verifiedDelegateSymptom = selfCopy->_verifiedDelegateSymptom;
    v33 = *&selfCopy->_auditToken.val[4];
    *buf = *selfCopy->_auditToken.val;
    *&buf[16] = v33;
    LOBYTE(v129) = verifiedDelegateSymptom;
    v131 = [v28 initWithType:0 length:88 data:payload + 4 fromAuditToken:buf fromPid:pid named:v30 bundleId:bundleId verifiedDelegateSymptom:v129];
    if ((*(payload + 11) & 0x40) != 0)
    {
      break;
    }

    payloadCopy3 = payload;
LABEL_36:
    eventKey = [v131 eventKey];

    if (!eventKey)
    {
      v36 = [SymptomStore keyFromSymptomId:*(payload + 5)];
      [v131 setEventKey:v36];
    }

    v37 = *(payload + 5);
    selfCopy = v130;
    if ((v37 & 0xFF000) == 0x67000 && (v37 & 0x67FFEu) - 421890 <= 5)
    {
      [(TransportHandler *)v130 generateLibnetcoreSymptomSignpost:v131];
    }

    [(TransportHandler *)v130 didReceiveEvent:v131];

    v25 = off_278989000;
LABEL_101:
    v82 = payloadCopy3[1];
    v83 = length >= v82 + 4;
    length -= v82 + 4;
    if (!v83)
    {
      v86 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v88 = *payloadCopy3;
        v89 = payloadCopy3[1];
        v90 = selfCopy->_processName;
        if (!v90)
        {
          v90 = "unknown-process";
        }

        *buf = 67109634;
        *&buf[4] = v88;
        *&buf[8] = 1024;
        *&buf[10] = v89;
        *&buf[14] = 2080;
        *&buf[16] = v90;
        v20 = "receivePayload: SYMTLV code %d has bad len, %ul, sender %s\n";
        v21 = v86;
        v22 = 24;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    payload = payloadCopy3 + v82 + 4;
    if (length <= 3)
    {
      goto LABEL_171;
    }
  }

  v54 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEBUG, "Parsing additional qualifiers", buf, 2u);
  }

  v55 = 20;
  payloadCopy3 = payload;
  while (1)
  {
    v56 = payloadCopy3[1];
    v57 = length - v56 - 4;
    if (v57 <= 3)
    {
      v91 = *v8;
      v92 = v130;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v93 = v130->_processName;
        if (!v93)
        {
          v93 = "unknown-process";
        }

        *buf = 134218242;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = v93;
        v94 = "receivePayload: remaining qualifier length %zd from %s is insufficient to form a tlv (corrupted or incomplete data?)";
        v95 = v91;
        v96 = 22;
        goto LABEL_136;
      }

LABEL_137:
      v92->_disabled = 1;
      goto LABEL_138;
    }

    v58 = payloadCopy3 + v56 + 4;
    if (*v58 != 8)
    {
      goto LABEL_36;
    }

    payloadCopy3 = (payloadCopy3 + v56 + 4);
    v59 = *(v58 + 2);
    v60 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v59;
      _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEBUG, "receivePayload: Additional qualifier with length %hu", buf, 8u);
    }

    if ((v59 & 3) != 0)
    {
      v97 = *v8;
      v92 = v130;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v98 = v130->_processName;
        if (!v98)
        {
          v98 = "unknown-process";
        }

        *buf = 67109378;
        *&buf[4] = v59;
        *&buf[8] = 2080;
        *&buf[10] = v98;
        v94 = "receivePayload: found unpadded qualifier, supplied length %hu from %s";
LABEL_131:
        v95 = v97;
        v96 = 18;
LABEL_136:
        _os_log_impl(&dword_23255B000, v95, OS_LOG_TYPE_ERROR, v94, buf, v96);
      }

      goto LABEL_137;
    }

    if (v57 < v59 + 4)
    {
      v97 = *v8;
      v92 = v130;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v99 = v130->_processName;
        if (!v99)
        {
          v99 = "unknown-process";
        }

        *buf = 67109378;
        *&buf[4] = v59;
        *&buf[8] = 2080;
        *&buf[10] = v99;
        v94 = "receivePayload: qualifier length %hu in excess of supplied data from %s";
        goto LABEL_131;
      }

      goto LABEL_137;
    }

    if (v59 <= 0xB)
    {
      v97 = *v8;
      v92 = v130;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v100 = v130->_processName;
        if (!v100)
        {
          v100 = "unknown-process";
        }

        *buf = 67109378;
        *&buf[4] = v59;
        *&buf[8] = 2080;
        *&buf[10] = v100;
        v94 = "receivePayload: symptom qualifier length %hu insufficient for qualifier from %s";
        goto LABEL_131;
      }

      goto LABEL_137;
    }

    v61 = (v58 + 4);
    v62 = v8;
    v63 = *(v58 + 8);
    v64 = v62;
    v65 = *v62;
    if (os_log_type_enabled(*v62, OS_LOG_TYPE_DEBUG))
    {
      v66 = *v61;
      *buf = 67109376;
      *&buf[4] = v66;
      *&buf[8] = 1024;
      *&buf[10] = v63;
      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "receivePayload: symptom qualifier type %u with length %u", buf, 0xEu);
    }

    if (v63 + 8 > v59)
    {
      v101 = *v64;
      v102 = os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR);
      v92 = v130;
      if (v102)
      {
        v103 = v130->_processName;
        if (!v103)
        {
          v103 = "unknown-process";
        }

        *buf = 67109634;
        *&buf[4] = v63;
        *&buf[8] = 1024;
        *&buf[10] = v59;
        *&buf[14] = 2080;
        *&buf[16] = v103;
        v94 = "receivePayload: symptom qualifier unpadded length %u + symptom qualifier tlv is greater than padded length %hu from %s";
        v95 = v101;
        v96 = 24;
        goto LABEL_136;
      }

      goto LABEL_137;
    }

    if ((*v61 & 0x20000000) == 0)
    {
      break;
    }

    v67 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v58 + 12 length:strnlen((v58 + 12) encoding:{*(v58 + 8)), 4}];
    [v131 setEventKey:v67];
    v8 = v64;
LABEL_82:

    v70 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = v61;
      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "Added qualifier at %p", buf, 0xCu);
    }

    length = v57;
    if (!--v55)
    {
      goto LABEL_36;
    }
  }

  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *v61];
  v8 = v64;
  if ((*v61 & 0x80000000) == 0 || *(v58 + 8) == 32)
  {
    if ((*v61 & 0x40000000) == 0)
    {
      v68 = [MEMORY[0x277CBEA90] dataWithBytes:v58 + 12 length:*(v58 + 8)];
      eventQualifiers = [v131 eventQualifiers];
      [eventQualifiers setObject:v68 forKey:v67];
    }

    goto LABEL_82;
  }

  v119 = *v64;
  if (os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
  {
    v120 = *(v58 + 8);
    v121 = v130->_processName;
    if (!v121)
    {
      v121 = "unknown-process";
    }

    *buf = 67109378;
    *&buf[4] = v120;
    *&buf[8] = 2080;
    *&buf[10] = v121;
    _os_log_impl(&dword_23255B000, v119, OS_LOG_TYPE_ERROR, "receivePayload: digest has bad len, %ul, sender %s\n", buf, 0x12u);
  }

  v130->_disabled = 1;

LABEL_138:
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)receivePayload:(char *)a1 length:.cold.3(char **a1)
{
  if (OUTLINED_FUNCTION_1_0())
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strndup() failed", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strndup() failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end