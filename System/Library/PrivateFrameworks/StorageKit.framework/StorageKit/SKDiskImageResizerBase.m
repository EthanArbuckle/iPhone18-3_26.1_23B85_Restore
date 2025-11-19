@interface SKDiskImageResizerBase
- (BOOL)checkLimitsWithError:(id *)a3;
- (BOOL)prepareRecoveryMoverWithError:(id *)a3;
- (SKDiskImageResizerBase)initWithDiskImage:(id)a3 limits:(id)a4 resizeParams:(id)a5 error:(id *)a6;
- (id)attachForResizeParams;
- (id)fitToSize:(id *)a3;
- (id)imageResize:(id *)a3;
- (id)moveRecovery:(id *)a3;
- (id)volumeResize:(id *)a3;
- (void)setRequestedSize:(unint64_t)a3;
@end

@implementation SKDiskImageResizerBase

- (SKDiskImageResizerBase)initWithDiskImage:(id)a3 limits:(id)a4 resizeParams:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 deduceDiskWithError:a6];
  if (!v14)
  {
    goto LABEL_8;
  }

  if (![v13 size])
  {
    [v13 setSize:{objc_msgSend(v12, "minBytes")}];
  }

  v18.receiver = self;
  v18.super_class = SKDiskImageResizerBase;
  v15 = -[SKDiskResizerBase initWithDisk:requestedSize:](&v18, sel_initWithDisk_requestedSize_, v14, [v13 size]);
  self = v15;
  if (!v15 || (objc_storeStrong(&v15->_resizeParams, a5), objc_storeStrong(&self->_image, a3), objc_storeStrong(&self->_limits, a4), [(SKDiskImageResizerBase *)self checkLimitsWithError:a6]) && [(SKDiskImageResizerBase *)self prepareRecoveryMoverWithError:a6])
  {
    self = self;
    v16 = self;
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
}

- (BOOL)prepareRecoveryMoverWithError:(id *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [SKLastPartitions alloc];
  v6 = [(SKDiskResizerBase *)self disk];
  v7 = [(SKLastPartitions *)v5 initWithDisk:v6];

  v8 = [(SKLastPartitions *)v7 recoveryPart];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [(SKDiskResizerBase *)self disk];
  v10 = [v9 type];
  v11 = [SKLastPartitions secondaryPartitionTableSizeWithDiskType:v10];

  v12 = [(SKLastPartitions *)v7 recoveryPart];
  v13 = [v12 unformattedSize] + v11;

  if ([(SKDiskResizerBase *)self requestedSize]<= v13)
  {
    v31 = SKGetOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v42 = 136315138;
      v43 = "[SKDiskImageResizerBase prepareRecoveryMoverWithError:]";
      _os_log_impl(&dword_26BBB8000, v31, OS_LOG_TYPE_ERROR, "%s: The requested size to resize is smaller than the recovery partition", &v42, 0xCu);
    }

    v30 = [SKError failWithSKErrorCode:257 error:a3];
    goto LABEL_16;
  }

  v14 = [(SKDiskResizerBase *)self requestedSize]- v13;
  v15 = [(SKLastPartitions *)v7 recoveryPart];
  v16 = [v15 startLocation];

  v17 = v14 - v16;
  if (v14 == v16)
  {
LABEL_12:
    v30 = 1;
    goto LABEL_16;
  }

  v18 = [(SKLastPartitions *)v7 recoveryPart];
  v19 = [v18 unformattedSize];
  if (v17 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = -v17;
  }

  if (v19 > v20)
  {
    v21 = SKGetOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(SKLastPartitions *)v7 recoveryPart];
      v23 = [v22 startLocation];
      v24 = [(SKLastPartitions *)v7 recoveryPart];
      v42 = 136315906;
      v43 = "[SKDiskImageResizerBase prepareRecoveryMoverWithError:]";
      v44 = 2048;
      v45 = v23;
      v46 = 2048;
      v47 = v14;
      v48 = 2048;
      v49 = [v24 unformattedSize];
      _os_log_impl(&dword_26BBB8000, v21, OS_LOG_TYPE_DEFAULT, "%s: Recovery partition current offset %lld, new offset %lld, size %lld, need to perform a 2-step move", &v42, 0x2Au);
    }

    v25 = [(SKLastPartitions *)v7 recoveryPart];
    v26 = [v25 startLocation];
    v27 = [(SKLastPartitions *)v7 recoveryPart];
    v28 = [v27 unformattedSize];

    v29 = [(SKLastPartitions *)v7 recoveryPart];
    -[SKDiskImageResizerBase setRequiredSizeForRecoveryMove:](self, "setRequiredSizeForRecoveryMove:", v26 + v11 + v28 + [v29 unformattedSize]);

    if (v17 >= 1)
    {
      [(SKDiskImageResizerBase *)self setRequiredSizeForRecoveryMove:[(SKDiskImageResizerBase *)self requiredSizeForRecoveryMove]+ v17];
    }

    goto LABEL_12;
  }

  v34 = [(SKLastPartitions *)v7 recoveryPart];
  v35 = [SKPartitionTable partitionIDFromDisk:v34];

  if (v35)
  {
    v36 = [SKRecoveryMoverInfo alloc];
    v37 = [(SKLastPartitions *)v7 recoveryPart];
    v38 = [v37 startLocation];
    v39 = [(SKLastPartitions *)v7 recoveryPart];
    v40 = -[SKRecoveryMoverInfo initWithSrcOffset:dstOffset:length:partitionID:](v36, "initWithSrcOffset:dstOffset:length:partitionID:", v38, v14, [v39 unformattedSize], v35);
    recoveryMoverInfo = self->_recoveryMoverInfo;
    self->_recoveryMoverInfo = v40;

    v30 = 1;
  }

  else
  {
    v30 = [SKError failWithSKErrorCode:117 debugDescription:@"Failed to retrieve the recovery partition ID" error:a3];
  }

