void createPolicy(int a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBE2E8];
  if (a1)
  {
    v7 = MEMORY[0x277CBE170];
  }

  v8 = *v7;
  v9 = MEMORY[0x277CCA1A0];
  *a3 = v8;
  if (!a2)
  {
    v9 = MEMORY[0x277CCA1B8];
  }

  *a4 = *v9;
  v10 = objectanalyticsHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"LEGACY";
    if (a2)
    {
      v11 = @"DAEMON";
    }

    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2324AD000, v10, OS_LOG_TYPE_DEFAULT, "AnalyticsWorkspace is running in %@ MODE", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id objectanalyticsHandle()
{
  if (objectanalyticsHandle_analyticsHandlePred != -1)
  {
    objectanalyticsHandle_cold_1();
  }

  v1 = objectanalyticsHandle_analyticsHandle;

  return v1;
}

uint64_t __objectanalyticsHandle_block_invoke()
{
  objectanalyticsHandle_analyticsHandle = os_log_create("com.apple.symptomsframework", "objectanalytics");

  return MEMORY[0x2821F96F8]();
}

uint64_t assembleFullName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    if (![(__CFString *)v6 isAbsolutePath])
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = @"/var/wireless/Library/Databases/Symptoms";
  }

  if (!v5)
  {
    v5 = @"SymptomAnalytics";
  }

  v9 = [(__CFString *)v7 stringByAppendingPathComponent:v5];
  *a3 = [v9 stringByAppendingPathExtension:@"sqlite"];

  v8 = 1;
LABEL_8:

  return v8;
}

uint64_t isDBFileCorrupted(void *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 domain];
  v5 = *MEMORY[0x277CBE2C8];
  if ([v4 isEqualToString:*MEMORY[0x277CBE2C8]])
  {
    v6 = [v3 code] == 11 || objc_msgSend(v3, "code") == 26;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 intValue] == 11 || objc_msgSend(v8, "intValue") == 26;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 domain];
  if ([v10 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v11 = [v3 code] == 259;
  }

  else
  {
    v12 = [v3 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v11 = [v3 code] == 259;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v6 || v9 || v11)
  {
    v16 = objectanalyticsHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_2324AD000, v16, OS_LOG_TYPE_ERROR, "Confirming file corruption based on error: %@", &v19, 0xCu);
    }

    v15 = 1;
  }

  else
  {
    v13 = [v3 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (a2 <= 5)
      {
        v15 = isDBFileCorrupted(v14, (a2 + 1));
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

id countOfKeyDescriptor(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9C0];
  v4 = a2;
  v5 = [v3 expressionForKeyPath:a1];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v3 expressionForFunction:@"count:" arguments:v6];

  v8 = descriptorForExpression(300, v4, v7);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

AggregatePropertyDescriptor *descriptorForExpression(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AggregatePropertyDescriptor alloc] initWithName:v6 expression:v5 resultType:a1];

  return v7;
}

id countOfDistinctKeyDescriptor(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9C0];
  v4 = a2;
  v5 = [v3 expressionForKeyPath:a1];
  v13 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v7 = [v3 expressionForFunction:@"distinct:" arguments:v6];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = [v3 expressionForFunction:@"count:" arguments:v8];

  v10 = descriptorForExpression(300, v4, v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id functionOnKeyDescriptor(void *a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9C0];
  v6 = a3;
  v7 = a1;
  v8 = [v5 expressionForKeyPath:a2];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v5 expressionForFunction:v7 arguments:v9];

  v11 = descriptorForExpression(300, v6, v10);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id entityKeyPathForNameDescriptor(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCA9C0];
  v6 = a3;
  v7 = [v5 expressionForKeyPath:a1];
  v8 = descriptorForExpression(a2, v6, v7);

  return v8;
}

id entityConstValueForNameDescriptor(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCA9C0];
  v6 = a3;
  v7 = [v5 expressionForConstantValue:a1];
  v8 = descriptorForExpression(a2, v6, v7);

  return v8;
}

void sub_2324B5940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2324B6550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2383849E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}