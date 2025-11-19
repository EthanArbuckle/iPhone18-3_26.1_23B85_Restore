@interface PCPropagatedPositionPredictor
+ (void)predictPropagatedPosition:(id)a3 locations:(id *)a4 atTime:(double)a5;
@end

@implementation PCPropagatedPositionPredictor

+ (void)predictPropagatedPosition:(id)a3 locations:(id *)a4 atTime:(double)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a3;
  *a4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7 && [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 timeCFAbsolute];
    v10 = v9 - a5;

    if (v10 < 0.0)
    {
      v11 = _plc_log_get_normal_handle(PCLogCategoryPropagatedPositionPredictor);
      if (os_log_type_enabled(&v11->super.super, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [v7 objectAtIndexedSubscript:0];
        [v60 timeCFAbsolute];
        *buf = 136315650;
        v66 = "+[PCPropagatedPositionPredictor predictPropagatedPosition:locations:atTime:]";
        v67 = 2048;
        v68 = v61;
        v69 = 2048;
        v70 = a5;
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

      v14 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [v14 setProbability:0.01];

      v15 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [v15 setContextType:1];

      v16 = objc_alloc_init(PCPPredictedContextDateInterval);
      v17 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [v17 setDateInterval:v16];

      v18 = objc_alloc_init(PCPPredictedContextDate);
      v19 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v20 = [v19 dateInterval];
      [v20 setStartDate:v18];

      v21 = [v7 objectAtIndexedSubscript:0];
      [v21 timeCFAbsolute];
      v23 = v22;
      v24 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v25 = [v24 dateInterval];
      v26 = [v25 startDate];
      [v26 setDate:v23];

      v27 = v10 * 0.2;
      v28 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v29 = [v28 dateInterval];
      v30 = [v29 startDate];
      [v30 setConfidenceInterval:v10 * 0.2];

      v31 = objc_alloc_init(PCPPredictedContextDate);
      v32 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v33 = [v32 dateInterval];
      [v33 setEndDate:v31];

      v34 = [v7 objectAtIndexedSubscript:0];
      [v34 timeCFAbsolute];
      v36 = v35 + 30.0;
      v37 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v38 = [v37 dateInterval];
      v39 = [v38 endDate];
      [v39 setDate:v36];

      v40 = [(PCPPredictedContextLocation *)v11 predictedContext];
      v41 = [v40 dateInterval];
      v42 = [v41 endDate];
      [v42 setConfidenceInterval:v27];

      v43 = objc_alloc_init(PCPSource);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      [(PCPSource *)v43 setIdentifier:v45];

      v64 = v43;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      v47 = [v46 mutableCopy];
      v48 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [v48 setSources:v47];

      v49 = [v7 objectAtIndexedSubscript:0];
      v50 = [v49 location];
      v51 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
      [v51 setLocation:v50];

      v52 = [MEMORY[0x1E696AFB0] UUID];
      v53 = [PCAlgorithmsCommonUtils dataFromUUID:v52];
      v54 = [(PCPPredictedContextLocation *)v11 locationOfInterest];
      [v54 setLoiIdentifier:v53];

      v55 = objc_alloc_init(PCPPredictedContextSource);
      v56 = [v7 objectAtIndexedSubscript:0];
      [(PCPPredictedContextSource *)v55 setPropagatedLocation:v56];

      [(PCPSource *)v43 setPredictedContextSource:v55];
      v63 = v43;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      v58 = [v57 mutableCopy];
      v59 = [(PCPPredictedContextLocation *)v11 predictedContext];
      [v59 setSources:v58];

      [*a4 addObject:v11];
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

@end