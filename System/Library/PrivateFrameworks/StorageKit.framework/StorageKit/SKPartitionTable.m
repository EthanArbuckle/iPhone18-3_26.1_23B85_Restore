@interface SKPartitionTable
+ (BOOL)updatePartitionTypeWithPartitions:(id)a3 partID:(id)a4 newType:(id)a5 error:(id *)a6;
+ (__MKMedia)createMediaRefWithDisk:(id)a3 error:(id *)a4;
+ (id)partitionIDFromDisk:(id)a3;
- (BOOL)allocateMediaRef:(id *)a3;
- (BOOL)fitToContainerSize:(unint64_t)a3 error:(id *)a4;
- (BOOL)overwriteExistingMediaLayout:(id)a3 opts:(__CFDictionary *)a4 partitionScheme:(int)a5 size:(unint64_t)a6;
- (BOOL)overwritePartitionAt:(id)a3 filesystem:(id)a4 error:(id *)a5;
- (BOOL)resizePartitionID:(id)a3 size:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeNewMediaLayout:(id)a3 partitionScheme:(unint64_t)a4;
- (BOOL)writePartitionScheme:(unint64_t)a3 error:(id *)a4;
- (SKPartitionTable)initWithDisk:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)flushMediaRef;
@end

@implementation SKPartitionTable

+ (__MKMedia)createMediaRefWithDisk:(id)a3 error:(id *)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 diskIdentifier];
  v8 = [v6 stringWithFormat:@"/dev/r%@", v7];
  [v8 fileSystemRepresentation];

  v22[0] = @"Writable";
  v22[1] = @"Shared Writer";
  v23[0] = MEMORY[0x277CBEC38];
  v23[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = *MEMORY[0x277CBECE8];
  v11 = MKMediaCreateWithPath();
  if (!v11)
  {
    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "+[SKPartitionTable createMediaRefWithDisk:error:]";
      v18 = 2112;
      v19 = v5;
      v20 = 1024;
      v21 = 0;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_ERROR, "%s: Failed to create media ref with disk %@, MK err %d", buf, 0x1Cu);
    }

    v13 = [SKError nilWithPOSIXCode:0 error:a4];
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (SKPartitionTable)initWithDisk:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = SKPartitionTable;
  v7 = [(SKPartitionTable *)&v24 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBEB18] array];
  partitions = v7->_partitions;
  v7->_partitions = v8;

  v10 = +[SKBaseManager sharedManager];
  v11 = [v10 wholeDiskForDisk:v6];

  if (!v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v19 = [v6 container];
    if (!v19)
    {
      goto LABEL_12;
    }

    v11 = v19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = [v11 designatedPhysicalStore];
  if (!v12)
  {
    v28[0] = v11;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v21 = [SKError errorWithCode:117 disks:v20 userInfo:0];
    v18 = [SKError nilWithError:v21 error:a4];

    goto LABEL_17;
  }

  v13 = v12;
  v14 = +[SKBaseManager sharedManager];
  v15 = [v14 wholeDiskForDisk:v13];

  v6 = v13;
  v11 = v15;
  if (!v15)
  {
LABEL_12:
    v27 = v6;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v20 = [SKError errorWithCode:117 disks:v11 userInfo:0];
    v18 = [SKError nilWithError:v20 error:a4];
LABEL_17:

    goto LABEL_18;
  }

LABEL_6:
  objc_storeStrong(&v7->_disk, v11);
  v7->_sectorSize = [v11 getSectorSize];
  v16 = objc_opt_class();
  v17 = [(SKPartitionTable *)v7 disk];
  v7->_mediaRef = [v16 createMediaRefWithDisk:v17 error:a4];

  if (!v7->_mediaRef)
  {
    v20 = SKGetOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SKPartitionTable initWithDisk:error:]";
      _os_log_impl(&dword_26BBB8000, v20, OS_LOG_TYPE_ERROR, "%s: Failed to create media ref", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_17;
  }

LABEL_8:
  v18 = v7;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)dealloc
{
  mediaRef = self->_mediaRef;
  if (mediaRef)
  {
    CFRelease(mediaRef);
  }

  v4.receiver = self;
  v4.super_class = SKPartitionTable;
  [(SKPartitionTable *)&v4 dealloc];
}

