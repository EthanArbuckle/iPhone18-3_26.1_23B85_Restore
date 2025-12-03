@interface PDAggregateMeasurement
- (PDAggregateMeasurement)initWithContainer:(id)container metric:(id)metric unitString:(id)string;
- (PDMeasurement)measurement;
- (void)dealloc;
- (void)updateWithMeasurement:(id)measurement;
@end

@implementation PDAggregateMeasurement

- (PDAggregateMeasurement)initWithContainer:(id)container metric:(id)metric unitString:(id)string
{
  containerCopy = container;
  metricCopy = metric;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = PDAggregateMeasurement;
  v11 = [(PDAggregateMeasurement *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PDAggregateMeasurement *)v11 setContainer:containerCopy];
    [(PDAggregateMeasurement *)v12 setMetric:metricCopy];
    [(PDAggregateMeasurement *)v12 setUnitString:stringCopy];
    [(PDAggregateMeasurement *)v12 setValues_mean:malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL)];
    [(PDAggregateMeasurement *)v12 setStats_mean:malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL)];
    [(PDAggregateMeasurement *)v12 setValidMin:1];
    [(PDAggregateMeasurement *)v12 setMin:1.79769313e308];
    [(PDAggregateMeasurement *)v12 setValidMax:1];
    [(PDAggregateMeasurement *)v12 setMax:2.22507386e-308];
    v13 = v12;
  }

  return v12;
}

- (void)dealloc
{
  free([(PDAggregateMeasurement *)self values_mean]);
  free([(PDAggregateMeasurement *)self stats_mean]);
  v3.receiver = self;
  v3.super_class = PDAggregateMeasurement;
  [(PDAggregateMeasurement *)&v3 dealloc];
}

