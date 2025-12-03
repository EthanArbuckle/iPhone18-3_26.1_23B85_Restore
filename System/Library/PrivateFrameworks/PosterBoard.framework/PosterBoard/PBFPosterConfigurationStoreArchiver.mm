@interface PBFPosterConfigurationStoreArchiver
+ (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error;
+ (id)archiveConfigurationStoreWithCoordinator:(id)coordinator error:(id *)error;
+ (id)unarchiveConfigurationStoreArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error;
+ (id)unarchiveConfigurationStoreArchiveData:(id)data manifest:(id *)manifest error:(id *)error;
@end

@implementation PBFPosterConfigurationStoreArchiver

+ (id)archiveConfigurationStoreWithCoordinator:(id)coordinator error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  identityOfLatestVersion = [coordinatorCopy identityOfLatestVersion];
  provider = [identityOfLatestVersion provider];

  v7 = [[PBFPosterConfigurationStoreArchiveManifest alloc] initWithConfigurationStoreCoordinator:coordinatorCopy];
  posterUUID = [coordinatorCopy posterUUID];
  uUIDString = [posterUUID UUIDString];
  buildVersion = [(PBFPosterConfigurationStoreArchiveManifest *)v7 buildVersion];
  v11 = [provider stringByAppendingFormat:@"-%@-%@", uUIDString, buildVersion];

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
    v33 = provider;
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
        errorCopy2 = error;

        [v17 removeItemAtURL:v16 error:0];
        v19 = v21;
        provider = v33;
        if (v27)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      identifierURL = [coordinatorCopy identifierURL];
      v26 = [v16 URLByAppendingPathComponent:@"configuration"];
      v35 = v24;
      v32 = [v17 copyItemAtURL:identifierURL toURL:v26 error:&v35];
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
  errorCopy2 = error;
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
  if (errorCopy2)
  {
    v30 = v21;
    *errorCopy2 = v21;
  }

  return v27;
}

+ (id)unarchiveConfigurationStoreArchiveAtURL:(id)l manifest:(id *)manifest error:(id *)error
{
  lCopy = l;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveAtURL_manifest_error___block_invoke;
  v12[3] = &unk_2782C8EE0;
  v13 = lCopy;
  v9 = lCopy;
  v10 = [self _unarchiveWithHandler:v12 manifest:manifest error:error];

  return v10;
}

+ (id)unarchiveConfigurationStoreArchiveData:(id)data manifest:(id *)manifest error:(id *)error
{
  dataCopy = data;
  pipe = [MEMORY[0x277CCAC10] pipe];
  fileHandleForWriting = [pipe fileHandleForWriting];
  fileHandleForReading = [pipe fileHandleForReading];
  Serial = BSDispatchQueueCreateSerial();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke;
  block[3] = &unk_2782C58B0;
  v21 = fileHandleForWriting;
  v22 = dataCopy;
  v13 = dataCopy;
  v14 = fileHandleForWriting;
  dispatch_async(Serial, block);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke_2;
  v18[3] = &unk_2782C8EE0;
  v19 = fileHandleForReading;
  v15 = fileHandleForReading;
  v16 = [self _unarchiveWithHandler:v18 manifest:manifest error:error];
  [v15 closeFile];

  return v16;
}

uint64_t __93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) writeData:*(a1 + 40) error:0];
  v2 = *(a1 + 32);

  return [v2 closeFile];
}

+ (id)_unarchiveWithHandler:(id)handler manifest:(id *)manifest error:(id *)error
{
  v77[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = MEMORY[0x277CBEBC0];
  v9 = PFTemporaryDirectory();
  v10 = [v8 fileURLWithPath:v9 isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:@"PosterConfigurations" isDirectory:1];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 URLByAppendingPathComponent:uUIDString];

  [v7 removeItemAtURL:v14 error:0];
  v15 = PFFileProtectionNoneAttributes();
  v71 = 0;
  LODWORD(v10) = [v7 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:v15 error:&v71];
  v16 = v71;

  if (!v10)
  {
    v23 = 0;
    errorCopy7 = error;
    v19 = v64;
    goto LABEL_23;
  }

  if (handlerCopy[2](handlerCopy, v14))
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
      archiveVersion = [(PBFPosterConfigurationStoreArchiveManifest *)v22 archiveVersion];
      if (archiveVersion >= [self minSupportedArchiveVersion])
      {
        v56 = handlerCopy;
        extensionIdentifier = [(PBFPosterConfigurationStoreArchiveManifest *)v23 extensionIdentifier];
        v26 = [v14 URLByAppendingPathComponent:extensionIdentifier];

        v32 = MEMORY[0x277CBEBC0];
        configurationUUID = [(PBFPosterConfigurationStoreArchiveManifest *)v23 configurationUUID];
        v21 = [v32 pf_posterPathIdentifierURLProviderURL:v26 type:3 posterUUID:configurationUUID];

        uRLByDeletingLastPathComponent = [v21 URLByDeletingLastPathComponent];
        v35 = PFFileProtectionNoneAttributes();
        v69 = v57;
        v36 = [v7 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v35 error:&v69];
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
            errorCopy7 = error;
            v19 = v64;
            goto LABEL_21;
          }

          v39 = [v26 URLByAppendingPathComponent:@"/"];

          [(PBFPosterConfigurationStoreArchiveManifest *)v60 configurationUUID];
          v40 = v54 = v38;
          v41 = MEMORY[0x277D3EB98];
          extensionIdentifier2 = [(PBFPosterConfigurationStoreArchiveManifest *)v60 extensionIdentifier];
          v43 = [MEMORY[0x277D3EDE8] loadPosterDescriptorIdentifierForPathAtURL:v39 type:3 posterUUID:v40];
          role = [(PBFPosterConfigurationStoreArchiveManifest *)v60 role];
          v55 = v40;
          v45 = [v41 configurationIdentityWithProvider:extensionIdentifier2 identifier:v43 role:role posterUUID:v40 version:-[PBFPosterConfigurationStoreArchiveManifest latestConfigurationVersion](v60 supplement:{"latestConfigurationVersion"), -[PBFPosterConfigurationStoreArchiveManifest latestConfigurationSupplement](v60, "latestConfigurationSupplement")}];

          v46 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v39 identity:v45];
          v67 = 0;
          v47 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:v46 error:&v67];
          v16 = v67;

          if (v47)
          {
            v48 = v45;
            v23 = [objc_alloc(MEMORY[0x277D3ECE0]) initWithNewPath:v46 destinationPosterUUID:0 sourceIdentity:v45 configuredProperties:v47 attributes:0];
            if (manifest)
            {
              *manifest = v60;
            }

            errorCopy7 = error;
          }

          else
          {
            v48 = v45;
            v23 = 0;
            errorCopy7 = error;
          }

          v26 = v39;
          handlerCopy = v56;
        }

        else
        {
          v23 = 0;
          errorCopy7 = error;
        }

        v19 = v64;
        goto LABEL_21;
      }

      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v74 = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Archive version %lu is older than min supported %lu", -[PBFPosterConfigurationStoreArchiveManifest archiveVersion](v23, "archiveVersion"), objc_msgSend(self, "minSupportedArchiveVersion")];
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

    errorCopy7 = error;
LABEL_21:

    v29 = v61;
    goto LABEL_22;
  }

  v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"PBFArchiverErrorDomain" code:3 userInfo:0];
  v23 = 0;
  v29 = v16;
  v16 = v28;
  errorCopy7 = error;
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

  if (errorCopy7)
  {
    v52 = v16;
    *errorCopy7 = v16;
  }

  return v23;
}

@end