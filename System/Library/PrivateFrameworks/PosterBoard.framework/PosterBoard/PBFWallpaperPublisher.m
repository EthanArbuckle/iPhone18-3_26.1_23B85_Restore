@interface PBFWallpaperPublisher
- (BOOL)_updatePath:(id)a3 addingIfNotExists:(BOOL)a4;
- (PBFWallpaperPublisher)init;
- (unint64_t)_update;
- (void)_compact;
- (void)_updateSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6;
- (void)activateWithSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6 recentlyChanged:(BOOL)a7;
- (void)updateHomePath:(id)a3 matchingLockPath:(id)a4;
- (void)updatePath:(id)a3;
- (void)updateSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6;
@end

@implementation PBFWallpaperPublisher

- (PBFWallpaperPublisher)init
{
  v10.receiver = self;
  v10.super_class = PBFWallpaperPublisher;
  v2 = [(PBFWallpaperPublisher *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    wallpaperPublisher = v2->_wallpaperPublisher;
    v2->_wallpaperPublisher = v3;

    [(PRSWallpaperPublisher *)v2->_wallpaperPublisher setDelegate:v2];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    pathsByUUID = v2->_pathsByUUID;
    v2->_pathsByUUID = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    isPairedByUUID = v2->_isPairedByUUID;
    v2->_isPairedByUUID = v7;
  }

  return v2;
}

- (BOOL)_updatePath:(id)a3 addingIfNotExists:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    [PBFWallpaperPublisher _updatePath:a2 addingIfNotExists:?];
  }

  v8 = v7;
  v9 = [v7 identity];
  v10 = [v9 posterUUID];
  v11 = [(NSMutableDictionary *)self->_pathsByUUID objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 identity];
    v4 = [v9 isNewerVersionOfIdentity:v13];
    if (v4)
    {
      [(NSMutableDictionary *)self->_pathsByUUID setObject:v8 forKey:v10];
      [(NSMutableDictionary *)self->_isPairedByUUID removeObjectForKey:v10];
    }
  }

  else if (v4)
  {
    [(NSMutableDictionary *)self->_pathsByUUID setObject:v8 forKey:v10];
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)_compact
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(NSMutableDictionary *)self->_pathsByUUID allKeys];
  v15 = [v3 setWithArray:v4];

  v5 = MEMORY[0x277CBEB58];
  v6 = [(NSMutableDictionary *)self->_isPairedByUUID allKeys];
  v7 = [v5 setWithArray:v6];

  for (i = 0; i != 4; ++i)
  {
    v9 = [(PFServerPosterPath *)self->_paths[i] identity];
    v10 = [v9 posterUUID];

    [v15 removeObject:v10];
    [v7 removeObject:v10];
  }

  pathsByUUID = self->_pathsByUUID;
  v12 = [v15 allObjects];
  [(NSMutableDictionary *)pathsByUUID removeObjectsForKeys:v12];

  isPairedByUUID = self->_isPairedByUUID;
  v14 = [v7 allObjects];
  [(NSMutableDictionary *)isPairedByUUID removeObjectsForKeys:v14];
}

