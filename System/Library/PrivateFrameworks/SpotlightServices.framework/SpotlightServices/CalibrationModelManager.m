@interface CalibrationModelManager
- (BOOL)loadModel;
- (CalibrationModelManager)initWithChunkSize:(unint64_t)a3 batchSize:(unint64_t)a4;
- (id)batchPredict:(id)a3 documentEmbeddings:(id)a4 queryID:(int64_t)a5;
- (id)convertEmbeddingToMLMultiArray:(id)a3 atIndex:(unint64_t)a4 queryID:(int64_t)a5;
- (id)predict:(id)a3 documentEmbedding:(id)a4 queryID:(int64_t)a5;
- (void)clear;
- (void)performBatchInferenceWithInputs:(id)a3 documentIndices:(id)a4 results:(id)a5 queryID:(int64_t)a6;
@end

@implementation CalibrationModelManager

- (CalibrationModelManager)initWithChunkSize:(unint64_t)a3 batchSize:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CalibrationModelManager;
  result = [(CalibrationModelManager *)&v7 init];
  if (result)
  {
    result->_chunkSize = a3;
    result->_batchSize = a4;
  }

  return result;
}

- (BOOL)loadModel
{
  v15 = *MEMORY[0x1E69E9840];
  self->_loaded = 0;
  v3 = SSDefaultsGetAssetPath(@"searchtool_calibration.mlmodelc");
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v12 = 0;
  v5 = [[calibration alloc] initWithContentsOfURL:v4 error:&v12];
  v6 = v12;
  model = self->_model;
  self->_model = v5;

  v8 = SSGeneralLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager loadModel];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"searchtool_calibration.mlmodelc";
      _os_log_impl(&dword_1D9F69000, v9, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking][Calibration] Successfully loaded searchtool calibration model %@ ", buf, 0xCu);
    }

    self->_loaded = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

- (id)predict:(id)a3 documentEmbedding:(id)a4 queryID:(int64_t)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v16[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [(CalibrationModelManager *)self batchPredict:v8 documentEmbeddings:v11 queryID:a5];

    if (v12 && [v12 count])
    {
      v13 = [v12 firstObject];
      goto LABEL_9;
    }
  }

  else
  {
    v12 = SSGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager predict:documentEmbedding:queryID:];
    }
  }

  v13 = 0;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)batchPredict:(id)a3 documentEmbeddings:(id)a4 queryID:(int64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(CalibrationModelManager *)self loaded])
  {
    v23 = SSGeneralLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager batchPredict:documentEmbeddings:queryID:];
    }

    goto LABEL_24;
  }

  if (!v8 || !v9)
  {
    v23 = SSGeneralLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager predict:documentEmbedding:queryID:];
    }

