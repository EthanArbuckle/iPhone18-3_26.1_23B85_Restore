@interface BRCDocumentSignatureCalculator
+ (id)_calculateSignatureForFileAtURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
+ (id)_calculateSignatureForPackageAtURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
+ (id)calculateSignatureForScopedURLWrapper:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
+ (id)calculateSignatureForURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5;
@end

@implementation BRCDocumentSignatureCalculator

+ (id)calculateSignatureForURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 startAccessingSecurityScopedResource];
  v22 = 0;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v8 path];
  v13 = [v11 fileExistsAtPath:v12 isDirectory:&v22];

  if (v13)
  {
    if (v22 == 1)
    {
      [a1 _calculateSignatureForPackageAtURL:v8 boundaryKey:v9 error:a5];
    }

    else
    {
      [a1 _calculateSignatureForFileAtURL:v8 boundaryKey:v9 error:a5];
    }
    v18 = ;
    if (!v10)
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
      if (!a5)
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

  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  v18 = 0;
  if (v10)
  {
LABEL_10:
    [v8 stopAccessingSecurityScopedResource];
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)calculateSignatureForScopedURLWrapper:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 url];
  v10 = MEMORY[0x277CFAE88];
  v11 = [v8 _scope];

  v12 = [v10 consumeSandboxExtension:v11 error:a5];
  if (v12 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_class() calculateSignatureForURL:v9 boundaryKey:v7 error:a5];
    [MEMORY[0x277CFAE88] releaseSandboxExtensionHandle:v12];
  }

  return v13;
}

+ (id)_calculateSignatureForPackageAtURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__53;
  v36 = __Block_byref_object_dispose__53;
  v37 = 0;
  v9 = [BRCFSPackageEnumerator alloc];
  v10 = (v33 + 5);
  obj = v33[5];
  v11 = [(BRCFSPackageEnumerator *)v9 initForURL:v7 boundaryKey:v8 error:&obj];
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
    if (!a5)
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
  if (a5)
  {
    v21 = v13;
    *a5 = v13;
  }

  if (v33[5])
  {
    v22 = 0;
  }

  else
  {
    v22 = [v14 signature];
  }

  _Block_object_dispose(&v32, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
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

+ (id)_calculateSignatureForFileAtURL:(id)a3 boundaryKey:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CFAE88] open:v8 flags:33028];
  if ((v10 & 0x80000000) != 0)
  {
    v13 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      *buf = 138413058;
      v25 = a1;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v13;
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
    v12 = [MEMORY[0x277CBC6A8] br_signatureWithFileDescriptor:v10 boundaryKey:v9 error:&v23];
    v13 = v23;
    if (!(v12 | v13))
    {
      v13 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    }

    [MEMORY[0x277CFAE88] closeFD:v11];
  }

  v16 = v13;
  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v22 = "(passed to caller)";
      *buf = 136315906;
      v25 = "+[BRCDocumentSignatureCalculator _calculateSignatureForFileAtURL:boundaryKey:error:]";
      v26 = 2080;
      if (!a5)
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

  if (a5)
  {
    v19 = v16;
    *a5 = v16;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

@end