- (BOOL)writeNewMediaLayout:(id)a3 partitionScheme:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0;
  if (MKCFCreateMedia())
  {
    [(SKPartitionTable *)self sectorSize];
    [(SKPartitionTable *)self sectorSize];
    v12 = [(SKPartitionTable *)self mediaRef];
    MKCFCreateMap();
    [(SKPartitionTable *)self mediaRef:v12];
    v13 = MKCFWriteMedia();
    if (v13)
    {
      v11 = SKGetOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[SKPartitionTable writeNewMediaLayout:partitionScheme:]";
        v16 = 1024;
        v17 = v13;
        _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_ERROR, "%s: Failed to write scheme, MK err %d", buf, 0x12u);
      }
    }

    MKCFDisposeMedia();
    v8 = v13 == 0;
  }

  else
  {
    v6 = +[SKBaseManager sharedManager];
    [v6 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_51];

    v7 = SKGetOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "[SKPartitionTable writeNewMediaLayout:partitionScheme:]";
      v16 = 1024;
      v17 = v13;
      _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_FAULT, "%s: Failed to create media, MK err %d", buf, 0x12u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

id __56__SKPartitionTable_writeNewMediaLayout_partitionScheme___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKPartitionTable.m", 141);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id __56__SKPartitionTable_writeNewMediaLayout_partitionScheme___block_invoke_56()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKPartitionTable.m", 149);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (BOOL)overwriteExistingMediaLayout:(id)a3 opts:(__CFDictionary *)a4 partitionScheme:(int)a5 size:(unint64_t)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v18 = 0;
  [(SKPartitionTable *)self mediaRef];
  v8 = MKCFReadMedia();
  if (!v8)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v21 = 1024;
      v22 = v18;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v8, @"Schemes");
  [(SKPartitionTable *)self sectorSize];
  v17 = [(SKPartitionTable *)self mediaRef];
  MKCFCreateMap();
  CFArrayGetValueAtIndex(Value, 1);
  [(SKPartitionTable *)self mediaRef:v17];
  v18 = MKCFUpdateScheme();
  if (v18)
  {
    v11 = +[SKBaseManager sharedManager];
    [v11 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_73];

    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v21 = 1024;
      v22 = v18;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_FAULT, "%s: Failed to update scheme, MK err %d", buf, 0x12u);
    }

    MKCFDisposeMedia();
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  [(SKPartitionTable *)self mediaRef];
  v18 = MKCFWriteScheme();
  if (v18)
  {
    v16 = SKGetOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SKPartitionTable overwriteExistingMediaLayout:opts:partitionScheme:size:]";
      v21 = 1024;
      v22 = v18;
      _os_log_impl(&dword_26BBB8000, v16, OS_LOG_TYPE_ERROR, "%s: Failed to write scheme, MK err %d", buf, 0x12u);
    }
  }

  MKCFDisposeMedia();
  v13 = v18 == 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id __75__SKPartitionTable_overwriteExistingMediaLayout_opts_partitionScheme_size___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKPartitionTable.m", 180);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id __75__SKPartitionTable_overwriteExistingMediaLayout_opts_partitionScheme_size___block_invoke_71()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKPartitionTable.m", 187);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)flushMediaRef
{
  if ([(SKPartitionTable *)self mediaRef])
  {
    CFRelease([(SKPartitionTable *)self mediaRef]);

    [(SKPartitionTable *)self setMediaRef:0];
  }
}

- (BOOL)allocateMediaRef:(id *)a3
{
  if (![(SKPartitionTable *)self mediaRef])
  {
    v5 = objc_opt_class();
    v6 = [(SKPartitionTable *)self disk];
    -[SKPartitionTable setMediaRef:](self, "setMediaRef:", [v5 createMediaRefWithDisk:v6 error:a3]);
  }

  return [(SKPartitionTable *)self mediaRef]!= 0;
}

