@interface VMUProcessLedger
+ (id)_getProcessLedgerDictFromCrashInfo:(unint64_t)a3 DataSize:(unint64_t)a4;
+ (id)_getProcessLedgerDictFromKernelLedger:(int)a3;
+ (id)_getProcessLedgerForCore:(id)a3;
+ (id)ledgerForVMUTask:(id)a3;
@end

@implementation VMUProcessLedger

+ (id)ledgerForVMUTask:(id)a3
{
  v4 = a3;
  if ([v4 isCore])
  {
    v5 = [VMUProcessLedger _getProcessLedgerForCore:v4];
  }

  else
  {
    v9 = 0;
    kcd_addr_begin = 0;
    v6 = task_map_corpse_info_64(*MEMORY[0x1E69E9A60], [v4 taskPort], &kcd_addr_begin, &v9);
    if (v6)
    {
      v7 = 0;
      if (v6 != 4)
      {
        goto LABEL_8;
      }

      v5 = [a1 _getProcessLedgerDictFromKernelLedger:{objc_msgSend(v4, "pid")}];
    }

    else
    {
      v5 = [a1 _getProcessLedgerDictFromCrashInfo:kcd_addr_begin DataSize:v9];
    }
  }

  v7 = v5;
LABEL_8:

  return v7;
}

+ (id)_getProcessLedgerForCore:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 memoryCache];
  v6 = [VMUTaskMemoryCache getCoreFileLedgerInternal:v5];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v7 forKeyedSubscript:@"internal"];
  }

  v8 = [v3 memoryCache];
  v9 = [VMUTaskMemoryCache getCoreFileLedgerInternalCompressed:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v10 forKeyedSubscript:@"internal_compressed"];
  }

  v11 = [v3 memoryCache];
  v12 = [VMUTaskMemoryCache getCoreFileLedgerIokitMapped:v11];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v13 forKeyedSubscript:@"iokit_mapped"];
  }

  v14 = [v3 memoryCache];
  v15 = [VMUTaskMemoryCache getCoreFileLedgerAlternateAccounting:v14];

  if (!v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v16 forKeyedSubscript:@"alternate_accounting"];
  }

  v17 = [v3 memoryCache];
  v18 = [VMUTaskMemoryCache getCoreFileLedgerAlternateAccountingCompressed:v17];

  if (!v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v19 forKeyedSubscript:@"alternate_accounting_compressed"];
  }

  v20 = [v3 memoryCache];
  v21 = [VMUTaskMemoryCache getCoreFileLedgerPurgeableNonvolatile:v20];

  if (!v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v22 forKeyedSubscript:@"purgeable_nonvolatile"];
  }

  v23 = [v3 memoryCache];
  v24 = [VMUTaskMemoryCache getCoreFileLedgerPurgeableNonvolatileCompressed:v23];

  if (!v24)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v25 forKeyedSubscript:@"purgeable_nonvolatile_compressed"];
  }

  v26 = [v3 memoryCache];
  v27 = [VMUTaskMemoryCache getCoreFileLedgerPhysFootprint:v26];

  if (!v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v28 forKeyedSubscript:@"phys_footprint"];
  }

  v29 = [v3 memoryCache];
  v30 = [VMUTaskMemoryCache getCoreFileLedgerPhysFootprintLifetimeMax:v29];

  if (!v30)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v31 forKeyedSubscript:@"phys_footprint_lifetime_max"];
  }

  v32 = [v3 memoryCache];
  v33 = [VMUTaskMemoryCache getCoreFileLedgerPageTable:v32];

  if (!v33)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v34 forKeyedSubscript:@"page_table"];
  }

  v35 = [v3 memoryCache];
  v36 = [VMUTaskMemoryCache getCoreFileLedgerNetworkNonvolatile:v35];

  if (!v36)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v37 forKeyedSubscript:@"network_nonvolatile"];
  }

  v38 = [v3 memoryCache];
  v39 = [VMUTaskMemoryCache getCoreFileLedgerNetworkNonvolatileCompressed:v38];

  if (!v39)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v40 forKeyedSubscript:@"network_nonvolatile_compressed"];
  }

  v41 = [v3 memoryCache];
  v42 = [VMUTaskMemoryCache getCoreFileLedgerWiredMem:v41];

  if (!v42)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v43 forKeyedSubscript:@"wired_mem"];
  }

  v44 = [v3 memoryCache];
  v45 = [VMUTaskMemoryCache getCoreFileLedgerTaggedFootprint:v44];

  if (!v45)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v46 forKeyedSubscript:@"tagged_footprint"];
  }

  v47 = [v3 memoryCache];
  v48 = [VMUTaskMemoryCache getCoreFileLedgerTaggedFootprintCompressed:v47];

  if (!v48)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v49 forKeyedSubscript:@"tagged_footprint_compressed"];
  }

  v50 = [v3 memoryCache];
  v51 = [VMUTaskMemoryCache getCoreFileLedgerMediaFootprint:v50];

  if (!v51)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v52 forKeyedSubscript:@"media_footprint"];
  }

  v53 = [v3 memoryCache];
  v54 = [VMUTaskMemoryCache getCoreFileLedgerMediaFootprintCompressed:v53];

  if (!v54)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v55 forKeyedSubscript:@"media_footprint_compressed"];
  }

  v56 = [v3 memoryCache];
  v57 = [VMUTaskMemoryCache getCoreFileLedgerGraphicsFootprint:v56];

  if (!v57)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v58 forKeyedSubscript:@"graphics_footprint"];
  }

  v59 = [v3 memoryCache];
  v60 = [VMUTaskMemoryCache getCoreFileLedgerGraphicsFootprintCompressed:v59];

  if (!v60)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v61 forKeyedSubscript:@"graphics_footprint_compressed"];
  }

  v62 = [v3 memoryCache];
  v63 = [VMUTaskMemoryCache getCoreFileLedgerNeuralFootprint:v62];

  if (!v63)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v64 forKeyedSubscript:@"neural_footprint"];
  }

  v65 = [v3 memoryCache];
  v66 = [VMUTaskMemoryCache getCoreFileLedgerNeuralFootprintCompressed:v65];

  if (!v66)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [v4 setObject:v67 forKeyedSubscript:@"neural_footprint_compressed"];
  }

  v68 = [v4 copy];

  return v68;
}

