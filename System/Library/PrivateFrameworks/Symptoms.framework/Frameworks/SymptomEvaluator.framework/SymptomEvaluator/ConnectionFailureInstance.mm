@interface ConnectionFailureInstance
- (id)description;
@end

@implementation ConnectionFailureInstance

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(ConnectionFailureInstance *)self flowStart];
  v5 = timeStringMillisecondsFromReferenceInterval(v4);
  [(ConnectionFailureInstance *)self flowDuration];
  v7 = [v3 stringWithFormat:@"TConnectionFailureInstance: Flow started %@ duration %.3f", v5, v6];

  return v7;
}

@end