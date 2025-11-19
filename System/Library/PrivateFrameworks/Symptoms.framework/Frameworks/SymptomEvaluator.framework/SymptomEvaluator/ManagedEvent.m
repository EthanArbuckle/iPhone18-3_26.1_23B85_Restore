@interface ManagedEvent
- (ManagedEvent)initWithId:(unint64_t)a3 details:(id)a4;
- (void)serializeToXPCObject:(id)a3;
@end

@implementation ManagedEvent

- (ManagedEvent)initWithId:(unint64_t)a3 details:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ManagedEvent;
  v8 = [(ManagedEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_id_number = a3;
    objc_storeStrong(&v8->_details, a4);
  }

  return v9;
}

- (void)serializeToXPCObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412290;
    v15 = self;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "serializeToXPCObject: %@", &v14, 0xCu);
  }

  xpc_dictionary_set_uint64(v4, managed_event_key_seqno, self->_id_number);
  v6 = managed_event_key_timestamp;
  v7 = [(DecisionDetails *)self->_details timestamp];
  [v7 timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v4, v6, v8);

  xpc_dictionary_set_uint64(v4, managed_event_key_reason_code, [(DecisionDetails *)self->_details reasonCode]);
  if ([(DecisionDetails *)self->_details reason])
  {
    xpc_dictionary_set_string(v4, managed_event_key_reason_string, [(DecisionDetails *)self->_details reason]);
  }

  v9 = [(DecisionDetails *)self->_details additionalInfo];

  if (v9)
  {
    v10 = managed_event_key_additional_info;
    v11 = [(DecisionDetails *)self->_details additionalInfo];
    v12 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_dictionary_set_value(v4, v10, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end