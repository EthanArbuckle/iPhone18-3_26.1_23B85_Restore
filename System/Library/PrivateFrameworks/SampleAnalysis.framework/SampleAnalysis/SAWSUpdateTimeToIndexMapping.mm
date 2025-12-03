@interface SAWSUpdateTimeToIndexMapping
+ (id)arrayOfMappingsFromWSUpdataDataArray:(id)array andSampleDataStore:(id)store;
- (SAWSUpdateTimeToIndexMapping)initWithWSUpdateData:(id)data andSampleDataStore:(id)store andHintIndex:(unint64_t)index;
- (unint64_t)deferEndSampleIndex;
- (unint64_t)frameEndSampleIndex;
- (unint64_t)frameStartSampleIndex;
- (unint64_t)numFrameIndices;
- (unint64_t)waitEndSampleIndex;
- (unint64_t)workEndSampleIndex;
- (void)printDeferIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta;
- (void)printFrameIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta;
- (void)printWaitIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta;
- (void)printWorkIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta;
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
  numWaitIndices = [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices];
  v4 = [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices]+ numWaitIndices;
  return v4 + [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices];
}

- (unint64_t)frameEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
  if (result != -1)
  {
    frameStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
    return frameStartSampleIndex + [(SAWSUpdateTimeToIndexMapping *)self numFrameIndices]- 1;
  }

  return result;
}

- (unint64_t)waitEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
  if (result != -1)
  {
    waitStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
    return waitStartSampleIndex + [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices]- 1;
  }

  return result;
}

- (unint64_t)deferEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
  if (result != -1)
  {
    deferStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
    return deferStartSampleIndex + [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices]- 1;
  }

  return result;
}

- (unint64_t)workEndSampleIndex
{
  result = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
  if (result != -1)
  {
    workStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
    return workStartSampleIndex + [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices]- 1;
  }

  return result;
}

- (SAWSUpdateTimeToIndexMapping)initWithWSUpdateData:(id)data andSampleDataStore:(id)store andHintIndex:(unint64_t)index
{
  selfCopy = 0;
  if (data && store)
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
      _getIndexRangeForTimestamps(v9 + 1, v9 + 2, store, index, *(data + 1), *(data + 2));
      if (*v14 != -1)
      {
        index = *v13 + *v14;
      }

      _getIndexRangeForTimestamps(v10 + 3, v10 + 4, store, index, *(data + 2), *(data + 3));
      if (*v11 != -1)
      {
        index = *v12 + *v11;
      }

      _getIndexRangeForTimestamps(v10 + 5, v10 + 6, store, index, *(data + 3), *(data + 4));
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)arrayOfMappingsFromWSUpdataDataArray:(id)array andSampleDataStore:(id)store
{
  v31 = *MEMORY[0x1E69E9840];
  if (array && store)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    arrayCopy = array;
    v8 = [arrayCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(arrayCopy);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [SAWSUpdateTimeToIndexMapping alloc];
          v15 = [(SAWSUpdateTimeToIndexMapping *)v14 initWithWSUpdateData:v13 andSampleDataStore:store andHintIndex:v11, v25];
          if ([(SAWSUpdateTimeToIndexMapping *)v15 frameStartSampleIndex]!= -1)
          {
            frameStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)v15 frameStartSampleIndex];
            v11 = [(SAWSUpdateTimeToIndexMapping *)v15 numFrameIndices]+ frameStartSampleIndex;
          }

          [v6 addObject:v15];
        }

        v9 = [arrayCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v17 = [v6 count];
    if (v17 == [arrayCopy count])
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

- (void)printFrameIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta
{
  frameStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self frameStartSampleIndex];
  numFrameIndices = [(SAWSUpdateTimeToIndexMapping *)self numFrameIndices];

  _printSampleRangeForIndices(stream, frameStartSampleIndex, numFrameIndices, delta);
}

- (void)printWaitIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta
{
  waitStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self waitStartSampleIndex];
  numWaitIndices = [(SAWSUpdateTimeToIndexMapping *)self numWaitIndices];

  _printSampleRangeForIndices(stream, waitStartSampleIndex, numWaitIndices, delta);
}

- (void)printDeferIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta
{
  deferStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self deferStartSampleIndex];
  numDeferIndices = [(SAWSUpdateTimeToIndexMapping *)self numDeferIndices];

  _printSampleRangeForIndices(stream, deferStartSampleIndex, numDeferIndices, delta);
}

- (void)printWorkIndexRangeToStream:(id)stream withTranslationDelta:(int64_t)delta
{
  workStartSampleIndex = [(SAWSUpdateTimeToIndexMapping *)self workStartSampleIndex];
  numWorkIndices = [(SAWSUpdateTimeToIndexMapping *)self numWorkIndices];

  _printSampleRangeForIndices(stream, workStartSampleIndex, numWorkIndices, delta);
}

@end