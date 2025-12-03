@interface SCSharingReminderArchiver
+ (id)sharedInstance;
- (BOOL)sharingReminderDirectoryExists;
- (SCSharingReminderArchiver)init;
- (id)fileURLForKey:(id)key;
- (id)getObjectOfClass:(Class)class atKey:(id)key;
- (id)sharingReminderDirectoryURL;
- (void)createSharingReminderDirectory;
- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion;
- (void)setObject:(id)object atKey:(id)key withCompletion:(id)completion;
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
  block[4] = self;
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
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [(SCSharingReminderArchiver *)v2 setFileManager:defaultManager];

    v2->_lock._os_unfair_lock_opaque = 0;
    if (![(SCSharingReminderArchiver *)v2 sharingReminderDirectoryExists])
    {
      [(SCSharingReminderArchiver *)v2 createSharingReminderDirectory];
    }
  }

  return v2;
}

- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if (keyCopy && ![keyCopy isEqualToString:&stru_2875209E0])
  {
    v11 = [(SCSharingReminderArchiver *)self fileURLForKey:keyCopy];
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

      completionCopy[2](completionCopy, 0, v13);
    }

    else
    {
      v17 = 0;
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v12 error:&v17];
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

      (completionCopy)[2](completionCopy, v15, v13);
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
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (id)getObjectOfClass:(Class)class atKey:(id)key
{
  keyCopy = key;
  v7 = keyCopy;
  if (keyCopy && ![keyCopy isEqualToString:&stru_2875209E0])
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
      v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v10 error:&v14];
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

- (void)setObject:(id)object atKey:(id)key withCompletion:(id)completion
{
  objectCopy = object;
  keyCopy = key;
  completionCopy = completion;
  if (objectCopy && keyCopy && ![keyCopy isEqualToString:&stru_2875209E0])
  {
    v22 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v22];
    v13 = v22;
    if (v13)
    {
      v14 = SCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCSharingReminderArchiver setObject:atKey:withCompletion:];
      }

      completionCopy[2](completionCopy, 0, v13);
    }

    else
    {
      v15 = [(SCSharingReminderArchiver *)self fileURLForKey:keyCopy];
      os_unfair_lock_lock(&self->_lock);
      fileManager = [(SCSharingReminderArchiver *)self fileManager];
      path = [v15 path];
      v18 = [fileManager fileExistsAtPath:path];

      if (v18)
      {
        v19 = [v12 writeToURL:v15 atomically:1];
      }

      else
      {
        fileManager2 = [(SCSharingReminderArchiver *)self fileManager];
        path2 = [v15 path];
        v19 = [fileManager2 createFileAtPath:path2 contents:v12 attributes:0];
      }

      os_unfair_lock_unlock(&self->_lock);
      completionCopy[2](completionCopy, v19, 0);
    }
  }

  else
  {
    v11 = SCLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCSharingReminderArchiver setObject:atKey:withCompletion:];
    }

    completionCopy[2](completionCopy, 0, 0);
  }
}

- (BOOL)sharingReminderDirectoryExists
{
  v9 = 0;
  sharingReminderDirectoryURL = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  path = [sharingReminderDirectoryURL path];

  fileManager = [(SCSharingReminderArchiver *)self fileManager];
  v6 = [fileManager fileExistsAtPath:path isDirectory:&v9];

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

- (id)fileURLForKey:(id)key
{
  keyCopy = key;
  sharingReminderDirectoryURL = [(SCSharingReminderArchiver *)self sharingReminderDirectoryURL];
  v6 = [sharingReminderDirectoryURL URLByAppendingPathComponent:keyCopy isDirectory:0];

  return v6;
}

- (id)sharingReminderDirectoryURL
{
  fileManager = [(SCSharingReminderArchiver *)self fileManager];
  v8 = 0;
  v3 = [fileManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v8];
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