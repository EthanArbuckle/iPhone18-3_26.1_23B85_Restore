@interface TSPDatabaseArchiverWriter
- (BOOL)serializeArchive:(const Message *)a3;
- (NSString)fileStateIdentifier;
- (TSPDatabaseArchiverWriter)initWithDatabase:(id)a3 fileManager:(id)a4;
- (int64_t)dataStateIdentifier;
- (void)_writeDataFromInputStreamToFile:(id)a3 length:(int64_t)a4;
- (void)serializeDataFromStream:(id)a3 length:(int64_t)a4;
@end

@implementation TSPDatabaseArchiverWriter

- (TSPDatabaseArchiverWriter)initWithDatabase:(id)a3 fileManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSPDatabaseArchiverWriter;
  v9 = [(TSPDatabaseArchiverWriter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_fileManager, a4);
  }

  return v10;
}

- (BOOL)serializeArchive:(const Message *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_forceFileStorage)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter serializeArchive:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 64, 0, "Trying to write a protobuf archive to an archiver with forceFileStorage enabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = (*(a3->var0 + 9))(a3);
  if (v12 >> 31)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPDatabaseArchiverWriter serializeArchive:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 68, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    v15 = 0;
  }

  else
  {
    v14 = objc_msgSend__openDatabaseBlobWithSize_(self, v13, v12);
    sub_276AE3EC8(v25, v14);
    google::protobuf::io::CodedOutputStream::CodedOutputStream(v26, v25, 1);
    v27 = (*(a3->var0 + 12))(a3, v27, v26);
    v27 = google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(v26, v27);
    v15 = v26[56] ^ 1;
    google::protobuf::io::CodedOutputStream::~CodedOutputStream(v26);
    sub_276AE3ECC(v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (int64_t)dataStateIdentifier
{
  if (!self->_hasDataState)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter dataStateIdentifier]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 90, 0, "Tried to access invalid dataStateIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return self->_dataStateIdentifier;
}

- (NSString)fileStateIdentifier
{
  if (!self->_hasFileState)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseArchiverWriter fileStateIdentifier]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 102, 0, "Tried to access invalid fileStateIdentifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  fileStateIdentifier = self->_fileStateIdentifier;

  return fileStateIdentifier;
}

- (void)serializeDataFromStream:(id)a3 length:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 >= 40960 || self->_forceFileStorage)
  {
    objc_msgSend__writeDataFromInputStreamToFile_length_(self, v6, v6, a4);
  }

  else
  {
    objc_msgSend__writeDataFromInputStreamToDatabase_length_(self, v6, v6, a4);
  }
}

- (void)_writeDataFromInputStreamToFile:(id)a3 length:(int64_t)a4
{
  v18 = a3;
  if (!v18)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDatabaseArchiverWriter _writeDataFromInputStreamToFile:length:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseArchiverWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 182, 0, "%@ was asked to write a nil input stream to file.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (self->_hasFileState)
  {
    objc_msgSend_setDataFromInputStream_length_forIdentifier_(self->_fileManager, v6, v18, a4, self->_fileStateIdentifier);
  }

  else
  {
    if (objc_msgSend_length(self->_filenameHint, v6, v7))
    {
      objc_msgSend_addDataFromInputStream_length_filenameHint_(self->_fileManager, v15, v18, a4, self->_filenameHint);
    }

    else
    {
      objc_msgSend_addDataFromInputStream_length_filenameHint_(self->_fileManager, v15, v18, a4, @"obj");
    }
    v16 = ;
    objc_msgSend_setFileStateIdentifier_(self, v17, v16);
  }
}

@end