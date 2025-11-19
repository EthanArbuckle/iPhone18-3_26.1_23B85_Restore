@interface RemoteDeviceQuery
+ (id)wildcard;
- (BOOL)matches:(id)a3 forMessage:(id)a4 log:(id)a5;
- (RemoteDeviceQuery)init;
- (id)description;
- (void)dealloc;
- (void)setAvailableService:(const char *)a3;
- (void)setName:(const char *)a3;
- (void)setUuid:(const char *)a3;
@end

@implementation RemoteDeviceQuery

- (RemoteDeviceQuery)init
{
  v3.receiver = self;
  v3.super_class = RemoteDeviceQuery;
  result = [(RemoteDeviceQuery *)&v3 init];
  if (result)
  {
    result->_type = 0xFFFF;
    result->_uuid = 0;
    result->_availableService = 0;
    result->_name = 0;
  }

  return result;
}

- (void)setName:(const char *)a3
{
  free(self->_name);
  self->_name = 0;
  if (a3)
  {
    self->_name = strdup(a3);
  }
}

- (void)setUuid:(const char *)a3
{
  free(self->_uuid);
  self->_uuid = 0;
  if (a3)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    self->_uuid = v5;

    uuid_copy(v5, a3);
  }
}

- (void)setAvailableService:(const char *)a3
{
  free(self->_availableService);
  self->_availableService = 0;
  if (a3)
  {
    self->_availableService = strdup(a3);
  }
}

- (void)dealloc
{
  name = self->_name;
  if (name)
  {
    free(name);
  }

  uuid = self->_uuid;
  if (uuid)
  {
    free(uuid);
  }

  availableService = self->_availableService;
  if (availableService)
  {
    free(availableService);
  }

  v6.receiver = self;
  v6.super_class = RemoteDeviceQuery;
  [(RemoteDeviceQuery *)&v6 dealloc];
}

- (id)description
{
  v13 = *MEMORY[0x277D85DE8];
  memset(out, 0, 37);
  if ([(RemoteDeviceQuery *)self uuid])
  {
    uuid_unparse([(RemoteDeviceQuery *)self uuid], out);
  }

  v3 = MEMORY[0x277CCACA8];
  if ([(RemoteDeviceQuery *)self name])
  {
    v4 = [(RemoteDeviceQuery *)self name];
  }

  else
  {
    v4 = "any";
  }

  if ([(RemoteDeviceQuery *)self type])
  {
    description = remote_device_type_get_description([(RemoteDeviceQuery *)self type]);
  }

  else
  {
    description = "any";
  }

  v6 = [(RemoteDeviceQuery *)self uuid];
  if ([(RemoteDeviceQuery *)self availableService])
  {
    v7 = [(RemoteDeviceQuery *)self availableService];
  }

  else
  {
    v7 = "any";
  }

  v8 = out;
  if (!v6)
  {
    v8 = "any";
  }

  v9 = [v3 stringWithFormat:@"(name~='%s', type='%s', uuid='%s', '%s' in services)", v4, description, v8, v7];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)matches:(id)a3 forMessage:(id)a4 log:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([(RemoteDeviceQuery *)self type])
  {
    if ([(RemoteDeviceQuery *)self type]!= 0xFFFF)
    {
      v9 = [(RemoteDeviceQuery *)self type];
      if (v9 != [v7 type])
      {
        goto LABEL_40;
      }
    }
  }

  if (-[RemoteDeviceQuery availableService](self, "availableService") && ![v7 hasServiceWithName:-[RemoteDeviceQuery availableService](self peerMessage:{"availableService"), v8}])
  {
    goto LABEL_40;
  }

  if ([(RemoteDeviceQuery *)self name]&& *[(RemoteDeviceQuery *)self name])
  {
    v10 = [(RemoteDeviceQuery *)self name];
    v11 = v7;
    if ((![v11 device_name] || strcmp(objc_msgSend(v11, "device_name"), v10)) && (!objc_msgSend(v11, "device_alias") || strcmp(objc_msgSend(v11, "device_alias"), v10)))
    {
      v12 = [v11 copyProperty:"HWModel" allowSensitive:1];
      v13 = v12;
      v14 = MEMORY[0x277D864C0];
      if (!v12 || MEMORY[0x2318E96F0](v12) != v14 || (v24 = xpc_string_get_string_ptr(v13), !strcasestr(v24, v10)))
      {
        v15 = [v11 copyProperty:"ProductType" allowSensitive:1];
        v16 = v15;
        if (!v15 || MEMORY[0x2318E96F0](v15) != v14 || (v25 = xpc_string_get_string_ptr(v16), !strcasestr(v25, v10)))
        {
          v17 = [v11 copyProperty:"UniqueDeviceID" allowSensitive:1];
          v18 = v17;
          if (!v17 || MEMORY[0x2318E96F0](v17) != v14 || (v26 = xpc_string_get_string_ptr(v18), !strcasestr(v26, v10)))
          {
            v19 = [v11 copyProperty:"SerialNumber" allowSensitive:1];
            v20 = v19;
            if (!v19 || MEMORY[0x2318E96F0](v19) != v14 || (string_ptr = xpc_string_get_string_ptr(v20), !strcasestr(string_ptr, v10)))
            {
              v21 = [v11 copyProperty:"LocationID" allowSensitive:1];
              v22 = v21;
              if (!v21 || MEMORY[0x2318E96F0](v21) != MEMORY[0x277D864C8] || (v23 = strtoull(v10, 0, 0), v23 != xpc_uint64_get_value(v22)))
              {

                goto LABEL_40;
              }
            }
          }
        }
      }
    }
  }

  if (!-[RemoteDeviceQuery uuid](self, "uuid") || [v7 uuid] && !uuid_compare(-[RemoteDeviceQuery uuid](self, "uuid"), objc_msgSend(v7, "uuid")))
  {
    v28 = 1;
    goto LABEL_42;
  }

LABEL_40:
  v28 = 0;
LABEL_42:

  return v28;
}

+ (id)wildcard
{
  v2 = objc_alloc_init(RemoteDeviceQuery);

  return v2;
}

@end