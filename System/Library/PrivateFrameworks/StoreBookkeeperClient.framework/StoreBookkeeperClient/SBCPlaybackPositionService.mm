@interface SBCPlaybackPositionService
+ (id)serviceForSyncDomain:(id)domain;
+ (id)serviceForValueDomain:(id)domain;
- (SBCPlaybackPositionService)initWithPlaybackPositionDomain:(id)domain;
- (void)deletePlaybackPositionEntities;
- (void)deletePlaybackPositionEntity:(id)entity;
- (void)pullLocalPlaybackPositionForEntityIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)pullPlaybackPositionEntity:(id)entity completionBlock:(id)block;
- (void)pushPlaybackPositionEntity:(id)entity completionBlock:(id)block;
- (void)synchronizeImmediatelyWithCompletionHandler:(id)handler;
- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)entity;
@end

@implementation SBCPlaybackPositionService

- (void)pushPlaybackPositionEntity:(id)entity completionBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277D7FBB0];
  entityCopy = entity;
  sharedService = [v7 sharedService];
  iTunesCloudEntity = [entityCopy iTunesCloudEntity];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBCPlaybackPositionService_pushPlaybackPositionEntity_completionBlock___block_invoke;
  v12[3] = &unk_279D24DE0;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [sharedService pushPlaybackPositionEntity:iTunesCloudEntity completionBlock:v12];
}

void __73__SBCPlaybackPositionService_pushPlaybackPositionEntity_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.StoreBookkeeperClient", "Default");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v7 msv_description];
      v17 = 138544130;
      v18 = v11;
      v19 = 1024;
      v20 = a2;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ pushPlaybackPositionEntity completed. success=%{BOOL}u entity=%{public}@ error=%{public}@", &v17, 0x26u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v17 = 138543874;
    v18 = v13;
    v19 = 1024;
    v20 = a2;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ pushPlaybackPositionEntity completed. success=%{BOOL}u entity=%{public}@", &v17, 0x1Cu);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = [v8 sbcEntity];
    (*(v14 + 16))(v14, a2, v7, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)pullPlaybackPositionEntity:(id)entity completionBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277D7FBB0];
  entityCopy = entity;
  sharedService = [v7 sharedService];
  iTunesCloudEntity = [entityCopy iTunesCloudEntity];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBCPlaybackPositionService_pullPlaybackPositionEntity_completionBlock___block_invoke;
  v12[3] = &unk_279D24DE0;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [sharedService pullPlaybackPositionEntity:iTunesCloudEntity completionBlock:v12];
}

void __73__SBCPlaybackPositionService_pullPlaybackPositionEntity_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.StoreBookkeeperClient", "Default");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v7 msv_description];
      v17 = 138544130;
      v18 = v11;
      v19 = 1024;
      v20 = a2;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ pullPlaybackPositionEntity completed. success=%{BOOL}u entity=%{public}@ error=%{public}@", &v17, 0x26u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v17 = 138543874;
    v18 = v13;
    v19 = 1024;
    v20 = a2;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ pullPlaybackPositionEntity completed. success=%{BOOL}u entity=%{public}@", &v17, 0x1Cu);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = [v8 sbcEntity];
    (*(v14 + 16))(v14, a2, v7, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)pullLocalPlaybackPositionForEntityIdentifiers:(id)identifiers completionBlock:(id)block
{
  blockCopy = block;
  v7 = MEMORY[0x277D7FBB0];
  identifiersCopy = identifiers;
  sharedService = [v7 sharedService];
  domainIdentifier = [(SBCPlaybackPositionDomain *)self->_playbackPositionDomain domainIdentifier];
  autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  libraryUID = [autoupdatingSharedLibrary libraryUID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__SBCPlaybackPositionService_pullLocalPlaybackPositionForEntityIdentifiers_completionBlock___block_invoke;
  v14[3] = &unk_279D24DB8;
  v14[4] = self;
  v15 = blockCopy;
  v13 = blockCopy;
  [sharedService getLocalPlaybackPositionForEntityIdentifiers:identifiersCopy forDomain:domainIdentifier fromLibraryWithIdentifier:libraryUID completionBlock:v14];
}

void __92__SBCPlaybackPositionService_pullLocalPlaybackPositionForEntityIdentifiers_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.StoreBookkeeperClient", "Default");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v8 count];
      v13 = [v7 msv_description];
      *buf = 138544130;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 1024;
      v26 = a2;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ pullLocalPlaybackPositionForEntityIdentifiers completed with %lu entities. success=%{BOOL}u error=%{public}@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138543874;
    v22 = v14;
    v23 = 2048;
    v24 = [v8 count];
    v25 = 1024;
    v26 = a2;
    _os_log_impl(&dword_26BC4C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ pullLocalPlaybackPositionForEntityIdentifiers completed with %lu entities. success=%{BOOL}u", buf, 0x1Cu);
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__SBCPlaybackPositionService_pullLocalPlaybackPositionForEntityIdentifiers_completionBlock___block_invoke_7;
  v19[3] = &unk_279D24D90;
  v16 = v15;
  v20 = v16;
  [v8 enumerateObjectsUsingBlock:v19];
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v7, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__SBCPlaybackPositionService_pullLocalPlaybackPositionForEntityIdentifiers_completionBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sbcEntity];
  [v2 addObject:v3];
}

