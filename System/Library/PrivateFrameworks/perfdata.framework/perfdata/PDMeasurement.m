@interface PDMeasurement
- (BOOL)enumerateHistogramBucketsWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)enumeratePercentilesWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)isComparableTo:(id)a3 ignoringNullableVariables:(id)a4;
- (BOOL)isLike:(id)a3;
- (BOOL)matchesMetricFilter:(id)a3;
- (BOOL)matchesVariables:(id)a3 ignoringMissing:(BOOL)a4;
- (PDContainer)container;
- (PDMeasurement)initWithContainer:(id)a3 dictionary:(id)a4 group:(unint64_t)a5 error:(id *)a6;
- (id)description;
- (id)metricFilter;
- (id)metricFilterIgnoringNullableVariables:(id)a3;
- (unint64_t)histogramBucketCount;
- (unint64_t)percentileCount;
@end

@implementation PDMeasurement

- (PDMeasurement)initWithContainer:(id)a3 dictionary:(id)a4 group:(unint64_t)a5 error:(id *)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v98.receiver = self;
  v98.super_class = PDMeasurement;
  v12 = [(PDMeasurement *)&v98 init];
  v13 = v12;
  if (v12)
  {
    [(PDMeasurement *)v12 setContainer:v10];
    [(PDMeasurement *)v13 setMeasurement:v11];
    [(PDMeasurement *)v13 setGroup:a5];
    v14 = [v11 objectForKeyedSubscript:@"metric"];
    if (!v14 || (v15 = 0x277CCA000uLL, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(a6, @"measurement metric");
LABEL_54:

      goto LABEL_55;
    }

    [(PDMeasurement *)v13 setMetric:v14];
    v16 = [v11 objectForKeyedSubscript:@"unit"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = handle_malformed_data(a6, @"measurement unit");
LABEL_53:

      goto LABEL_54;
    }

    v82 = a6;
    [(PDMeasurement *)v13 setUnitString:v16];
    v17 = [v11 objectForKeyedSubscript:@"variables"];
    v81 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = handle_malformed_data(a6, @"measurement variables");
LABEL_52:

        goto LABEL_53;
      }

      v19 = [v10 variables];
      v20 = [v19 count];

      if (!v20)
      {
        [(PDMeasurement *)v13 setVariables:v18];
LABEL_15:
        [v11 objectForKeyedSubscript:@"labels"];
        v83 = v89 = v11;
        if (v83)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24 = handle_malformed_data(v82, @"measurement labels");
LABEL_51:

            goto LABEL_52;
          }

          v25 = [v10 labels];
          v26 = [v25 count];

          v79 = v10;
          if (v26)
          {
            v27 = [v10 labels];
            v28 = [v27 mutableCopy];
            [(PDMeasurement *)v13 setLabels:v28];
          }

          else
          {
            v27 = [MEMORY[0x277CBEB38] dictionary];
            [(PDMeasurement *)v13 setLabels:v27];
          }

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v30 = v83;
          v29 = [v83 allKeys];
          v87 = [v29 countByEnumeratingWithState:&v94 objects:v100 count:16];
          if (v87)
          {
            v84 = v29;
            v85 = *v95;
            while (2)
            {
              v31 = 0;
              do
              {
                if (*v95 != v85)
                {
                  objc_enumerationMutation(v29);
                }

                v32 = *(*(&v94 + 1) + 8 * v31);
                v33 = *(v15 + 3240);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  handle_malformed_data(v82, @"measurement label key");
                  objc_claimAutoreleasedReturnValue();

                  v24 = 0;
                  v10 = v79;
                  goto LABEL_51;
                }

                v34 = v15;
                v35 = [v30 objectForKeyedSubscript:v32];
                v36 = [(PDMeasurement *)v13 labels];
                v37 = [v36 objectForKeyedSubscript:v32];

                if (v37)
                {
                  [v37 addObject:v35];
                }

                else
                {
                  v38 = [(PDMeasurement *)v13 labels];
                  [MEMORY[0x277CBEB58] setWithObject:v35];
                  v39 = v14;
                  v41 = v40 = v16;
                  [v38 setValue:v41 forKey:v32];

                  v16 = v40;
                  v14 = v39;
                  v30 = v83;
                }

                ++v31;
                v15 = v34;
                v11 = v89;
                v29 = v84;
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

          v10 = v79;
        }

        else
        {
          v29 = [v10 labels];
          [(PDMeasurement *)v13 setLabels:v29];
        }

        v42 = [v11 objectForKeyedSubscript:@"larger_better"];
        if (not_a_number(v42, v82, @"measurement larger_better"))
        {
          v24 = 0;
        }

        else
        {
          v88 = v42;
          v43 = v15;
          if (v42)
          {
            v44 = [v42 BOOLValue];
          }

          else
          {
            v44 = 0;
          }

          [(PDMeasurement *)v13 setLargerBetter:v44, v10, v81];
          v45 = [v11 objectForKeyedSubscript:@"value"];
          [(PDMeasurement *)v13 setValue:v45];

          v46 = [(PDMeasurement *)v13 value];
          v47 = not_a_number(v46, v82, @"measurement value");

          if (v47)
          {
            goto LABEL_48;
          }

          v48 = [v11 objectForKeyedSubscript:@"samples"];
          [(PDMeasurement *)v13 setSampleCount:v48];

          v49 = [(PDMeasurement *)v13 sampleCount];
          v50 = not_a_number(v49, v82, @"measurement samples");

          if (v50)
          {
            goto LABEL_48;
          }

          v51 = [v11 objectForKeyedSubscript:@"mean"];
          [(PDMeasurement *)v13 setMean:v51];

          v52 = [(PDMeasurement *)v13 mean];
          v53 = not_a_number(v52, v82, @"measurement mean");

          if (v53)
          {
            goto LABEL_48;
          }

          v54 = [v11 objectForKeyedSubscript:@"std_dev"];
          [(PDMeasurement *)v13 setStandardDeviation:v54];

          v55 = [(PDMeasurement *)v13 standardDeviation];
          v56 = not_a_number(v55, v82, @"measurement std_dev");

          if (v56)
          {
            goto LABEL_48;
          }

          v57 = [v11 objectForKeyedSubscript:@"minimum"];
          [(PDMeasurement *)v13 setMinimum:v57];

          v58 = [(PDMeasurement *)v13 minimum];
          v59 = not_a_number(v58, v82, @"measurement minimum");

          if (v59)
          {
            goto LABEL_48;
          }

          v60 = [v11 objectForKeyedSubscript:@"maximum"];
          [(PDMeasurement *)v13 setMaximum:v60];

          v61 = [(PDMeasurement *)v13 maximum];
          v62 = not_a_number(v61, v82, @"measurement maximum");

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
            v65 = [(PDMeasurement *)v13 measurement];
            v66 = [v65 objectForKeyedSubscript:@"tags"];

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
                      v11 = v89;
                    }

                    else
                    {
                      v77 = [*(v74 + 3240) stringWithUTF8String:pdtag_context];
                      v78 = [v72 isEqualToString:v77];

                      v43 = v74;
                      v11 = v89;
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

          v10 = v80;
          v42 = v88;
        }

        goto LABEL_51;
      }

      v21 = [v10 variables];
      v22 = [v21 mutableCopy];
      [(PDMeasurement *)v13 setVariables:v22];

      v23 = [(PDMeasurement *)v13 variables];
      [v23 setValuesForKeysWithDictionary:v18];
    }

    else
    {
      v23 = [v10 variables];
      [(PDMeasurement *)v13 setVariables:v23];
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
  v4 = [(PDMeasurement *)self metric];
  v5 = [(PDMeasurement *)self unitString];
  v6 = [v3 stringWithFormat:@"PDMeasurement: %@ (%@)", v4, v5];

  return v6;
}

