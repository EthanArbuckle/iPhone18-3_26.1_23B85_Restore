@interface SKPresenceOptions
- (BOOL)isEqual:(id)equal;
- (SKPresenceOptions)initWithCoder:(id)coder;
- (SKPresenceOptions)initWithServiceIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKPresenceOptions

- (SKPresenceOptions)initWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SKPresenceOptions;
  v5 = [(SKPresenceOptions *)&v9 init];
  if (v5)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(identifierCopy);
    if (identifierCopy && [identifierCopy length])
    {
      v6 = identifierCopy;
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

- (void)encodeWithCoder:(id)coder
{
  isPersonal = self->_isPersonal;
  coderCopy = coder;
  [coderCopy encodeBool:isPersonal forKey:@"SKPresenceOptionsEncodingKeyIsPersonal"];
  [coderCopy encodeBool:self->_isDaemonIdleExitEnabled forKey:@"SKPresenceOptionsEncodingKeyIsDaemonIdleExitEnabled"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"SKPresenceOptionsEncodingKeyServiceIdentifier"];
  [coderCopy encodeObject:self->_clientSpecifiedURI forKey:@"SKPresenceOptionsEncodingKeyClientSpecifiedURI"];
}

- (SKPresenceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SKPresenceOptionsEncodingKeyServiceIdentifier"];
  v6 = [(SKPresenceOptions *)self initWithServiceIdentifier:v5];
  -[SKPresenceOptions setIsPersonal:](v6, "setIsPersonal:", [coderCopy decodeBoolForKey:@"SKPresenceOptionsEncodingKeyIsPersonal"]);
  -[SKPresenceOptions setIsDaemonIdleExitEnabled:](v6, "setIsDaemonIdleExitEnabled:", [coderCopy decodeBoolForKey:@"SKPresenceOptionsEncodingKeyIsDaemonIdleExitEnabled"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SKPresenceOptionsEncodingKeyClientSpecifiedURI"];

  [(SKPresenceOptions *)v6 setClientSpecifiedURI:v7];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    serviceIdentifier = [(SKPresenceOptions *)self serviceIdentifier];
    if (serviceIdentifier || ([v6 serviceIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      serviceIdentifier2 = [(SKPresenceOptions *)self serviceIdentifier];
      serviceIdentifier3 = [v6 serviceIdentifier];
      v10 = [serviceIdentifier2 isEqualToString:serviceIdentifier3];

      if (serviceIdentifier)
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

    isPersonal = [(SKPresenceOptions *)self isPersonal];
    if (isPersonal != [v6 isPersonal])
    {
      goto LABEL_11;
    }

    isDaemonIdleExitEnabled = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];
    if (isDaemonIdleExitEnabled != [v6 isDaemonIdleExitEnabled])
    {
      goto LABEL_11;
    }

    clientSpecifiedURI = [(SKPresenceOptions *)self clientSpecifiedURI];
    if (clientSpecifiedURI || ([v6 clientSpecifiedURI], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      clientSpecifiedURI2 = [(SKPresenceOptions *)self clientSpecifiedURI];
      clientSpecifiedURI3 = [v6 clientSpecifiedURI];
      v11 = [clientSpecifiedURI2 isEqualToURI:clientSpecifiedURI3];

      if (clientSpecifiedURI)
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
  serviceIdentifier = [(SKPresenceOptions *)self serviceIdentifier];
  v4 = [serviceIdentifier hash];
  v5 = v4 ^ [(SKPresenceOptions *)self isPersonal];
  isDaemonIdleExitEnabled = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];

  return v5 ^ isDaemonIdleExitEnabled;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serviceIdentifier = [(SKPresenceOptions *)self serviceIdentifier];
  isPersonal = [(SKPresenceOptions *)self isPersonal];
  isDaemonIdleExitEnabled = [(SKPresenceOptions *)self isDaemonIdleExitEnabled];
  clientSpecifiedURI = [(SKPresenceOptions *)self clientSpecifiedURI];
  v9 = [v3 stringWithFormat:@"<%@: %p serviceIdentifier = %@ isPersonal = %d isDaemonIdleExitEnabled = %d clientSpecifiedURI = %@>", v4, self, serviceIdentifier, isPersonal, isDaemonIdleExitEnabled, clientSpecifiedURI];;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
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