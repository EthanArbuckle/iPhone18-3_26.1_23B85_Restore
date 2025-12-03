@interface TUConversationProviderConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationProvider:(id)provider;
- (BOOL)supportsVideo;
- (TUConversationProviderConfiguration)initWithCoder:(id)coder;
- (TUConversationProviderConfiguration)initWithConfiguration:(id)configuration;
- (TUConversationProviderConfiguration)initWithServiceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSupportedMediaTypes:(id)types;
@end

@implementation TUConversationProviderConfiguration

- (TUConversationProviderConfiguration)initWithServiceName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TUConversationProviderConfiguration;
  v5 = [(TUConversationProviderConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    *&v5->_supportsLinks = 0;
    v5->_supportsConversationHandoff = 0;
    v8 = +[TUConversationManager allowsVideo];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    if (v8)
    {
      v10 = [v9 initWithObjects:{&unk_1F09C62C8, &unk_1F09C62E0, 0}];
    }

    else
    {
      v10 = [v9 initWithObjects:{&unk_1F09C62E0, 0, v13}];
    }

    supportedMediaTypes = v5->_supportedMediaTypes;
    v5->_supportedMediaTypes = v10;
  }

  return v5;
}

- (TUConversationProviderConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = TUConversationProviderConfiguration;
  v5 = [(TUConversationProviderConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_serviceName, *(configurationCopy + 2));
    objc_storeStrong(&v6->_pseudonymFeatureID, *(configurationCopy + 3));
    objc_storeStrong(&v6->_bundleID, *(configurationCopy + 4));
    objc_storeStrong(&v6->_supportedMediaTypes, *(configurationCopy + 5));
    v6->_supportsLinks = *(configurationCopy + 8);
    v6->_supportsSharePlay = *(configurationCopy + 9);
    v6->_supportsConversationHandoff = *(configurationCopy + 10);
    v6->_wantsLeaveOnInvalidation = *(configurationCopy + 11);
  }

  return v6;
}

- (BOOL)supportsVideo
{
  supportedMediaTypes = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v3 = [supportedMediaTypes containsObject:&unk_1F09C62C8];

  return v3;
}

