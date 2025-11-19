@interface PCVisitHistoryPredictor
- (PCVisitHistoryPredictor)init;
- (PCVisitHistoryPredictor)initWithCoder:(id)a3;
- (PCVisitHistoryPredictor)initWithConfig:(id)a3;
- (void)computeWithHistory:(id)a3 transitions:(id)a4 locationsOfInterest:(id)a5 homekitHomes:(id)a6 atTime:(double)a7 inTimeZone:(id)a8 withError:(id *)a9;
- (void)encodeWithCoder:(id)a3;
- (void)findMismatchedTrainedLois:(id *)a3 visitHistory:(id)a4;
- (void)interruptTraining;
- (void)predictWithHistory:(id)a3 transitionHistory:(id)a4 locationHistory:(id)a5 homekitHomes:(id)a6 atTime:(double)a7 locations:(id *)a8 transitions:(id *)a9 containsHomeKitPredictions:(id *)a10 missingLoiResults:(id *)a11;
- (void)storeHomeLoisTo:(id)a3 workLoisTo:(id)a4 from:(id)a5 withVisitIndices:(id)a6;
@end

@implementation PCVisitHistoryPredictor

- (PCVisitHistoryPredictor)initWithConfig:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PCVisitHistoryPredictor;
  v5 = [(PCVisitHistoryPredictor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(PCVisitHistoryPredictor *)v5 setConfig:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    visitIndicies = v6->_visitIndicies;
    v6->_visitIndicies = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    loiToLocationMap = v6->_loiToLocationMap;
    v6->_loiToLocationMap = v9;
  }

  return v6;
}

- (PCVisitHistoryPredictor)init
{
  v3 = objc_alloc_init(PCVisitHistoryPredictorConfig);
  v4 = [(PCVisitHistoryPredictor *)self initWithConfig:v3];

  return v4;
}

- (PCVisitHistoryPredictor)initWithCoder:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 containsValueForKey:@"config"] & 1) == 0)
  {
    v33 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_DEFAULT, "coder doesn't contain visit history config key - initializing with default config instead", &v41, 2u);
    }

    v6 = objc_alloc_init(PCVisitHistoryPredictorConfig);
    v34 = [(PCVisitHistoryPredictor *)self initWithConfig:v6];
    goto LABEL_39;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
  if (!v5)
  {
    v35 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_1CEE74000, v35, OS_LOG_TYPE_DEFAULT, "decoding visit history config failed", &v41, 2u);
    }

    v6 = 0;
    goto LABEL_34;
  }

  v6 = v5;
  self = [(PCVisitHistoryPredictor *)self initWithConfig:v5];
  if (!self)
  {
LABEL_38:
    v34 = self;
LABEL_39:
    self = v34;
    v38 = v34;
    goto LABEL_40;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nnmodelv5"];
  if (!v7)
  {
    v36 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    LOWORD(v41) = 0;
    v37 = "decoding nnmodel failed";
LABEL_32:
    _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEFAULT, v37, &v41, 2u);
    goto LABEL_33;
  }

  v8 = [[_TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel alloc] initFrom:v7];
  model = self->_model;
  self->_model = v8;

  if (!self->_model)
  {
    v10 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_1CEE74000, v10, OS_LOG_TYPE_DEFAULT, "decoding NeuralNetModel from NSData failed", &v41, 2u);
    }
  }

  v11 = objc_opt_class();
  v12 = [v4 decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"visitCounts"];
  v13 = [v12 mutableCopy];
  visitIndicies = self->_visitIndicies;
  self->_visitIndicies = v13;

  if (!self->_visitIndicies)
  {
    v36 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    LOWORD(v41) = 0;
    v37 = "decoding visit inidices encoder failed";
    goto LABEL_32;
  }

  v15 = objc_opt_class();
  v16 = [v4 decodeDictionaryWithKeysOfClass:v15 objectsOfClass:objc_opt_class() forKey:@"loiToLocation"];
  v17 = [v16 mutableCopy];
  loiToLocationMap = self->_loiToLocationMap;
  self->_loiToLocationMap = v17;

  if (!self->_loiToLocationMap)
  {
    v36 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    LOWORD(v41) = 0;
    v37 = "decoding loi to location map failed";
    goto LABEL_32;
  }

  v19 = objc_opt_class();
  v20 = [v4 decodeDictionaryWithKeysOfClass:v19 objectsOfClass:objc_opt_class() forKey:@"loiToIsHome"];
  v21 = [v20 mutableCopy];
  loiToHomeMap = self->_loiToHomeMap;
  self->_loiToHomeMap = v21;

  if (self->_loiToHomeMap)
  {
    v23 = objc_opt_class();
    v24 = [v4 decodeDictionaryWithKeysOfClass:v23 objectsOfClass:objc_opt_class() forKey:@"loiToIsWork"];
    v25 = [v24 mutableCopy];
    loiToWorkMap = self->_loiToWorkMap;
    self->_loiToWorkMap = v25;

    if (self->_loiToWorkMap)
    {
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
      timeZone = self->_timeZone;
      self->_timeZone = v27;

      v29 = self->_timeZone;
      v30 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v32 = [(NSTimeZone *)self->_timeZone abbreviation];
          v41 = 138412290;
          v42 = v32;
          _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEFAULT, "timeZone decoded as %@", &v41, 0xCu);
        }
      }

      else if (v31)
      {
        LOWORD(v41) = 0;
        _os_log_impl(&dword_1CEE74000, v30, OS_LOG_TYPE_DEFAULT, "timeZone decoded as empty", &v41, 2u);
      }

      goto LABEL_38;
    }

    v36 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    LOWORD(v41) = 0;
    v37 = "decoding loi to work map failed";
    goto LABEL_32;
  }

  v36 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v41) = 0;
    v37 = "decoding loi to home map failed";
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  v38 = 0;
LABEL_40:

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PCNeuralNetModel *)self->_model getEncodedModel];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"nnmodelv5"];
    [v4 encodeObject:self->_visitIndicies forKey:@"visitCounts"];
    [v4 encodeObject:self->_loiToLocationMap forKey:@"loiToLocation"];
    [v4 encodeObject:self->_loiToWorkMap forKey:@"loiToIsWork"];
    [v4 encodeObject:self->_loiToHomeMap forKey:@"loiToIsHome"];
    [v4 encodeObject:self->_config forKey:@"config"];
    [v4 encodeObject:self->_timeZone forKey:@"timeZone"];
  }

  else
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "encoding NeuralNetModel failed", v7, 2u);
    }
  }
}

