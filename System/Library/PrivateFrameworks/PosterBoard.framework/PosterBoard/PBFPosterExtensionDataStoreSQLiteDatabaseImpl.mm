@interface PBFPosterExtensionDataStoreSQLiteDatabaseImpl
@end

@implementation PBFPosterExtensionDataStoreSQLiteDatabaseImpl

void __76___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_validateDatabaseWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringForKey:@"tbl_name"];
  [v2 addObject:v3];
}

void __76___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_validateDatabaseWithError___block_invoke_250(uint64_t a1, void *a2)
{
  v3 = [a2 stringForKey:@"value"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __77___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_dataStoreMetadataWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v10;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 stringForKey:@"value"];
  v9 = [v10 stringForKey:@"key"];
  [v4 setObject:v8 forKey:v9];
}

void __75___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_roleIdentifiersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v9;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 objectForKey:@"roleIdentifier"];
  [v4 addObject:v8];
}

void __84___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_extensionIdentifiersForRole_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v9;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 objectForKey:@"providerId"];
  [v4 addObject:v8];
}

void __93___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributeIdentifiersForPoster_roleId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v9;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 objectForKey:@"attributeIdentifier"];
  [v4 addObject:v8];
}

void __95___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_posterUUIDsForExtensionIdentifier_role_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v10 objectForKey:@"UUID"];
  v9 = [v7 initWithUUIDString:v8];
  [v3 addObject:v9];
}

void __89___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_extensionIdentifierForPosterUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringForKey:@"providerId"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __81___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_sortedPosterUUIDsForRole_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v10 objectForKey:@"posterUUID"];
  v9 = [v7 initWithUUIDString:v8];
  [v3 addObject:v9];
}

void __87___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_roleDisplayNamesForIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v10;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v3 stringForKey:@"displayName"];
  v9 = [v10 stringForKey:@"roleIdentifier"];
  [v4 setObject:v8 forKey:v9];
}

void __88___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_checkIfPosterUUIDs_belongToRole_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  [v2 addObject:v3];
}

void __88___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_checkIfPosterUUIDs_belongToRole_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringForKey:@"posterUUID"];
  [v2 addObject:v3];
}

void __82___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_selectedPosterUUIDForRole_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 stringForKey:@"posterUUID"];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __94___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributeForPoster_roleId_attributeId_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dataForKey:@"attributePayload"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __104___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_attributesForPoster_roleId_attributeIdentifiers_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 dataForKey:@"attributePayload"];
  v4 = [v3 stringForKey:@"attributeIdentifier"];

  if (v4 && v9)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 setObject:v9 forKeyedSubscript:v4];
  }
}

uint64_t __79___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_mutateSortOrder_roleId_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 UUIDString];
  v6 = [v4 UUIDString];

  v7 = [v5 compare:v6];
  return v7;
}

void __79___PBFPosterExtensionDataStoreSQLiteDatabaseImpl_mutateSortOrder_roleId_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v16[3] = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 16);
  v8 = a2;
  v9 = [v7 prepareStatement:@"UPDATE posterRoleMembership SET roleSortKey = :roleSortKey WHERE posterUUID = :posterUUID AND roleId = :roleId"];;
  v16[0] = *(v6 + 40);
  v15[0] = @":roleId";
  v15[1] = @":posterUUID";
  v10 = [v8 UUIDString];

  v16[1] = v10;
  v15[2] = @":roleSortKey";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 + 1];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13 = *(*(v6 + 48) + 8);
  obj = 0;
  LOBYTE(v6) = [v9 executeWithBindings:v12 resultRowHandler:0 error:&obj];
  objc_storeStrong((v13 + 40), obj);

  if ((v6 & 1) == 0)
  {
    *a4 = 1;
  }
}

@end