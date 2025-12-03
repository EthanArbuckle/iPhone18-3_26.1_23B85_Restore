@interface _RWIDriverInterfaceInfo
- (_RWIDriverInterfaceInfo)initWithConfiguration:(id)configuration connection:(id)connection;
- (id)dictionaryRepresentation;
- (void)updateDriverState:(id)state;
@end

@implementation _RWIDriverInterfaceInfo

- (_RWIDriverInterfaceInfo)initWithConfiguration:(id)configuration connection:(id)connection
{
  configurationCopy = configuration;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = _RWIDriverInterfaceInfo;
  v8 = [(_RWIDriverInterfaceInfo *)&v15 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_connection, connection);
    v11 = +[RWIDriverState inactive];
    state = v8->_state;
    v8->_state = v11;

    v13 = v8;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(RWIDriverConfiguration *)self->_configuration encodeToPayload:dictionary];
  [(RWIDriverState *)self->_state encodeToPayload:dictionary];

  return dictionary;
}

- (void)updateDriverState:(id)state
{
  stateCopy = state;
  state = self->_state;
  p_state = &self->_state;
  if (state != stateCopy)
  {
    v8 = stateCopy;
    objc_storeStrong(p_state, state);
    stateCopy = v8;
  }
}

@end