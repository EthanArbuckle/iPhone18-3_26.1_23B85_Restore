@interface MantaFTABFile
+ (id)longTagName:(id)name;
- (BOOL)addSubfileWithTagName:(id)name contentsOfURL:(id)l;
- (BOOL)addSubfileWithTagName:(id)name subfileData:(id)data;
- (BOOL)configureFileHandleWriteDestinationForURL:(id)l;
- (BOOL)initFile;
- (BOOL)parseFileData;
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length;
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length handle:(id)handle;
- (BOOL)writeSubfileToURL:(id)l tag:(id)tag;
- (BOOL)writeToDestination;
- (BOOL)writeToURL:(id)l;
- (MantaFTABFile)init;
- (MantaFTABFile)initWithContentsOfURL:(id)l;
- (MantaFTABFile)initWithData:(id)data;
- (NSString)bverString;
- (NSString)dumpString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createFileHandleForWritingToURL:(id)l;
- (id)description;
- (id)subfileWithTag:(id)tag;
- (id)writeToData;
- (void)addSubfiles:(id)subfiles;
- (void)configureDataWriteDestination;
- (void)parseFileData;
- (void)removeSubfileWithTag:(id)tag;
- (void)setManifest:(id)manifest;
- (void)writeToDestination;
@end

@implementation MantaFTABFile

- (NSString)dumpString
{
  v27 = *MEMORY[0x29EDCA608];
  string = [MEMORY[0x29EDBA050] string];
  v4 = [(MantaFTABFile *)self url];
  [string appendFormat:@"Location: %@\n", v4];

  [string appendFormat:@"Generation: 0x%08x\n", -[MantaFTABFile generation](self, "generation")];
  [string appendFormat:@"Valid: %u\n", -[MantaFTABFile valid](self, "valid")];
  bootNonce = [(MantaFTABFile *)self bootNonce];
  byteString = [bootNonce byteString];
  [string appendFormat:@"Boot nonce: %@\n", byteString];

  v7 = objc_alloc(MEMORY[0x29EDBA0F8]);
  magic = [(MantaFTABFile *)self magic];
  v9 = [v7 initWithData:magic encoding:4];

  [string appendFormat:@"Magic: %@\n", v9];
  manifest = [(MantaFTABFile *)self manifest];

  if (manifest)
  {
    manifest2 = [(MantaFTABFile *)self manifest];
    dumpString = [manifest2 dumpString];
    [string appendFormat:@"\n%@\n", dumpString];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  subfiles = [(MantaFTABFile *)self subfiles];
  v14 = [subfiles countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(subfiles);
        }

        dumpString2 = [*(*(&v22 + 1) + 8 * i) dumpString];
        [string appendFormat:@"\n%@\n", dumpString2];
      }

      v15 = [subfiles countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x29EDBA0F8] stringWithString:string];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (MantaFTABFile)initWithContentsOfURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = MantaFTABFile;
  v6 = [(MantaFTABFile *)&v14 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v13 = 0;
  v7 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:lCopy options:1 error:&v13];
  v8 = v13;
  fileData = v6->_fileData;
  v6->_fileData = v7;

  if (!v6->_fileData)
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile initWithContentsOfURL:];
    }

    goto LABEL_9;
  }

  if (![(MantaFTABFile *)v6 initFile])
  {
LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_url, l);

LABEL_5:
  v10 = v6;
LABEL_10:

  return v10;
}

- (MantaFTABFile)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MantaFTABFile;
  v5 = [(MantaFTABFile *)&v10 init];
  if (v5 && (v6 = [dataCopy copy], fileData = v5->_fileData, v5->_fileData = v6, fileData, !-[MantaFTABFile initFile](v5, "initFile")))
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
  array = [MEMORY[0x29EDB8DE8] array];
  subFileArray = self->_subFileArray;
  self->_subFileArray = array;

  return [(MantaFTABFile *)self parseFileData];
}

- (MantaFTABFile)init
{
  v11.receiver = self;
  v11.super_class = MantaFTABFile;
  v2 = [(MantaFTABFile *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileData = v2->_fileData;
    v2->_fileData = v3;

    manifest = v2->_manifest;
    v2->_manifest = 0;

    v2->_filePointer = [(NSData *)v2->_fileData bytes];
    v2->_fileLength = [(NSData *)v2->_fileData length];
    array = [MEMORY[0x29EDB8DE8] array];
    subFileArray = v2->_subFileArray;
    v2->_subFileArray = array;

    v8 = [MEMORY[0x29EDB8DA0] dataWithBytes:&kFTABMagicLowercase_0 length:8];
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
        if (![(MantaFTABFile *)self fileValidForOffset:v11 length:*(filePointer + 5)])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [MantaFTABFile parseFileData];
          }

          goto LABEL_26;
        }

        v12 = [[MantaFTABSubfile alloc] initWithTag:@"Manifest" dataPointer:&self->_filePointer[v11] dataLength:v10];
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
      while ([(MantaFTABFile *)self fileValidForOffset:v16 length:16])
      {
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        if (![(MantaFTABFile *)self fileValidForOffset:v18 length:v17])
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [MantaFTABFile parseFileData];
          }

          goto LABEL_26;
        }

        v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v15 length:4 encoding:4];
        if (!v19)
        {
          v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v15 parseFileData];
          }

          goto LABEL_26;
        }

        v20 = v19;
        v21 = [[MantaFTABSubfile alloc] initWithTag:v19 dataPointer:&self->_filePointer[v18] dataLength:v17];
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
        [MantaFTABFile parseFileData];
      }
    }

    else
    {
      v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        [(MantaFTABFile *)v5 parseFileData];
      }
    }
  }

  else
  {
    v2 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile parseFileData];
    }
  }

