@interface SUSUIFakeSUScanResults
- (SUSUIFakeSUScanResults)init;
- (id)fakeAlternateDescriptor;
- (id)fakePreferredDescriptor;
@end

@implementation SUSUIFakeSUScanResults

- (SUSUIFakeSUScanResults)init
{
  v9 = self;
  v8 = a2;
  v5 = [(SUSUIFakeSUScanResults *)self fakePreferredDescriptor];
  v4 = [(SUSUIFakeSUScanResults *)v9 fakeAlternateDescriptor];
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUSUIFakeSUScanResults;
  v9 = [(SUScanResults *)&v7 initWithPreferredDescriptor:v5 alternateDescriptor:?];
  objc_storeStrong(&v9, v9);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
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