LABEL_24:
    v24 = 0;
    goto LABEL_29;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v9 count])
  {
    v11 = 0;
    v28 = v9;
    while (1)
    {
      v30 = v11;
      v31 = [v9 objectAtIndexedSubscript:v11];
      v12 = [v31 vectors];
      v13 = [v12 count];

      v14 = [(CalibrationModelManager *)self chunkSize];
      v15 = v13 >= v14 ? v14 : v13;
      if (v15)
      {
        break;
      }

LABEL_16:

      v11 = v30 + 1;
      v9 = v28;
      if (v30 + 1 >= [v28 count])
      {
        goto LABEL_17;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = [(CalibrationModelManager *)self convertEmbeddingToMLMultiArray:v8 atIndex:0 queryID:a5];
      v18 = [(CalibrationModelManager *)self convertEmbeddingToMLMultiArray:v31 atIndex:v16 queryID:a5];
      v19 = v18;
      if (!v17 || !v18)
      {
        break;
      }

      v20 = [[calibrationInput alloc] initWithQuery_embedding:v17 document_embedding:v18];
      [v10 addObject:v20];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
      [v32 addObject:v21];

      v22 = [v10 count];
      if (v22 == [(CalibrationModelManager *)self batchSize])
      {
        [(CalibrationModelManager *)self performBatchInferenceWithInputs:v10 documentIndices:v32 results:v29 queryID:a5];
        [v10 removeAllObjects];
        [v32 removeAllObjects];
      }

      if (v15 == ++v16)
      {
        goto LABEL_16;
      }
    }

    v25 = SSGeneralLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v34 = a5;
      v35 = 2048;
      v36 = v30;
      v37 = 2048;
      v38 = v16;
      _os_log_error_impl(&dword_1D9F69000, v25, OS_LOG_TYPE_ERROR, "[qid=%ld][SpotlightRanking][Calibration] Failed to convert embeddings to MLMultiArray at document index %lu, embedding index %lu", buf, 0x20u);
    }

    v24 = 0;
    v9 = v28;
    v23 = v29;
  }

  else
  {
LABEL_17:
    v23 = v29;
    if ([v10 count])
    {
      [(CalibrationModelManager *)self performBatchInferenceWithInputs:v10 documentIndices:v32 results:v29 queryID:a5];
    }

    v24 = v29;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)performBatchInferenceWithInputs:(id)a3 documentIndices:(id)a4 results:(id)a5 queryID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CalibrationModelManager *)self model];
  v14 = objc_alloc_init(MEMORY[0x1E695FF08]);
  v32 = 0;
  v15 = [v13 predictionsFromInputs:v10 options:v14 error:&v32];
  v16 = v32;

  if (v16 || !v15)
  {
    v31 = SSGeneralLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager performBatchInferenceWithInputs:v16 documentIndices:a6 results:? queryID:?];
    }
  }

  else if ([v15 count])
  {
    v17 = 0;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:v17];
      v19 = [v15 objectAtIndexedSubscript:v17];
      v20 = [v19 output];
      v21 = [v20 objectAtIndexedSubscript:0];
      [v21 floatValue];
      v23 = v22;

      v24 = [v18 unsignedIntegerValue];
      if (v24 >= [v12 count])
      {
        *&v25 = v23;
        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        [v12 addObject:v30];
      }

      else
      {
        v26 = [v12 objectAtIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
        [v26 floatValue];
        v28 = v27;

        if (v28 >= v23)
        {
          *&v29 = v28;
        }

        else
        {
          *&v29 = v23;
        }

        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        [v12 setObject:v30 atIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }

      ++v17;
    }

    while (v17 < [v15 count]);
  }
}

- (id)convertEmbeddingToMLMultiArray:(id)a3 atIndex:(unint64_t)a4 queryID:(int64_t)a5
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v12 = SSGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_13;
  }

  v9 = [v7 vectors];
  v10 = [v9 count];

  if (v10 <= a4)
  {
    v12 = SSGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

LABEL_13:
    v18 = 0;
    goto LABEL_28;
  }

  v11 = [v8 vectors];
  v12 = [v11 objectAtIndexedSubscript:a4];

  if (!v12)
  {
    v17 = SSGeneralLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_18;
  }

  v13 = [v8 dimension];
  if (v13 >= 3)
  {
    v17 = SSGeneralLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_18;
  }

  v14 = v13;
  v15 = 65552;
  v16 = [v8 format];
  if (!v16)
  {
    v15 = 65568;
LABEL_20:
    v19 = objc_alloc(MEMORY[0x1E695FED0]);
    v27[0] = &unk_1F55B4470;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v14 << 8) + 256];
    v27[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v26 = 0;
    v22 = [v19 initWithShape:v21 dataType:v15 error:&v26];
    v17 = v26;

    if (v17 || !v22)
    {
      v23 = SSGeneralLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CalibrationModelManager convertEmbeddingToMLMultiArray:v17 atIndex:a5 queryID:?];
      }

      v18 = 0;
    }

    else
    {
      -[NSObject getBytes:length:](v12, "getBytes:length:", [v22 dataPointer], -[NSObject length](v12, "length"));
      v18 = v22;
    }

    goto LABEL_27;
  }

  if (v16 == 1)
  {
    goto LABEL_20;
  }

  v17 = SSGeneralLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
  }

LABEL_18:
  v18 = 0;
LABEL_27:

LABEL_28:
  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)clear
{
  model = self->_model;
  self->_model = 0;
  MEMORY[0x1EEE66BB8]();
}

@end