@interface IPAAdjustmentStackSerializer
+ (id)JSONFromData:(id)data error:(id *)error;
+ (id)archiveDictionary:(id)dictionary error:(id *)error;
+ (id)compressData:(id)data error:(id *)error;
+ (id)dataFromB64String:(id)string;
+ (id)dataFromJSON:(id)n error:(id *)error;
+ (id)dataFromPropertyList:(id)list error:(id *)error;
+ (id)decompressData:(id)data error:(id *)error;
+ (id)propertyListFromData:(id)data error:(id *)error;
+ (id)unarchiveData:(id)data error:(id *)error;
- (id)_adjustmentStackFromData:(id)data error:(id *)error;
- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error;
- (id)adjustmentStackFromData:(id)data error:(id *)error;
- (id)archiveFromData:(id)data error:(id *)error;
- (id)dataFromAdjustmentStack:(id)stack error:(id *)error;
- (id)dataFromArchive:(id)archive error:(id *)error;
@end

@implementation IPAAdjustmentStackSerializer

- (id)archiveFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 _adjustmentStackFromData:v7 error:v8, v9];
}

- (id)_adjustmentStackFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 _dataFromAdjustmentStack:v7 error:v8, v9];
}

- (id)_dataFromAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 dataFromArchive:v7 error:v8, v9];
}

- (id)dataFromArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = _PFAssertFailHandler();
  return [(IPAAdjustmentStackSerializer *)v6 adjustmentStackFromData:v7 error:v8, v9];
}

- (id)adjustmentStackFromData:(id)data error:(id *)error
{
  if (data)
  {
    v9 = [(IPAAdjustmentStackSerializer *)self _adjustmentStackFromData:data error:error];
    v10 = 0;
  }

  else
  {
    v10 = IPAAdjustmentError(1001, @"attempting to deserialize nil data", 0, error, v4, v5, v6, v7, v12);
    v9 = 0;
    if (error && v10)
    {
      v10 = v10;
      v9 = 0;
      *error = v10;
    }
  }

  return v9;
}

- (id)dataFromAdjustmentStack:(id)stack error:(id *)error
{
  stackCopy = stack;
  if (stackCopy)
  {
    v17 = 0;
    v13 = [(IPAAdjustmentStackSerializer *)self _dataFromAdjustmentStack:stackCopy error:&v17];
    v14 = v17;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = IPAAdjustmentError(1000, @"attempting to serialize nil adjustment stack", v6, v7, v8, v9, v10, v11, v16);
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v14)
  {
    v14 = v14;
    *error = v14;
  }

LABEL_7:

  return v13;
}

+ (id)propertyListFromData:(id)data error:(id *)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1008, @"propertyListWithData returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (error && v13)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  return v6;
}

+ (id)dataFromPropertyList:(id)list error:(id *)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (listCopy)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:listCopy format:200 options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1008, @"dataWithPropertyList returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (error && v13)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

  return v6;
}

+ (id)archiveDictionary:(id)dictionary error:(id *)error
{
  v11[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v11[0] = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionaryCopy requiringSecureCoding:1 error:v11];
  v7 = v11[0];
  v8 = v7;
  if (error && v7)
  {
    v9 = v7;
    *error = v8;
  }

  return v6;
}

+ (id)unarchiveData:(id)data error:(id *)error
{
  v15[5] = *MEMORY[0x277D85DE8];
  dataCopy = data;
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
  v10 = [v6 unarchivedObjectOfClasses:v9 fromData:dataCopy error:v14];
  v11 = v14[0];

  if (error && v11)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

+ (id)JSONFromData:(id)data error:(id *)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1002, @"JSONObjectWithData returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (error && v13)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

  return v6;
}

+ (id)dataFromJSON:(id)n error:(id *)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  nCopy = n;
  if (nCopy)
  {
    v16[0] = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:nCopy options:0 error:v16];
    v13 = v16[0];
    if (!(v6 | v13))
    {
      v13 = IPAAdjustmentError(1002, @"dataWithJSONObject returned nil with no error", v7, v8, v9, v10, v11, v12, v16[0]);
    }

    if (error && v13)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  return v6;
}

+ (id)decompressData:(id)data error:(id *)error
{
  v8 = 0;
  v5 = [MEMORY[0x277D3B540] decompressData:data options:0 error:&v8];
  v6 = v8;
  if (error && v6)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

+ (id)compressData:(id)data error:(id *)error
{
  v8 = 0;
  v5 = [MEMORY[0x277D3B540] compressData:data options:0 error:&v8];
  v6 = v8;
  if (error && v6)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

+ (id)dataFromB64String:(id)string
{
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

  return v5;
}

@end