- (void)updateWithMeasurement:(id)measurement
{
  v104 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  variables = [(PDAggregateMeasurement *)self variables];

  selfCopy = self;
  v93 = measurementCopy;
  if (variables)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    variables2 = [(PDAggregateMeasurement *)self variables];
    allKeys = [variables2 allKeys];

    v8 = [allKeys countByEnumeratingWithState:&v98 objects:v103 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v99;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v99 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v98 + 1) + 8 * i);
          variables3 = [measurementCopy variables];
          v14 = [variables3 objectForKeyedSubscript:v12];
          variables4 = [(PDAggregateMeasurement *)self variables];
          v16 = [variables4 objectForKeyedSubscript:v12];
          v17 = [v14 isEqual:v16];

          self = selfCopy;
          if ((v17 & 1) == 0)
          {
            variables5 = [(PDAggregateMeasurement *)selfCopy variables];
            [variables5 removeObjectForKey:v12];
          }

          measurementCopy = v93;
        }

        v9 = [allKeys countByEnumeratingWithState:&v98 objects:v103 count:16];
      }

      while (v9);
    }
  }

  else
  {
    variables6 = [measurementCopy variables];
    v20 = [variables6 mutableCopy];
    [(PDAggregateMeasurement *)self setVariables:v20];
  }

  labels = [(PDAggregateMeasurement *)self labels];

  if (!labels)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(PDAggregateMeasurement *)self setLabels:dictionary];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  labels2 = [measurementCopy labels];
  allKeys2 = [labels2 allKeys];

  v25 = allKeys2;
  v26 = [allKeys2 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v95;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v95 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v94 + 1) + 8 * j);
        labels3 = [(PDAggregateMeasurement *)self labels];
        v32 = [labels3 objectForKeyedSubscript:v30];

        if (v32)
        {
          labels4 = [measurementCopy labels];
          labels5 = [labels4 objectForKeyedSubscript:v30];
          [v32 unionSet:labels5];
        }

        else
        {
          labels4 = [(PDAggregateMeasurement *)self labels];
          v35 = MEMORY[0x277CBEB58];
          labels5 = [measurementCopy labels];
          v36 = [labels5 objectForKeyedSubscript:v30];
          v37 = [v35 setWithSet:v36];
          [labels4 setValue:v37 forKey:v30];

          self = v92;
          measurementCopy = v93;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v27);
  }

  value = [measurementCopy value];

  if (value)
  {
    values_mean = [(PDAggregateMeasurement *)self values_mean];
    value2 = [measurementCopy value];
    [value2 doubleValue];
    v41 = values_mean->var2 + 1;
    v43 = v42 - values_mean->var0;
    v44 = values_mean->var0 + v43 / v41;
    v45 = values_mean->var1 + v43 * (v42 - v44);
    values_mean->var0 = v44;
    values_mean->var1 = v45;
    values_mean->var2 = v41;

    value3 = [measurementCopy value];
    [value3 doubleValue];
    v48 = v47;
    [(PDAggregateMeasurement *)self min];
    v50 = v49;

    if (v48 < v50)
    {
      value4 = [measurementCopy value];
      [value4 doubleValue];
      [(PDAggregateMeasurement *)self setMin:?];
    }

    value5 = [measurementCopy value];
    [value5 doubleValue];
    v54 = v53;
    [(PDAggregateMeasurement *)self max];
    v56 = v55;

    if (v54 > v56)
    {
      value6 = [measurementCopy value];
      [value6 doubleValue];
      [(PDAggregateMeasurement *)self setMax:?];
    }

    [(PDAggregateMeasurement *)self setSamples:[(PDAggregateMeasurement *)self samples]+ 1];
  }

  else
  {
    sampleCount = [measurementCopy sampleCount];

    if (sampleCount)
    {
      mean = [measurementCopy mean];
      if (mean)
      {
        v60 = mean;
        standardDeviation = [measurementCopy standardDeviation];

        if (standardDeviation)
        {
          stats_mean = [(PDAggregateMeasurement *)self stats_mean];
          sampleCount2 = [measurementCopy sampleCount];
          unsignedIntegerValue = [sampleCount2 unsignedIntegerValue];
          mean2 = [measurementCopy mean];
          [mean2 doubleValue];
          v67 = v66;
          standardDeviation2 = [measurementCopy standardDeviation];
          [standardDeviation2 doubleValue];
          v69 = vdupq_n_s64(1uLL);
          v69.i64[0] = unsignedIntegerValue;
          *&stats_mean->var2 = vaddq_s64(*&stats_mean->var2, v69);
          v69.i64[0] = *&stats_mean->var1.var0;
          v71 = v70 * v70 * (unsignedIntegerValue - 1) - stats_mean->var1.var1;
          stats_mean->var1.var0 = *v69.i64 + v71;
          stats_mean->var1.var1 = *v69.i64 + v71 - *v69.i64 - v71;
          v72 = v67 * unsignedIntegerValue - stats_mean->var0.var1;
          v73 = stats_mean->var0.var0 + v72;
          v74 = v73 - stats_mean->var0.var0 - v72;
          stats_mean->var0.var0 = v73;
          stats_mean->var0.var1 = v74;
        }
      }

      minimum = [measurementCopy minimum];

      if (minimum)
      {
        minimum2 = [measurementCopy minimum];
        [minimum2 doubleValue];
        v78 = v77;
        [(PDAggregateMeasurement *)self min];
        v80 = v79;

        if (v78 < v80)
        {
          minimum3 = [measurementCopy minimum];
          [minimum3 doubleValue];
          [(PDAggregateMeasurement *)self setMin:?];
        }
      }

      else
      {
        [(PDAggregateMeasurement *)self setValidMin:0];
      }

      maximum = [measurementCopy maximum];

      if (maximum)
      {
        maximum2 = [measurementCopy maximum];
        [maximum2 doubleValue];
        v85 = v84;
        [(PDAggregateMeasurement *)self max];
        v87 = v86;

        if (v85 > v87)
        {
          maximum3 = [measurementCopy maximum];
          [maximum3 doubleValue];
          [(PDAggregateMeasurement *)self setMax:?];
        }
      }

      else
      {
        [(PDAggregateMeasurement *)self setValidMax:0];
      }

      sampleCount3 = [measurementCopy sampleCount];
      -[PDAggregateMeasurement setSamples:](self, "setSamples:", -[PDAggregateMeasurement samples](self, "samples") + [sampleCount3 unsignedIntegerValue]);
    }
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (PDMeasurement)measurement
{
  v3 = objc_alloc_init(PDMeasurement);
  container = [(PDAggregateMeasurement *)self container];
  [(PDMeasurement *)v3 setContainer:container];

  metric = [(PDAggregateMeasurement *)self metric];
  [(PDMeasurement *)v3 setMetric:metric];

  unitString = [(PDAggregateMeasurement *)self unitString];
  [(PDMeasurement *)v3 setUnitString:unitString];

  variables = [(PDAggregateMeasurement *)self variables];
  [(PDMeasurement *)v3 setVariables:variables];

  labels = [(PDAggregateMeasurement *)self labels];
  [(PDMeasurement *)v3 setLabels:labels];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PDAggregateMeasurement samples](self, "samples")}];
  [(PDMeasurement *)v3 setSampleCount:v9];

  if ([(PDAggregateMeasurement *)self stats_mean][40] && [(PDAggregateMeasurement *)self values_mean][16])
  {
    v10 = [(PDAggregateMeasurement *)self stats_mean][40];
    stats_mean = [(PDAggregateMeasurement *)self stats_mean];
    v12 = stats_mean->var0.var0 / stats_mean->var2;
    stats_mean2 = [(PDAggregateMeasurement *)self stats_mean];
    v14 = sqrt(stats_mean2->var1.var0 / (stats_mean2->var2 - stats_mean2->var3));
    v15 = v14 * v14 * (v10 - 1);
    v16 = 0.0;
    v17 = v15 + 0.0;
    v18 = v15 + 0.0 - v15;
    v19 = v12 * v10;
    v20 = v19 + 0.0;
    v21 = v19 + 0.0 - v19;
    v22 = [(PDAggregateMeasurement *)self values_mean][16];
    v23 = *[(PDAggregateMeasurement *)self values_mean];
    values_mean = [(PDAggregateMeasurement *)self values_mean];
    var2 = values_mean->var2;
    if (var2 >= 2)
    {
      v16 = sqrt(values_mean->var1 / (var2 - 1));
    }

    v26 = v22 + v10;
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:(v20 + v23 * v22 - v21) / (v22 + v10)];
    [(PDMeasurement *)v3 setMean:v27];

    v28 = MEMORY[0x277CCABB0];
    v29 = sqrt((v17 + v16 * v16 * (v22 - 1) - v18) / (v26 - 2));
    goto LABEL_10;
  }

  if ([(PDAggregateMeasurement *)self stats_mean][40])
  {
    v30 = MEMORY[0x277CCABB0];
    stats_mean3 = [(PDAggregateMeasurement *)self stats_mean];
    v32 = [v30 numberWithDouble:stats_mean3->var0.var0 / stats_mean3->var2];
    [(PDMeasurement *)v3 setMean:v32];

    v33 = MEMORY[0x277CCABB0];
    stats_mean4 = [(PDAggregateMeasurement *)self stats_mean];
    var0 = stats_mean4->var1.var0;
    v36 = stats_mean4->var2 - stats_mean4->var3;
  }

  else
  {
    if (![(PDAggregateMeasurement *)self values_mean][16])
    {
      v48 = 0;
      goto LABEL_17;
    }

    v50 = [MEMORY[0x277CCABB0] numberWithDouble:{*-[PDAggregateMeasurement values_mean](self, "values_mean")}];
    [(PDMeasurement *)v3 setMean:v50];

    v33 = MEMORY[0x277CCABB0];
    values_mean2 = [(PDAggregateMeasurement *)self values_mean];
    v52 = values_mean2->var2;
    v29 = 0.0;
    if (v52 < 2)
    {
      goto LABEL_9;
    }

    var0 = values_mean2->var1;
    v36 = v52 - 1;
  }

  v29 = sqrt(var0 / v36);
LABEL_9:
  v28 = v33;
LABEL_10:
  v37 = [v28 numberWithDouble:v29];
  [(PDMeasurement *)v3 setStandardDeviation:v37];

  sampleCount = [(PDMeasurement *)v3 sampleCount];
  if (sampleCount)
  {
    v39 = sampleCount;
    validMin = [(PDAggregateMeasurement *)self validMin];

    if (validMin)
    {
      v41 = MEMORY[0x277CCABB0];
      [(PDAggregateMeasurement *)self min];
      v42 = [v41 numberWithDouble:?];
      [(PDMeasurement *)v3 setMinimum:v42];
    }
  }

  sampleCount2 = [(PDMeasurement *)v3 sampleCount];
  if (sampleCount2)
  {
    v44 = sampleCount2;
    validMax = [(PDAggregateMeasurement *)self validMax];

    if (validMax)
    {
      v46 = MEMORY[0x277CCABB0];
      [(PDAggregateMeasurement *)self max];
      v47 = [v46 numberWithDouble:?];
      [(PDMeasurement *)v3 setMaximum:v47];
    }
  }

  v48 = v3;
LABEL_17:

  return v48;
}

@end