- (void)_updateSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = v10;
  v32 = v31;
  v30 = v11;
  v33 = v30;
  v29 = v12;
  v34 = v29;
  v14 = v13;
  v15 = 0;
  v16 = 0;
  v35 = v14;
  do
  {
    v17 = *(&v32 + v15);
    if (v17)
    {
      v16 |= [(PBFWallpaperPublisher *)self _updatePath:v17 addingIfNotExists:1, v29, v30, v31, v32, v33, v34, v35, v36];
    }

    v15 += 8;
  }

  while (v15 != 32);
  v18 = 0;
  paths = self->_paths;
  do
  {
    v20 = *(&v32 + v18 * 8);
    pathsByUUID = self->_pathsByUUID;
    if (v20)
    {
      v22 = [*(&v32 + v18 * 8) identity];
      v23 = [v22 posterUUID];
      v24 = [(NSMutableDictionary *)pathsByUUID objectForKey:v23];
    }

    else
    {
      v22 = [(PFServerPosterPath *)self->_paths[v18] identity];
      v23 = [v22 posterUUID];
      v24 = [(NSMutableDictionary *)pathsByUUID objectForKey:v23];
    }

    *(&v32 + v18 * 8) = v24;
    ++v18;
  }

  while (v18 != 4);
  v25 = 0;
  v26 = 0;
  do
  {
    v27 = *(&v32 + v25);
    if (*paths != v27)
    {
      v26 |= PRSWallpaperObserverLocationsFromIndex();
      objc_storeStrong(paths, v27);
    }

    ++v25;
    ++paths;
  }

  while (v25 != 4);
  if (v16)
  {
    [(PBFWallpaperPublisher *)self _compact];
  }

  if (v26 && [(PBFWallpaperPublisher *)self _update])
  {
    [(PRSWallpaperPublisher *)self->_wallpaperPublisher updatePaths:self->_lastSentPaths];
  }

  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (unint64_t)_update
{
  v2 = 0;
  v3 = 0;
  v29 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  lastSentPaths = self->_lastSentPaths;
  do
  {
    v6 = PRSWallpaperObserverLocationsLockIndexIfHomeIndex();
    if (PRSWallpaperObserverLocationsIndexIsValid())
    {
      v7 = paths[v6];
      v8 = [(PFServerPosterPath *)v7 identity];
      v9 = [v8 posterUUID];

      v10 = [(NSMutableDictionary *)self->_isPairedByUUID objectForKey:v9];
      if (!v10)
      {
        v20 = 0;
        v11 = [MEMORY[0x277D3EDE8] loadHomeScreenConfigurationForPath:v7 error:&v20];
        v12 = v20;
        if (v12)
        {
          v13 = PRSLogObserver();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            v18 = NSStringFromClass(v15);
            v17 = [(PFServerPosterPath *)v7 identity];
            *buf = 138544130;
            v22 = v18;
            v23 = 2048;
            v24 = self;
            v25 = 2112;
            v26 = v17;
            v27 = 2114;
            v28 = v12;
            _os_log_error_impl(&dword_21B526000, v13, OS_LOG_TYPE_ERROR, "<%{public}@:%p> failed to load homeConfig for %@ with error: %{public}@", buf, 0x2Au);
          }
        }

        v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "selectedAppearanceType", v17) == 3}];
        [(NSMutableDictionary *)self->_isPairedByUUID setObject:v10 forKey:v9];
      }

      if ([v10 BOOLValue])
      {
        v14 = v2;
      }

      else
      {
        v14 = v6;
      }
    }

    else
    {
      v14 = v2;
    }

    if (*lastSentPaths != paths[v14])
    {
      v3 |= PRSWallpaperObserverLocationsFromIndex();
      objc_storeStrong(lastSentPaths, paths[v14]);
    }

    ++v2;
    ++lastSentPaths;
  }

  while (v2 != 4);
  return v3;
}

- (void)activateWithSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6 recentlyChanged:(BOOL)a7
{
  v40 = a7;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    [PBFWallpaperPublisher activateWithSelectedLockPath:a2 selectedHomePath:? activeLockPath:? activeHomePath:? recentlyChanged:?];
  }

  if (!v13)
  {
    [PBFWallpaperPublisher activateWithSelectedLockPath:a2 selectedHomePath:? activeLockPath:? activeHomePath:? recentlyChanged:?];
  }

  if (!v14)
  {
    [PBFWallpaperPublisher activateWithSelectedLockPath:a2 selectedHomePath:? activeLockPath:? activeHomePath:? recentlyChanged:?];
  }

  v16 = v15;
  if (!v15)
  {
    [PBFWallpaperPublisher activateWithSelectedLockPath:a2 selectedHomePath:? activeLockPath:? activeHomePath:? recentlyChanged:?];
  }

  v17 = PRSLogObserver();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = PRSWallpaperObserverLocationsDescription();
    v21 = [v12 identity];
    v22 = [v13 identity];
    [v14 identity];
    v23 = v38 = v14;
    [v16 identity];
    v24 = v39 = v16;
    *buf = 138544898;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v42 = v20;
    v43 = 2114;
    v44 = v21;
    v45 = 2114;
    v46 = v22;
    v47 = 2114;
    v48 = v23;
    v49 = 2114;
    v50 = v24;
    _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> received activation with recentlyChanged=(%{public}@) {\n\tsl=%{public}@\n\tsh=%{public}@\n\tal=%{public}@\n\tah=%{public}@\n}", buf, 0x48u);

    v16 = v39;
    v14 = v38;
  }

  v25 = v12;
  *buf = v25;
  v26 = v13;
  *&buf[8] = v26;
  v27 = v14;
  *&buf[16] = v27;
  v28 = v16;
  v29 = 0;
  v42 = v28;
  do
  {
    [(PBFWallpaperPublisher *)self _updatePath:*&buf[v29] addingIfNotExists:1];
    v29 += 8;
  }

  while (v29 != 32);
  for (i = 0; i != 4; ++i)
  {
    pathsByUUID = self->_pathsByUUID;
    v32 = [*&buf[i * 8] identity];
    v33 = [v32 posterUUID];
    v34 = [(NSMutableDictionary *)pathsByUUID objectForKey:v33];
    v35 = self->_paths[i];
    self->_paths[i] = v34;
  }

  [(PBFWallpaperPublisher *)self _update];
  if (v40)
  {
    v36 = 15;
  }

  else
  {
    v36 = 0;
  }

  [(PRSWallpaperPublisher *)self->_wallpaperPublisher initializeWithPaths:self->_lastSentPaths recentlyChanged:v36];
  for (j = 24; j != -8; j -= 8)
  {
  }
}

