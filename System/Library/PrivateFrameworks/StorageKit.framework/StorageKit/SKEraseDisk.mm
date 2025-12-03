@interface SKEraseDisk
+ (id)eraseDiskWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error;
+ (id)eraseDiskWithRootDisk:(id)disk error:(id *)error;
- (NSString)description;
- (SKEraseDisk)initWithCoder:(id)coder;
- (SKEraseDisk)initWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error;
- (id)eraseProgressReportingWithCompletionBlock:(id)block;
- (id)formattableFilesystems;
- (id)validateWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)eraseWithCompletionBlock:(id)block;
@end

@implementation SKEraseDisk

- (SKEraseDisk)initWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  descriptorsCopy = descriptors;
  v27.receiver = self;
  v27.super_class = SKEraseDisk;
  v11 = [(SKEraseDisk *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_disk, disk);
    if (!descriptorsCopy)
    {
      formattableFilesystems = [(SKEraseDisk *)v12 formattableFilesystems];
      firstObject = [formattableFilesystems firstObject];

      majorType = [firstObject majorType];
      v16 = [majorType isEqualToString:@"msdos"];

      if (v16)
      {
        v17 = @"NO NAME";
      }

      else
      {
        v17 = @"Untitled";
      }

      v18 = [SKVolumeDescriptor descriptorWithName:v17 filesystem:firstObject];
      v19 = [SKPartitionDescriptor descriptorWithVolume:v18];
      v28[0] = v19;
      descriptorsCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    objc_storeStrong(&v12->_descriptors, descriptorsCopy);
    minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];
    diskRepresentation = v12->_diskRepresentation;
    v12->_diskRepresentation = minimalDictionaryRepresentation;

    v22 = [SKProgress progressWithTotalUnitCount:100];
    progress = v12->_progress;
    v12->_progress = v22;
  }

  v24 = [(SKEraseDisk *)v12 validateWithError:error];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)eraseDiskWithRootDisk:(id)disk descriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  diskCopy = disk;
  v9 = [objc_alloc(objc_opt_class()) initWithRootDisk:diskCopy descriptors:descriptorsCopy error:error];

  return v9;
}

+ (id)eraseDiskWithRootDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  v6 = [objc_alloc(objc_opt_class()) initWithRootDisk:diskCopy descriptors:0 error:error];

  return v6;
}

- (void)eraseWithCompletionBlock:(id)block
{
  v3 = [(SKEraseDisk *)self eraseProgressReportingWithCompletionBlock:block];
}

- (id)eraseProgressReportingWithCompletionBlock:(id)block
{
  v19[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [SKProgress progressWithTotalUnitCount:100];
  [v5 setCancellable:0];
  v18 = @"kSKDiskMountOptionForce";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEraseDisk forceUnmount](self, "forceUnmount")}];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  disk = [(SKEraseDisk *)self disk];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SKEraseDisk_eraseProgressReportingWithCompletionBlock___block_invoke;
  v15[3] = &unk_279D1F998;
  v17 = blockCopy;
  v15[4] = self;
  v9 = v5;
  v16 = v9;
  v10 = blockCopy;
  [disk unmountWithOptions:v7 completionBlock:v15];

  v11 = v16;
  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void __57__SKEraseDisk_eraseProgressReportingWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
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
    v6 = [v5 eraseWithEraser:*(a1 + 32) completionBlock:*(a1 + 48)];

    [*(a1 + 40) setCompletedUnitCount:10];
    [*(a1 + 40) chainChildProgress:v6 withPendingUnitCount:90];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  disk = [(SKEraseDisk *)self disk];
  descriptors = [(SKEraseDisk *)self descriptors];
  v8 = [v3 stringWithFormat:@"<%@: { disk: %@, descriptors: %@}>", v5, disk, descriptors];

  return v8;
}

- (id)formattableFilesystems
{
  disk = [(SKEraseDisk *)self disk];
  formattableFilesystems = [disk formattableFilesystems];

  return formattableFilesystems;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diskRepresentation = [(SKEraseDisk *)self diskRepresentation];
  [coderCopy encodeObject:diskRepresentation forKey:@"diskRepresentation"];

  descriptors = [(SKEraseDisk *)self descriptors];
  [coderCopy encodeObject:descriptors forKey:@"descriptors"];
}

- (SKEraseDisk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = SKEraseDisk;
  v5 = [(SKEraseDisk *)&v29 init];
  if (v5)
  {
    v28 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v28 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"diskRepresentation"];
    diskRepresentation = v5->_diskRepresentation;
    v5->_diskRepresentation = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"descriptors"];
    descriptors = v5->_descriptors;
    v5->_descriptors = v20;

    v22 = +[SKBaseManager sharedManager];
    v23 = [v22 knownDiskForDictionary:v5->_diskRepresentation];
    disk = v5->_disk;
    v5->_disk = v23;

    v25 = [SKProgress progressWithTotalUnitCount:100];
    progress = v5->_progress;
    v5->_progress = v25;
  }

  return v5;
}

