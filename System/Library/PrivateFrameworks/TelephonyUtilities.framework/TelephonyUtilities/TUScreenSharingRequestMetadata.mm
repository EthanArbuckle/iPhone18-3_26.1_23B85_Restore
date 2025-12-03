@interface TUScreenSharingRequestMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScreenSharingRequestMetadata:(id)metadata;
- (TUScreenSharingRequestMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUScreenSharingRequestMetadata

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  bundleIdentifier = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", bundleIdentifier];

  appName = [(TUScreenSharingRequestMetadata *)self appName];
  [v3 appendFormat:@" appName=%@", appName];

  sceneID = [(TUScreenSharingRequestMetadata *)self sceneID];
  [v3 appendFormat:@" sceneID=%@", sceneID];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUScreenSharingRequestMetadata *)self isEqualToScreenSharingRequestMetadata:equalCopy];

  return v5;
}

- (BOOL)isEqualToScreenSharingRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  bundleIdentifier = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  bundleIdentifier2 = [metadataCopy bundleIdentifier];
  if (TUObjectsAreEqualOrNil(bundleIdentifier, bundleIdentifier2))
  {
    appName = [(TUScreenSharingRequestMetadata *)self appName];
    appName2 = [metadataCopy appName];
    if (TUObjectsAreEqualOrNil(appName, appName2))
    {
      sceneID = [(TUScreenSharingRequestMetadata *)self sceneID];
      sceneID2 = [metadataCopy sceneID];
      v11 = TUObjectsAreEqualOrNil(sceneID, sceneID2);
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
  bundleIdentifier = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  appName = [(TUScreenSharingRequestMetadata *)self appName];
  v6 = [appName hash] ^ v4;
  sceneID = [(TUScreenSharingRequestMetadata *)self sceneID];
  v8 = [sceneID hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleIdentifier = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  appName = [(TUScreenSharingRequestMetadata *)self appName];
  [v4 setAppName:appName];

  sceneID = [(TUScreenSharingRequestMetadata *)self sceneID];
  [v4 setSceneID:sceneID];

  return v4;
}

- (TUScreenSharingRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v7;

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_appName);
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
  appName = self->_appName;
  self->_appName = v11;

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_sceneID);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  sceneID = self->_sceneID;
  self->_sceneID = v15;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(TUScreenSharingRequestMetadata *)self bundleIdentifier];
  v6 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v6];

  appName = [(TUScreenSharingRequestMetadata *)self appName];
  v8 = NSStringFromSelector(sel_appName);
  [coderCopy encodeObject:appName forKey:v8];

  sceneID = [(TUScreenSharingRequestMetadata *)self sceneID];
  v9 = NSStringFromSelector(sel_sceneID);
  [coderCopy encodeObject:sceneID forKey:v9];
}

@end