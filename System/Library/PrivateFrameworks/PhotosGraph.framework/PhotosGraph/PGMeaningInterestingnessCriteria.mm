@interface PGMeaningInterestingnessCriteria
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningInterestingnessCriteria

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"mustBeInteresting"];

  [v5 setMustBeInteresting:{objc_msgSend(v6, "BOOLValue")}];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  mustBeInteresting = [(PGMeaningInterestingnessCriteria *)self mustBeInteresting];
  v4 = @"NO";
  if (mustBeInteresting)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"mustBeInteresting: %@\n", v4];
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  nodeCopy = node;
  if (-[PGMeaningInterestingnessCriteria mustBeInteresting](self, "mustBeInteresting") && ([nodeCopy isInteresting] & 1) == 0)
  {
    isSmartInteresting = [nodeCopy isSmartInteresting];
  }

  else
  {
    isSmartInteresting = 1;
  }

  return isSmartInteresting;
}

@end