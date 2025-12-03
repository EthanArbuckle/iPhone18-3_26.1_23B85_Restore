@interface WLSourceDeviceHandshakeParser
- (BOOL)parseData:(id)data modifyingSourceDevice:(id)device completion:(id)completion;
- (id)_parseConnectionFailureReasons:(_xmlNode *)reasons;
- (void)_parseDeviceInfoNode:(_xmlNode *)node modifyingSourceDevice:(id)device;
@end

@implementation WLSourceDeviceHandshakeParser

- (BOOL)parseData:(id)data modifyingSourceDevice:(id)device completion:(id)completion
{
  dataCopy = data;
  deviceCopy = device;
  completionCopy = completion;
  Memory = xmlReadMemory([dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0, 0);
  if (!Memory)
  {
    goto LABEL_15;
  }

  v11 = Memory;
  RootElement = xmlDocGetRootElement(Memory);
  if (!RootElement)
  {
    xmlFreeDoc(v11);
LABEL_15:
    v18 = 0;
    goto LABEL_18;
  }

  children = RootElement->children;
  if (children)
  {
    v14 = 0;
    do
    {
      if (children->name)
      {
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:children->name];
        if ([v15 isEqualToString:@"api"])
        {
          Content = xmlNodeGetContent(children);
          if (Content)
          {
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:Content];
            [deviceCopy setApi:v17];
          }
        }

        else if ([v15 isEqualToString:@"device_info"])
        {
          [(WLSourceDeviceHandshakeParser *)self _parseDeviceInfoNode:children modifyingSourceDevice:deviceCopy];
          v14 = 1;
        }
      }

      children = children->next;
    }

    while (children);
  }

  else
  {
    v14 = 0;
  }

  xmlFreeDoc(v11);
  completionCopy[2](completionCopy, v14 & 1);
  v18 = 1;
LABEL_18:

  return v18;
}

