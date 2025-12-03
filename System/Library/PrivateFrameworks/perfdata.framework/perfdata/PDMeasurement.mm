@interface PDMeasurement
- (BOOL)enumerateHistogramBucketsWithError:(id *)error usingBlock:(id)block;
- (BOOL)enumeratePercentilesWithError:(id *)error usingBlock:(id)block;
- (BOOL)isComparableTo:(id)to ignoringNullableVariables:(id)variables;
- (BOOL)isLike:(id)like;
- (BOOL)matchesMetricFilter:(id)filter;
- (BOOL)matchesVariables:(id)variables ignoringMissing:(BOOL)missing;
- (PDContainer)container;
- (PDMeasurement)initWithContainer:(id)container dictionary:(id)dictionary group:(unint64_t)group error:(id *)error;
- (id)description;
- (id)metricFilter;
- (id)metricFilterIgnoringNullableVariables:(id)variables;
- (unint64_t)histogramBucketCount;
- (unint64_t)percentileCount;
@end

@implementation PDMeasurement

- (PDMeasurement)initWithContainer:(id)container dictionary:(id)dictionary group:(unint64_t)group error:(id *)error
{
  v101 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  dictionaryCopy = dictionary;
  v98.receiver = self;
  v98.super_class = PDMeasurement;
  v12 = [(PDMeasurement *)&v98 init];
  v13 = v12;
  if (v12)
  {
    [(PDMeasurement *)v12 setContainer:containerCopy];
    [(PDMeasurement *)v13 setMeasurement:dictionaryCopy];
    [(PDMeasurement *)v13 setGroup:group];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"metric"];
    if (!v14 || (v15 = 0x277CCA000uLL, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(error, @"measurement metric");
LABEL_54:

      goto LABEL_55;
    }

    [(PDMeasurement *)v13 setMetric:v14];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"unit"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(error, @"measurement unit");
LABEL_53:

      goto LABEL_54;
    }

    errorCopy = error;
    [(PDMeasurement *)v13 setUnitString:v16];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"variables"];
    v81 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = handle_malformed_data(error, @"measurement variables");
