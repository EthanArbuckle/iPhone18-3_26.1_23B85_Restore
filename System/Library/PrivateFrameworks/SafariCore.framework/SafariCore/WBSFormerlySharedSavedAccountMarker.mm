@interface WBSFormerlySharedSavedAccountMarker
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSFormerlySharedSavedAccountMarker)initWithDictionaryRepresentation:(id)representation;
- (WBSFormerlySharedSavedAccountMarker)initWithPasswordManagerCredentialIdentifier:(id)identifier nameOfGroupCredentialWasLastSharedIn:(id)in;
@end

@implementation WBSFormerlySharedSavedAccountMarker

- (WBSFormerlySharedSavedAccountMarker)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"passwordManagerCredentialIdentifier"];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"groupName"];
    v7 = [[WBSFormerlySharedSavedAccountMarker alloc] initWithPasswordManagerCredentialIdentifier:v5 nameOfGroupCredentialWasLastSharedIn:v6];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSFormerlySharedSavedAccountMarker initWithDictionaryRepresentation:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (WBSFormerlySharedSavedAccountMarker)initWithPasswordManagerCredentialIdentifier:(id)identifier nameOfGroupCredentialWasLastSharedIn:(id)in
{
  identifierCopy = identifier;
  inCopy = in;
  v15.receiver = self;
  v15.super_class = WBSFormerlySharedSavedAccountMarker;
  v8 = [(WBSFormerlySharedSavedAccountMarker *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    passwordManagerCredentialIdentifier = v8->_passwordManagerCredentialIdentifier;
    v8->_passwordManagerCredentialIdentifier = v9;

    v11 = [inCopy copy];
    nameOfGroupCredentialWasLastSharedIn = v8->_nameOfGroupCredentialWasLastSharedIn;
    v8->_nameOfGroupCredentialWasLastSharedIn = v11;

    v13 = v8;
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  passwordManagerCredentialIdentifier = self->_passwordManagerCredentialIdentifier;
  v10 = @"passwordManagerCredentialIdentifier";
  v11[0] = passwordManagerCredentialIdentifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  nameOfGroupCredentialWasLastSharedIn = self->_nameOfGroupCredentialWasLastSharedIn;
  if (nameOfGroupCredentialWasLastSharedIn)
  {
    [v6 setObject:nameOfGroupCredentialWasLastSharedIn forKeyedSubscript:@"groupName"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nameOfGroupCredentialWasLastSharedIn = self->_nameOfGroupCredentialWasLastSharedIn;
      nameOfGroupCredentialWasLastSharedIn = [(WBSFormerlySharedSavedAccountMarker *)v5 nameOfGroupCredentialWasLastSharedIn];
      if (WBSIsEqual(nameOfGroupCredentialWasLastSharedIn, nameOfGroupCredentialWasLastSharedIn))
      {
        passwordManagerCredentialIdentifier = self->_passwordManagerCredentialIdentifier;
        passwordManagerCredentialIdentifier = [(WBSFormerlySharedSavedAccountMarker *)v5 passwordManagerCredentialIdentifier];
        v10 = [(NSString *)passwordManagerCredentialIdentifier isEqualToString:passwordManagerCredentialIdentifier];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end