- (void)storeHomeLoisTo:(id)a3 workLoisTo:(id)a4 from:(id)a5 withVisitIndices:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v41 = a4;
  v37 = a5;
  v9 = a6;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    v13 = 0x1E83B7000uLL;
    v35 = *v48;
    v36 = v9;
    do
    {
      v14 = 0;
      v38 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        v16 = [v9 objectForKeyedSubscript:{v15, v35, v36}];
        v17 = [*(v13 + 2216) kTravelingString];
        v40 = v16;
        if (([v16 isEqualToString:v17] & 1) == 0)
        {
          v39 = v14;
          v18 = [*(v13 + 2216) kInfrequentString];
          if ([v16 isEqualToString:v18])
          {
          }

          else
          {
            v19 = [*(v13 + 2216) kNilString];
            v20 = [v16 isEqualToString:v19];

            v11 = v38;
            if (v20)
            {
              goto LABEL_29;
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v17 = v37;
            v21 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v44;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v44 != v23)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v25 = *(*(&v43 + 1) + 8 * i);
                  v26 = [v25 loiIdentifier];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = [v25 loiIdentifier];
                    v29 = [v15 isEqualToData:v28];

                    if (v29)
                    {
                      if ([v25 placeType])
                      {
                        v30 = [v25 placeType] == 1;
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v31 = [MEMORY[0x1E696AD98] numberWithBool:v30];
                      [v42 setObject:v31 forKeyedSubscript:v15];

                      if ([v25 placeType])
                      {
                        v32 = [v25 placeType] == 2;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
                      [v41 setObject:v33 forKeyedSubscript:v15];
                    }
                  }
                }

                v22 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v22);
              v12 = v35;
              v9 = v36;
              v13 = 0x1E83B7000;
              v11 = v38;
            }
          }

          v14 = v39;
        }