- (BOOL)matchesMetricFilter:(id)a3
{
  v4 = a3;
  v5 = [(PDMeasurement *)self container];
  v6 = strip_container_prefix(v5, v4);

  v7 = get_metric_filter_metric(v6);
  v8 = [(PDMeasurement *)self metric];
  v9 = [v7 isEqualToString:v8];

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

- (BOOL)matchesVariables:(id)a3 ignoringMissing:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(PDMeasurement *)self variables];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (!a4 && !v13 || v13 && ([v6 objectForKeyedSubscript:v11], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, (v15 & 1) == 0))
        {

          v16 = 0;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v3 = [(PDMeasurement *)self cachedMetricFilter];

  if (!v3)
  {
    v4 = [(PDMeasurement *)self metricFilterIgnoringNullableVariables:0];
    [(PDMeasurement *)self setCachedMetricFilter:v4];
  }

  return [(PDMeasurement *)self cachedMetricFilter];
}

- (id)metricFilterIgnoringNullableVariables:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PDMeasurement *)self container];
  v6 = [v5 name];
  v7 = [v6 mutableCopy];

  v8 = [(PDMeasurement *)self metric];
  [v7 appendFormat:@".%@", v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(PDMeasurement *)self variables];
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

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
        if (!v4 || ([v4 containsObject:*(*(&v21 + 1) + 8 * i)] & 1) == 0)
        {
          v17 = [(PDMeasurement *)self variables];
          v18 = [v17 objectForKeyedSubscript:v16];
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

- (BOOL)isLike:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [(PDMeasurement *)self isComparableTo:v4];

  return v5;
}

