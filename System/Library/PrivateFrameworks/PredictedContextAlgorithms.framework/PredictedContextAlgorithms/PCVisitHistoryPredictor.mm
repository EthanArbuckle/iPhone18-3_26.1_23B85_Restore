@interface PCVisitHistoryPredictor
- (PCVisitHistoryPredictor)init;
- (PCVisitHistoryPredictor)initWithCoder:(id)coder;
- (PCVisitHistoryPredictor)initWithConfig:(id)config;
- (void)computeWithHistory:(id)history transitions:(id)transitions locationsOfInterest:(id)interest homekitHomes:(id)homes atTime:(double)time inTimeZone:(id)zone withError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)findMismatchedTrainedLois:(id *)lois visitHistory:(id)history;
- (void)interruptTraining;
- (void)predictWithHistory:(id)history transitionHistory:(id)transitionHistory locationHistory:(id)locationHistory homekitHomes:(id)homes atTime:(double)time locations:(id *)locations transitions:(id *)transitions containsHomeKitPredictions:(id *)self0 missingLoiResults:(id *)self1;
- (void)storeHomeLoisTo:(id)to workLoisTo:(id)loisTo from:(id)from withVisitIndices:(id)indices;
@end

@implementation PCVisitHistoryPredictor

- (PCVisitHistoryPredictor)initWithConfig:(id)config
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = PCVisitHistoryPredictor;
  v5 = [(PCVisitHistoryPredictor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(PCVisitHistoryPredictor *)v5 setConfig:configCopy];
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

- (PCVisitHistoryPredictor)initWithCoder:(id)coder
{
  v43 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy containsValueForKey:@"config"] & 1) == 0)
  {
    v33 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_DEFAULT, "coder doesn't contain visit history config key - initializing with default config instead", &v41, 2u);
    }

    v6 = objc_alloc_init(PCVisitHistoryPredictorConfig);
    selfCopy = [(PCVisitHistoryPredictor *)self initWithConfig:v6];
    goto LABEL_39;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
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
    selfCopy = self;
