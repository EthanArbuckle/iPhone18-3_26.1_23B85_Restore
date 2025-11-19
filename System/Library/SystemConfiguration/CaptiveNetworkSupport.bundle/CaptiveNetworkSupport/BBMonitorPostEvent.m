@interface BBMonitorPostEvent
@end

@implementation BBMonitorPostEvent

xpc_object_t ___BBMonitorPostEvent_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "result", *(a1 + 40));
  xpc_dictionary_set_uint64(v2, "duration", *(a1 + 32));
  return v2;
}

@end