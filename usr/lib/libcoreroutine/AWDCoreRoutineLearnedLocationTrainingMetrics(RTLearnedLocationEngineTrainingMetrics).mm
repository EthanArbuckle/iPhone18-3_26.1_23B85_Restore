@interface AWDCoreRoutineLearnedLocationTrainingMetrics(RTLearnedLocationEngineTrainingMetrics)
- (id)initWithLearnedLocationEngineMetrics:()RTLearnedLocationEngineTrainingMetrics;
@end

@implementation AWDCoreRoutineLearnedLocationTrainingMetrics(RTLearnedLocationEngineTrainingMetrics)

- (id)initWithLearnedLocationEngineMetrics:()RTLearnedLocationEngineTrainingMetrics
{
  v4 = MEMORY[0x277D81858];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v5 maxIntervalBetweenLocations];
  [v6 setMaxIntervalBetweenLocations:v7];
  [v5 intervalSinceLastAttempt];
  [v6 setIntervalSinceLastAttempt:v8];
  [v5 latency];
  [v6 setLatency:v9];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "locationsProcessed")}];
  [v6 setLocationsProcessed:{objc_msgSend(v10, "unsignedIntValue")}];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "placeCountDevice")}];
  [v6 setPlaceCountDevice:{objc_msgSend(v11, "unsignedIntValue")}];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "placeCountTotal")}];
  [v6 setPlaceCountTotal:{objc_msgSend(v12, "unsignedIntValue")}];

  awdPlaces = [v5 awdPlaces];
  [v6 setPlaces:awdPlaces];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "visitCountDevice")}];
  [v6 setVisitCountDevice:{objc_msgSend(v14, "unsignedIntValue")}];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "visitCountTotal")}];
  [v6 setVisitCountTotal:{objc_msgSend(v15, "unsignedIntValue")}];

  awdVisits = [v5 awdVisits];
  [v6 setVisits:awdVisits];

  trainedVisits = [v5 trainedVisits];
  [v6 setTrainedVisits:trainedVisits];

  return v6;
}

@end