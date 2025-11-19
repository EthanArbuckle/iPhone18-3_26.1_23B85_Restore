@interface UPUtilities
+ (BOOL)checkFileExistence:(id)a3 error:(id *)a4;
+ (_NSRange)rangeFromStart:(unint64_t)a3 end:(unint64_t)a4;
+ (basic_string<char16_t,)nSStringToU16String:(std::allocator<char16_t>> *__return_ptr)retstr;
+ (id)higherLevelEntityLabelFromParentLabel:(id)a3 childLabel:(id)a4;
+ (id)intermediateNodeRepresentations:(id)a3;
+ (id)rootNodeRepresentationForIntent:(id)a3 andEntities:(id)a4;
+ (id)stdU16ToNSString:(const void *)a3;
@end

@implementation UPUtilities

+ (id)rootNodeRepresentationForIntent:(id)a3 andEntities:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v20 = a4;
  v22 = [MEMORY[0x277CBEB18] array];
  v23 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v20;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 isHigherLevelEntity])
        {
          [v23 addObject:v9];
        }

        else
        {
          v10 = [UPResultLeafNode alloc];
          v11 = [v9 label];
          v12 = [v9 text];
          v13 = [v9 semanticValue];
          v14 = [(UPResultLeafNode *)v10 initWithLabel:v11 andText:v12 andSemanticValue:v13];

          [v22 addObject:v14];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v15 = [UPResultRootNode alloc];
  v16 = [UPUtilities intermediateNodeRepresentations:v23];
  v17 = [(UPResultRootNode *)v15 initWithLabel:v21 intermediateNodes:v16 directLeafNodes:v22];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)intermediateNodeRepresentations:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v41 = [MEMORY[0x277CBEB38] dictionary];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v4)
  {
    v5 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v50 + 1) + 8 * i);
        v8 = [v7 higherLevelParentLabel];
        v9 = [v7 higherLevelChildLabel];
        v10 = [UPResultLeafNode alloc];
        v11 = [v7 text];
        v12 = [v7 semanticValue];
        v13 = [(UPResultLeafNode *)v10 initWithLabel:v9 andText:v11 andSemanticValue:v12];

        v14 = [v41 objectForKey:v8];
        v15 = v14 == 0;

        if (v15)
        {
          v16 = [MEMORY[0x277CBEB38] dictionary];
          [v41 setObject:v16 forKey:v8];
        }

        v17 = [v41 objectForKey:v8];
        v18 = [v7 groupId];
        if (v18)
        {
          [v7 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v19 = ;

        v20 = [v17 objectForKey:v19];
        v21 = v20 == 0;

        if (v21)
        {
          v22 = [MEMORY[0x277CBEB18] array];
          [v17 setObject:v22 forKey:v19];
        }

        v23 = [v17 objectForKey:v19];
        [v23 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v4);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = v41;
  v25 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v25)
  {
    v37 = *v47;
    do
    {
      v38 = v25;
      for (j = 0; j != v38; ++j)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v39);
        }

        v27 = *(*(&v46 + 1) + 8 * j);
        v28 = [v39 objectForKey:v27];
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v30)
        {
          v31 = *v43;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v43 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [v29 objectForKey:*(*(&v42 + 1) + 8 * k)];
              v34 = [[UPResultIntermediateNode alloc] initWithLabel:v27 andLeafNodes:v33];
              [v24 addObject:v34];
            }

            v30 = [v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v30);
        }
      }

      v25 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v25);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)higherLevelEntityLabelFromParentLabel:(id)a3 childLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v7 appendString:v5];
  [v7 appendString:@"."];
  [v7 appendString:v6];

  return v7;
}

+ (id)stdU16ToNSString:(const void *)a3
{
  v3 = *(a3 + 1);
  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    a3 = *a3;
    v4 = v3;
  }

  return [MEMORY[0x277CCACA8] stringWithCharacters:a3 length:v4];
}

+ (basic_string<char16_t,)nSStringToU16String:(std::allocator<char16_t>> *__return_ptr)retstr
{
  v9 = v1;
  v3 = [v9 lengthOfBytesUsingEncoding:10];
  retstr->var0.var1.var0 = 0;
  retstr->var0.var1.var1 = 0;
  *(&retstr->var0.var1 + 2) = 0;
  std::basic_string<char16_t>::resize(retstr, v3, v4);
  if (*(&retstr->var0.var1 + 23) >= 0)
  {
    var0 = retstr;
  }

  else
  {
    var0 = retstr->var0.var1.var0;
  }

  [v9 getBytes:var0 maxLength:v3 usedLength:0 encoding:10 options:0 range:0 remainingRange:{v3, 0}];
  v6 = [v9 length];
  std::basic_string<char16_t>::resize(retstr, v6, v7);

  return result;
}

+ (_NSRange)rangeFromStart:(unint64_t)a3 end:(unint64_t)a4
{
  v5 = a4 - a3;
  result.length = v5;
  result.location = a3;
  return result;
}

+ (BOOL)checkFileExistence:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (([v6 fileExistsAtPath:{v11, v18}] & 1) == 0)
        {
          if (a4)
          {
            v22[0] = *MEMORY[0x277CCA450];
            v13 = [MEMORY[0x277CCA8D8] mainBundle];
            v14 = [v13 localizedStringForKey:@"Could not open file path" value:&stru_2835E9330 table:0];
            v22[1] = @"FilePath";
            v23[0] = v14;
            v23[1] = v11;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

            *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-3001 userInfo:v15];
          }

          v12 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

@end