- (void)synchronizeImmediatelyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277D7FBB0] = [MEMORY[0x277D7FBB0] sharedService];
  autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  libraryUID = [autoupdatingSharedLibrary libraryUID];
  domainIdentifier = [(SBCPlaybackPositionDomain *)self->_playbackPositionDomain domainIdentifier];
  [mEMORY[0x277D7FBB0] synchronizePlaybackPositionsForLibraryWithIdentifier:libraryUID forDomain:domainIdentifier isCheckpoint:0];

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
    v8 = handlerCopy;
  }
}

- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)entity
{
  v3 = MEMORY[0x277D7FBB0];
  entityCopy = entity;
  sharedService = [v3 sharedService];
  iTunesCloudEntity = [entityCopy iTunesCloudEntity];

  [sharedService updateForeignDatabaseWithValuesFromPlaybackPositionEntity:iTunesCloudEntity];
}

- (void)deletePlaybackPositionEntities
{
  mEMORY[0x277D7FBB0] = [MEMORY[0x277D7FBB0] sharedService];
  autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
  libraryUID = [autoupdatingSharedLibrary libraryUID];
  [mEMORY[0x277D7FBB0] deletePlaybackPositionEntitiesFromLibraryWithIdentifier:libraryUID];
}

- (void)deletePlaybackPositionEntity:(id)entity
{
  v3 = MEMORY[0x277D7FBB0];
  entityCopy = entity;
  sharedService = [v3 sharedService];
  iTunesCloudEntity = [entityCopy iTunesCloudEntity];

  [sharedService deletePlaybackPositionEntity:iTunesCloudEntity];
}

void __89__SBCPlaybackPositionService_persistPlaybackPositionEntity_isCheckpoint_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.StoreBookkeeperClient", "Default");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      v13 = 138543874;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_26BC4C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ persistPlaybackPositionEntity completed. success=%{BOOL}u error=%{public}@", &v13, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138543618;
    v14 = v10;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_26BC4C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ persistPlaybackPositionEntity completed. success=%{BOOL}u", &v13, 0x12u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (SBCPlaybackPositionService)initWithPlaybackPositionDomain:(id)domain
{
  domainCopy = domain;
  v6 = [[SBCClientConfiguration alloc] initWithPlaybackPositionDomain:domainCopy];
  v10.receiver = self;
  v10.super_class = SBCPlaybackPositionService;
  v7 = [(SBCXPCService *)&v10 initWithClientConfiguration:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_playbackPositionDomain, domain);
  }

  return v8;
}

+ (id)serviceForValueDomain:(id)domain
{
  domainCopy = domain;
  v4 = [(SBCPlaybackPositionService *)[SBCPlaybackPositionValueService alloc] initWithPlaybackPositionDomain:domainCopy];

  return v4;
}

+ (id)serviceForSyncDomain:(id)domain
{
  domainCopy = domain;
  v4 = [(SBCPlaybackPositionService *)[SBCPlaybackPositionSyncService alloc] initWithPlaybackPositionDomain:domainCopy];

  return v4;
}

@end