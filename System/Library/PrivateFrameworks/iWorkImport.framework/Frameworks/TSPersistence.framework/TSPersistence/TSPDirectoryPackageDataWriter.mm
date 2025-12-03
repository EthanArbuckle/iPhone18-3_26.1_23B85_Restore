@interface TSPDirectoryPackageDataWriter
- (BOOL)flushPendingWritesReturningError:(id *)error;
- (BOOL)writeData:(id)data toRelativePath:(id)path allowEncryption:(BOOL)encryption error:(id *)error;
- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)path;
- (TSPDirectoryPackageDataWriter)init;
- (TSPDirectoryPackageDataWriter)initWithURL:(id)l;
- (id)targetDataURLForPath:(id)path;
@end

@implementation TSPDirectoryPackageDataWriter

- (TSPDirectoryPackageDataWriter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDirectoryPackageDataWriter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 14, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDirectoryPackageDataWriter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDirectoryPackageDataWriter)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = TSPDirectoryPackageDataWriter;
  v7 = [(TSPDirectoryPackageDataWriter *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(lCopy, v5, v6);
    URL = v7->_URL;
    v7->_URL = v8;
  }

  return v7;
}

- (id)targetDataURLForPath:(id)path
{
  v3 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(self->_URL, a2, path, 0);

  return v3;
}

- (BOOL)writeData:(id)data toRelativePath:(id)path allowEncryption:(BOOL)encryption error:(id *)error
{
  dataCopy = data;
  pathCopy = path;
  if (pathCopy)
  {
    if (dataCopy)
    {
      v12 = objc_msgSend_targetDataURLForPath_(self, v10, pathCopy);
      v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14);
      v18 = objc_msgSend_URLByDeletingLastPathComponent(v12, v16, v17);
      v33 = 0;
      v20 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v15, v19, v18, 1, 0, &v33);
      v21 = v33;

      if (v20)
      {
        v23 = objc_msgSend_writeToURL_options_error_(dataCopy, v22, v12, 0, error);
LABEL_12:

        goto LABEL_13;
      }

      if (*MEMORY[0x277D81408] == -1)
      {
        if (error)
        {
LABEL_9:
          v31 = v21;
          v23 = 0;
          *error = v21;
          goto LABEL_12;
        }
      }

      else
      {
        sub_276BD5B88();
        if (error)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      goto LABEL_12;
    }

    v23 = 1;
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDirectoryPackageDataWriter writeData:toRelativePath:allowEncryption:error:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 31, 0, "Path should be defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v23 = 0;
  }

LABEL_13:

  return v23;
}

- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = objc_msgSend_targetDataURLForPath_(self, v4, pathCopy);
    v7 = CGDataConsumerCreateWithURL(v6);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDirectoryPackageDataWriter newCGDataConsumerAtRelativePath:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 57, 0, "Path should be defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v7 = 0;
  }

  return v7;
}

- (BOOL)flushPendingWritesReturningError:(id *)error
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDirectoryPackageDataWriter flushPendingWritesReturningError:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 66, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSPDirectoryPackageDataWriter flushPendingWritesReturningError:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

@end