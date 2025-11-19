@interface NSError(EFPubliclyDescribableAdditions)
+ (void)vf_setDecoder:()EFPubliclyDescribableAdditions forDomain:;
- (id)vf_publicDescription;
@end

@implementation NSError(EFPubliclyDescribableAdditions)

- (id)vf_publicDescription
{
  if (initErrorDecodersOnce_onceToken != -1)
  {
    [NSError(EFPubliclyDescribableAdditions) vf_publicDescription];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NSError_EFPubliclyDescribableAdditions__vf_publicDescription__block_invoke;
  block[3] = &unk_279E352D8;
  block[4] = a1;
  block[5] = &v23;
  dispatch_sync(sErrorDecodeQueue, block);
  v2 = v24[5];
  if (v2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Code=%@(%ld)", v2, objc_msgSend(a1, "code")];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Code=%ld", objc_msgSend(a1, "code")];
  }
  v3 = ;
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"VFPublicErrorInfoKey"];
  v6 = [MEMORY[0x277CCAB68] string];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __stringForPublicInfo_block_invoke;
    v29[3] = &unk_279E35300;
    v30 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v29];
  }

  if (isInternalDevice())
  {
    v7 = [a1 description];
    if (v24[5])
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Code=%ld", objc_msgSend(a1, "code")];
      v9 = [v7 stringByReplacingOccurrencesOfString:v8 withString:v3];

      v7 = v9;
    }

    v10 = truncatedDescriptionToMaxAllowableSize(v6, 0x96uLL);
    v11 = [v7 stringByAppendingString:v10];
  }

  else
  {
    v12 = [a1 userInfo];
    v7 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v7)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [v7 vf_publicDescription];
      v10 = [v13 stringWithFormat:@" UnderlyingError=%@", v14];
    }

    else
    {
      v10 = &stru_288159858;
    }

    if ([v6 length])
    {
      if ([(__CFString *)v10 length])
      {
        v15 = 75;
      }

      else
      {
        v15 = 150;
      }
    }

    else
    {
      v15 = 150;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = objc_opt_class();
    v18 = [a1 domain];
    v19 = truncatedDescriptionToMaxAllowableSize(v6, v15);
    v20 = truncatedDescriptionToMaxAllowableSize(v10, v15);
    v11 = [v16 stringWithFormat:@"%@ Domain=%@ %@%@%@", v17, v18, v3, v19, v20];
  }

  _Block_object_dispose(&v23, 8);

  return v11;
}

+ (void)vf_setDecoder:()EFPubliclyDescribableAdditions forDomain:
{
  v5 = a3;
  v6 = a4;
  if (initErrorDecodersOnce_onceToken != -1)
  {
    [NSError(EFPubliclyDescribableAdditions) vf_publicDescription];
  }

  v7 = sErrorDecodeQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NSError_EFPubliclyDescribableAdditions__vf_setDecoder_forDomain___block_invoke;
  v10[3] = &unk_279E34ED8;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

@end