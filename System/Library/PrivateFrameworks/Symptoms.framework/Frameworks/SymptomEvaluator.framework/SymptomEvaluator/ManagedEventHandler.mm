@interface ManagedEventHandler
+ (id)getHandlerByName:(id)name;
+ (void)initialize;
- (ManagedEventHandler)initWithName:(id)name;
- (id)feedbackForEventId:(unint64_t)id;
- (void)didReceiveSyndrome:(id)syndrome;
- (void)populateReply:(id)reply ForId:(unint64_t)id Count:(unint64_t)count;
- (void)sendNotificationWithId:(unint64_t)id;
@end

@implementation ManagedEventHandler

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = managedEventHandlers;
  managedEventHandlers = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

+ (id)getHandlerByName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = [managedEventHandlers objectForKey:nameCopy];
  if (v4)
  {
    v5 = v4;
    v6 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v6;
      v8 = [nameCopy description];
      v14 = 134218242;
      v15 = v5;
      v16 = 2080;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "EvaluatorForSymptom: found handler at %p for name %s\n", &v14, 0x16u);
    }
  }

  else
  {
    v5 = [[ManagedEventHandler alloc] initWithName:nameCopy];
    v9 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = [nameCopy description];
      v14 = 134218242;
      v15 = v5;
      v16 = 2080;
      uTF8String = [v11 UTF8String];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "EvaluatorForSymptom: created new handler at %p for name %s\n", &v14, 0x16u);
    }

    if (v5)
    {
      [managedEventHandlers setObject:v5 forKey:nameCopy];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (ManagedEventHandler)initWithName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ManagedEventHandler;
  v5 = [(ManagedEventHandler *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    managedEvents = v5->_managedEvents;
    v5->_managedEvents = v6;

    v5->_NotifyToken = 0;
    v8 = [ManagedEventHandlerNotificationPrefix stringByAppendingString:nameCopy];
    uTF8String = [v8 UTF8String];
    if (!uTF8String)
    {
      [ManagedEventHandler initWithName:?];
    }

    v10 = strdup(uTF8String);
    if (!v10)
    {
      [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
    }

    v5->_notifyString = v10;

    uTF8String2 = [nameCopy UTF8String];
    if (!uTF8String2)
    {
      [ManagedEventHandler initWithName:?];
    }

    v12 = strdup(uTF8String2);
    if (!v12)
    {
      [EventDescription initWithType:? length:? data:? fromPid:? named:? bundleId:?];
    }

    v5->_transportMessageString = v12;
    notify_register_check(v5->_notifyString, &v5->_NotifyToken);
  }

  return v5;
}

- (void)didReceiveSyndrome:(id)syndrome
{
  v17 = *MEMORY[0x277D85DE8];
  syndromeCopy = syndrome;
  v5 = [ManagedEventTransport obtainEventId:self];
  v6 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Managed Event Handler, used event id %lld", &v13, 0xCu);
  }

  v7 = [[ManagedEvent alloc] initWithId:v5 details:syndromeCopy];

  [(NSMutableArray *)self->_managedEvents addObject:v7];
  if ([(NSMutableArray *)self->_managedEvents count]>= 6)
  {
    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Trim managed event array", &v13, 2u);
    }

    v9 = [(NSMutableArray *)self->_managedEvents objectAtIndex:0];

    [ManagedEventTransport retireEventId:[(ManagedEvent *)v9 id_number]];
    [(NSMutableArray *)self->_managedEvents removeObjectAtIndex:0];
    v7 = v9;
  }

  v10 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
  {
    notifyString = self->_notifyString;
    v13 = 136315394;
    v14 = notifyString;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Notify to %s with token %lld", &v13, 0x16u);
  }

  notify_set_state(self->_NotifyToken, v5);
  notify_post(self->_notifyString);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendNotificationWithId:(unint64_t)id
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_INFO))
  {
    notifyString = self->_notifyString;
    v8 = 136315394;
    v9 = notifyString;
    v10 = 2048;
    idCopy = id;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Forced notify to %s with token %lld", &v8, 0x16u);
  }

  notify_set_state(self->_NotifyToken, id);
  notify_post(self->_notifyString);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)populateReply:(id)reply ForId:(unint64_t)id Count:(unint64_t)count
{
  v29 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v9 = xpc_array_create(0, 0);
  v10 = v9;
  if (v9)
  {
    xarray = v9;
    xdict = replyCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_managedEvents reverseObjectEnumerator];
    v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      selfCopy = self;
      v14 = 0;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([v17 id_number] <= id)
          {
            v18 = xpc_dictionary_create(0, 0, 0);
            if (v18)
            {
              [v17 serializeToXPCObject:v18];
              xpc_dictionary_set_string(v18, managed_event_key_event_type, selfCopy->_transportMessageString);
              xpc_array_append_value(xarray, v18);
            }

            ++v14;

            if (v14 >= count)
            {

              goto LABEL_17;
            }
          }
        }

        v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_17:

    v10 = xarray;
    if (xpc_array_get_count(xarray) == v14)
    {
      replyCopy = xdict;
      xpc_dictionary_set_value(xdict, managed_event_key_event_data, xarray);
      v19 = 0;
    }

    else
    {
      v19 = 12;
      replyCopy = xdict;
    }
  }

  else
  {
    v19 = 12;
  }

  xpc_dictionary_set_uint64(replyCopy, managed_event_key_error, v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (id)feedbackForEventId:(unint64_t)id
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_managedEvents reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 id_number] == id)
        {
          details = [v9 details];
          evaluations = [details evaluations];

          goto LABEL_11;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  evaluations = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return evaluations;
}

- (void)initWithName:(char *)a1 .cold.2(char **a1)
{
  if (OUTLINED_FUNCTION_1_0())
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict_strdup called with NULL string", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict_strdup called with NULL string");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end