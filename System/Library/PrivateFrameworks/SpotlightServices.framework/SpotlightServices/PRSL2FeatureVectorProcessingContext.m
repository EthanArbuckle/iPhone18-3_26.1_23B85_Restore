@interface PRSL2FeatureVectorProcessingContext
- (PRSL2FeatureVectorProcessingContext)initWithFeatureOrder:(id)a3 withInflation:(unint64_t)a4 withInflatedIndexToSize:(id)a5;
- (void)dealloc;
@end

@implementation PRSL2FeatureVectorProcessingContext

- (PRSL2FeatureVectorProcessingContext)initWithFeatureOrder:(id)a3 withInflation:(unint64_t)a4 withInflatedIndexToSize:(id)a5
{
  v8 = a3;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = PRSL2FeatureVectorProcessingContext;
  v10 = [(PRSL2FeatureVectorProcessingContext *)&v28 init];
  if (v10)
  {
    v11 = [v8 count] + a4;
    v25 = v10;
    v10->_expandedFeatureCount = v11;
    v12 = malloc_type_malloc(2 * v11, 0x5D7163CBuLL);
    v13 = v12;
    if (v11)
    {
      memset(v12, 255, 2 * v11);
    }

    v14 = +[PRSL2FeatureVector getL2FeatureSet];
    v15 = [v8 count];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      do
      {
        value = 0;
        v27 = 0;
        value = [v8 objectAtIndexedSubscript:v17];
        LOWORD(v27) = 0;
        BYTE2(v27) = 0;
        v19 = CFSetGetValue(v14, &value);
        if (v19)
        {
          v20 = v19[4];
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
          v22 = [v9 objectForKeyedSubscript:v21];

          if (v22)
          {
            for (i = 0; i <= [v22 unsignedLongLongValue]; ++i)
            {
              v13[v18++] = v20;
            }
          }

          else
          {
            v13[v18++] = v20;
          }
        }

        else
        {
          [SSADEventReporter reportBadDirectivesForModelType:0];
        }

        ++v17;
      }

      while (v17 != v16);
    }

    v10 = v25;
    v25->_expandedFeatureExecutionOrder = v13;
  }

  return v10;
}

- (void)dealloc
{
  expandedFeatureExecutionOrder = self->_expandedFeatureExecutionOrder;
  if (expandedFeatureExecutionOrder)
  {
    free(expandedFeatureExecutionOrder);
  }

  v4.receiver = self;
  v4.super_class = PRSL2FeatureVectorProcessingContext;
  [(PRSL2FeatureVectorProcessingContext *)&v4 dealloc];
}

@end