- (BOOL)writePartitionScheme:(unint64_t)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  if (-[SKPartitionTable allocateMediaRef:](self, "allocateMediaRef:", a4) && (-[SKPartitionTable disk](self, "disk"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 wipeDiskWithError:a4], v7, v8))
  {
    v9 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [(SKPartitionTable *)self partitions];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      if (a3)
      {
        v14 = 1;
      }

      else
      {
        v14 = 16;
      }

      if (a3 == 1)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v17 = [*(*(&v27 + 1) + 8 * i) buildWithScheme:v15 sectorSize:{-[SKPartitionTable sectorSize](self, "sectorSize")}];
          if (!v17)
          {
            v20 = [(SKPartitionTable *)self disk];
            v36 = v20;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
            v22 = 300;
            goto LABEL_23;
          }

          v18 = v17;
          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v34 = @"Partitions";
    v35 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    if ([(SKPartitionTable *)self writeNewMediaLayout:v10 partitionScheme:a3])
    {
      [(SKPartitionTable *)self flushMediaRef];
      v19 = 1;
    }

    else
    {
      v23 = SKGetOSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "[SKPartitionTable writePartitionScheme:error:]";
        _os_log_impl(&dword_26BBB8000, v23, OS_LOG_TYPE_ERROR, "%s: Failed to write media on disk", buf, 0xCu);
      }

      v20 = [(SKPartitionTable *)self disk];
      v31 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      v22 = 114;
LABEL_23:
      v24 = [SKError errorWithCode:v22 disks:v21 userInfo:0];
      v19 = [SKError failWithError:v24 error:a4];
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)partitionIDFromDisk:(id)a3
{
  v3 = a3;
  v4 = [SKIOMedia alloc];
  v5 = [v3 diskIdentifier];

  v6 = [(SKIOMedia *)v4 initWithDevName:v5];
  v7 = [(SKIOObject *)v6 copyPropertyWithClass:objc_opt_class() key:@"Partition ID"];

  return v7;
}

