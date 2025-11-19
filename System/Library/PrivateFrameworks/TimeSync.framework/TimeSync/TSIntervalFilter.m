@interface TSIntervalFilter
- (TSIntervalFilter)initWithExpectedInterval:(unint64_t)a3 multiIntervalCount:(unsigned int)a4 filterSize:(unsigned __int8)a5;
- (id).cxx_construct;
- (unint64_t)addTimestamp:(unint64_t)a3 entry:(int64_t *)a4;
- (unint64_t)filterCountForEntry:(int64_t)validEntry;
- (unint64_t)multiIntervalTimeForEntry:(int64_t)validEntry;
- (void)dealloc;
- (void)resetFilter;
- (void)resetFilterWithNewExpectedInterval:(unint64_t)a3 multiIntervalCount:(unsigned int)a4;
@end

@implementation TSIntervalFilter

- (TSIntervalFilter)initWithExpectedInterval:(unint64_t)a3 multiIntervalCount:(unsigned int)a4 filterSize:(unsigned __int8)a5
{
  v13.receiver = self;
  v13.super_class = TSIntervalFilter;
  v8 = [(TSIntervalFilter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_expectedInterval = a3;
    v8->_multiIntervalCount = a4;
    v8->_filterCount = 0;
    v8->_timestampIndex = 0;
    v8->_validEntry = -1;
    v8->_filterSize = a5;
    v8->_filterOffset = a3 << a5;
    v8->_filteredTimestamps = malloc_type_calloc(a4 + 1, 8uLL, 0x100004000313F17uLL);
    v10 = dispatch_queue_create("com.apple.TimeSync.TSIntervalFilter", 0);
    syncQueue = v9->_syncQueue;
    v9->_syncQueue = v10;

    if (!v9->_filteredTimestamps || !v9->_syncQueue)
    {

      return 0;
    }
  }

  return v9;
}

- (unint64_t)addTimestamp:(unint64_t)a3 entry:(int64_t *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TSIntervalFilter_addTimestamp_entry___block_invoke;
  v7[3] = &unk_279DBDF28;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(syncQueue, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __39__TSIntervalFilter_addTimestamp_entry___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 24))
  {
    v3 = a1[6];
    **(v2 + 32) = v3;
    *(*(a1[4] + 32) + 8 * *(a1[4] + 16)) = v3 - *(a1[4] + 8);
    v4 = a1[4];
    v5 = *(v4 + 16);
    if (v5 >= 2)
    {
      do
      {
        v6 = a1[4];
        v7 = (*(v6 + 32) + 8 * v5--);
        *(v7 - 1) = *v7 - *(v6 + 8);
      }

      while (v5 > 1);
      v4 = a1[4];
    }

    *(v4 + 40) = 0;
    v2 = a1[4];
  }

  result = [v2 _calculateNewTimestamp:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[4] + 32) + 8 * (*(a1[4] + 40))++) = *(*(a1[5] + 8) + 24);
  v9 = a1[4];
  if (*(v9 + 40) == *(v9 + 16) + 1)
  {
    *(v9 + 40) = 0;
    v9 = a1[4];
  }

  ++*(v9 + 24);
  v10 = a1[4];
  v11 = (*(v10 + 176) + 1) & 7;
  *(v10 + 8 * v11 + 48) = *(v10 + 24);
  *(a1[4] + 8 * v11 + 112) = *(*(a1[5] + 8) + 24) - *(*(a1[4] + 32) + 8 * *(a1[4] + 40));
  *(a1[4] + 176) = v11;
  v12 = a1[7];
  if (v12)
  {
    *v12 = v11;
  }

  return result;
}

- (unint64_t)multiIntervalTimeForEntry:(int64_t)validEntry
{
  result = -1;
  if (validEntry < 0)
  {
    validEntry = self->_validEntry;
  }

  if (validEntry <= 7)
  {
    return self->_timestampIntervals[validEntry];
  }

  return result;
}

- (unint64_t)filterCountForEntry:(int64_t)validEntry
{
  if (validEntry < 0)
  {
    validEntry = self->_validEntry;
  }

  if (validEntry > 7)
  {
    return 0;
  }

  else
  {
    return self->_timestampCount[validEntry];
  }
}

- (void)resetFilter
{
  v3 = [(TSIntervalFilter *)self multiIntervalTime];
  if (v3 == -1)
  {
    expectedInterval = self->_expectedInterval;
  }

  else
  {
    expectedInterval = v3 / self->_multiIntervalCount;
  }

  [(TSIntervalFilter *)self resetFilterWithNewExpectedInterval:expectedInterval];
}

- (void)resetFilterWithNewExpectedInterval:(unint64_t)a3 multiIntervalCount:(unsigned int)a4
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__TSIntervalFilter_resetFilterWithNewExpectedInterval_multiIntervalCount___block_invoke;
  block[3] = &unk_279DBDF50;
  v6 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(syncQueue, block);
}

void *__74__TSIntervalFilter_resetFilterWithNewExpectedInterval_multiIntervalCount___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 16) != *(result + 12))
  {
    free(*(v2 + 32));
    *(v1[4] + 16) = *(v1 + 12);
    result = malloc_type_calloc((*(v1[4] + 16) + 1), 8uLL, 0x100004000313F17uLL);
    *(v1[4] + 32) = result;
    v2 = v1[4];
  }

  *(v2 + 8) = v1[5];
  *(v1[4] + 200) = *(v1[4] + 8) << *(v1[4] + 192);
  *(v1[4] + 24) = 0;
  *(v1[4] + 176) = -1;
  return result;
}

- (void)dealloc
{
  free(self->_filteredTimestamps);
  v3.receiver = self;
  v3.super_class = TSIntervalFilter;
  [(TSIntervalFilter *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  return self;
}

@end