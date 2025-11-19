@interface SKEraseVolume
+ (id)eraseVolumeWithAPFSContainerDisk:(id)a3 descriptor:(id)a4 error:(id *)a5;
+ (id)eraseVolumeWithAPFSStoreDisk:(id)a3 descriptor:(id)a4 error:(id *)a5;
+ (id)eraseVolumeWithChildDisk:(id)a3 descriptor:(id)a4 error:(id *)a5;
+ (id)eraseVolumeWithChildDisk:(id)a3 error:(id *)a4;
- (NSString)description;
- (SKEraseVolume)initWithChildDisk:(id)a3 descriptor:(id)a4 error:(id *)a5;
- (SKEraseVolume)initWithCoder:(id)a3;
- (id)eraseProgressReportingWithCompletionBlock:(id)a3;
- (id)formattableFilesystems;
- (id)validateWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)eraseWithCompletionBlock:(id)a3;
- (void)setDisk:(id)a3;
@end

@implementation SKEraseVolume

- (SKEraseVolume)initWithChildDisk:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = SKEraseVolume;
  v11 = [(SKEraseVolume *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_disk, a3);
    if (!v10)
    {
      v13 = [(SKEraseVolume *)v12 formattableFilesystems];
      v14 = [(SKEraseVolume *)v12 formattableFilesystems];
      v15 = [v14 firstObject];

      v16 = [v9 filesystem];

      if (v16)
      {
        v17 = MEMORY[0x277CCAC30];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __52__SKEraseVolume_initWithChildDisk_descriptor_error___block_invoke;
        v28[3] = &unk_279D1F9E8;
        v29 = v9;
        v18 = [v17 predicateWithBlock:v28];
        v19 = [v13 filteredArrayUsingPredicate:v18];

        if ([v19 count])
        {
          v20 = [v19 firstObject];

          v15 = v20;
        }
      }

      v21 = [v9 volumeName];
      v10 = [SKVolumeDescriptor descriptorWithName:v21 filesystem:v15];
    }

    objc_storeStrong(&v12->_descriptor, v10);
    v22 = [v9 minimalDictionaryRepresentation];
    diskRepresentation = v12->_diskRepresentation;
    v12->_diskRepresentation = v22;

    v24 = [SKProgress progressWithTotalUnitCount:100];
    progress = v12->_progress;
    v12->_progress = v24;
  }

  v26 = [(SKEraseVolume *)v12 validateWithError:a5];

  return v26;
}

uint64_t __52__SKEraseVolume_initWithChildDisk_descriptor_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 majorType];
  v5 = [*(a1 + 32) filesystem];
  v6 = [v5 majorType];
  if ([v4 isEqualToString:v6])
  {
    v7 = [v3 isCaseSensitive];
    v8 = [*(a1 + 32) filesystem];
    if (v7 == [v8 isCaseSensitive])
    {
      v10 = [v3 isEncrypted];
      v11 = [*(a1 + 32) filesystem];
      v9 = v10 ^ [v11 isEncrypted] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)eraseVolumeWithChildDisk:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = v7;
  v10 = [v9 container];
  v11 = v10;
  if (!v10 || ([v10 volumes], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13 < 2))
  {

LABEL_8:
    v17 = [objc_alloc(objc_opt_class()) initWithChildDisk:v7 descriptor:v8 error:a5];
    goto LABEL_9;
  }

  v14 = SKGetOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "+[SKEraseVolume eraseVolumeWithChildDisk:descriptor:error:]";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: More than 1 volume on %@ physical store", &v20, 0x16u);
  }

  v15 = [v11 volumes];
  v16 = [SKError errorWithCode:301 disks:v15 userInfo:MEMORY[0x277CBEC10]];
  v17 = [SKError nilWithError:v16 error:a5];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)eraseVolumeWithChildDisk:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithChildDisk:v5 descriptor:0 error:a4];

  return v6;
}

+ (id)eraseVolumeWithAPFSStoreDisk:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithChildDisk:v8 descriptor:v7 error:a5];

  return v9;
}

