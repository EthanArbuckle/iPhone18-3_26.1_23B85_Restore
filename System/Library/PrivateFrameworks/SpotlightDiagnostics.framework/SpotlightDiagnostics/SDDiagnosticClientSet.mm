@interface SDDiagnosticClientSet
+ (id)nonPrivateCoreSpotlightClientsForUser:(unsigned int)user bundleID:(id)d protectionClass:(id)class;
- (SDDiagnosticClientSet)initWithDefaultClients:(id)clients privateClients:(id)privateClients managedClients:(id)managedClients;
- (id)debugDescription;
- (void)enumerateCoreSpotlightClientsWithDefaultBlock:(id)block privateBlock:(id)privateBlock managedBlock:(id)managedBlock completion:(id)completion;
@end

@implementation SDDiagnosticClientSet

- (SDDiagnosticClientSet)initWithDefaultClients:(id)clients privateClients:(id)privateClients managedClients:(id)managedClients
{
  clientsCopy = clients;
  privateClientsCopy = privateClients;
  managedClientsCopy = managedClients;
  v15.receiver = self;
  v15.super_class = SDDiagnosticClientSet;
  v12 = [(SDDiagnosticClientSet *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaultClients, clients);
    objc_storeStrong(&v13->_privateClients, privateClients);
    objc_storeStrong(&v13->_managedClients, managedClients);
  }

  return v13;
}

+ (id)nonPrivateCoreSpotlightClientsForUser:(unsigned int)user bundleID:(id)d protectionClass:(id)class
{
  v12[1] = *MEMORY[0x29EDCA608];
  v5 = [SDCoreSpotlightDiagnosticClient defaultClientWithBundleID:d protectionClass:class];
  v6 = [SDDiagnosticClientSet alloc];
  v12[0] = v5;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  if ([0 count])
  {
    allObjects = [0 allObjects];
    v9 = [(SDDiagnosticClientSet *)v6 initWithDefaultClients:v7 privateClients:0 managedClients:allObjects];
  }

  else
  {
    v9 = [(SDDiagnosticClientSet *)v6 initWithDefaultClients:v7 privateClients:0 managedClients:0];
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (void)enumerateCoreSpotlightClientsWithDefaultBlock:(id)block privateBlock:(id)privateBlock managedBlock:(id)managedBlock completion:(id)completion
{
  blockCopy = block;
  privateBlockCopy = privateBlock;
  managedBlockCopy = managedBlock;
  completionCopy = completion;
  defaultClients = self->_defaultClients;
  if (defaultClients)
  {
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke;
    v21[3] = &unk_29F385878;
    v22 = blockCopy;
    [(NSArray *)defaultClients enumerateObjectsUsingBlock:v21];
  }

  managedClients = self->_managedClients;
  if (managedClients)
  {
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke_2;
    v19[3] = &unk_29F385878;
    v20 = managedBlockCopy;
    [(NSArray *)managedClients enumerateObjectsUsingBlock:v19];
  }

  privateClients = self->_privateClients;
  if (privateClients)
  {
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke_3;
    v17[3] = &unk_29F385878;
    v18 = privateBlockCopy;
    [(NSArray *)privateClients enumerateObjectsUsingBlock:v17];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  [v3 appendFormat:@"<SDDiagnosticClientSet>\n"];
  if (self->_defaultClients)
  {
    [v3 appendFormat:@"_defaultClients:\n"];
    defaultClients = self->_defaultClients;
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __41__SDDiagnosticClientSet_debugDescription__block_invoke;
    v13[3] = &unk_29F3858A0;
    v14 = v3;
    [(NSArray *)defaultClients enumerateObjectsUsingBlock:v13];
  }

  if (self->_managedClients)
  {
    [v3 appendFormat:@"_managedClients:\n"];
    managedClients = self->_managedClients;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __41__SDDiagnosticClientSet_debugDescription__block_invoke_2;
    v11[3] = &unk_29F3858A0;
    v12 = v3;
    [(NSArray *)managedClients enumerateObjectsUsingBlock:v11];
  }

  if (self->_privateClients)
  {
    [v3 appendFormat:@"_privateClients:\n"];
    privateClients = self->_privateClients;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __41__SDDiagnosticClientSet_debugDescription__block_invoke_3;
    v9[3] = &unk_29F3858A0;
    v10 = v3;
    [(NSArray *)privateClients enumerateObjectsUsingBlock:v9];
  }

  v7 = [v3 copy];

  return v7;
}

void __41__SDDiagnosticClientSet_debugDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 debugDescription];
  [v4 appendFormat:@"\t%lu: %@\n", a3, v5];
}

void __41__SDDiagnosticClientSet_debugDescription__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 debugDescription];
  [v4 appendFormat:@"\t%lu: %@\n", a3, v5];
}

void __41__SDDiagnosticClientSet_debugDescription__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 debugDescription];
  [v4 appendFormat:@"\t%lu: %@\n", a3, v5];
}

@end