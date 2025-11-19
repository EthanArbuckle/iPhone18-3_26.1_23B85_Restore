@interface PBFPosterConfigurationStoreArchiver
+ (id)_unarchiveWithHandler:(id)a3 manifest:(id *)a4 error:(id *)a5;
+ (id)archiveConfigurationStoreWithCoordinator:(id)a3 error:(id *)a4;
+ (id)unarchiveConfigurationStoreArchiveAtURL:(id)a3 manifest:(id *)a4 error:(id *)a5;
+ (id)unarchiveConfigurationStoreArchiveData:(id)a3 manifest:(id *)a4 error:(id *)a5;
@end

@implementation PBFPosterConfigurationStoreArchiver

+ (id)archiveConfigurationStoreWithCoordinator:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identityOfLatestVersion];
  v6 = [v5 provider];

  v7 = [[PBFPosterConfigurationStoreArchiveManifest alloc] initWithConfigurationStoreCoordinator:v4];
  v8 = [v4 posterUUID];
  v9 = [v8 UUIDString];
  v10 = [(PBFPosterConfigurationStoreArchiveManifest *)v7 buildVersion];
  v11 = [v6 stringByAppendingFormat:@"-%@-%@", v9, v10];

  v12 = MEMORY[0x277CBEBC0];
  v13 = PFTemporaryDirectory();
  v14 = [v12 fileURLWithPath:v13 isDirectory:1];
  v15 = [v14 URLByAppendingPathComponent:@"PosterConfigurations" isDirectory:1];
  v16 = [v15 URLByAppendingPathComponent:v11];

  v17 = objc_alloc_init(MEMORY[0x277CCAA00]);
  [v17 removeItemAtURL:v16 error:0];
  v18 = PFFileProtectionNoneAttributes();
  v38 = 0;
  LOBYTE(v15) = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:v18 error:&v38];
  v19 = v38;

  if (v15)
  {
    v33 = v6;
    v37 = 0;
    v20 = [(PBFPosterConfigurationStoreArchiveManifest *)v7 dataRepresentationWithError:&v37];
    v21 = v37;

    if (v20)
    {
      v22 = [MEMORY[0x277CBEBC0] pbf_manifestURLInContainerURL:v16];
      v36 = v21;
      v23 = [v20 writeToURL:v22 options:0 error:&v36];
      v24 = v36;

      if (!v23)
      {
        v27 = 0;
        v21 = v24;
LABEL_9:
        v28 = a4;

        [v17 removeItemAtURL:v16 error:0];
        v19 = v21;
        v6 = v33;
        if (v27)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v25 = [v4 identifierURL];
      v26 = [v16 URLByAppendingPathComponent:@"configuration"];
      v35 = v24;
      v32 = [v17 copyItemAtURL:v25 toURL:v26 error:&v35];
      v21 = v35;

      if (v32)
      {
        v27 = [v16 URLByAppendingPathExtension:@"aa"];
        PBFAppleArchiveCompressDirectory(v16, v27);
        goto LABEL_9;
      }
    }

    v27 = 0;
    goto LABEL_9;
  }

  [v17 removeItemAtURL:v16 error:0];
  v28 = a4;
LABEL_10:
  if (v19)
  {
    v39 = *MEMORY[0x277CCA7E8];
    v40[0] = v19;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  }

  else
  {
    v29 = 0;
  }

  v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"PBFArchiverErrorDomain" code:2 userInfo:v29];

  v27 = 0;
LABEL_14:
  if (v28)
  {
    v30 = v21;
    *v28 = v21;
  }

  return v27;
}

+ (id)unarchiveConfigurationStoreArchiveAtURL:(id)a3 manifest:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_2782C8EE0;
  v13 = v8;
  v9 = v8;
  v10 = [a1 _unarchiveWithHandler:v12 manifest:a4 error:a5];

  return v10;
}

+ (id)unarchiveConfigurationStoreArchiveData:(id)a3 manifest:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [MEMORY[0x277CCAC10] pipe];
  v10 = [v9 fileHandleForWriting];
  v11 = [v9 fileHandleForReading];
  Serial = BSDispatchQueueCreateSerial();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke;
  block[3] = &unk_2782C58B0;
  v21 = v10;
  v22 = v8;
  v13 = v8;
  v14 = v10;
  dispatch_async(Serial, block);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke_2;
  v18[3] = &unk_2782C8EE0;
  v19 = v11;
  v15 = v11;
  v16 = [a1 _unarchiveWithHandler:v18 manifest:a4 error:a5];
  [v15 closeFile];

  return v16;
}

uint64_t __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) writeData:*(a1 + 40) error:0];
  v2 = *(a1 + 32);

  return [v2 closeFile];
}

