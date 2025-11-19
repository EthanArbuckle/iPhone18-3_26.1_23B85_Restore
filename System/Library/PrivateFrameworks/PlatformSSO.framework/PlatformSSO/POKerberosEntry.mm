@interface POKerberosEntry
- (BOOL)hasAllRequiredValues;
- (POKerberosEntry)initWithData:(id)a3;
- (id)dataRepresentation;
- (id)dictionaryRepresentation;
@end

@implementation POKerberosEntry

- (BOOL)hasAllRequiredValues
{
  v3 = [(POKerberosEntry *)self ticketKeyPath];
  if ([v3 length])
  {
    v4 = [(POKerberosEntry *)self messageBuffer];
    if ([v4 length])
    {
      v5 = [(POKerberosEntry *)self realm];
      if ([v5 length])
      {
        v6 = [(POKerberosEntry *)self serviceName];
        if ([v6 length])
        {
          v7 = [(POKerberosEntry *)self clientName];
          if ([v7 length] && -[POKerberosEntry encryptionKeyType](self, "encryptionKeyType") >= 1)
          {
            v8 = [(POKerberosEntry *)self sessionKey];
            v9 = [v8 length] != 0;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ticketKeyPath = self->_ticketKeyPath;
  v5 = NSStringFromSelector(sel_ticketKeyPath);
  [v3 setObject:ticketKeyPath forKeyedSubscript:v5];

  v6 = [(NSData *)self->_messageBuffer base64EncodedStringWithOptions:0];
  v7 = NSStringFromSelector(sel_messageBuffer);
  [v3 setObject:v6 forKeyedSubscript:v7];

  realm = self->_realm;
  v9 = NSStringFromSelector(sel_realm);
  [v3 setObject:realm forKeyedSubscript:v9];

  serviceName = self->_serviceName;
  v11 = NSStringFromSelector(sel_serviceName);
  [v3 setObject:serviceName forKeyedSubscript:v11];

  clientName = self->_clientName;
  v13 = NSStringFromSelector(sel_clientName);
  [v3 setObject:clientName forKeyedSubscript:v13];

  encryptionKeyType = self->_encryptionKeyType;
  if (encryptionKeyType)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_encryptionKeyType];
  }

  else
  {
    v15 = &unk_28708C390;
  }

  v16 = NSStringFromSelector(sel_encryptionKeyType);
  [v3 setObject:v15 forKeyedSubscript:v16];

  if (encryptionKeyType)
  {
  }

  v17 = [(NSData *)self->_sessionKey base64EncodedStringWithOptions:0];
  v18 = NSStringFromSelector(sel_sessionKey);
  [v3 setObject:v17 forKeyedSubscript:v18];

  v19 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v19 setFormatOptions:1907];
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [v19 stringFromDate:v20];
  [v3 setObject:v21 forKeyedSubscript:@"created"];

  return v3;
}

- (id)dataRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(POKerberosEntry *)self dictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:11 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = __37__POKerberosEntry_dataRepresentation__block_invoke();
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

id __37__POKerberosEntry_dataRepresentation__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to serialize kerberos entry."];
  v1 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (POKerberosEntry)initWithData:(id)a3
{
  v4 = a3;
  v5 = [(POKerberosEntry *)self init];
  if (!v5)
  {
LABEL_11:
    v10 = v5;
    goto LABEL_12;
  }

  v42 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:16 error:&v42];
  v7 = v42;
  if (!v7)
  {
    v11 = NSStringFromSelector(sel_ticketKeyPath);
    v12 = [v6 objectForKeyedSubscript:v11];
    ticketKeyPath = v5->_ticketKeyPath;
    v5->_ticketKeyPath = v12;

    v14 = NSStringFromSelector(sel_messageBuffer);
    v15 = [v6 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CBEA90]);
      v17 = NSStringFromSelector(sel_messageBuffer);
      v18 = [v6 objectForKeyedSubscript:v17];
      v19 = [v16 initWithBase64EncodedString:v18 options:0];
      messageBuffer = v5->_messageBuffer;
      v5->_messageBuffer = v19;
    }

    v21 = NSStringFromSelector(sel_realm);
    v22 = [v6 objectForKeyedSubscript:v21];
    realm = v5->_realm;
    v5->_realm = v22;

    v24 = NSStringFromSelector(sel_serviceName);
    v25 = [v6 objectForKeyedSubscript:v24];
    serviceName = v5->_serviceName;
    v5->_serviceName = v25;

    v27 = NSStringFromSelector(sel_clientName);
    v28 = [v6 objectForKeyedSubscript:v27];
    clientName = v5->_clientName;
    v5->_clientName = v28;

    v30 = NSStringFromSelector(sel_encryptionKeyType);
    v31 = [v6 objectForKeyedSubscript:v30];

    if (v31)
    {
      v5->_encryptionKeyType = [v31 intValue];
    }

    v32 = NSStringFromSelector(sel_sessionKey);
    v33 = [v6 objectForKeyedSubscript:v32];

    if (v33)
    {
      v34 = objc_alloc(MEMORY[0x277CBEA90]);
      v35 = NSStringFromSelector(sel_sessionKey);
      v36 = [v6 objectForKeyedSubscript:v35];
      v37 = [v34 initWithBase64EncodedString:v36 options:0];
      sessionKey = v5->_sessionKey;
      v5->_sessionKey = v37;
    }

    goto LABEL_11;
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __32__POKerberosEntry_initWithData___block_invoke;
  v40[3] = &unk_279A3A088;
  v41 = v7;
  v8 = v7;
  v9 = __32__POKerberosEntry_initWithData___block_invoke(v40);

  v10 = 0;
LABEL_12:

  return v10;
}

id __32__POKerberosEntry_initWithData___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to deserialize kerberos entry."];
  v2 = PO_LOG_POKerberosHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

@end