@interface SKEraseVolume
+ (id)eraseVolumeWithAPFSContainerDisk:(id)disk descriptor:(id)descriptor error:(id *)error;
+ (id)eraseVolumeWithAPFSStoreDisk:(id)disk descriptor:(id)descriptor error:(id *)error;
+ (id)eraseVolumeWithChildDisk:(id)disk descriptor:(id)descriptor error:(id *)error;
+ (id)eraseVolumeWithChildDisk:(id)disk error:(id *)error;
- (NSString)description;
- (SKEraseVolume)initWithChildDisk:(id)disk descriptor:(id)descriptor error:(id *)error;
- (SKEraseVolume)initWithCoder:(id)coder;
- (id)eraseProgressReportingWithCompletionBlock:(id)block;
- (id)formattableFilesystems;
- (id)validateWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)eraseWithCompletionBlock:(id)block;
- (void)setDisk:(id)disk;
@end

@implementation SKEraseVolume

- (SKEraseVolume)initWithChildDisk:(id)disk descriptor:(id)descriptor error:(id *)error
{
  diskCopy = disk;
  descriptorCopy = descriptor;
  v30.receiver = self;
  v30.super_class = SKEraseVolume;
  v11 = [(SKEraseVolume *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_disk, disk);
    if (!descriptorCopy)
    {
      formattableFilesystems = [(SKEraseVolume *)v12 formattableFilesystems];
      formattableFilesystems2 = [(SKEraseVolume *)v12 formattableFilesystems];
      firstObject = [formattableFilesystems2 firstObject];

      filesystem = [diskCopy filesystem];

      if (filesystem)
      {
        v17 = MEMORY[0x277CCAC30];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __52__SKEraseVolume_initWithChildDisk_descriptor_error___block_invoke;
        v28[3] = &unk_279D1F9E8;
        v29 = diskCopy;
        v18 = [v17 predicateWithBlock:v28];
        v19 = [formattableFilesystems filteredArrayUsingPredicate:v18];

        if ([v19 count])
        {
          firstObject2 = [v19 firstObject];

          firstObject = firstObject2;
        }
      }

      volumeName = [diskCopy volumeName];
      descriptorCopy = [SKVolumeDescriptor descriptorWithName:volumeName filesystem:firstObject];
    }

    objc_storeStrong(&v12->_descriptor, descriptorCopy);
    minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];
    diskRepresentation = v12->_diskRepresentation;
    v12->_diskRepresentation = minimalDictionaryRepresentation;

    v24 = [SKProgress progressWithTotalUnitCount:100];
    progress = v12->_progress;
    v12->_progress = v24;
  }

  v26 = [(SKEraseVolume *)v12 validateWithError:error];

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

+ (id)eraseVolumeWithChildDisk:(id)disk descriptor:(id)descriptor error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  descriptorCopy = descriptor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = diskCopy;
  container = [v9 container];
  v11 = container;
  if (!container || ([container volumes], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13 < 2))
  {

LABEL_8:
    v17 = [objc_alloc(objc_opt_class()) initWithChildDisk:diskCopy descriptor:descriptorCopy error:error];
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

  volumes = [v11 volumes];
  v16 = [SKError errorWithCode:301 disks:volumes userInfo:MEMORY[0x277CBEC10]];
  v17 = [SKError nilWithError:v16 error:error];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)eraseVolumeWithChildDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  v6 = [objc_alloc(objc_opt_class()) initWithChildDisk:diskCopy descriptor:0 error:error];

  return v6;
}

+ (id)eraseVolumeWithAPFSStoreDisk:(id)disk descriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  diskCopy = disk;
  v9 = [objc_alloc(objc_opt_class()) initWithChildDisk:diskCopy descriptor:descriptorCopy error:error];

  return v9;
}

+ (id)eraseVolumeWithAPFSContainerDisk:(id)disk descriptor:(id)descriptor error:(id *)error
{
  diskCopy = disk;
  descriptorCopy = descriptor;
  designatedPhysicalStore = [diskCopy designatedPhysicalStore];

  if (designatedPhysicalStore)
  {
    v10 = objc_opt_class();
    designatedPhysicalStore2 = [diskCopy designatedPhysicalStore];
    [v10 eraseVolumeWithAPFSStoreDisk:designatedPhysicalStore2 descriptor:descriptorCopy error:error];
  }

  else
  {
    designatedPhysicalStore2 = [SKError errorWithCode:117 userInfo:0];
    [SKError nilWithError:designatedPhysicalStore2 error:error];
  }
  v12 = ;

  return v12;
}

- (void)setDisk:(id)disk
{
  objc_storeStrong(&self->_disk, disk);
  diskCopy = disk;
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];
  diskRepresentation = self->_diskRepresentation;
  self->_diskRepresentation = minimalDictionaryRepresentation;
}

