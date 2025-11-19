@interface TSUZipFileWriter
+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6;
- (TSUZipFileWriter)initWithURL:(id)a3;
@end

@implementation TSUZipFileWriter

- (TSUZipFileWriter)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSUZipFileWriter;
  v5 = [(TSUZipWriter *)&v10 init];
  if (v5)
  {
    v6 = [[TSUFileIOChannel alloc] initForRandomWritingURL:v4];
    writeChannel = v5->_writeChannel;
    v5->_writeChannel = v6;

    v8 = v5->_writeChannel;
    if (v8)
    {
      [(TSURandomWriteChannel *)v8 setLowWater:-1];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6
{
  v61[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v44 = a5;
  v42 = a6;
  v43 = v10;
  v45 = v9;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:toURL:queue:completion:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileWriter.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:45 description:{@"invalid nil value for '%s'", "directoryURL"}];

    v10 = v43;
    if (v43)
    {
      goto LABEL_6;
    }
  }

  v14 = +[TSUAssertionHandler currentHandler];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:toURL:queue:completion:]"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileWriter.m"];
  [v14 handleFailureInFunction:v15 file:v16 lineNumber:46 description:{@"invalid nil value for '%s'", "URL"}];

  v10 = v43;
LABEL_6:
  if (!v44)
  {
    v17 = +[TSUAssertionHandler currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:toURL:queue:completion:]"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileWriter.m"];
    [v17 handleFailureInFunction:v18 file:v19 lineNumber:47 description:{@"invalid nil value for '%s'", "queue"}];

    v10 = v43;
  }

  if (!v42)
  {
    v20 = +[TSUAssertionHandler currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:toURL:queue:completion:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileWriter.m"];
    [v20 handleFailureInFunction:v21 file:v22 lineNumber:48 description:{@"invalid nil value for '%s'", "completion"}];

    v10 = v43;
  }

  v47 = [[TSUZipFileWriter alloc] initWithURL:v10];
  v23 = [v9 path];
  v24 = [v23 stringByDeletingLastPathComponent];
  v41 = [v24 stringByStandardizingPath];

  v46 = [v41 length];
  v25 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = *MEMORY[0x277CBE868];
  v61[0] = *MEMORY[0x277CBE868];
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  v28 = [v25 enumeratorAtURL:v9 includingPropertiesForKeys:v27 options:0 errorHandler:0];

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 1;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v28;
  v29 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v29)
  {
    v30 = *v55;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v54 + 1) + 8 * i);
        v53 = 0;
        v33 = [v32 getResourceValue:&v53 forKey:v26 error:0];
        v34 = v53;
        v35 = v34;
        if (v33)
        {
          if ([v34 BOOLValue])
          {
            goto LABEL_20;
          }

          v36 = [v32 path];
          v37 = [v36 stringByStandardizingPath];

          v38 = [v37 substringFromIndex:v46 + 1];
          v39 = [[TSUFileIOChannel alloc] initForReadingURL:v32];
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __61__TSUZipFileWriter_zipDirectoryAtURL_toURL_queue_completion___block_invoke;
          v52[3] = &unk_279D66678;
          v52[4] = v58;
          [(TSUZipWriter *)v47 writeEntryWithName:v38 fromReadChannel:v39 completion:v52];
        }

        else
        {
          v37 = +[TSUAssertionHandler currentHandler];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUZipFileWriter zipDirectoryAtURL:toURL:queue:completion:]"];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUZipFileWriter.m"];
          [v37 handleFailureInFunction:v38 file:v39 lineNumber:80 description:{@"Failed to obtain resource value for %@", v32}];
        }

LABEL_20:
      }

      v29 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v29);
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __61__TSUZipFileWriter_zipDirectoryAtURL_toURL_queue_completion___block_invoke_2;
  v49[3] = &unk_279D666A0;
  v40 = v42;
  v50 = v40;
  v51 = v58;
  [(TSUZipWriter *)v47 closeWithQueue:v44 completion:v49];

  _Block_object_dispose(v58, 8);
}

uint64_t __61__TSUZipFileWriter_zipDirectoryAtURL_toURL_queue_completion___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

@end