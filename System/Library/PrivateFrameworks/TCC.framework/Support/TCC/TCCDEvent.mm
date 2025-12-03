@interface TCCDEvent
- (OS_xpc_object)xpcObject;
- (TCCDEvent)initWithEventType:(unint64_t)type accessRecord:(id)record;
- (TCCDEvent)initWithEventType:(unint64_t)type service:(id)service subjectIdentifierType:(unint64_t)identifierType subjectIdentifier:(id)identifier authValue:(unint64_t)value;
- (id)description;
@end

@implementation TCCDEvent

- (TCCDEvent)initWithEventType:(unint64_t)type service:(id)service subjectIdentifierType:(unint64_t)identifierType subjectIdentifier:(id)identifier authValue:(unint64_t)value
{
  serviceCopy = service;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = TCCDEvent;
  v15 = [(TCCDEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_eventType = type;
    objc_storeStrong(&v15->_service, service);
    v16->_subjectIdentifierType = identifierType;
    v17 = [identifierCopy copy];
    subjectIdentifier = v16->_subjectIdentifier;
    v16->_subjectIdentifier = v17;

    v16->_authValue = value;
  }

  return v16;
}

- (TCCDEvent)initWithEventType:(unint64_t)type accessRecord:(id)record
{
  recordCopy = record;
  subjectIdentity = [recordCopy subjectIdentity];
  accessObject = [recordCopy accessObject];
  serviceObject = [accessObject serviceObject];
  identifierAuthority = [subjectIdentity identifierAuthority];
  identifier = [subjectIdentity identifier];
  authorizationValue = [recordCopy authorizationValue];

  v13 = [(TCCDEvent *)self initWithEventType:type service:serviceObject subjectIdentifierType:identifierAuthority subjectIdentifier:identifier authValue:authorizationValue];
  return v13;
}

- (OS_xpc_object)xpcObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "event_type", self->_eventType);
  name = [(TCCDService *)self->_service name];
  xpc_dictionary_set_string(v3, "service", [name UTF8String]);

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

  name = [(TCCDService *)self->_service name];
  v7 = name;
  v8 = self->_subjectIdentifierType - 1;
  if (v8 > 3)
  {
    v9 = "Bundle ID";
  }

  else
  {
    v9 = off_1000A6378[v8];
  }

  v10 = [NSString stringWithFormat:@"<%@: type=%s, service=%@, identifier_type=%s, identifier=%@>", v3, v5, name, v9, self->_subjectIdentifier];

  return v10;
}

@end