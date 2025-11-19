@interface SWCSubstitutionVariableList
@end

@implementation SWCSubstitutionVariableList

void __68___SWCSubstitutionVariableList_cheapBuiltInSubstitutionVariableList__block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v2 = &off_279BBDCD0;
  v3 = 192;
  do
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v6 = v5;
    v7 = *v2;
    v8 = **v2;
    if (**v2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    [v5 appendBytes:*(v2 - 2) length:{*(v2 - 1), context}];
    [v6 appendBytes:"" length:1];
    if (v8)
    {
      [v6 appendBytes:v7 length:v2[1]];
      [v6 appendBytes:"" length:1];
    }

    [v6 appendBytes:"" length:1];
    v10 = [v6 length];
    v11 = malloc_type_malloc(v10 + 1, 0x100004011D3A922uLL);
    v12 = v11;
    if (v11)
    {
      *v11 = v9;
      memcpy(v11 + 1, [v6 bytes], v10);

      objc_autoreleasePoolPop(v4);
      [v1 appendBytes:v12 length:v10 + 1];
      free(v12);
    }

    else
    {

      objc_autoreleasePoolPop(v4);
    }

    v2 += 4;
    v3 -= 32;
  }

  while (v3);
  if (qword_280B217E8 != -1)
  {
    dispatch_once(&qword_280B217E8, &__block_literal_global_250);
  }

  [v1 appendBytes:&byte_280B217B9 length:SWCSubstitutionVariable::getSize(&byte_280B217B9)];
  Instance = class_createInstance(*(a1 + 32), [v1 length]);
  v14 = qword_280B217C0;
  qword_280B217C0 = Instance;

  memcpy((qword_280B217C0 + 8), [v1 bytes], objc_msgSend(v1, "length"));

  objc_autoreleasePoolPop(context);
}

void __72___SWCSubstitutionVariableList_expensiveBuiltInSubstitutionVariableList__block_invoke(uint64_t a1)
{
  v25 = a1;
  v39 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [MEMORY[0x277CBEAF8] ISOCountryCodes];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v4)
  {
    v5 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v7 uppercaseString];
        [v2 addObject:v8];

        v9 = [v7 lowercaseString];
        [v2 addObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v4);
  }

  v10 = [v2 array];
  [v1 setObject:v10 forKeyedSubscript:@"region"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [MEMORY[0x277CBEAF8] ISOLanguageCodes];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * j);
        v17 = [v16 uppercaseString];
        [v11 addObject:v17];

        v18 = [v16 lowercaseString];
        [v11 addObject:v18];
      }

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);
  }

  v19 = [v11 array];
  [v1 setObject:v19 forKeyedSubscript:@"lang"];

  objc_autoreleasePoolPop(context);
  v20 = *(v25 + 32);
  v35 = @"substitutionVariables";
  v36 = v1;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v22 = [v20 substitutionVariableListWithDictionary:v21];
  v23 = qword_280B217D0;
  qword_280B217D0 = v22;

  v24 = *MEMORY[0x277D85DE8];
}

void __71___SWCSubstitutionVariableList_substitutionVariableListWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  if (_NSIsNSString())
  {
    v56[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];

    v3 = v4;
  }

  if (_NSIsNSString() && _NSIsNSArray())
  {
    v28 = v3;
    v32 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([v3 containsObject:&stru_2877A4C50])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if ([v28 count])
    {
      v43 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      v6 = v28;
      v7 = [v6 countByEnumeratingWithState:&v40 objects:v54 count:16];
      v27 = v5 | 4;
      if (v7)
      {
        v8 = *v41;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v41 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v40 + 1) + 8 * i);
            if (!_NSIsNSString() || [v10 length] != 1 || objc_msgSend(v10, "characterAtIndex:", 0) > 0x7F)
            {
              v27 = v5;
              goto LABEL_22;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v40 objects:v54 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }

    else
    {
      v27 = v5;
    }

    SWCGetFastUTF8String<1024ul>(v52, a2, v55);
    if (v53 == 1)
    {
      [v32 appendBytes:v52[0] length:v52[1]];
      [v32 appendBytes:"" length:1];
    }

    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v28;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v52 count:16];
    if (v14)
    {
      v15 = *v37;
      v16 = v27 & 4;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          if (_NSIsNSString())
          {
            if ([v18 length])
            {
              SWCGetFastUTF8String<1024ul>(&v33, v18, v55);
              if (v35 == 1)
              {
                v20 = v33;
                v19 = v34;
                if (std::string_view::find[abi:nn200100](v33, v34) == -1)
                {
                  [v32 appendBytes:v20 length:v19];
                  if ((v27 & 4) == 0)
                  {
                    [v32 appendBytes:"" length:1];
                  }
                }

                else
                {
                  if (qword_280B217F8 != -1)
                  {
                    dispatch_once(&qword_280B217F8, &__block_literal_global_273);
                  }

                  v21 = qword_280B217F0;
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    v22 = SWCGetNSStringFromStringViewNoCopy(&v33);
                    *buf = 136446978;
                    v45 = &SWCSubstitutionVariable::Prefix;
                    v46 = 2112;
                    v47 = a2;
                    v48 = 2082;
                    v49 = &SWCSubstitutionVariable::Suffix;
                    v50 = 2112;
                    v51 = v22;
                    _os_log_impl(&dword_265F54000, v21, OS_LOG_TYPE_INFO, "Substitution variable %{public}s%@%{public}s referenced another substitution variable: %@. Ignoring.", buf, 0x2Au);
                  }
                }
              }
            }
          }

          ++v17;
        }

        while (v14 != v17);
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v52 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = v27 & 4;
    }

    if (v16)
    {
      [v32 appendBytes:"" length:1];
    }

    [v32 appendBytes:"" length:1];
    v23 = [v32 length];
    v11 = v23 + 1;
    v24 = malloc_type_malloc(v23 + 1, 0x100004011D3A922uLL);
    v12 = v24;
    if (v24)
    {
      *v24 = v27;
      v25 = v32;
      memcpy(v12 + 1, [v32 bytes], v23);
    }

    else
    {
      v11 = 0;
    }

    v3 = v28;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  objc_autoreleasePoolPop(context);

  if (v12)
  {
    [*(a1 + 32) appendBytes:v12 length:v11];
    free(v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

@end