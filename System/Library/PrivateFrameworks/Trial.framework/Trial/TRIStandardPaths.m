@interface TRIStandardPaths
+ (id)schemaVersionFile;
+ (id)sharedPaths;
+ (id)sharedPathsForSystem;
- (BOOL)validateWithError:(id *)a3;
- (TRIStandardPaths)initWithSchemaVersion:(unsigned int)a3 forUser:(unsigned int)a4 forTrialdSystem:(BOOL)a5;
- (id)_pathErrorWithDescription:(id)a3;
- (id)_trialSystemRootDir;
- (id)_trialSystemRootDirWithError:(id *)a3;
- (id)_versionSpecificStorageDir;
- (id)_versionSpecificSystemStorageDir;
- (id)activeLowLevelFactorsFile;
- (id)allowEnvVarDefaultLevelsDir;
- (id)containerDir;
- (id)databaseDir;
- (id)decryptionKeyDirForAppleInternal:(BOOL)a3;
- (id)deviceIdentifierFile;
- (id)experimentsDir;
- (id)externalParametersFile;
- (id)localTempDir;
- (id)logDir;
- (id)namespaceDescriptorsDefaultDir;
- (id)namespaceDescriptorsDevOverrideDir;
- (id)namespaceDescriptorsExperimentDir;
- (id)namespaceDescriptorsPathForLayer:(unint64_t)a3;
- (id)subjectDataFile;
- (id)systemDataFile;
- (id)systemInteropDirectory;
- (id)trialRootDir;
- (id)trialRootDirWithError:(id *)a3;
- (id)trialVolume;
- (id)volumeForDirectory:(id)a3;
@end

@implementation TRIStandardPaths

+ (id)sharedPaths
{
  if (qword_280ACAE18 != -1)
  {
    dispatch_once(&qword_280ACAE18, &__block_literal_global_84);
  }

  v3 = qword_280ACAE10;

  return v3;
}

void __31__TRIStandardPaths_sharedPaths__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[TRIStandardPaths alloc] initWithSchemaVersion:7 forUser:getuid() forTrialdSystem:+[TRIProcessInfo callerIsRunningFromSystemContext]];
  v2 = qword_280ACAE10;
  qword_280ACAE10 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)trialRootDir
{
  v10 = 0;
  v4 = [(TRIStandardPaths *)self trialRootDirWithError:&v10];
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [v10 description];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = @"could not find Trial root directory";
    }

    [v6 handleFailureInMethod:a2 object:self file:@"TRIPaths.m" lineNumber:251 description:v9];
  }

  return v4;
}

- (id)subjectDataFile
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"subject.data"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)namespaceDescriptorsDefaultDir
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 stringForKey:@"com.apple.triald.namespacedescriptor.path"];

  if (v6)
  {
    v7 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_22EA6B000, v7, OS_LOG_TYPE_DEFAULT, "Overriding namespaceDescriptorsDefaultDir to %@", buf, 0xCu);
    }

    v8 = v6;
  }

  else if (self->_container)
  {
    v9 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
    v8 = [v9 stringByAppendingPathComponent:@"default"];
  }

  else
  {
    v10 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
    v11 = [v10 firstObject];

    if (!v11)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"TRIPaths.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"syslib"}];
    }

    v12 = MEMORY[0x277CCACA8];
    v17[0] = v11;
    v17[1] = @"Trial";
    v17[2] = @"NamespaceDescriptors";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v8 = [v12 pathWithComponents:v13];
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)namespaceDescriptorsExperimentDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"experiment"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)namespaceDescriptorsDevOverrideDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"devOverride"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)_pathErrorWithDescription:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v13 = *MEMORY[0x277CCA450];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = [v5 mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_28435FC98 table:0];

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v3 errorWithDomain:v4 code:4 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_trialSystemRootDir
{
  v4 = [(TRIStandardPaths *)self _trialSystemRootDirWithError:0];
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIPaths.m" lineNumber:152 description:@"Trial system root dir is nil"];
  }

  return v4;
}

- (id)_trialSystemRootDirWithError:(id *)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (!geteuid())
  {
    v10 = @"/var/mobile/Library";
LABEL_11:
    v11 = MEMORY[0x277CCACA8];
    v18[0] = @"/private";
    v18[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13 = [v11 pathWithComponents:v12];

    v14 = [v13 stringByAppendingPathComponent:@"Trial"];
LABEL_12:

    goto LABEL_13;
  }

  if (qword_280ACAE08 != -1)
  {
    dispatch_once(&qword_280ACAE08, &__block_literal_global_11);
  }

  if (_MergedGlobals_10)
  {
    v6 = [(TRIStandardPaths *)self _realHomeDirectory];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x277CCACA8];
      v19[0] = v6;
      v19[1] = @"Library";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v10 = [v8 pathWithComponents:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v10 = [v7 firstObject];
  }

  if (v10)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v17 = [(TRIStandardPaths *)self _pathErrorWithDescription:@"library path is nil"];
    v14 = 0;
    v13 = *a3;
    *a3 = v17;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __49__TRIStandardPaths__trialSystemRootDirWithError___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    _MergedGlobals_10 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    _MergedGlobals_10 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

- (BOOL)validateWithError:(id *)a3
{
  v3 = [(TRIStandardPaths *)self trialRootDirWithError:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)trialRootDirWithError:(id *)a3
{
  v3 = a3;
  v29[3] = *MEMORY[0x277D85DE8];
  if (self->_container)
  {
    v5 = self->_containerPath;
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277CCACA8];
      v29[0] = v5;
      v29[1] = @"Library";
      v29[2] = @"Trial";
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
      v3 = [v7 pathWithComponents:v8];
    }

    else if (v3)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(TRIAppContainer *)self->_container identifier];
      v11 = [v9 stringWithFormat:@"could not find path for container %@", v10];
      v12 = [(TRIStandardPaths *)self _pathErrorWithDescription:v11];
      v13 = *v3;
      *v3 = v12;

      v3 = 0;
    }
  }

  else
  {
    v3 = [(TRIStandardPaths *)self _trialSystemRootDirWithError:a3];
  }

  if ((atomic_exchange(&self->_loggedRootDir._Value, 1u) & 1) == 0)
  {
    v14 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      container = self->_container;
      if (container)
      {
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(container %@)", self->_container];
      }

      else
      {
        v18 = @"(no container)";
      }

      *buf = 138413058;
      v22 = v16;
      v23 = 2048;
      v24 = self;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEFAULT, "%@ %p %@: using Trial root dir %@", buf, 0x2Au);
      if (container)
      {
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)trialVolume
{
  v3 = [(TRIStandardPaths *)self trialRootDir];
  v4 = [(TRIStandardPaths *)self volumeForDirectory:v3];

  return v4;
}