- (id)validateWithError:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  disk = [(SKEraseDisk *)self disk];

  if (!disk)
  {
    v19 = SKGetOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      disk2 = [(SKEraseDisk *)self disk];
      *v62 = 136315394;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      *&v62[12] = 2112;
      *&v62[14] = disk2;
      _os_log_impl(&dword_26BBB8000, v19, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase", v62, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:error];
    goto LABEL_18;
  }

  disk3 = [(SKEraseDisk *)self disk];
  canPartitionDisk = [disk3 canPartitionDisk];

  if ((canPartitionDisk & 1) == 0)
  {
    v22 = SKGetOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      disk4 = [(SKEraseDisk *)self disk];
      *v62 = 136315394;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      *&v62[12] = 2112;
      *&v62[14] = disk4;
      _os_log_impl(&dword_26BBB8000, v22, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase, should be whole disk not APFSContainer", v62, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:45 error:error];
    goto LABEL_18;
  }

  descriptors = [(SKEraseDisk *)self descriptors];
  if (!descriptors || (-[SKEraseDisk descriptors](self, "descriptors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, descriptors, !v10))
  {
    v24 = SKGetOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v62 = 136315138;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_ERROR, "%s: Missing partition descriptors for erase disk", v62, 0xCu);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:error];
LABEL_18:
    v25 = v21;
    goto LABEL_19;
  }

  *v62 = 0;
  *&v62[8] = v62;
  *&v62[16] = 0x2020000000;
  v63 = 0;
  descriptors2 = [(SKEraseDisk *)self descriptors];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __33__SKEraseDisk_validateWithError___block_invoke;
  v54[3] = &unk_279D1FA60;
  v54[4] = v62;
  [descriptors2 enumerateObjectsUsingBlock:v54];

  v12 = *(*&v62[8] + 24);
  disk5 = [(SKEraseDisk *)self disk];
  LOBYTE(v12) = v12 > [disk5 unformattedSize];

  if (v12)
  {
    v14 = SKGetOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*&v62[8] + 24);
      disk6 = [(SKEraseDisk *)self disk];
      unformattedSize = [disk6 unformattedSize];
      *buf = 136315650;
      v57 = "[SKEraseDisk validateWithError:]";
      v58 = 2048;
      v59 = v15;
      v60 = 2048;
      v61 = unformattedSize;
      _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: New size %lu exceeds %llu", buf, 0x20u);
    }

    selfCopy = [SKError nilWithPOSIXCode:28 error:error];
    goto LABEL_39;
  }

  for (i = 0; ; ++i)
  {
    descriptors3 = [(SKEraseDisk *)self descriptors];
    v30 = [descriptors3 count] - 1 > i;

    if (!v30)
    {
      break;
    }

    descriptors4 = [(SKEraseDisk *)self descriptors];
    v32 = [descriptors4 objectAtIndexedSubscript:i];
    v33 = [v32 size] == 0;

    if (v33)
    {
      v44 = SKGetOSLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v57 = "[SKEraseDisk validateWithError:]";
        v58 = 1024;
        LODWORD(v59) = i;
        _os_log_impl(&dword_26BBB8000, v44, OS_LOG_TYPE_ERROR, "%s: Non last descriptor %d zero size", buf, 0x12u);
      }

      selfCopy = [SKError nilWithPOSIXCode:22 error:error];
      goto LABEL_39;
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  descriptors5 = [(SKEraseDisk *)self descriptors];
  v35 = [descriptors5 countByEnumeratingWithState:&v50 objects:v55 count:16];
  obj = descriptors5;
  if (!v35)
  {
    goto LABEL_35;
  }

  v36 = *v51;
  while (2)
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v51 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v50 + 1) + 8 * j);
      disk7 = [(SKEraseDisk *)self disk];
      filesystem = [v38 filesystem];
      v41 = [disk7 formattableFilesystemWithFilesystem:filesystem];

      if (!v41)
      {
        v45 = SKGetOSLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          filesystem2 = [v38 filesystem];
          formattableFilesystems = [(SKEraseDisk *)self formattableFilesystems];
          *buf = 136315650;
          v57 = "[SKEraseDisk validateWithError:]";
          v58 = 2112;
          v59 = filesystem2;
          v60 = 2112;
          v61 = formattableFilesystems;
          _os_log_impl(&dword_26BBB8000, v45, OS_LOG_TYPE_ERROR, "%s: FS to format %@ not found in supported filesystems %@", buf, 0x20u);
        }

        v48 = 45;
        goto LABEL_45;
      }

      innerDescriptor = [v38 innerDescriptor];
      [innerDescriptor setFilesystem:v41];

      innerDescriptor2 = [v38 innerDescriptor];
      LODWORD(innerDescriptor) = [innerDescriptor2 validateForErase];

      if (!innerDescriptor)
      {
        v48 = 22;
LABEL_45:
        v25 = [SKError nilWithPOSIXCode:v48 error:error];

        goto LABEL_40;
      }
    }

    v35 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_35:

  selfCopy = self;
LABEL_39:
  v25 = selfCopy;
LABEL_40:
  _Block_object_dispose(v62, 8);
LABEL_19:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __33__SKEraseDisk_validateWithError___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 size];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

@end