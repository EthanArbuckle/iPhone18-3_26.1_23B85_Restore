@interface TUScreenSharingRequestMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScreenSharingRequestMetadata:(id)a3;
- (TUScreenSharingRequestMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUScreenSharingRequestMetadata

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", v4];

  v5 = [(TUScreenSharingRequestMetadata *)self appName];
  [v3 appendFormat:@" appName=%@", v5];

  v6 = [(TUScreenSharingRequestMetadata *)self sceneID];
  [v3 appendFormat:@" sceneID=%@", v6];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUScreenSharingRequestMetadata *)self isEqualToScreenSharingRequestMetadata:v4];

  return v5;
}

- (BOOL)isEqualToScreenSharingRequestMetadata:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUScreenSharingRequestMetadata *)self appName];
    v8 = [v4 appName];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUScreenSharingRequestMetadata *)self sceneID];
      v10 = [v4 sceneID];
      v11 = TUObjectsAreEqualOrNil(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(TUScreenSharingRequestMetadata *)self appName];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUScreenSharingRequestMetadata *)self sceneID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:v5];

  v6 = [(TUScreenSharingRequestMetadata *)self appName];
  [v4 setAppName:v6];

  v7 = [(TUScreenSharingRequestMetadata *)self sceneID];
  [v4 setSceneID:v7];

  return v4;
}

- (TUScreenSharingRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v7;

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_appName);
  v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
  appName = self->_appName;
  self->_appName = v11;

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_sceneID);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  sceneID = self->_sceneID;
  self->_sceneID = v15;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUScreenSharingRequestMetadata *)self appName];
  v8 = NSStringFromSelector(sel_appName);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUScreenSharingRequestMetadata *)self sceneID];
  v9 = NSStringFromSelector(sel_sceneID);
  [v4 encodeObject:v10 forKey:v9];
}

@end