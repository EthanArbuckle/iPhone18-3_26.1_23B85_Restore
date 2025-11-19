@interface TSIntervalTimeLineFilter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio;
- (unint64_t)domainAIntervalFromDomainBInterval:(unint64_t)a3;
- (unint64_t)domainATimeFromDomainBTime:(unint64_t)a3;
- (unint64_t)domainBIntervalFromDomainAInterval:(unint64_t)a3;
- (unint64_t)domainBTimeFromDomainATime:(unint64_t)a3;
- (void)addTimestamps:(id)a3;
- (void)changeToNewFilterSize:(unsigned __int8)a3;
- (void)getAnchors:(id *)a3 andRateRatio:(id *)a4;
- (void)resetFilter;
- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)a3 expectedDomainBInterval:(unint64_t)a4;
- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)a3 expectedDomainBInterval:(unint64_t)a4 multiIntervalCount:(unsigned int)a5;
@end

@implementation TSIntervalTimeLineFilter

- (void)addTimestamps:(id)a3
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TSIntervalTimeLineFilter_addTimestamps___block_invoke;
  block[3] = &unk_279DBD630;
  block[4] = self;
  v5 = a3;
  dispatch_sync(syncQueue, block);
}

uint64_t __42__TSIntervalTimeLineFilter_addTimestamps___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (*(v2 + 272) + 1) & 7;
  *(v2 + 8 + 8 * v3) = [*(v2 + 280) addTimestamp:a1[5] entry:v2 + 136 + 8 * v3];
  result = [*(a1[4] + 288) addTimestamp:a1[6] entry:a1[4] + 200 + 8 * v3];
  *(a1[4] + 72 + 8 * v3) = result;
  *(a1[4] + 272) = v3;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)rateRatio
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    v5 = -1;
    v4 = -1;
  }

  else
  {
    v4 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
    v5 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];
  }

  v6 = v4;
  result.var1 = v5;
  result.var0 = v6;
  return result;
}

- (void)getAnchors:(id *)a3 andRateRatio:(id *)a4
{
  if (a3)
  {
    a3->var0 = -1;
    a3->var1 = -1;
  }

  if (a4)
  {
    a4->var0 = -1;
    a4->var1 = -1;
  }

  validIndex = self->_validIndex;
  if (validIndex <= 7)
  {
    if (a3)
    {
      a3->var0 = self->_AAnchor[validIndex];
      a3->var1 = self->_BAnchor[validIndex];
    }

    if (a4)
    {
      a4->var0 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
      a4->var1 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];
    }
  }
}

- (unint64_t)domainATimeFromDomainBTime:(unint64_t)a3
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];
  v8 = self->_BAnchor[validIndex];
  v9 = self->_AAnchor[validIndex];

  return TSTimeXtoTimeY(a3, v8, v7, v9, v6);
}

- (unint64_t)domainAIntervalFromDomainBInterval:(unint64_t)a3
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];

  return TSIntervalXtoIntervalY(a3, v7, v6);
}

- (unint64_t)domainBTimeFromDomainATime:(unint64_t)a3
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];
  v8 = self->_AAnchor[validIndex];
  v9 = self->_BAnchor[validIndex];

  return TSTimeXtoTimeY(a3, v8, v6, v9, v7);
}

- (unint64_t)domainBIntervalFromDomainAInterval:(unint64_t)a3
{
  validIndex = self->_validIndex;
  if (validIndex > 7)
  {
    return -1;
  }

  v6 = [(TSIntervalFilter *)self->_aIntervalFilter multiIntervalTimeForEntry:self->_AEntries[validIndex]];
  v7 = [(TSIntervalFilter *)self->_bIntervalFilter multiIntervalTimeForEntry:self->_BEntries[validIndex]];

  return TSIntervalXtoIntervalY(a3, v6, v7);
}

- (void)resetFilter
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TSIntervalTimeLineFilter_resetFilter__block_invoke;
  block[3] = &unk_279DBD658;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

uint64_t __39__TSIntervalTimeLineFilter_resetFilter__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) resetFilter];
  v2 = *(*(a1 + 32) + 288);

  return [v2 resetFilter];
}

- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)a3 expectedDomainBInterval:(unint64_t)a4
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval___block_invoke;
  block[3] = &unk_279DBD630;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(syncQueue, block);
}

uint64_t __94__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval___block_invoke(void *a1)
{
  [*(a1[4] + 280) resetFilterWithNewExpectedInterval:a1[5]];
  v2 = *(a1[4] + 288);
  v3 = a1[6];

  return [v2 resetFilterWithNewExpectedInterval:v3];
}

- (void)resetFilterWithNewExpectedDomainAInterval:(unint64_t)a3 expectedDomainBInterval:(unint64_t)a4 multiIntervalCount:(unsigned int)a5
{
  syncQueue = self->_syncQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __113__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval_multiIntervalCount___block_invoke;
  v6[3] = &unk_279DBD680;
  v6[4] = self;
  v6[5] = a3;
  v7 = a5;
  v6[6] = a4;
  dispatch_sync(syncQueue, v6);
}

uint64_t __113__TSIntervalTimeLineFilter_resetFilterWithNewExpectedDomainAInterval_expectedDomainBInterval_multiIntervalCount___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) resetFilterWithNewExpectedInterval:*(a1 + 40) multiIntervalCount:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 288);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 resetFilterWithNewExpectedInterval:v3 multiIntervalCount:v4];
}

- (void)changeToNewFilterSize:(unsigned __int8)a3
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__TSIntervalTimeLineFilter_changeToNewFilterSize___block_invoke;
  v4[3] = &unk_279DBD6A8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(syncQueue, v4);
}

uint64_t __50__TSIntervalTimeLineFilter_changeToNewFilterSize___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 280) changeToNewFilterSize:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 288);
  v3 = *(a1 + 40);

  return [v2 changeToNewFilterSize:v3];
}

@end