+ (id)eraseVolumeWithAPFSContainerDisk:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 designatedPhysicalStore];

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [v7 designatedPhysicalStore];
    [v10 eraseVolumeWithAPFSStoreDisk:v11 descriptor:v8 error:a5];
  }

  else
  {
    v11 = [SKError errorWithCode:117 userInfo:0];
    [SKError nilWithError:v11 error:a5];
  }
  v12 = ;

  return v12;
}

- (void)setDisk:(id)a3
{
  objc_storeStrong(&self->_disk, a3);
  v7 = a3;
  v5 = [v7 minimalDictionaryRepresentation];
  diskRepresentation = self->_diskRepresentation;
  self->_diskRepresentation = v5;
}

- (void)eraseWithCompletionBlock:(id)a3
{
  v3 = [(SKEraseVolume *)self eraseProgressReportingWithCompletionBlock:a3];
}

- (id)eraseProgressReportingWithCompletionBlock:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [SKProgress progressWithTotalUnitCount:100];
  [v5 setCancellable:0];
  v6 = [(SKEraseVolume *)self descriptor];
  v7 = [v6 validateForErase];

  if (v7)
  {
    v20[0] = kSKAPFSDiskUnmountIgnoreGroup;
    v20[1] = @"kSKDiskMountOptionRecursive";
    v21[0] = MEMORY[0x277CBEC38];
    v21[1] = MEMORY[0x277CBEC38];
    v20[2] = @"kSKDiskMountOptionForce";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEraseVolume forceUnmount](self, "forceUnmount")}];
    v21[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

    v10 = [(SKEraseVolume *)self disk];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SKEraseVolume_eraseProgressReportingWithCompletionBlock___block_invoke;
    v17[3] = &unk_279D1F998;
    v19 = v4;
    v17[4] = self;
    v11 = v5;
    v18 = v11;
    [v10 unmountWithOptions:v9 completionBlock:v17];

    v12 = v18;
    v13 = v11;
  }

  else
  {
    v14 = [SKError errorWithPOSIXCode:22 error:0];
    (*(v4 + 2))(v4, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __59__SKEraseVolume_eraseProgressReportingWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = +[SKHelperClient sharedClient];
    v6 = *(a1 + 32);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __59__SKEraseVolume_eraseProgressReportingWithCompletionBlock___block_invoke_2;
    v12 = &unk_279D1FA38;
    v7 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = v7;
    v8 = [v5 eraseWithEraser:v6 completionBlock:&v9];

    [*(a1 + 40) setCompletedUnitCount:{10, v9, v10, v11, v12}];
    [*(a1 + 40) chainChildProgress:v8 withPendingUnitCount:90];
  }
}

void __59__SKEraseVolume_eraseProgressReportingWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v5)
    {
      v13 = *(a1 + 40);
      v14 = [SKError errorWithCode:117 disks:MEMORY[0x277CBEBF8] userInfo:0];
      (*(v13 + 16))(v13, 0, v14);

      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 container];
      v9 = [v8 volumes];
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:0];

        v11 = SKGetOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315394;
          v21 = "[SKEraseVolume eraseProgressReportingWithCompletionBlock:]_block_invoke";
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_DEFAULT, "%s: The new APFS volume is: %@", &v20, 0x16u);
        }

        v5 = v10;
      }

      else
      {
        if (![v8 isLiveFSAPFSDisk] || (objc_msgSend(*(a1 + 32), "descriptor"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "filesystem"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEncrypted"), v16, v15, !v17))
        {
          v18 = *(a1 + 40);
          v19 = [SKError errorWithCode:117 debugDescription:@"No APFS volumes found after erase" error:0];
          (*(v18 + 16))(v18, 0, v19);

          goto LABEL_12;
        }

        v11 = SKGetOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136315394;
          v21 = "[SKEraseVolume eraseProgressReportingWithCompletionBlock:]_block_invoke_2";
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_DEFAULT, "%s: Volume was formatted to encrypted APFS, returning %@", &v20, 0x16u);
        }
      }
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
LABEL_12:

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SKEraseVolume *)self disk];
  v7 = [(SKEraseVolume *)self descriptor];
  v8 = [v3 stringWithFormat:@"<%@: { disk: %@, descriptor: %@}>", v5, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKEraseVolume *)self descriptor];
  [v4 encodeObject:v5 forKey:@"descriptor"];

  v6 = [(SKEraseVolume *)self diskRepresentation];
  [v4 encodeObject:v6 forKey:@"diskRepresentation"];
}

