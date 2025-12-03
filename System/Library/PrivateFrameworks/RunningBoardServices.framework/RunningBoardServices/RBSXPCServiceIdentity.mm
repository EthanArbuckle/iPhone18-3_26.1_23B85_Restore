@interface RBSXPCServiceIdentity
+ (RBSXPCServiceIdentity)identityWithDefinition:(id)definition sessionID:(id)d host:(id)host UUID:(id)iD persona:(id)persona validationToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSXPCServiceIdentity)initWithRBSXPCCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSXPCServiceIdentity

- (unint64_t)hash
{
  v3 = [(RBSXPCServiceDefinition *)self->_definition hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = [(RBSProcessInstance *)self->_host hash];
  v6 = v4 ^ v5 ^ [(NSUUID *)self->_uuid hash];
  v7 = [(NSString *)self->_personaString hash];
  return v6 ^ v7 ^ [(NSData *)self->_validationToken hash];
}

+ (RBSXPCServiceIdentity)identityWithDefinition:(id)definition sessionID:(id)d host:(id)host UUID:(id)iD persona:(id)persona validationToken:(id)token
{
  definitionCopy = definition;
  hostCopy = host;
  iDCopy = iD;
  tokenCopy = token;
  personaCopy = persona;
  dCopy = d;
  v20 = objc_alloc_init(self);
  v21 = v20[1];
  v20[1] = definitionCopy;
  v22 = definitionCopy;

  v23 = [dCopy copy];
  v24 = v20[2];
  v20[2] = v23;

  v25 = v20[3];
  v20[3] = hostCopy;
  v26 = hostCopy;

  v27 = v20[4];
  v20[4] = iDCopy;
  v28 = iDCopy;

  v29 = [personaCopy copy];
  v30 = v20[5];
  v20[5] = v29;

  v31 = [tokenCopy copy];
  v32 = v20[6];
  v20[6] = v31;

  return v20;
}

- (NSString)description
{
  v3 = [(RBSXPCServiceDefinition *)self->_definition description];
  v4 = v3;
  if (self->_host)
  {
    v5 = [v3 stringByAppendingFormat:@"[%@]", self->_host];

    v4 = v5;
  }

  if (self->_uuid)
  {
    v6 = [v4 stringByAppendingFormat:@":%@", self->_uuid];

    v4 = v6;
  }

  if (self->_personaString)
  {
    v7 = [v4 stringByAppendingFormat:@":%@", self->_personaString];

    v4 = v7;
  }

  validationToken = self->_validationToken;
  if (validationToken)
  {
    v9 = [v4 stringByAppendingFormat:@":{%lu}", -[NSData hash](validationToken, "hash")];

    v4 = v9;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  definition = self->_definition;
  definition = [equalCopy definition];
  v7 = definition;
  if (definition == definition || (definition ? (v8 = definition == 0) : (v8 = 1), !v8 && [(RBSXPCServiceDefinition *)definition isEqual:definition]))
  {
    sessionID = self->_sessionID;
    sessionID = [equalCopy sessionID];
    v11 = sessionID;
    if (sessionID != sessionID)
    {
      v12 = 0;
      if (!sessionID || !sessionID)
      {
        goto LABEL_37;
      }

      if (![(NSString *)sessionID isEqual:sessionID])
      {
        v12 = 0;
LABEL_37:

        goto LABEL_38;
      }
    }

    host = self->_host;
    host = [equalCopy host];
    v15 = host;
    if (host != host)
    {
      v12 = 0;
      if (!host || !host)
      {
        goto LABEL_36;
      }

      if (![(RBSProcessInstance *)host isEqual:host])
      {
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    uuid = self->_uuid;
    uuid = [equalCopy uuid];
    v18 = uuid;
    if (uuid != uuid)
    {
      v12 = 0;
      if (!uuid || !uuid)
      {
        goto LABEL_35;
      }

      if (![(NSUUID *)uuid isEqual:uuid])
      {
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    personaString = self->_personaString;
    personaString = [equalCopy personaString];
    v21 = personaString;
    if (personaString == personaString)
    {
      goto LABEL_23;
    }

    v12 = 0;
    if (personaString && personaString)
    {
      if ([(NSString *)personaString isEqual:personaString])
      {
LABEL_23:
        validationToken = self->_validationToken;
        validationToken = [equalCopy validationToken];
        v24 = validationToken;
        if (validationToken == validationToken)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (validationToken && validationToken)
          {
            v12 = [(NSData *)validationToken isEqual:validationToken];
          }
        }

        goto LABEL_34;
      }

      v12 = 0;
    }

LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_38:

  return v12;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  definition = self->_definition;
  coderCopy = coder;
  [coderCopy encodeObject:definition forKey:@"_definition"];
  [coderCopy encodeObject:self->_sessionID forKey:@"_sessionID"];
  [coderCopy encodeObject:self->_host forKey:@"_host"];
  [coderCopy encodeObject:self->_uuid forKey:@"_uuid"];
  [coderCopy encodeObject:self->_personaString forKey:@"_personaString"];
  [coderCopy encodeObject:self->_validationToken forKey:@"_validationToken"];
}

- (RBSXPCServiceIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RBSXPCServiceIdentity *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_definition"];
    definition = v5->_definition;
    v5->_definition = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_host"];
    host = v5->_host;
    v5->_host = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personaString"];
    personaString = v5->_personaString;
    v5->_personaString = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_validationToken"];
    validationToken = v5->_validationToken;
    v5->_validationToken = v16;
  }

  return v5;
}

@end