@interface UAPasteboardFileChunkItemProvider
- (UAPasteboardFileChunkItemProvider)initWithType:(id)type fileHandle:(id)handle offsetInFile:(id)file size:(int64_t)size;
- (void)getDataWithCompletionBlock:(id)block;
@end

@implementation UAPasteboardFileChunkItemProvider

- (UAPasteboardFileChunkItemProvider)initWithType:(id)type fileHandle:(id)handle offsetInFile:(id)file size:(int64_t)size
{
  typeCopy = type;
  handleCopy = handle;
  fileCopy = file;
  v17.receiver = self;
  v17.super_class = UAPasteboardFileChunkItemProvider;
  v13 = [(UAPasteboardFileChunkItemProvider *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(UAPasteboardFileChunkItemProvider *)v13 setDataFile:handleCopy];
    [(UAPasteboardFileChunkItemProvider *)v14 setOffsetInFile:fileCopy];
    [(UAPasteboardFileChunkItemProvider *)v14 setChunkSize:size];
    [(UAPasteboardFileChunkItemProvider *)v14 setType:typeCopy];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(UAPasteboardFileChunkItemProvider *)v14 setUuid:uUID];
  }

  return v14;
}

- (void)getDataWithCompletionBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dataFile = [(UAPasteboardFileChunkItemProvider *)self dataFile];

  if (dataFile)
  {
    v6 = +[UASharedPasteboardIRManager sharedIRManager];
    type = [(UAPasteboardFileChunkItemProvider *)self type];
    v8 = [v6 converterForType:type];

    v9 = _uaGetLogForCategory(@"pasteboard-client");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        type2 = [(UAPasteboardFileChunkItemProvider *)self type];
        *buf = 138543618;
        v39 = type2;
        v40 = 2112;
        v41 = objc_opt_class();
        v12 = v41;
        _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "[Local Pasteboard] Found converter for type: %{public}@ -> %@", buf, 0x16u);
      }

      dataFile2 = [(UAPasteboardFileChunkItemProvider *)self dataFile];
      offsetInFile = [(UAPasteboardFileChunkItemProvider *)self offsetInFile];
      [dataFile2 seekToFileOffset:{objc_msgSend(offsetInFile, "unsignedLongLongValue")}];

      dataFile3 = [(UAPasteboardFileChunkItemProvider *)self dataFile];
      v16 = [dataFile3 readDataOfLength:{-[UAPasteboardFileChunkItemProvider chunkSize](self, "chunkSize")}];

      if (v16 && [(UAFileChunkInputStream *)v16 length])
      {
        v17 = [v8 convertIRDataToPlatform:v16];
        v18 = v17;
        if (v17 && [v17 length])
        {
          v19 = [MEMORY[0x277CBEAE0] inputStreamWithData:v18];
          v20 = 0;
LABEL_22:

          blockCopy[2](blockCopy, v19, v20);
          goto LABEL_23;
        }

        v28 = _uaGetLogForCategory(@"pasteboard-client");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Zero length data from converter", buf, 2u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35 = @"Zero length data from converter";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v20 = [v29 errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:v30];
      }

      else
      {
        v22 = _uaGetLogForCategory(@"pasteboard-client");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_ERROR, "[Local Pasteboard] ERROR: Zero length data to convert", buf, 2u);
        }

        v23 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = @"Zero length data to convert";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v20 = [v23 errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:v18];
      }

      v19 = 0;
      goto LABEL_22;
    }

    if (v10)
    {
      type3 = [(UAPasteboardFileChunkItemProvider *)self type];
      *buf = 138412290;
      v39 = type3;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "[Local Pasteboard] No converter for type, using file stream: %@", buf, 0xCu);
    }

    v25 = [UAFileChunkInputStream alloc];
    dataFile4 = [(UAPasteboardFileChunkItemProvider *)self dataFile];
    offsetInFile2 = [(UAPasteboardFileChunkItemProvider *)self offsetInFile];
    v16 = [(UAFileChunkInputStream *)v25 initWithFileHandle:dataFile4 offsetInFile:offsetInFile2 size:[(UAPasteboardFileChunkItemProvider *)self chunkSize]];

    blockCopy[2](blockCopy, v16, 0);
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"File Provider does not have a backing file";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = [v21 errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:v8];
    blockCopy[2](blockCopy, 0, v16);
  }

LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
}

@end