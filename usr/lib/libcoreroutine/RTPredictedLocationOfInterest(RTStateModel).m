@interface RTPredictedLocationOfInterest(RTStateModel)
- (uint64_t)initWithLocationOfInterest:()RTStateModel confidence:nextEntryTime:motionActivityType:;
@end

@implementation RTPredictedLocationOfInterest(RTStateModel)

- (uint64_t)initWithLocationOfInterest:()RTStateModel confidence:nextEntryTime:motionActivityType:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D01180];
  v11 = a5;
  v12 = a4;
  v13 = [v10 modeOfTransportationFromMotionActivityType:a6];
  v14 = objc_alloc(MEMORY[0x277D01270]);
  v15 = objc_alloc(MEMORY[0x277D012A8]);
  v16 = [v12 identifier];
  v17 = [v15 initWithIdentifier:v16];
  v21[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19 = [v14 initWithLocationOfInterest:v12 confidence:v11 nextEntryTime:v13 modeOfTransportation:v18 sources:a2];

  return v19;
}

@end