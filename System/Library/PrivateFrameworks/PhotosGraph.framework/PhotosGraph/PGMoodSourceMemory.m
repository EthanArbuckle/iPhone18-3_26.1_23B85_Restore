@interface PGMoodSourceMemory
- (BOOL)_shouldProcessSource;
- (double)weight;
- (id)_plistMoodIdentifiersWithGraph:(id)a3;
@end

@implementation PGMoodSourceMemory

- (BOOL)_shouldProcessSource
{
  v3 = [(PGMoodSource *)self enrichedMemory];
  v4 = [v3 memoryCategory];

  if (v4)
  {
    return 1;
  }

  v6 = [(PGMoodSource *)self assetCollection];
  if ([v6 assetCollectionType] == 4)
  {
    v5 = 1;
  }

  else
  {
    v7 = [(PGMoodSource *)self options];
    v5 = [v7 memoryCategory] != 0;
  }

  return v5;
}

- (id)_plistMoodIdentifiersWithGraph:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(PGMoodSourceMemory *)self _shouldProcessSource])
  {
    v4 = [(PGMoodSource *)self enrichedMemory];

    if (v4)
    {
      v5 = &unk_284485A78;
    }

    else
    {
      v8 = [(PGMoodSource *)self assetCollection];
      v9 = [v8 assetCollectionType];

      if (v9 == 4)
      {
        v10 = [(PGMoodSource *)self assetCollection];
        v11 = [v10 category];
        v12 = [v10 subcategory];
      }

      else
      {
        v13 = [(PGMoodSource *)self options];
        v11 = [v13 memoryCategory];

        v10 = [(PGMoodSource *)self options];
        v12 = [v10 memorySubcategory];
      }

      v14 = v12;

      v5 = &unk_284485A90;
      if (v11 != 212 && v11 != 215)
      {
        v15 = [MEMORY[0x277CD98D8] stringForCategory:v11];
        v16 = [v15 capitalizedString];
        v17 = [v16 stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v18 = [MEMORY[0x277CD98D8] stringForSubcategory:v14];
        v19 = [v18 capitalizedString];
        v20 = [v19 stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v21 = [v17 containsString:@"Holiday"];
        if (v11 != 218 && (v21 & 1) != 0 || ([v20 containsString:@"Holiday"] & 1) != 0)
        {
          v5 = &unk_284485AA8;
        }

        else
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v17, v20];
          v23[0] = v22;
          v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        }
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (double)weight
{
  v2 = [(PGMoodSourceMemory *)self _shouldProcessSource];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

@end