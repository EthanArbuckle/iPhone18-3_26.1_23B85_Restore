@interface UPModelIdentifier
- (BOOL)isEqual:(id)a3;
- (UPModelIdentifier)initWithAppBundleId:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UPModelIdentifier

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  if ([v5 isEqual:self->_uuid])
  {
    v6 = [v4 appBundleId];
    v7 = [v6 isEqualToString:self->_appBundleId];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[UPModelIdentifier allocWithZone:](UPModelIdentifier init];
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [(NSString *)self->_appBundleId copyWithZone:a3];
  appBundleId = v5->_appBundleId;
  v5->_appBundleId = v8;

  return v5;
}

- (UPModelIdentifier)initWithAppBundleId:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UPModelIdentifier;
  v6 = [(UPModelIdentifier *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    objc_storeStrong(&v6->_appBundleId, a3);
  }

  return v6;
}

@end