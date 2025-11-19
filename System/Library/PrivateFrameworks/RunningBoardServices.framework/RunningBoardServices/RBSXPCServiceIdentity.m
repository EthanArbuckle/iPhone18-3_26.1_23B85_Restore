@interface RBSXPCServiceIdentity
+ (RBSXPCServiceIdentity)identityWithDefinition:(id)a3 sessionID:(id)a4 host:(id)a5 UUID:(id)a6 persona:(id)a7 validationToken:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSXPCServiceIdentity)initWithRBSXPCCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
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

+ (RBSXPCServiceIdentity)identityWithDefinition:(id)a3 sessionID:(id)a4 host:(id)a5 UUID:(id)a6 persona:(id)a7 validationToken:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a7;
  v19 = a4;
  v20 = objc_alloc_init(a1);
  v21 = v20[1];
  v20[1] = v14;
  v22 = v14;

  v23 = [v19 copy];
  v24 = v20[2];
  v20[2] = v23;

  v25 = v20[3];
  v20[3] = v15;
  v26 = v15;

  v27 = v20[4];
  v20[4] = v16;
  v28 = v16;

  v29 = [v18 copy];
  v30 = v20[5];
  v20[5] = v29;

  v31 = [v17 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  definition = self->_definition;
  v6 = [v4 definition];
  v7 = v6;
  if (definition == v6 || (definition ? (v8 = v6 == 0) : (v8 = 1), !v8 && [(RBSXPCServiceDefinition *)definition isEqual:v6]))
  {
    sessionID = self->_sessionID;
    v10 = [v4 sessionID];
    v11 = v10;
    if (sessionID != v10)
    {
      v12 = 0;
      if (!sessionID || !v10)
      {
        goto LABEL_37;
      }

      if (![(NSString *)sessionID isEqual:v10])
      {
        v12 = 0;
LABEL_37:

        goto LABEL_38;
      }
    }

    host = self->_host;
    v14 = [v4 host];
    v15 = v14;
    if (host != v14)
    {
      v12 = 0;
      if (!host || !v14)
      {
        goto LABEL_36;
      }

      if (![(RBSProcessInstance *)host isEqual:v14])
      {
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    uuid = self->_uuid;
    v17 = [v4 uuid];
    v18 = v17;
    if (uuid != v17)
    {
      v12 = 0;
      if (!uuid || !v17)
      {
        goto LABEL_35;
      }

      if (![(NSUUID *)uuid isEqual:v17])
      {
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    personaString = self->_personaString;
    v20 = [v4 personaString];
    v21 = v20;
    if (personaString == v20)
    {
      goto LABEL_23;
    }

    v12 = 0;
    if (personaString && v20)
    {
      if ([(NSString *)personaString isEqual:v20])
      {
LABEL_23:
        validationToken = self->_validationToken;
        v23 = [v4 validationToken];
        v24 = v23;
        if (validationToken == v23)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0;
          if (validationToken && v23)
          {
            v12 = [(NSData *)validationToken isEqual:v23];
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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  definition = self->_definition;
  v5 = a3;
  [v5 encodeObject:definition forKey:@"_definition"];
  [v5 encodeObject:self->_sessionID forKey:@"_sessionID"];
  [v5 encodeObject:self->_host forKey:@"_host"];
  [v5 encodeObject:self->_uuid forKey:@"_uuid"];
  [v5 encodeObject:self->_personaString forKey:@"_personaString"];
  [v5 encodeObject:self->_validationToken forKey:@"_validationToken"];
}

- (RBSXPCServiceIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSXPCServiceIdentity *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_definition"];
    definition = v5->_definition;
    v5->_definition = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_host"];
    host = v5->_host;
    v5->_host = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_personaString"];
    personaString = v5->_personaString;
    v5->_personaString = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_validationToken"];
    validationToken = v5->_validationToken;
    v5->_validationToken = v16;
  }

  return v5;
}

@end