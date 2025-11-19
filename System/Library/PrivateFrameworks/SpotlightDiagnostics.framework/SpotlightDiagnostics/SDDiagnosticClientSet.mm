@interface SDDiagnosticClientSet
+ (id)nonPrivateCoreSpotlightClientsForUser:(unsigned int)a3 bundleID:(id)a4 protectionClass:(id)a5;
- (SDDiagnosticClientSet)initWithDefaultClients:(id)a3 privateClients:(id)a4 managedClients:(id)a5;
- (id)debugDescription;
- (void)enumerateCoreSpotlightClientsWithDefaultBlock:(id)a3 privateBlock:(id)a4 managedBlock:(id)a5 completion:(id)a6;
@end

@implementation SDDiagnosticClientSet

- (SDDiagnosticClientSet)initWithDefaultClients:(id)a3 privateClients:(id)a4 managedClients:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SDDiagnosticClientSet;
  v12 = [(SDDiagnosticClientSet *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaultClients, a3);
    objc_storeStrong(&v13->_privateClients, a4);
    objc_storeStrong(&v13->_managedClients, a5);
  }

  return v13;
}

+ (id)nonPrivateCoreSpotlightClientsForUser:(unsigned int)a3 bundleID:(id)a4 protectionClass:(id)a5
{
  v12[1] = *MEMORY[0x29EDCA608];
  v5 = [SDCoreSpotlightDiagnosticClient defaultClientWithBundleID:a4 protectionClass:a5];
  v6 = [SDDiagnosticClientSet alloc];
  v12[0] = v5;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  if ([0 count])
  {
    v8 = [0 allObjects];
    v9 = [(SDDiagnosticClientSet *)v6 initWithDefaultClients:v7 privateClients:0 managedClients:v8];
  }

  else
  {
    v9 = [(SDDiagnosticClientSet *)v6 initWithDefaultClients:v7 privateClients:0 managedClients:0];
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (void)enumerateCoreSpotlightClientsWithDefaultBlock:(id)a3 privateBlock:(id)a4 managedBlock:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  defaultClients = self->_defaultClients;
  if (defaultClients)
  {
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke;
    v21[3] = &unk_29F385878;
    v22 = v10;
    [(NSArray *)defaultClients enumerateObjectsUsingBlock:v21];
  }

  managedClients = self->_managedClients;
  if (managedClients)
  {
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke_2;
    v19[3] = &unk_29F385878;
    v20 = v12;
    [(NSArray *)managedClients enumerateObjectsUsingBlock:v19];
  }

  privateClients = self->_privateClients;
  if (privateClients)
  {
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __108__SDDiagnosticClientSet_enumerateCoreSpotlightClientsWithDefaultBlock_privateBlock_managedBlock_completion___block_invoke_3;
    v17[3] = &unk_29F385878;
    v18 = v11;
    [(NSArray *)privateClients enumerateObjectsUsingBlock:v17];
  }

  if (v13)
  {
    v13[2](v13);
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