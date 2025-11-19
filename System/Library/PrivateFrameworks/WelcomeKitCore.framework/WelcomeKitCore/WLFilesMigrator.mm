@interface WLFilesMigrator
- (WLFeaturePayload)featurePayload;
- (WLFilesMigrator)init;
- (id)importWillBegin;
- (void)addWorkingTime:(unint64_t)a3;
- (void)enable;
- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6;
- (void)setEstimatedDataSize:(unint64_t)a3;
- (void)setState:(id)a3;
@end

@implementation WLFilesMigrator

- (WLFilesMigrator)init
{
  v6.receiver = self;
  v6.super_class = WLFilesMigrator;
  v2 = [(WLFilesMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(WLFileProvider);
    v4 = [(WLFileProvider *)v3 fetchRootPath];

    if (v4)
    {
      [(WLFilesMigrator *)v2 setRootPath:v4];
    }

    else
    {
      _WLLog();
    }
  }

  return v2;
}

- (void)enable
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setEnabled:1];

  v4 = objc_loadWeakRetained(&self->_featurePayload);
  [v4 setState:@"enabled"];
}

- (void)setState:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setState:v4];
}

- (void)setEstimatedDataSize:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:a3];
}

- (void)addWorkingTime:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setElapsedTime:{objc_msgSend(WeakRetained, "elapsedTime") + a3}];
}

- (id)importWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
  [WeakRetained setSize:0];

  return 0;
}

- (void)importRecordData:(id)a3 summary:(id)a4 account:(id)a5 completion:(id)a6
{
  v70[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a6;
  if ([v8 itemSize] && self->_rootPath)
  {
    v10 = [v8 bucket];

    if (v10)
    {
      v11 = [v8 bucket];
      v12 = [v11 pathComponents];

      if ([v12 count] > 1)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v53 = v12;
        v21 = v12;
        v22 = [v21 countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (!v22)
        {
LABEL_20:

          WeakRetained = objc_loadWeakRetained(&self->_featurePayload);
          [WeakRetained setCount:{objc_msgSend(WeakRetained, "count") + 1}];

          v28 = objc_loadWeakRetained(&self->_featurePayload);
          [v28 setSize:{objc_msgSend(v28, "size") + objc_msgSend(v8, "itemSize")}];

          v16 = [v8 dataFilePath];
          rootPath = self->_rootPath;
          v30 = [v8 bucket];
          v31 = [(NSString *)rootPath stringByAppendingPathComponent:v30];

          v32 = [v31 stringByDeletingLastPathComponent];
          v33 = [MEMORY[0x277CCAA00] defaultManager];
          v34 = [v33 fileExistsAtPath:v32];

          if ((v34 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v35 = objc_claimAutoreleasedReturnValue(), v55 = 0, objc_msgSend(v35, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v32, 1, 0, &v55), v36 = v55, v35, !v36))
          {
            v44 = [MEMORY[0x277CCAA00] defaultManager];
            v45 = [v44 fileExistsAtPath:v31];

            if ((v45 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v46 = objc_claimAutoreleasedReturnValue(), v54 = 0, objc_msgSend(v46, "moveItemAtPath:toPath:error:", v16, v31, &v54), v36 = v54, v46, !v36))
            {
              if (v9)
              {
                v9[2](v9, 1, 0);
              }

              v36 = 0;
            }

            else
            {
              _WLLog();
              if (v9)
              {
                v47 = MEMORY[0x277CCA9B8];
                v48 = *MEMORY[0x277D7B8F8];
                v60 = *MEMORY[0x277CCA450];
                v61 = @"NSFileManager could not move a file.";
                v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                v50 = [v47 errorWithDomain:v48 code:1 userInfo:v49];

                (v9)[2](v9, 1, v50);
              }
            }
          }

          else
          {
            _WLLog();
            if (v9)
            {
              v37 = MEMORY[0x277CCA9B8];
              v38 = *MEMORY[0x277D7B8F8];
              v62 = *MEMORY[0x277CCA450];
              v63 = @"NSFileManager could not create a directory with intermediate directories.";
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              v40 = [v37 errorWithDomain:v38 code:1 userInfo:v39];

              (v9)[2](v9, 0, v40);
            }
          }

          v12 = v53;

          goto LABEL_35;
        }

        v23 = v22;
        v24 = *v57;
        v52 = v8;
LABEL_13:
        v25 = 0;
        while (1)
        {
          if (*v57 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v56 + 1) + 8 * v25);
          if ([v26 isEqualToString:{@"..", v52}] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"~"))
          {
            break;
          }

          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v56 objects:v66 count:16];
            v8 = v52;
            if (v23)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }

        _WLLog();
        v8 = v52;
        v12 = v53;
        if (!v9)
        {
          goto LABEL_36;
        }

        v41 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277D7B900];
        v64 = *MEMORY[0x277CCA450];
        v65 = @"WLFilesMigrator cannot move a file to a restricted path.";
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v16 = [v41 errorWithDomain:v42 code:6 userInfo:v43];
      }

      else
      {
        _WLLog();
        if (!v9)
        {
LABEL_36:

          goto LABEL_37;
        }

        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D7B900];
        v67 = *MEMORY[0x277CCA450];
        v68 = @"WLFilesMigrator cannot move a file to a restricted path.";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v16 = [v13 errorWithDomain:v14 code:6 userInfo:v15];
      }

      (v9)[2](v9, 0, v16);
LABEL_35:

      goto LABEL_36;
    }

    _WLLog();
    if (v9)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D7B8F8];
      v69 = *MEMORY[0x277CCA450];
      v70[0] = @"Bucket is not specified and it can not import the file.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];

      (v9)[2](v9, 0, v20);
    }
  }

  else
  {
    _WLLog();
    if (v9)
    {
      v9[2](v9, 1, 0);
    }
  }

LABEL_37:

  v51 = *MEMORY[0x277D85DE8];
}

- (WLFeaturePayload)featurePayload
{
  WeakRetained = objc_loadWeakRetained(&self->_featurePayload);

  return WeakRetained;
}

@end