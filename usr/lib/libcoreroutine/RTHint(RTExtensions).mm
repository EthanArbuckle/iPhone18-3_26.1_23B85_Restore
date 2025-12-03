@interface RTHint(RTExtensions)
+ (uint64_t)convertHintSource:()RTExtensions;
- (uint64_t)initWithRTPHint:()RTExtensions;
@end

@implementation RTHint(RTExtensions)

+ (uint64_t)convertHintSource:()RTExtensions
{
  if ((a3 - 1) >= 7)
  {
    return -1;
  }

  else
  {
    return (a3 - 1);
  }
}

- (uint64_t)initWithRTPHint:()RTExtensions
{
  v4 = MEMORY[0x277D01160];
  v5 = a3;
  v6 = [v4 alloc];
  location = [v5 location];
  v8 = [v6 initWithRTPLocation:location];
  v9 = [MEMORY[0x277D01120] convertHintSource:{objc_msgSend(v5, "hintSource")}];
  v10 = MEMORY[0x277CBEAA8];
  [v5 timestamp];
  v12 = v11;

  v13 = [v10 dateWithTimeIntervalSinceReferenceDate:v12];
  v14 = [self initWithLocation:v8 source:v9 date:v13];

  return v14;
}

@end