LABEL_16:
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)setRequestedSize:(unint64_t)a3
{
  v5 = [(SKDiskImageResizerBase *)self resizeParams];
  [v5 setSize:a3];

  v6.receiver = self;
  v6.super_class = SKDiskImageResizerBase;
  [(SKDiskResizerBase *)&v6 setRequestedSize:a3];
}

- (id)attachForResizeParams
{
  v2 = objc_opt_new();
  [v2 setIsManagedAttach:1];
  [v2 setPolicy:0];

  return v2;
}

- (BOOL)checkLimitsWithError:(id *)a3
{
  v5 = [(SKDiskResizerBase *)self requestedSize];
  v6 = [(SKDiskImageResizerBase *)self limits];
  if (v5 >= [v6 minBytes])
  {
    v7 = [(SKDiskImageResizerBase *)self limits];
    v8 = [v7 maxBytes];
    v9 = [(SKDiskResizerBase *)self requestedSize];

    if (v8 >= v9)
    {
      return 1;
    }
  }

  else
  {
  }

  v10 = [(SKDiskImageResizerBase *)self limits];
  v11 = [v10 maxBytes];
  v12 = [(SKDiskResizerBase *)self requestedSize];

  if (v11 < v12)
  {
    v13 = 256;
  }

  else
  {
    v13 = 257;
  }

  return [SKError failWithSKErrorCode:v13 error:a3];
}

