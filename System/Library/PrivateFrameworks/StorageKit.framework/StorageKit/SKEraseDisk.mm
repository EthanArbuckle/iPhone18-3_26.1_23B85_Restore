@interface SKEraseDisk
+ (id)eraseDiskWithRootDisk:(id)a3 descriptors:(id)a4 error:(id *)a5;
+ (id)eraseDiskWithRootDisk:(id)a3 error:(id *)a4;
- (NSString)description;
- (SKEraseDisk)initWithCoder:(id)a3;
- (SKEraseDisk)initWithRootDisk:(id)a3 descriptors:(id)a4 error:(id *)a5;
- (id)eraseProgressReportingWithCompletionBlock:(id)a3;
- (id)formattableFilesystems;
- (id)validateWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)eraseWithCompletionBlock:(id)a3;
@end

@implementation SKEraseDisk

- (SKEraseDisk)initWithRootDisk:(id)a3 descriptors:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = SKEraseDisk;
  v11 = [(SKEraseDisk *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_disk, a3);
    if (!v10)
    {
      v13 = [(SKEraseDisk *)v12 formattableFilesystems];
      v14 = [v13 firstObject];

      v15 = [v14 majorType];
      v16 = [v15 isEqualToString:@"msdos"];

      if (v16)
      {
        v17 = @"NO NAME";
      }

      else
      {
        v17 = @"Untitled";
      }

      v18 = [SKVolumeDescriptor descriptorWithName:v17 filesystem:v14];
      v19 = [SKPartitionDescriptor descriptorWithVolume:v18];
      v28[0] = v19;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    objc_storeStrong(&v12->_descriptors, v10);
    v20 = [v9 minimalDictionaryRepresentation];
    diskRepresentation = v12->_diskRepresentation;
    v12->_diskRepresentation = v20;

    v22 = [SKProgress progressWithTotalUnitCount:100];
    progress = v12->_progress;
    v12->_progress = v22;
  }

  v24 = [(SKEraseDisk *)v12 validateWithError:a5];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)eraseDiskWithRootDisk:(id)a3 descriptors:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithRootDisk:v8 descriptors:v7 error:a5];

  return v9;
}

+ (id)eraseDiskWithRootDisk:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithRootDisk:v5 descriptors:0 error:a4];

  return v6;
}

- (void)eraseWithCompletionBlock:(id)a3
{
  v3 = [(SKEraseDisk *)self eraseProgressReportingWithCompletionBlock:a3];
}

- (id)eraseProgressReportingWithCompletionBlock:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [SKProgress progressWithTotalUnitCount:100];
  [v5 setCancellable:0];
  v18 = @"kSKDiskMountOptionForce";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEraseDisk forceUnmount](self, "forceUnmount")}];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v8 = [(SKEraseDisk *)self disk];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SKEraseDisk_eraseProgressReportingWithCompletionBlock___block_invoke;
  v15[3] = &unk_279D1F998;
  v17 = v4;
  v15[4] = self;
  v9 = v5;
  v16 = v9;
  v10 = v4;
  [v8 unmountWithOptions:v7 completionBlock:v15];

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
  v6 = [(SKEraseDisk *)self disk];
  v7 = [(SKEraseDisk *)self descriptors];
  v8 = [v3 stringWithFormat:@"<%@: { disk: %@, descriptors: %@}>", v5, v6, v7];

  return v8;
}

- (id)formattableFilesystems
{
  v2 = [(SKEraseDisk *)self disk];
  v3 = [v2 formattableFilesystems];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKEraseDisk *)self diskRepresentation];
  [v4 encodeObject:v5 forKey:@"diskRepresentation"];

  v6 = [(SKEraseDisk *)self descriptors];
  [v4 encodeObject:v6 forKey:@"descriptors"];
}

- (SKEraseDisk)initWithCoder:(id)a3
{
  v4 = a3;
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"diskRepresentation"];
    diskRepresentation = v5->_diskRepresentation;
    v5->_diskRepresentation = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"descriptors"];
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

