@interface SKPresenceOptions
- (BOOL)isEqual:(id)a3;
- (SKPresenceOptions)initWithCoder:(id)a3;
- (SKPresenceOptions)initWithServiceIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKPresenceOptions

- (SKPresenceOptions)initWithServiceIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKPresenceOptions;
  v5 = [(SKPresenceOptions *)&v9 init];
  if (v5)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(v4);
    if (v4 && [v4 length])
    {
      v6 = v4;
    }

    else
    {
      v6 = +[SKPresence clientID];
    }

    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isPersonal = self->_isPersonal;
  v5 = a3;
  [v5 encodeBool:isPersonal forKey:@"SKPresenceOptionsEncodingKeyIsPersonal"];
  [v5 encodeBool:self->_isDaemonIdleExitEnabled forKey:@"SKPresenceOptionsEncodingKeyIsDaemonIdleExitEnabled"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"SKPresenceOptionsEncodingKeyServiceIdentifier"];
  [v5 encodeObject:self->_clientSpecifiedURI forKey:@"SKPresenceOptionsEncodingKeyClientSpecifiedURI"];
}

- (SKPresenceOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SKPresenceOptionsEncodingKeyServiceIdentifier"];
  v6 = [(SKPresenceOptions *)self initWithServiceIdentifier:v5];
  -[SKPresenceOptions setIsPersonal:](v6, "setIsPersonal:", [v4 decodeBoolForKey:@"SKPresenceOptionsEncodingKeyIsPersonal"]);
  -[SKPresenceOptions setIsDaemonIdleExitEnabled:](v6, "setIsDaemonIdleExitEnabled:", [v4 decodeBoolForKey:@"SKPresenceOptionsEncodingKeyIsDaemonIdleExitEnabled"]);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SKPresenceOptionsEncodingKeyClientSpecifiedURI"];

  [(SKPresenceOptions *)v6 setClientSpecifiedURI:v7];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SKPresenceOptions *)self serviceIdentifier];
    if (v7 || ([v6 serviceIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(SKPresenceOptions *)self serviceIdentifier];
      v9 = [v6 serviceIdentifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {

        if (!v10)
        {
          goto LABEL_11;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
LABEL_11:
          v11 = 0;
LABEL_12:

          goto LABEL_13;
        }
      }
    }

    v12 = [(SKPresenceOptions *)self isPersonal];
    if (v12 != [v6 isPersonal])
    {
      goto LABEL_11;
    }

    v13 = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];
    if (v13 != [v6 isDaemonIdleExitEnabled])
    {
      goto LABEL_11;
    }

    v15 = [(SKPresenceOptions *)self clientSpecifiedURI];
    if (v15 || ([v6 clientSpecifiedURI], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [(SKPresenceOptions *)self clientSpecifiedURI];
      v17 = [v6 clientSpecifiedURI];
      v11 = [v16 isEqualToURI:v17];

      if (v15)
      {
LABEL_20:

        goto LABEL_12;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_20;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SKPresenceOptions *)self serviceIdentifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(SKPresenceOptions *)self isPersonal];
  v6 = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];

  return v5 ^ v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKPresenceOptions *)self serviceIdentifier];
  v6 = [(SKPresenceOptions *)self isPersonal];
  v7 = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];
  v8 = [(SKPresenceOptions *)self clientSpecifiedURI];
  v9 = [v3 stringWithFormat:@"<%@: %p serviceIdentifier = %@ isPersonal = %d isDaemonIdleExitEnabled = %d clientSpecifiedURI = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SKPresenceOptions allocWithZone:?]];
  if (v4)
  {
    v5 = [(IDSURI *)self->_clientSpecifiedURI copy];
    clientSpecifiedURI = v4->_clientSpecifiedURI;
    v4->_clientSpecifiedURI = v5;

    v7 = [(NSString *)self->_serviceIdentifier copy];
    serviceIdentifier = v4->_serviceIdentifier;
    v4->_serviceIdentifier = v7;

    v4->_isPersonal = self->_isPersonal;
    v4->_isDaemonIdleExitEnabled = self->_isDaemonIdleExitEnabled;
  }

  return v4;
}

@end