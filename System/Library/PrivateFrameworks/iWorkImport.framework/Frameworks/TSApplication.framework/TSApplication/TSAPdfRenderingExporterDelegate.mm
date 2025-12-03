@interface TSAPdfRenderingExporterDelegate
- (BOOL)validatePassphrases:(id *)passphrases;
- (CGContext)newCGContextForURL:(id)l;
- (TSAPdfRenderingExporterDelegate)initWithRenderingExporter:(id)exporter;
- (void)releaseCGContext:(CGContext *)context;
- (void)setCopyPassphrase:(id)passphrase hint:(id)hint;
- (void)setPassphrase:(id)passphrase hint:(id)hint;
- (void)setPrintPassphrase:(id)passphrase hint:(id)hint;
@end

@implementation TSAPdfRenderingExporterDelegate

- (TSAPdfRenderingExporterDelegate)initWithRenderingExporter:(id)exporter
{
  exporterCopy = exporter;
  v8.receiver = self;
  v8.super_class = TSAPdfRenderingExporterDelegate;
  v5 = [(TSAPdfRenderingExporterDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mRenderingExporter, exporterCopy);
    v6->mRenderingQuality = 2;
    v6->mTaggingCondition = 0;
  }

  return v6;
}

- (void)setPassphrase:(id)passphrase hint:(id)hint
{
  passphraseCopy = passphrase;
  objc_storeStrong(&self->mPassphraseOpen, passphrase);
  v9 = self->mRequireOpenPassword || objc_msgSend_length(passphraseCopy, v6, v7, v8) != 0;
  self->mRequireOpenPassword = v9;
}

- (void)setPrintPassphrase:(id)passphrase hint:(id)hint
{
  objc_storeStrong(&self->mPassphrasePrintCopy, passphrase);
  passphraseCopy = passphrase;
  v10 = objc_msgSend_length(passphraseCopy, v7, v8, v9);

  self->mRequirePrintPassword = v10 != 0;
}

- (void)setCopyPassphrase:(id)passphrase hint:(id)hint
{
  objc_storeStrong(&self->mPassphrasePrintCopy, passphrase);
  passphraseCopy = passphrase;
  v10 = objc_msgSend_length(passphraseCopy, v7, v8, v9);

  self->mRequireCopyPassword = v10 != 0;
}

- (CGContext)newCGContextForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->mRenderingExporter);
  objc_msgSend_boundsRect(WeakRetained, v6, v7, v8);
  v10 = v9;
  v12 = v11;

  mediaBox.origin = *MEMORY[0x277CBF348];
  mediaBox.size.width = v10;
  mediaBox.size.height = v12;
  v16 = objc_msgSend_lastPathComponent(lCopy, v13, v14, v15);
  v20 = objc_msgSend_stringByDeletingPathExtension(v16, v17, v18, v19);

  if (!v20)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSAPdfRenderingExporterDelegate newCGContextForURL:]", v23);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfRenderingExporterDelegate.m", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 71, 0, "invalid nil value for '%{public}s'", "docTitle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  v33 = MEMORY[0x277CBEB38];
  v34 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v21, v22, v23);
  v37 = objc_msgSend_objectForInfoDictionaryKey_(v34, v35, @"CFBundleName", v36);
  v40 = objc_msgSend_dictionaryWithObjectsAndKeys_(v33, v38, v37, v39, *MEMORY[0x277CBF578], v20, *MEMORY[0x277CBF5E0], 0);

  v42 = MEMORY[0x277CBF5B8];
  if (self->mRequireOpenPassword)
  {
    objc_msgSend_setObject_forKey_(v40, v41, self->mPassphraseOpen, *MEMORY[0x277CBF5B8]);
    objc_msgSend_setObject_forKey_(v40, v43, self->mPassphraseOpen, *MEMORY[0x277CBF5F0]);
    objc_msgSend_setObject_forKey_(v40, v44, &unk_28851B428, *MEMORY[0x277CBF598]);
  }

  v45 = MEMORY[0x277CBED10];
  if (self->mRequireCopyPassword)
  {
    if (!self->mRequirePrintPassword)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (self->mRequirePrintPassword)
  {
LABEL_9:
    objc_msgSend_setObject_forKey_(v40, v41, *MEMORY[0x277CBED10], *MEMORY[0x277CBF558]);
    if (!self->mRequireCopyPassword)
    {
LABEL_11:
      objc_msgSend_setObject_forKey_(v40, v41, self->mPassphrasePrintCopy, *v42);
      goto LABEL_12;
    }

LABEL_10:
    objc_msgSend_setObject_forKey_(v40, v41, *v45, *MEMORY[0x277CBF550]);
    goto LABEL_11;
  }

LABEL_12:
  v46 = CGPDFContextCreateWithURL(lCopy, &mediaBox, v40);

  return v46;
}

- (void)releaseCGContext:(CGContext *)context
{
  CGPDFContextClose(context);

  CGContextRelease(context);
}

- (BOOL)validatePassphrases:(id *)passphrases
{
  if (self->mRequireOpenPassword)
  {
    canBeConvertedToEncoding = objc_msgSend_canBeConvertedToEncoding_(self->mPassphraseOpen, a2, 1, v3);
    if (self->mRequireCopyPassword)
    {
      if (!canBeConvertedToEncoding)
      {
        v7 = 0;
        goto LABEL_10;
      }

LABEL_9:
      v7 = objc_msgSend_canBeConvertedToEncoding_(self->mPassphrasePrintCopy, a2, 1, v3);
      goto LABEL_10;
    }
  }

  else
  {
    if (self->mRequireCopyPassword)
    {
      goto LABEL_9;
    }

    LOBYTE(canBeConvertedToEncoding) = 1;
  }

  v7 = !self->mRequirePrintPassword & canBeConvertedToEncoding;
  if (self->mRequirePrintPassword && (canBeConvertedToEncoding & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (passphrases && (v7 & 1) == 0)
  {
    v8 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], a2, passphrases, v3);
    v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Couldn’t Create PDF", &stru_288512028, @"TSApplication");

    v14 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v11, v12, v13);
    v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"PDF passwords must contain only printable ASCII characters. Remove unsupported symbols and non-English characters from the password, then try again.", &stru_288512028, @"TSApplication");

    v17 = MEMORY[0x277CCA9B8];
    v19 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v18, v16, *MEMORY[0x277CCA470]);
    *passphrases = objc_msgSend_tsu_errorWithDomain_code_alertTitle_alertMessage_userInfo_(v17, v20, @"com.apple.iWork.TSApplication", 1, v10, v16, v19);
  }

  return v7 & 1;
}

@end