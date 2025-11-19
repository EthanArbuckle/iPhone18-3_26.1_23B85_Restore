@interface SCSharingReminderArchiver
+ (id)sharedInstance;
- (BOOL)sharingReminderDirectoryExists;
- (SCSharingReminderArchiver)init;
- (id)fileURLForKey:(id)a3;
- (id)getObjectOfClass:(Class)a3 atKey:(id)a4;
- (id)sharingReminderDirectoryURL;
- (void)createSharingReminderDirectory;
- (void)getObjectOfClass:(Class)a3 atKey:(id)a4 completion:(id)a5;
- (void)setObject:(id)a3 atKey:(id)a4 withCompletion:(id)a5;
- (void)sharingReminderDirectoryExists;
- (void)sharingReminderDirectoryURL;
@end

@implementation SCSharingReminderArchiver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SCSharingReminderArchiver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___utility;

  return v2;
}

uint64_t __43__SCSharingReminderArchiver_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___utility = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SCSharingReminderArchiver)init
{
  v5.receiver = self;
  v5.super_class = SCSharingReminderArchiver;
  v2 = [(SCSharingReminderArchiver *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [(SCSharingReminderArchiver *)v2 setFileManager:v3];

    v2->_lock._os_unfair_lock_opaque = 0;
    if (![(SCSharingReminderArchiver *)v2 sharingReminderDirectoryExists])
    {
      [(SCSharingReminderArchiver *)v2 createSharingReminderDirectory];
    }
  }

  return v2;
}

- (void)getObjectOfClass:(Class)a3 atKey:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8 && ![v8 isEqualToString:&stru_2875209E0])
  {
    v11 = [(SCSharingReminderArchiver *)self fileURLForKey:v8];
    os_unfair_lock_lock(&self->_lock);
    v18 = 0;
    v12 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:0 error:&v18];
    v13 = v18;
    os_unfair_lock_unlock(&self->_lock);
    if (v13)
    {
      v14 = SCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
      }

      v9[2](v9, 0, v13);
    }

    else
    {
      v17 = 0;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v12 error:&v17];
      v13 = v17;
      if (v13)
      {
        v16 = SCLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
        }

        v15 = 0;
      }

      (v9)[2](v9, v15, v13);
    }
  }

  else
  {
    v10 = SCLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
    }

    v11 = [SCDaemonError errorWithCode:4];
    v9[2](v9, 0, v11);
  }
}

- (id)getObjectOfClass:(Class)a3 atKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && ![v6 isEqualToString:&stru_2875209E0])
  {
    v8 = [(SCSharingReminderArchiver *)self fileURLForKey:v7];
    os_unfair_lock_lock(&self->_lock);
    v15 = 0;
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:0 error:&v15];
    v11 = v15;
    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      v9 = SCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
      }
    }

    else
    {
      v14 = 0;
      v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v10 error:&v14];
      v11 = v14;
      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = SCLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  v8 = SCLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SCSharingReminderArchiver getObjectOfClass:atKey:completion:];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)setObject:(id)a3 atKey:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && ![v9 isEqualToString:&stru_2875209E0])
  {
    v22 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v22];
    v13 = v22;
    if (v13)
    {
      v14 = SCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver setObject:atKey:withCompletion:];
      }

      v10[2](v10, 0, v13);
    }

    else
    {
      v15 = [(SCSharingReminderArchiver *)self fileURLForKey:v9];
      os_unfair_lock_lock(&self->_lock);
      v16 = [(SCSharingReminderArchiver *)self fileManager];
      v17 = [v15 path];
      v18 = [v16 fileExistsAtPath:v17];

      if (v18)
      {
        v19 = [v12 writeToURL:v15 atomically:1];
      }

      else
      {
        v20 = [(SCSharingReminderArchiver *)self fileManager];
        v21 = [v15 path];
        v19 = [v20 createFileAtPath:v21 contents:v12 attributes:0];
      }

      os_unfair_lock_unlock(&self->_lock);
      v10[2](v10, v19, 0);
    }
  }

  else
  {
    v11 = SCLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver setObject:atKey:withCompletion:];
    }

    v10[2](v10, 0, 0);
  }
}

- (BOOL)sharingReminderDirectoryExists
{
  v9 = 0;
  v3 = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  v4 = [v3 path];

  v5 = [(SCSharingReminderArchiver *)self fileManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v9];

  if (v6 && (v9 & 1) == 0)
  {
    v7 = SCLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver sharingReminderDirectoryExists];
    }
  }

  return v6;
}

- (void)createSharingReminderDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Error creating directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)fileURLForKey:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  return v6;
}

- (id)sharingReminderDirectoryURL
{
  v2 = [(SCSharingReminderArchiver *)self fileManager];
  v8 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = SCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver sharingReminderDirectoryURL];
    }

    v6 = 0;
  }

  else
  {
    v6 = [v3 URLByAppendingPathComponent:@"com.apple.safetycheckd" isDirectory:1];
  }

  return v6;
}

- (void)getObjectOfClass:atKey:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Error reading data at URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getObjectOfClass:atKey:completion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Error: %@ while creating decoder for data: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getObjectOfClass:atKey:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Archiver couldn't decode malformed key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObject:atKey:withCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Archiver couldn't encode object: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setObject:atKey:withCompletion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_262556000, v0, v1, "Archiver couldn't encode malformed args [object: %@ key: %@]");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sharingReminderDirectoryExists
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Expected to find directory but found folder instead at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sharingReminderDirectoryURL
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_262556000, v0, v1, "Error getting top level directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end