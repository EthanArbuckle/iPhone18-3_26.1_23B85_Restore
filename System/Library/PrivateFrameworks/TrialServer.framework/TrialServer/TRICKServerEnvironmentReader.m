@interface TRICKServerEnvironmentReader
+ (int)currentPopulation;
+ (int)validatedPopulationFromNumber:(int64_t)a3;
+ (int64_t)currentEnvironment;
+ (int64_t)validatedEnvironmentFromNumber:(id)a3;
@end

@implementation TRICKServerEnvironmentReader

+ (int64_t)validatedEnvironmentFromNumber:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 unsignedIntValue];
  v5 = TRILogCategory_ClientFramework();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (v6)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Reading currentEnvironment from NSUserDefaults: UAT", &v13, 2u);
        }

        v7 = 3;
        break;
      case 4:
        if (v6)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Reading currentEnvironment from NSUserDefaults: InternalTesting", &v13, 2u);
        }

        v7 = 4;
        break;
      case 5:
        if (v6)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Reading currentEnvironment from NSUserDefaults: SQLiteMock", &v13, 2u);
        }

        v7 = 5;
        break;
      default:
        goto LABEL_18;
    }
  }

  else
  {
    if (!v4)
    {
      if (v6)
      {
        LOWORD(v13) = 0;
        v8 = "Reading currentEnvironment from NSUserDefaults: Unknown";
        v9 = v5;
        v10 = 2;
LABEL_20:
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }

LABEL_21:
      v7 = 0;
      goto LABEL_29;
    }

    if (v4 != 1)
    {
      if (v4 == 2)
      {
        if (v6)
        {
          LOWORD(v13) = 0;
          v7 = 2;
          _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Reading currentEnvironment from NSUserDefaults: Development", &v13, 2u);
        }

        else
        {
          v7 = 2;
        }

        goto LABEL_29;
      }

LABEL_18:
      if (v6)
      {
        v13 = 138412290;
        v14 = v3;
        v8 = "Reading currentEnvironment from NSUserDefaults: other (%@), using Unknown";
        v9 = v5;
        v10 = 12;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (v6)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Reading currentEnvironment from NSUserDefaults: Production", &v13, 2u);
    }

    v7 = 1;
  }

LABEL_29:

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (int64_t)currentEnvironment
{
  if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  }

  v4 = v3;
  v5 = [v3 valueForKey:*MEMORY[0x277D739E8]];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [a1 validatedEnvironmentFromNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)validatedPopulationFromNumber:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_ClientFramework();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        if (v5)
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: INTERNAL", &v10, 2u);
        }

        v6 = 3;
        break;
      case 4:
        if (v5)
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: BETA_PROGRAM", &v10, 2u);
        }

        v6 = 4;
        break;
      case 5:
        if (v5)
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: GENERAL_PUBLIC", &v10, 2u);
        }

        v6 = 5;
        break;
      default:
LABEL_18:
        if (v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
          v10 = 138412290;
          v11 = v7;
          _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: other (%@), using POPULATION_UNKNOWN", &v10, 0xCu);
        }

LABEL_20:
        v6 = 0;
        break;
    }
  }

  else
  {
    if (!a3)
    {
      if (v5)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: POPULATION_UNKNOWN", &v10, 2u);
      }

      goto LABEL_20;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (v5)
        {
          LOWORD(v10) = 0;
          v6 = 2;
          _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: ORGANIZATION", &v10, 2u);
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v5)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Reading currentPopulation from NSUserDefaults: LIMITED_CARRY", &v10, 2u);
    }

    v6 = 1;
  }

LABEL_28:

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (int)currentPopulation
{
  if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  }

  v4 = v3;
  v5 = [a1 validatedPopulationFromNumber:{objc_msgSend(v3, "integerForKey:", @"com.apple.triald.population.override"}];

  return v5;
}

@end