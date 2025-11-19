@interface SUSUIFakeSURollbackDescriptor
- (SUSUIFakeSURollbackDescriptor)init;
@end

@implementation SUSUIFakeSURollbackDescriptor

- (SUSUIFakeSURollbackDescriptor)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = SUSUIFakeSURollbackDescriptor;
  v6 = [(SURollbackDescriptor *)&v4 init];
  objc_storeStrong(&v6, v6);
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end