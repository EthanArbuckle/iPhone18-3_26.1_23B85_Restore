@interface PGMoodSourceMemory
- (BOOL)_shouldProcessSource;
- (double)weight;
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
@end

@implementation PGMoodSourceMemory

- (BOOL)_shouldProcessSource
{
  enrichedMemory = [(PGMoodSource *)self enrichedMemory];
  memoryCategory = [enrichedMemory memoryCategory];

  if (memoryCategory)
  {
    return 1;
  }

  assetCollection = [(PGMoodSource *)self assetCollection];
  if ([assetCollection assetCollectionType] == 4)
  {
    v5 = 1;
  }

  else
  {
    options = [(PGMoodSource *)self options];
    v5 = [options memoryCategory] != 0;
  }

  return v5;
}

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(PGMoodSourceMemory *)self _shouldProcessSource])
  {
    enrichedMemory = [(PGMoodSource *)self enrichedMemory];

    if (enrichedMemory)
    {
      v5 = &unk_284485A78;
    }

    else
    {
      assetCollection = [(PGMoodSource *)self assetCollection];
      assetCollectionType = [assetCollection assetCollectionType];

      if (assetCollectionType == 4)
      {
        assetCollection2 = [(PGMoodSource *)self assetCollection];
        category = [assetCollection2 category];
        subcategory = [assetCollection2 subcategory];
      }

      else
      {
        options = [(PGMoodSource *)self options];
        category = [options memoryCategory];

        assetCollection2 = [(PGMoodSource *)self options];
        subcategory = [assetCollection2 memorySubcategory];
      }

      v14 = subcategory;

      v5 = &unk_284485A90;
      if (category != 212 && category != 215)
      {
        v15 = [MEMORY[0x277CD98D8] stringForCategory:category];
        capitalizedString = [v15 capitalizedString];
        v17 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v18 = [MEMORY[0x277CD98D8] stringForSubcategory:v14];
        capitalizedString2 = [v18 capitalizedString];
        v20 = [capitalizedString2 stringByReplacingOccurrencesOfString:@" " withString:&stru_2843F5C58];

        v21 = [v17 containsString:@"Holiday"];
        if (category != 218 && (v21 & 1) != 0 || ([v20 containsString:@"Holiday"] & 1) != 0)
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
  _shouldProcessSource = [(PGMoodSourceMemory *)self _shouldProcessSource];
  result = 0.0;
  if (_shouldProcessSource)
  {
    return 1.0;
  }

  return result;
}

@end