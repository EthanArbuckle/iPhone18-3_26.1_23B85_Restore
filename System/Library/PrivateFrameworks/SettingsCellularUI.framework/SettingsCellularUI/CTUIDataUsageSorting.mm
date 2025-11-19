@interface CTUIDataUsageSorting
+ (id)userSelectedComparator;
@end

@implementation CTUIDataUsageSorting

uint64_t __46__CTUIDataUsageSorting_alphabeticalComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __39__CTUIDataUsageSorting_usageComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v5, "dataUsage")}];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v4, "dataUsage")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 name];
    v10 = [v5 name];
    v8 = [v9 localizedStandardCompare:v10];
  }

  return v8;
}

+ (id)userSelectedComparator
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CellularDataUsageAlphabeticalSortKey"];

  if (v3)
  {
    +[CTUIDataUsageSorting alphabeticalComparator];
  }

  else
  {
    +[CTUIDataUsageSorting usageComparator];
  }
  v4 = ;

  return v4;
}

@end