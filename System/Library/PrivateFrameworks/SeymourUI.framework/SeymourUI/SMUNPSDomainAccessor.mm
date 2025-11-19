@interface SMUNPSDomainAccessor
- (SMUNPSDomainAccessor)initWithDomain:(id)a3;
@end

@implementation SMUNPSDomainAccessor

- (SMUNPSDomainAccessor)initWithDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SMUNPSDomainAccessor;
  v5 = [(SMUNPSDomainAccessor *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v4];
    domainAccessor = v5->_domainAccessor;
    v5->_domainAccessor = v6;
  }

  return v5;
}

@end