- (BOOL)isComparableTo:(id)a3 ignoringNullableVariables:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDMeasurement *)self metric];
  v9 = [v6 metric];
  if (![v8 isEqualToString:v9])
  {
    v15 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v10 = [(PDMeasurement *)self container];
  v11 = [v6 container];
  v12 = [v10 isComparableTo:v11];

  if (v12)
  {
    if (v7 && [v7 count])
    {
      v13 = [(PDMeasurement *)self variables];
      v8 = [v13 mutableCopy];

      [v8 removeObjectsForKeys:v7];
      v14 = [v6 variables];
      v9 = [v14 mutableCopy];

      [v9 removeObjectsForKeys:v7];
    }

    else
    {
      v8 = [(PDMeasurement *)self variables];
      v9 = [v6 variables];
    }

    v15 = [v8 isEqualToDictionary:v9];
    goto LABEL_10;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (unint64_t)histogramBucketCount
{
  v2 = [(PDMeasurement *)self measurement];
  v3 = [v2 objectForKeyedSubscript:@"histogram"];

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

- (BOOL)enumerateHistogramBucketsWithError:(id *)a3 usingBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PDMeasurement *)self measurement];
  v8 = [v7 objectForKeyedSubscript:@"histogram"];

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
        v29 = self;
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
              v26 = handle_malformed_data(a3, @"histogram bucket");
              v22 = 0;
LABEL_25:

              goto LABEL_26;
            }

            v21 = [[PDBucket alloc] initWithDictionary:v20 error:a3];
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
              v6[2](v6, v19, &v34);
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
          v23 = [(PDMeasurement *)v29 maximum];
          if (v23)
          {
            v24 = [(PDMeasurement *)v29 maximum];
            [v24 doubleValue];
            [(PDBucket *)v14 setUpperBound:?];
          }

          else
          {
            [(PDBucket *)v14 setUpperBound:1.79769313e308];
          }

          v22 = 1;
          [(PDBucket *)v14 setHasInclusiveUpperBound:1];
          v34 = 0;
          v6[2](v6, v14, &v34);
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
      v25 = handle_malformed_data(a3, @"measurement histogram");
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
  v2 = [(PDMeasurement *)self measurement];
  v3 = [v2 objectForKeyedSubscript:@"percentiles"];

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

- (BOOL)enumeratePercentilesWithError:(id *)a3 usingBlock:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PDMeasurement *)self measurement];
  v8 = [v7 objectForKeyedSubscript:@"percentiles"];

  if (!v8)
  {
    v21 = 1;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = handle_malformed_data(a3, @"measurement percentiles");
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
        v23 = handle_malformed_data(a3, @"measurement percentile");
LABEL_25:
        v21 = 0;
        goto LABEL_26;
      }

      v15 = [v14 objectForKeyedSubscript:@"%"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v24 = handle_malformed_data(a3, @"percentile %");
LABEL_24:

        goto LABEL_25;
      }

      v16 = [v14 objectForKeyedSubscript:@"value"];
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v25 = handle_malformed_data(a3, @"percentile value");

        goto LABEL_24;
      }

      v28 = 0;
      [v15 doubleValue];
      v18 = v17;
      [v16 doubleValue];
      v6[2](v6, &v28, v18, v19);
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