LABEL_29:
        ++v14;
      }

      while (v14 != v11);
      v11 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v11);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)computeWithHistory:(id)a3 transitions:(id)a4 locationsOfInterest:(id)a5 homekitHomes:(id)a6 atTime:(double)a7 inTimeZone:(id)a8 withError:(id *)a9
{
  v203 = *MEMORY[0x1E69E9840];
  v171 = a3;
  v170 = a4;
  v168 = a5;
  v166 = a6;
  v14 = a8;
  v172 = [MEMORY[0x1E695E000] standardUserDefaults];
  v15 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v172 volatileDomainNames];
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "defaults: %@", buf, 0xCu);
  }

  v17 = [v172 integerForKey:@"visitHistoryTrainingEpochsOverride"];
  if (v17)
  {
    v18 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEFAULT, "Overriding training epochs with %d from defaults write", buf, 8u);
    }

    [(PCVisitHistoryPredictorConfig *)self->_config setEpochs:v17];
  }

  v19 = [v172 integerForKey:@"visitHistoryTrainingBatchSizeOverride"];
  if (v19)
  {
    v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "Overriding training batch size with %d from defaults write", buf, 8u);
    }

    [(PCVisitHistoryPredictorConfig *)self->_config setBatchSize:v19];
  }

  if ([v172 BOOLForKey:@"visitHistoryTrainOnGpu"])
  {
    v21 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_DEFAULT, "Overriding training on GPU with %d from defaults write", buf, 8u);
    }

    [(PCVisitHistoryPredictorConfig *)self->_config setTrainOnGpu:1];
  }

  v22 = [PCNeuralNetworkUtilities sortVisitHistory:v171];
  v23 = [PCNeuralNetworkUtilities sortTransitionHistory:v170];
  v173 = [v23 mutableCopy];

  v24 = [v173 count];
  if (v24 >= 1)
  {
    v25 = (v24 & 0x7FFFFFFF) + 1;
    do
    {
      v26 = [v173 objectAtIndexedSubscript:v25 - 2];
      if ([v26 hasStartTimeCFAbsolute])
      {
        if ([v26 hasStopTimeCFAbsolute])
        {
          [v26 stopTimeCFAbsolute];
          v28 = v27;
          [v26 startTimeCFAbsolute];
          v30 = v28 - v29;
          if (v30 > 14400.0)
          {
            [v173 removeObjectAtIndex:v25 - 2];
            v31 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v30;
              *&buf[12] = 2048;
              *&buf[14] = 0x4010000000000000;
              _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "transition with length %f exceeded %f hour threshold and was removed from transition history", buf, 0x16u);
            }
          }
        }
      }

      --v25;
    }

    while (v25 > 1);
  }

  v167 = v14;
  v32 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v167)
  {
    if (v33)
    {
      v34 = [v167 abbreviation];
      *buf = 138412290;
      *&buf[4] = v34;
      _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "Training time zone: %@", buf, 0xCu);
    }

    v169 = v167;
  }

  else
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "No input time zone - defaulting to PST for training", buf, 2u);
    }

    v169 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"PST"];
  }

  [(PCVisitHistoryPredictor *)self setCandidateModel:0];
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PCVisitHistoryPredictor *)self setCandidateVisitIndicies:v35];

  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PCVisitHistoryPredictor *)self setCandidateLoiToLocationMap:v36];

  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PCVisitHistoryPredictor *)self setCandidateLoiToHomeMap:v37];

  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PCVisitHistoryPredictor *)self setCandidateLoiToWorkMap:v38];

  [(PCVisitHistoryPredictor *)self setCandidateTimeZone:v169];
  v39 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v22 count];
    *buf = 134217984;
    *&buf[4] = v40;
    _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEFAULT, "visit history counts: %lu", buf, 0xCu);
  }

  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v42 = v22;
  v43 = [v42 countByEnumeratingWithState:&v191 objects:v202 count:16];
  if (v43)
  {
    v44 = *v192;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v192 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = [*(*(&v191 + 1) + 8 * i) loiIdentifier];
        if (!v46)
        {
          v47 = +[PCNeuralNetworkUtilities kNilString];
          v46 = [v47 dataUsingEncoding:4];
        }

        v48 = [v41 objectForKeyedSubscript:v46];
        v49 = v48 == 0;

        if (v49)
        {
          [v41 setObject:&unk_1F4BDE0C8 forKeyedSubscript:v46];
        }

        else
        {
          v50 = objc_alloc(MEMORY[0x1E696AD98]);
          v51 = [v41 objectForKeyedSubscript:v46];
          v52 = [v50 initWithInt:{objc_msgSend(v51, "intValue") + 1}];
          [v41 setObject:v52 forKeyedSubscript:v46];
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v191 objects:v202 count:16];
    }

    while (v43);
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v53 = v42;
  v54 = [v53 countByEnumeratingWithState:&v187 objects:v201 count:16];
  if (v54)
  {
    v55 = *v188;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v188 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v187 + 1) + 8 * j);
        v58 = [v57 loiIdentifier];
        if (v58)
        {
          v59 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
          v60 = [v59 objectForKeyedSubscript:v58];
          v61 = v60 == 0;

          if (v61)
          {
            if ([v57 hasLocation])
            {
              v62 = [LoiLocation alloc];
              v63 = [v57 location];
              v64 = [(LoiLocation *)v62 initWithLocation:v63];
              v65 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
              [v65 setObject:v64 forKeyedSubscript:v58];
            }

            else
            {
              v66 = objc_alloc_init(LoiLocation);
              v67 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
              [v67 setObject:v66 forKeyedSubscript:v58];

              v63 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138739971;
                *&buf[4] = v57;
                _os_log_impl(&dword_1CEE74000, v63, OS_LOG_TYPE_DEFAULT, "loi has no location: %{sensitive}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v54 = [v53 countByEnumeratingWithState:&v187 objects:v201 count:16];
    }

    while (v54);
  }

  if ([v41 count] < 0x65)
  {
    v76 = v41;
  }

  else
  {
    v68 = [PCNeuralNetworkUtilities sortDictionaryByValues:v41];
    v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v68 subarrayWithRange:{objc_msgSend(v68, "count") - 100, 100}];
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v70 = v184 = 0u;
    v71 = [v70 countByEnumeratingWithState:&v183 objects:v200 count:16];
    if (v71)
    {
      v72 = *v184;
      do
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v184 != v72)
          {
            objc_enumerationMutation(v70);
          }

          v74 = *(*(&v183 + 1) + 8 * k);
          v75 = [v41 objectForKeyedSubscript:v74];
          [v69 setObject:v75 forKeyedSubscript:v74];
        }

        v71 = [v70 countByEnumeratingWithState:&v183 objects:v200 count:16];
      }

      while (v71);
    }

    v76 = v69;
  }

  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v77 = v53;
  v78 = [v77 countByEnumeratingWithState:&v179 objects:v199 count:16];
  if (v78)
  {
    v79 = *v180;
    do
    {
      for (m = 0; m != v78; ++m)
      {
        if (*v180 != v79)
        {
          objc_enumerationMutation(v77);
        }

        v81 = [*(*(&v179 + 1) + 8 * m) loiIdentifier];
        if (v81)
        {
          v82 = [v76 objectForKey:v81];
          v83 = v82 == 0;

          if (!v83)
          {
            v84 = [v76 objectForKeyedSubscript:v81];
            v85 = [v84 intValue];
            if (v85 > [(PCVisitHistoryPredictorConfig *)self->_config numVisitsThreshold])
            {
              v86 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              v87 = [v86 objectForKeyedSubscript:v81];
              v88 = v87 == 0;

              if (!v88)
              {
                goto LABEL_80;
              }

              v89 = MEMORY[0x1E696AEC0];
              v84 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              v90 = [v89 stringWithFormat:@"%lu", objc_msgSend(v84, "count")];
              v91 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              [v91 setObject:v90 forKeyedSubscript:v81];
            }
          }
        }

LABEL_80:
      }

      v78 = [v77 countByEnumeratingWithState:&v179 objects:v199 count:16];
    }

    while (v78);
  }

  v92 = +[PCNeuralNetworkUtilities kTravelingString];
  v93 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v94 = +[PCNeuralNetworkUtilities kTravelingString];
  v95 = [v94 dataUsingEncoding:4];
  [v93 setObject:v92 forKeyedSubscript:v95];

  v96 = +[PCNeuralNetworkUtilities kInfrequentString];
  v97 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v98 = +[PCNeuralNetworkUtilities kInfrequentString];
  v99 = [v98 dataUsingEncoding:4];
  [v97 setObject:v96 forKeyedSubscript:v99];

  v100 = +[PCNeuralNetworkUtilities kNilString];
  v101 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v102 = +[PCNeuralNetworkUtilities kNilString];
  v103 = [v102 dataUsingEncoding:4];
  [v101 setObject:v100 forKeyedSubscript:v103];

  v104 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v105 = [v76 count];
    *buf = 134217984;
    *&buf[4] = v105;
    _os_log_impl(&dword_1CEE74000, v104, OS_LOG_TYPE_DEFAULT, "n unique lois: %lu", buf, 0xCu);
  }

  v106 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v76;
    _os_log_impl(&dword_1CEE74000, v106, OS_LOG_TYPE_DEFAULT, "n unique lois: %@", buf, 0xCu);
  }

  v107 = [(PCVisitHistoryPredictor *)self candidateLoiToHomeMap];
  v108 = [(PCVisitHistoryPredictor *)self candidateLoiToWorkMap];
  v109 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  [(PCVisitHistoryPredictor *)self storeHomeLoisTo:v107 workLoisTo:v108 from:v168 withVisitIndices:v109];

  v110 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v110, OS_LOG_TYPE_DEFAULT, "converting to timestep array...", buf, 2u);
  }

  v111 = a7 + -4838400.0;
  if ([v77 count])
  {
    v112 = [v77 objectAtIndexedSubscript:0];
    [v112 entryTimeCFAbsolute];
    v114 = v113 > v111;

    if (v114)
    {
      v115 = [v77 objectAtIndexedSubscript:0];
      [v115 entryTimeCFAbsolute];
      v111 = v116;
    }
  }

  v117 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v111;
    _os_log_impl(&dword_1CEE74000, v117, OS_LOG_TYPE_DEFAULT, "visit history start time: %f", buf, 0xCu);
  }

  if (v111 <= a7)
  {
    [(PCVisitHistoryPredictorConfig *)self->_config timestepSizeMinutes];
    v120 = v119;
    v121 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
    v118 = [PCNeuralNetworkUtilities convertToTimestepDataset:v77 currentTime:v173 visitHistory:v121 transitionHistory:v120 startTime:a7 visitIndicies:v111];

    v122 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = [v118 loiAtTimestepArray];
      v124 = [v123 count];
      *buf = 134217984;
      *&buf[4] = v124;
      _os_log_impl(&dword_1CEE74000, v122, OS_LOG_TYPE_DEFAULT, "Timestep array size: %lu", buf, 0xCu);
    }

    v125 = [v118 loiAtTimestepArray];
    v126 = [v125 count];
    v127 = [(PCVisitHistoryPredictorConfig *)self->_config inputSequenceLength];
    v128 = v126 < [(PCVisitHistoryPredictorConfig *)self->_config outSteps]+ v127;

    v129 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    v130 = os_log_type_enabled(&v129->super, OS_LOG_TYPE_DEFAULT);
    if (v128)
    {
      if (v130)
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, &v129->super, OS_LOG_TYPE_DEFAULT, "dataset too small to train with current input and output step parameters", buf, 2u);
      }

      goto LABEL_119;
    }

    if (v130)
    {
      v131 = [(PCVisitHistoryPredictorConfig *)self->_config hiddenLayers];
      v132 = [(PCVisitHistoryPredictorConfig *)self->_config outSteps];
      v133 = [(PCVisitHistoryPredictorConfig *)self->_config epochs];
      *buf = 67109632;
      *&buf[4] = v131;
      *&buf[8] = 1024;
      *&buf[10] = v132;
      *&buf[14] = 1024;
      *&buf[16] = v133;
      _os_log_impl(&dword_1CEE74000, &v129->super, OS_LOG_TYPE_DEFAULT, "params: %d, %d, %d", buf, 0x14u);
    }

    v129 = [[_TtC28PCNeuralNetworkSupportBridge15NeuralNetConfig alloc] initWithHiddenLayers:[(PCVisitHistoryPredictorConfig *)self->_config hiddenLayers] outSteps:[(PCVisitHistoryPredictorConfig *)self->_config outSteps] epochs:[(PCVisitHistoryPredictorConfig *)self->_config epochs] batchSize:[(PCVisitHistoryPredictorConfig *)self->_config batchSize] trainOnGpu:[(PCVisitHistoryPredictorConfig *)self->_config trainOnGpu]];
    v134 = [[_TtC28PCNeuralNetworkSupportBridge16PCNeuralNetModel alloc] initWithConfig:v129];
    [(PCVisitHistoryPredictor *)self setCandidateModel:v134];

    v135 = dispatch_semaphore_create(0);
    [(PCVisitHistoryPredictorConfig *)self->_config loiEncodingTimeoutSeconds];
    v137 = dispatch_time(0, (v136 * 1000000000.0));
    v138 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v138, OS_LOG_TYPE_DEFAULT, "fitting label encoder...", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v196 = __Block_byref_object_copy__0;
    v197 = __Block_byref_object_dispose__0;
    v198 = 0;
    v139 = [(PCVisitHistoryPredictor *)self candidateModel];
    v140 = [v118 loiAtTimestepArray];
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 3221225472;
    v176[2] = __119__PCVisitHistoryPredictor_computeWithHistory_transitions_locationsOfInterest_homekitHomes_atTime_inTimeZone_withError___block_invoke;
    v176[3] = &unk_1E83B8650;
    v178 = buf;
    v141 = v135;
    v177 = v141;
    [v139 fitLabelEncoderWithArray:v140 completionHandler:v176];

    if (dispatch_semaphore_wait(v141, v137))
    {
      v142 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        *v175 = 0;
        _os_log_impl(&dword_1CEE74000, v142, OS_LOG_TYPE_DEFAULT, "Error: timed out while fitting ordinal label encoder on lois", v175, 2u);
      }

      goto LABEL_118;
    }

    v143 = [*(*&buf[8] + 40) mutableCopy];
    [v118 setOrdinalLoiLabels:v143];

    v144 = [(PCVisitHistoryPredictor *)self candidateTimeZone];
    [PCNeuralNetworkUtilities applySinCosTransform:v118 timeZone:v144];

    v145 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      *v175 = 0;
      _os_log_impl(&dword_1CEE74000, v145, OS_LOG_TYPE_DEFAULT, "sequencing data matrix...", v175, 2u);
    }

    v146 = [MEMORY[0x1E696AD98] numberWithLong:{-[NeuralNetConfig getUnknownLoiIdLabel](v129, "getUnknownLoiIdLabel")}];
    v142 = [v118 getFeatureMatrixWithUnknownLoiLabel:v146];

    v147 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      *v175 = 0;
      _os_log_impl(&dword_1CEE74000, v147, OS_LOG_TYPE_DEFAULT, "training...", v175, 2u);
    }

    v148 = [(PCVisitHistoryPredictor *)self candidateModel];
    v149 = [v118 ordinalLoiLabels];
    v150 = [v148 trainFromTensorsWithDatasetX:v142 datasetY:v149 timesteps:{-[PCVisitHistoryPredictorConfig inputSequenceLength](self->_config, "inputSequenceLength")}];

    if (v150 == 1)
    {
      v151 = self;
      if (!a9)
      {
LABEL_117:
        [(PCVisitHistoryPredictor *)v151 setCandidateModel:0];
        [(PCVisitHistoryPredictor *)v151 setCandidateVisitIndicies:0];
        [(PCVisitHistoryPredictor *)v151 setCandidateLoiToLocationMap:0];
        [(PCVisitHistoryPredictor *)v151 setCandidateLoiToHomeMap:0];
        [(PCVisitHistoryPredictor *)v151 setCandidateLoiToWorkMap:0];
        [(PCVisitHistoryPredictor *)v151 setCandidateTimeZone:0];
LABEL_118:

        _Block_object_dispose(buf, 8);
LABEL_119:

        goto LABEL_120;
      }

      *a9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PCErrorDomain" code:5 userInfo:0];
    }

    else
    {
      v152 = [(PCVisitHistoryPredictor *)self candidateModel];
      model = self->_model;
      self->_model = v152;

      v154 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
      visitIndicies = self->_visitIndicies;
      self->_visitIndicies = v154;

      v156 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
      loiToLocationMap = self->_loiToLocationMap;
      self->_loiToLocationMap = v156;

      v158 = [(PCVisitHistoryPredictor *)self candidateLoiToHomeMap];
      loiToHomeMap = self->_loiToHomeMap;
      self->_loiToHomeMap = v158;

      v160 = [(PCVisitHistoryPredictor *)self candidateLoiToWorkMap];
      loiToWorkMap = self->_loiToWorkMap;
      self->_loiToWorkMap = v160;

      v162 = [(PCVisitHistoryPredictor *)self candidateTimeZone];
      timeZone = self->_timeZone;
      self->_timeZone = v162;
    }

    v151 = self;
    goto LABEL_117;
  }

  v118 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v118, OS_LOG_TYPE_DEFAULT, "Error: current time is before the first visit's entry time", buf, 2u);
  }

