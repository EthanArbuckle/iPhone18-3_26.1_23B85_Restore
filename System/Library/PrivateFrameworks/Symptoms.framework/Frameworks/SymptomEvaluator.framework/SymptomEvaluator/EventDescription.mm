@interface EventDescription
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (EventDescription)initWithType:(int)type length:(int64_t)length data:(void *)data fromPid:(unint64_t)pid named:(char *)named bundleId:(const char *)id;
- (char)originatorForLogging;
- (id)description;
- (id)eventQualifierStringForKey:(id)key;
- (void)dealloc;
@end

@implementation EventDescription

- (void)dealloc
{
  eventData = self->_eventData;
  if (eventData)
  {
    free(eventData);
    self->_eventData = 0;
  }

  processName = self->_processName;
  if (processName)
  {
    free(processName);
    self->_processName = 0;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    free(bundleId);
    self->_bundleId = 0;
  }

  self->_eventType = -559038737;
  v6.receiver = self;
  v6.super_class = EventDescription;
  [(EventDescription *)&v6 dealloc];
}

- (id)description
{
  if (!self->_eventType && (eventData = self->_eventData) != 0 && self->_eventLen == 88)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"EventDescription [#%llu] sb at %p from pid %llu %s SYMPTOM 0x%x  flags 0x%x qual0 0x%llx qual1 0x%llx key %@ num additional quals %d", self->_seqNo, eventData, self->_processId, self->_processName, *(eventData + 4), *(eventData + 1), eventData[3], eventData[4], self->_eventKey, -[NSMutableDictionary count](self->_eventQualifiers, "count")];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    eventLen = self->_eventLen;
    v5 = [v3 initWithFormat:@"EventDescription [#%llu] _type = %d ptr %p len %ld key %@", self->_seqNo, self->_eventType, self->_eventData, eventLen, self->_eventKey, v8, v9, v10, v11, v12];
  }

  return v5;
}

- (EventDescription)initWithType:(int)type length:(int64_t)length data:(void *)data fromPid:(unint64_t)pid named:(char *)named bundleId:(const char *)id
{
  v27.receiver = self;
  v27.super_class = EventDescription;
  v14 = [(EventDescription *)&v27 init];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = type;
    v16 = __gEventSeqNo++;
    v14->_seqNo = v16;
    if (length && data)
    {
      v17 = malloc_type_malloc(length, 0x73606D22uLL);
      if (!v17)
      {
        [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
      }

      v18 = v17;
      memcpy(v17, data, length);
      v15->_eventLen = length;
      v15->_eventData = v18;
    }

    else
    {
      v14->_eventLen = 0;
      v14->_eventData = 0;
    }

    v15->_processId = pid;
    if (named)
    {
      v19 = strdup(named);
      if (!v19)
      {
        [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
      }
    }

    else
    {
      v19 = strdup("Unknown-process");
      if (!v19)
      {
        [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
      }
    }

    v15->_processName = v19;
    if (id)
    {
      v20 = strdup(id);
      if (!v20)
      {
        [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
      }

      v15->_bundleId = v20;
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventQualifiers = v15->_eventQualifiers;
    v15->_eventQualifiers = v21;

    eventKey = v15->_eventKey;
    v15->_eventKey = 0;

    date = [MEMORY[0x277CBEAA8] date];
    creationTimeStamp = v15->_creationTimeStamp;
    v15->_creationTimeStamp = date;
  }

  return v15;
}

- (char)originatorForLogging
{
  v8 = *MEMORY[0x277D85DE8];
  bundleId = self->_bundleId;
  if (bundleId)
  {
    if (strncmp(originatorForLogging_appleBundlePrefix, bundleId, 0xAuLL))
    {
      bundleId = "THIRD_PARTY_APP";
    }
  }

  else
  {
    bundleId = self->_processName;
  }

  v3 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = bundleId;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "return for logging is %s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return bundleId;
}

- (id)eventQualifierStringForKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_eventQualifiers objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7 = [v6 length];
  bytes = [v6 bytes];
  v9 = [v6 length];
  v10 = *(bytes + v9 - 1);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes length:v7 - (*(bytes + v9 - 1) == 0) encoding:4];
  v12 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = "not ";
    v17 = 138412802;
    v18 = keyCopy;
    if (!v10)
    {
      v13 = "";
    }

    v19 = 2080;
    selfCopy = v13;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Converted qualifier %@ to string, was %snull terminated, result %@", &v17, 0x20u);
  }

  if (!v11)
  {
    v14 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = keyCopy;
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "Unable to convert qualifier %@ to string for event %@", &v17, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)initWithType:(char *)a1 length:data:fromPid:named:bundleId:.cold.1(char **a1)
{
  if (OUTLINED_FUNCTION_1_0())
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strdup() failed", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strdup() failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

- (void)initWithType:(char *)a1 length:data:fromPid:named:bundleId:.cold.4(char **a1)
{
  if (OUTLINED_FUNCTION_1_0())
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict allocator failed", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict allocator failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end