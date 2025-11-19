@interface PMLDataChunkPlist
+ (id)chunkWithPlist:(id)a3;
- (id)plist;
@end

@implementation PMLDataChunkPlist

- (id)plist
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_parsed)
  {
    backingData = v2->super._backingData;
    v11 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:backingData options:0 format:0 error:&v11];
    v5 = v11;
    plist = v2->_plist;
    v2->_plist = v4;

    if (!v2->_plist)
    {
      v7 = PML_LogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Error loading plist chunk: %@", buf, 0xCu);
      }
    }
  }

  v8 = v2->_plist;
  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)chunkWithPlist:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [objc_alloc(objc_opt_class()) initWithData:v3];
  }

  else
  {
    v6 = PML_LogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Error writing plist chunk: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

@end