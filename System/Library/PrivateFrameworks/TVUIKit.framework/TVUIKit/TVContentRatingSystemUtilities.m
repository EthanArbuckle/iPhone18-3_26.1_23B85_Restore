@interface TVContentRatingSystemUtilities
@end

@implementation TVContentRatingSystemUtilities

void __64___TVContentRatingSystemUtilities__ratingSystemLookUpDictionary__block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v0 = 155;
  v1 = &qword_279D91068;
  do
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:*v1];
    [v5 setObject:v2 forKey:*(v1 - 1)];

    v1 += 2;
    --v0;
  }

  while (v0);
  v3 = [v5 copy];
  v4 = _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary;
  _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary = v3;
}

void __70___TVContentRatingSystemUtilities__ratingSystemStringLookUpDictionary__block_invoke()
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v0 = 155;
  v1 = &qword_279D91068;
  do
  {
    v2 = *(v1 - 1);
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*v1];
    [v6 setObject:v2 forKey:v3];

    v1 += 2;
    --v0;
  }

  while (v0);
  v4 = [v6 copy];
  v5 = _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary;
  _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary = v4;
}

@end