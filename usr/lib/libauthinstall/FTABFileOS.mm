@interface FTABFileOS
- (BOOL)addSubfileWithTagName:(id)a3 contentsOfURL:(id)a4;
- (BOOL)addSubfileWithTagName:(id)a3 subfileData:(id)a4;
- (BOOL)configureFileHandleWriteDestinationForURL:(id)a3;
- (BOOL)initFile;
- (BOOL)parseFileData;
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4;
- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 handle:(id)a5;
- (BOOL)writeSubfileToURL:(id)a3 tag:(id)a4;
- (BOOL)writeToDestination;
- (BOOL)writeToURL:(id)a3;
- (FTABFileOS)init;
- (FTABFileOS)initWithContentsOfURL:(id)a3;
- (FTABFileOS)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createFileHandleForWritingToURL:(id)a3;
- (id)description;
- (id)subfileWithTag:(id)a3;
- (id)writeToData;
- (void)addSubfiles:(id)a3;
- (void)configureDataWriteDestination;
- (void)parseFileData;
- (void)removeSubfileWithTag:(id)a3;
- (void)setBootNonce:(id)a3;
- (void)setManifest:(id)a3;
- (void)writeToDestination;
@end

@implementation FTABFileOS

- (FTABFileOS)initWithContentsOfURL:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FTABFileOS;
  v6 = [(FTABFileOS *)&v14 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v13 = 0;
  v7 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:v5 options:1 error:&v13];
  v8 = v13;
  fileData = v6->_fileData;
  v6->_fileData = v7;

  if (!v6->_fileData)
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS initWithContentsOfURL:];
    }

    goto LABEL_9;
  }

  if (![(FTABFileOS *)v6 initFile])
  {
LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_url, a3);

LABEL_5:
  v10 = v6;
LABEL_10:

  return v10;
}

- (FTABFileOS)initWithData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FTABFileOS;
  v5 = [(FTABFileOS *)&v10 init];
  if (v5 && (v6 = [v4 copy], fileData = v5->_fileData, v5->_fileData = v6, fileData, !-[FTABFileOS initFile](v5, "initFile")))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)initFile
{
  self->_filePointer = [(NSData *)self->_fileData bytes];
  self->_fileLength = [(NSData *)self->_fileData length];
  v3 = [MEMORY[0x29EDB8DE8] array];
  subFileArray = self->_subFileArray;
  self->_subFileArray = v3;

  return [(FTABFileOS *)self parseFileData];
}

- (FTABFileOS)init
{
  v11.receiver = self;
  v11.super_class = FTABFileOS;
  v2 = [(FTABFileOS *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileData = v2->_fileData;
    v2->_fileData = v3;

    manifest = v2->_manifest;
    v2->_manifest = 0;

    v2->_filePointer = [(NSData *)v2->_fileData bytes];
    v2->_fileLength = [(NSData *)v2->_fileData length];
    v6 = [MEMORY[0x29EDB8DE8] array];
    subFileArray = v2->_subFileArray;
    v2->_subFileArray = v6;

    v8 = [MEMORY[0x29EDB8DA0] dataWithBytes:&kFTABMagicLowercase length:8];
    magic = v2->_magic;
    v2->_magic = v8;
  }

  return v2;
}

- (BOOL)parseFileData
{
  if (self->_fileLength > 0x2F)
  {
    filePointer = self->_filePointer;
    v5 = (filePointer + 32);
    if (*(filePointer + 4) == 0x42415446534F4B52 || *v5 == 0x62617466736F6B72)
    {
      v6 = [MEMORY[0x29EDB8DA0] dataWithBytes:v5 length:8];
      magic = self->_magic;
      self->_magic = v6;

      self->_generation = *filePointer;
      self->_valid = *(filePointer + 1);
      v8 = [MEMORY[0x29EDB8DA0] dataWithBytes:filePointer + 8 length:8];
      bootNonce = self->_bootNonce;
      self->_bootNonce = v8;

      v10 = *(filePointer + 5);
      if (v10)
      {
        v11 = *(filePointer + 4);
        if (![(FTABFileOS *)self fileValidForOffset:v11 length:*(filePointer + 5)])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [FTABFileOS parseFileData];
          }

          goto LABEL_26;
        }

        v12 = [[FTABSubfileOS alloc] initWithTag:@"Manifest" dataPointer:&self->_filePointer[v11] dataLength:v10];
        manifest = self->_manifest;
        self->_manifest = v12;
      }

      v14 = *(filePointer + 10);
      if (!v14)
      {
        return 1;
      }

      v15 = filePointer + 48;
      v16 = 48;
      while ([(FTABFileOS *)self fileValidForOffset:v16 length:16])
      {
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        if (![(FTABFileOS *)self fileValidForOffset:v18 length:v17])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [FTABFileOS parseFileData];
          }

          goto LABEL_26;
        }

        v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v15 length:4 encoding:4];
        if (!v19)
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [(FTABFileOS *)v15 parseFileData];
          }

          goto LABEL_26;
        }

        v20 = v19;
        v21 = [[FTABSubfileOS alloc] initWithTag:v19 dataPointer:&self->_filePointer[v18] dataLength:v17];
        [(NSMutableArray *)self->_subFileArray addObject:v21];
        --v14;
        v15 += 16;
        v16 = (v16 + 16);

        if (!v14)
        {
          return 1;
        }
      }

      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        [FTABFileOS parseFileData];
      }
    }

    else
    {
      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        [(FTABFileOS *)v5 parseFileData];
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS parseFileData];
    }
  }