- (void)eraseWithCompletionBlock:(id)block
{
  v3 = [(SKEraseVolume *)self eraseProgressReportingWithCompletionBlock:block];
}

- (id)eraseProgressReportingWithCompletionBlock:(id)block
{
  v21[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [SKProgress progressWithTotalUnitCount:100];
  [v5 setCancellable:0];
  descriptor = [(SKEraseVolume *)self descriptor];
  validateForErase = [descriptor validateForErase];

  if (validateForErase)
  {
    v20[0] = kSKAPFSDiskUnmountIgnoreGroup;
    v20[1] = @"kSKDiskMountOptionRecursive";
    v21[0] = MEMORY[0x277CBEC38];
    v21[1] = MEMORY[0x277CBEC38];
    v20[2] = @"kSKDiskMountOptionForce";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEraseVolume forceUnmount](self, "forceUnmount")}];
    v21[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

    disk = [(SKEraseVolume *)self disk];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SKEraseVolume_eraseProgressReportingWithCompletionBlock___block_invoke;
    v17[3] = &unk_279D1F998;
    v19 = blockCopy;
    v17[4] = self;
    v11 = v5;
    v18 = v11;
    [disk unmountWithOptions:v9 completionBlock:v17];

    v12 = v18;
    v13 = v11;
  }

  else
  {
    v14 = [SKError errorWithPOSIXCode:22 error:0];
    (*(blockCopy + 2))(blockCopy, 0, v14);
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
  disk = [(SKEraseVolume *)self disk];
  descriptor = [(SKEraseVolume *)self descriptor];
  v8 = [v3 stringWithFormat:@"<%@: { disk: %@, descriptor: %@}>", v5, disk, descriptor];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  descriptor = [(SKEraseVolume *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  diskRepresentation = [(SKEraseVolume *)self diskRepresentation];
  [coderCopy encodeObject:diskRepresentation forKey:@"diskRepresentation"];
}

- (id)formattableFilesystems
{
  disk = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  disk2 = [(SKEraseVolume *)self disk];
  isLiveFSAPFSDisk = [disk2 isLiveFSAPFSDisk];

  if (isLiveFSAPFSDisk)
  {
    disk = [(SKEraseVolume *)self disk];
    if ([disk hasVolumeSiblings])
    {
      v6 = +[SKFilesystem extensionFilesystems];
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_140];
      formattableFilesystems = [v6 filteredArrayUsingPredicate:v7];

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  disk = [(SKEraseVolume *)self disk];
  formattableFilesystems = [disk formattableFilesystems];
LABEL_7:

  return formattableFilesystems;
}

uint64_t __39__SKEraseVolume_formattableFilesystems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 majorType];
  v3 = [v2 isEqualToString:@"apfs"];

  return v3;
}

- (SKEraseVolume)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SKEraseVolume;
  v5 = [(SKEraseVolume *)&v27 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"descriptor"];
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
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"diskRepresentation"];
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

- (id)validateWithError:(id *)error
{
  v65[3] = *MEMORY[0x277D85DE8];
  disk = [(SKEraseVolume *)self disk];

  if (!disk)
  {
    selfCopy = [SKError nilWithPOSIXCode:22 debugDescription:@"No disk specified" error:error];
    goto LABEL_53;
  }

  v65[0] = kSKDiskTypeGPTWholeDisk[0];
  v65[1] = kSKDiskTypeMBRWholeDisk[0];
  v65[2] = kSKDiskTypeAPMWholeDisk[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
  disk2 = [(SKEraseVolume *)self disk];
  v10 = [disk2 isMemberOfClass:objc_opt_class()];
  v58 = v8;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    disk3 = [(SKEraseVolume *)self disk];
    if ([disk3 isMemberOfClass:objc_opt_class()])
    {
      v11 = 0;
    }

    else
    {
      disk4 = [(SKEraseVolume *)self disk];
      if (([disk4 isMemberOfClass:objc_opt_class()] & 1) == 0)
      {

        goto LABEL_36;
      }

      v11 = 1;
    }
  }

  disk5 = [(SKEraseVolume *)self disk];
  type = [disk5 type];
  v15 = [v8 containsObject:type];

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
    disk6 = [(SKEraseVolume *)self disk];
    v46 = [v45 stringWithFormat:@"Volume %@ not valid for erase", disk6];
    selfCopy = [SKError nilWithPOSIXCode:45 debugDescription:v46 error:error];

LABEL_51:
    v21 = v58;
    goto LABEL_52;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_15:
  disk6 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    descriptor = [(SKEraseVolume *)self descriptor];
    filesystem = [descriptor filesystem];
    majorType = [filesystem majorType];
    v20 = [majorType isEqualToString:@"apfs"];

    if (v20)
    {
      goto LABEL_22;
    }

    disk6 = [(SKEraseVolume *)self disk];
    v21 = v58;
    if ([disk6 hasVolumeSiblings])
    {
      v22 = SKGetOSLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        container = [disk6 container];
        *buf = 136315394;
        v60 = "[SKEraseVolume validateWithError:]";
        v61 = 2112;
        v62 = container;
        _os_log_impl(&dword_26BBB8000, v22, OS_LOG_TYPE_ERROR, "%s: More than 1 volume on %@ container", buf, 0x16u);
      }

      container2 = [disk6 container];
      volumes = [container2 volumes];
      v26 = [SKError errorWithCode:301 disks:volumes userInfo:MEMORY[0x277CBEC10]];
      selfCopy = [SKError nilWithError:v26 error:error];

      goto LABEL_44;
    }
  }

