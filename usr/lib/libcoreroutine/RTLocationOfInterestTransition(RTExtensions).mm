@interface RTLocationOfInterestTransition(RTExtensions)
+ (id)locationOfInterestTransitionsFromLearnedTransitions:()RTExtensions;
+ (uint64_t)modeOfTransportationFromMotionActivityType:()RTExtensions;
+ (uint64_t)motionActivityTypeFromModeOfTransportation:()RTExtensions;
- (uint64_t)initWithLearnedTransition:()RTExtensions;
@end

@implementation RTLocationOfInterestTransition(RTExtensions)

- (uint64_t)initWithLearnedTransition:()RTExtensions
{
  if (a3)
  {
    v4 = MEMORY[0x277D01180];
    v5 = a3;
    v6 = [v4 modeOfTransportationFromMotionActivityType:{objc_msgSend(v5, "predominantMotionActivityType")}];
    v7 = objc_alloc(MEMORY[0x277D01180]);
    identifier = [v5 identifier];
    startDate = [v5 startDate];
    stopDate = [v5 stopDate];
    visitIdentifierOrigin = [v5 visitIdentifierOrigin];
    visitIdentifierDestination = [v5 visitIdentifierDestination];

    v13 = [v7 initWithIdentifier:identifier startDate:startDate stopDate:stopDate visitIdentifierOrigin:visitIdentifierOrigin visitIdentifierDestination:visitIdentifierDestination modeOfTransportation:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)locationOfInterestTransitionsFromLearnedTransitions:()RTExtensions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277D01180]);
          v13 = [v12 initWithLearnedTransition:{v11, v15}];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (uint64_t)modeOfTransportationFromMotionActivityType:()RTExtensions
{
  if ((a3 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_230AFDC78[a3 - 2];
  }
}

+ (uint64_t)motionActivityTypeFromModeOfTransportation:()RTExtensions
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_230AFDC98[a3 - 1];
  }
}

@end