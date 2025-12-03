@interface DERDecoder
+ (id)DecodeItem:(id)item outTag:(unint64_t *)tag outError:(id *)error;
+ (id)dataWithSource:(id)source item:(id *)item;
@end

@implementation DERDecoder

+ (id)DecodeItem:(id)item outTag:(unint64_t *)tag outError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v28[0] = [itemCopy bytes];
  v28[1] = [itemCopy length];
  v26 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v8 = DERDecodeItemCtx(v28, &v26);
  if (v8)
  {
    v9 = v8;
    v10 = ATLLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = itemCopy;
      v35 = 1024;
      v36 = v9;
      v37 = 2048;
      v38 = v26;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to decode item %@ : %d (0x%llx)", buf, 0x1Cu);
    }

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v11 initWithFormat:@"Failed to decode item %@ : %d (0x%llx)", itemCopy, v9, v26];
    v13 = v12;
    if (error)
    {
      v14 = *error;
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v17 = *MEMORY[0x277CCA7E8];
        v29[0] = *MEMORY[0x277CCA450];
        v29[1] = v17;
        v30[0] = v12;
        v30[1] = v14;
        v18 = MEMORY[0x277CBEAC0];
        v19 = v30;
        v20 = v29;
        v21 = 2;
      }

      else
      {
        v31 = *MEMORY[0x277CCA450];
        v32 = v12;
        v18 = MEMORY[0x277CBEAC0];
        v19 = &v32;
        v20 = &v31;
        v21 = 1;
      }

      v23 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *error = [v15 errorWithDomain:@"ATL" code:8 userInfo:v23];
    }

    v22 = 0;
  }

  else
  {
    if (tag)
    {
      *tag = v26;
    }

    v22 = [DERDecoder dataWithSource:itemCopy item:v27];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)dataWithSource:(id)source item:(id *)item
{
  var0 = item->var0;
  sourceCopy = source;
  v7 = [sourceCopy subdataWithRange:{&var0[-objc_msgSend(sourceCopy, "bytes")], item->var1}];

  return v7;
}

@end