@interface BRCDocumentSignatureCalculator
+ (id)_calculateSignatureForFileAtURL:(id)l boundaryKey:(id)key error:(id *)error;
+ (id)_calculateSignatureForPackageAtURL:(id)l boundaryKey:(id)key error:(id *)error;
+ (id)calculateSignatureForScopedURLWrapper:(id)wrapper boundaryKey:(id)key error:(id *)error;
+ (id)calculateSignatureForURL:(id)l boundaryKey:(id)key error:(id *)error;
@end

@implementation BRCDocumentSignatureCalculator

+ (id)calculateSignatureForURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v22 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v13 = [defaultManager fileExistsAtPath:path isDirectory:&v22];

  if (v13)
  {
    if (v22 == 1)
    {
      [self _calculateSignatureForPackageAtURL:lCopy boundaryKey:keyCopy error:error];
    }

    else
    {
      [self _calculateSignatureForFileAtURL:lCopy boundaryKey:keyCopy error:error];
    }
    v18 = ;
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      v21 = "(passed to caller)";
      *buf = 136315906;
      v24 = "+[BRCDocumentSignatureCalculator calculateSignatureForURL:boundaryKey:error:]";
      v25 = 2080;
      if (!error)
      {
        v21 = "(ignored by caller)";
      }

      v26 = v21;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  v18 = 0;
  if (startAccessingSecurityScopedResource)
  {
LABEL_10:
    [lCopy stopAccessingSecurityScopedResource];
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)calculateSignatureForScopedURLWrapper:(id)wrapper boundaryKey:(id)key error:(id *)error
{
  keyCopy = key;
  wrapperCopy = wrapper;
  v9 = [wrapperCopy url];
  v10 = MEMORY[0x277CFAE88];
  _scope = [wrapperCopy _scope];

  v12 = [v10 consumeSandboxExtension:_scope error:error];
  if (v12 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_class() calculateSignatureForURL:v9 boundaryKey:keyCopy error:error];
    [MEMORY[0x277CFAE88] releaseSandboxExtensionHandle:v12];
  }

  return v13;
}

+ (id)_calculateSignatureForPackageAtURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__53;
  v36 = __Block_byref_object_dispose__53;
  v37 = 0;
  v9 = [BRCFSPackageEnumerator alloc];
  v10 = (v33 + 5);
  obj = v33[5];
  v11 = [(BRCFSPackageEnumerator *)v9 initForURL:lCopy boundaryKey:keyCopy error:&obj];
  objc_storeStrong(v10, obj);
  v12 = v33[5];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v17 = (v33 + 5);
    v30 = v33[5];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke;
    v26[3] = &unk_2785079F0;
    v18 = v16;
    v27 = v18;
    v14 = v15;
    v28 = v14;
    v29 = &v32;
    [v11 enumeratePackageItemsWithSortOrder:2 error:&v30 usingBlock:v26];
    objc_storeStrong(v17, v30);
    [v14 done];

    v13 = v33[5];
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    v25 = "(passed to caller)";
    *buf = 136315906;
    v39 = "+[BRCDocumentSignatureCalculator _calculateSignatureForPackageAtURL:boundaryKey:error:]";
    v40 = 2080;
    if (!error)
    {
      v25 = "(ignored by caller)";
    }

    v41 = v25;
    v42 = 2112;
    v43 = v13;
    v44 = 2112;
    v45 = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

LABEL_6:
  if (error)
  {
    v21 = v13;
    *error = v13;
  }

  if (v33[5])
  {
    signature = 0;
  }

  else
  {
    signature = [v14 signature];
  }

  _Block_object_dispose(&v32, 8);
  v23 = *MEMORY[0x277D85DE8];

  return signature;
}

void __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  [*(a1 + 32) updateWithPkgItem:a2];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 addItem:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 32) clear];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke_cold_1(v7, v12, v13);
    }

    *a4 = 1;
  }
}

+ (id)_calculateSignatureForFileAtURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  v10 = [MEMORY[0x277CFAE88] open:lCopy flags:33028];
  if ((v10 & 0x80000000) != 0)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      *buf = 138413058;
      selfCopy = self;
      v26 = 2112;
      v27 = lCopy;
      v28 = 2112;
      v29 = br_errorFromErrno;
      v30 = 2112;
      v31 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %@ - Failed opening contents at '%@'. Error: %@%@", buf, 0x2Au);
    }

    v12 = 0;
  }

  else
  {
    v11 = v10;
    v23 = 0;
    v12 = [MEMORY[0x277CBC6A8] br_signatureWithFileDescriptor:v10 boundaryKey:keyCopy error:&v23];
    br_errorFromErrno = v23;
    if (!(v12 | br_errorFromErrno))
    {
      br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    }

    [MEMORY[0x277CFAE88] closeFD:v11];
  }

  v16 = br_errorFromErrno;
  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v22 = "(passed to caller)";
      *buf = 136315906;
      selfCopy = "+[BRCDocumentSignatureCalculator _calculateSignatureForFileAtURL:boundaryKey:error:]";
      v26 = 2080;
      if (!error)
      {
        v22 = "(ignored by caller)";
      }

      v27 = v22;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v19 = v16;
    *error = v16;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

@end