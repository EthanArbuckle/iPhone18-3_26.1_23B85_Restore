@interface TCCDAccessFileProviderDomainIndirectObject
- (TCCDAccessFileProviderDomainIndirectObject)initWithFileProviderDomainID:(id)d;
- (id)description;
@end

@implementation TCCDAccessFileProviderDomainIndirectObject

- (TCCDAccessFileProviderDomainIndirectObject)initWithFileProviderDomainID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TCCDAccessFileProviderDomainIndirectObject;
  v6 = [(TCCDAccessIndirectObject *)&v9 initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileProviderDomainID, d);
  }

  return v7;
}

- (id)description
{
  v2 = [(NSString *)self->_fileProviderDomainID copy];

  return v2;
}

@end