LABEL_120:

  v164 = *MEMORY[0x1E69E9840];
}

void __119__PCVisitHistoryPredictor_computeWithHistory_transitions_locationsOfInterest_homekitHomes_atTime_inTimeZone_withError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)findMismatchedTrainedLois:(id *)a3 visitHistory:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v11 loiIdentifier];

        if (v12)
        {
          v13 = [v11 loiIdentifier];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v8);
  }

  v39 = v6;

  v40 = v5;
  v41 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v14 = self;
  *a3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_visitIndicies;
  v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v15)
  {
    v16 = v15;
    v45 = *v47;
    v17 = 0x1E83B7000uLL;
    do
    {
      v18 = 0;
      do
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v46 + 1) + 8 * v18);
        v20 = [(NSMutableDictionary *)v14->_visitIndicies objectForKeyedSubscript:v19, v39];
        v21 = [*(v17 + 2216) kTravelingString];
        if ([v20 isEqualToString:v21])
        {
          goto LABEL_18;
        }

        v22 = [*(v17 + 2216) kInfrequentString];
        if ([v20 isEqualToString:v22])
        {
          goto LABEL_17;
        }

        [*(v17 + 2216) kNilString];
        v24 = v23 = v17;
        v25 = [v20 isEqualToString:v24];

        v17 = v23;
        if ((v25 & 1) == 0)
        {
          v26 = [v41 containsObject:v19];
          v27 = [(NSMutableDictionary *)v14->_loiToHomeMap objectForKeyedSubscript:v19];
          if (v27)
          {
            v28 = [(NSMutableDictionary *)v14->_loiToHomeMap objectForKeyedSubscript:v19];
            v29 = [v28 BOOLValue];
          }

          else
          {
            v29 = 0;
          }

          v30 = [(NSMutableDictionary *)v14->_loiToWorkMap objectForKeyedSubscript:v19];
          if (v30)
          {
            v31 = [(NSMutableDictionary *)v14->_loiToWorkMap objectForKeyedSubscript:v19];
            v32 = [v31 BOOLValue];
          }

          else
          {
            v32 = 0;
          }

          v21 = objc_alloc_init(PCPRolledLoiKeyValuePair);
          [(PCPRolledLoiKeyValuePair *)v21 setIdentifier:v19];
          v33 = objc_alloc_init(PCPRolledLoiAnalytics);
          [(PCPRolledLoiKeyValuePair *)v21 setAnalytics:v33];

          v34 = [(PCPRolledLoiKeyValuePair *)v21 analytics];
          [v34 setLoiIsMissingFromCurrentVisitHistory:v26 ^ 1u];

          v35 = [(PCPRolledLoiKeyValuePair *)v21 analytics];
          [v35 setIsHome:v29];

          v36 = [(PCPRolledLoiKeyValuePair *)v21 analytics];
          [v36 setIsWork:v32];

          [*a3 setObject:v21 forKeyedSubscript:v19];
          if (v26)
          {
            v14 = self;
            v17 = v23;
          }

          else
          {
            v22 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            v14 = self;
            v17 = v23;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              v55 = v19;
              _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_ERROR, "Trained LOI UUID %{sensitive}@ is missing from current visit history", buf, 0xCu);
            }