- (id)volumeResize:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v6 = [(SKDiskResizerBase *)self disk];
  v7 = [(SKDiskResizerBase *)self requestedSize];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __39__SKDiskImageResizerBase_volumeResize___block_invoke;
  v23 = &unk_279D1F8B8;
  v25 = &v26;
  v8 = v5;
  v24 = v8;
  v9 = [v6 resizeToSize:v7 completionBlock:&v20];

  v10 = [(SKDiskResizerBase *)self resizeError:v20];
  LODWORD(v6) = v10 == 0;

  if (v6)
  {
    v11 = [(SKDiskResizerBase *)self progress];
    [v11 chainChildProgress:v9 withPendingUnitCount:70];
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (v27[5])
  {
    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v27[5];
      *buf = 136315394;
      v33 = "[SKDiskImageResizerBase volumeResize:]";
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_DEFAULT, "%s: Resize failed: %@", buf, 0x16u);
    }

    if (a3)
    {
      *a3 = v27[5];
    }

    v14 = [(SKDiskResizerBase *)self rollbackResize:a3];
  }

  else
  {
    v15 = SKGetOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SKDiskResizerBase *)self disk];
      *buf = 136315394;
      v33 = "[SKDiskImageResizerBase volumeResize:]";
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_DEFAULT, "%s: %@ resized successfully", buf, 0x16u);
    }

    v14 = [(SKDiskResizerBase *)self eventFromSize];
  }

  v17 = v14;

  _Block_object_dispose(&v26, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __39__SKDiskImageResizerBase_volumeResize___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)imageResize:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = SKGetOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SKDiskImageResizerBase *)self image];
    v23 = 136315394;
    v24 = "[SKDiskImageResizerBase imageResize:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_DEFAULT, "%s: Resizing disk image %@", &v23, 0x16u);
  }

  v7 = [(SKDiskResizerBase *)self disk];
  v8 = [v7 ejectWithError:a3];

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = +[SKError frameworkBundle];
  v10 = [v9 localizedStringForKey:@"Resizing disk image..." value:&stru_287C8F598 table:0];
  v11 = [(SKDiskResizerBase *)self progress];
  [v11 setLocalizedAdditionalDescription:v10];

  [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 2];
  v12 = [(SKDiskImageResizerBase *)self image];
  v13 = [(SKDiskImageResizerBase *)self resizeParams];
  v14 = [v12 diResize:v13 error:a3];

  v15 = SKGetOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SKDiskImageResizerBase imageResize:]";
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&dword_26BBB8000, v15, OS_LOG_TYPE_DEFAULT, "%s: Resized disk image to new size %lld", &v23, 0x16u);
  }

  if (v14)
  {
    [(SKDiskImageResizerBase *)self setRequestedSize:v14];
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 6];
    v16 = [(SKDiskImageResizerBase *)self image];
    v17 = [(SKDiskImageResizerBase *)self attachForResizeParams];
    v18 = [v16 attachWithParams:v17 error:a3];
    [(SKDiskResizerBase *)self setDisk:v18];

    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 2];
    v19 = [(SKDiskResizerBase *)self disk];

    if (v19)
    {
      v20 = [(SKDiskResizerBase *)self eventFromSize];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
LABEL_9:
    v20 = [(SKDiskResizerBase *)self rollbackResize:a3];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)moveRecovery:(id *)a3
{
  v84[2] = *MEMORY[0x277D85DE8];
  v5 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];

  if (!v5)
  {
LABEL_21:
    [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
    v47 = [(SKDiskResizerBase *)self eventFromSize];
LABEL_22:
    v43 = v47;
    goto LABEL_23;
  }

  v6 = +[SKError frameworkBundle];
  v7 = [v6 localizedStringForKey:@"Moving recovery partition..." value:&stru_287C8F598 table:0];
  v8 = [(SKDiskResizerBase *)self progress];
  [v8 setLocalizedAdditionalDescription:v7];

  v9 = [(SKDiskResizerBase *)self disk];
  v10 = [v9 getSectorSize];

  v11 = [(SKDiskResizerBase *)self disk];
  v12 = [SKMediaKit newMediaRefForDisk:v11 options:0 error:a3];

  if (!v12)
  {
    v46 = SKGetOSLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v76 = "[SKDiskImageResizerBase moveRecovery:]";
      _os_log_impl(&dword_26BBB8000, v46, OS_LOG_TYPE_ERROR, "%s: Failed creating MediaKit reference for reading", buf, 0xCu);
    }

    v47 = [(SKDiskResizerBase *)self rollbackResize:a3];
    goto LABEL_22;
  }

  v83[0] = @"Shared Writer";
  v83[1] = @"Writable";
  v84[0] = MEMORY[0x277CBEC38];
  v84[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v14 = [(SKDiskResizerBase *)self disk];
  v15 = [SKMediaKit newMediaRefForDisk:v14 options:v13 error:a3];

  v16 = SKGetOSLog();
  v17 = v16;
  if (v15)
  {
    v67 = v13;
    v69 = a3;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      v19 = [v18 length];
      [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      v21 = v20 = v15;
      v22 = [v21 srcOffset];
      v23 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
      *buf = 136315906;
      v76 = "[SKDiskImageResizerBase moveRecovery:]";
      v77 = 2048;
      v78 = v19;
      v79 = 2048;
      v80 = v22;
      v81 = 2048;
      v82 = [v23 dstOffset];
      _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_DEFAULT, "%s: Moving recovery partition of size %lld from offset %lld to %lld...", buf, 0x2Au);

      v15 = v20;
    }

    v73[0] = @"Instruction Code";
    v24 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v74[0] = v24;
    v74[1] = v12;
    v68 = v12;
    v73[1] = @"Source Device";
    v73[2] = @"Target Device";
    v66 = v15;
    v74[2] = v15;
    v73[3] = @"Source Offset";
    v25 = MEMORY[0x277CCABB0];
    v26 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v27 = v10;
    v28 = [v25 numberWithUnsignedLongLong:{objc_msgSend(v26, "srcOffset") / v10}];
    v74[3] = v28;
    v73[4] = @"Target Offset";
    v29 = MEMORY[0x277CCABB0];
    v30 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(v30, "dstOffset") / v10}];
    v74[4] = v31;
    v73[5] = @"Block Count";
    v32 = MEMORY[0x277CCABB0];
    v33 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
    v34 = [v32 numberWithUnsignedLongLong:{objc_msgSend(v33, "length") / v27}];
    v74[5] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:6];

    v36 = v35;
    v71[0] = @"Block Size";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
    v72[0] = v37;
    v72[1] = &unk_287C9A640;
    v71[1] = @"Buffer Size";
    v71[2] = @"Buffer Count";
    v72[2] = &unk_287C9A658;
    v71[3] = @"Instructions";
    v70 = v35;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v72[3] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];

    v40 = IOJobSetup();
    if (v40)
    {
      v41 = v40;
      v42 = SKGetOSLog();
      v43 = v69;
      v44 = v67;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v76 = "[SKDiskImageResizerBase moveRecovery:]";
        v77 = 1024;
        LODWORD(v78) = v41;
        v45 = "%s: IOJobSetup failed, err=%d";
LABEL_18:
        _os_log_impl(&dword_26BBB8000, v42, OS_LOG_TYPE_ERROR, v45, buf, 0x12u);
      }
    }

    else
    {
      v41 = IOJobInitiate();
      IOJobDispose();
      v43 = v69;
      if (!v41)
      {
        v65 = v36;
        v52 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        v53 = [v52 dstOffset];

        v54 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        v55 = [v54 srcOffset];
        v56 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        [v56 setDstOffset:v55];

        v57 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        [v57 setSrcOffset:v53];

        v58 = [SKPartitionTable alloc];
        v59 = [(SKDiskResizerBase *)self disk];
        v60 = [(SKPartitionTable *)v58 initWithDisk:v59 error:v69];

        v44 = v67;
        if (!v60)
        {
          goto LABEL_29;
        }

        v61 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        v62 = [v61 partitionID];
        v63 = [(SKDiskImageResizerBase *)self recoveryMoverInfo];
        v64 = -[SKPartitionTable resizePartitionID:size:offset:error:](v60, "resizePartitionID:size:offset:error:", v62, [v63 length], v53, v69);

        if (v64)
        {
          v49 = 1;
        }

        else
        {
LABEL_29:
          v43 = [(SKDiskResizerBase *)self rollbackResize:v69];
          v49 = 0;
        }

        v36 = v65;

LABEL_20:
        if (!v49)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v42 = SKGetOSLog();
      v44 = v67;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v76 = "[SKDiskImageResizerBase moveRecovery:]";
        v77 = 1024;
        LODWORD(v78) = v41;
        v45 = "%s: Recovery partition blocks copy failed, err=%d";
        goto LABEL_18;
      }
    }

    v48 = [SKError errorWithPOSIXCode:v41 error:v43];
    v43 = [(SKDiskResizerBase *)self rollbackResize:v43];
    v49 = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v76 = "[SKDiskImageResizerBase moveRecovery:]";
    _os_log_impl(&dword_26BBB8000, v17, OS_LOG_TYPE_ERROR, "%s: Failed creating MediaKit reference for writing", buf, 0xCu);
  }

  v43 = [(SKDiskResizerBase *)self rollbackResize:a3];

