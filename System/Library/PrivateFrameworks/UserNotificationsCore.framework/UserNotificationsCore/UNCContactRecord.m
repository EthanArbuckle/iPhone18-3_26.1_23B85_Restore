@interface UNCContactRecord
- (BOOL)isEqual:(id)a3;
- (UNCContactRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation UNCContactRecord

- (UNCContactRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UNCContactRecord;
  v5 = [(UNCContactRecord *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"handle"];
    [(UNCContactRecord *)v5 setHandle:v6];

    v7 = [v4 objectForKey:@"handleType"];
    -[UNCContactRecord setHandleType:](v5, "setHandleType:", [v7 unsignedIntegerValue]);

    v8 = [v4 objectForKey:@"serviceName"];
    [(UNCContactRecord *)v5 setServiceName:v8];

    v9 = [v4 objectForKey:@"displayName"];
    [(UNCContactRecord *)v5 setDisplayName:v9];

    v10 = [v4 objectForKey:@"displayNameSuggested"];
    -[UNCContactRecord setDisplayNameSuggested:](v5, "setDisplayNameSuggested:", [v10 BOOLValue]);

    v11 = [v4 objectForKey:@"customIdentifier"];
    [(UNCContactRecord *)v5 setCustomIdentifier:v11];

    v12 = [v4 objectForKey:@"cnContactIdentifier"];
    [(UNCContactRecord *)v5 setCnContactIdentifier:v12];

    v13 = [v4 objectForKey:@"cnContactFullName"];
    [(UNCContactRecord *)v5 setCnContactFullname:v13];

    v14 = [v4 objectForKey:@"cnContactIdentifierSuggested"];
    -[UNCContactRecord setCnContactIdentifierSuggested:](v5, "setCnContactIdentifierSuggested:", [v14 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCContactRecord *)self handle];
  [v3 bs_setSafeObject:v4 forKey:@"handle"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCContactRecord handleType](self, "handleType")}];
  [v3 bs_setSafeObject:v5 forKey:@"handleType"];

  v6 = [(UNCContactRecord *)self serviceName];
  [v3 bs_setSafeObject:v6 forKey:@"serviceName"];

  v7 = [(UNCContactRecord *)self displayName];
  [v3 bs_setSafeObject:v7 forKey:@"displayName"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCContactRecord isDisplayNameSuggested](self, "isDisplayNameSuggested")}];
  [v3 bs_setSafeObject:v8 forKey:@"displayNameSuggested"];

  v9 = [(UNCContactRecord *)self customIdentifier];
  [v3 bs_setSafeObject:v9 forKey:@"customIdentifier"];

  v10 = [(UNCContactRecord *)self cnContactIdentifier];
  [v3 bs_setSafeObject:v10 forKey:@"cnContactIdentifier"];

  v11 = [(UNCContactRecord *)self cnContactFullname];
  [v3 bs_setSafeObject:v11 forKey:@"cnContactFullName"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[UNCContactRecord isCNContactIdentifierSuggested](self, "isCNContactIdentifierSuggested")}];
  [v3 bs_setSafeObject:v12 forKey:@"cnContactIdentifierSuggested"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCContactRecord *)self handle];
  v5 = [v4 un_logDigest];
  v6 = [v3 appendObject:v5 withName:@"handle"];

  v7 = [v3 appendUnsignedInteger:-[UNCContactRecord handleType](self withName:{"handleType"), @"handleType"}];
  v8 = [(UNCContactRecord *)self serviceName];
  v9 = [v3 appendObject:v8 withName:@"serviceName"];

  v10 = [(UNCContactRecord *)self displayName];
  v11 = [v10 un_logDigest];
  v12 = [v3 appendObject:v11 withName:@"displayName"];

  v13 = [v3 appendBool:-[UNCContactRecord isDisplayNameSuggested](self withName:{"isDisplayNameSuggested"), @"displayNameSuggested"}];
  v14 = [(UNCContactRecord *)self customIdentifier];
  v15 = [v14 un_logDigest];
  v16 = [v3 appendObject:v15 withName:@"customIdentifier"];

  v17 = [(UNCContactRecord *)self cnContactIdentifier];
  v18 = [v3 appendObject:v17 withName:@"cnContactIdentifier"];

  v19 = [(UNCContactRecord *)self cnContactFullname];
  v20 = [v19 un_logDigest];
  v21 = [v3 appendObject:v20 withName:@"cnContactFullname"];

  v22 = [v3 appendBool:-[UNCContactRecord isCNContactIdentifierSuggested](self withName:{"isCNContactIdentifierSuggested"), @"cnContactIdentifierSuggested"}];
  v23 = [v3 build];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [(UNCContactRecord *)self handle];
  v7 = [v5 handle];
  v8 = UNEqualStrings();

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [(UNCContactRecord *)self handleType];
  if (v9 != [v5 handleType])
  {
    goto LABEL_14;
  }

  v10 = [(UNCContactRecord *)self serviceName];
  v11 = [v5 serviceName];
  v12 = UNEqualStrings();

  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = [(UNCContactRecord *)self displayName];
  v14 = [v5 displayName];
  v15 = UNEqualStrings();

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = [(UNCContactRecord *)self isDisplayNameSuggested];
  if (v16 != [v5 isDisplayNameSuggested])
  {
    goto LABEL_14;
  }

  v17 = [(UNCContactRecord *)self customIdentifier];
  v18 = [v5 customIdentifier];
  v19 = UNEqualStrings();

  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [(UNCContactRecord *)self cnContactIdentifier];
  v21 = [v5 cnContactIdentifier];
  v22 = UNEqualStrings();

  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = [(UNCContactRecord *)self cnContactFullname];
  v24 = [v5 cnContactFullname];
  v25 = UNEqualStrings();

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [(UNCContactRecord *)self isCNContactIdentifierSuggested];
  v27 = v26 ^ [v5 isCNContactIdentifierSuggested] ^ 1;
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