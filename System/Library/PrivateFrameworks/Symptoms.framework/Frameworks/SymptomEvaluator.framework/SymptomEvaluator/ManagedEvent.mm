@interface ManagedEvent
- (ManagedEvent)initWithId:(unint64_t)id details:(id)details;
- (void)serializeToXPCObject:(id)object;
@end

@implementation ManagedEvent

- (ManagedEvent)initWithId:(unint64_t)id details:(id)details
{
  detailsCopy = details;
  v11.receiver = self;
  v11.super_class = ManagedEvent;
  v8 = [(ManagedEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_id_number = id;
    objc_storeStrong(&v8->_details, details);
  }

  return v9;
}

- (void)serializeToXPCObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "serializeToXPCObject: %@", &v14, 0xCu);
  }

  xpc_dictionary_set_uint64(objectCopy, managed_event_key_seqno, self->_id_number);
  v6 = managed_event_key_timestamp;
  timestamp = [(DecisionDetails *)self->_details timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(objectCopy, v6, v8);

  xpc_dictionary_set_uint64(objectCopy, managed_event_key_reason_code, [(DecisionDetails *)self->_details reasonCode]);
  if ([(DecisionDetails *)self->_details reason])
  {
    xpc_dictionary_set_string(objectCopy, managed_event_key_reason_string, [(DecisionDetails *)self->_details reason]);
  }

  additionalInfo = [(DecisionDetails *)self->_details additionalInfo];

  if (additionalInfo)
  {
    v10 = managed_event_key_additional_info;
    additionalInfo2 = [(DecisionDetails *)self->_details additionalInfo];
    v12 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_dictionary_set_value(objectCopy, v10, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end