@interface PCPropagatedPositionPredictor
+ (void)predictPropagatedPosition:(id)position locations:(id *)locations atTime:(double)time;
@end

@implementation PCPropagatedPositionPredictor

+ (void)predictPropagatedPosition:(id)position locations:(id *)locations atTime:(double)time
{
  v71 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (positionCopy && [positionCopy count])
  {
    v8 = [positionCopy objectAtIndexedSubscript:0];
    [v8 timeCFAbsolute];
    v10 = v9 - time;

    if (v10 < 0.0)
    {
      v11 = _plc_log_get_normal_handle(PCLogCategoryPropagatedPositionPredictor);
      if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [positionCopy objectAtIndexedSubscript:0];
        [v60 timeCFAbsolute];
        *buf = 136315650;
        v66 = "+[PCPropagatedPositionPredictor predictPropagatedPosition:locations:atTime:]";
        v67 = 2048;
        v68 = v61;
        v69 = 2048;
        timeCopy = time;
        _os_log_impl(&dword_1CEE74000, &v11->super.super, OS_LOG_TYPE_DEFAULT, "%s, Propagated position is in the past, prop, %lf, cur, %lf", buf, 0x20u);
      }
    }

    else
    {
      v11 = objc_alloc_init(PCPPredictedContextLocation);
      v12 = objc_alloc_init(PCPLocationOfInterest);
      [(PCPPredictedContextLocation *)v11 setLocationOfInterest:v12];

      v13 = objc_alloc_init(PCPPredictedContext);
      [(PCPPredictedContextLocation *)v11 setPredictedContext:v13];

      predictedContext = [(PCPPredictedContextLocation *)v11 predictedContext];
      [predictedContext setProbability:0.01];

      predictedContext2 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [predictedContext2 setContextType:1];

      v16 = objc_alloc_init(PCPPredictedContextDateInterval);
      predictedContext3 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [predictedContext3 setDateInterval:v16];

      v18 = objc_alloc_init(PCPPredictedContextDate);
      predictedContext4 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval = [predictedContext4 dateInterval];
      [dateInterval setStartDate:v18];

      v21 = [positionCopy objectAtIndexedSubscript:0];
      [v21 timeCFAbsolute];
      v23 = v22;
      predictedContext5 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval2 = [predictedContext5 dateInterval];
      startDate = [dateInterval2 startDate];
      [startDate setDate:v23];

      v27 = v10 * 0.2;
      predictedContext6 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval3 = [predictedContext6 dateInterval];
      startDate2 = [dateInterval3 startDate];
      [startDate2 setConfidenceInterval:v10 * 0.2];

      v31 = objc_alloc_init(PCPPredictedContextDate);
      predictedContext7 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval4 = [predictedContext7 dateInterval];
      [dateInterval4 setEndDate:v31];

      v34 = [positionCopy objectAtIndexedSubscript:0];
      [v34 timeCFAbsolute];
      v36 = v35 + 30.0;
      predictedContext8 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval5 = [predictedContext8 dateInterval];
      endDate = [dateInterval5 endDate];
      [endDate setDate:v36];

      predictedContext9 = [(PCPPredictedContextLocation *)v11 predictedContext];
      dateInterval6 = [predictedContext9 dateInterval];
      endDate2 = [dateInterval6 endDate];
      [endDate2 setConfidenceInterval:v27];

      v43 = objc_alloc_init(PCPSource);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      [(PCPSource *)v43 setIdentifier:v45];

      v64 = v43;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v47 = [v46 mutableCopy];
      predictedContext10 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [predictedContext10 setSources:v47];

      v49 = [positionCopy objectAtIndexedSubscript:0];
      location = [v49 location];
      locationOfInterest = [(PCPPredictedContextLocation *)v11 locationOfInterest];
      [locationOfInterest setLocation:location];

      uUID = [MEMORY[0x1E696AFB0] UUID];
      v53 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
      locationOfInterest2 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
      [locationOfInterest2 setLoiIdentifier:v53];

      v55 = objc_alloc_init(PCPPredictedContextSource);
      v56 = [positionCopy objectAtIndexedSubscript:0];
      [(PCPPredictedContextSource *)v55 setPropagatedLocation:v56];

      [(PCPSource *)v43 setPredictedContextSource:v55];
      v63 = v43;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      v58 = [v57 mutableCopy];
      predictedContext11 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [predictedContext11 setSources:v58];

      [*locations addObject:v11];
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

@end