- (id)volumeForDirectory:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(&v12, 0, 512);
  if (statfs([v3 UTF8String], &v12))
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_ERROR, "Could not resolve the volume for directory: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12.f_mntonname];
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_INFO, "Found the following volume: %@ for the given directory: %@", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)containerDir
{
  if (self->_container)
  {
    v3 = self->_containerPath;
  }

  else
  {
    v3 = @"/";
  }

  return v3;
}

+ (id)schemaVersionFile
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[TRIStandardPaths alloc] initWithSchemaVersion:7 forUser:getuid() forTrialdSystem:+[TRIProcessInfo callerIsRunningFromSystemContext]];
  v4 = [(TRIStandardPaths *)v3 _trialSystemRootDir];
  v5 = [v4 stringByAppendingPathComponent:@"schemaVersion.txt"];

  objc_autoreleasePoolPop(v2);

  return v5;
}

+ (id)sharedPathsForSystem
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"TRIPaths.m" lineNumber:321 description:@"Invalid invocation of [TRIPaths sharedPathsForSystem:] Should call [TRIPaths sharedPaths]"];

  return +[TRIStandardPaths sharedPaths];
}

- (TRIStandardPaths)initWithSchemaVersion:(unsigned int)a3 forUser:(unsigned int)a4 forTrialdSystem:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = TRIStandardPaths;
  result = [(TRIStandardPaths *)&v9 init];
  if (result)
  {
    result->_schemaVersion = a3;
    result->_forTrialdSystem = a5;
    result->_forUserId = a4;
    atomic_store(0, &result->_loggedRootDir);
  }

  return result;
}

- (id)_versionSpecificSystemStorageDir
{
  v3 = objc_autoreleasePoolPush();
  schemaVersion = self->_schemaVersion;
  v5 = +[TRIStandardPaths legacySchemaVersion];
  v6 = [(TRIStandardPaths *)self _trialSystemRootDir];
  if (schemaVersion != v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"v%u", self->_schemaVersion];
    v8 = [v6 stringByAppendingPathComponent:v7];

    v6 = v8;
  }

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)_versionSpecificStorageDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self trialRootDir];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"v%u", self->_schemaVersion];
  v6 = [v4 stringByAppendingPathComponent:v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)logDir
{
  v2 = objc_autoreleasePoolPush();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = [v4 stringByAppendingPathComponent:@"Logs"];
  v6 = [v5 stringByAppendingPathComponent:@"Trial"];

  objc_autoreleasePoolPop(v2);

  return v6;
}

- (id)databaseDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self _versionSpecificSystemStorageDir];
  v5 = [v4 stringByAppendingPathComponent:@"Database"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)namespaceDescriptorsPathForLayer:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      v4 = [(TRIStandardPaths *)self namespaceDescriptorsDevOverrideDir];
      goto LABEL_10;
    }

    if (a3 != 32)
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = [(TRIStandardPaths *)self namespaceDescriptorsExperimentDir];
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v4 = [(TRIStandardPaths *)self namespaceDescriptorsDefaultDir];
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v4;
}

- (id)systemDataFile
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"system.data"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)deviceIdentifierFile
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"identifier"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)experimentsDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self trialRootDir];
  v5 = [v4 stringByAppendingPathComponent:@"Experiments"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)localTempDir
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self _versionSpecificStorageDir];
  v5 = [v4 stringByAppendingPathComponent:@"tmp"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)decryptionKeyDirForAppleInternal:(BOOL)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = @"/AppleInternal/Library/Trial/NamespaceKeys";
  }

  else
  {
    v5 = @"/System/Library/Trial/NamespaceKeys";
  }

  v6 = [TRIStandardPaths resolveHardCodedPath:v5];
  objc_autoreleasePoolPop(v4);

  return v6;
}

- (id)allowEnvVarDefaultLevelsDir
{
  v2 = objc_autoreleasePoolPush();
  v3 = [TRIStandardPaths resolveHardCodedPath:@"/System/Library/Trial/AllowedFactorsAndDefaults"];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)activeLowLevelFactorsFile
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDirUsingGlobal:+[TRIProcessInfo hostingProcessIsTrialdSystem]];
  v5 = [v4 stringByAppendingPathComponent:@"v2/activeLowLevelFactors.plist"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)externalParametersFile
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"ExternalParameters.plist"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)systemInteropDirectory
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIStandardPaths *)self namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"SystemInterop"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end