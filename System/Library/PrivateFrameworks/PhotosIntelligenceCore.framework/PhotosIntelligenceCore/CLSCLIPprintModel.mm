@interface CLSCLIPprintModel
+ (id)encodeText:(id)text textEncoder:(id)encoder;
+ (id)encodeTextAverage:(id)average textEncoder:(id)encoder;
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSCLIPprintModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (id)initForTesting;
@end

@implementation CLSCLIPprintModel

- (id)initForTesting
{
  v3 = +[CLSCLIPprintModel latestVersion];

  return [(CLSCLIPprintModel *)self initWithSceneAnalysisVersion:v3];
}

- (CLSCLIPprintModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSCLIPprintModel;
  v4 = [(CLSCLIPprintModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x54)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        *buf = 67109378;
        versionCopy = version;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
      }

      v5 = 0;
    }

    else
    {
      [(CLSCLIPprintModel *)v4 setupVersion84];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)encodeTextAverage:(id)average textEncoder:(id)encoder
{
  v49 = *MEMORY[0x277D85DE8];
  averageCopy = average;
  encoderCopy = encoder;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = averageCopy;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CLSCLIPprintModel encodeText:*(*(&v43 + 1) + 8 * i) textEncoder:encoderCopy];
        if (!v13)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[CLSCLIPprintModel] CLIP Embedding for text failed batch", buf, 2u);
          }

          goto LABEL_28;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[CLSCLIPprintModel] CLIP Embedding for text returned no results", buf, 2u);
    }

LABEL_28:
    v31 = 0;
    goto LABEL_39;
  }

  firstObject = [v7 firstObject];
  v16 = [firstObject length];

  v17 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v16];
  mutableBytes = [v17 mutableBytes];
  if (!mutableBytes)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[CLSCLIPprintModel] CLIP Embedding failed to create a mutable byte array", buf, 2u);
    }

    v31 = 0;
    goto LABEL_38;
  }

  v19 = mutableBytes;
  v36 = v17;
  v20 = v16 >> 2;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v21 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = v21;
  v23 = *v39;
  while (2)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v39 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v38 + 1) + 8 * j);
      if ([v25 length] != v16)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_37:

          v31 = 0;
          v17 = v36;
          goto LABEL_38;
        }

        *buf = 0;
        v32 = MEMORY[0x277D86220];
        v33 = "[CLSCLIPprintModel] CLIP Embedding failed, inconsistent embedding length";
LABEL_43:
        _os_log_error_impl(&dword_25E5F0000, v32, OS_LOG_TYPE_ERROR, v33, buf, 2u);
        goto LABEL_37;
      }

      bytes = [v25 bytes];
      if (!bytes)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v32 = MEMORY[0x277D86220];
        v33 = "[CLSCLIPprintModel] CLIP Embedding failed to read embedding byte array";
        goto LABEL_43;
      }

      v27 = v19;
      v28 = v16 >> 2;
      if (v16 >= 4)
      {
        do
        {
          v29 = *bytes++;
          *v27 = v29 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }
    }

    v22 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v30 = [obj count];
  if (v16 >= 4)
  {
    do
    {
      *v19 = (1.0 / v30) * *v19;
      ++v19;
      --v20;
    }

    while (v20);
  }

  v17 = v36;
  v31 = v36;
LABEL_38:

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)encodeText:(id)text textEncoder:(id)encoder
{
  textCopy = text;
  encoderCopy = encoder;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__CLSCLIPprintModel_encodeText_textEncoder___block_invoke;
  v12[3] = &unk_279A28000;
  v15 = &v16;
  v8 = v7;
  v13 = v8;
  v9 = textCopy;
  v14 = v9;
  [encoderCopy runOnInputText:v9 completion:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __44__CLSCLIPprintModel_encodeText_textEncoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 clipTextEmbedding];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__CLSCLIPprintModel_encodeText_textEncoder___block_invoke_2;
    v10[3] = &unk_279A27FD8;
    v12 = *(a1 + 48);
    v11 = *(a1 + 32);
    [v7 accessDataUsingBlock:v10];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[CLSCLIPprintModel] CLIP Embedding for text query %@ is nil, failed with error %@", buf, 0x16u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v8 = *MEMORY[0x277D85DE8];
}

intptr_t __44__CLSCLIPprintModel_encodeText_textEncoder___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 length:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  if (version >= 0x54)
  {
    return 84;
  }

  else
  {
    return 0;
  }
}

@end