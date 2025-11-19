@interface OverallMemoryUsage
+ (id)accumulateMemoryAcrossPrioritiesWithFootprints:(id)a3 withComparator:(id)a4;
- (OverallMemoryUsage)init;
- (id)systemMemoryStatsDictionary;
@end

@implementation OverallMemoryUsage

- (OverallMemoryUsage)init
{
  v30.receiver = self;
  v30.super_class = OverallMemoryUsage;
  v2 = [(OverallMemoryUsage *)&v30 init];
  if (v2)
  {
    v3 = MEMORY[0x21CEDD9B0]();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *host_info64_out = 0u;
    v21 = 0u;
    host_info64_outCnt = 40;
    if (host_statistics64(v3, 4, host_info64_out, &host_info64_outCnt))
    {

      v2 = 0;
    }

    else
    {
      v4 = host_info64_out[3];
      v5 = host_info64_out[0];
      v6 = HIDWORD(v25);
      v7 = v28;
      v8 = v29;
      v10 = DWORD2(v28);
      v9 = HIDWORD(v28);
      v18 = 0uLL;
      PLProcessMetricsForIdleBand(&v18);
      v17 = 0;
      v16 = 4;
      if (sysctlbyname("vm.pagesize", &v17, &v16, 0, 0))
      {
        v11 = v2;
        v2 = 0;
      }

      else
      {
        _wiredBytes = v17 * v4;
        _filebackedBytes = v17 * v10;
        _freeBytes = v17 * (v5 - v6);
        _occupiedByCompressorBytes = v17 * v7;
        _storedInCompressorBytes = v8 * v17;
        _speculativeBytes = v17 * v6;
        _anonymousBytes = v17 * v9;
        _idlePhysFootprintBytes = v18.i64[1];
        _idleWiredBytes = v18.i64[0];
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = _sumMemoryAtEachPriority;
        _sumMemoryAtEachPriority = v12;

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_filebackedBytes + _freeBytes];
        [_sumMemoryAtEachPriority setObject:v14 forKeyedSubscript:&unk_282C11C40];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_wiredBytes];
        [_sumMemoryAtEachPriority setObject:v11 forKeyedSubscript:&unk_282C11C58];
      }
    }

    mach_port_deallocate(*MEMORY[0x277D85F48], v3);
  }

  return v2;
}

+ (id)accumulateMemoryAcrossPrioritiesWithFootprints:(id)a3 withComparator:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v5 allKeys];
  v21 = v6;
  v9 = [v8 sortedArrayUsingComparator:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v5 objectForKeyedSubscript:v16];
        v13 += [v17 unsignedLongValue];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
        [v7 setObject:v18 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)systemMemoryStatsDictionary
{
  v15[9] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{_wiredBytes >> 10, @"wired_down"}];
  v15[0] = v2;
  v14[1] = @"file_backed";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_filebackedBytes >> 10];
  v15[1] = v3;
  v14[2] = @"free";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_freeBytes >> 10];
  v15[2] = v4;
  v14[3] = @"occupied_by_compressor";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_occupiedByCompressorBytes >> 10];
  v15[3] = v5;
  v14[4] = @"stored_in_compressor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_storedInCompressorBytes >> 10];
  v15[4] = v6;
  v14[5] = @"speculative";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_speculativeBytes >> 10];
  v15[5] = v7;
  v14[6] = @"anonymous";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_anonymousBytes >> 10];
  v15[6] = v8;
  v14[7] = @"idle_phys_footprint";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_idlePhysFootprintBytes >> 10];
  v15[7] = v9;
  v14[8] = @"idle_wired";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_idleWiredBytes >> 10];
  v15[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end