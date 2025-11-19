@interface RTLocationOfInterest
@end

@implementation RTLocationOfInterest

void __55__RTLocationOfInterest_RTStateModel__initWithOneState___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01188];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [v4 EntryExit_s];
  [v8 entry_s];
  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [v4 EntryExit_s];

  [v11 exit_s];
  v12 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:*(a1 + 40) horizontalUncertainty:*(a1 + 48) date:*(a1 + 56)];
  v14 = [v5 initWithIdentifier:v6 entry:v9 exit:v12 location:v13 locationOfInterestConfidence:0 locationOfInterestSource:0.0];

  [*(a1 + 32) addObject:v14];
}

@end