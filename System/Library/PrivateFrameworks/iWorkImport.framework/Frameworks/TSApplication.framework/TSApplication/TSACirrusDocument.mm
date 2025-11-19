@interface TSACirrusDocument
- (TSACirrusDocument)initWithURL:(id)a3 registry:(id)a4 error:(id *)a5 passphrase:(id)a6;
- (TSADocumentRoot)documentRoot;
- (void)close;
- (void)dealloc;
- (void)documentDidLoad;
- (void)presentPersistenceError:(id)a3;
- (void)setContext:(id)a3;
@end

@implementation TSACirrusDocument

- (TSACirrusDocument)initWithURL:(id)a3 registry:(id)a4 error:(id *)a5 passphrase:(id)a6
{
  v10 = a3;
  v11 = a4;
  v14 = a6;
  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSACirrusDocument initWithURL:registry:error:passphrase:]", v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/cirrus/TSACirrusDocument.m", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 37, 0, "invalid nil value for '%{public}s'", "URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v66.receiver = self;
  v66.super_class = TSACirrusDocument;
  v24 = [(TSACirrusDocument *)&v66 init];
  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277D81350]);
    v65 = 0;
    v28 = objc_msgSend_initWithError_(v25, v26, &v65, v27);
    v29 = v65;
    tempDirForSupport = v24->_tempDirForSupport;
    v24->_tempDirForSupport = v28;

    v31 = objc_alloc(MEMORY[0x277D81350]);
    v64 = v29;
    v34 = objc_msgSend_initWithError_(v31, v32, &v64, v33);
    v35 = v64;

    tempDirForCache = v24->_tempDirForCache;
    v24->_tempDirForCache = v34;

    v40 = objc_msgSend_copy(v10, v37, v38, v39);
    fileURL = v24->_fileURL;
    v24->_fileURL = v40;

    if (v24->_tempDirForSupport)
    {
      v44 = objc_alloc(MEMORY[0x277D80878]);
      v63 = v35;
      v46 = objc_msgSend_initForQuickLookWithURL_registry_delegate_passphrase_error_(v44, v45, v10, v11, v24, v14, &v63);
      v47 = v63;

      v35 = v47;
    }

    else
    {
      v46 = 0;
    }

    objc_msgSend_setContext_(v24, v42, v46, v43);
    v51 = objc_msgSend_context(v24, v48, v49, v50);

    if (v51)
    {
      v55 = objc_msgSend_documentRoot(v24, v52, v53, v54);
      objc_msgSend_setDelegate_(v55, v56, v24, v57);
      objc_msgSend_documentDidLoad(v24, v58, v59, v60);
    }

    else
    {

      if (a5)
      {
        v61 = v35;
        v24 = 0;
        *a5 = v35;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  return v24;
}

- (void)setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  if (v5 | context)
  {
    v17 = v5;
    if ((objc_msgSend_isEqual_(context, v5, v5, v6) & 1) == 0)
    {
      objc_storeStrong(&self->_context, a3);
      v11 = objc_msgSend_documentPasswordHint(v17, v8, v9, v10);
      v15 = objc_msgSend_copy(v11, v12, v13, v14);
      documentPasswordHint = self->_documentPasswordHint;
      self->_documentPasswordHint = v15;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (TSADocumentRoot)documentRoot
{
  objc_opt_class();
  v6 = objc_msgSend_documentObject(self->_context, v3, v4, v5);
  v7 = TSUDynamicCast();

  return v7;
}

- (void)dealloc
{
  if (self->_context && !self->_isClosed)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSACirrusDocument dealloc]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/cirrus/TSACirrusDocument.m", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 88, 0, "Document was not closed.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v14 = objc_msgSend_documentRoot(self, a2, v2, v3);
  objc_msgSend_setDelegate_(v14, v15, 0, v16);

  v17.receiver = self;
  v17.super_class = TSACirrusDocument;
  [(TSACirrusDocument *)&v17 dealloc];
}

- (void)close
{
  if (!self->_isClosed)
  {
    self->_isClosed = 1;
    if (self->_context)
    {
      v7 = objc_msgSend_documentRoot(self, a2, v2, v3);
      objc_msgSend_willClose(v7, v4, v5, v6);
    }
  }
}

- (void)documentDidLoad
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3);
  objc_msgSend_documentDidLoad(v7, v4, v5, v6);
}

- (void)presentPersistenceError:(id)a3
{
  v3 = a3;
  v9 = objc_msgSend_sharedDelegate(TSABaseApplicationDelegate, v4, v5, v6);
  objc_msgSend_persistenceError_(v9, v7, v3, v8);
}

@end