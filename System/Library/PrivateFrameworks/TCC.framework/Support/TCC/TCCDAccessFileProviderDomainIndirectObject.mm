@interface TCCDAccessFileProviderDomainIndirectObject
- (TCCDAccessFileProviderDomainIndirectObject)initWithFileProviderDomainID:(id)a3;
- (id)description;
@end

@implementation TCCDAccessFileProviderDomainIndirectObject

- (TCCDAccessFileProviderDomainIndirectObject)initWithFileProviderDomainID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TCCDAccessFileProviderDomainIndirectObject;
  v6 = [(TCCDAccessIndirectObject *)&v9 initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileProviderDomainID, a3);
  }

  return v7;
}

- (id)description
{
  v2 = [(NSString *)self->_fileProviderDomainID copy];

  return v2;
}

@end