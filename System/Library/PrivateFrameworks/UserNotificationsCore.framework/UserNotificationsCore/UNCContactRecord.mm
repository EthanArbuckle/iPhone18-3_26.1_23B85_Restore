@interface UNCContactRecord
- (BOOL)isEqual:(id)equal;
- (UNCContactRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation UNCContactRecord

- (UNCContactRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = UNCContactRecord;
  v5 = [(UNCContactRecord *)&v16 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"handle"];
    [(UNCContactRecord *)v5 setHandle:v6];

    v7 = [representationCopy objectForKey:@"handleType"];
    -[UNCContactRecord setHandleType:](v5, "setHandleType:", [v7 unsignedIntegerValue]);

    v8 = [representationCopy objectForKey:@"serviceName"];
    [(UNCContactRecord *)v5 setServiceName:v8];

    v9 = [representationCopy objectForKey:@"displayName"];
    [(UNCContactRecord *)v5 setDisplayName:v9];

    v10 = [representationCopy objectForKey:@"displayNameSuggested"];
    -[UNCContactRecord setDisplayNameSuggested:](v5, "setDisplayNameSuggested:", [v10 BOOLValue]);

    v11 = [representationCopy objectForKey:@"customIdentifier"];
    [(UNCContactRecord *)v5 setCustomIdentifier:v11];

    v12 = [representationCopy objectForKey:@"cnContactIdentifier"];
    [(UNCContactRecord *)v5 setCnContactIdentifier:v12];

    v13 = [representationCopy objectForKey:@"cnContactFullName"];
    [(UNCContactRecord *)v5 setCnContactFullname:v13];

    v14 = [representationCopy objectForKey:@"cnContactIdentifierSuggested"];
    -[UNCContactRecord setCnContactIdentifierSuggested:](v5, "setCnContactIdentifierSuggested:", [v14 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  handle = [(UNCContactRecord *)self handle];
  [dictionary bs_setSafeObject:handle forKey:@"handle"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCContactRecord handleType](self, "handleType")}];
  [dictionary bs_setSafeObject:v5 forKey:@"handleType"];

  serviceName = [(UNCContactRecord *)self serviceName];
  [dictionary bs_setSafeObject:serviceName forKey:@"serviceName"];

  displayName = [(UNCContactRecord *)self displayName];
  [dictionary bs_setSafeObject:displayName forKey:@"displayName"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCContactRecord isDisplayNameSuggested](self, "isDisplayNameSuggested")}];
  [dictionary bs_setSafeObject:v8 forKey:@"displayNameSuggested"];

  customIdentifier = [(UNCContactRecord *)self customIdentifier];
  [dictionary bs_setSafeObject:customIdentifier forKey:@"customIdentifier"];

  cnContactIdentifier = [(UNCContactRecord *)self cnContactIdentifier];
  [dictionary bs_setSafeObject:cnContactIdentifier forKey:@"cnContactIdentifier"];

  cnContactFullname = [(UNCContactRecord *)self cnContactFullname];
  [dictionary bs_setSafeObject:cnContactFullname forKey:@"cnContactFullName"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCContactRecord isCNContactIdentifierSuggested](self, "isCNContactIdentifierSuggested")}];
  [dictionary bs_setSafeObject:v12 forKey:@"cnContactIdentifierSuggested"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  handle = [(UNCContactRecord *)self handle];
  un_logDigest = [handle un_logDigest];
  v6 = [v3 appendObject:un_logDigest withName:@"handle"];

  v7 = [v3 appendUnsignedInteger:-[UNCContactRecord handleType](self withName:{"handleType"), @"handleType"}];
  serviceName = [(UNCContactRecord *)self serviceName];
  v9 = [v3 appendObject:serviceName withName:@"serviceName"];

  displayName = [(UNCContactRecord *)self displayName];
  un_logDigest2 = [displayName un_logDigest];
  v12 = [v3 appendObject:un_logDigest2 withName:@"displayName"];

  v13 = [v3 appendBool:-[UNCContactRecord isDisplayNameSuggested](self withName:{"isDisplayNameSuggested"), @"displayNameSuggested"}];
  customIdentifier = [(UNCContactRecord *)self customIdentifier];
  un_logDigest3 = [customIdentifier un_logDigest];
  v16 = [v3 appendObject:un_logDigest3 withName:@"customIdentifier"];

  cnContactIdentifier = [(UNCContactRecord *)self cnContactIdentifier];
  v18 = [v3 appendObject:cnContactIdentifier withName:@"cnContactIdentifier"];

  cnContactFullname = [(UNCContactRecord *)self cnContactFullname];
  un_logDigest4 = [cnContactFullname un_logDigest];
  v21 = [v3 appendObject:un_logDigest4 withName:@"cnContactFullname"];

  v22 = [v3 appendBool:-[UNCContactRecord isCNContactIdentifierSuggested](self withName:{"isCNContactIdentifierSuggested"), @"cnContactIdentifierSuggested"}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_14:
      LOBYTE(v27) = 0;
      goto LABEL_15;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_14;
  }

  handle = [(UNCContactRecord *)self handle];
  handle2 = [v5 handle];
  v8 = UNEqualStrings();

  if (!v8)
  {
    goto LABEL_14;
  }

  handleType = [(UNCContactRecord *)self handleType];
  if (handleType != [v5 handleType])
  {
    goto LABEL_14;
  }

  serviceName = [(UNCContactRecord *)self serviceName];
  serviceName2 = [v5 serviceName];
  v12 = UNEqualStrings();

  if (!v12)
  {
    goto LABEL_14;
  }

  displayName = [(UNCContactRecord *)self displayName];
  displayName2 = [v5 displayName];
  v15 = UNEqualStrings();

  if (!v15)
  {
    goto LABEL_14;
  }

  isDisplayNameSuggested = [(UNCContactRecord *)self isDisplayNameSuggested];
  if (isDisplayNameSuggested != [v5 isDisplayNameSuggested])
  {
    goto LABEL_14;
  }

  customIdentifier = [(UNCContactRecord *)self customIdentifier];
  customIdentifier2 = [v5 customIdentifier];
  v19 = UNEqualStrings();

  if (!v19)
  {
    goto LABEL_14;
  }

  cnContactIdentifier = [(UNCContactRecord *)self cnContactIdentifier];
  cnContactIdentifier2 = [v5 cnContactIdentifier];
  v22 = UNEqualStrings();

  if (!v22)
  {
    goto LABEL_14;
  }

  cnContactFullname = [(UNCContactRecord *)self cnContactFullname];
  cnContactFullname2 = [v5 cnContactFullname];
  v25 = UNEqualStrings();

  if (!v25)
  {
    goto LABEL_14;
  }

  isCNContactIdentifierSuggested = [(UNCContactRecord *)self isCNContactIdentifierSuggested];
  v27 = isCNContactIdentifierSuggested ^ [v5 isCNContactIdentifierSuggested] ^ 1;
LABEL_15:

  return v27;
}

- (unint64_t)hash
{
  v3 = self->_handleType + [(NSString *)self->_handle hash];
  v4 = [(NSString *)self->_serviceName hash];
  v5 = v3 + v4 + [(NSString *)self->_displayName hash];
  displayNameSuggested = self->_displayNameSuggested;
  v7 = displayNameSuggested + [(NSString *)self->_customIdentifier hash];
  v8 = v5 + v7 + [(NSString *)self->_cnContactIdentifier hash];
  v9 = [(NSString *)self->_cnContactIdentifier hash];
  return v8 + v9 + [(NSString *)self->_cnContactFullname hash]+ self->_cnContactIdentifierSuggested;
}

@end