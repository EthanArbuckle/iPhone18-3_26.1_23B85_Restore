@interface AWDCoreRoutineLearnedLocationTrainingMetrics(MetricManager)
- (BOOL)valid:()MetricManager;
- (char)_init;
- (id)description;
@end

@implementation AWDCoreRoutineLearnedLocationTrainingMetrics(MetricManager)

- (char)_init
{
  v10.receiver = a1;
  v10.super_class = &off_284628428;
  v1 = objc_msgSendSuper2(&v10, sel_init);
  v2 = v1;
  if (v1)
  {
    *&v1[*MEMORY[0x277D81AA8]] = -1;
    *&v1[*MEMORY[0x277D81AB0]] = -1;
    *&v1[*MEMORY[0x277D81AC0]] = -1;
    *&v1[*MEMORY[0x277D81AE0]] = -1;
    *&v1[*MEMORY[0x277D81AB8]] = -1;
    *&v1[*MEMORY[0x277D81AC8]] = -1;
    *&v1[*MEMORY[0x277D81AD0]] = -1;
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = *MEMORY[0x277D81AD8];
    v5 = *&v2[v4];
    *&v2[v4] = v3;

    *&v2[*MEMORY[0x277D81AF0]] = -1;
    *&v2[*MEMORY[0x277D81AF8]] = -1;
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *MEMORY[0x277D81B00];
    v8 = *&v2[v7];
    *&v2[v7] = v6;

    v2[*MEMORY[0x277D81AE8]] = 0;
  }

  return v2;
}

- (BOOL)valid:()MetricManager
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([a1 conformsToProtocol:&unk_284624910])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = @"Failed metric submission because the metric does not have an ID.";
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSStringFromProtocol(&unk_284624910);
    v4 = [v5 stringWithFormat:@"Failed metric submission because the metric does not conform to the %@ protocol.", v6];

    if (!a3)
    {
      goto LABEL_9;
    }
  }

  if (v4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v7 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v8];
  }

LABEL_9:

  return v4 == 0;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v15 = NSStringFromClass(v2);
  v3 = [a1 trainedVisits];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v14 = v4;
  v13 = [a1 latency];
  v12 = [a1 intervalSinceLastAttempt];
  v5 = [a1 locationsProcessed];
  v6 = [a1 maxIntervalBetweenLocations];
  v7 = [a1 visits];
  v8 = [v7 count];
  v9 = [a1 places];
  v10 = [v16 stringWithFormat:@"%@, trainedVisits, %@, latency, %llu, intervalSinceLastAttempt, %llu, locationsProcessed, %u, maxIntervalBetweenLocations, %llu, new visits, %lu, new places, %lu, visitCountDevice, %u, visitCountTotal, %u, placeCountDevice, %u, placeCountTotal, %u", v15, v14, v13, v12, v5, v6, v8, objc_msgSend(v9, "count"), objc_msgSend(a1, "visitCountDevice"), objc_msgSend(a1, "visitCountTotal"), objc_msgSend(a1, "placeCountDevice"), objc_msgSend(a1, "placeCountTotal")];

  return v10;
}

@end