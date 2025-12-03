@interface CalibrationModelManager
- (BOOL)loadModel;
- (CalibrationModelManager)initWithChunkSize:(unint64_t)size batchSize:(unint64_t)batchSize;
- (id)batchPredict:(id)predict documentEmbeddings:(id)embeddings queryID:(int64_t)d;
- (id)convertEmbeddingToMLMultiArray:(id)array atIndex:(unint64_t)index queryID:(int64_t)d;
- (id)predict:(id)predict documentEmbedding:(id)embedding queryID:(int64_t)d;
- (void)clear;
- (void)performBatchInferenceWithInputs:(id)inputs documentIndices:(id)indices results:(id)results queryID:(int64_t)d;
@end

@implementation CalibrationModelManager

- (CalibrationModelManager)initWithChunkSize:(unint64_t)size batchSize:(unint64_t)batchSize
{
  v7.receiver = self;
  v7.super_class = CalibrationModelManager;
  result = [(CalibrationModelManager *)&v7 init];
  if (result)
  {
    result->_chunkSize = size;
    result->_batchSize = batchSize;
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

- (id)predict:(id)predict documentEmbedding:(id)embedding queryID:(int64_t)d
{
  v16[1] = *MEMORY[0x1E69E9840];
  predictCopy = predict;
  embeddingCopy = embedding;
  v10 = embeddingCopy;
  if (predictCopy && embeddingCopy)
  {
    v16[0] = embeddingCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [(CalibrationModelManager *)self batchPredict:predictCopy documentEmbeddings:v11 queryID:d];

    if (v12 && [v12 count])
    {
      firstObject = [v12 firstObject];
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

  firstObject = 0;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)batchPredict:(id)predict documentEmbeddings:(id)embeddings queryID:(int64_t)d
{
  v39 = *MEMORY[0x1E69E9840];
  predictCopy = predict;
  embeddingsCopy = embeddings;
  if (![(CalibrationModelManager *)self loaded])
  {
    v23 = SSGeneralLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager batchPredict:documentEmbeddings:queryID:];
    }

    goto LABEL_24;
  }

  if (!predictCopy || !embeddingsCopy)
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
  if ([embeddingsCopy count])
  {
    v11 = 0;
    v28 = embeddingsCopy;
    while (1)
    {
      v30 = v11;
      v31 = [embeddingsCopy objectAtIndexedSubscript:v11];
      vectors = [v31 vectors];
      v13 = [vectors count];

      chunkSize = [(CalibrationModelManager *)self chunkSize];
      v15 = v13 >= chunkSize ? chunkSize : v13;
      if (v15)
      {
        break;
      }

LABEL_16:

      v11 = v30 + 1;
      embeddingsCopy = v28;
      if (v30 + 1 >= [v28 count])
      {
        goto LABEL_17;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = [(CalibrationModelManager *)self convertEmbeddingToMLMultiArray:predictCopy atIndex:0 queryID:d];
      v18 = [(CalibrationModelManager *)self convertEmbeddingToMLMultiArray:v31 atIndex:v16 queryID:d];
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
        [(CalibrationModelManager *)self performBatchInferenceWithInputs:v10 documentIndices:v32 results:v29 queryID:d];
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
      dCopy = d;
      v35 = 2048;
      v36 = v30;
      v37 = 2048;
      v38 = v16;
      _os_log_error_impl(&dword_1D9F69000, v25, OS_LOG_TYPE_ERROR, "[qid=%ld][SpotlightRanking][Calibration] Failed to convert embeddings to MLMultiArray at document index %lu, embedding index %lu", buf, 0x20u);
    }

    v24 = 0;
    embeddingsCopy = v28;
    v23 = v29;
  }

  else
  {
LABEL_17:
    v23 = v29;
    if ([v10 count])
    {
      [(CalibrationModelManager *)self performBatchInferenceWithInputs:v10 documentIndices:v32 results:v29 queryID:d];
    }

    v24 = v29;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)performBatchInferenceWithInputs:(id)inputs documentIndices:(id)indices results:(id)results queryID:(int64_t)d
{
  inputsCopy = inputs;
  indicesCopy = indices;
  resultsCopy = results;
  model = [(CalibrationModelManager *)self model];
  v14 = objc_alloc_init(MEMORY[0x1E695FF08]);
  v32 = 0;
  v15 = [model predictionsFromInputs:inputsCopy options:v14 error:&v32];
  v16 = v32;

  if (v16 || !v15)
  {
    v31 = SSGeneralLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager performBatchInferenceWithInputs:v16 documentIndices:d results:? queryID:?];
    }
  }

  else if ([v15 count])
  {
    v17 = 0;
    do
    {
      v18 = [indicesCopy objectAtIndexedSubscript:v17];
      v19 = [v15 objectAtIndexedSubscript:v17];
      output = [v19 output];
      v21 = [output objectAtIndexedSubscript:0];
      [v21 floatValue];
      v23 = v22;

      unsignedIntegerValue = [v18 unsignedIntegerValue];
      if (unsignedIntegerValue >= [resultsCopy count])
      {
        *&v25 = v23;
        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        [resultsCopy addObject:v30];
      }

      else
      {
        v26 = [resultsCopy objectAtIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
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
        [resultsCopy setObject:v30 atIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }

      ++v17;
    }

    while (v17 < [v15 count]);
  }
}

- (id)convertEmbeddingToMLMultiArray:(id)array atIndex:(unint64_t)index queryID:(int64_t)d
{
  v27[2] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v8 = arrayCopy;
  if (!arrayCopy)
  {
    v12 = SSGeneralLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_13;
  }

  vectors = [arrayCopy vectors];
  v10 = [vectors count];

  if (v10 <= index)
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

  vectors2 = [v8 vectors];
  v12 = [vectors2 objectAtIndexedSubscript:index];

  if (!v12)
  {
    v17 = SSGeneralLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_18;
  }

  dimension = [v8 dimension];
  if (dimension >= 3)
  {
    v17 = SSGeneralLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalibrationModelManager convertEmbeddingToMLMultiArray:atIndex:queryID:];
    }

    goto LABEL_18;
  }

  v14 = dimension;
  v15 = 65552;
  format = [v8 format];
  if (!format)
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
        [CalibrationModelManager convertEmbeddingToMLMultiArray:v17 atIndex:d queryID:?];
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

  if (format == 1)
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