+ (id)_unarchiveWithHandler:(id)a3 manifest:(id *)a4 error:(id *)a5
{
  v77[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = MEMORY[0x277CBEBC0];
  v9 = PFTemporaryDirectory();
  v10 = [v8 fileURLWithPath:v9 isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:@"PosterConfigurations" isDirectory:1];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 URLByAppendingPathComponent:v13];

  [v7 removeItemAtURL:v14 error:0];
  v15 = PFFileProtectionNoneAttributes();
  v71 = 0;
  LODWORD(v10) = [v7 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:v15 error:&v71];
  v16 = v71;

  if (!v10)
  {
    v23 = 0;
    v27 = a5;
    v19 = v64;
    goto LABEL_23;
  }

  if (v6[2](v6, v14))
  {
    v17 = [v14 URLByAppendingPathComponent:@"configuration"];
    v18 = [MEMORY[0x277CBEBC0] pbf_manifestURLInContainerURL:v14];
    v19 = v64;
    v61 = v17;
    [v64 addObject:v17];
    [v64 addObject:v18];
    v70 = v16;
    v59 = v18;
    v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v18 options:0 error:&v70];
    v21 = v70;

    v58 = v20;
    v22 = [[PBFPosterConfigurationStoreArchiveManifest alloc] initWithDataRepresentation:v20];
    v23 = v22;
    v60 = v22;
    if (v22)
    {
      v57 = v21;
      v24 = [(PBFPosterConfigurationStoreArchiveManifest *)v22 archiveVersion];
      if (v24 >= [a1 minSupportedArchiveVersion])
      {
        v56 = v6;
        v31 = [(PBFPosterConfigurationStoreArchiveManifest *)v23 extensionIdentifier];
        v26 = [v14 URLByAppendingPathComponent:v31];

        v32 = MEMORY[0x277CBEBC0];
        v33 = [(PBFPosterConfigurationStoreArchiveManifest *)v23 configurationUUID];
        v21 = [v32 pf_posterPathIdentifierURLProviderURL:v26 type:3 posterUUID:v33];

        v34 = [v21 URLByDeletingLastPathComponent];
        v35 = PFFileProtectionNoneAttributes();
        v69 = v57;
        v36 = [v7 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:v35 error:&v69];
        v16 = v69;

        if (v36)
        {
          v68 = v16;
          v37 = [v7 copyItemAtURL:v61 toURL:v21 error:&v68];
          v38 = v68;

          if (!v37)
          {
            v23 = 0;
            v16 = v38;
            v27 = a5;
            v19 = v64;
            goto LABEL_21;
          }

          v39 = [v26 URLByAppendingPathComponent:@"/"];

          [(PBFPosterConfigurationStoreArchiveManifest *)v60 configurationUUID];
          v40 = v54 = v38;
          v41 = MEMORY[0x277D3EB98];
          v42 = [(PBFPosterConfigurationStoreArchiveManifest *)v60 extensionIdentifier];
          v43 = [MEMORY[0x277D3EDE8] loadPosterDescriptorIdentifierForPathAtURL:v39 type:3 posterUUID:v40];
          v44 = [(PBFPosterConfigurationStoreArchiveManifest *)v60 role];
          v55 = v40;
          v45 = [v41 configurationIdentityWithProvider:v42 identifier:v43 role:v44 posterUUID:v40 version:-[PBFPosterConfigurationStoreArchiveManifest latestConfigurationVersion](v60 supplement:{"latestConfigurationVersion"), -[PBFPosterConfigurationStoreArchiveManifest latestConfigurationSupplement](v60, "latestConfigurationSupplement")}];

          v46 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v39 identity:v45];
          v67 = 0;
          v47 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:v46 error:&v67];
          v16 = v67;

          if (v47)
          {
            v48 = v45;
            v23 = [objc_alloc(MEMORY[0x277D3ECE0]) initWithNewPath:v46 destinationPosterUUID:0 sourceIdentity:v45 configuredProperties:v47 attributes:0];
            if (a4)
            {
              *a4 = v60;
            }

            v27 = a5;
          }

          else
          {
            v48 = v45;
            v23 = 0;
            v27 = a5;
          }

          v26 = v39;
          v6 = v56;
        }

        else
        {
          v23 = 0;
          v27 = a5;
        }

        v19 = v64;
        goto LABEL_21;
      }

      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v74 = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Archive version %lu is older than min supported %lu", -[PBFPosterConfigurationStoreArchiveManifest archiveVersion](v23, "archiveVersion"), objc_msgSend(a1, "minSupportedArchiveVersion")];
      v75 = v26;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v16 = [v25 initWithDomain:@"PBFArchiverErrorDomain" code:5 userInfo:v21];

      v23 = 0;
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x277CCA9B8]);
      v76 = *MEMORY[0x277CCA450];
      v77[0] = @"Archive is unsupported";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v16 = [v30 initWithDomain:@"PBFArchiverErrorDomain" code:4 userInfo:v26];
    }

    v27 = a5;
LABEL_21:

    v29 = v61;
    goto LABEL_22;
  }

  v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"PBFArchiverErrorDomain" code:3 userInfo:0];
  v23 = 0;
  v29 = v16;
  v16 = v28;
  v27 = a5;
  v19 = v64;
LABEL_22:

LABEL_23:
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __76__PBFPosterConfigurationStoreArchiver__unarchiveWithHandler_manifest_error___block_invoke;
  v65[3] = &unk_2782C8F08;
  v49 = v7;
  v66 = v49;
  [v19 enumerateObjectsUsingBlock:v65];
  if (!v23)
  {
    if (v16)
    {
      v72 = *MEMORY[0x277CCA7E8];
      v73 = v16;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    }

    else
    {
      v50 = 0;
    }

    v51 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"PBFArchiverErrorDomain" code:3 userInfo:v50];

    v16 = v51;
  }

  if (v27)
  {
    v52 = v16;
    *v27 = v16;
  }

  return v23;
}

@end