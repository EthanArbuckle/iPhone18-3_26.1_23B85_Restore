@interface DERDecoder
+ (id)DecodeItem:(id)a3 outTag:(unint64_t *)a4 outError:(id *)a5;
+ (id)dataWithSource:(id)a3 item:(id *)a4;
@end

@implementation DERDecoder

+ (id)DecodeItem:(id)a3 outTag:(unint64_t *)a4 outError:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28[0] = [v7 bytes];
  v28[1] = [v7 length];
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
      v34 = v7;
      v35 = 1024;
      v36 = v9;
      v37 = 2048;
      v38 = v26;
      _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "Failed to decode item %@ : %d (0x%llx)", buf, 0x1Cu);
    }

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v11 initWithFormat:@"Failed to decode item %@ : %d (0x%llx)", v7, v9, v26];
    v13 = v12;
    if (a5)
    {
      v14 = *a5;
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      if (*a5)
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
      *a5 = [v15 errorWithDomain:@"ATL" code:8 userInfo:v23];
    }

    v22 = 0;
  }

  else
  {
    if (a4)
    {
      *a4 = v26;
    }

    v22 = [DERDecoder dataWithSource:v7 item:v27];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)dataWithSource:(id)a3 item:(id *)a4
{
  var0 = a4->var0;
  v6 = a3;
  v7 = [v6 subdataWithRange:{&var0[-objc_msgSend(v6, "bytes")], a4->var1}];

  return v7;
}

@end