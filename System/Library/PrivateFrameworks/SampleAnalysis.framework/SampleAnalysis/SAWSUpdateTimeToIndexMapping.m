@interface SAWSUpdateTimeToIndexMapping
+ (id)arrayOfMappingsFromWSUpdataDataArray:(id)a3 andSampleDataStore:(id)a4;
- (SAWSUpdateTimeToIndexMapping)initWithWSUpdateData:(id)a3 andSampleDataStore:(id)a4 andHintIndex:(unint64_t)a5;
- (unint64_t)deferEndSampleIndex;
- (unint64_t)frameEndSampleIndex;
- (unint64_t)frameStartSampleIndex;
- (unint64_t)numFrameIndices;
- (unint64_t)waitEndSampleIndex;
- (unint64_t)workEndSampleIndex;
- (void)printDeferIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4;
- (void)printFrameIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4;
- (void)printWaitIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4;
- (void)printWorkIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4;
@end

@implementation SAWSUpdateTimeToIndexMapping

- (unint64_t)frameStartSampleIndex
{
  if ([(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex]== -1)
  {
    if ([(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex]== -1)
    {

      return [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
    }

    else
    {

      return [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
    }
  }

  else
  {

    return [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
  }
}

- (unint64_t)numFrameIndices
{
  v3 = [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices];
  v4 = [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices]+ v3;
  return v4 + [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices];
}

- (unint64_t)frameEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
  if (result != -1)
  {
    v4 = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
    return v4 + [(SAWSUpdateTimeToIndexMapping *)self numFrameIndices]- 1;
  }

  return result;
}

- (unint64_t)waitEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
  if (result != -1)
  {
    v4 = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
    return v4 + [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices]- 1;
  }

  return result;
}

- (unint64_t)deferEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
  if (result != -1)
  {
    v4 = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
    return v4 + [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices]- 1;
  }

  return result;
}

- (unint64_t)workEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
  if (result != -1)
  {
    v4 = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
    return v4 + [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices]- 1;
  }

  return result;
}

- (SAWSUpdateTimeToIndexMapping)initWithWSUpdateData:(id)a3 andSampleDataStore:(id)a4 andHintIndex:(unint64_t)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v16.receiver = self;
    v16.super_class = SAWSUpdateTimeToIndexMapping;
    v9 = [(SAWSUpdateTimeToIndexMapping *)&v16 init];
    v10 = v9;
    if (v9)
    {
      *(v9 + 40) = xmmword_1E0F28420;
      *(v9 + 24) = xmmword_1E0F28420;
      v11 = v9 + 24;
      v12 = v9 + 32;
      v13 = v9 + 16;
      *(v9 + 8) = xmmword_1E0F28420;
      v14 = v9 + 8;
      _getIndexRangeForTimestamps(v9 + 1, v9 + 2, a4, a5, *(a3 + 1), *(a3 + 2));
      if (*v14 != -1)
      {
        a5 = *v13 + *v14;
      }

      _getIndexRangeForTimestamps(v10 + 3, v10 + 4, a4, a5, *(a3 + 2), *(a3 + 3));
      if (*v11 != -1)
      {
        a5 = *v12 + *v11;
      }

      _getIndexRangeForTimestamps(v10 + 5, v10 + 6, a4, a5, *(a3 + 3), *(a3 + 4));
    }

    self = v10;
    v5 = self;
  }

  return v5;
}

+ (id)arrayOfMappingsFromWSUpdataDataArray:(id)a3 andSampleDataStore:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = a3;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v11 = -1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [SAWSUpdateTimeToIndexMapping alloc];
          v15 = [(SAWSUpdateTimeToIndexMapping *)v14 initWithWSUpdateData:v13 andSampleDataStore:a4 andHintIndex:v11, v25];
          if ([(SAWSUpdateTimeToIndexMapping *)v15 frameStartSampleIndex]!= -1)
          {
            v16 = [(SAWSUpdateTimeToIndexMapping *)v15 frameStartSampleIndex];
            v11 = [(SAWSUpdateTimeToIndexMapping *)v15 numFrameIndices]+ v16;
          }

          [v6 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v17 = [v6 count];
    if (v17 == [v7 count])
    {
      v18 = v6;
    }

    else
    {
      v21 = *__error();
      v22 = _sa_logt();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEFAULT, "WARNING: Different number of index mappings and WS updates. Bailing...", buf, 2u);
      }

      v18 = 0;
      *__error() = v21;
    }
  }

  else
  {
    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Nil update data array or data store", buf, 2u);
    }

    v18 = 0;
    *__error() = v19;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)printFrameIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4
{
  v7 = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
  v8 = [(SAWSUpdateTimeToIndexMapping *)self numFrameIndices];

  _printSampleRangeForIndices(a3, v7, v8, a4);
}

- (void)printWaitIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4
{
  v7 = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
  v8 = [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices];

  _printSampleRangeForIndices(a3, v7, v8, a4);
}

- (void)printDeferIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4
{
  v7 = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
  v8 = [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices];

  _printSampleRangeForIndices(a3, v7, v8, a4);
}

- (void)printWorkIndexRangeToStream:(id)a3 withTranslationDelta:(int64_t)a4
{
  v7 = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
  v8 = [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices];

  _printSampleRangeForIndices(a3, v7, v8, a4);
}

@end