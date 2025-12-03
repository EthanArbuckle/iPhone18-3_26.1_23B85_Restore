@interface PDContainer
+ (PDContainer)containerWithFileURL:(id)l error:(id *)error;
+ (PDContainer)containerWithJSONData:(id)data error:(id *)error;
+ (PDContainer)containerWithJSONDictionary:(id)dictionary error:(id *)error;
+ (PDContainer)containerWithPath:(id)path error:(id *)error;
- (BOOL)enumerateAggregatedMeasurementsMatchingNullableFilter:(id)filter ignoringVariables:(id)variables error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateMeasurementsMatchingNullableFilter:(id)filter error:(id *)error usingBlock:(id)block;
- (BOOL)isComparableTo:(id)to;
- (BOOL)isLike:(id)like;
- (PDContainer)initWithFileURL:(id)l error:(id *)error;
- (PDContainer)initWithJSONData:(id)data error:(id *)error;
- (PDContainer)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (PDContainer)initWithPath:(id)path error:(id *)error;
- (id)aggregateMeasurementsMatchingFilter:(id)filter error:(id *)error;
- (id)description;
- (unint64_t)measurementCount;
@end

@implementation PDContainer

- (PDContainer)initWithPath:(id)path error:(id *)error
{
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
  v7 = [(PDContainer *)self initWithFileURL:v6 error:error];

  return v7;
}

+ (PDContainer)containerWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [[PDContainer alloc] initWithPath:pathCopy error:error];

  return v6;
}

- (PDContainer)initWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = PDContainer;
  v7 = [(PDContainer *)&v13 init];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CBEAE0] inputStreamWithURL:lCopy];
    [v9 open];
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v9 options:3 error:error];
    [v9 close];
    if (v10)
    {
      v8 = [(PDContainer *)v8 initWithJSONDictionary:v10 error:error];
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PDContainer)containerWithFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [[PDContainer alloc] initWithFileURL:lCopy error:error];

  return v6;
}

- (PDContainer)initWithJSONData:(id)data error:(id *)error
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = PDContainer;
  v7 = [(PDContainer *)&v12 init];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:3 error:error];
    if (v9)
    {
      v8 = [(PDContainer *)v8 initWithJSONDictionary:v9 error:error];
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (PDContainer)containerWithJSONData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[PDContainer alloc] initWithJSONData:dataCopy error:error];

  return v6;
}

- (PDContainer)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v57[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDContainer *)self setPerfdata:dictionaryCopy];
    perfdata = [(PDContainer *)self perfdata];
    v8 = [perfdata objectForKeyedSubscript:@"$schema"];

    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 hasPrefix:@"https://perfdata.apple.com/schema/"] & 1) == 0)
    {
      if (p_isa)
      {
        v26 = MEMORY[0x277CCA9B8];
        v56 = *MEMORY[0x277CCA450];
        v57[0] = @"schema is not perfdata";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        *p_isa = [v26 errorWithDomain:@"PDError" code:3 userInfo:v27];

        p_isa = 0;
      }

      goto LABEL_17;
    }

    perfdata2 = [(PDContainer *)self perfdata];
    v10 = [perfdata2 objectForKeyedSubscript:@"name"];
    [(PDContainer *)self setName:v10];

    name = [(PDContainer *)self name];
    if (!name || (v12 = name, [(PDContainer *)self name], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0))
    {
      p_isa = handle_malformed_data(p_isa, @"perfdata name");
LABEL_17:

      goto LABEL_18;
    }

    perfdata3 = [(PDContainer *)self perfdata];
    v16 = [perfdata3 objectForKeyedSubscript:@"version"];

    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      -[PDContainer setVersion:](self, "setVersion:", [v16 unsignedIntegerValue]);
      perfdata4 = [(PDContainer *)self perfdata];
      v18 = [perfdata4 objectForKeyedSubscript:@"description"];
      [(PDContainer *)self setTestDescription:v18];

      testDescription = [(PDContainer *)self testDescription];
      if (!testDescription || (v20 = testDescription, [(PDContainer *)self testDescription], v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v22 = objc_opt_isKindOfClass(), v21, v20, (v22 & 1) != 0))
      {
        perfdata5 = [(PDContainer *)self perfdata];
        v24 = [perfdata5 objectForKeyedSubscript:@"larger_better"];

        if (v24)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v42 = @"perfdata larger_better";
            goto LABEL_31;
          }

          bOOLValue = [v24 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        [(PDContainer *)self setLargerBetter:bOOLValue];
        perfdata6 = [(PDContainer *)self perfdata];
        v32 = [perfdata6 objectForKeyedSubscript:@"primary_metric"];
        [(PDContainer *)self setPrimaryMetricFilter:v32];

        primaryMetricFilter = [(PDContainer *)self primaryMetricFilter];
        if (primaryMetricFilter)
        {
          v34 = primaryMetricFilter;
          primaryMetricFilter2 = [(PDContainer *)self primaryMetricFilter];
          objc_opt_class();
          v36 = objc_opt_isKindOfClass();

          if ((v36 & 1) == 0)
          {
            v42 = @"perfdata primary_metric";
            goto LABEL_31;
          }
        }

        perfdata7 = [(PDContainer *)self perfdata];
        v38 = [perfdata7 objectForKeyedSubscript:@"generator"];
        [(PDContainer *)self setGenerator:v38];

        generator = [(PDContainer *)self generator];

        if (generator)
        {
          generator2 = [(PDContainer *)self generator];
          objc_opt_class();
          v41 = objc_opt_isKindOfClass();

          if ((v41 & 1) == 0)
          {
            v42 = @"perfdata generator";
            goto LABEL_31;
          }
        }

        else
        {
          [(PDContainer *)self setGenerator:@"<unknown>"];
        }

        perfdata8 = [(PDContainer *)self perfdata];
        v45 = expect_dictionary(perfdata8, @"variables", p_isa, @"perfdata variables");
        [(PDContainer *)self setVariables:v45];

        variables = [(PDContainer *)self variables];

        if (!variables)
        {
          goto LABEL_41;
        }

        perfdata9 = [(PDContainer *)self perfdata];
        v48 = expect_dictionary(perfdata9, @"configuration", p_isa, @"perfdata configuration");
        [(PDContainer *)self setConfiguration:v48];

        configuration = [(PDContainer *)self configuration];

        if (!configuration)
        {
LABEL_41:
          p_isa = 0;
          goto LABEL_33;
        }

        perfdata10 = [(PDContainer *)self perfdata];
        v51 = [perfdata10 objectForKeyedSubscript:@"notes"];
        [(PDContainer *)self setNotes:v51];

        notes = [(PDContainer *)self notes];
        if (!notes || (v53 = notes, [(PDContainer *)self notes], v54 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v55 = objc_opt_isKindOfClass(), v54, v53, (v55 & 1) != 0))
        {
          selfCopy = self;
          goto LABEL_32;
        }

        v42 = @"perfdata notes";
LABEL_31:
        selfCopy = handle_malformed_data(p_isa, v42);
LABEL_32:
        p_isa = &selfCopy->super.isa;
LABEL_33:

        goto LABEL_34;
      }

      v30 = @"perfdata description";
    }

    else
    {
      v30 = @"perfdata version";
    }

    p_isa = handle_malformed_data(p_isa, v30);
