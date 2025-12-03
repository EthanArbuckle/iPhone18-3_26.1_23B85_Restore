@interface UPModelIdentifier
- (BOOL)isEqual:(id)equal;
- (UPModelIdentifier)initWithAppBundleId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UPModelIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  uuid = [equalCopy uuid];
  if ([uuid isEqual:self->_uuid])
  {
    appBundleId = [equalCopy appBundleId];
    v7 = [appBundleId isEqualToString:self->_appBundleId];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[UPModelIdentifier allocWithZone:](UPModelIdentifier init];
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [(NSString *)self->_appBundleId copyWithZone:zone];
  appBundleId = v5->_appBundleId;
  v5->_appBundleId = v8;

  return v5;
}

- (UPModelIdentifier)initWithAppBundleId:(id)id
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = UPModelIdentifier;
  v6 = [(UPModelIdentifier *)&v10 init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    objc_storeStrong(&v6->_appBundleId, id);
  }

  return v6;
}

@end