- (void)setSupportedMediaTypes:(id)types
{
  typesCopy = types;
  v4 = typesCopy;
  if (!+[TUConversationManager allowsVideo])
  {
    v4 = [typesCopy objectsPassingTest:&__block_literal_global_47];
  }

  if ([v4 count] && !-[NSSet isEqualToSet:](self->_supportedMediaTypes, "isEqualToSet:", v4))
  {
    v5 = [v4 copy];
    supportedMediaTypes = self->_supportedMediaTypes;
    self->_supportedMediaTypes = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithConfiguration:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  bundleID = [(TUConversationProviderConfiguration *)self bundleID];

  if (bundleID)
  {
    bundleID2 = [(TUConversationProviderConfiguration *)self bundleID];
    [v3 appendFormat:@" bundleID=%@", bundleID2];
  }

  serviceName = [(TUConversationProviderConfiguration *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(TUConversationProviderConfiguration *)self serviceName];
    [v3 appendFormat:@" serviceName=%@", serviceName2];
  }

  pseudonymFeatureID = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];

  if (pseudonymFeatureID)
  {
    pseudonymFeatureID2 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
    [v3 appendFormat:@" pseudonymFeatureID=%@", pseudonymFeatureID2];
  }

  supportedMediaTypes = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v11 = [supportedMediaTypes count];

  if (v11)
  {
    supportedMediaTypes2 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
    allObjects = [supportedMediaTypes2 allObjects];
    v14 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" supportedMediaTypes=%@", v14];
  }

  if ([(TUConversationProviderConfiguration *)self supportsConversationHandoff])
  {
    [v3 appendFormat:@" supportsConversationHandoff=%d", -[TUConversationProviderConfiguration supportsConversationHandoff](self, "supportsConversationHandoff")];
  }

  if ([(TUConversationProviderConfiguration *)self supportsLinks])
  {
    [v3 appendFormat:@" supportsLinks=%d", -[TUConversationProviderConfiguration supportsLinks](self, "supportsLinks")];
  }

  if ([(TUConversationProviderConfiguration *)self supportsSharePlay])
  {
    [v3 appendFormat:@" supportsSharePlay=%d", -[TUConversationProviderConfiguration supportsSharePlay](self, "supportsSharePlay")];
  }

  if ([(TUConversationProviderConfiguration *)self wantsLeaveOnInvalidation])
  {
    [v3 appendFormat:@" wantsLeaveOnInvalidation=%d", -[TUConversationProviderConfiguration wantsLeaveOnInvalidation](self, "wantsLeaveOnInvalidation")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationProviderConfiguration *)self isEqualToConversationProvider:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  serviceName = [(TUConversationProviderConfiguration *)self serviceName];
  v4 = [serviceName hash];
  bundleID = [(TUConversationProviderConfiguration *)self bundleID];
  v6 = [bundleID hash] ^ v4;
  pseudonymFeatureID = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
  v8 = [pseudonymFeatureID hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToConversationProvider:(id)provider
{
  providerCopy = provider;
  serviceName = [(TUConversationProviderConfiguration *)self serviceName];
  serviceName2 = [providerCopy serviceName];
  if ([serviceName isEqualToString:serviceName2])
  {
    pseudonymFeatureID = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
    pseudonymFeatureID2 = [providerCopy pseudonymFeatureID];
    if (TUStringsAreEqualOrNil(pseudonymFeatureID, pseudonymFeatureID2))
    {
      bundleID = [(TUConversationProviderConfiguration *)self bundleID];
      bundleID2 = [providerCopy bundleID];
      if (TUStringsAreEqualOrNil(bundleID, bundleID2))
      {
        supportedMediaTypes = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
        supportedMediaTypes2 = [providerCopy supportedMediaTypes];
        if (TUObjectsAreEqualOrNil(supportedMediaTypes, supportedMediaTypes2))
        {
          v19 = supportedMediaTypes;
          supportsLinks = [(TUConversationProviderConfiguration *)self supportsLinks];
          if (supportsLinks == [providerCopy supportsLinks] && (v14 = -[TUConversationProviderConfiguration supportsSharePlay](self, "supportsSharePlay"), v14 == objc_msgSend(providerCopy, "supportsSharePlay")) && (v15 = -[TUConversationProviderConfiguration supportsConversationHandoff](self, "supportsConversationHandoff"), v15 == objc_msgSend(providerCopy, "supportsConversationHandoff")))
          {
            wantsLeaveOnInvalidation = [(TUConversationProviderConfiguration *)self wantsLeaveOnInvalidation];
            v16 = wantsLeaveOnInvalidation ^ [providerCopy wantsLeaveOnInvalidation] ^ 1;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          supportedMediaTypes = v19;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (TUConversationProviderConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUConversationProviderConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_serviceName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    serviceName = v5->_serviceName;
    v5->_serviceName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_bundleID);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    bundleID = v5->_bundleID;
    v5->_bundleID = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_pseudonymFeatureID);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    pseudonymFeatureID = v5->_pseudonymFeatureID;
    v5->_pseudonymFeatureID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_supportedMediaTypes);
    v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
    supportedMediaTypes = v5->_supportedMediaTypes;
    v5->_supportedMediaTypes = v22;

    v24 = NSStringFromSelector(sel_supportsLinks);
    v5->_supportsLinks = [coderCopy decodeBoolForKey:v24];

    v25 = NSStringFromSelector(sel_supportsSharePlay);
    v5->_supportsSharePlay = [coderCopy decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_supportsConversationHandoff);
    v5->_supportsConversationHandoff = [coderCopy decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_wantsLeaveOnInvalidation);
    v5->_wantsLeaveOnInvalidation = [coderCopy decodeBoolForKey:v27];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(TUConversationProviderConfiguration *)self serviceName];
  v6 = NSStringFromSelector(sel_serviceName);
  [coderCopy encodeObject:serviceName forKey:v6];

  bundleID = [(TUConversationProviderConfiguration *)self bundleID];
  v8 = NSStringFromSelector(sel_bundleID);
  [coderCopy encodeObject:bundleID forKey:v8];

  pseudonymFeatureID = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
  v10 = NSStringFromSelector(sel_pseudonymFeatureID);
  [coderCopy encodeObject:pseudonymFeatureID forKey:v10];

  supportedMediaTypes = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v12 = NSStringFromSelector(sel_supportedMediaTypes);
  [coderCopy encodeObject:supportedMediaTypes forKey:v12];

  supportsLinks = [(TUConversationProviderConfiguration *)self supportsLinks];
  v14 = NSStringFromSelector(sel_supportsLinks);
  [coderCopy encodeBool:supportsLinks forKey:v14];

  supportsSharePlay = [(TUConversationProviderConfiguration *)self supportsSharePlay];
  v16 = NSStringFromSelector(sel_supportsSharePlay);
  [coderCopy encodeBool:supportsSharePlay forKey:v16];

  supportsConversationHandoff = [(TUConversationProviderConfiguration *)self supportsConversationHandoff];
  v18 = NSStringFromSelector(sel_supportsConversationHandoff);
  [coderCopy encodeBool:supportsConversationHandoff forKey:v18];

  wantsLeaveOnInvalidation = [(TUConversationProviderConfiguration *)self wantsLeaveOnInvalidation];
  v20 = NSStringFromSelector(sel_wantsLeaveOnInvalidation);
  [coderCopy encodeBool:wantsLeaveOnInvalidation forKey:v20];
}

@end