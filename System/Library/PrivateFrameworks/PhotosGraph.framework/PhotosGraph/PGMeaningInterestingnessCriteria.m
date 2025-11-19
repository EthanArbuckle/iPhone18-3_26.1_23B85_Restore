@interface PGMeaningInterestingnessCriteria
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningInterestingnessCriteria

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"mustBeInteresting"];

  [v5 setMustBeInteresting:{objc_msgSend(v6, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGMeaningInterestingnessCriteria *)self mustBeInteresting];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"mustBeInteresting: %@\n", v4];
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v5 = a3;
  if (-[PGMeaningInterestingnessCriteria mustBeInteresting](self, "mustBeInteresting") && ([v5 isInteresting] & 1) == 0)
  {
    v6 = [v5 isSmartInteresting];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end