LABEL_34:

    goto LABEL_17;
  }

  p_isa = handle_malformed_data(p_isa, @"perfdata object");
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return p_isa;
}

+ (PDContainer)containerWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [[PDContainer alloc] initWithJSONDictionary:dictionaryCopy error:error];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PDContainer *)self name];
  v5 = [v3 stringWithFormat:@"PerfData: %@ v%lu", name, -[PDContainer version](self, "version")];

  return v5;
}

- (BOOL)isComparableTo:(id)to
{
  toCopy = to;
  version = [(PDContainer *)self version];
  if (version == [toCopy version])
  {
    name = [(PDContainer *)self name];
    name2 = [toCopy name];
    v8 = [name isEqualToString:name2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isLike:(id)like
{
  likeCopy = like;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [(PDContainer *)self isComparableTo:likeCopy];

  return v5;
}

- (unint64_t)measurementCount
{
  v18 = *MEMORY[0x277D85DE8];
  perfdata = [(PDContainer *)self perfdata];
  v3 = [perfdata objectForKeyedSubscript:@"data"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v7 += [v10 count];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)enumerateMeasurementsMatchingNullableFilter:(id)filter error:(id *)error usingBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  blockCopy = block;
  perfdata = [(PDContainer *)self perfdata];
  v11 = [perfdata objectForKeyedSubscript:@"data"];

  if (v11)
  {
    v12 = 0x277CBE000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!filterCopy)
      {
        v48 = 0;
        v15 = 0;
        goto LABEL_10;
      }

      if ([filterCopy length])
      {
        v13 = strip_container_prefix(self, filterCopy);

        v48 = get_metric_filter_metric(v13);
        v14 = get_metric_filter_variables(v13, error);
        if (!v14)
        {
          v16 = 0;
          filterCopy = v13;
LABEL_42:

          goto LABEL_43;
        }

        v15 = v14;
        filterCopy = v13;
LABEL_10:
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v18 = v11;
        v19 = [v18 countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v19)
        {
          errorCopy = error;
          v47 = 0;
          v20 = *v55;
          v43 = v18;
          v40 = *v55;
          while (2)
          {
            v21 = 0;
            error = errorCopy;
            v41 = v19;
            do
            {
              if (*v55 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v54 + 1) + 8 * v21);
              if (!v22 || (v23 = *(v12 + 2656), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v38 = handle_malformed_data(error, @"perfdata group");
                v34 = 0;
                LOBYTE(error) = 0;
                goto LABEL_41;
              }

              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              obj = v22;
              v24 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v51;
                v44 = blockCopy;
                v42 = filterCopy;
                v39 = v21;
                while (2)
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v51 != v26)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v28 = *(*(&v50 + 1) + 8 * i);
                    if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      v35 = handle_malformed_data(error, @"perfdata measurement");
                      LOBYTE(error) = 0;
LABEL_40:

                      v34 = 0;
                      blockCopy = v44;
                      filterCopy = v42;
                      v18 = v43;
                      goto LABEL_41;
                    }

                    v29 = [[PDMeasurement alloc] initWithContainer:self dictionary:v28 group:v47 error:error];
                    v30 = v29;
                    LOBYTE(error) = v29 != 0;
                    if (!v29)
                    {
                      goto LABEL_39;
                    }

                    if (!v48 || (-[PDMeasurement metric](v29, "metric"), v31 = v15, v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isEqualToString:v48], v32, v15 = v31, v33))
                    {
                      if (!v15 || [(PDMeasurement *)v30 matchesVariables:v15 ignoringMissing:0])
                      {
                        v49 = 0;
                        (*(v44 + 2))(v44, v30, &v49);
                        if (v49 == 1)
                        {
LABEL_39:

                          goto LABEL_40;
                        }
                      }
                    }

                    error = errorCopy;
                  }

                  v25 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
                  blockCopy = v44;
                  filterCopy = v42;
                  v21 = v39;
                  if (v25)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v47;
              ++v21;
              v20 = v40;
              v12 = 0x277CBE000;
              v18 = v43;
            }

            while (v21 != v41);
            v19 = [v43 countByEnumeratingWithState:&v54 objects:v59 count:16];
            v34 = 1;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v34 = 1;
        }

LABEL_41:

        v16 = v34 | error;
        goto LABEL_42;
      }

      v16 = 1;
    }

    else
    {
      v17 = handle_malformed_data(error, @"perfdata data");
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_43:

  v36 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (BOOL)enumerateAggregatedMeasurementsMatchingNullableFilter:(id)filter ignoringVariables:(id)variables error:(id *)error usingBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  variablesCopy = variables;
  blockCopy = block;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __104__PDContainer_enumerateAggregatedMeasurementsMatchingNullableFilter_ignoringVariables_error_usingBlock___block_invoke;
  v37[3] = &unk_27A70FF40;
  v15 = variablesCopy;
  v38 = v15;
  v16 = v13;
  v39 = v16;
  selfCopy = self;
  v17 = v14;
  v41 = v17;
  v18 = [(PDContainer *)self enumerateMeasurementsMatchingNullableFilter:filterCopy error:error usingBlock:v37];
  v19 = v18;
  if (v18)
  {
    v30 = v18;
    v31 = filterCopy;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
LABEL_4:
      v24 = 0;
      while (1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v16 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v24)];
        if (!v25)
        {
          pdwriter_open_stream_cold_1();
        }

        v26 = v25;
        v32 = 0;
        measurement = [v25 measurement];
        blockCopy[2](blockCopy, measurement, &v32);

        LOBYTE(measurement) = v32;
        if (measurement)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v22)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    filterCopy = v31;
    v19 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