LABEL_26:

  return 0;
}

- (id)subfileWithTag:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_subFileArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 tag];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)removeSubfileWithTag:(id)a3
{
  v4 = [(FTABFileOS *)self subfileWithTag:a3];
  if (v4)
  {
    [(NSMutableArray *)self->_subFileArray removeObject:v4];
  }
}

- (id)description
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA050] string];
  v4 = v3;
  if (self->_url)
  {
    [v3 appendFormat:@"FTAB %@:\n", self->_url];
  }

  else
  {
    [v3 appendFormat:@"FTAB:\n", v16];
  }

  [v4 appendFormat:@"\tGeneration: 0x%08x\n", self->_generation];
  [v4 appendFormat:@"\tValid: %u\n", self->_valid];
  [v4 appendFormat:@"\tBoot Nonce: "];
  if ([(NSData *)self->_bootNonce length])
  {
    v5 = 0;
    do
    {
      [v4 appendFormat:@"%02x", *(-[NSData bytes](self->_bootNonce, "bytes") + v5++)];
    }

    while (v5 < [(NSData *)self->_bootNonce length]);
  }

  [v4 appendFormat:@"\n"];
  if (self->_manifest)
  {
    [v4 appendFormat:@"\tManifest: %@\n", self->_manifest];
  }

  if ([(NSMutableArray *)self->_subFileArray count])
  {
    [v4 appendFormat:@"\tSubfiles:\n"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_subFileArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (-v9 != i)
          {
            [v4 appendString:@"\n"];
          }

          [v4 appendFormat:@"\t\t%@", v12];
        }

        v9 += v8;
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v13 = [MEMORY[0x29EDBA0F8] stringWithString:v4];

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (BOOL)addSubfileWithTagName:(id)a3 contentsOfURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:v7 options:1 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [(FTABFileOS *)self addSubfileWithTagName:v6 subfileData:v8];
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS addSubfileWithTagName:contentsOfURL:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)addSubfileWithTagName:(id)a3 subfileData:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(FTABFileOS *)self removeSubfileWithTag:v7];
  v8 = [FTABSubfileOS alloc];
  v9 = [v6 bytes];
  v10 = [v6 length];

  v11 = [(FTABSubfileOS *)v8 initWithTag:v7 dataPointer:v9 dataLength:v10];
  [(NSMutableArray *)self->_subFileArray addObject:v11];

  return 1;
}

- (void)addSubfiles:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) tag];
        [(FTABFileOS *)self removeSubfileWithTag:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_subFileArray addObjectsFromArray:v4];

  v10 = *MEMORY[0x29EDCA608];
}

- (void)setManifest:(id)a3
{
  v4 = a3;
  v5 = [[FTABSubfileOS alloc] initWithTag:@"Manifest" data:v4];

  manifest = self->_manifest;
  self->_manifest = v5;
}

- (void)setBootNonce:(id)a3
{
  v4 = a3;
  if ([v4 length] == 8)
  {
    v5 = [v4 copy];
    bootNonce = self->_bootNonce;
    self->_bootNonce = v5;
  }
}

- (id)createFileHandleForWritingToURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x29EDB9FB8] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [v3 path];
    v18 = 0;
    v8 = [v4 removeItemAtPath:v7 error:&v18];
    v9 = v18;

    if ((v8 & 1) == 0)
    {
      v15 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [FTABFileOS createFileHandleForWritingToURL:v3];
      }

      goto LABEL_14;
    }
  }

  v10 = [MEMORY[0x29EDB9FB8] defaultManager];
  v11 = [v3 path];
  v12 = [v10 createFileAtPath:v11 contents:0 attributes:0];

  if ((v12 & 1) == 0)
  {
    v9 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS createFileHandleForWritingToURL:v3];
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v13 = [MEMORY[0x29EDB9FB0] fileHandleForWritingToURL:v3 error:&v17];
  v9 = v17;
  if (!v13)
  {
    v14 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS createFileHandleForWritingToURL:];
    }
  }

LABEL_15:

  return v13;
}

- (BOOL)configureFileHandleWriteDestinationForURL:(id)a3
{
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;
  v5 = a3;

  v6 = [(FTABFileOS *)self createFileHandleForWritingToURL:v5];
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = v6;

  return self->_fileHandleWriteDestination != 0;
}