+ (BOOL)updatePartitionTypeWithPartitions:(id)a3 partID:(id)a4 newType:(id)a5 error:(id *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"Partition ID"];
        v18 = [v17 isEqual:v9];

        if (v18)
        {
          [v16 setObject:v10 forKeyedSubscript:@"Type"];
          v20 = 1;
          v19 = v11;
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find partition with ID %@", v9];
  v20 = [SKError failWithSKErrorCode:117 debugDescription:v19 error:a6];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)overwritePartitionAt:(id)a3 filesystem:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(SKPartitionTable *)self allocateMediaRef:a5])
  {
    [(SKPartitionTable *)self mediaRef];
    v10 = MKCFReadMedia();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"Schemes"];
      v28 = [v12 objectAtIndexedSubscript:0];
      v27 = [v28 objectForKeyedSubscript:@"Sections"];
      v26 = [v27 objectAtIndexedSubscript:0];
      v13 = [v26 objectForKeyedSubscript:@"Partitions"];
      v14 = [(SKPartitionTable *)self disk];
      v15 = [v14 type];
      v16 = diskTypeToScheme(v15);

      if (v16 == 512)
      {
        MKCFDisposeMedia();
        v17 = [(SKPartitionTable *)self disk];
        v30 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        v19 = [SKError errorWithCode:117 disks:v18 userInfo:0];
        v20 = [SKError failWithError:v19 error:a5];
      }

      else
      {
        v22 = objc_opt_class();
        v23 = [v9 contentMask];
        LODWORD(v22) = [v22 updatePartitionTypeWithPartitions:v13 partID:v8 newType:v23 error:a5];

        if (v22)
        {
          [(SKPartitionTable *)self mediaRef];
          v29 = MKCFWriteMedia();
          MKCFDisposeMedia();
          if (v29)
          {
            v20 = [SKError failWithSKErrorCode:114 debugDescription:@"Failed to overwrite existing partition" error:a5];
          }

          else
          {
            [(SKPartitionTable *)self flushMediaRef];
            v20 = 1;
          }
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v21 = SKGetOSLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "[SKPartitionTable overwritePartitionAt:filesystem:error:]";
        v33 = 1024;
        v34 = 0;
        _os_log_impl(&dword_26BBB8000, v21, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:0 userInfo:0];
      v20 = [SKError failWithError:v12 error:a5];
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)fitToContainerSize:(unint64_t)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(SKPartitionTable *)self allocateMediaRef:a4])
  {
    [(SKPartitionTable *)self mediaRef];
    v7 = MKCFReadMedia();
    if (v7)
    {
      v8 = [(SKPartitionTable *)self disk];
      v9 = [v8 type];
      v10 = diskTypeToScheme(v9);

      if (v10 == 512)
      {
        MKCFDisposeMedia();
        v11 = [(SKPartitionTable *)self disk];
        v27 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        v13 = [SKError errorWithCode:117 disks:v12 userInfo:0];
        v14 = [SKError failWithError:v13 error:a4];
      }

      else
      {
        v11 = [v7 objectForKeyedSubscript:@"Schemes"];
        v16 = [v11 objectAtIndexedSubscript:0];
        v17 = [v16 objectForKeyedSubscript:@"Sections"];
        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [(SKPartitionTable *)self overwriteExistingMediaLayout:v18 opts:&unk_287C9A5A0 partitionScheme:v10 size:a3 / [(SKPartitionTable *)self sectorSize]];
        MKCFDisposeMedia();
        if (v19)
        {
          [(SKPartitionTable *)self flushMediaRef];
          v14 = 1;
        }

        else
        {
          v20 = SKGetOSLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v29 = "[SKPartitionTable fitToContainerSize:error:]";
            _os_log_impl(&dword_26BBB8000, v20, OS_LOG_TYPE_ERROR, "%s: Failed to fit existing partition", buf, 0xCu);
          }

          v21 = [(SKPartitionTable *)self disk];
          v26 = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          v23 = [SKError errorWithCode:114 disks:v22 userInfo:0];
          v14 = [SKError failWithError:v23 error:a4];
        }
      }
    }

    else
    {
      v15 = SKGetOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[SKPartitionTable fitToContainerSize:error:]";
        v30 = 1024;
        v31 = 0;
        _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:0 userInfo:0];
      v14 = [SKError failWithError:v11 error:a4];
    }
  }

  else
  {
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)resizePartitionID:(id)a3 size:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v51 = a3;
  if ([(SKPartitionTable *)self allocateMediaRef:a6])
  {
    v56 = 0;
    [(SKPartitionTable *)self mediaRef];
    v8 = MKCFReadMedia();
    v9 = v8;
    if (!v8)
    {
      v21 = SKGetOSLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "[SKPartitionTable resizePartitionID:size:offset:error:]";
        v64 = 1024;
        v65 = v56;
        _os_log_impl(&dword_26BBB8000, v21, OS_LOG_TYPE_ERROR, "%s: Failed to read media, MK err %d", buf, 0x12u);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v56 userInfo:0];
      v20 = [SKError failWithError:v10 error:a6];
      goto LABEL_26;
    }

    v10 = [v8 objectForKeyedSubscript:@"Schemes"];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"Sections"];
    v48 = [v12 objectAtIndexedSubscript:0];
    v13 = [v48 objectForKeyedSubscript:@"Partitions"];
    v14 = [(SKPartitionTable *)self disk];
    v15 = [v14 type];
    v16 = diskTypeToScheme(v15);

    v47 = v13;
    if (v16 == 512)
    {
      MKCFDisposeMedia();
      v17 = [(SKPartitionTable *)self disk];
      v61 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      v19 = [SKError errorWithCode:117 disks:v18 userInfo:0];
      v20 = [SKError failWithError:v19 error:a6];
    }

    else
    {
      v42 = v16;
      v43 = v12;
      v44 = v11;
      v45 = v10;
      v46 = v9;
      v41 = a6;
      v17 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v53;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v53 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v52 + 1) + 8 * i);
            v28 = [v27 mutableCopy];
            v29 = [v27 objectForKeyedSubscript:@"Partition ID"];
            v30 = [v29 isEqualToNumber:v51];

            if (v30)
            {
              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{a4 / -[SKPartitionTable sectorSize](self, "sectorSize")}];
              [v28 setObject:v31 forKeyedSubscript:@"Size"];

              if (a5)
              {
                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{a5 / -[SKPartitionTable sectorSize](self, "sectorSize")}];
                [v28 setObject:v32 forKeyedSubscript:@"Offset"];
              }
            }

            [v17 addObject:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v24);
      }

      v58 = @"Partitions";
      v59 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v33 = [(SKPartitionTable *)self overwriteExistingMediaLayout:v18 opts:&unk_287C9A5F0 partitionScheme:v42];
      v9 = v46;
      MKCFDisposeMedia();
      if (!v33)
      {
        v35 = SKGetOSLog();
        v12 = v43;
        v34 = v48;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v63 = "[SKPartitionTable resizePartitionID:size:offset:error:]";
          _os_log_impl(&dword_26BBB8000, v35, OS_LOG_TYPE_ERROR, "%s: Failed to overwrite existing partition", buf, 0xCu);
        }

        v36 = [(SKPartitionTable *)self disk];
        v57 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v38 = [SKError errorWithCode:114 disks:v37 userInfo:0];
        v20 = [SKError failWithError:v38 error:v41];

        v11 = v44;
        v10 = v45;
        goto LABEL_25;
      }

      [(SKPartitionTable *)self flushMediaRef];
      v20 = 1;
      v10 = v45;
      v12 = v43;
    }

    v34 = v48;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v20 = 0;
LABEL_27:

  v39 = *MEMORY[0x277D85DE8];
  return v20;
}

@end