LABEL_17:
          }

LABEL_18:
        }

        ++v18;
      }

      while (v16 != v18);
      v37 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      v16 = v37;
    }

    while (v37);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)predictWithHistory:(id)a3 transitionHistory:(id)a4 locationHistory:(id)a5 homekitHomes:(id)a6 atTime:(double)a7 locations:(id *)a8 transitions:(id *)a9 containsHomeKitPredictions:(id *)a10 missingLoiResults:(id *)a11
{
  v244 = *MEMORY[0x1E69E9840];
  v179 = a3;
  v178 = a4;
  v176 = a5;
  v177 = a6;
  *a8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *a9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *a10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v179;
  if (![v179 count])
  {
    v25 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_148;
    }

    *buf = 0;
    v26 = "Error: not enough visits in history";
LABEL_18:
    _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    goto LABEL_148;
  }

  if ([v179 count] >= 2)
  {
    v16 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v179 objectAtIndexedSubscript:{objc_msgSend(v179, "count") - 2}];
      v18 = [v179 objectAtIndexedSubscript:{objc_msgSend(v179, "count") - 1}];
      *buf = 138740227;
      *&buf[4] = v17;
      *&buf[12] = 2117;
      *&buf[14] = v18;
      _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_DEFAULT, "last 2 visits:, %{sensitive}@, %{sensitive}@", buf, 0x16u);
    }

    v15 = v179;
  }

  if (!self->_model)
  {
    v25 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_148;
    }

    *buf = 0;
    v26 = "Error: model has not been trained";
    goto LABEL_18;
  }

  [(PCVisitHistoryPredictor *)self findMismatchedTrainedLois:a11 visitHistory:v15];
  v175 = [PCNeuralNetworkUtilities sortVisitHistory:v179];
  v174 = [PCNeuralNetworkUtilities sortTransitionHistory:v178];
  v19 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEFAULT, "converting to timestep array...", buf, 2u);
  }

  v20 = [v175 objectAtIndexedSubscript:0];
  [v20 entryTimeCFAbsolute];
  v22 = v21;

  v23 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEFAULT, "visit history start time: %f", buf, 0xCu);
  }

  if (v22 <= a7)
  {
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    obj = v177;
    v195 = [obj countByEnumeratingWithState:&v226 objects:v243 count:16];
    if (v195)
    {
      v192 = *v227;
      do
      {
        for (i = 0; i != v195; ++i)
        {
          if (*v227 != v192)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v226 + 1) + 8 * i);
          if ([v28 hasLocation])
          {
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v29 = self->_visitIndicies;
            v30 = [(NSMutableDictionary *)v29 countByEnumeratingWithState:&v222 objects:v242 count:16];
            if (v30)
            {
              v31 = *v223;
              while (2)
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v223 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = [(NSMutableDictionary *)self->_loiToLocationMap objectForKeyedSubscript:*(*(&v222 + 1) + 8 * j)];
                  v34 = [v33 toLocation];
                  v35 = [v28 location];
                  [PCLocationUtils distanceInMetersBetweenLocation:v34 andLocation:v35];
                  v37 = v36;

                  if (v37 <= 200.0)
                  {
                    v38 = objc_alloc_init(PCPHomeKitHome);
                    [v28 copyTo:v38];
                    [*a10 addObject:v38];

                    goto LABEL_37;
                  }
                }

                v30 = [(NSMutableDictionary *)v29 countByEnumeratingWithState:&v222 objects:v242 count:16];
                if (v30)
                {
                  continue;
                }

                break;
              }
            }
          }

          else
          {
            v29 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(&v29->super.super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              *&buf[4] = v28;
              _os_log_impl(&dword_1CEE74000, &v29->super.super, OS_LOG_TYPE_DEFAULT, "Ignoring homekit home with no location: %{sensitive}@", buf, 0xCu);
            }
          }