- (void)_parseDeviceInfoNode:(_xmlNode *)node modifyingSourceDevice:(id)device
{
  deviceCopy = device;
  for (i = node->children; i; i = i->next)
  {
    name = i->name;
    if (name)
    {
      if (!strcmp(i->name, "port"))
      {
        Content = xmlNodeGetContent(i);
        if (Content)
        {
          [deviceCopy setHttpPort:atoi(Content)];
        }

        continue;
      }

      if (!strcmp(name, "auth_port"))
      {
        v10 = xmlNodeGetContent(i);
        if (v10)
        {
          [deviceCopy setSocketPort:atoi(v10)];
        }

        continue;
      }

      if (!strcmp(name, "name"))
      {
        v11 = xmlNodeGetContent(i);
        if (v11)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
          [deviceCopy setName:v8];
LABEL_47:
        }
      }

      else if (!strcmp(name, "device_id"))
      {
        v12 = xmlNodeGetContent(i);
        if (v12)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
          [deviceCopy setPersistentIdentifier:v8];
          goto LABEL_47;
        }
      }

      else if (!strcmp(name, "os_api_version"))
      {
        v13 = xmlNodeGetContent(i);
        if (v13)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
          [deviceCopy setOsAPIVersion:v8];
          goto LABEL_47;
        }
      }

      else if (!strcmp(name, "hardware_brand"))
      {
        v14 = xmlNodeGetContent(i);
        if (v14)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
          [deviceCopy setHardwareBrand:v8];
          goto LABEL_47;
        }
      }

      else if (!strcmp(name, "hardware_model"))
      {
        v15 = xmlNodeGetContent(i);
        if (v15)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
          [deviceCopy setHardwareModel:v8];
          goto LABEL_47;
        }
      }

      else if (!strcmp(name, "hardware_design"))
      {
        v16 = xmlNodeGetContent(i);
        if (v16)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
          [deviceCopy setHardwareDesign:v8];
          goto LABEL_47;
        }
      }

      else if (!strcmp(name, "hardware_maker"))
      {
        v17 = xmlNodeGetContent(i);
        if (v17)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
          [deviceCopy setHardwareMaker:v8];
          goto LABEL_47;
        }
      }

      else
      {
        if (strcmp(name, "hardware_product"))
        {
          if (!strcmp(name, "supports_file_length"))
          {
            [deviceCopy setSupportsFileLength:1];
            continue;
          }

          if (!strcmp(name, "can_add"))
          {
            v19 = xmlNodeGetContent(i);
            if (!v19)
            {
              continue;
            }

            v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19];
            if ([v8 isEqualToString:@"display"])
            {
              [deviceCopy setCanAddDisplay:1];
            }

            else if ([v8 isEqualToString:@"accessibility"])
            {
              [deviceCopy setCanAddAccessibility:1];
            }

            else if ([v8 isEqualToString:@"files"])
            {
              [deviceCopy setCanAddFiles:1];
            }
          }

          else if (!strcmp(name, "client_version"))
          {
            v20 = xmlNodeGetContent(i);
            if (!v20)
            {
              continue;
            }

            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
            [deviceCopy setClientVersion:v8];
          }

          else
          {
            if (!strcmp(name, "is_selecting_data_type_in_handshake"))
            {
              v21 = xmlNodeGetContent(i);
              if (v21)
              {
                v22 = [MEMORY[0x277CCABB0] numberWithChar:*v21];
                bOOLValue = [v22 BOOLValue];

                [deviceCopy setIsSelectingDataTypeInHandshake:bOOLValue];
              }

              continue;
            }

            if (!strcmp(name, "upgrade"))
            {
              v23 = xmlNodeGetContent(i);
              if (v23)
              {
                v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v23];
                lowercaseString = [v40 lowercaseString];
                v38 = [lowercaseString isEqualToString:@"api/2.0"];

                if (v38)
                {
                  [deviceCopy setUseMigrationKit:1];
                }
              }

              continue;
            }

            if (!strcmp(name, "api_level"))
            {
              v25 = xmlNodeGetContent(i);
              if (!v25)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
              [deviceCopy setApiLevel:v8];
            }

            else if (!strcmp(name, "brand"))
            {
              v26 = xmlNodeGetContent(i);
              if (!v26)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
              [deviceCopy setBrand:v8];
            }

            else if (!strcmp(name, "locale"))
            {
              v27 = xmlNodeGetContent(i);
              if (!v27)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
              [deviceCopy setLocale:v8];
            }

            else if (!strcmp(name, "model"))
            {
              v28 = xmlNodeGetContent(i);
              if (!v28)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
              [deviceCopy setModel:v8];
            }

            else if (!strcmp(name, "os_version"))
            {
              v29 = xmlNodeGetContent(i);
              if (!v29)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v29];
              [deviceCopy setOsVersion:v8];
            }

            else if (!strcmp(name, "version"))
            {
              v30 = xmlNodeGetContent(i);
              if (!v30)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
              [deviceCopy setVersion:v8];
            }

            else
            {
              if (strcmp(name, "version_code"))
              {
                continue;
              }

              v7 = xmlNodeGetContent(i);
              if (!v7)
              {
                continue;
              }

              v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
              [deviceCopy setVersionCode:v8];
            }
          }

          goto LABEL_47;
        }

        v18 = xmlNodeGetContent(i);
        if (v18)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
          [deviceCopy setHardwareProduct:v8];
          goto LABEL_47;
        }
      }
    }
  }

  persistentIdentifier = [deviceCopy persistentIdentifier];
  v32 = [persistentIdentifier length];

  if (!v32)
  {
    if ([MEMORY[0x277D7B890] isInternal])
    {
      v33 = MEMORY[0x277CCACA8];
      ipAddress = [deviceCopy ipAddress];
      name = [deviceCopy name];
      v36 = [v33 stringWithFormat:@"%@.%@", ipAddress, name];
      [deviceCopy setPersistentIdentifier:v36];
    }

    else
    {
      ipAddress = [MEMORY[0x277CCAD78] UUID];
      name = [ipAddress UUIDString];
      [deviceCopy setPersistentIdentifier:name];
    }

    persistentIdentifier2 = [deviceCopy persistentIdentifier];
    _WLLog();
  }
}

- (id)_parseConnectionFailureReasons:(_xmlNode *)reasons
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = reasons->children; i; i = i->next)
  {
    name = i->name;
    if (name)
    {
      if (!strcmp(name, "reason"))
      {
        Content = xmlNodeGetContent(i);
        if (Content)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
          [v4 addObject:v8];
        }
      }
    }
  }

  if ([v4 count])
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

@end