- (void)updateSelectedLockPath:(id)a3 selectedHomePath:(id)a4 activeLockPath:(id)a5 activeHomePath:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PRSLogObserver();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v10 identity];
    [v11 identity];
    v18 = v21 = self;
    v19 = [v12 identity];
    v20 = [v13 identity];
    *buf = 138544642;
    v23 = v16;
    v24 = 2048;
    v25 = v21;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    v32 = 2114;
    v33 = v20;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> received multi-update {\n\tsl=%{public}@\n\tsh=%{public}@\n\tal=%{public}@\n\tah=%{public}@\n}", buf, 0x3Eu);

    self = v21;
  }

  [(PBFWallpaperPublisher *)self _updateSelectedLockPath:v10 selectedHomePath:v11 activeLockPath:v12 activeHomePath:v13];
}

- (void)updatePath:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [PBFWallpaperPublisher updatePath:a2];
  }

  v6 = v5;
  v7 = PRSLogObserver();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 identity];
    v22 = 138543874;
    v23 = v9;
    v24 = 2048;
    v25 = self;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> received single-update with %{public}@", &v22, 0x20u);
  }

  pathsByUUID = self->_pathsByUUID;
  v12 = [v6 identity];
  v13 = [v12 posterUUID];
  v14 = [(NSMutableDictionary *)pathsByUUID objectForKey:v13];

  if (v14)
  {
    if (![(PBFWallpaperPublisher *)self _updatePath:v6 addingIfNotExists:0])
    {
      v15 = v14;

      v6 = v15;
    }

    v16 = [v6 identity];
    v17 = 0;
    v18 = 0;
    paths = self->_paths;
    do
    {
      v20 = [(PFServerPosterPath *)*paths identity];
      v21 = [v16 isNewerVersionOfIdentity:v20];

      if (v21)
      {
        v18 |= PRSWallpaperObserverLocationsFromIndex();
        objc_storeStrong(paths, v6);
      }

      ++v17;
      ++paths;
    }

    while (v17 != 4);
    if (v18 && [(PBFWallpaperPublisher *)self _update])
    {
      [(PRSWallpaperPublisher *)self->_wallpaperPublisher updatePaths:self->_lastSentPaths];
    }
  }
}

- (void)updateHomePath:(id)a3 matchingLockPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PBFWallpaperPublisher updateHomePath:a2 matchingLockPath:?];
  }

  v9 = v8;
  v10 = PRSLogObserver();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v7 identity];
    v14 = [v9 identity];
    v28 = 138544130;
    v29 = v12;
    v30 = 2048;
    v31 = self;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> received pairing-update {\n\thomePath=%{public}@\n\tmatchingLockPath=%{public}@\n}", &v28, 0x2Au);
  }

  v15 = [v9 identity];
  v16 = [v15 posterUUID];
  v17 = [(PFServerPosterPath *)self->_paths[0] identity];
  v18 = [v17 posterUUID];
  v19 = [v16 isEqual:v18];

  v20 = [(PFServerPosterPath *)self->_paths[2] identity];
  v21 = [v20 posterUUID];
  v22 = [v16 isEqual:v21];

  if ((v19 & 1) != 0 || v22)
  {
    if (v7)
    {
      v23 = v7;
    }

    else
    {
      v23 = v9;
    }

    if (v19)
    {
      v24 = v9;
    }

    else
    {
      v24 = 0;
    }

    if (v19)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v22)
    {
      v26 = v9;
    }

    else
    {
      v26 = 0;
    }

    if (v22)
    {
      v27 = v23;
    }

    else
    {
      v27 = 0;
    }

    [(PBFWallpaperPublisher *)self _updateSelectedLockPath:v24 selectedHomePath:v25 activeLockPath:v26 activeHomePath:v27];
  }
}

- (void)_updatePath:(char *)a1 addingIfNotExists:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithSelectedLockPath:(char *)a1 selectedHomePath:activeLockPath:activeHomePath:recentlyChanged:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activeHomePath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithSelectedLockPath:(char *)a1 selectedHomePath:activeLockPath:activeHomePath:recentlyChanged:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"activeLockPath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithSelectedLockPath:(char *)a1 selectedHomePath:activeLockPath:activeHomePath:recentlyChanged:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"selectedHomePath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithSelectedLockPath:(char *)a1 selectedHomePath:activeLockPath:activeHomePath:recentlyChanged:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"selectedLockPath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePath:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateHomePath:(char *)a1 matchingLockPath:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"lockPath", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end