LABEL_26:

  return 0;
}

- (id)subfileWithTag:(id)tag
{
  v19 = *MEMORY[0x29EDCA608];
  tagCopy = tag;
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
        v11 = [v10 isEqual:tagCopy];

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

- (void)removeSubfileWithTag:(id)tag
{
  v4 = [(MantaFTABFile *)self subfileWithTag:tag];
  if (v4)
  {
    [(NSMutableArray *)self->_subFileArray removeObject:v4];
  }

  MEMORY[0x2A1C71028]();
}

- (id)description
{
  v22 = *MEMORY[0x29EDCA608];
  string = [MEMORY[0x29EDBA050] string];
  v4 = string;
  if (self->_url)
  {
    [string appendFormat:@"FTAB %@:\n", self->_url];
  }

  else
  {
    [string appendFormat:@"FTAB:\n", v16];
  }

  [v4 appendFormat:@"\tGeneration: 0x%08x\n", self->_generation];
  [v4 appendFormat:@"\tValid: %u\n", self->_valid];
  byteString = [(NSData *)self->_bootNonce byteString];
  [v4 appendFormat:@"\tBoot Nonce: %@\n", byteString];

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

- (BOOL)addSubfileWithTagName:(id)name contentsOfURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v13 = 0;
  v8 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:lCopy options:1 error:&v13];
  v9 = v13;
  if (v8)
  {
    v10 = [(MantaFTABFile *)self addSubfileWithTagName:nameCopy subfileData:v8];
  }

  else
  {
    v11 = os_log_create("com.apple.accessoryupdater.ftab", "parsing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile addSubfileWithTagName:contentsOfURL:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)addSubfileWithTagName:(id)name subfileData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  [(MantaFTABFile *)self removeSubfileWithTag:nameCopy];
  v8 = [MantaFTABSubfile alloc];
  bytes = [dataCopy bytes];
  v10 = [dataCopy length];

  v11 = [(MantaFTABSubfile *)v8 initWithTag:nameCopy dataPointer:bytes dataLength:v10];
  [(NSMutableArray *)self->_subFileArray addObject:v11];

  return 1;
}

- (void)addSubfiles:(id)subfiles
{
  v16 = *MEMORY[0x29EDCA608];
  subfilesCopy = subfiles;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [subfilesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subfilesCopy);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) tag];
        [(MantaFTABFile *)self removeSubfileWithTag:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [subfilesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_subFileArray addObjectsFromArray:subfilesCopy];

  v10 = *MEMORY[0x29EDCA608];
}

- (void)setManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = [[MantaFTABSubfile alloc] initWithTag:@"Manifest" data:manifestCopy];

  manifest = self->_manifest;
  self->_manifest = v5;
}

- (id)createFileHandleForWritingToURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    path2 = [lCopy path];
    v18 = 0;
    v8 = [defaultManager removeItemAtPath:path2 error:&v18];
    v9 = v18;

    if ((v8 & 1) == 0)
    {
      v15 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MantaFTABFile createFileHandleForWritingToURL:lCopy];
      }

      goto LABEL_14;
    }
  }

  defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
  path3 = [lCopy path];
  v12 = [defaultManager2 createFileAtPath:path3 contents:0 attributes:0];

  if ((v12 & 1) == 0)
  {
    v9 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile createFileHandleForWritingToURL:lCopy];
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v13 = [MEMORY[0x29EDB9FB0] fileHandleForWritingToURL:lCopy error:&v17];
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

- (BOOL)configureFileHandleWriteDestinationForURL:(id)l
{
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;
  lCopy = l;

  v6 = [(MantaFTABFile *)self createFileHandleForWritingToURL:lCopy];

  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = v6;

  return self->_fileHandleWriteDestination != 0;
}

