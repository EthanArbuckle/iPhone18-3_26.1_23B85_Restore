@interface _RWIDriverInterfaceInfo
- (_RWIDriverInterfaceInfo)initWithConfiguration:(id)a3 connection:(id)a4;
- (id)dictionaryRepresentation;
- (void)updateDriverState:(id)a3;
@end

@implementation _RWIDriverInterfaceInfo

- (_RWIDriverInterfaceInfo)initWithConfiguration:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _RWIDriverInterfaceInfo;
  v8 = [(_RWIDriverInterfaceInfo *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    objc_storeStrong(&v8->_connection, a4);
    v11 = +[RWIDriverState inactive];
    state = v8->_state;
    v8->_state = v11;

    v13 = v8;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(RWIDriverConfiguration *)self->_configuration encodeToPayload:v3];
  [(RWIDriverState *)self->_state encodeToPayload:v3];

  return v3;
}

- (void)updateDriverState:(id)a3
{
  v5 = a3;
  state = self->_state;
  p_state = &self->_state;
  if (state != v5)
  {
    v8 = v5;
    objc_storeStrong(p_state, a3);
    v5 = v8;
  }
}

@end