void __104__PDContainer_enumerateAggregatedMeasurementsMatchingNullableFilter_ignoringVariables_error_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (*(a1 + 32))
  {
    [v3 metricFilterIgnoringVariables:?];
  }

  else
  {
    [v3 metricFilter];
  }
  v4 = ;
  v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = *(a1 + 40);
    v7 = [PDAggregateMeasurement alloc];
    v8 = *(a1 + 48);
    v9 = [v11 metric];
    v10 = [v11 unitString];
    v5 = [(PDAggregateMeasurement *)v7 initWithContainer:v8 metric:v9 unitString:v10];
    [v6 setObject:v5 forKeyedSubscript:v4];

    [*(a1 + 56) addObject:v4];
  }

  [(PDAggregateMeasurement *)v5 updateWithMeasurement:v11];
}

- (id)aggregateMeasurementsMatchingFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PDContainer_aggregateMeasurementsMatchingFilter_error___block_invoke;
  v9[3] = &unk_27A70FF68;
  v9[4] = self;
  v9[5] = &v10;
  if ([(PDContainer *)self enumerateMeasurementsMatchingFilter:filterCopy error:error usingBlock:v9])
  {
    measurement = [v11[5] measurement];
  }

  else
  {
    measurement = 0;
  }

  _Block_object_dispose(&v10, 8);

  return measurement;
}

void __57__PDContainer_aggregateMeasurementsMatchingFilter_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (!v3)
  {
    v4 = [PDAggregateMeasurement alloc];
    v5 = *(a1 + 32);
    v6 = [v11 metric];
    v7 = [v11 unitString];
    v8 = [(PDAggregateMeasurement *)v4 initWithContainer:v5 metric:v6 unitString:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v3 updateWithMeasurement:v11];
}

@end