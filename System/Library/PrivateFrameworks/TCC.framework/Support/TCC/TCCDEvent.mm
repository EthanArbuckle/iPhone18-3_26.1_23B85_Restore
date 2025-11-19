@interface TCCDEvent
- (OS_xpc_object)xpcObject;
- (TCCDEvent)initWithEventType:(unint64_t)a3 accessRecord:(id)a4;
- (TCCDEvent)initWithEventType:(unint64_t)a3 service:(id)a4 subjectIdentifierType:(unint64_t)a5 subjectIdentifier:(id)a6 authValue:(unint64_t)a7;
- (id)description;
@end

@implementation TCCDEvent

- (TCCDEvent)initWithEventType:(unint64_t)a3 service:(id)a4 subjectIdentifierType:(unint64_t)a5 subjectIdentifier:(id)a6 authValue:(unint64_t)a7
{
  v13 = a4;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = TCCDEvent;
  v15 = [(TCCDEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = a3;
    objc_storeStrong(&v15->_service, a4);
    v16->_subjectIdentifierType = a5;
    v17 = [v14 copy];
    subjectIdentifier = v16->_subjectIdentifier;
    v16->_subjectIdentifier = v17;

    v16->_authValue = a7;
  }

  return v16;
}

- (TCCDEvent)initWithEventType:(unint64_t)a3 accessRecord:(id)a4
{
  v6 = a4;
  v7 = [v6 subjectIdentity];
  v8 = [v6 accessObject];
  v9 = [v8 serviceObject];
  v10 = [v7 identifierAuthority];
  v11 = [v7 identifier];
  v12 = [v6 authorizationValue];

  v13 = [(TCCDEvent *)self initWithEventType:a3 service:v9 subjectIdentifierType:v10 subjectIdentifier:v11 authValue:v12];
  return v13;
}

- (OS_xpc_object)xpcObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "event_type", self->_eventType);
  v4 = [(TCCDService *)self->_service name];
  xpc_dictionary_set_string(v3, "service", [v4 UTF8String]);

  xpc_dictionary_set_uint64(v3, "TCCD_MSG_IDENTITY_TYPE_KEY", self->_subjectIdentifierType);
  xpc_dictionary_set_string(v3, "TCCD_MSG_IDENTITY_ID_KEY", [(NSString *)self->_subjectIdentifier UTF8String]);
  xpc_dictionary_set_uint64(v3, "auth_value", self->_authValue);

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = self->_eventType - 1;
  if (v4 > 2)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1000A6360[v4];
  }

  v6 = [(TCCDService *)self->_service name];
  v7 = v6;
  v8 = self->_subjectIdentifierType - 1;
  if (v8 > 3)
  {
    v9 = "Bundle ID";
  }

  else
  {
    v9 = off_1000A6378[v8];
  }

  v10 = [NSString stringWithFormat:@"<%@: type=%s, service=%@, identifier_type=%s, identifier=%@>", v3, v5, v6, v9, self->_subjectIdentifier];

  return v10;
}

@end