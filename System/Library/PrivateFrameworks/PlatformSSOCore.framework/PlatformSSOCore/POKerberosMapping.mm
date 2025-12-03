@interface POKerberosMapping
- (POKerberosMapping)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
@end

@implementation POKerberosMapping

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ticketKeyPath = self->_ticketKeyPath;
  v5 = NSStringFromSelector(sel_ticketKeyPath);
  [v3 setObject:ticketKeyPath forKeyedSubscript:v5];

  messageBufferKeyName = self->_messageBufferKeyName;
  v7 = NSStringFromSelector(sel_messageBufferKeyName);
  [v3 setObject:messageBufferKeyName forKeyedSubscript:v7];

  realmKeyName = self->_realmKeyName;
  v9 = NSStringFromSelector(sel_realmKeyName);
  [v3 setObject:realmKeyName forKeyedSubscript:v9];

  serviceNameKeyName = self->_serviceNameKeyName;
  v11 = NSStringFromSelector(sel_serviceNameKeyName);
  [v3 setObject:serviceNameKeyName forKeyedSubscript:v11];

  clientNameKeyName = self->_clientNameKeyName;
  v13 = NSStringFromSelector(sel_clientNameKeyName);
  [v3 setObject:clientNameKeyName forKeyedSubscript:v13];

  encryptionKeyTypeKeyName = self->_encryptionKeyTypeKeyName;
  v15 = NSStringFromSelector(sel_encryptionKeyTypeKeyName);
  [v3 setObject:encryptionKeyTypeKeyName forKeyedSubscript:v15];

  sessionKeyKeyName = self->_sessionKeyKeyName;
  v17 = NSStringFromSelector(sel_sessionKeyKeyName);
  [v3 setObject:sessionKeyKeyName forKeyedSubscript:v17];

  return v3;
}

- (POKerberosMapping)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(POKerberosMapping *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_ticketKeyPath);
    v7 = [dictionaryCopy objectForKeyedSubscript:v6];
    ticketKeyPath = v5->_ticketKeyPath;
    v5->_ticketKeyPath = v7;

    v9 = NSStringFromSelector(sel_messageBufferKeyName);
    v10 = [dictionaryCopy objectForKeyedSubscript:v9];
    messageBufferKeyName = v5->_messageBufferKeyName;
    v5->_messageBufferKeyName = v10;

    v12 = NSStringFromSelector(sel_realmKeyName);
    v13 = [dictionaryCopy objectForKeyedSubscript:v12];
    realmKeyName = v5->_realmKeyName;
    v5->_realmKeyName = v13;

    v15 = NSStringFromSelector(sel_serviceNameKeyName);
    v16 = [dictionaryCopy objectForKeyedSubscript:v15];
    serviceNameKeyName = v5->_serviceNameKeyName;
    v5->_serviceNameKeyName = v16;

    v18 = NSStringFromSelector(sel_clientNameKeyName);
    v19 = [dictionaryCopy objectForKeyedSubscript:v18];
    clientNameKeyName = v5->_clientNameKeyName;
    v5->_clientNameKeyName = v19;

    v21 = NSStringFromSelector(sel_encryptionKeyTypeKeyName);
    v22 = [dictionaryCopy objectForKeyedSubscript:v21];
    encryptionKeyTypeKeyName = v5->_encryptionKeyTypeKeyName;
    v5->_encryptionKeyTypeKeyName = v22;

    v24 = NSStringFromSelector(sel_sessionKeyKeyName);
    v25 = [dictionaryCopy objectForKeyedSubscript:v24];
    sessionKeyKeyName = v5->_sessionKeyKeyName;
    v5->_sessionKeyKeyName = v25;
  }

  return v5;
}

@end