LABEL_52:

        goto LABEL_53;
      }

      variables = [containerCopy variables];
      v20 = [variables count];

      if (!v20)
      {
        [(PDMeasurement *)v13 setVariables:v18];
LABEL_15:
        [dictionaryCopy objectForKeyedSubscript:@"labels"];
        v83 = v89 = dictionaryCopy;
        if (v83)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24 = handle_malformed_data(errorCopy, @"measurement labels");
LABEL_51:

            goto LABEL_52;
          }

          labels = [containerCopy labels];
          v26 = [labels count];

          v79 = containerCopy;
          if (v26)
          {
            labels2 = [containerCopy labels];
            v28 = [labels2 mutableCopy];
            [(PDMeasurement *)v13 setLabels:v28];
          }

          else
          {
            labels2 = [MEMORY[0x277CBEB38] dictionary];
            [(PDMeasurement *)v13 setLabels:labels2];
          }

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v30 = v83;
          allKeys = [v83 allKeys];
          v87 = [allKeys countByEnumeratingWithState:&v94 objects:v100 count:16];
          if (v87)
          {
            v84 = allKeys;
            v85 = *v95;
            while (2)
            {
              v31 = 0;
              do
              {
                if (*v95 != v85)
                {
                  objc_enumerationMutation(allKeys);
                }

                v32 = *(*(&v94 + 1) + 8 * v31);
                v33 = *(v15 + 3240);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  handle_malformed_data(errorCopy, @"measurement label key");
                  objc_claimAutoreleasedReturnValue();

                  v24 = 0;
                  containerCopy = v79;
                  goto LABEL_51;
                }

                v34 = v15;
                v35 = [v30 objectForKeyedSubscript:v32];
                labels3 = [(PDMeasurement *)v13 labels];
                v37 = [labels3 objectForKeyedSubscript:v32];

                if (v37)
                {
                  [v37 addObject:v35];
                }

                else
                {
                  labels4 = [(PDMeasurement *)v13 labels];
                  [MEMORY[0x277CBEB58] setWithObject:v35];
                  v39 = v14;
                  v41 = v40 = v16;
                  [labels4 setValue:v41 forKey:v32];

                  v16 = v40;
                  v14 = v39;
                  v30 = v83;
                }

                ++v31;
                v15 = v34;
                dictionaryCopy = v89;
                allKeys = v84;
              }

              while (v87 != v31);
              v87 = [v84 countByEnumeratingWithState:&v94 objects:v100 count:16];
              if (v87)
              {
                continue;
              }

              break;
            }
          }

          containerCopy = v79;
        }

        else
        {
          allKeys = [containerCopy labels];
          [(PDMeasurement *)v13 setLabels:allKeys];
        }

        v42 = [dictionaryCopy objectForKeyedSubscript:@"larger_better"];
        if (not_a_number(v42, errorCopy, @"measurement larger_better"))
        {
          v24 = 0;
        }

        else
        {
          v88 = v42;
          v43 = v15;
          if (v42)
          {
            bOOLValue = [v42 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          [(PDMeasurement *)v13 setLargerBetter:bOOLValue, containerCopy, v81];
          v45 = [dictionaryCopy objectForKeyedSubscript:@"value"];
          [(PDMeasurement *)v13 setValue:v45];

          value = [(PDMeasurement *)v13 value];
          v47 = not_a_number(value, errorCopy, @"measurement value");

          if (v47)
          {
            goto LABEL_48;
          }

          v48 = [dictionaryCopy objectForKeyedSubscript:@"samples"];
          [(PDMeasurement *)v13 setSampleCount:v48];

          sampleCount = [(PDMeasurement *)v13 sampleCount];
          v50 = not_a_number(sampleCount, errorCopy, @"measurement samples");

          if (v50)
          {
            goto LABEL_48;
          }

          v51 = [dictionaryCopy objectForKeyedSubscript:@"mean"];
          [(PDMeasurement *)v13 setMean:v51];

          mean = [(PDMeasurement *)v13 mean];
          v53 = not_a_number(mean, errorCopy, @"measurement mean");

          if (v53)
          {
            goto LABEL_48;
          }

          v54 = [dictionaryCopy objectForKeyedSubscript:@"std_dev"];
          [(PDMeasurement *)v13 setStandardDeviation:v54];

          standardDeviation = [(PDMeasurement *)v13 standardDeviation];
          v56 = not_a_number(standardDeviation, errorCopy, @"measurement std_dev");

          if (v56)
          {
            goto LABEL_48;
          }

          v57 = [dictionaryCopy objectForKeyedSubscript:@"minimum"];
          [(PDMeasurement *)v13 setMinimum:v57];

          minimum = [(PDMeasurement *)v13 minimum];
          v59 = not_a_number(minimum, errorCopy, @"measurement minimum");

          if (v59)
          {
            goto LABEL_48;
          }

          v60 = [dictionaryCopy objectForKeyedSubscript:@"maximum"];
          [(PDMeasurement *)v13 setMaximum:v60];

          maximum = [(PDMeasurement *)v13 maximum];
          v62 = not_a_number(maximum, errorCopy, @"measurement maximum");

          if (v62)
          {
LABEL_48:
            v24 = 0;
          }

          else
          {
            v86 = v16;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            measurement = [(PDMeasurement *)v13 measurement];
            v66 = [measurement objectForKeyedSubscript:@"tags"];

            v67 = v66;
            v68 = [v66 countByEnumeratingWithState:&v90 objects:v99 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = *v91;
              do
              {
                for (i = 0; i != v69; ++i)
                {
                  if (*v91 != v70)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v72 = *(*(&v90 + 1) + 8 * i);
                  v73 = *(v43 + 3240);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [*(v43 + 3240) stringWithUTF8String:pdtag_summary];
                    v75 = v74 = v43;
                    v76 = [v72 isEqualToString:v75];

                    if (v76)
                    {
                      [(PDMeasurement *)v13 setSummary:1];
                      v43 = v74;
                      dictionaryCopy = v89;
                    }

                    else
                    {
                      v77 = [*(v74 + 3240) stringWithUTF8String:pdtag_context];
                      v78 = [v72 isEqualToString:v77];

                      v43 = v74;
                      dictionaryCopy = v89;
                      if (v78)
                      {
                        [(PDMeasurement *)v13 setContext:1];
                      }
                    }
                  }
                }

                v69 = [v67 countByEnumeratingWithState:&v90 objects:v99 count:16];
              }

              while (v69);
            }

            v24 = v13;
            v16 = v86;
          }

          containerCopy = v80;
          v42 = v88;
        }

        goto LABEL_51;
      }

      variables2 = [containerCopy variables];
      v22 = [variables2 mutableCopy];
      [(PDMeasurement *)v13 setVariables:v22];

      variables3 = [(PDMeasurement *)v13 variables];
      [variables3 setValuesForKeysWithDictionary:v18];
    }

    else
    {
      variables3 = [containerCopy variables];
      [(PDMeasurement *)v13 setVariables:variables3];
    }

    goto LABEL_15;
  }

  v24 = 0;