- (void)configureDataWriteDestination
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  self->_fileHandleWriteDestination = 0;

  data = [MEMORY[0x29EDB8DF8] data];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = data;

  MEMORY[0x2A1C71028]();
}

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length
{
  fileHandleWriteDestination = self->_fileHandleWriteDestination;
  if (fileHandleWriteDestination)
  {

    LOBYTE(dataWriteDestination) = [(NSFileHandle *)fileHandleWriteDestination writeBytes:bytes length:length];
  }

  else
  {
    dataWriteDestination = self->_dataWriteDestination;
    if (dataWriteDestination)
    {
      [(NSMutableData *)dataWriteDestination appendBytes:bytes length:length, v4, v5];
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
    dataLength = [(MantaFTABSubfile *)manifest dataLength];
  }

  else
  {
    dataLength = 0;
    v5 = 0;
  }

  v38 = v5;
  v39 = dataLength;
  v41 = *[(NSData *)self->_magic bytes];
  LODWORD(v42) = [(NSMutableArray *)self->_subFileArray count];
  if (![(MantaFTABFile *)self writeBytes:v37 length:48])
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
    v10 = v3 + dataLength + 48;
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
        if (![(MantaFTABFile *)self writeBytes:&v29 length:16])
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v13 writeToDestination];
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
  if (v15 && ![(MantaFTABFile *)self writeBytes:[(MantaFTABSubfile *)v15 dataPointer] length:[(MantaFTABSubfile *)self->_manifest dataLength]])
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
        if (!-[MantaFTABFile writeBytes:length:](self, "writeBytes:length:", [v20 dataPointer], objc_msgSend(v20, "dataLength")))
        {
          v22 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(MantaFTABFile *)v20 writeToDestination];
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

- (BOOL)writeToURL:(id)l
{
  lCopy = l;
  if ([(MantaFTABFile *)self configureFileHandleWriteDestinationForURL:lCopy])
  {
    writeToDestination = [(MantaFTABFile *)self writeToDestination];
    fileHandleWriteDestination = self->_fileHandleWriteDestination;
    self->_fileHandleWriteDestination = 0;
  }

  else
  {
    v7 = os_log_create("com.apple.accessoryupdater.ftab", "writing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MantaFTABFile writeToURL:lCopy];
    }

    writeToDestination = 0;
  }

  return writeToDestination;
}

- (id)writeToData
{
  [(MantaFTABFile *)self configureDataWriteDestination];
  [(MantaFTABFile *)self writeToDestination];
  v3 = [MEMORY[0x29EDB8DA0] dataWithData:self->_dataWriteDestination];
  dataWriteDestination = self->_dataWriteDestination;
  self->_dataWriteDestination = 0;

  return v3;
}

- (BOOL)writeSubfileToURL:(id)l tag:(id)tag
{
  lCopy = l;
  tagCopy = tag;
  v8 = [(MantaFTABFile *)self subfileWithTag:tagCopy];
  if (v8)
  {
    v9 = [(MantaFTABFile *)self createFileHandleForWritingToURL:lCopy];
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

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length handle:(id)handle
{
  v7 = MEMORY[0x29EDB8DA0];
  handleCopy = handle;
  v9 = [v7 dataWithBytes:bytes length:length];
  LOBYTE(bytes) = [handleCopy uarpWriteData:v9 error:0];

  return bytes;
}

- (id)copyWithZone:(_NSZone *)zone
{
  writeToData = [(MantaFTABFile *)self writeToData];
  v4 = [[MantaFTABFile alloc] initWithData:writeToData];

  return v4;
}

- (NSString)bverString
{
  v2 = [(MantaFTABFile *)self subfileWithTag:@"bver"];
  v3 = v2;
  if (v2 && (v4 = [v2 dataLength]) != 0)
  {
    LODWORD(v5) = v4;
    if (*([v3 dataPointer] + (v4 - 1)) == 10)
    {
      v5 = (v5 - 1);
    }

    else
    {
      v5 = v5;
    }

    v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:objc_msgSend(v3 length:"dataPointer") encoding:{v5, 4}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)longTagName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"acib"])
  {
    v4 = @"ACIBT";
  }

  else if ([nameCopy isEqualToString:@"aopf"])
  {
    v4 = @"AOP";
  }

  else if ([nameCopy isEqualToString:@"lpda"])
  {
    v4 = @"LeapBinsDigestsArray";
  }

  else if ([nameCopy isEqualToString:@"phyb"])
  {
    v4 = @"PhyBlueTooth";
  }

  else if ([nameCopy isEqualToString:@"rrko"])
  {
    v4 = @"RestoreRTKitOS";
  }

  else if ([nameCopy isEqualToString:@"rkos"])
  {
    v4 = @"RTKitOS";
  }

  else if ([nameCopy isEqualToString:@"rtpf"])
  {
    v4 = @"RTP";
  }

  else if ([nameCopy isEqualToString:@"sbd1"])
  {
    v4 = @"SoftwareBinaryDsp1";
  }

  else if ([nameCopy isEqualToString:@"sbd2"])
  {
    v4 = @"SoftwareBinaryDsp2";
  }

  else
  {
    v4 = 0;
  }

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

- (void)writeToDestination
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = [self tag];
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

@end