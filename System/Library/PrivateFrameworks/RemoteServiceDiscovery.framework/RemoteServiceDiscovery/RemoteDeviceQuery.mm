@interface RemoteDeviceQuery
+ (id)wildcard;
- (BOOL)matches:(id)matches forMessage:(id)message log:(id)log;
- (RemoteDeviceQuery)init;
- (id)description;
- (void)dealloc;
- (void)setAvailableService:(const char *)service;
- (void)setName:(const char *)name;
- (void)setUuid:(const char *)uuid;
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

- (void)setName:(const char *)name
{
  free(self->_name);
  self->_name = 0;
  if (name)
  {
    self->_name = strdup(name);
  }
}

- (void)setUuid:(const char *)uuid
{
  free(self->_uuid);
  self->_uuid = 0;
  if (uuid)
  {
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    self->_uuid = v5;

    uuid_copy(v5, uuid);
  }
}

- (void)setAvailableService:(const char *)service
{
  free(self->_availableService);
  self->_availableService = 0;
  if (service)
  {
    self->_availableService = strdup(service);
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
    name = [(RemoteDeviceQuery *)self name];
  }

  else
  {
    name = "any";
  }

  if ([(RemoteDeviceQuery *)self type])
  {
    description = remote_device_type_get_description([(RemoteDeviceQuery *)self type]);
  }

  else
  {
    description = "any";
  }

  uuid = [(RemoteDeviceQuery *)self uuid];
  if ([(RemoteDeviceQuery *)self availableService])
  {
    availableService = [(RemoteDeviceQuery *)self availableService];
  }

  else
  {
    availableService = "any";
  }

  v8 = out;
  if (!uuid)
  {
    v8 = "any";
  }

  v9 = [v3 stringWithFormat:@"(name~='%s', type='%s', uuid='%s', '%s' in services)", name, description, v8, availableService];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)matches:(id)matches forMessage:(id)message log:(id)log
{
  matchesCopy = matches;
  messageCopy = message;
  if ([(RemoteDeviceQuery *)self type])
  {
    if ([(RemoteDeviceQuery *)self type]!= 0xFFFF)
    {
      type = [(RemoteDeviceQuery *)self type];
      if (type != [matchesCopy type])
      {
        goto LABEL_40;
      }
    }
  }

  if (-[RemoteDeviceQuery availableService](self, "availableService") && ![matchesCopy hasServiceWithName:-[RemoteDeviceQuery availableService](self peerMessage:{"availableService"), messageCopy}])
  {
    goto LABEL_40;
  }

  if ([(RemoteDeviceQuery *)self name]&& *[(RemoteDeviceQuery *)self name])
  {
    name = [(RemoteDeviceQuery *)self name];
    v11 = matchesCopy;
    if ((![v11 device_name] || strcmp(objc_msgSend(v11, "device_name"), name)) && (!objc_msgSend(v11, "device_alias") || strcmp(objc_msgSend(v11, "device_alias"), name)))
    {
      v12 = [v11 copyProperty:"HWModel" allowSensitive:1];
      v13 = v12;
      v14 = MEMORY[0x277D864C0];
      if (!v12 || MEMORY[0x2318E96F0](v12) != v14 || (v24 = xpc_string_get_string_ptr(v13), !strcasestr(v24, name)))
      {
        v15 = [v11 copyProperty:"ProductType" allowSensitive:1];
        v16 = v15;
        if (!v15 || MEMORY[0x2318E96F0](v15) != v14 || (v25 = xpc_string_get_string_ptr(v16), !strcasestr(v25, name)))
        {
          v17 = [v11 copyProperty:"UniqueDeviceID" allowSensitive:1];
          v18 = v17;
          if (!v17 || MEMORY[0x2318E96F0](v17) != v14 || (v26 = xpc_string_get_string_ptr(v18), !strcasestr(v26, name)))
          {
            v19 = [v11 copyProperty:"SerialNumber" allowSensitive:1];
            v20 = v19;
            if (!v19 || MEMORY[0x2318E96F0](v19) != v14 || (string_ptr = xpc_string_get_string_ptr(v20), !strcasestr(string_ptr, name)))
            {
              v21 = [v11 copyProperty:"LocationID" allowSensitive:1];
              v22 = v21;
              if (!v21 || MEMORY[0x2318E96F0](v21) != MEMORY[0x277D864C8] || (v23 = strtoull(name, 0, 0), v23 != xpc_uint64_get_value(v22)))
              {

                goto LABEL_40;
              }
            }
          }
        }
      }
    }
  }

  if (!-[RemoteDeviceQuery uuid](self, "uuid") || [matchesCopy uuid] && !uuid_compare(-[RemoteDeviceQuery uuid](self, "uuid"), objc_msgSend(matchesCopy, "uuid")))
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