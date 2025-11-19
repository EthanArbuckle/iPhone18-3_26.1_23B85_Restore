@interface TUConversationProviderConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationProvider:(id)a3;
- (BOOL)supportsVideo;
- (TUConversationProviderConfiguration)initWithCoder:(id)a3;
- (TUConversationProviderConfiguration)initWithConfiguration:(id)a3;
- (TUConversationProviderConfiguration)initWithServiceName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSupportedMediaTypes:(id)a3;
@end

@implementation TUConversationProviderConfiguration

- (TUConversationProviderConfiguration)initWithServiceName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TUConversationProviderConfiguration;
  v5 = [(TUConversationProviderConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (TUConversationProviderConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUConversationProviderConfiguration;
  v5 = [(TUConversationProviderConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_serviceName, *(v4 + 2));
    objc_storeStrong(&v6->_pseudonymFeatureID, *(v4 + 3));
    objc_storeStrong(&v6->_bundleID, *(v4 + 4));
    objc_storeStrong(&v6->_supportedMediaTypes, *(v4 + 5));
    v6->_supportsLinks = *(v4 + 8);
    v6->_supportsSharePlay = *(v4 + 9);
    v6->_supportsConversationHandoff = *(v4 + 10);
    v6->_wantsLeaveOnInvalidation = *(v4 + 11);
  }

  return v6;
}

- (BOOL)supportsVideo
{
  v2 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v3 = [v2 containsObject:&unk_1F09C62C8];

  return v3;
}

- (void)setSupportedMediaTypes:(id)a3
{
  v7 = a3;
  v4 = v7;
  if (!+[TUConversationManager allowsVideo])
  {
    v4 = [v7 objectsPassingTest:&__block_literal_global_47];
  }

  if ([v4 count] && !-[NSSet isEqualToSet:](self->_supportedMediaTypes, "isEqualToSet:", v4))
  {
    v5 = [v4 copy];
    supportedMediaTypes = self->_supportedMediaTypes;
    self->_supportedMediaTypes = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithConfiguration:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUConversationProviderConfiguration *)self bundleID];

  if (v4)
  {
    v5 = [(TUConversationProviderConfiguration *)self bundleID];
    [v3 appendFormat:@" bundleID=%@", v5];
  }

  v6 = [(TUConversationProviderConfiguration *)self serviceName];

  if (v6)
  {
    v7 = [(TUConversationProviderConfiguration *)self serviceName];
    [v3 appendFormat:@" serviceName=%@", v7];
  }

  v8 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];

  if (v8)
  {
    v9 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
    [v3 appendFormat:@" pseudonymFeatureID=%@", v9];
  }

  v10 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
    v13 = [v12 allObjects];
    v14 = [v13 componentsJoinedByString:{@", "}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationProviderConfiguration *)self isEqualToConversationProvider:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUConversationProviderConfiguration *)self serviceName];
  v4 = [v3 hash];
  v5 = [(TUConversationProviderConfiguration *)self bundleID];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToConversationProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationProviderConfiguration *)self serviceName];
  v6 = [v4 serviceName];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
    v8 = [v4 pseudonymFeatureID];
    if (TUStringsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationProviderConfiguration *)self bundleID];
      v10 = [v4 bundleID];
      if (TUStringsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
        v12 = [v4 supportedMediaTypes];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v19 = v11;
          v13 = [(TUConversationProviderConfiguration *)self supportsLinks];
          if (v13 == [v4 supportsLinks] && (v14 = -[TUConversationProviderConfiguration supportsSharePlay](self, "supportsSharePlay"), v14 == objc_msgSend(v4, "supportsSharePlay")) && (v15 = -[TUConversationProviderConfiguration supportsConversationHandoff](self, "supportsConversationHandoff"), v15 == objc_msgSend(v4, "supportsConversationHandoff")))
          {
            v18 = [(TUConversationProviderConfiguration *)self wantsLeaveOnInvalidation];
            v16 = v18 ^ [v4 wantsLeaveOnInvalidation] ^ 1;
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v11 = v19;
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

- (TUConversationProviderConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationProviderConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_serviceName);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    serviceName = v5->_serviceName;
    v5->_serviceName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_bundleID);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    bundleID = v5->_bundleID;
    v5->_bundleID = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_pseudonymFeatureID);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    pseudonymFeatureID = v5->_pseudonymFeatureID;
    v5->_pseudonymFeatureID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = NSStringFromSelector(sel_supportedMediaTypes);
    v22 = [v4 decodeObjectOfClasses:v20 forKey:v21];
    supportedMediaTypes = v5->_supportedMediaTypes;
    v5->_supportedMediaTypes = v22;

    v24 = NSStringFromSelector(sel_supportsLinks);
    v5->_supportsLinks = [v4 decodeBoolForKey:v24];

    v25 = NSStringFromSelector(sel_supportsSharePlay);
    v5->_supportsSharePlay = [v4 decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_supportsConversationHandoff);
    v5->_supportsConversationHandoff = [v4 decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_wantsLeaveOnInvalidation);
    v5->_wantsLeaveOnInvalidation = [v4 decodeBoolForKey:v27];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationProviderConfiguration *)self serviceName];
  v6 = NSStringFromSelector(sel_serviceName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationProviderConfiguration *)self bundleID];
  v8 = NSStringFromSelector(sel_bundleID);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationProviderConfiguration *)self pseudonymFeatureID];
  v10 = NSStringFromSelector(sel_pseudonymFeatureID);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationProviderConfiguration *)self supportedMediaTypes];
  v12 = NSStringFromSelector(sel_supportedMediaTypes);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationProviderConfiguration *)self supportsLinks];
  v14 = NSStringFromSelector(sel_supportsLinks);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TUConversationProviderConfiguration *)self supportsSharePlay];
  v16 = NSStringFromSelector(sel_supportsSharePlay);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUConversationProviderConfiguration *)self supportsConversationHandoff];
  v18 = NSStringFromSelector(sel_supportsConversationHandoff);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUConversationProviderConfiguration *)self wantsLeaveOnInvalidation];
  v20 = NSStringFromSelector(sel_wantsLeaveOnInvalidation);
  [v4 encodeBool:v19 forKey:v20];
}

@end