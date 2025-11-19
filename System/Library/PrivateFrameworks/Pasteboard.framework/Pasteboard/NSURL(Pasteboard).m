@interface NSURL(Pasteboard)
- (uint64_t)_pb_isDirectory;
@end

@implementation NSURL(Pasteboard)

- (uint64_t)_pb_isDirectory
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = *MEMORY[0x277CBE868];
  v11 = 0;
  v3 = [a1 getResourceValue:&v12 forKey:v2 error:&v11];
  v4 = v12;
  v5 = v11;
  if (v3)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = a1;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25E138000, v7, OS_LOG_TYPE_INFO, "Warning: Cannot stat file at %@. Error: %@. Using [NSURL hasDirectoryPath] instead.", buf, 0x16u);
    }

    v6 = [a1 hasDirectoryPath];
  }

  v8 = v6;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end