LABEL_22:
  disk6 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    disk7 = [(SKEraseVolume *)self disk];
    isLiveFSAPFSDisk = [disk7 isLiveFSAPFSDisk];

    v21 = v58;
    if (!isLiveFSAPFSDisk)
    {
      goto LABEL_30;
    }

    disk6 = [(SKEraseVolume *)self disk];
    if ([disk6 hasVolumeSiblings])
    {
      v29 = SKGetOSLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        container3 = [disk6 container];
        *buf = 136315394;
        v60 = "[SKEraseVolume validateWithError:]";
        v61 = 2112;
        v62 = container3;
        _os_log_impl(&dword_26BBB8000, v29, OS_LOG_TYPE_ERROR, "%s: More than 1 volume on %@ container, erase will be destructive", buf, 0x16u);
      }

      v31 = [SKError errorWithCode:301 userInfo:0];
      v32 = [SKError nilWithError:v31 error:error];
      goto LABEL_47;
    }

    container4 = [disk6 container];
    designatedPhysicalStore = [container4 designatedPhysicalStore];
    [(SKEraseVolume *)self setDisk:designatedPhysicalStore];

    disk8 = [(SKEraseVolume *)self disk];

    if (!disk8)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find physical store for %@", disk6];
      v32 = [SKError nilWithSKErrorCode:117 debugDescription:v31 error:error];
LABEL_47:
      selfCopy = v32;

      goto LABEL_52;
    }
  }

  else
  {
    v21 = v58;
  }

LABEL_30:
  disk9 = [(SKEraseVolume *)self disk];
  descriptor2 = [(SKEraseVolume *)self descriptor];
  filesystem2 = [descriptor2 filesystem];
  disk6 = [disk9 formattableFilesystemWithFilesystem:filesystem2];

  if (!disk6)
  {
    v47 = SKGetOSLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      descriptor3 = [(SKEraseVolume *)self descriptor];
      filesystem3 = [descriptor3 filesystem];
      formattableFilesystems = [(SKEraseVolume *)self formattableFilesystems];
      *buf = 136315650;
      v60 = "[SKEraseVolume validateWithError:]";
      v61 = 2112;
      v62 = filesystem3;
      v63 = 2112;
      v64 = formattableFilesystems;
      _os_log_impl(&dword_26BBB8000, v47, OS_LOG_TYPE_ERROR, "%s: FS to format %@ not found in supported filesystems %@", buf, 0x20u);
    }

    selfCopy = [SKError nilWithPOSIXCode:45 error:error];
    goto LABEL_52;
  }

  descriptor4 = [(SKEraseVolume *)self descriptor];
  [descriptor4 setFilesystem:disk6];

  descriptor5 = [(SKEraseVolume *)self descriptor];
  filesystem4 = [descriptor5 filesystem];
  majorType2 = [filesystem4 majorType];
  v40 = [majorType2 isEqualToString:@"apfs"];

  if (!v40)
  {
    goto LABEL_50;
  }

  v41 = +[SKBaseManager sharedManager];
  disk10 = [(SKEraseVolume *)self disk];
  container2 = [v41 wholeDiskForDisk:disk10];

  type2 = [container2 type];
  if ([type2 isEqualToString:kSKDiskTypeMBRWholeDisk[0]])
  {
    childCount = [container2 childCount];

    v21 = v58;
    if (childCount > 1)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v21 = v58;
  }

  type3 = [container2 type];
  if (![type3 isEqualToString:kSKDiskTypeAPMWholeDisk[0]])
  {

    goto LABEL_49;
  }

  childCount2 = [container2 childCount];

  if (childCount2 <= 2)
  {
LABEL_49:

LABEL_50:
    selfCopy = self;
    goto LABEL_51;
  }

LABEL_43:
  volumes = [SKError errorWithCode:301 userInfo:0];
  selfCopy = [SKError nilWithError:volumes error:error];
LABEL_44:

LABEL_52:
LABEL_53:
  v56 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

@end