+ (id)_getProcessLedgerDictFromCrashInfo:(unint64_t)a3 DataSize:(unint64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3 && a4)
  {
    v7 = a4 + a3;
    v8 = a3 + 16;
    if (a3 + 16 <= a4 + a3 && v8 + *(a3 + 4) <= v7 && *a3 == -559025833)
    {
      v9 = a3;
      do
      {
        if (v8 + *(v9 + 4) > v7)
        {
          break;
        }

        v10 = *v9;
        if (*v9 == -242132755)
        {
          break;
        }

        v11 = v10 & 0xFFFFFFF0;
        v12 = v10 - 2078;
        if (v11 == 32)
        {
          v12 = -2061;
        }

        if (v12 <= 0x16 && ((0x7F9FFFu >> v12) & 1) != 0)
        {
          v13 = off_1E8279F70[v12];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v9 + 16)];
          [v6 setObject:v14 forKeyedSubscript:v13];
        }

        v9 = v8 + *(v9 + 4);
        v8 = v9 + 16;
      }

      while (v9 + 16 <= v7);
    }

    else
    {
      NSLog(&cfstr_InvalidTaskCor.isa);
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], a3, a4);
  }

  v15 = [v6 copy];

  return v15;
}

+ (id)_getProcessLedgerDictFromKernelLedger:(int)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *buffer = 0u;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!proc_pid_rusage(a3, 6, buffer))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v36];
    [v19 setObject:v4 forKeyedSubscript:@"phys_footprint_lifetime_max"];
  }

  v5 = 0;
  v6 = 40;
  do
  {
    v7 = 2 * v6;
    v20 = 2 * v6;
    v5 = malloc_type_realloc(v5, 192 * v6, 0x1000040565EDBD2uLL);
    if ((ledger() & 0x80000000) != 0)
    {
      free(v5);
      NSLog(&cfstr_UnableToRetrie.isa);
LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v6 = v7;
  }

  while (v7 == v20);
  v8 = malloc_type_malloc(48 * v20, 0x1000040EED21634uLL);
  if ((ledger() & 0x80000000) != 0)
  {
    free(v8);
    free(v5);
    NSLog(&cfstr_UnableToRetrie_0.isa);
    goto LABEL_20;
  }

  if (v20 >= 1)
  {
    v9 = 0;
    v18 = v8;
    do
    {
      v10 = 0;
      v11 = &v8[48 * v9];
      do
      {
        if (!strcmp(ledgerNameDict[v10], &v5[96 * v9]))
        {
          if (!strcmp(&v5[96 * v9], "purgeable_nonvolatile_compress"))
          {
            v12 = "purgeable_nonvolatile_compressed";
          }

          else
          {
            v12 = &v5[96 * v9];
          }

          v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{*v11, v18}];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
          [v19 setObject:v13 forKeyedSubscript:v14];
        }

        ++v10;
      }

      while (v10 != 22);
      ++v9;
      v8 = v18;
    }

    while (v9 < v20);
  }

  free(v5);
  free(v8);
  v15 = [v19 copy];
LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end