- (id)validateWithError:(id *)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = [(SKEraseDisk *)self disk];

  if (!v5)
  {
    v19 = SKGetOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SKEraseDisk *)self disk];
      *v62 = 136315394;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      *&v62[12] = 2112;
      *&v62[14] = v20;
      _os_log_impl(&dword_26BBB8000, v19, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase", v62, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:a3];
    goto LABEL_18;
  }

  v6 = [(SKEraseDisk *)self disk];
  v7 = [v6 canPartitionDisk];

  if ((v7 & 1) == 0)
  {
    v22 = SKGetOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(SKEraseDisk *)self disk];
      *v62 = 136315394;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      *&v62[12] = 2112;
      *&v62[14] = v23;
      _os_log_impl(&dword_26BBB8000, v22, OS_LOG_TYPE_ERROR, "%s: Disk %@ not valid for erase, should be whole disk not APFSContainer", v62, 0x16u);
    }

    v21 = [SKError nilWithPOSIXCode:45 error:a3];
    goto LABEL_18;
  }

  v8 = [(SKEraseDisk *)self descriptors];
  if (!v8 || (-[SKEraseDisk descriptors](self, "descriptors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8, !v10))
  {
    v24 = SKGetOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v62 = 136315138;
      *&v62[4] = "[SKEraseDisk validateWithError:]";
      _os_log_impl(&dword_26BBB8000, v24, OS_LOG_TYPE_ERROR, "%s: Missing partition descriptors for erase disk", v62, 0xCu);
    }

    v21 = [SKError nilWithPOSIXCode:22 error:a3];
LABEL_18:
    v25 = v21;
    goto LABEL_19;
  }

  *v62 = 0;
  *&v62[8] = v62;
  *&v62[16] = 0x2020000000;
  v63 = 0;
  v11 = [(SKEraseDisk *)self descriptors];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __33__SKEraseDisk_validateWithError___block_invoke;
  v54[3] = &unk_279D1FA60;
  v54[4] = v62;
  [v11 enumerateObjectsUsingBlock:v54];

  v12 = *(*&v62[8] + 24);
  v13 = [(SKEraseDisk *)self disk];
  LOBYTE(v12) = v12 > [v13 unformattedSize];

  if (v12)
  {
    v14 = SKGetOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*&v62[8] + 24);
      v16 = [(SKEraseDisk *)self disk];
      v17 = [v16 unformattedSize];
      *buf = 136315650;
      v57 = "[SKEraseDisk validateWithError:]";
      v58 = 2048;
      v59 = v15;
      v60 = 2048;
      v61 = v17;
      _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, "%s: New size %lu exceeds %llu", buf, 0x20u);
    }

    v18 = [SKError nilWithPOSIXCode:28 error:a3];
    goto LABEL_39;
  }

  for (i = 0; ; ++i)
  {
    v29 = [(SKEraseDisk *)self descriptors];
    v30 = [v29 count] - 1 > i;

    if (!v30)
    {
      break;
    }

    v31 = [(SKEraseDisk *)self descriptors];
    v32 = [v31 objectAtIndexedSubscript:i];
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

      v18 = [SKError nilWithPOSIXCode:22 error:a3];
      goto LABEL_39;
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = [(SKEraseDisk *)self descriptors];
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v55 count:16];
  obj = v34;
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
      v39 = [(SKEraseDisk *)self disk];
      v40 = [v38 filesystem];
      v41 = [v39 formattableFilesystemWithFilesystem:v40];

      if (!v41)
      {
        v45 = SKGetOSLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = [v38 filesystem];
          v47 = [(SKEraseDisk *)self formattableFilesystems];
          *buf = 136315650;
          v57 = "[SKEraseDisk validateWithError:]";
          v58 = 2112;
          v59 = v46;
          v60 = 2112;
          v61 = v47;
          _os_log_impl(&dword_26BBB8000, v45, OS_LOG_TYPE_ERROR, "%s: FS to format %@ not found in supported filesystems %@", buf, 0x20u);
        }

        v48 = 45;
        goto LABEL_45;
      }

      v42 = [v38 innerDescriptor];
      [v42 setFilesystem:v41];

      v43 = [v38 innerDescriptor];
      LODWORD(v42) = [v43 validateForErase];

      if (!v42)
      {
        v48 = 22;
LABEL_45:
        v25 = [SKError nilWithPOSIXCode:v48 error:a3];

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

  v18 = self;
LABEL_39:
  v25 = v18;
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