@interface MBContainer
+ (id)containerWithPropertyList:(id)a3 volumeMountPoint:(id)a4;
+ (id)uninstalledContainerWithDomainName:(id)a3 volumeMountPoint:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSafeHarbor;
- (MBContainer)initWithPropertyList:(id)a3 volumeMountPoint:(id)a4;
- (NSString)safeHarborDir;
- (id)copyWithVolumeMountPoint:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListForBackupProperties;
- (int)containerType;
- (unint64_t)hash;
@end

@implementation MBContainer

+ (id)uninstalledContainerWithDomainName:(id)a3 volumeMountPoint:(id)a4
{
  v13[0] = kCFBundleIdentifierKey;
  v5 = a4;
  v6 = a3;
  v7 = [MBDomain containerIDWithName:v6];
  v13[1] = @"ContainerContentClass";
  v14[0] = v7;
  v8 = [MBDomain containerTypeWithName:v6];

  if (v8 - 1 > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1000FDA78[v8 - 1];
  }

  v14[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [MBContainer containerWithPropertyList:v10 volumeMountPoint:v5];

  return v11;
}

+ (id)containerWithPropertyList:(id)a3 volumeMountPoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"ContainerContentClass"];
  v8 = sub_100038870(v7);

  v9 = [objc_alloc(*off_1000FDAA0[v8]) initWithPropertyList:v5 volumeMountPoint:v6];

  return v9;
}

- (MBContainer)initWithPropertyList:(id)a3 volumeMountPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MBContainer;
  v8 = [(MBContainer *)&v12 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    plist = v8->_plist;
    v8->_plist = v9;

    objc_storeStrong(&v8->_volumeMountPoint, a4);
  }

  return v8;
}

- (id)copyWithVolumeMountPoint:(id)a3
{
  v4 = a3;
  v5 = [(MBContainer *)self copy];
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (BOOL)isSafeHarbor
{
  v2 = [(MBContainer *)self datePlacedInSafeHarbor];
  v3 = v2 != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableDictionary *)self->_plist mutableCopyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  objc_storeStrong(v5 + 2, self->_volumeMountPoint);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(MBContainer *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MBContainer *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (int)containerType
{
  v2 = [(MBContainer *)self containerTypeString];
  v3 = sub_100038870(v2);

  return v3;
}

- (NSString)safeHarborDir
{
  if (![(MBContainer *)self isSafeHarbor])
  {
    sub_10009DB10(a2, self);
  }

  v4 = [(MBContainer *)self containerDir];
  v5 = [v4 stringByDeletingLastPathComponent];

  return v5;
}

- (id)propertyListForBackupProperties
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_plist;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_plist objectForKeyedSubscript:v9, v12];
        if (qword_10011E378 != -1)
        {
          sub_10009DB84();
        }

        if ([qword_10011E370 containsObject:v9])
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end