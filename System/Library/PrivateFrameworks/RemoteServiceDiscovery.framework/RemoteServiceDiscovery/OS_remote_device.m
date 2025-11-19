@interface OS_remote_device
- (BOOL)hasServiceWithName:(const char *)a3 peerMessage:(id)a4;
- (OS_remote_device)init;
- (void)dealloc;
- (void)setUuid:(char *)a3;
@end

@implementation OS_remote_device

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  free(self->_uuid);
  free(self->device_name);
  free(self->device_alias);
  v4.receiver = self;
  v4.super_class = OS_remote_device;
  [(OS_remote_device *)&v4 dealloc];
}

- (void)setUuid:(char *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  if (a3)
  {
    if (!uuid)
    {
      uuid = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      self->_uuid = uuid;
      if (!uuid)
      {
        [(OS_remote_device *)&v8 setUuid:v9];
      }
    }

    v6 = *MEMORY[0x277D85DE8];

    uuid_copy(uuid, a3);
  }

  else
  {
    free(uuid);
    self->_uuid = 0;
    v7 = *MEMORY[0x277D85DE8];
  }
}

- (OS_remote_device)init
{
  v6.receiver = self;
  v6.super_class = OS_remote_device;
  v2 = [(OS_remote_device *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("remote_device_t", 0);
    dq = v2->_dq;
    v2->_dq = v3;

    v2->_state = 1;
  }

  return v2;
}

- (BOOL)hasServiceWithName:(const char *)a3 peerMessage:(id)a4
{
  if (remote_device_get_state(self) != 2)
  {
    v9 = rsd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [OS_remote_device(RemoteDeviceCommon) hasServiceWithName:? peerMessage:?];
    }

    return 0;
  }

  v6 = remote_device_copy_service_names(self);
  if (!xpc_array_get_count(v6))
  {
LABEL_6:

    return 0;
  }

  v7 = 0;
  while (1)
  {
    string = xpc_array_get_string(v6, v7);
    if (!strcmp(a3, string))
    {
      break;
    }

    if (++v7 >= xpc_array_get_count(v6))
    {
      goto LABEL_6;
    }
  }

  return 1;
}

- (void)setUuid:(void *)a1 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

@end