LABEL_23:
  v50 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)fitToSize:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(SKDiskResizerBase *)self disk];
  v6 = [v5 type];
  v7 = [v6 isEqualToString:kSKDiskTypeUninitalized[0]];

  if (v7)
  {
    v8 = [(SKDiskResizerBase *)self eventFromSize];
  }

  else
  {
    v9 = SKGetOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SKDiskResizerBase *)self disk];
      v20 = 136315650;
      v21 = "[SKDiskImageResizerBase fitToSize:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = [(SKDiskResizerBase *)self requestedSize];
      _os_log_impl(&dword_26BBB8000, v9, OS_LOG_TYPE_DEFAULT, "%s: Fitting media of %@ to %llu", &v20, 0x20u);
    }

    v11 = +[SKError frameworkBundle];
    v12 = [v11 localizedStringForKey:@"Fitting partition table to new disk size..." value:&stru_287C8F598 table:0];
    v13 = [(SKDiskResizerBase *)self progress];
    [v13 setLocalizedAdditionalDescription:v12];

    v14 = [SKPartitionTable alloc];
    v15 = [(SKDiskResizerBase *)self disk];
    v16 = [(SKPartitionTable *)v14 initWithDisk:v15 error:a3];

    if (v16 && [(SKPartitionTable *)v16 fitToContainerSize:[(SKDiskResizerBase *)self requestedSize] error:a3])
    {
      [(SKDiskResizerBase *)self setCompletedUnitCount:[(SKDiskResizerBase *)self completedUnitCount]+ 10];
      v17 = [(SKDiskResizerBase *)self eventFromSize];
    }

    else
    {
      v17 = [(SKDiskResizerBase *)self rollbackResize:a3];
    }

    v8 = v17;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

@end