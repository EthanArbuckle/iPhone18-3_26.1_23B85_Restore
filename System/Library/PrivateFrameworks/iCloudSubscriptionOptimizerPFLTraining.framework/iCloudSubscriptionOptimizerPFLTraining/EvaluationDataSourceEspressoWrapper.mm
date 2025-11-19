@interface EvaluationDataSourceEspressoWrapper
- (EvaluationDataSourceEspressoWrapper)initWithEvaluatorDataSource:(id)a3;
- (id)dataProcessAtIndex:(int)a3;
- (int)numberOfDataPoints;
@end

@implementation EvaluationDataSourceEspressoWrapper

- (EvaluationDataSourceEspressoWrapper)initWithEvaluatorDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EvaluationDataSourceEspressoWrapper;
  v6 = [(EvaluationDataSourceEspressoWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = v7;
  }

  return v7;
}

- (id)dataProcessAtIndex:(int)a3
{
  v78[2] = *MEMORY[0x277D85DE8];
  v4 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
  v5 = [v4 batchSize];

  v6 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
  v7 = [v6 modelFeatures];

  v57 = v7;
  v58 = [v7 componentsSeparatedByString:{@", "}];
  v61 = [v58 count];
  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v78[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v61];
  v78[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v70 = 0;
  v12 = [v8 initWithShape:v11 dataType:65600 error:&v70];
  v13 = v70;

  v14 = objc_alloc(MEMORY[0x277CBFF48]);
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v77[0] = v15;
  v77[1] = &unk_2884B2378;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v69 = v13;
  v62 = [v14 initWithShape:v16 dataType:65600 error:&v69];
  v59 = v69;

  v64 = objc_alloc_init(MEMORY[0x277D07750]);
  if (v5 >= 1)
  {
    v17 = 0;
    v63 = v5 * a3;
    v60 = v5;
    do
    {
      v18 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
      v66 = [v18 dataForRecord:v17 + v63];

      v19 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
      v20 = [v19 modelFeatures];
      v21 = [v20 length] == 0;

      if (v21)
      {
        v24 = v66;
      }

      else
      {
        v22 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
        v23 = [v22 extractFeatureDataForRecord:v17 + v63];

        v24 = v23;
      }

      v67 = v24;
      v25 = [v24 length];
      v26 = v67;
      [v64 setData:objc_msgSend(v67 size:"bytes") forKey:v25 >> 2 freeWhenDone:{@"data", 0}];
      v27 = [v64 bufferWithKey:@"data"];
      if (v61 >= 1)
      {
        v29 = v27;
        v30 = 0;
        do
        {
          LODWORD(v28) = *(v29 + 4 * v30);
          v31 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
          v32 = [MEMORY[0x277CCABB0] numberWithInt:v17];
          v76[0] = v32;
          v33 = [MEMORY[0x277CCABB0] numberWithInt:v30];
          v76[1] = v33;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
          [v12 setObject:v31 forKeyedSubscript:v34];

          ++v30;
        }

        while ((v61 & 0x7FFFFFFF) != v30);
      }

      v35 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
      v36 = [v35 classificationForRecord:v17 + v63];

      v37 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
      v38 = [v37 vectorForClassification:v36];

      for (i = 0; i < [v38 count]; ++i)
      {
        v40 = [v38 objectAtIndex:i];
        [v40 doubleValue];
        v42 = v41 == 0.9999;

        if (v42)
        {
          LODWORD(v36) = i;
          break;
        }
      }

      v43 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      *v43 = v36;
      [v64 setData:v43 size:1 forKey:@"label" freeWhenDone:0];
      *&v44 = *v43;
      v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
      v46 = [MEMORY[0x277CCABB0] numberWithInt:v17];
      v75[0] = v46;
      v75[1] = &unk_2884B2390;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      [v62 setObject:v45 forKeyedSubscript:v47];

      ++v17;
    }

    while (v17 != v60);
  }

  v48 = [(EvaluatorDataSource *)self->_dataSource modelInputSchemaInputName];
  v49 = [(EvaluatorDataSource *)self->_dataSource modelInputSchemaLabelName];
  v50 = objc_alloc(MEMORY[0x277CBFED0]);
  v73[0] = v48;
  v73[1] = v49;
  v74[0] = v12;
  v74[1] = v62;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v68 = v59;
  v52 = [v50 initWithDictionary:v51 error:&v68];
  v53 = v68;

  v71[0] = @"ETDataPoint";
  v71[1] = @"MLDictionaryFeatureProvider";
  v72[0] = v64;
  v72[1] = v52;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (int)numberOfDataPoints
{
  v2 = [(EvaluationDataSourceEspressoWrapper *)self dataSource];
  v3 = [v2 recordCount];

  return v3;
}

@end