- (void)configureDataWriteDestination
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = 0;

  v4 = [MEMORY[0x29EDB8DF8] data];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = v4;
}

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  if (fileHandleWriteDestination)
  {

    LOBYTE(dataWriteDestination) = [(NSFileHandle *)fileHandleWriteDestination writeBytes:a3 length:a4];
  }

  else
  {
    dataWriteDestination = self->_dataWriteDestination;
    if (dataWriteDestination)
    {
      [(NSMutableData *)dataWriteDestination appendBytes:a3 length:a4, v4, v5];
      LOBYTE(dataWriteDestination) = 1;
    }
  }

  return dataWriteDestination;
}

- (BOOL)writeToDestination
{
  v43 = *MEMORY[0x29EDCA608];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37[0] = *&self->_generation;
  v37[1] = *[(NSData *)self->_bootNonce bytes];
  v3 = 16 * [(NSMutableArray *)self->_subFileArray count];
  manifest = self->_manifest;
  if (manifest)
  {
    v5 = v3 + 48;
    v6 = [(FTABSubfileOS *)manifest dataLength];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v38 = v5;
  v39 = v6;
  v41 = *[(NSData *)self->_magic bytes];
  LODWORD(v42) = [(NSMutableArray *)self->_subFileArray count];
  if (![(FTABFileOS *)self writeBytes:v37 length:48])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS writeToDestination];
    }

    goto LABEL_31;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_subFileArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v3 + v6 + 48;
    v11 = *v32;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v29 = 0;
        v30 = 0;
        v14 = [v13 tag];
        LODWORD(v29) = *[v14 UTF8String];

        HIDWORD(v29) = v10;
        LODWORD(v30) = [v13 dataLength];
        if (![(FTABFileOS *)self writeBytes:&v29 length:16])
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(FTABFileOS *)v13 writeToDestination];
          }

LABEL_30:

          goto LABEL_31;
        }

        v10 += [v13 dataLength];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = self->_manifest;
  if (v15 && ![(FTABFileOS *)self writeBytes:[(FTABSubfileOS *)v15 dataPointer] length:[(FTABSubfileOS *)self->_manifest dataLength]])
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS writeToDestination];
    }

LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_subFileArray;
  v16 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        if (!-[FTABFileOS writeBytes:length:](self, "writeBytes:length:", [v20 dataPointer], objc_msgSend(v20, "dataLength")))
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(FTABFileOS *)v20 writeToDestination];
          }

          goto LABEL_30;
        }
      }

      v17 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
      v21 = 1;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_32:

  v23 = *MEMORY[0x29EDCA608];
  return v21;
}

- (BOOL)writeToURL:(id)a3
{
  v4 = a3;
  if ([(FTABFileOS *)self configureFileHandleWriteDestinationForURL:v4])
  {
    v5 = [(FTABFileOS *)self writeToDestination];
    fileHandleWriteDestination = self->_fileHandleWriteDestination;
    self->_fileHandleWriteDestination = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS writeToURL:v4];
    }

    v5 = 0;
  }

  return v5;
}

- (id)writeToData
{
  [(FTABFileOS *)self configureDataWriteDestination];
  [(FTABFileOS *)self writeToDestination];
  v3 = [MEMORY[0x29EDB8DA0] dataWithData:self->_dataWriteDestination];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;

  return v3;
}

- (BOOL)writeSubfileToURL:(id)a3 tag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTABFileOS *)self subfileWithTag:v7];
  if (v8)
  {
    v9 = [(FTABFileOS *)self createFileHandleForWritingToURL:v6];
    if (v9)
    {
      v10 = [v9 writeBytes:objc_msgSend(v8 length:{"dataPointer"), objc_msgSend(v8, "dataLength")}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FTABFileOS writeSubfileToURL:tag:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)writeBytes:(const void *)a3 length:(unint64_t)a4 handle:(id)a5
{
  v7 = MEMORY[0x29EDB8DA0];
  v8 = a5;
  v9 = [v7 dataWithBytes:a3 length:a4];
  LOBYTE(a3) = [v8 ftabWriteData:v9 error:0];

  return a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(FTABFileOS *)self writeToData];
  v4 = [[FTABFileOS alloc] initWithData:v3];

  return v4;
}

- (void)initWithContentsOfURL:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_1_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)parseFileData
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)addSubfileWithTagName:contentsOfURL:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_1_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)createFileHandleForWritingToURL:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_15(&dword_29849C000, v2, v3, "Unable to delete file at %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

- (void)createFileHandleForWritingToURL:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_15(&dword_29849C000, v2, v3, "Unable to create file at %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

- (void)createFileHandleForWritingToURL:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)writeToDestination
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [a1 tag];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_15(&dword_29849C000, v2, v3, "Failed to write '%@'", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

- (void)writeToURL:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [a1 absoluteString];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_15(&dword_29849C000, v2, v3, "Failed to open file handle for writing to '%@'", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

- (void)writeSubfileToURL:tag:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

@end