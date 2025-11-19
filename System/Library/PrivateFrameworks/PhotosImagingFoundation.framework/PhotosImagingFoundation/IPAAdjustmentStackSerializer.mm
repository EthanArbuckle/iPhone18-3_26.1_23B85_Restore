@interface IPAAdjustmentStackSerializer
+ (id)JSONFromData:(id)a3 error:(id *)a4;
+ (id)archiveDictionary:(id)a3 error:(id *)a4;
+ (id)compressData:(id)a3 error:(id *)a4;
+ (id)dataFromB64String:(id)a3;
+ (id)dataFromJSON:(id)a3 error:(id *)a4;
+ (id)dataFromPropertyList:(id)a3 error:(id *)a4;
+ (id)decompressData:(id)a3 error:(id *)a4;
+ (id)propertyListFromData:(id)a3 error:(id *)a4;
+ (id)unarchiveData:(id)a3 error:(id *)a4;
- (id)_adjustmentStackFromData:(id)a3 error:(id *)a4;
- (id)_dataFromAdjustmentStack:(id)a3 error:(id *)a4;
- (id)adjustmentStackFromData:(id)a3 error:(id *)a4;
- (id)archiveFromData:(id)a3 error:(id *)a4;
- (id)dataFromAdjustmentStack:(id)a3 error:(id *)a4;
- (id)dataFromArchive:(id)a3 error:(id *)a4;
@end

@implementation IPAAdjustmentStackSerializer

- (id)archiveFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 _adjustmentStackFromData:v7 error:v8, v9];
}

- (id)_adjustmentStackFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 _dataFromAdjustmentStack:v7 error:v8, v9];
}

- (id)_dataFromAdjustmentStack:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 dataFromArchive:v7 error:v8, v9];
}

- (id)dataFromArchive:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 adjustmentStackFromData:v7 error:v8, v9];
}

- (id)adjustmentStackFromData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v9 = [(IPAAdjustmentStackSerializer *)self _adjustmentStackFromData:a3 error:a4];
    v10 = 0;
  }

  else
  {
    v10 = IPAAdjustmentError(1001, @"attempting to deserialize nil data", 0, a4, v4, v5, v6, v7, v12);
    v9 = 0;
    if (a4 && v10)
    {
      v10 = v10;
      v9 = 0;
      *a4 = v10;
    }
  }

  return v9;
}

- (id)dataFromAdjustmentStack:(id)a3 error:(id *)a4
{
  v12 = a3;
  if (v12)
  {
    v17 = 0;
    v13 = [(IPAAdjustmentStackSerializer *)self _dataFromAdjustmentStack:v12 error:&v17];
    v14 = v17;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = IPAAdjustmentError(1000, @"attempting to serialize nil adjustment stack", v6, v7, v8, v9, v10, v11, v16);
    v13 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (v14)
  {
    v14 = v14;
    *a4 = v14;
  }

LABEL_7:

  return v13;
}

+ (id)propertyListFromData:(id)a3 error:(id *)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1008, @"propertyListWithData returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (a4 && v13)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  return v6;
}

+ (id)dataFromPropertyList:(id)a3 error:(id *)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1008, @"dataWithPropertyList returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (a4 && v13)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

  return v6;
}

+ (id)archiveDictionary:(id)a3 error:(id *)a4
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11[0] = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v11];
  v7 = v11[0];
  v8 = v7;
  if (a4 && v7)
  {
    v9 = v7;
    *a4 = v8;
  }

  return v6;
}

+ (id)unarchiveData:(id)a3 error:(id *)a4
{
  v15[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v15[4] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
  v9 = [v7 initWithArray:v8];
  v14[0] = 0;
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:v14];
  v11 = v14[0];

  if (a4 && v11)
  {
    v12 = v11;
    *a4 = v11;
  }

  return v10;
}

+ (id)JSONFromData:(id)a3 error:(id *)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1002, @"JSONObjectWithData returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (a4 && v13)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

  return v6;
}

+ (id)dataFromJSON:(id)a3 error:(id *)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1002, @"dataWithJSONObject returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (a4 && v13)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  return v6;
}

+ (id)decompressData:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [MEMORY[0x277D3B540] decompressData:a3 options:0 error:&v8];
  v6 = v8;
  if (a4 && v6)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

+ (id)compressData:(id)a3 error:(id *)a4
{
  v8 = 0;
  v5 = [MEMORY[0x277D3B540] compressData:a3 options:0 error:&v8];
  v6 = v8;
  if (a4 && v6)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

+ (id)dataFromB64String:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

@end