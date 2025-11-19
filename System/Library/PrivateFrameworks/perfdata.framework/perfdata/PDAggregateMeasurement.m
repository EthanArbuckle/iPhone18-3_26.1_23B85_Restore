@interface PDAggregateMeasurement
- (PDAggregateMeasurement)initWithContainer:(id)a3 metric:(id)a4 unitString:(id)a5;
- (PDMeasurement)measurement;
- (void)dealloc;
- (void)updateWithMeasurement:(id)a3;
@end

@implementation PDAggregateMeasurement

- (PDAggregateMeasurement)initWithContainer:(id)a3 metric:(id)a4 unitString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PDAggregateMeasurement;
  v11 = [(PDAggregateMeasurement *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PDAggregateMeasurement *)v11 setContainer:v8];
    [(PDAggregateMeasurement *)v12 setMetric:v9];
    [(PDAggregateMeasurement *)v12 setUnitString:v10];
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

- (void)updateWithMeasurement:(id)a3
{
  v104 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PDAggregateMeasurement *)self variables];

  v91 = self;
  v93 = v4;
  if (v5)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v6 = [(PDAggregateMeasurement *)self variables];
    v7 = [v6 allKeys];

    v8 = [v7 countByEnumeratingWithState:&v98 objects:v103 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v98 + 1) + 8 * i);
          v13 = [v4 variables];
          v14 = [v13 objectForKeyedSubscript:v12];
          v15 = [(PDAggregateMeasurement *)self variables];
          v16 = [v15 objectForKeyedSubscript:v12];
          v17 = [v14 isEqual:v16];

          self = v91;
          if ((v17 & 1) == 0)
          {
            v18 = [(PDAggregateMeasurement *)v91 variables];
            [v18 removeObjectForKey:v12];
          }

          v4 = v93;
        }

        v9 = [v7 countByEnumeratingWithState:&v98 objects:v103 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v19 = [v4 variables];
    v20 = [v19 mutableCopy];
    [(PDAggregateMeasurement *)self setVariables:v20];
  }

  v21 = [(PDAggregateMeasurement *)self labels];

  if (!v21)
  {
    v22 = [MEMORY[0x277CBEB38] dictionary];
    [(PDAggregateMeasurement *)self setLabels:v22];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v23 = [v4 labels];
  v24 = [v23 allKeys];

  v25 = v24;
  v26 = [v24 countByEnumeratingWithState:&v94 objects:v102 count:16];
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
        v31 = [(PDAggregateMeasurement *)self labels];
        v32 = [v31 objectForKeyedSubscript:v30];

        if (v32)
        {
          v33 = [v4 labels];
          v34 = [v33 objectForKeyedSubscript:v30];
          [v32 unionSet:v34];
        }

        else
        {
          v33 = [(PDAggregateMeasurement *)self labels];
          v35 = MEMORY[0x277CBEB58];
          v34 = [v4 labels];
          v36 = [v34 objectForKeyedSubscript:v30];
          v37 = [v35 setWithSet:v36];
          [v33 setValue:v37 forKey:v30];

          self = v92;
          v4 = v93;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v27);
  }

  v38 = [v4 value];

  if (v38)
  {
    v39 = [(PDAggregateMeasurement *)self values_mean];
    v40 = [v4 value];
    [v40 doubleValue];
    v41 = v39->var2 + 1;
    v43 = v42 - v39->var0;
    v44 = v39->var0 + v43 / v41;
    v45 = v39->var1 + v43 * (v42 - v44);
    v39->var0 = v44;
    v39->var1 = v45;
    v39->var2 = v41;

    v46 = [v4 value];
    [v46 doubleValue];
    v48 = v47;
    [(PDAggregateMeasurement *)self min];
    v50 = v49;

    if (v48 < v50)
    {
      v51 = [v4 value];
      [v51 doubleValue];
      [(PDAggregateMeasurement *)self setMin:?];
    }

    v52 = [v4 value];
    [v52 doubleValue];
    v54 = v53;
    [(PDAggregateMeasurement *)self max];
    v56 = v55;

    if (v54 > v56)
    {
      v57 = [v4 value];
      [v57 doubleValue];
      [(PDAggregateMeasurement *)self setMax:?];
    }

    [(PDAggregateMeasurement *)self setSamples:[(PDAggregateMeasurement *)self samples]+ 1];
  }

  else
  {
    v58 = [v4 sampleCount];

    if (v58)
    {
      v59 = [v4 mean];
      if (v59)
      {
        v60 = v59;
        v61 = [v4 standardDeviation];

        if (v61)
        {
          v62 = [(PDAggregateMeasurement *)self stats_mean];
          v63 = [v4 sampleCount];
          v64 = [v63 unsignedIntegerValue];
          v65 = [v4 mean];
          [v65 doubleValue];
          v67 = v66;
          v68 = [v4 standardDeviation];
          [v68 doubleValue];
          v69 = vdupq_n_s64(1uLL);
          v69.i64[0] = v64;
          *&v62->var2 = vaddq_s64(*&v62->var2, v69);
          v69.i64[0] = *&v62->var1.var0;
          v71 = v70 * v70 * (v64 - 1) - v62->var1.var1;
          v62->var1.var0 = *v69.i64 + v71;
          v62->var1.var1 = *v69.i64 + v71 - *v69.i64 - v71;
          v72 = v67 * v64 - v62->var0.var1;
          v73 = v62->var0.var0 + v72;
          v74 = v73 - v62->var0.var0 - v72;
          v62->var0.var0 = v73;
          v62->var0.var1 = v74;
        }
      }

      v75 = [v4 minimum];

      if (v75)
      {
        v76 = [v4 minimum];
        [v76 doubleValue];
        v78 = v77;
        [(PDAggregateMeasurement *)self min];
        v80 = v79;

        if (v78 < v80)
        {
          v81 = [v4 minimum];
          [v81 doubleValue];
          [(PDAggregateMeasurement *)self setMin:?];
        }
      }

      else
      {
        [(PDAggregateMeasurement *)self setValidMin:0];
      }

      v82 = [v4 maximum];

      if (v82)
      {
        v83 = [v4 maximum];
        [v83 doubleValue];
        v85 = v84;
        [(PDAggregateMeasurement *)self max];
        v87 = v86;

        if (v85 > v87)
        {
          v88 = [v4 maximum];
          [v88 doubleValue];
          [(PDAggregateMeasurement *)self setMax:?];
        }
      }

      else
      {
        [(PDAggregateMeasurement *)self setValidMax:0];
      }

      v89 = [v4 sampleCount];
      -[PDAggregateMeasurement setSamples:](self, "setSamples:", -[PDAggregateMeasurement samples](self, "samples") + [v89 unsignedIntegerValue]);
    }
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (PDMeasurement)measurement
{
  v3 = objc_alloc_init(PDMeasurement);
  v4 = [(PDAggregateMeasurement *)self container];
  [(PDMeasurement *)v3 setContainer:v4];

  v5 = [(PDAggregateMeasurement *)self metric];
  [(PDMeasurement *)v3 setMetric:v5];

  v6 = [(PDAggregateMeasurement *)self unitString];
  [(PDMeasurement *)v3 setUnitString:v6];

  v7 = [(PDAggregateMeasurement *)self variables];
  [(PDMeasurement *)v3 setVariables:v7];

  v8 = [(PDAggregateMeasurement *)self labels];
  [(PDMeasurement *)v3 setLabels:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PDAggregateMeasurement samples](self, "samples")}];
  [(PDMeasurement *)v3 setSampleCount:v9];

  if ([(PDAggregateMeasurement *)self stats_mean][40] && [(PDAggregateMeasurement *)self values_mean][16])
  {
    v10 = [(PDAggregateMeasurement *)self stats_mean][40];
    v11 = [(PDAggregateMeasurement *)self stats_mean];
    v12 = v11->var0.var0 / v11->var2;
    v13 = [(PDAggregateMeasurement *)self stats_mean];
    v14 = sqrt(v13->var1.var0 / (v13->var2 - v13->var3));
    v15 = v14 * v14 * (v10 - 1);
    v16 = 0.0;
    v17 = v15 + 0.0;
    v18 = v15 + 0.0 - v15;
    v19 = v12 * v10;
    v20 = v19 + 0.0;
    v21 = v19 + 0.0 - v19;
    v22 = [(PDAggregateMeasurement *)self values_mean][16];
    v23 = *[(PDAggregateMeasurement *)self values_mean];
    v24 = [(PDAggregateMeasurement *)self values_mean];
    var2 = v24->var2;
    if (var2 >= 2)
    {
      v16 = sqrt(v24->var1 / (var2 - 1));
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
    v31 = [(PDAggregateMeasurement *)self stats_mean];
    v32 = [v30 numberWithDouble:v31->var0.var0 / v31->var2];
    [(PDMeasurement *)v3 setMean:v32];

    v33 = MEMORY[0x277CCABB0];
    v34 = [(PDAggregateMeasurement *)self stats_mean];
    var0 = v34->var1.var0;
    v36 = v34->var2 - v34->var3;
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
    v51 = [(PDAggregateMeasurement *)self values_mean];
    v52 = v51->var2;
    v29 = 0.0;
    if (v52 < 2)
    {
      goto LABEL_9;
    }

    var0 = v51->var1;
    v36 = v52 - 1;
  }

  v29 = sqrt(var0 / v36);
LABEL_9:
  v28 = v33;
LABEL_10:
  v37 = [v28 numberWithDouble:v29];
  [(PDMeasurement *)v3 setStandardDeviation:v37];

  v38 = [(PDMeasurement *)v3 sampleCount];
  if (v38)
  {
    v39 = v38;
    v40 = [(PDAggregateMeasurement *)self validMin];

    if (v40)
    {
      v41 = MEMORY[0x277CCABB0];
      [(PDAggregateMeasurement *)self min];
      v42 = [v41 numberWithDouble:?];
      [(PDMeasurement *)v3 setMinimum:v42];
    }
  }

  v43 = [(PDMeasurement *)v3 sampleCount];
  if (v43)
  {
    v44 = v43;
    v45 = [(PDAggregateMeasurement *)self validMax];

    if (v45)
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