- (id)formattableFilesystems
{
  v3 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v4 = [(SKEraseVolume *)self disk];
  v5 = [v4 isLiveFSAPFSDisk];

  if (v5)
  {
    v3 = [(SKEraseVolume *)self disk];
    if ([v3 hasVolumeSiblings])
    {
      v6 = +[SKFilesystem extensionFilesystems];
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
      v8 = [v6 filteredArrayUsingPredicate:v7];

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v3 = [(SKEraseVolume *)self disk];
  v8 = [v3 formattableFilesystems];
LABEL_7:

  return v8;
}

uint64_t __39__SKEraseVolume_formattableFilesystems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 majorType];
  v3 = [v2 isEqualToString:@"apfs"];

  return v3;
}

- (SKEraseVolume)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SKEraseVolume;
  v5 = [(SKEraseVolume *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v7;

    v26 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v26 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"diskRepresentation"];
    diskRepresentation = v5->_diskRepresentation;
    v5->_diskRepresentation = v18;

    v20 = +[SKBaseManager sharedManager];
    v21 = [v20 knownDiskForDictionary:v5->_diskRepresentation];
    disk = v5->_disk;
    v5->_disk = v21;

    v23 = [SKProgress progressWithTotalUnitCount:100];
    progress = v5->_progress;
    v5->_progress = v23;
  }

  return v5;
}

- (id)validateWithError:(id *)a3
{
  v65[3] = *MEMORY[0x277D85DE8];
  v7 = [(SKEraseVolume *)self disk];

  if (!v7)
  {
    v12 = [SKError nilWithPOSIXCode:22 debugDescription:@"No disk specified" error:a3];
    goto LABEL_53;
  }

  v65[0] = kSKDiskTypeGPTWholeDisk[0];
  v65[1] = kSKDiskTypeMBRWholeDisk[0];
  v65[2] = kSKDiskTypeAPMWholeDisk[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
  v9 = [(SKEraseVolume *)self disk];
  v10 = [v9 isMemberOfClass:objc_opt_class()];
  v58 = v8;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v3 = [(SKEraseVolume *)self disk];
    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v11 = 0;
    }

    else
    {
      v4 = [(SKEraseVolume *)self disk];
      if (([v4 isMemberOfClass:objc_opt_class()] & 1) == 0)
      {

        goto LABEL_36;
      }

      v11 = 1;
    }
  }

  v13 = [(SKEraseVolume *)self disk];
  v14 = [v13 type];
  v15 = [v8 containsObject:v14];

  if (v11)
  {
  }

  if ((v10 & 1) == 0)
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_36:
    v45 = MEMORY[0x277CCACA8];
    v16 = [(SKEraseVolume *)self disk];
    v46 = [v45 stringWithFormat:@"Volume %@ not valid for erase", v16];
    v12 = [SKError nilWithPOSIXCode:45 debugDescription:v46 error:a3];

LABEL_51:
    v21 = v58;
    goto LABEL_52;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_15:
  v16 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [(SKEraseVolume *)self descriptor];
    v18 = [v17 filesystem];
    v19 = [v18 majorType];
    v20 = [v19 isEqualToString:@"apfs"];

    if (v20)
    {
      goto LABEL_22;
    }

    v16 = [(SKEraseVolume *)self disk];
    v21 = v58;
    if ([v16 hasVolumeSiblings])
    {
      v22 = SKGetOSLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v16 container];
        *buf = 136315394;
        v60 = "[SKEraseVolume validateWithError:]";
        v61 = 2112;
        v62 = v23;
        _os_log_impl(&dword_26BBB8000, v22, OS_LOG_TYPE_ERROR, "%s: More than 1 volume on %@ container", buf, 0x16u);
      }

      v24 = [v16 container];
      v25 = [v24 volumes];
      v26 = [SKError errorWithCode:301 disks:v25 userInfo:MEMORY[0x277CBEC10]];
      v12 = [SKError nilWithError:v26 error:a3];

      goto LABEL_44;
    }
  }