LABEL_55:

  v63 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  metric = [(PDMeasurement *)self metric];
  unitString = [(PDMeasurement *)self unitString];
  v6 = [v3 stringWithFormat:@"PDMeasurement: %@ (%@)", metric, unitString];

  return v6;
}

- (BOOL)matchesMetricFilter:(id)filter
{
  filterCopy = filter;
  container = [(PDMeasurement *)self container];
  v6 = strip_container_prefix(container, filterCopy);

  v7 = get_metric_filter_metric(v6);
  metric = [(PDMeasurement *)self metric];
  v9 = [v7 isEqualToString:metric];

  if (v9)
  {
    v10 = get_metric_filter_variables(v6, 0);
    if (v10)
    {
      v11 = [(PDMeasurement *)self matchesVariables:v10 ignoringMissing:0];
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

- (BOOL)matchesVariables:(id)variables ignoringMissing:(BOOL)missing
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  variablesCopy = variables;
  v7 = [variablesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(variablesCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        variables = [(PDMeasurement *)self variables];
        v13 = [variables objectForKeyedSubscript:v11];

        if (!missing && !v13 || v13 && ([variablesCopy objectForKeyedSubscript:v11], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, (v15 & 1) == 0))
        {

          v16 = 0;
          goto LABEL_15;
        }
      }

      v8 = [variablesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)metricFilter
{
  cachedMetricFilter = [(PDMeasurement *)self cachedMetricFilter];

  if (!cachedMetricFilter)
  {
    v4 = [(PDMeasurement *)self metricFilterIgnoringNullableVariables:0];
    [(PDMeasurement *)self setCachedMetricFilter:v4];
  }

  return [(PDMeasurement *)self cachedMetricFilter];
}

- (id)metricFilterIgnoringNullableVariables:(id)variables
{
  v26 = *MEMORY[0x277D85DE8];
  variablesCopy = variables;
  container = [(PDMeasurement *)self container];
  name = [container name];
  v7 = [name mutableCopy];

  metric = [(PDMeasurement *)self metric];
  [v7 appendFormat:@".%@", metric];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  variables = [(PDMeasurement *)self variables];
  allKeys = [variables allKeys];
  v11 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (!variablesCopy || ([variablesCopy containsObject:*(*(&v21 + 1) + 8 * i)] & 1) == 0)
        {
          variables2 = [(PDMeasurement *)self variables];
          v18 = [variables2 objectForKeyedSubscript:v16];
          [v7 appendFormat:@", %@=%@", v16, v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isLike:(id)like
{
  likeCopy = like;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [(PDMeasurement *)self isComparableTo:likeCopy];

  return v5;
}

- (BOOL)isComparableTo:(id)to ignoringNullableVariables:(id)variables
{
  toCopy = to;
  variablesCopy = variables;
  metric = [(PDMeasurement *)self metric];
  metric2 = [toCopy metric];
  if (![metric isEqualToString:metric2])
  {
    v15 = 0;
LABEL_10:

    goto LABEL_11;
  }

  container = [(PDMeasurement *)self container];
  container2 = [toCopy container];
  v12 = [container isComparableTo:container2];

  if (v12)
  {
    if (variablesCopy && [variablesCopy count])
    {
      variables = [(PDMeasurement *)self variables];
      metric = [variables mutableCopy];

      [metric removeObjectsForKeys:variablesCopy];
      variables2 = [toCopy variables];
      metric2 = [variables2 mutableCopy];

      [metric2 removeObjectsForKeys:variablesCopy];
    }

    else
    {
      metric = [(PDMeasurement *)self variables];
      metric2 = [toCopy variables];
    }

    v15 = [metric isEqualToDictionary:metric2];
    goto LABEL_10;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (unint64_t)histogramBucketCount
{
  measurement = [(PDMeasurement *)self measurement];
  v3 = [measurement objectForKeyedSubscript:@"histogram"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[PDBucket alloc] initWithDictionary:v4 error:0];
      v6 = v5;
      if (v5)
      {
        v7 = [(PDBucket *)v5 count]== 0;
        v8 = [v3 count] - v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)enumerateHistogramBucketsWithError:(id *)error usingBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  measurement = [(PDMeasurement *)self measurement];
  v8 = [measurement objectForKeyedSubscript:@"histogram"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 count];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = 0;
        v15 = *v36;
        v16 = v9 - 1;
        v32 = 1;
        obj = v10;
        selfCopy = self;
        v30 = v9 - 1;
        while (2)
        {
          v17 = 0;
          v18 = v16 - v13;
          v31 = v13 + v12;
          v19 = v14;
          do
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v35 + 1) + 8 * v17);
            if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v26 = handle_malformed_data(error, @"histogram bucket");
              v22 = 0;
LABEL_25:

              goto LABEL_26;
            }

            v21 = [[PDBucket alloc] initWithDictionary:v20 error:error];
            v14 = v21;
            v22 = v21 != 0;
            if (!v21)
            {
              goto LABEL_24;
            }

            if (v19)
            {
              if (v18 == v17)
              {
                v32 &= [(PDBucket *)v21 count]!= 0;
              }

              [(PDBucket *)v14 lowerInclusiveBound];
              [(PDBucket *)v19 setUpperBound:?];
              [(PDBucket *)v19 setHasInclusiveUpperBound:0];
              v34 = 0;
              blockCopy[2](blockCopy, v19, &v34);
              if (v34 == 1)
              {
LABEL_24:

                goto LABEL_25;
              }
            }

            ++v17;
            v19 = v14;
          }

          while (v12 != v17);
          v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          v16 = v30;
          v13 = v31;
          if (v12)
          {
            continue;
          }

          break;
        }

        if (v32)
        {
          maximum = [(PDMeasurement *)selfCopy maximum];
          if (maximum)
          {
            maximum2 = [(PDMeasurement *)selfCopy maximum];
            [maximum2 doubleValue];
            [(PDBucket *)v14 setUpperBound:?];
          }

          else
          {
            [(PDBucket *)v14 setUpperBound:1.79769313e308];
          }

          v22 = 1;
          [(PDBucket *)v14 setHasInclusiveUpperBound:1];
          v34 = 0;
          blockCopy[2](blockCopy, v14, &v34);
        }

        else
        {
          v22 = 1;
        }

        v19 = v14;
      }

      else
      {

        v19 = 0;
        v22 = 1;
      }

LABEL_26:
    }

    else
    {
      v25 = handle_malformed_data(error, @"measurement histogram");
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (unint64_t)percentileCount
{
  measurement = [(PDMeasurement *)self measurement];
  v3 = [measurement objectForKeyedSubscript:@"percentiles"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)enumeratePercentilesWithError:(id *)error usingBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  measurement = [(PDMeasurement *)self measurement];
  v8 = [measurement objectForKeyedSubscript:@"percentiles"];

  if (!v8)
  {
    v21 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = handle_malformed_data(error, @"measurement percentiles");
    v21 = 0;
    goto LABEL_27;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {
LABEL_20:
    v21 = 1;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = *v30;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v23 = handle_malformed_data(error, @"measurement percentile");
LABEL_25:
        v21 = 0;
        goto LABEL_26;
      }

      v15 = [v14 objectForKeyedSubscript:@"%"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v24 = handle_malformed_data(error, @"percentile %");
LABEL_24:

        goto LABEL_25;
      }

      v16 = [v14 objectForKeyedSubscript:@"value"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = handle_malformed_data(error, @"percentile value");

        goto LABEL_24;
      }

      v28 = 0;
      [v15 doubleValue];
      v18 = v17;
      [v16 doubleValue];
      blockCopy[2](blockCopy, &v28, v18, v19);
      v20 = v28;

      if (v20)
      {
        goto LABEL_20;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v21 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (PDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end