LABEL_37:
        }

        v195 = [obj countByEnumeratingWithState:&v226 objects:v243 count:16];
      }

      while (v195);
    }

    [(PCVisitHistoryPredictorConfig *)self->_config timestepSizeMinutes];
    v183 = [PCNeuralNetworkUtilities convertToTimestepDataset:"convertToTimestepDataset:currentTime:visitHistory:transitionHistory:startTime:visitIndicies:" currentTime:v175 visitHistory:v174 transitionHistory:self->_visitIndicies startTime:? visitIndicies:?];
    v39 = [v183 loiAtTimestepArray];
    v40 = [v39 count] == 0;

    if (!v40)
    {
      v41 = 0;
      do
      {
        v42 = [v183 loiAtTimestepArray];
        v43 = [v42 objectAtIndexedSubscript:v41];
        v44 = +[PCNeuralNetworkUtilities kUnknownString];
        v45 = [v43 isEqualToString:v44];

        if (v45)
        {
          v46 = +[PCNeuralNetworkUtilities kTravelingString];
          v47 = [v183 loiAtTimestepArray];
          [v47 setObject:v46 atIndexedSubscript:v41];
        }

        v48 = [v183 loiAtTimestepArray];
        v49 = [v48 count];

        ++v41;
      }

      while (v49 > v41);
    }

    v50 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v183 loiAtTimestepArray];
      v52 = [v51 count];
      *buf = 134217984;
      *&buf[4] = v52;
      _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_DEFAULT, "Timestep array size: %lu", buf, 0xCu);
    }

    v53 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_DEFAULT, "using one hot encoder...", buf, 2u);
    }

    v54 = [v183 loiAtTimestepArray];
    v55 = [v54 count] > 3;

    if (v55)
    {
      v56 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [v183 loiAtTimestepArray];
        v196 = [v183 loiAtTimestepArray];
        objb = [v57 objectAtIndexedSubscript:{objc_msgSend(v196, "count") - 4}];
        v193 = [v183 loiAtTimestepArray];
        v58 = [v183 loiAtTimestepArray];
        v59 = [v193 objectAtIndexedSubscript:{objc_msgSend(v58, "count") - 3}];
        v60 = [v183 loiAtTimestepArray];
        v61 = [v183 loiAtTimestepArray];
        v62 = [v60 objectAtIndexedSubscript:{objc_msgSend(v61, "count") - 2}];
        v63 = [v183 loiAtTimestepArray];
        v64 = [v183 loiAtTimestepArray];
        v65 = [v63 objectAtIndexedSubscript:{objc_msgSend(v64, "count") - 1}];
        *buf = 138413058;
        *&buf[4] = objb;
        *&buf[12] = 2112;
        *&buf[14] = v59;
        *&buf[22] = 2112;
        v240 = v62;
        LOWORD(v241) = 2112;
        *(&v241 + 2) = v65;
        _os_log_impl(&dword_1CEE74000, v56, OS_LOG_TYPE_DEFAULT, "last four timesteps: %@, %@, %@, %@", buf, 0x2Au);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v240 = __Block_byref_object_copy__0;
    *&v241 = __Block_byref_object_dispose__0;
    *(&v241 + 1) = 0;
    v66 = dispatch_semaphore_create(0);
    model = self->_model;
    v68 = [v183 loiAtTimestepArray];
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __167__PCVisitHistoryPredictor_predictWithHistory_transitionHistory_locationHistory_homekitHomes_atTime_locations_transitions_containsHomeKitPredictions_missingLoiResults___block_invoke;
    v219[3] = &unk_1E83B8650;
    v221 = buf;
    dsema = v66;
    v220 = dsema;
    [(PCNeuralNetModel *)model encodeWithLabelEncoderWithArray:v68 completionHandler:v219];

    [(PCVisitHistoryPredictorConfig *)self->_config loiEncodingTimeoutSeconds];
    v70 = dispatch_time(0, (v69 * 1000000000.0));
    if (dispatch_semaphore_wait(dsema, v70))
    {
      v71 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      v170 = v71;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *v237 = 0;
        _os_log_impl(&dword_1CEE74000, v71, OS_LOG_TYPE_DEFAULT, "Error: timed out while encoding prediction lois with one hot encoder", v237, 2u);
      }
    }

    else
    {
      v72 = [*(*&buf[8] + 40) mutableCopy];
      [v183 setOrdinalLoiLabels:v72];

      v170 = self->_timeZone;
      if (v170)
      {
        v73 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = [(NSTimeZone *)self->_timeZone abbreviation];
          *v237 = 138412290;
          v238 = v74;
          _os_log_impl(&dword_1CEE74000, v73, OS_LOG_TYPE_DEFAULT, "Prediction time zone: %@", v237, 0xCu);
        }

        v75 = v183;
        v76 = self;
      }

      else
      {
        v77 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *v237 = 0;
          _os_log_impl(&dword_1CEE74000, v77, OS_LOG_TYPE_DEFAULT, "No trained time zone - defaulting to PST for prediction", v237, 2u);
        }

        v170 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"PST"];
        v76 = self;
        v75 = v183;
      }

      [PCNeuralNetworkUtilities applySinCosTransform:v75 timeZone:v170];
      v78 = MEMORY[0x1E696AD98];
      v79 = [(PCNeuralNetModel *)v76->_model getConfig];
      v168 = [v78 numberWithLong:{objc_msgSend(v79, "getUnknownLoiIdLabel")}];

      v169 = [v183 getFeatureMatrixWithUnknownLoiLabel:v168];
      v80 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [v169 count];
        *v237 = 134217984;
        v238 = v81;
        _os_log_impl(&dword_1CEE74000, v80, OS_LOG_TYPE_DEFAULT, "matrix length count: %lu", v237, 0xCu);
      }

      v82 = [v169 count];
      if (v82 >= [(PCVisitHistoryPredictorConfig *)self->_config inputSequenceLength])
      {
        v166 = [v169 subarrayWithRange:{objc_msgSend(v169, "count") - -[PCVisitHistoryPredictorConfig inputSequenceLength](self->_config, "inputSequenceLength"), -[PCVisitHistoryPredictorConfig inputSequenceLength](self->_config, "inputSequenceLength")}];
        v236 = v166;
        v167 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v236 count:1];
        v84 = [(PCNeuralNetModel *)self->_model predictFromTensorWithXPredict:v167 xPredictMatrix:v166 timesteps:[(PCVisitHistoryPredictorConfig *)self->_config inputSequenceLength]];
        if ([v84 count])
        {
          v165 = v84;
          v85 = [v84 objectAtIndexedSubscript:0];
          v173 = [v85 mutableCopy];

          v86 = [v169 objectAtIndexedSubscript:{objc_msgSend(v169, "count") - 1}];
          v87 = [v86 objectAtIndexedSubscript:0];
          v88 = [v87 intValue];

          v89 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *v237 = 67109120;
            LODWORD(v238) = v88;
            _os_log_impl(&dword_1CEE74000, v89, OS_LOG_TYPE_DEFAULT, "current location index: %d", v237, 8u);
          }

          v90 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v91 = [v169 objectAtIndexedSubscript:{objc_msgSend(v169, "count") - 1}];
            *v237 = 138412290;
            v238 = v91;
            _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_DEFAULT, "current state vector: %@", v237, 0xCu);
          }

          v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v92 = 0;
          v93 = v88;
          while (1)
          {
            v94 = [v173 objectAtIndexedSubscript:0];
            v95 = [v94 count] > v92;

            if (!v95)
            {
              break;
            }

            if (v93 == v92)
            {
              [MEMORY[0x1E696AD98] numberWithInt:1];
            }

            else
            {
              [MEMORY[0x1E696AD98] numberWithInt:0];
            }
            v96 = ;
            [v172 addObject:v96];

            ++v92;
          }

          [v173 insertObject:v172 atIndex:0];
          v97 = self;
          [(PCVisitHistoryPredictorConfig *)self->_config visitProbabilityThreshold];
          v99 = v98;
          [(PCVisitHistoryPredictorConfig *)self->_config timestepSizeMinutes];
          v101 = v100;
          *&v100 = v99;
          LODWORD(v102) = 1.0;
          [PCNeuralNetworkUtilities createPredictedContextFromPredSequence:v173 timestepSize:1 currentTime:v100 preds:v101 probabilityCalculationMode:a7 probabilityPercentile:v102];
          v217 = 0u;
          v218 = 0u;
          v215 = 0u;
          v103 = v216 = 0u;
          v104 = [v103 countByEnumeratingWithState:&v215 objects:v235 count:16];
          if (v104)
          {
            v105 = *v216;
            do
            {
              for (k = 0; k != v104; ++k)
              {
                if (*v216 != v105)
                {
                  objc_enumerationMutation(v103);
                }

                v107 = *(*(&v215 + 1) + 8 * k);
                v108 = -[PCNeuralNetModel decodeLabelWithIndex:](v97->_model, "decodeLabelWithIndex:", [v107 visitLoiIdx]);
                [v107 setVisitLoiString:v108];

                v97 = self;
              }

              v104 = [v103 countByEnumeratingWithState:&v215 objects:v235 count:16];
            }

            while (v104);
          }

          v213 = 0u;
          v214 = 0u;
          v211 = 0u;
          v212 = 0u;
          v182 = v103;
          v185 = [v182 countByEnumeratingWithState:&v211 objects:v234 count:16];
          if (v185)
          {
            v184 = *v212;
            do
            {
              for (m = 0; m != v185; ++m)
              {
                if (*v212 != v184)
                {
                  objc_enumerationMutation(v182);
                }

                v109 = *(*(&v211 + 1) + 8 * m);
                v110 = [v109 visitLoiString];
                v111 = +[PCNeuralNetworkUtilities kInfrequentString];
                v112 = [v110 isEqualToString:v111];

                if ((v112 & 1) == 0)
                {
                  v194 = objc_alloc_init(PCPPredictedContext);
                  [v109 visitProbability];
                  [(PCPPredictedContext *)v194 setProbability:?];
                  v188 = objc_alloc_init(PCPPredictedContextDateInterval);
                  obja = objc_alloc_init(PCPPredictedContextDate);
                  [v109 visitEntryTime];
                  [(PCPPredictedContextDate *)obja setDate:?];
                  [v109 visitEntryUnc];
                  [(PCPPredictedContextDate *)obja setConfidenceInterval:?];
                  [(PCPPredictedContextDateInterval *)v188 setStartDate:obja];
                  v187 = objc_alloc_init(PCPPredictedContextDate);
                  [v109 visitExitTime];
                  [(PCPPredictedContextDate *)v187 setDate:?];
                  [v109 visitExitUnc];
                  [(PCPPredictedContextDate *)v187 setConfidenceInterval:?];
                  [(PCPPredictedContextDateInterval *)v188 setEndDate:v187];
                  [(PCPPredictedContext *)v194 setDateInterval:v188];
                  v186 = objc_alloc_init(PCPSource);
                  v113 = objc_opt_class();
                  v114 = NSStringFromClass(v113);
                  [(PCPSource *)v186 setIdentifier:v114];

                  v233 = v186;
                  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v233 count:1];
                  v116 = [v115 mutableCopy];
                  [(PCPPredictedContext *)v194 setSources:v116];

                  v117 = [v109 visitLoiString];
                  v118 = +[PCNeuralNetworkUtilities kTravelingString];
                  v119 = [v117 isEqualToString:v118];

                  if (v119)
                  {
                    v120 = objc_alloc_init(PCPPredictedContextTransition);
                    [(PCPPredictedContextTransition *)v120 setPredictedContext:v194];
                    v121 = [(PCPPredictedContextTransition *)v120 predictedContext];
                    [v121 setContextType:2];

                    v122 = objc_alloc_init(PCPPredictedContextTransport);
                    [(PCPPredictedContextTransport *)v122 setProbability:1.0];
                    [(PCPPredictedContextTransport *)v122 setTransportMode:0];
                    v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [(PCPPredictedContextTransition *)v120 setPredictedContextTransports:v123];

                    v124 = [(PCPPredictedContextTransition *)v120 predictedContextTransports];
                    [v124 addObject:v122];

                    [*a9 addObject:v120];
                  }

                  else
                  {
                    v120 = objc_alloc_init(PCPPredictedContextLocation);
                    [(PCPPredictedContextTransition *)v120 setPredictedContext:v194];
                    v125 = [(PCPPredictedContextTransition *)v120 predictedContext];
                    [v125 setContextType:1];

                    v126 = objc_alloc_init(PCPLocationOfInterest);
                    [(PCPPredictedContextTransition *)v120 setLocationOfInterest:v126];

                    v209 = 0u;
                    v210 = 0u;
                    v207 = 0u;
                    v208 = 0u;
                    v127 = self->_visitIndicies;
                    v128 = [(NSMutableDictionary *)v127 countByEnumeratingWithState:&v207 objects:v232 count:16];
                    if (v128)
                    {
                      v129 = *v208;
LABEL_95:
                      v130 = 0;
                      while (1)
                      {
                        if (*v208 != v129)
                        {
                          objc_enumerationMutation(v127);
                        }

                        v131 = *(*(&v207 + 1) + 8 * v130);
                        v132 = [(NSMutableDictionary *)self->_visitIndicies objectForKeyedSubscript:v131];
                        v133 = [v109 visitLoiString];
                        v134 = [v132 isEqual:v133];

                        if (v134)
                        {
                          break;
                        }

                        if (v128 == ++v130)
                        {
                          v128 = [(NSMutableDictionary *)v127 countByEnumeratingWithState:&v207 objects:v232 count:16];
                          if (v128)
                          {
                            goto LABEL_95;
                          }

                          goto LABEL_101;
                        }
                      }

                      v122 = [v131 mutableCopy];

                      if (!v122)
                      {
                        goto LABEL_104;
                      }

                      v135 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [v135 setLoiIdentifier:v122];

                      v136 = [(NSMutableDictionary *)self->_loiToLocationMap objectForKeyedSubscript:v122];
                      v137 = [v136 toLocation];
                      v138 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [v138 setLocation:v137];
                    }

                    else
                    {
LABEL_101:

LABEL_104:
                      v139 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                      {
                        v140 = [v109 visitLoiString];
                        *v237 = 138412290;
                        v238 = v140;
                        _os_log_impl(&dword_1CEE74000, v139, OS_LOG_TYPE_DEFAULT, "Unable to match prediction %@ with loiIdentifier", v237, 0xCu);
                      }

                      v141 = [MEMORY[0x1E696AFB0] UUID];
                      v142 = [PCAlgorithmsCommonUtils dataFromUUID:v141];
                      v143 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [v143 setLoiIdentifier:v142];

                      v144 = objc_alloc_init(PCPLocation);
                      v145 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [v145 setLocation:v144];

                      v146 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      v147 = [v146 location];
                      [v147 setLocationLatitudeDeg:0.0];

                      v136 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      v137 = [v136 location];
                      [v137 setHasLocationLongitudeDeg:0];
                      v122 = 0;
                    }

                    [*a8 addObject:v120];
                  }
                }
              }

              v185 = [v182 countByEnumeratingWithState:&v211 objects:v234 count:16];
            }

            while (v185);
          }

          if (*a8 && [*a8 count])
          {
            v148 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
            {
              v149 = [*a8 count];
              *v237 = 134217984;
              v238 = v149;
              _os_log_impl(&dword_1CEE74000, v148, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", v237, 0xCu);
            }

            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v150 = *a8;
            v151 = [v150 countByEnumeratingWithState:&v203 objects:v231 count:16];
            if (v151)
            {
              v152 = *v204;
              do
              {
                for (n = 0; n != v151; ++n)
                {
                  if (*v204 != v152)
                  {
                    objc_enumerationMutation(v150);
                  }

                  v154 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v203 + 1) + 8 * n)];
                  v155 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
                  if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                  {
                    *v237 = 138739971;
                    v238 = v154;
                    _os_log_impl(&dword_1CEE74000, v155, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", v237, 0xCu);
                  }
                }

                v151 = [v150 countByEnumeratingWithState:&v203 objects:v231 count:16];
              }

              while (v151);
            }
          }

          else
          {
            v150 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
            {
              *v237 = 0;
              _os_log_impl(&dword_1CEE74000, v150, OS_LOG_TYPE_INFO, "No Location Predictions to log", v237, 2u);
            }
          }

          if (*a9 && [*a9 count])
          {
            v156 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
            {
              v157 = [*a9 count];
              *v237 = 134217984;
              v238 = v157;
              _os_log_impl(&dword_1CEE74000, v156, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", v237, 0xCu);
            }

            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v158 = *a9;
            v159 = [v158 countByEnumeratingWithState:&v199 objects:v230 count:16];
            if (v159)
            {
              v160 = *v200;
              do
              {
                for (ii = 0; ii != v159; ++ii)
                {
                  if (*v200 != v160)
                  {
                    objc_enumerationMutation(v158);
                  }

                  v162 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v199 + 1) + 8 * ii)];
                  v163 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
                  if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
                  {
                    *v237 = 138739971;
                    v238 = v162;
                    _os_log_impl(&dword_1CEE74000, v163, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", v237, 0xCu);
                  }
                }

                v159 = [v158 countByEnumeratingWithState:&v199 objects:v230 count:16];
              }

              while (v159);
            }
          }

          else
          {
            v158 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
            if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
            {
              *v237 = 0;
              _os_log_impl(&dword_1CEE74000, v158, OS_LOG_TYPE_INFO, "No Transition Predictions to log", v237, 2u);
            }
          }

          v84 = v165;
        }

        v83 = v166;
      }

      else
      {
        v83 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *v237 = 0;
          _os_log_impl(&dword_1CEE74000, v83, OS_LOG_TYPE_DEFAULT, "prediction data matrix is too small for number of input timesteps required", v237, 2u);
        }
      }
    }

    _Block_object_dispose(buf, 8);
    v24 = v183;
  }

  else
  {
    v24 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v24, OS_LOG_TYPE_DEFAULT, "Error: current time is before the first visit's entry time", buf, 2u);
    }
  }

  v25 = v175;
LABEL_148:

  v164 = *MEMORY[0x1E69E9840];
}

void __167__PCVisitHistoryPredictor_predictWithHistory_transitionHistory_locationHistory_homekitHomes_atTime_locations_transitions_containsHomeKitPredictions_missingLoiResults___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)interruptTraining
{
  v3 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1CEE74000, v3, OS_LOG_TYPE_DEFAULT, "Interrupting training", v6, 2u);
  }

  v4 = [(PCVisitHistoryPredictor *)self candidateModel];

  if (v4)
  {
    v5 = [(PCVisitHistoryPredictor *)self candidateModel];
    [v5 interruptTraining];
  }
}

@end