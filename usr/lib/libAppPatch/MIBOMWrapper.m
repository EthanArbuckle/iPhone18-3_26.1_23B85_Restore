@interface MIBOMWrapper
+ (BOOL)_countFilesAndBytesInArchiveAtURL:(id)a3 withBOMCopier:(_BOMCopier *)a4 totalFiles:(unint64_t *)a5 totalUncompressedBytes:(unint64_t *)a6 error:(id *)a7;
+ (BOOL)extractZipArchiveAtURL:(id)a3 toURL:(id)a4 withError:(id *)a5;
+ (BOOL)extractZipArchiveAtURL:(id)a3 toURL:(id)a4 withError:(id *)a5 extractionProgressBlock:(id)a6;
@end

@implementation MIBOMWrapper

+ (BOOL)_countFilesAndBytesInArchiveAtURL:(id)a3 withBOMCopier:(_BOMCopier *)a4 totalFiles:(unint64_t *)a5 totalUncompressedBytes:(unint64_t *)a6 error:(id *)a7
{
  [a3 fileSystemRepresentation];
  v8 = BOMCopierCountFilesInArchive();
  v10 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
    if (v12)
    {
      strerror(v12);
    }
  }

  else if (!v8)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = _CreateError("+[MIBOMWrapper _countFilesAndBytesInArchiveAtURL:withBOMCopier:totalFiles:totalUncompressedBytes:error:]", 149, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to count the files and bytes in archive : %d (%s)", v9, v10);
  if (a7 && v11)
  {
    v11 = v11;
    *a7 = v11;
  }

LABEL_9:
  v13 = v11 == 0;

  return v13;
}

+ (BOOL)extractZipArchiveAtURL:(id)a3 toURL:(id)a4 withError:(id *)a5
{
  v7 = a4;
  v8 = a3;
  LOBYTE(a5) = [objc_opt_class() extractZipArchiveAtURL:v8 toURL:v7 withError:a5 extractionProgressBlock:0];

  return a5;
}

+ (BOOL)extractZipArchiveAtURL:(id)a3 toURL:(id)a4 withError:(id *)a5 extractionProgressBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v46 = 0u;
  v47 = 0u;
  v12 = objc_opt_new();
  v13 = v12;
  if (a5)
  {
    *a5 = 0;
  }

  [v12 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"extractPKZip"];
  v45 = 0;
  BomSys_init();
  BomSys_set_open();
  v15 = BOMCopierNewWithSys();
  if (v15)
  {
    BOMCopierSetFileErrorHandler();
    BOMCopierSetFatalErrorHandler();
    BOMCopierSetFatalFileErrorHandler();
    BOMCopierSetUserData();
    if (v11)
    {
      v43 = 0;
      v44 = 0;
      v42 = 0;
      v16 = [objc_opt_class() _countFilesAndBytesInArchiveAtURL:v9 withBOMCopier:v15 totalFiles:&v44 totalUncompressedBytes:&v43 error:&v42];
      v17 = v42;
      v18 = v43;
      if (v43)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v20 = [v9 path];
          v40 = v44;
          v41 = v43;
          v38 = v20;
          MOLogWrite();

          v18 = v43;
        }

        v21 = MEMORY[0x29C25D5D0](v11);
        *(&v46 + 1) = v18;
        *&v47 = 0;
        v22 = MEMORY[0x29C25D5D0]();
        v23 = *(&v47 + 1);
        *(&v47 + 1) = v22;

        BOMCopierSetCopyFileFinishedHandler();
        BOMCopierSetCopyFileUpdateHandler();
      }

      else
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v38 = [v9 path];
          v40 = v17;
          MOLogWrite();
        }

        v11[2](v11, -1.0);
      }
    }

    v27 = v9;
    v28 = v10;
    v29 = v13;
    if (!v29)
    {
      v29 = objc_opt_new();
    }

    v30 = v29;
    MIAssertHighResourceUsage();
    [v27 fileSystemRepresentation];
    [v28 fileSystemRepresentation];
    v31 = BOMCopierCopyWithOptions();
    MIClearResourceAssertion();

    if (v31 || BYTE4(v46) == 1)
    {
      v32 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v46 userInfo:{0, v38, v40, v41}];
      v24 = _CreateAndLogError("+[MIBOMWrapper extractZipArchiveAtURL:toURL:withError:extractionProgressBlock:]", 223, @"MIInstallerErrorDomain", 5, v32, &unk_2A1DE86F0, @"Could not extract archive", v33, v39);

      v26 = 0;
    }

    else
    {
      v24 = 0;
      v26 = 1;
    }

    v34 = *(&v47 + 1);
    *(&v47 + 1) = 0;

    BOMCopierFree();
  }

  else
  {
    v24 = _CreateAndLogError("+[MIBOMWrapper extractZipArchiveAtURL:toURL:withError:extractionProgressBlock:]", 189, @"MIInstallerErrorDomain", 5, 0, 0, @"Failed to create copier", v14, v38);
    v25 = *(&v47 + 1);
    *(&v47 + 1) = 0;

    v26 = 0;
  }

  if (v45)
  {
    BomSys_free();
  }

  if (a5)
  {
    v35 = v26;
  }

  else
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    v36 = v24;
    *a5 = v24;
  }

  return v26;
}

@end