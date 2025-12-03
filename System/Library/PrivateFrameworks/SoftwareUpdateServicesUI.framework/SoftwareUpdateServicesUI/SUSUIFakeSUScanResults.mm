@interface SUSUIFakeSUScanResults
- (SUSUIFakeSUScanResults)init;
- (id)fakeAlternateDescriptor;
- (id)fakePreferredDescriptor;
@end

@implementation SUSUIFakeSUScanResults

- (SUSUIFakeSUScanResults)init
{
  selfCopy = self;
  v8 = a2;
  fakePreferredDescriptor = [(SUSUIFakeSUScanResults *)self fakePreferredDescriptor];
  fakeAlternateDescriptor = [(SUSUIFakeSUScanResults *)selfCopy fakeAlternateDescriptor];
  selfCopy = 0;
  v7.receiver = self;
  v7.super_class = SUSUIFakeSUScanResults;
  selfCopy = [(SUScanResults *)&v7 initWithPreferredDescriptor:fakePreferredDescriptor alternateDescriptor:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](fakeAlternateDescriptor);
  MEMORY[0x277D82BD8](fakePreferredDescriptor);
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)fakePreferredDescriptor
{
  v2 = objc_alloc_init(SUSUIFakeSUDescriptor);

  return v2;
}

- (id)fakeAlternateDescriptor
{
  v2 = objc_alloc_init(SUSUIFakeSUDescriptor);

  return v2;
}

@end