@interface TRIClientFactorPackStreamingParser
- (NSString)factorPackId;
- (TRIClientFactorPackStreamingParser)initWithData:(id)a3 error:(id *)a4;
- (TRIClientSelectedNamespace)selectedNamespace;
- (id)downloadedFactorsWithPaths:(id)a3;
- (unsigned)_fieldTagForFieldName:(id)a3;
- (void)_parseWithHandleFactorLevel:(id)a3;
@end

@implementation TRIClientFactorPackStreamingParser

- (NSString)factorPackId
{
  if (self->_factorPackId)
  {
    return self->_factorPackId;
  }

  else
  {
    return &stru_28435FC98;
  }
}

- (TRIClientSelectedNamespace)selectedNamespace
{
  selectedNamespace = self->_selectedNamespace;
  if (selectedNamespace)
  {
    v3 = [(TRIClientSelectedNamespace *)selectedNamespace copy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (TRIClientFactorPackStreamingParser)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v12.receiver = self;
  v12.super_class = TRIClientFactorPackStreamingParser;
  v8 = [(TRIClientFactorPackStreamingParser *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, a3);
    [(TRIClientFactorPackStreamingParser *)v9 _parseWithHandleFactorLevel:0];
  }

  v10 = v9;
  objc_autoreleasePoolPop(v7);

  return v10;
}

- (unsigned)_fieldTagForFieldName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277D73AD8] descriptor];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 fields];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v19 + 1) + 8 * v10) name];
      v12 = [v3 isEqualToString:v11];

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = TRIPBFieldTag();

    if (v14 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIClientFactorPackStreaming.m" lineNumber:91 description:{@"Failed to determine field tag for %@", v3}];

    v14 = -1;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_parseWithHandleFactorLevel:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [(TRIClientFactorPackStreamingParser *)self _fieldTagForFieldName:@"factorPackId"];
  v6 = [(TRIClientFactorPackStreamingParser *)self _fieldTagForFieldName:@"selectedNamespace"];
  v7 = [(TRIClientFactorPackStreamingParser *)self _fieldTagForFieldName:@"factorLevelArray"];
  v8 = [objc_alloc(MEMORY[0x277D73B58]) initWithData:self->_data];
  v9 = [v8 readTag];
  if (v9)
  {
    v11 = v9;
    *&v10 = 67109120;
    v25 = v10;
    do
    {
      if (v11 == v5)
      {
        if (self->_factorPackId)
        {
          v12 = v8;
          v13 = v5;
LABEL_21:
          [v12 skipField:{v13, v25}];
          goto LABEL_22;
        }

        v17 = objc_autoreleasePoolPush();
        v18 = [v8 readString];
        objc_autoreleasePoolPop(v17);
        factorPackId = self->_factorPackId;
        self->_factorPackId = v18;
      }

      else
      {
        if (v11 != v6)
        {
          if (v11 == v7)
          {
            if (v4)
            {
              v14 = objc_autoreleasePoolPush();
              v15 = objc_opt_new();
              [v8 readMessage:v15 extensionRegistry:0];
              buf[0] = 0;
              v4[2](v4, v15, buf);
              v16 = buf[0];

              objc_autoreleasePoolPop(v14);
              if (v16)
              {
                break;
              }

              goto LABEL_22;
            }

            v12 = v8;
            v13 = v7;
          }

          else
          {
            if (!self->_emittedUnrecognizedFieldWarning)
            {
              v20 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = v25;
                v28 = v11;
                _os_log_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_INFO, "TRIClientFactorPackStreamingParser: skipping unrecognized tag: %u", buf, 8u);
              }

              self->_emittedUnrecognizedFieldWarning = 1;
            }

            v12 = v8;
            v13 = v11;
          }

          goto LABEL_21;
        }

        if (self->_selectedNamespace)
        {
          v12 = v8;
          v13 = v6;
          goto LABEL_21;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = objc_opt_new();
        selectedNamespace = self->_selectedNamespace;
        self->_selectedNamespace = v22;

        [v8 readMessage:self->_selectedNamespace extensionRegistry:0];
        objc_autoreleasePoolPop(v21);
      }

LABEL_22:
      v11 = [v8 readTag];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];
}

- (id)downloadedFactorsWithPaths:(id)a3
{
  v4 = [a3 treatmentsDir];
  v5 = [(TRIClientFactorPackStreamingParser *)self selectedNamespace];
  v6 = [v5 name];

  v7 = [(TRIClientFactorPackStreamingParser *)self factorPackId];
  v8 = objc_opt_new();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__TRIClientFactorPackStreamingParser_downloadedFactorsWithPaths___block_invoke;
  v18 = &unk_27885E140;
  v19 = v8;
  v20 = v4;
  v21 = v6;
  v22 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v4;
  v12 = v8;
  [(TRIClientFactorPackStreamingParser *)self enumerateFactorLevelsWithBlock:&v15];
  v13 = [MEMORY[0x277CBEB98] setWithSet:{v12, v15, v16, v17, v18}];

  return v13;
}

void __65__TRIClientFactorPackStreamingParser_downloadedFactorsWithPaths___block_invoke(void *a1, void *a2)
{
  v27 = a2;
  if ([v27 hasFactor])
  {
    v3 = [v27 factor];
    v4 = [v3 hasName];

    if (v4)
    {
      v5 = [v27 factor];
      v6 = [v5 name];

      v7 = [v27 level];
      v8 = [v7 fileOrDirectoryLevelWithIsDir:0];

      if ([v8 hasPath] && (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "fileExistsAtPath:", v10), v10, v9, v11))
      {
        v12 = a1[4];
        v13 = [v27 factor];
        v14 = [v13 name];
        [v12 addObject:v14];
      }

      else
      {
        v15 = [v27 level];
        v16 = [v15 levelOneOfCase];

        if (v16 != 104)
        {
LABEL_11:

          goto LABEL_12;
        }

        v17 = objc_autoreleasePoolPush();
        v18 = a1[5];
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = a1[6];
        v21 = a1[7];
        v22 = [v6 triFilenameForFactorName];
        v23 = [v19 initWithFormat:@"%@/factorPacks/%@/maRefs/%@", v20, v21, v22];
        v13 = [v18 stringByAppendingPathComponent:v23];

        objc_autoreleasePoolPop(v17);
        v24 = [MEMORY[0x277CCAA00] defaultManager];
        LODWORD(v23) = [v24 fileExistsAtPath:v13];

        if (!v23)
        {
LABEL_10:

          goto LABEL_11;
        }

        v25 = a1[4];
        v14 = [v27 factor];
        v26 = [v14 name];
        [v25 addObject:v26];
      }

      goto LABEL_10;
    }
  }

LABEL_12:
}

@end