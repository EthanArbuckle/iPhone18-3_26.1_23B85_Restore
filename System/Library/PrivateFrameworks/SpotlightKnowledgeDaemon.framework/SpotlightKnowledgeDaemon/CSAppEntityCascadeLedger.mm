@interface CSAppEntityCascadeLedger
+ (id)_acquireLockFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
+ (id)_loadLedgerFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
+ (id)_lockFileURLWithDirectory:(id)a3 bundleIdentifier:(id)a4;
+ (void)deleteLedgerFilesInDirectory:(id)a3 notContainedInActiveBundles:(id)a4;
- (BOOL)resetLedger:(id *)a3;
- (CSAppEntityCascadeLedger)initWithDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (unint64_t)_fullSetDonationAttemptCount;
- (unint64_t)_journalUpdateAttemptCount;
- (unint64_t)failureCount;
- (unint64_t)version;
- (unsigned)_options;
- (void)_releaseLock:(BOOL)a3;
- (void)attemptFullSetDonation;
- (void)attemptJournalUpdate;
- (void)completeFullSetDonationWithVersion:(unint64_t)a3;
- (void)completeJournalUpdate;
- (void)dealloc;
- (void)incrementVersion;
- (void)resetJournalUpdateAttempts;
@end

@implementation CSAppEntityCascadeLedger

+ (id)_lockFileURLWithDirectory:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = [a4 stringByAppendingString:@"-lockfile"];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 relativeToURL:v5];

  return v7;
}

+ (id)_acquireLockFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() _lockFileURLWithDirectory:v8 bundleIdentifier:v7];

  v10 = open([v9 fileSystemRepresentation], 514, 420);
  if (!v10)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v14 = a5;
    v15 = 15;
    goto LABEL_9;
  }

  v11 = v10;
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v12 = SKGLogInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[CSAppEntityCascadeLedger _acquireLockFileInDirectory:bundleIdentifier:error:];
    }
  }

  if (flock(v11, 2))
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v14 = a5;
    v15 = 16;
LABEL_9:
    _setError(v14, v15, v13);

    v16 = 0;
    goto LABEL_15;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v17 = SKGLogInit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v21 = objc_opt_class();
      v22 = 1024;
      v23 = v11;
      v24 = 2112;
      v25 = v9;
      _os_log_debug_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEBUG, "### %@ Acquired lock file fd %d for %@", buf, 0x1Cu);
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11 closeOnDealloc:0];
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_loadLedgerFileInDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v38[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277D23B80];
  v9 = a3;
  v10 = [v8 currentBuildVersion];
  v37[0] = @"Build";
  v37[1] = @"Options";
  v38[0] = v10;
  v38[1] = &unk_2846E7548;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v12 = [v7 stringByAppendingString:@"-ledger"];
  v28 = 0;
  v13 = [objc_alloc(MEMORY[0x277CF0E10]) initWithFilename:v12 protectionClass:4 directory:v9 readOnly:0 create:1 initialDictionary:v11 error:&v28];

  v14 = v28;
  if (!v13)
  {
    _setError(a5, 17, v14);
    v17 = 0;
    goto LABEL_18;
  }

  v15 = [v13 objectForKey:@"Build"];
  if ([v10 isEqual:v15])
  {
    v16 = v14;
  }

  else
  {
    v25 = a5;
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v32 = v7;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "Ledger file for bundle: %@ was written on build (%@) different from current (%@)", buf, 0x20u);
      }
    }

    v26 = v15;
    v30[0] = v10;
    v30[1] = &unk_2846E7548;
    v30[2] = &unk_2846E7560;
    v30[3] = &unk_2846E7560;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    v29[0] = @"Build";
    v29[1] = @"Options";
    v29[2] = @"JournalUpdate";
    v29[3] = @"NightlyVerification";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    v27 = v14;
    v21 = [v13 writeUpdatedObjects:v19 forKeys:v20 error:&v27];
    v16 = v27;

    if ((v21 & 1) == 0)
    {
      _setError(v25, 17, v16);
      v17 = 0;
      v15 = v26;
      goto LABEL_17;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v22 = SKGLogInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v32 = v7;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "Reset ledger file for bundle: %@ on current build (%@): %@", buf, 0x20u);
      }
    }

    v15 = v26;
  }

  v17 = v13;