LABEL_39:
    self = selfCopy;
    v38 = selfCopy;
    goto LABEL_40;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nnmodelv5"];
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
  v12 = [coderCopy decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"visitCounts"];
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
  v16 = [coderCopy decodeDictionaryWithKeysOfClass:v15 objectsOfClass:objc_opt_class() forKey:@"loiToLocation"];
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
  v20 = [coderCopy decodeDictionaryWithKeysOfClass:v19 objectsOfClass:objc_opt_class() forKey:@"loiToIsHome"];
  v21 = [v20 mutableCopy];
  loiToHomeMap = self->_loiToHomeMap;
  self->_loiToHomeMap = v21;

  if (self->_loiToHomeMap)
  {
    v23 = objc_opt_class();
    v24 = [coderCopy decodeDictionaryWithKeysOfClass:v23 objectsOfClass:objc_opt_class() forKey:@"loiToIsWork"];
    v25 = [v24 mutableCopy];
    loiToWorkMap = self->_loiToWorkMap;
    self->_loiToWorkMap = v25;

    if (self->_loiToWorkMap)
    {
      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
      timeZone = self->_timeZone;
      self->_timeZone = v27;

      v29 = self->_timeZone;
      v30 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          abbreviation = [(NSTimeZone *)self->_timeZone abbreviation];
          v41 = 138412290;
          v42 = abbreviation;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  getEncodedModel = [(PCNeuralNetModel *)self->_model getEncodedModel];
  if (getEncodedModel)
  {
    [coderCopy encodeObject:getEncodedModel forKey:@"nnmodelv5"];
    [coderCopy encodeObject:self->_visitIndicies forKey:@"visitCounts"];
    [coderCopy encodeObject:self->_loiToLocationMap forKey:@"loiToLocation"];
    [coderCopy encodeObject:self->_loiToWorkMap forKey:@"loiToIsWork"];
    [coderCopy encodeObject:self->_loiToHomeMap forKey:@"loiToIsHome"];
    [coderCopy encodeObject:self->_config forKey:@"config"];
    [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
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

- (void)storeHomeLoisTo:(id)to workLoisTo:(id)loisTo from:(id)from withVisitIndices:(id)indices
{
  v53 = *MEMORY[0x1E69E9840];
  toCopy = to;
  loisToCopy = loisTo;
  fromCopy = from;
  indicesCopy = indices;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [indicesCopy countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    v13 = 0x1E83B7000uLL;
    v35 = *v48;
    v36 = indicesCopy;
    do
    {
      v14 = 0;
      v38 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(indicesCopy);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        v16 = [indicesCopy objectForKeyedSubscript:{v15, v35, v36}];
        kTravelingString = [*(v13 + 2216) kTravelingString];
        v40 = v16;
        if (([v16 isEqualToString:kTravelingString] & 1) == 0)
        {
          v39 = v14;
          kInfrequentString = [*(v13 + 2216) kInfrequentString];
          if ([v16 isEqualToString:kInfrequentString])
          {
          }

          else
          {
            kNilString = [*(v13 + 2216) kNilString];
            v20 = [v16 isEqualToString:kNilString];

            v11 = v38;
            if (v20)
            {
              goto LABEL_29;
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            kTravelingString = fromCopy;
            v21 = [kTravelingString countByEnumeratingWithState:&v43 objects:v51 count:16];
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
                    objc_enumerationMutation(kTravelingString);
                  }

                  v25 = *(*(&v43 + 1) + 8 * i);
                  loiIdentifier = [v25 loiIdentifier];
                  if (loiIdentifier)
                  {
                    v27 = loiIdentifier;
                    loiIdentifier2 = [v25 loiIdentifier];
                    v29 = [v15 isEqualToData:loiIdentifier2];

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
                      [toCopy setObject:v31 forKeyedSubscript:v15];

                      if ([v25 placeType])
                      {
                        v32 = [v25 placeType] == 2;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v33 = [MEMORY[0x1E696AD98] numberWithBool:v32];
                      [loisToCopy setObject:v33 forKeyedSubscript:v15];
                    }
                  }
                }

                v22 = [kTravelingString countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v22);
              v12 = v35;
              indicesCopy = v36;
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
      v11 = [indicesCopy countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v11);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)computeWithHistory:(id)history transitions:(id)transitions locationsOfInterest:(id)interest homekitHomes:(id)homes atTime:(double)time inTimeZone:(id)zone withError:(id *)error
{
  v203 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  transitionsCopy = transitions;
  interestCopy = interest;
  homesCopy = homes;
  zoneCopy = zone;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v15 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    volatileDomainNames = [standardUserDefaults volatileDomainNames];
    *buf = 138412290;
    *&buf[4] = volatileDomainNames;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "defaults: %@", buf, 0xCu);
  }

  v17 = [standardUserDefaults integerForKey:@"visitHistoryTrainingEpochsOverride"];
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

  v19 = [standardUserDefaults integerForKey:@"visitHistoryTrainingBatchSizeOverride"];
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

  if ([standardUserDefaults BOOLForKey:@"visitHistoryTrainOnGpu"])
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

  v22 = [PCNeuralNetworkUtilities sortVisitHistory:historyCopy];
  v23 = [PCNeuralNetworkUtilities sortTransitionHistory:transitionsCopy];
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

  v167 = zoneCopy;
  v32 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v167)
  {
    if (v33)
    {
      abbreviation = [v167 abbreviation];
      *buf = 138412290;
      *&buf[4] = abbreviation;
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

        loiIdentifier = [*(*(&v191 + 1) + 8 * i) loiIdentifier];
        if (!loiIdentifier)
        {
          v47 = +[PCNeuralNetworkUtilities kNilString];
          loiIdentifier = [v47 dataUsingEncoding:4];
        }

        v48 = [v41 objectForKeyedSubscript:loiIdentifier];
        v49 = v48 == 0;

        if (v49)
        {
          [v41 setObject:&unk_1F4BDE0C8 forKeyedSubscript:loiIdentifier];
        }

        else
        {
          v50 = objc_alloc(MEMORY[0x1E696AD98]);
          v51 = [v41 objectForKeyedSubscript:loiIdentifier];
          v52 = [v50 initWithInt:{objc_msgSend(v51, "intValue") + 1}];
          [v41 setObject:v52 forKeyedSubscript:loiIdentifier];
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
        loiIdentifier2 = [v57 loiIdentifier];
        if (loiIdentifier2)
        {
          candidateLoiToLocationMap = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
          v60 = [candidateLoiToLocationMap objectForKeyedSubscript:loiIdentifier2];
          v61 = v60 == 0;

          if (v61)
          {
            if ([v57 hasLocation])
            {
              v62 = [LoiLocation alloc];
              location = [v57 location];
              v64 = [(LoiLocation *)v62 initWithLocation:location];
              candidateLoiToLocationMap2 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
              [candidateLoiToLocationMap2 setObject:v64 forKeyedSubscript:loiIdentifier2];
            }

            else
            {
              v66 = objc_alloc_init(LoiLocation);
              candidateLoiToLocationMap3 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
              [candidateLoiToLocationMap3 setObject:v66 forKeyedSubscript:loiIdentifier2];

              location = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
              if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138739971;
                *&buf[4] = v57;
                _os_log_impl(&dword_1CEE74000, location, OS_LOG_TYPE_DEFAULT, "loi has no location: %{sensitive}@", buf, 0xCu);
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

        loiIdentifier3 = [*(*(&v179 + 1) + 8 * m) loiIdentifier];
        if (loiIdentifier3)
        {
          v82 = [v76 objectForKey:loiIdentifier3];
          v83 = v82 == 0;

          if (!v83)
          {
            candidateVisitIndicies2 = [v76 objectForKeyedSubscript:loiIdentifier3];
            intValue = [candidateVisitIndicies2 intValue];
            if (intValue > [(PCVisitHistoryPredictorConfig *)self->_config numVisitsThreshold])
            {
              candidateVisitIndicies = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              v87 = [candidateVisitIndicies objectForKeyedSubscript:loiIdentifier3];
              v88 = v87 == 0;

              if (!v88)
              {
                goto LABEL_80;
              }

              v89 = MEMORY[0x1E696AEC0];
              candidateVisitIndicies2 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              v90 = [v89 stringWithFormat:@"%lu", objc_msgSend(candidateVisitIndicies2, "count")];
              candidateVisitIndicies3 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
              [candidateVisitIndicies3 setObject:v90 forKeyedSubscript:loiIdentifier3];
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
  candidateVisitIndicies4 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v94 = +[PCNeuralNetworkUtilities kTravelingString];
  v95 = [v94 dataUsingEncoding:4];
  [candidateVisitIndicies4 setObject:v92 forKeyedSubscript:v95];

  v96 = +[PCNeuralNetworkUtilities kInfrequentString];
  candidateVisitIndicies5 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v98 = +[PCNeuralNetworkUtilities kInfrequentString];
  v99 = [v98 dataUsingEncoding:4];
  [candidateVisitIndicies5 setObject:v96 forKeyedSubscript:v99];

  v100 = +[PCNeuralNetworkUtilities kNilString];
  candidateVisitIndicies6 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  v102 = +[PCNeuralNetworkUtilities kNilString];
  v103 = [v102 dataUsingEncoding:4];
  [candidateVisitIndicies6 setObject:v100 forKeyedSubscript:v103];

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

  candidateLoiToHomeMap = [(PCVisitHistoryPredictor *)self candidateLoiToHomeMap];
  candidateLoiToWorkMap = [(PCVisitHistoryPredictor *)self candidateLoiToWorkMap];
  candidateVisitIndicies7 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
  [(PCVisitHistoryPredictor *)self storeHomeLoisTo:candidateLoiToHomeMap workLoisTo:candidateLoiToWorkMap from:interestCopy withVisitIndices:candidateVisitIndicies7];

  v110 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v110, OS_LOG_TYPE_DEFAULT, "converting to timestep array...", buf, 2u);
  }

  v111 = time + -4838400.0;
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

  if (v111 <= time)
  {
    [(PCVisitHistoryPredictorConfig *)self->_config timestepSizeMinutes];
    v120 = v119;
    candidateVisitIndicies8 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
    v118 = [PCNeuralNetworkUtilities convertToTimestepDataset:v77 currentTime:v173 visitHistory:candidateVisitIndicies8 transitionHistory:v120 startTime:time visitIndicies:v111];

    v122 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      loiAtTimestepArray = [v118 loiAtTimestepArray];
      v124 = [loiAtTimestepArray count];
      *buf = 134217984;
      *&buf[4] = v124;
      _os_log_impl(&dword_1CEE74000, v122, OS_LOG_TYPE_DEFAULT, "Timestep array size: %lu", buf, 0xCu);
    }

    loiAtTimestepArray2 = [v118 loiAtTimestepArray];
    v126 = [loiAtTimestepArray2 count];
    inputSequenceLength = [(PCVisitHistoryPredictorConfig *)self->_config inputSequenceLength];
    v128 = v126 < [(PCVisitHistoryPredictorConfig *)self->_config outSteps]+ inputSequenceLength;

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
      hiddenLayers = [(PCVisitHistoryPredictorConfig *)self->_config hiddenLayers];
      outSteps = [(PCVisitHistoryPredictorConfig *)self->_config outSteps];
      epochs = [(PCVisitHistoryPredictorConfig *)self->_config epochs];
      *buf = 67109632;
      *&buf[4] = hiddenLayers;
      *&buf[8] = 1024;
      *&buf[10] = outSteps;
      *&buf[14] = 1024;
      *&buf[16] = epochs;
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
    candidateModel = [(PCVisitHistoryPredictor *)self candidateModel];
    loiAtTimestepArray3 = [v118 loiAtTimestepArray];
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 3221225472;
    v176[2] = __119__PCVisitHistoryPredictor_computeWithHistory_transitions_locationsOfInterest_homekitHomes_atTime_inTimeZone_withError___block_invoke;
    v176[3] = &unk_1E83B8650;
    v178 = buf;
    v141 = v135;
    v177 = v141;
    [candidateModel fitLabelEncoderWithArray:loiAtTimestepArray3 completionHandler:v176];

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

    candidateTimeZone = [(PCVisitHistoryPredictor *)self candidateTimeZone];
    [PCNeuralNetworkUtilities applySinCosTransform:v118 timeZone:candidateTimeZone];

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

    candidateModel2 = [(PCVisitHistoryPredictor *)self candidateModel];
    ordinalLoiLabels = [v118 ordinalLoiLabels];
    v150 = [candidateModel2 trainFromTensorsWithDatasetX:v142 datasetY:ordinalLoiLabels timesteps:{-[PCVisitHistoryPredictorConfig inputSequenceLength](self->_config, "inputSequenceLength")}];

    if (v150 == 1)
    {
      selfCopy2 = self;
      if (!error)
      {
LABEL_117:
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateModel:0];
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateVisitIndicies:0];
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateLoiToLocationMap:0];
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateLoiToHomeMap:0];
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateLoiToWorkMap:0];
        [(PCVisitHistoryPredictor *)selfCopy2 setCandidateTimeZone:0];
LABEL_118:

        _Block_object_dispose(buf, 8);
LABEL_119:

        goto LABEL_120;
      }

      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PCErrorDomain" code:5 userInfo:0];
    }

    else
    {
      candidateModel3 = [(PCVisitHistoryPredictor *)self candidateModel];
      model = self->_model;
      self->_model = candidateModel3;

      candidateVisitIndicies9 = [(PCVisitHistoryPredictor *)self candidateVisitIndicies];
      visitIndicies = self->_visitIndicies;
      self->_visitIndicies = candidateVisitIndicies9;

      candidateLoiToLocationMap4 = [(PCVisitHistoryPredictor *)self candidateLoiToLocationMap];
      loiToLocationMap = self->_loiToLocationMap;
      self->_loiToLocationMap = candidateLoiToLocationMap4;

      candidateLoiToHomeMap2 = [(PCVisitHistoryPredictor *)self candidateLoiToHomeMap];
      loiToHomeMap = self->_loiToHomeMap;
      self->_loiToHomeMap = candidateLoiToHomeMap2;

      candidateLoiToWorkMap2 = [(PCVisitHistoryPredictor *)self candidateLoiToWorkMap];
      loiToWorkMap = self->_loiToWorkMap;
      self->_loiToWorkMap = candidateLoiToWorkMap2;

      candidateTimeZone2 = [(PCVisitHistoryPredictor *)self candidateTimeZone];
      timeZone = self->_timeZone;
      self->_timeZone = candidateTimeZone2;
    }

    selfCopy2 = self;
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

- (void)findMismatchedTrainedLois:(id *)lois visitHistory:(id)history
{
  v58 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = historyCopy;
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
        loiIdentifier = [v11 loiIdentifier];

        if (loiIdentifier)
        {
          loiIdentifier2 = [v11 loiIdentifier];
          [v5 addObject:loiIdentifier2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v8);
  }

  v39 = v6;

  v40 = v5;
  v41 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  selfCopy3 = self;
  *lois = objc_alloc_init(MEMORY[0x1E695DF90]);
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
        v20 = [(NSMutableDictionary *)selfCopy3->_visitIndicies objectForKeyedSubscript:v19, v39];
        kTravelingString = [*(v17 + 2216) kTravelingString];
        if ([v20 isEqualToString:kTravelingString])
        {
          goto LABEL_18;
        }

        kInfrequentString = [*(v17 + 2216) kInfrequentString];
        if ([v20 isEqualToString:kInfrequentString])
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
          v27 = [(NSMutableDictionary *)selfCopy3->_loiToHomeMap objectForKeyedSubscript:v19];
          if (v27)
          {
            v28 = [(NSMutableDictionary *)selfCopy3->_loiToHomeMap objectForKeyedSubscript:v19];
            bOOLValue = [v28 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v30 = [(NSMutableDictionary *)selfCopy3->_loiToWorkMap objectForKeyedSubscript:v19];
          if (v30)
          {
            v31 = [(NSMutableDictionary *)selfCopy3->_loiToWorkMap objectForKeyedSubscript:v19];
            bOOLValue2 = [v31 BOOLValue];
          }

          else
          {
            bOOLValue2 = 0;
          }

          kTravelingString = objc_alloc_init(PCPRolledLoiKeyValuePair);
          [(PCPRolledLoiKeyValuePair *)kTravelingString setIdentifier:v19];
          v33 = objc_alloc_init(PCPRolledLoiAnalytics);
          [(PCPRolledLoiKeyValuePair *)kTravelingString setAnalytics:v33];

          analytics = [(PCPRolledLoiKeyValuePair *)kTravelingString analytics];
          [analytics setLoiIsMissingFromCurrentVisitHistory:v26 ^ 1u];

          analytics2 = [(PCPRolledLoiKeyValuePair *)kTravelingString analytics];
          [analytics2 setIsHome:bOOLValue];

          analytics3 = [(PCPRolledLoiKeyValuePair *)kTravelingString analytics];
          [analytics3 setIsWork:bOOLValue2];

          [*lois setObject:kTravelingString forKeyedSubscript:v19];
          if (v26)
          {
            selfCopy3 = self;
            v17 = v23;
          }

          else
          {
            kInfrequentString = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            selfCopy3 = self;
            v17 = v23;
            if (os_log_type_enabled(kInfrequentString, OS_LOG_TYPE_ERROR))
            {
              *buf = 138739971;
              v55 = v19;
              _os_log_impl(&dword_1CEE74000, kInfrequentString, OS_LOG_TYPE_ERROR, "Trained LOI UUID %{sensitive}@ is missing from current visit history", buf, 0xCu);
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

- (void)predictWithHistory:(id)history transitionHistory:(id)transitionHistory locationHistory:(id)locationHistory homekitHomes:(id)homes atTime:(double)time locations:(id *)locations transitions:(id *)transitions containsHomeKitPredictions:(id *)self0 missingLoiResults:(id *)self1
{
  v244 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  transitionHistoryCopy = transitionHistory;
  locationHistoryCopy = locationHistory;
  homesCopy = homes;
  *locations = objc_alloc_init(MEMORY[0x1E695DF70]);
  *transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
  *predictions = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = historyCopy;
  if (![historyCopy count])
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

  if ([historyCopy count] >= 2)
  {
    v16 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [historyCopy objectAtIndexedSubscript:{objc_msgSend(historyCopy, "count") - 2}];
      v18 = [historyCopy objectAtIndexedSubscript:{objc_msgSend(historyCopy, "count") - 1}];
      *buf = 138740227;
      *&buf[4] = v17;
      *&buf[12] = 2117;
      *&buf[14] = v18;
      _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_DEFAULT, "last 2 visits:, %{sensitive}@, %{sensitive}@", buf, 0x16u);
    }

    v15 = historyCopy;
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

  [(PCVisitHistoryPredictor *)self findMismatchedTrainedLois:results visitHistory:v15];
  v175 = [PCNeuralNetworkUtilities sortVisitHistory:historyCopy];
  v174 = [PCNeuralNetworkUtilities sortTransitionHistory:transitionHistoryCopy];
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

  if (v22 <= time)
  {
    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    obj = homesCopy;
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
                  toLocation = [v33 toLocation];
                  location = [v28 location];
                  [PCLocationUtils distanceInMetersBetweenLocation:toLocation andLocation:location];
                  v37 = v36;

                  if (v37 <= 200.0)
                  {
                    v38 = objc_alloc_init(PCPHomeKitHome);
                    [v28 copyTo:v38];
                    [*predictions addObject:v38];

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
    loiAtTimestepArray = [v183 loiAtTimestepArray];
    v40 = [loiAtTimestepArray count] == 0;

    if (!v40)
    {
      v41 = 0;
      do
      {
        loiAtTimestepArray2 = [v183 loiAtTimestepArray];
        v43 = [loiAtTimestepArray2 objectAtIndexedSubscript:v41];
        v44 = +[PCNeuralNetworkUtilities kUnknownString];
        v45 = [v43 isEqualToString:v44];

        if (v45)
        {
          v46 = +[PCNeuralNetworkUtilities kTravelingString];
          loiAtTimestepArray3 = [v183 loiAtTimestepArray];
          [loiAtTimestepArray3 setObject:v46 atIndexedSubscript:v41];
        }

        loiAtTimestepArray4 = [v183 loiAtTimestepArray];
        v49 = [loiAtTimestepArray4 count];

        ++v41;
      }

      while (v49 > v41);
    }

    v50 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      loiAtTimestepArray5 = [v183 loiAtTimestepArray];
      v52 = [loiAtTimestepArray5 count];
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

    loiAtTimestepArray6 = [v183 loiAtTimestepArray];
    v55 = [loiAtTimestepArray6 count] > 3;

    if (v55)
    {
      v56 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        loiAtTimestepArray7 = [v183 loiAtTimestepArray];
        loiAtTimestepArray8 = [v183 loiAtTimestepArray];
        objb = [loiAtTimestepArray7 objectAtIndexedSubscript:{objc_msgSend(loiAtTimestepArray8, "count") - 4}];
        loiAtTimestepArray9 = [v183 loiAtTimestepArray];
        loiAtTimestepArray10 = [v183 loiAtTimestepArray];
        v59 = [loiAtTimestepArray9 objectAtIndexedSubscript:{objc_msgSend(loiAtTimestepArray10, "count") - 3}];
        loiAtTimestepArray11 = [v183 loiAtTimestepArray];
        loiAtTimestepArray12 = [v183 loiAtTimestepArray];
        v62 = [loiAtTimestepArray11 objectAtIndexedSubscript:{objc_msgSend(loiAtTimestepArray12, "count") - 2}];
        loiAtTimestepArray13 = [v183 loiAtTimestepArray];
        loiAtTimestepArray14 = [v183 loiAtTimestepArray];
        v65 = [loiAtTimestepArray13 objectAtIndexedSubscript:{objc_msgSend(loiAtTimestepArray14, "count") - 1}];
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
    loiAtTimestepArray15 = [v183 loiAtTimestepArray];
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __167__PCVisitHistoryPredictor_predictWithHistory_transitionHistory_locationHistory_homekitHomes_atTime_locations_transitions_containsHomeKitPredictions_missingLoiResults___block_invoke;
    v219[3] = &unk_1E83B8650;
    v221 = buf;
    dsema = v66;
    v220 = dsema;
    [(PCNeuralNetModel *)model encodeWithLabelEncoderWithArray:loiAtTimestepArray15 completionHandler:v219];

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
          abbreviation = [(NSTimeZone *)self->_timeZone abbreviation];
          *v237 = 138412290;
          v238 = abbreviation;
          _os_log_impl(&dword_1CEE74000, v73, OS_LOG_TYPE_DEFAULT, "Prediction time zone: %@", v237, 0xCu);
        }

        v75 = v183;
        selfCopy2 = self;
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
        selfCopy2 = self;
        v75 = v183;
      }

      [PCNeuralNetworkUtilities applySinCosTransform:v75 timeZone:v170];
      v78 = MEMORY[0x1E696AD98];
      getConfig = [(PCNeuralNetModel *)selfCopy2->_model getConfig];
      v168 = [v78 numberWithLong:{objc_msgSend(getConfig, "getUnknownLoiIdLabel")}];

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
          intValue = [v87 intValue];

          v89 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *v237 = 67109120;
            LODWORD(v238) = intValue;
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
          v93 = intValue;
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
          selfCopy4 = self;
          [(PCVisitHistoryPredictorConfig *)self->_config visitProbabilityThreshold];
          v99 = v98;
          [(PCVisitHistoryPredictorConfig *)self->_config timestepSizeMinutes];
          v101 = v100;
          *&v100 = v99;
          LODWORD(v102) = 1.0;
          [PCNeuralNetworkUtilities createPredictedContextFromPredSequence:v173 timestepSize:1 currentTime:v100 preds:v101 probabilityCalculationMode:time probabilityPercentile:v102];
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
                v108 = -[PCNeuralNetModel decodeLabelWithIndex:](selfCopy4->_model, "decodeLabelWithIndex:", [v107 visitLoiIdx]);
                [v107 setVisitLoiString:v108];

                selfCopy4 = self;
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
                visitLoiString = [v109 visitLoiString];
                v111 = +[PCNeuralNetworkUtilities kInfrequentString];
                v112 = [visitLoiString isEqualToString:v111];

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

                  visitLoiString2 = [v109 visitLoiString];
                  v118 = +[PCNeuralNetworkUtilities kTravelingString];
                  v119 = [visitLoiString2 isEqualToString:v118];

                  if (v119)
                  {
                    v120 = objc_alloc_init(PCPPredictedContextTransition);
                    [(PCPPredictedContextTransition *)v120 setPredictedContext:v194];
                    predictedContext = [(PCPPredictedContextTransition *)v120 predictedContext];
                    [predictedContext setContextType:2];

                    v122 = objc_alloc_init(PCPPredictedContextTransport);
                    [(PCPPredictedContextTransport *)v122 setProbability:1.0];
                    [(PCPPredictedContextTransport *)v122 setTransportMode:0];
                    v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [(PCPPredictedContextTransition *)v120 setPredictedContextTransports:v123];

                    predictedContextTransports = [(PCPPredictedContextTransition *)v120 predictedContextTransports];
                    [predictedContextTransports addObject:v122];

                    [*transitions addObject:v120];
                  }

                  else
                  {
                    v120 = objc_alloc_init(PCPPredictedContextLocation);
                    [(PCPPredictedContextTransition *)v120 setPredictedContext:v194];
                    predictedContext2 = [(PCPPredictedContextTransition *)v120 predictedContext];
                    [predictedContext2 setContextType:1];

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
                        visitLoiString3 = [v109 visitLoiString];
                        v134 = [v132 isEqual:visitLoiString3];

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

                      locationOfInterest = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [locationOfInterest setLoiIdentifier:v122];

                      locationOfInterest6 = [(NSMutableDictionary *)self->_loiToLocationMap objectForKeyedSubscript:v122];
                      toLocation2 = [locationOfInterest6 toLocation];
                      locationOfInterest2 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [locationOfInterest2 setLocation:toLocation2];
                    }

                    else
                    {
LABEL_101:

LABEL_104:
                      v139 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                      {
                        visitLoiString4 = [v109 visitLoiString];
                        *v237 = 138412290;
                        v238 = visitLoiString4;
                        _os_log_impl(&dword_1CEE74000, v139, OS_LOG_TYPE_DEFAULT, "Unable to match prediction %@ with loiIdentifier", v237, 0xCu);
                      }

                      uUID = [MEMORY[0x1E696AFB0] UUID];
                      v142 = [PCAlgorithmsCommonUtils dataFromUUID:uUID];
                      locationOfInterest3 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [locationOfInterest3 setLoiIdentifier:v142];

                      v144 = objc_alloc_init(PCPLocation);
                      locationOfInterest4 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      [locationOfInterest4 setLocation:v144];

                      locationOfInterest5 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      location2 = [locationOfInterest5 location];
                      [location2 setLocationLatitudeDeg:0.0];

                      locationOfInterest6 = [(PCPPredictedContextTransition *)v120 locationOfInterest];
                      toLocation2 = [locationOfInterest6 location];
                      [toLocation2 setHasLocationLongitudeDeg:0];
                      v122 = 0;
                    }

                    [*locations addObject:v120];
                  }
                }
              }

              v185 = [v182 countByEnumeratingWithState:&v211 objects:v234 count:16];
            }

            while (v185);
          }

          if (*locations && [*locations count])
          {
            v148 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
            {
              v149 = [*locations count];
              *v237 = 134217984;
              v238 = v149;
              _os_log_impl(&dword_1CEE74000, v148, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", v237, 0xCu);
            }

            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v150 = *locations;
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

          if (*transitions && [*transitions count])
          {
            v156 = _plc_log_get_normal_handle(PCLogCategoryCalendarVisitPredictor);
            if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
            {
              v157 = [*transitions count];
              *v237 = 134217984;
              v238 = v157;
              _os_log_impl(&dword_1CEE74000, v156, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", v237, 0xCu);
            }

            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v158 = *transitions;
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

  candidateModel = [(PCVisitHistoryPredictor *)self candidateModel];

  if (candidateModel)
  {
    candidateModel2 = [(PCVisitHistoryPredictor *)self candidateModel];
    [candidateModel2 interruptTraining];
  }
}

@end