LABEL_22:
  v16 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [(SKEraseVolume *)self disk];
    v28 = [v27 isLiveFSAPFSDisk];

    v21 = v58;
    if (!v28)
    {
      goto LABEL_30;
    }

    v16 = [(SKEraseVolume *)self disk];
    if ([v16 hasVolumeSiblings])
    {
      v29 = SKGetOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v16 container];
        *buf = 136315394;
        v60 = "[SKEraseVolume validateWithError:]";
        v61 = 2112;
        v62 = v30;
        _os_log_impl(&dword_26BBB8000, v29, OS_LOG_TYPE_ERROR, "%s: More than 1 volume on %@ container, erase will be destructive", buf, 0x16u);
      }

      v31 = [SKError errorWithCode:301 userInfo:0];
      v32 = [SKError nilWithError:v31 error:a3];
      goto LABEL_47;
    }

    v53 = [v16 container];
    v54 = [v53 designatedPhysicalStore];
    [(SKEraseVolume *)self setDisk:v54];

    v55 = [(SKEraseVolume *)self disk];

    if (!v55)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find physical store for %@", v16];
      v32 = [SKError nilWithSKErrorCode:117 debugDescription:v31 error:a3];
LABEL_47:
      v12 = v32;

      goto LABEL_52;
    }
  }

  else
  {
    v21 = v58;
  }

LABEL_30:
  v33 = [(SKEraseVolume *)self disk];
  v34 = [(SKEraseVolume *)self descriptor];
  v35 = [v34 filesystem];
  v16 = [v33 formattableFilesystemWithFilesystem:v35];

  if (!v16)
  {
    v47 = SKGetOSLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [(SKEraseVolume *)self descriptor];
      v49 = [v48 filesystem];
      v50 = [(SKEraseVolume *)self formattableFilesystems];
      *buf = 136315650;
      v60 = "[SKEraseVolume validateWithError:]";
      v61 = 2112;
      v62 = v49;
      v63 = 2112;
      v64 = v50;
      _os_log_impl(&dword_26BBB8000, v47, OS_LOG_TYPE_ERROR, "%s: FS to format %@ not found in supported filesystems %@", buf, 0x20u);
    }

    v12 = [SKError nilWithPOSIXCode:45 error:a3];
    goto LABEL_52;
  }

  v36 = [(SKEraseVolume *)self descriptor];
  [v36 setFilesystem:v16];

  v37 = [(SKEraseVolume *)self descriptor];
  v38 = [v37 filesystem];
  v39 = [v38 majorType];
  v40 = [v39 isEqualToString:@"apfs"];

  if (!v40)
  {
    goto LABEL_50;
  }

  v41 = +[SKBaseManager sharedManager];
  v42 = [(SKEraseVolume *)self disk];
  v24 = [v41 wholeDiskForDisk:v42];

  v43 = [v24 type];
  if ([v43 isEqualToString:kSKDiskTypeMBRWholeDisk[0]])
  {
    v44 = [v24 childCount];

    v21 = v58;
    if (v44 > 1)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v21 = v58;
  }

  v51 = [v24 type];
  if (![v51 isEqualToString:kSKDiskTypeAPMWholeDisk[0]])
  {

    goto LABEL_49;
  }

  v52 = [v24 childCount];

  if (v52 <= 2)
  {
LABEL_49:

LABEL_50:
    v12 = self;
    goto LABEL_51;
  }

LABEL_43:
  v25 = [SKError errorWithCode:301 userInfo:0];
  v12 = [SKError nilWithError:v25 error:a3];
LABEL_44:

LABEL_52:
LABEL_53:
  v56 = *MEMORY[0x277D85DE8];

  return v12;
}

@end