LABEL_17:

  v14 = v16;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (CSAppEntityCascadeLedger)initWithDirectory:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = CSAppEntityCascadeLedger;
  v11 = [(CSAppEntityCascadeLedger *)&v18 init];
  if (v11)
  {
    v12 = [objc_opt_class() _acquireLockFileInDirectory:v9 bundleIdentifier:v10 error:a5];
    fileLockHandle = v11->_fileLockHandle;
    v11->_fileLockHandle = v12;

    if (!v11->_fileLockHandle || ([objc_opt_class() _loadLedgerFileInDirectory:v9 bundleIdentifier:v10 error:a5], v14 = objc_claimAutoreleasedReturnValue(), dictionary = v11->_dictionary, v11->_dictionary = v14, dictionary, !v11->_dictionary))
    {
      v16 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v11->_directory, a3);
    objc_storeStrong(&v11->_bundleIdentifier, a4);
    v11->_released = 0;
    v11->_journalUpdateAttempts = [(CSAppEntityCascadeLedger *)v11 _journalUpdateAttemptCount];
    v11->_fullSetDonationAttempts = [(CSAppEntityCascadeLedger *)v11 _fullSetDonationAttemptCount];
  }

  v16 = v11;
LABEL_7:

  return v16;
}

- (void)_releaseLock:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [objc_opt_class() _lockFileURLWithDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        bundleIdentifier = self->_bundleIdentifier;
        v8 = [(NSFileHandle *)self->_fileLockHandle fileDescriptor];
        v12 = 138412802;
        v13 = v6;
        v14 = 2112;
        v15 = bundleIdentifier;
        v16 = 1024;
        v17 = v8;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Deleting lock file for %@ lockFile fd %d", &v12, 0x1Cu);
      }
    }

    unlinkat(-[NSFileHandle fileDescriptor](self->_fileLockHandle, "fileDescriptor"), [v4 fileSystemRepresentation], 0);
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CSAppEntityCascadeLedger _releaseLock:?];
    }
  }

  if (flock([(NSFileHandle *)self->_fileLockHandle fileDescriptor], 8) && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v10 = SKGLogInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSAppEntityCascadeLedger _releaseLock:?];
    }
  }

  [(NSFileHandle *)self->_fileLockHandle closeFile];
  self->_released = 1;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (!self->_released)
  {
    [(CSAppEntityCascadeLedger *)self releaseLock];
  }

  v3.receiver = self;
  v3.super_class = CSAppEntityCascadeLedger;
  [(CSAppEntityCascadeLedger *)&v3 dealloc];
}

- (unsigned)_options
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Options"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unint64_t)version
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Version"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)failureCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Failure"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)_journalUpdateAttemptCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Journal"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unint64_t)_fullSetDonationAttemptCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Full"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (void)incrementVersion
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CSAppEntityCascadeLedger *)self version]+ 1;
  dictionary = self->_dictionary;
  v5 = [(CSAppEntityCascadeLedger *)self _boxedVersion:v3];
  v10 = 0;
  v6 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v5 forKey:@"Version" error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v12 = self;
      v13 = 2048;
      v14 = v3;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_231B25000, v8, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger to increment version (%llu): %@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)attemptJournalUpdate
{
  v24[3] = *MEMORY[0x277D85DE8];
  ++self->_journalUpdateAttempts;
  v3 = [(CSAppEntityCascadeLedger *)self version];
  v4 = [(CSAppEntityCascadeLedger *)self failureCount];
  dictionary = self->_dictionary;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_journalUpdateAttempts];
  v24[0] = v6;
  v7 = [(CSAppEntityCascadeLedger *)self _boxedVersion:v3 + 1];
  v24[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 + 1];
  v24[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v23[0] = @"Journal";
  v23[1] = @"Version";
  v23[2] = @"Failure";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v16 = 0;
  v11 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v9 forKeys:v10 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v13 = SKGLogInit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      journalUpdateAttempts = self->_journalUpdateAttempts;
      *buf = 138412802;
      v18 = self;
      v19 = 1024;
      v20 = journalUpdateAttempts;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_231B25000, v13, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger for journal update attempt (%u): %@", buf, 0x1Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)attemptFullSetDonation
{
  v17 = *MEMORY[0x277D85DE8];
  ++self->_fullSetDonationAttempts;
  dictionary = self->_dictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v10 = 0;
  v5 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v4 forKey:@"Full" error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      fullSetDonationAttempts = self->_fullSetDonationAttempts;
      *buf = 138412802;
      v12 = self;
      v13 = 1024;
      v14 = fullSetDonationAttempts;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_231B25000, v7, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger for full set donation attempt (%u): %@", buf, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)completeJournalUpdate
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### %@ Failed to update ledger after completed journal update: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)completeFullSetDonationWithVersion:(unint64_t)a3
{
  v27[4] = *MEMORY[0x277D85DE8];
  self->_fullSetDonationAttempts = 0;
  dictionary = self->_dictionary;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v27[0] = v6;
  v7 = [(CSAppEntityCascadeLedger *)self _boxedVersion:a3];
  v27[1] = v7;
  v27[2] = &unk_2846E7560;
  v27[3] = &unk_2846E7560;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  v26[0] = @"Full";
  v26[1] = @"Version";
  v26[2] = @"Failure";
  v26[3] = @"Options";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v21 = 0;
  v10 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v8 forKeys:v9 error:&v21];
  v11 = v21;

  if ((v10 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CSAppEntityCascadeLedger completeFullSetDonationWithVersion:];
      }
    }

    v20 = 0;
    v13 = [(CSAppEntityCascadeLedger *)self resetLedger:&v20];
    v11 = v20;
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v13)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v15 = SKGLogInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = self;
          v16 = "### %@ Ledger reset after completing full set donation";
          v17 = v15;
          v18 = 12;
LABEL_13:
          _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (CurrentLoggingLevel >= 4)
    {
      v15 = SKGLogInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = self;
        v24 = 2112;
        v25 = v11;
        v16 = "### %@ Failed to reset ledger after completing full set donation: %@";
        v17 = v15;
        v18 = 22;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetJournalUpdateAttempts
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### %@ Failed to update ledger to reset journal update attempts: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetLedger:(id *)a3
{
  v5 = [(BMFileBackedDictionary *)self->_dictionary clear:?];
  if (v5)
  {
    v6 = [objc_opt_class() _loadLedgerFileInDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier error:a3];
    dictionary = self->_dictionary;
    self->_dictionary = v6;

    LOBYTE(v5) = self->_dictionary != 0;
  }

  return v5;
}

+ (void)deleteLedgerFilesInDirectory:(id)a3 notContainedInActiveBundles:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v61 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = objc_opt_new();
  v79 = MEMORY[0x277D85DD0];
  v80 = 3221225472;
  v81 = __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke;
  v82 = &unk_27893C620;
  v84 = a1;
  v83 = v6;
  v63 = v83;
  v9 = [v7 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

  if (v9)
  {
    v59 = v7;
    v60 = objc_opt_new();
    v62 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v58 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v75 objects:v95 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v76;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v76 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v75 + 1) + 8 * i);
          v16 = [v15 lastPathComponent];
          v17 = @"-ledger";
          if ((([v16 hasSuffix:@"-ledger"] & 1) != 0 || (v17 = @"-lockfile", objc_msgSend(v16, "hasSuffix:", @"-lockfile"))) && (objc_msgSend(v16, "substringToIndex:", objc_msgSend(v16, "length") - -[__CFString length](v17, "length")), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = v18;
            if (([v61 containsObject:v18] & 1) == 0)
            {
              [v60 addObject:v19];
            }
          }

          else
          {
            [v62 addObject:v15];
            v19 = 0;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v75 objects:v95 count:16];
      }

      while (v12);
    }

    v20 = [v60 count];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v20)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          *buf = 138413058;
          v88 = v23;
          v89 = 2112;
          v90 = v60;
          v91 = 2112;
          v92 = v63;
          v93 = 2112;
          v94 = v61;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Deleting ledger and lockfile for bundles: [%@] in ledger directory (%@) not contained in spotlight bundles: %@", buf, 0x2Au);
        }
      }

      v74 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v24 = v60;
      v25 = [v24 countByEnumeratingWithState:&v71 objects:v86 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v72;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v72 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v71 + 1) + 8 * j);
            v30 = [CSAppEntityCascadeLedger alloc];
            v70 = 0;
            v31 = [(CSAppEntityCascadeLedger *)v30 initWithDirectory:v63 bundleIdentifier:v29 error:&v70];
            v32 = v70;
            if (v31)
            {
              dictionary = v31->_dictionary;
              v69 = v32;
              v34 = [(BMFileBackedDictionary *)dictionary clear:&v69];
              v35 = v69;

              if (v34)
              {
                [(CSAppEntityCascadeLedger *)v31 _releaseLock:1];
              }

              else if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v37 = SKGLogInit();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v39 = objc_opt_class();
                  *buf = 138412802;
                  v88 = v39;
                  v89 = 2112;
                  v90 = v29;
                  v91 = 2112;
                  v92 = v35;
                  _os_log_error_impl(&dword_231B25000, v37, OS_LOG_TYPE_ERROR, "### %@ Cleanup failed to clear ledger for bundleIdentifier: %@ error: %@", buf, 0x20u);
                }
              }

              v32 = v35;
            }

            else if (SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v36 = SKGLogInit();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v38 = objc_opt_class();
                *buf = 138412802;
                v88 = v38;
                v89 = 2112;
                v90 = v29;
                v91 = 2112;
                v92 = v32;
                _os_log_error_impl(&dword_231B25000, v36, OS_LOG_TYPE_ERROR, "### %@ Cleanup failed to load ledger for bundleIdentifier: %@ skipping delete: %@", buf, 0x20u);
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v71 objects:v86 count:16];
        }

        while (v26);
      }

      v7 = v59;
    }

    else
    {
      v7 = v59;
      if (CurrentLoggingLevel < 4)
      {
LABEL_41:
        v40 = [v62 count];
        v41 = SKGLogGetCurrentLoggingLevel();
        if (v40)
        {
          if (v41 >= 4)
          {
            v42 = SKGLogInit();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = objc_opt_class();
              v44 = [v62 count];
              *buf = 138413058;
              v88 = v43;
              v89 = 2048;
              v90 = v44;
              v91 = 2112;
              v92 = v63;
              v93 = 2112;
              v94 = v62;
              _os_log_impl(&dword_231B25000, v42, OS_LOG_TYPE_DEFAULT, "### %@ Deleting %ld extraneous files in ledger directory (%@): %@", buf, 0x2Au);
            }
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v45 = v62;
          v46 = [v45 countByEnumeratingWithState:&v65 objects:v85 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v66;
            do
            {
              for (k = 0; k != v47; ++k)
              {
                if (*v66 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v65 + 1) + 8 * k);
                v64 = 0;
                v51 = [v7 removeItemAtURL:v50 error:&v64];
                v52 = v64;
                if ((v51 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
                {
                  v53 = SKGLogInit();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v54 = objc_opt_class();
                    *buf = 138412802;
                    v88 = v54;
                    v89 = 2112;
                    v90 = v50;
                    v91 = 2112;
                    v92 = v52;
                    _os_log_error_impl(&dword_231B25000, v53, OS_LOG_TYPE_ERROR, "### %@ Failed to clean up extraneous file (%@): %@", buf, 0x20u);
                  }

                  v7 = v59;
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v65 objects:v85 count:16];
            }

            while (v47);
          }

          v9 = v58;
        }

        else
        {
          v9 = v58;
          if (v41 < 4)
          {
            goto LABEL_60;
          }

          v45 = SKGLogInit();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v57 = objc_opt_class();
            *buf = 138412546;
            v88 = v57;
            v89 = 2112;
            v90 = v63;
            _os_log_impl(&dword_231B25000, v45, OS_LOG_TYPE_DEFAULT, "### %@ No extraneous files found in ledger directory (%@)", buf, 0x16u);
          }
        }

LABEL_60:
        goto LABEL_61;
      }

      v24 = SKGLogInit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_opt_class();
        *buf = 138412546;
        v88 = v56;
        v89 = 2112;
        v90 = v63;
        _os_log_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEFAULT, "### %@ Found no ledger / lock files in directory (%@) that need to be cleaned up", buf, 0x16u);
      }
    }

    goto LABEL_41;
  }

LABEL_61:

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke_cold_1();
    }
  }

  return 1;
}

+ (void)_acquireLockFileInDirectory:bundleIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_releaseLock:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v8 = *(a1 + 56);
  [*(a1 + 16) fileDescriptor];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_releaseLock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = *(a1 + 56);
  v3 = __error();
  strerror(*v3);
  v10 = *__error();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeFullSetDonationWithVersion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_231B25000, v0, v1, "### %@ Failed to update ledger after completed full set donation: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 40);
  objc_opt_class();
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

@end